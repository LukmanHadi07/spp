<?php

namespace App\Http\Controllers;

use App\Providers\Helper;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class BroadcastController extends Controller
{
    public function view()
    {
        $data['title'] = "Broadcast";
        $data['siswa'] = DB::select("select no_ortu, nama_lengkap from users where role = '2'");
        return view('backend.broadcast.view', $data);
    }
    public function sendMessage(Request $request)
    {
        $responses = [];

        foreach ($request->nomor as $no) {
            try {
                $response = Http::post('', [
                    'api_key' => Helper::apk()->token_whatsapp,
                    'sender'  => Helper::apk()->tlp,
                    'number'  => $no,
                    'message' => $request->message,
                ]);

                if ($response->successful()) {
                    $responses[$no] = ['status' => 'success', 'data' => $response->json()];
                } else {
                    $responses[$no] = ['status' => 'error', 'data' => $response->json()];
                }
            } catch (\Exception $e) {
                $responses[$no] = ['status' => 'error', 'message' => $e->getMessage()];
            }
        }

        return response()->json($responses);
    }
    
}

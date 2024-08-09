-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2024 at 03:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sppapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE `aplikasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_owner` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tlp` varchar(50) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  `nama_aplikasi` varchar(100) DEFAULT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `copy_right` varchar(50) DEFAULT NULL,
  `versi` varchar(20) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `token_whatsapp` varchar(500) DEFAULT NULL,
  `serverKey` varchar(500) NOT NULL,
  `clientKey` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `nama_owner`, `alamat`, `tlp`, `title`, `nama_aplikasi`, `logo`, `copy_right`, `versi`, `domain`, `token_whatsapp`, `serverKey`, `clientKey`) VALUES
(1, 'SMK-WEHA', 'Maduran-Lamongan', '083846143924', 'SPP', 'SMK WACHID HASJIM MADURAN', 'Untitled-1.jpg', 'Copy Right © SMK-WEHA', '1.0.0.0', 'https://wa.sppapp.com/api/send-message', '91f22843799bfd2e5999c190a73f7fc0ab2bcf43', 'SB-Mid-server-z4lapYLfvL1ijI8Onok52ieD', 'SB-Mid-client-nl0mrgWWY0Aan3QC');

-- --------------------------------------------------------

--
-- Table structure for table `bulan`
--

CREATE TABLE `bulan` (
  `id` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_bulan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bulan`
--

INSERT INTO `bulan` (`id`, `nama_bulan`) VALUES
('01', 'Januari'),
('02', 'Februari'),
('03', 'Maret'),
('04', 'April'),
('05', 'Mei'),
('06', 'Juni'),
('07', 'Juli'),
('08', 'Agustus'),
('09', 'September'),
('10', 'Oktober'),
('11', 'November'),
('12', 'Desember');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pembayaran`
--

CREATE TABLE `jenis_pembayaran` (
  `id` int(11) NOT NULL,
  `pembayaran` varchar(300) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jenis_pembayaran`
--

INSERT INTO `jenis_pembayaran` (`id`, `pembayaran`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Spp', 'ON', '2023-07-07 10:01:34', '2023-05-19 07:04:00'),
(7, 'Uang BukuU', 'ON', '2024-06-10 09:31:16', NULL),
(8, 'Seragam', 'ON', '2024-01-28 09:22:57', NULL),
(9, 'SPP Bulan Januari', 'ON', '2024-01-28 09:29:05', NULL),
(11, 'Uang Buku', 'ON', '2024-05-24 02:53:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`, `created_at`, `updated_at`) VALUES
(1, 'Teknik Komputer dan Jaringan', '2023-05-11 14:36:16', NULL),
(2, 'Multimedia', '2023-05-11 14:36:16', NULL),
(3, 'Keprawatan', '2024-06-10 13:45:13', NULL),
(4, 'Teknik Kendaraan Ringan ', '2024-06-10 13:45:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `keterangan` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '10', NULL, '2023-05-11 21:34:19', '2023-05-11 14:34:19'),
(10, '11', NULL, '2023-07-24 11:35:57', '2023-07-24 04:35:57'),
(11, '12', NULL, '2023-07-24 11:36:17', '2023-07-24 04:36:18'),
(17, 'XII', 'Teknik komputer dan jaringan', '2024-06-30 13:14:47', '2024-06-30 06:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mm_logs`
--

CREATE TABLE `mm_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity` varchar(500) NOT NULL,
  `ctime` datetime NOT NULL,
  `ip` varchar(100) NOT NULL,
  `detail` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mm_logs`
--

INSERT INTO `mm_logs` (`id`, `user_id`, `activity`, `ctime`, `ip`, `detail`) VALUES
(1, 4, 'Search Pembayaran', '2023-06-22 15:07:35', '127.0.0.1', 'U2VhcmNoIFBlbWJheWFyYW4gTmlzICcyNDM1MjQ1NDUnIGRhbiBrZWxhcyBJZCAnMyc='),
(2, 4, 'Search Pembayaran', '2023-06-22 15:07:49', '127.0.0.1', 'U2VhcmNoIFBlbWJheWFyYW4gTmlzICcyNDM1MjQ1NDUnIGRhbiBrZWxhcyBJZCAnMyc='),
(3, 4, 'Search Pembayaran', '2023-06-22 15:08:43', '127.0.0.1', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(4, 4, 'Search Pembayaran', '2023-06-22 16:50:06', '127.0.0.1', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(5, 4, 'Search Pembayaran', '2023-06-22 16:50:13', '127.0.0.1', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(6, 4, 'Search Pembayaran', '2023-06-22 16:50:45', '127.0.0.1', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(7, 4, 'Search Pembayaran', '2023-06-22 16:51:00', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(8, 4, 'Search Pembayaran', '2023-06-22 16:51:06', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'1\''),
(9, 4, 'Search Pembayaran', '2023-06-22 16:51:20', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(10, 4, 'Search Pembayaran', '2023-06-22 16:51:27', '127.0.0.1', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(11, 4, 'Search Pembayaran', '2023-06-22 16:51:33', '127.0.0.1', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(12, 4, 'Search Pembayaran', '2023-06-22 16:55:25', '127.0.0.1', 'Search Pembayaran Nis \'5245252\' dan kelas Id \'3\''),
(13, 4, 'Search Pembayaran', '2023-06-22 16:55:39', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(14, 4, 'Search Pembayaran', '2023-06-22 16:56:56', '127.0.0.1', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(15, 4, 'Tambah Pembayaran Spp', '2023-06-22 16:57:06', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'54\' dan kelas Id \'3\''),
(16, 4, 'Search Pembayaran', '2023-06-29 11:20:11', '127.0.0.1', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'1\''),
(17, 4, 'Search Pembayaran', '2023-06-29 11:21:19', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(18, 4, 'Search Pembayaran', '2023-06-29 11:22:25', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(19, 4, 'Search Pembayaran', '2023-06-29 11:25:12', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(20, 4, 'Search Pembayaran', '2023-06-29 11:37:41', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(21, 4, 'Search Pembayaran', '2023-06-29 11:41:23', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(22, 4, 'Search Pembayaran', '2023-06-29 11:41:58', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(23, 4, 'Search Pembayaran', '2023-06-29 11:43:25', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(24, 4, 'Search Pembayaran', '2023-06-29 12:04:00', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(25, 4, 'Search Pembayaran', '2023-06-29 12:05:09', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(26, 4, 'Tambah Pembayaran Spp', '2023-06-29 12:13:09', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'47\' dan kelas Id \'1\''),
(27, 4, 'Search Pembayaran', '2023-06-29 12:13:44', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'1\''),
(28, 4, 'Search Pembayaran', '2023-06-29 12:14:13', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(29, 7, 'Search Pembayaran', '2023-06-29 12:15:46', '127.0.0.1', 'Search Pembayaran Nis \'325425245\' dan kelas Id \'3\''),
(30, 7, 'Tambah Pembayaran Spp', '2023-06-29 12:18:11', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'56\' dan kelas Id \'3\''),
(31, 5, 'Search Pembayaran', '2023-06-30 09:58:38', '114.122.14.47', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(32, 19, 'Search Pembayaran', '2023-06-30 10:27:08', '114.122.14.47', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(33, 20, 'Search Pembayaran', '2023-06-30 10:28:06', '114.122.14.47', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(34, 19, 'Search Pembayaran', '2023-06-30 10:30:16', '114.122.14.47', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(35, 19, 'Search Pembayaran', '2023-06-30 10:30:32', '114.122.14.47', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(36, 19, 'Search Pembayaran', '2023-06-30 10:31:09', '114.122.14.47', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(37, 19, 'Search Pembayaran', '2023-06-30 10:32:27', '114.122.14.47', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(38, 19, 'Tambah Pembayaran Spp', '2023-06-30 10:32:43', '114.122.14.47', 'Tambah Pembayaran Spp dengan ID Tagihan \'59\' dan kelas Id \'1\''),
(39, 19, 'Search Pembayaran', '2023-06-30 10:33:53', '114.122.14.47', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(40, 4, 'Search Pembayaran', '2023-06-30 11:24:15', '123.231.236.29', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(41, 4, 'Search Pembayaran', '2023-06-30 11:24:26', '123.231.236.29', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(42, 20, 'Search Pembayaran', '2023-06-30 11:24:40', '123.231.236.29', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(43, 4, 'Search Pembayaran', '2023-06-30 14:25:22', '123.231.236.29', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(44, 4, 'Tambah Pembayaran Spp', '2023-06-30 14:25:35', '123.231.236.29', 'Tambah Pembayaran Spp dengan ID Tagihan \'59\' dan kelas Id \'1\''),
(45, 4, 'Search Pembayaran', '2023-06-30 14:25:39', '123.231.236.29', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(46, 4, 'Search Pembayaran', '2023-06-30 14:36:40', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(47, 4, 'Search Pembayaran', '2023-06-30 14:38:59', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(48, 4, 'Search Pembayaran', '2023-06-30 14:47:24', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(49, 4, 'Search Pembayaran', '2023-06-30 14:48:43', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(50, 4, 'Search Pembayaran', '2023-06-30 14:49:59', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(51, 4, 'Search Pembayaran', '2023-06-30 14:51:21', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(52, 4, 'Search Pembayaran', '2023-06-30 14:52:17', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(53, 4, 'Search Pembayaran', '2023-06-30 14:53:19', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(54, 4, 'Search Pembayaran', '2023-06-30 14:53:39', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(55, 4, 'Search Pembayaran', '2023-06-30 15:06:02', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(56, 4, 'Search Pembayaran', '2023-06-30 15:06:11', '127.0.0.1', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(57, 4, 'Tambah Pembayaran Spp', '2023-06-30 15:06:20', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'55\' dan kelas Id \'3\''),
(58, 4, 'Search Pembayaran', '2023-06-30 15:10:13', '127.0.0.1', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(59, 4, 'Search Pembayaran', '2023-06-30 15:10:38', '127.0.0.1', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(60, 4, 'Search Pembayaran', '2023-06-30 15:10:47', '127.0.0.1', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(61, 4, 'Search Pembayaran', '2023-06-30 15:11:03', '127.0.0.1', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(62, 4, 'Search Pembayaran', '2023-06-30 15:11:13', '127.0.0.1', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(63, 4, 'Search Pembayaran', '2023-06-30 15:19:07', '123.231.236.29', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(64, 4, 'Search Pembayaran', '2023-06-30 15:19:11', '123.231.236.29', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'2\''),
(65, 4, 'Search Pembayaran', '2023-06-30 15:38:59', '202.153.232.51', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(66, 4, 'Search Pembayaran', '2023-07-02 00:29:56', '125.164.18.63', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(67, 4, 'Search Pembayaran', '2023-07-03 07:21:29', '125.164.20.75', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(68, 4, 'Search Pembayaran', '2023-07-03 07:21:44', '125.164.20.75', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(69, 4, 'Search Pembayaran', '2023-07-03 07:22:05', '125.164.20.75', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(70, 19, 'Search Pembayaran', '2023-07-03 11:52:48', '114.122.15.8', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(71, 20, 'Search Pembayaran', '2023-07-03 12:33:07', '114.122.15.8', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(72, 20, 'Search Pembayaran', '2023-07-03 12:40:33', '114.122.15.8', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(73, 19, 'Search Pembayaran', '2023-07-03 13:03:12', '114.122.15.8', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(74, 19, 'Search Pembayaran', '2023-07-04 11:30:30', '114.122.9.200', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(75, 19, 'Search Pembayaran', '2023-07-04 11:31:59', '114.122.9.200', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(76, 19, 'Tambah Pembayaran Spp', '2023-07-04 11:33:50', '114.122.9.200', 'Tambah Pembayaran Spp dengan ID Tagihan \'55\' dan kelas Id \'3\''),
(77, 19, 'Search Pembayaran', '2023-07-04 11:33:58', '114.122.9.200', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(78, 20, 'Search Pembayaran', '2023-07-04 11:35:22', '114.122.9.200', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(79, 20, 'Search Pembayaran', '2023-07-04 20:07:55', '114.122.22.2', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(80, 20, 'Search Pembayaran', '2023-07-04 20:08:10', '114.122.22.2', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(81, 19, 'Search Pembayaran', '2023-07-04 20:16:31', '114.122.22.2', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(82, 19, 'Search Pembayaran', '2023-07-04 20:16:54', '114.122.22.2', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(83, 19, 'Search Pembayaran', '2023-07-04 20:17:12', '114.122.22.2', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(84, 19, 'Search Pembayaran', '2023-07-04 20:17:22', '114.122.22.2', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(85, 19, 'Search Pembayaran', '2023-07-04 20:17:40', '114.122.22.2', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(86, 19, 'Search Pembayaran', '2023-07-04 20:21:10', '114.122.22.2', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(87, 19, 'Tambah Pembayaran Spp', '2023-07-04 20:21:42', '114.122.22.2', 'Tambah Pembayaran Spp dengan ID Tagihan \'61\' dan kelas Id \'1\''),
(88, 19, 'Search Pembayaran', '2023-07-04 20:21:49', '114.122.22.2', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(89, 21, 'Search Pembayaran', '2023-07-04 20:22:31', '114.122.22.2', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(90, 21, 'Tambah Pembayaran Spp', '2023-07-04 20:24:04', '114.122.22.2', 'Tambah Pembayaran Spp dengan ID Tagihan \'61\' dan kelas Id \'1\''),
(91, 4, 'Search Pembayaran', '2023-07-04 21:11:26', '182.2.83.122', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(92, 4, 'Search Pembayaran', '2023-07-05 20:48:19', '103.154.221.242', 'Search Pembayaran Nis \'121233290008230001\' dan kelas Id \'8\''),
(93, 4, 'Search Pembayaran', '2023-07-05 20:48:36', '103.154.221.242', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(94, 19, 'Search Pembayaran', '2023-07-06 00:34:11', '114.122.4.229', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(95, 19, 'Search Pembayaran', '2023-07-06 00:34:52', '114.122.4.229', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(96, 19, 'Search Pembayaran', '2023-07-06 00:38:07', '114.122.4.229', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(97, 19, 'Search Pembayaran', '2023-07-06 11:37:44', '114.122.9.58', 'Search Pembayaran Nis \'121233290008230001\' dan kelas Id \'8\''),
(98, 19, 'Search Pembayaran', '2023-07-06 11:38:33', '114.122.9.58', 'Search Pembayaran Nis \'123456\' dan kelas Id \'3\''),
(99, 19, 'Tambah Pembayaran Spp', '2023-07-06 11:38:51', '114.122.9.58', 'Tambah Pembayaran Spp dengan ID Tagihan \'53\' dan kelas Id \'2\''),
(100, 19, 'Search Pembayaran', '2023-07-06 11:39:01', '114.122.9.58', 'Search Pembayaran Nis \'123456\' dan kelas Id \'2\''),
(101, 19, 'Search Pembayaran', '2023-07-06 11:39:01', '114.122.9.58', 'Search Pembayaran Nis \'123456\' dan kelas Id \'2\''),
(102, 19, 'Tambah Pembayaran Spp', '2023-07-06 11:39:14', '114.122.9.58', 'Tambah Pembayaran Spp dengan ID Tagihan \'49\' dan kelas Id \'1\''),
(103, 19, 'Search Pembayaran', '2023-07-06 11:40:14', '114.122.9.58', 'Search Pembayaran Nis \'123456\' dan kelas Id \'3\''),
(104, 19, 'Search Pembayaran', '2023-07-06 11:41:23', '114.122.9.58', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(105, 19, 'Search Pembayaran', '2023-07-06 12:45:42', '114.122.9.58', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(106, 19, 'Search Pembayaran', '2023-07-06 13:07:25', '114.122.9.58', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(107, 19, 'Search Pembayaran', '2023-07-06 13:25:35', '114.122.9.58', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(108, 19, 'Tambah Pembayaran Spp', '2023-07-06 13:25:58', '114.122.9.58', 'Tambah Pembayaran Spp dengan ID Tagihan \'54\' dan kelas Id \'3\''),
(109, 19, 'Tambah Pembayaran Spp', '2023-07-06 13:25:59', '114.122.9.58', 'Tambah Pembayaran Spp dengan ID Tagihan \'54\' dan kelas Id \'3\''),
(110, 21, 'Search Pembayaran', '2023-07-06 13:37:15', '114.122.9.58', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(111, 20, 'Search Pembayaran', '2023-07-06 14:24:33', '114.122.9.58', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(112, 4, 'Search Pembayaran', '2023-07-07 17:13:11', '182.2.140.179', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(113, 4, 'Search Pembayaran', '2023-07-07 17:13:35', '182.2.140.179', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(114, 19, 'Search Pembayaran', '2023-07-09 11:25:55', '116.206.30.46', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(115, 19, 'Search Pembayaran', '2023-07-09 11:26:03', '116.206.30.46', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(116, 19, 'Search Pembayaran', '2023-07-09 11:53:17', '116.206.30.46', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(117, 19, 'Search Pembayaran', '2023-07-09 12:04:49', '116.206.30.46', 'Search Pembayaran Nis \'5245252\' dan kelas Id \'3\''),
(118, 19, 'Tambah Pembayaran Spp', '2023-07-09 12:05:09', '116.206.30.46', 'Tambah Pembayaran Spp dengan ID Tagihan \'45\' dan kelas Id \'2\''),
(119, 20, 'Search Pembayaran', '2023-07-09 12:29:31', '116.206.30.46', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(120, 19, 'Search Pembayaran', '2023-07-11 09:59:19', '116.206.31.51', 'Search Pembayaran Nis \'5245252\' dan kelas Id \'3\''),
(121, 19, 'Search Pembayaran', '2023-07-11 10:36:09', '116.206.31.51', 'Search Pembayaran Nis \'5245252\' dan kelas Id \'3\''),
(122, 19, 'Search Pembayaran', '2023-07-11 10:54:47', '116.206.31.51', 'Search Pembayaran Nis \'5245252\' dan kelas Id \'3\''),
(123, 4, 'Search Pembayaran', '2023-07-12 09:25:54', '36.82.99.195', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(124, 4, 'Search Pembayaran', '2023-07-12 09:26:41', '36.82.99.195', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(125, 4, 'Search Pembayaran', '2023-07-14 21:56:15', '125.163.157.235', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(126, 4, 'Search Pembayaran', '2023-07-14 21:56:35', '125.163.157.235', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(127, 4, 'Search Pembayaran', '2023-07-14 21:56:48', '125.163.157.235', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(128, 4, 'Search Pembayaran', '2023-07-14 21:56:49', '125.163.157.235', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(129, 4, 'Search Pembayaran', '2023-07-14 21:57:47', '125.163.157.235', 'Search Pembayaran Nis \'243524545\' dan kelas Id \'3\''),
(130, 4, 'Search Pembayaran', '2023-07-14 21:59:11', '125.163.157.235', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(131, 4, 'Search Pembayaran', '2023-07-14 22:01:01', '125.163.157.235', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(132, 4, 'Search Pembayaran', '2023-07-14 22:02:20', '125.163.157.235', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(133, 5, 'Search Pembayaran', '2023-07-14 22:04:02', '125.163.157.235', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(134, 5, 'Search Pembayaran', '2023-07-14 22:04:38', '125.163.157.235', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(135, 4, 'Search Pembayaran', '2023-07-14 22:23:08', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(136, 4, 'Search Pembayaran', '2023-07-14 22:23:27', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(137, 4, 'Search Pembayaran', '2023-07-14 22:24:34', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(138, 4, 'Tambah Pembayaran Spp', '2023-07-14 22:24:45', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'62\' dan kelas Id \'1\''),
(139, 4, 'Search Pembayaran', '2023-07-14 22:35:22', '127.0.0.1', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(140, 5, 'Search Pembayaran', '2023-07-15 23:53:59', '125.163.157.235', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(141, 5, 'Search Pembayaran', '2023-07-15 23:54:12', '125.163.157.235', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(142, 4, 'Search Pembayaran', '2023-07-17 21:13:22', '180.252.125.239', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(143, 19, 'Search Pembayaran', '2023-07-19 08:52:54', '114.122.9.151', 'Search Pembayaran Nis \'30082001\' dan kelas Id \'2\''),
(144, 19, 'Tambah Pembayaran Spp', '2023-07-19 08:53:21', '114.122.9.151', 'Tambah Pembayaran Spp dengan ID Tagihan \'63\' dan kelas Id \'2\''),
(145, 19, 'Search Pembayaran', '2023-07-19 08:53:48', '114.122.9.151', 'Search Pembayaran Nis \'30082001\' dan kelas Id \'2\''),
(146, 19, 'Search Pembayaran', '2023-07-19 09:24:35', '114.122.9.151', 'Search Pembayaran Nis \'30082001\' dan kelas Id \'2\''),
(147, 19, 'Search Pembayaran', '2023-07-19 09:25:30', '114.122.9.151', 'Search Pembayaran Nis \'30082001\' dan kelas Id \'2\''),
(148, 19, 'Search Pembayaran', '2023-07-19 09:26:18', '114.122.9.151', 'Search Pembayaran Nis \'30082001\' dan kelas Id \'2\''),
(149, 19, 'Tambah Pembayaran Spp', '2023-07-19 09:26:35', '114.122.9.151', 'Tambah Pembayaran Spp dengan ID Tagihan \'66\' dan kelas Id \'2\''),
(150, 19, 'Search Pembayaran', '2023-07-19 09:27:27', '114.122.9.151', 'Search Pembayaran Nis \'30082001\' dan kelas Id \'2\''),
(151, 24, 'Search Pembayaran', '2023-07-19 09:28:17', '114.122.9.151', 'Search Pembayaran Nis \'30082001\' dan kelas Id \'2\''),
(152, 24, 'Tambah Pembayaran Spp', '2023-07-19 09:28:50', '114.122.9.151', 'Tambah Pembayaran Spp dengan ID Tagihan \'65\' dan kelas Id \'2\''),
(153, 24, 'Search Pembayaran', '2023-07-19 09:30:18', '114.122.9.151', 'Search Pembayaran Nis \'30082001\' dan kelas Id \'2\''),
(154, 24, 'Tambah Pembayaran Spp', '2023-07-19 09:33:12', '114.122.9.151', 'Tambah Pembayaran Spp dengan ID Tagihan \'65\' dan kelas Id \'2\''),
(155, 24, 'Search Pembayaran', '2023-07-19 09:35:17', '114.122.9.151', 'Search Pembayaran Nis \'30082001\' dan kelas Id \'2\''),
(156, 4, 'Search Pembayaran', '2023-07-19 18:09:52', '114.10.21.91', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(157, 4, 'Tambah Pembayaran Spp', '2023-07-19 18:10:09', '114.10.21.91', 'Tambah Pembayaran Spp dengan ID Tagihan \'62\' dan kelas Id \'1\''),
(158, 25, 'Search Pembayaran', '2023-07-19 18:22:03', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(159, 4, 'Search Pembayaran', '2023-07-19 18:24:10', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(160, 25, 'Search Pembayaran', '2023-07-19 18:26:18', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(161, 25, 'Search Pembayaran', '2023-07-19 18:26:38', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(162, 25, 'Tambah Pembayaran Spp', '2023-07-19 18:27:25', '114.10.21.91', 'Tambah Pembayaran Spp dengan ID Tagihan \'68\' dan kelas Id \'1\''),
(163, 25, 'Search Pembayaran', '2023-07-19 18:27:28', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(164, 25, 'Search Pembayaran', '2023-07-19 18:30:11', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(165, 25, 'Search Pembayaran', '2023-07-19 18:30:16', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(166, 25, 'Search Pembayaran', '2023-07-19 18:30:24', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(167, 25, 'Search Pembayaran', '2023-07-19 18:30:31', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(168, 25, 'Search Pembayaran', '2023-07-19 18:30:42', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(169, 25, 'Search Pembayaran', '2023-07-19 18:30:47', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(170, 25, 'Search Pembayaran', '2023-07-19 18:30:52', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(171, 25, 'Search Pembayaran', '2023-07-19 18:30:56', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(172, 25, 'Search Pembayaran', '2023-07-19 18:35:06', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(173, 25, 'Search Pembayaran', '2023-07-19 18:35:59', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(174, 25, 'Search Pembayaran', '2023-07-19 18:36:57', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(175, 25, 'Search Pembayaran', '2023-07-19 18:37:28', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(176, 25, 'Tambah Pembayaran Spp', '2023-07-19 18:38:39', '114.10.21.91', 'Tambah Pembayaran Spp dengan ID Tagihan \'68\' dan kelas Id \'1\''),
(177, 4, 'Search Pembayaran', '2023-07-19 18:58:25', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'2\''),
(178, 25, 'Search Pembayaran', '2023-07-19 20:14:47', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'2\''),
(179, 4, 'Search Pembayaran', '2023-07-19 20:23:43', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'2\''),
(180, 4, 'Search Pembayaran', '2023-07-19 20:25:14', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'2\''),
(181, 4, 'Search Pembayaran', '2023-07-19 20:27:29', '114.10.21.91', 'Search Pembayaran Nis \'123456\' dan kelas Id \'3\''),
(182, 4, 'Search Pembayaran', '2023-07-19 20:28:59', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'2\''),
(183, 4, 'Search Pembayaran', '2023-07-19 20:29:59', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'2\''),
(184, 4, 'Search Pembayaran', '2023-07-19 20:30:24', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'2\''),
(185, 25, 'Search Pembayaran', '2023-07-19 20:31:40', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'2\''),
(186, 4, 'Search Pembayaran', '2023-07-19 20:32:21', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'2\''),
(187, 4, 'Search Pembayaran', '2023-07-19 20:38:28', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'2\''),
(188, 25, 'Search Pembayaran', '2023-07-19 20:55:28', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(189, 25, 'Search Pembayaran', '2023-07-19 20:56:18', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(190, 25, 'Search Pembayaran', '2023-07-19 20:56:44', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(191, 25, 'Search Pembayaran', '2023-07-19 20:57:39', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(192, 5, 'Search Pembayaran', '2023-07-19 20:58:30', '125.163.157.235', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(193, 5, 'Search Pembayaran', '2023-07-19 21:00:44', '125.163.157.235', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(194, 4, 'Search Pembayaran', '2023-07-19 21:08:37', '114.10.21.91', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(195, 4, 'Search Pembayaran', '2023-07-19 21:09:44', '103.171.163.154', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(196, 4, 'Search Pembayaran', '2023-07-19 21:39:53', '114.10.21.91', 'Search Pembayaran Nis \'123456\' dan kelas Id \'3\''),
(197, 4, 'Search Pembayaran', '2023-07-19 21:40:05', '114.10.21.91', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(198, 4, 'Tambah Pembayaran Spp', '2023-07-19 21:40:32', '114.10.21.91', 'Tambah Pembayaran Spp dengan ID Tagihan \'44\' dan kelas Id \'2\''),
(199, 4, 'Search Pembayaran', '2023-07-19 21:40:41', '114.10.21.91', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'2\''),
(200, 4, 'Search Pembayaran', '2023-07-19 21:40:45', '114.10.21.91', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'2\''),
(201, 4, 'Search Pembayaran', '2023-07-19 21:41:32', '114.10.21.91', 'Search Pembayaran Nis \'123456\' dan kelas Id \'3\''),
(202, 4, 'Search Pembayaran', '2023-07-19 21:41:41', '114.10.21.91', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(203, 4, 'Search Pembayaran', '2023-07-19 21:41:49', '114.10.21.91', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(204, 5, 'Search Pembayaran', '2023-07-19 21:47:43', '125.163.157.235', 'Search Pembayaran Nis \'5245245245\' dan kelas Id \'3\''),
(205, 4, 'Search Pembayaran', '2023-07-20 09:42:02', '114.10.4.13', 'Search Pembayaran Nis \'34141343\' dan kelas Id \'1\''),
(206, 27, 'Search Pembayaran', '2023-07-20 10:08:28', '114.10.4.13', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(207, 27, 'Search Pembayaran', '2023-07-20 10:09:48', '114.10.4.13', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(208, 26, 'Search Pembayaran', '2023-07-20 10:13:37', '114.10.4.13', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(209, 27, 'Search Pembayaran', '2023-07-20 10:21:30', '114.10.4.13', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(210, 27, 'Search Pembayaran', '2023-07-20 10:22:57', '114.10.4.13', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(211, 27, 'Search Pembayaran', '2023-07-20 10:24:32', '114.10.4.13', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(212, 27, 'Search Pembayaran', '2023-07-20 10:26:22', '114.10.4.13', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(213, 27, 'Search Pembayaran', '2023-07-20 10:28:47', '114.10.4.13', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(214, 27, 'Search Pembayaran', '2023-07-20 10:30:47', '114.10.4.13', 'Search Pembayaran Nis \'123123123\' dan kelas Id \'1\''),
(215, 4, 'Search Pembayaran', '2023-07-20 22:05:17', '125.163.157.235', 'Search Pembayaran Nis \'34141343\' dan kelas Id \'1\''),
(216, 4, 'Search Pembayaran', '2023-07-20 22:08:43', '125.163.157.235', 'Search Pembayaran Nis \'34141343\' dan kelas Id \'1\''),
(217, 4, 'Search Pembayaran', '2023-07-23 14:20:37', '182.2.41.87', 'Search Pembayaran Nis \'34141343\' dan kelas Id \'1\''),
(218, 4, 'Search Pembayaran', '2023-07-23 14:20:41', '182.2.41.87', 'Search Pembayaran Nis \'34141343\' dan kelas Id \'1\''),
(219, 4, 'Search Pembayaran', '2023-07-23 14:21:00', '182.2.41.87', 'Search Pembayaran Nis \'34141343\' dan kelas Id \'1\''),
(220, 4, 'Search Pembayaran', '2023-07-24 11:45:25', '127.0.0.1', 'Search Pembayaran Nis \'001\' dan kelas Id \'1\''),
(221, 28, 'Search Pembayaran', '2023-07-24 11:46:28', '127.0.0.1', 'Search Pembayaran Nis \'001\' dan kelas Id \'1\''),
(222, 28, 'Tambah Pembayaran Spp', '2023-07-24 11:47:51', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'75\' dan kelas Id \'1\''),
(223, 28, 'Search Pembayaran', '2023-07-24 12:10:25', '127.0.0.1', 'Search Pembayaran Nis \'001\' dan kelas Id \'1\''),
(224, 28, 'Tambah Pembayaran Spp', '2023-07-24 12:12:33', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'75\' dan kelas Id \'1\''),
(225, 4, 'Search Pembayaran', '2023-07-24 12:33:07', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(226, 30, 'Search Pembayaran', '2023-07-24 13:25:25', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(227, 30, 'Tambah Pembayaran Spp', '2023-07-24 13:28:20', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'77\' dan kelas Id \'1\''),
(228, 4, 'Search Pembayaran', '2023-07-26 21:52:27', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(229, 4, 'Tambah Pembayaran Spp', '2023-07-26 21:52:50', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'75\' dan kelas Id \'1\''),
(230, 4, 'Search Pembayaran', '2023-07-26 21:53:02', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(231, 28, 'Search Pembayaran', '2023-07-26 21:53:40', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(232, 28, 'Tambah Pembayaran Spp', '2023-07-26 21:56:46', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'75\' dan kelas Id \'1\''),
(233, 28, 'Search Pembayaran', '2023-07-26 22:02:46', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(234, 28, 'Search Pembayaran', '2023-07-26 22:03:22', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(235, 28, 'Search Pembayaran', '2023-07-26 22:03:58', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(236, 28, 'Search Pembayaran', '2023-07-26 22:04:05', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(237, 28, 'Search Pembayaran', '2023-07-26 22:05:35', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(238, 28, 'Search Pembayaran', '2023-07-26 22:06:01', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(239, 4, 'Search Pembayaran', '2023-07-26 22:26:47', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(240, 4, 'Search Pembayaran', '2023-07-26 22:27:49', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(241, 4, 'Search Pembayaran', '2023-07-26 22:28:55', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(242, 4, 'Search Pembayaran', '2023-07-26 22:29:20', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(243, 4, 'Search Pembayaran', '2023-07-26 22:33:10', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(244, 4, 'Tambah Pembayaran Spp', '2023-07-26 22:33:27', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'75\' dan kelas Id \'1\''),
(245, 28, 'Search Pembayaran', '2023-07-26 22:34:36', '127.0.0.1', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(246, 4, 'Search Pembayaran', '2023-07-27 11:09:42', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(247, 4, 'Tambah Pembayaran Spp', '2023-07-27 11:10:03', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'83\' dan kelas Id \'1\''),
(248, 4, 'Search Pembayaran', '2023-07-27 11:18:13', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(249, 4, 'Search Pembayaran', '2023-07-27 11:18:51', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(250, 4, 'Tambah Pembayaran Spp', '2023-07-27 11:19:28', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'83\' dan kelas Id \'1\''),
(251, 4, 'Search Pembayaran', '2023-07-27 11:22:33', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(252, 4, 'Search Pembayaran', '2023-07-27 11:23:49', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(253, 4, 'Search Pembayaran', '2023-07-27 11:24:15', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(254, 4, 'Tambah Pembayaran Spp', '2023-07-27 11:27:24', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'83\' dan kelas Id \'1\''),
(255, 33, 'Search Pembayaran', '2023-07-27 11:32:18', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(256, 31, 'Search Pembayaran', '2023-07-27 11:33:20', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(257, 31, 'Tambah Pembayaran Spp', '2023-07-27 11:35:07', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'84\' dan kelas Id \'1\''),
(258, 30, 'Search Pembayaran', '2023-07-27 11:37:14', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(259, 30, 'Search Pembayaran', '2023-07-27 11:38:01', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(260, 30, 'Search Pembayaran', '2023-07-27 11:38:09', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(261, 30, 'Search Pembayaran', '2023-07-27 11:38:18', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(262, 30, 'Search Pembayaran', '2023-07-27 11:38:36', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(263, 30, 'Search Pembayaran', '2023-07-27 11:38:45', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(264, 30, 'Search Pembayaran', '2023-07-27 11:39:15', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(265, 30, 'Search Pembayaran', '2023-07-27 11:39:21', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(266, 4, 'Search Pembayaran', '2023-07-27 11:39:58', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(267, 4, 'Search Pembayaran', '2023-07-27 11:40:04', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(268, 33, 'Search Pembayaran', '2023-07-27 11:41:00', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(269, 31, 'Search Pembayaran', '2023-07-27 11:41:27', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(270, 31, 'Search Pembayaran', '2023-07-27 11:41:31', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(271, 31, 'Search Pembayaran', '2023-07-27 11:42:02', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(272, 31, 'Search Pembayaran', '2023-07-27 11:43:07', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(273, 31, 'Search Pembayaran', '2023-07-27 11:43:43', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(274, 30, 'Search Pembayaran', '2023-07-27 11:44:12', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(275, 30, 'Search Pembayaran', '2023-07-27 11:44:17', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(276, 30, 'Search Pembayaran', '2023-07-27 11:44:41', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(277, 30, 'Search Pembayaran', '2023-07-27 11:45:38', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(278, 30, 'Search Pembayaran', '2023-07-27 11:46:38', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(279, 30, 'Search Pembayaran', '2023-07-27 11:46:39', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(280, 33, 'Search Pembayaran', '2023-07-27 11:54:39', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(281, 33, 'Tambah Pembayaran Spp', '2023-07-27 12:01:39', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'83\' dan kelas Id \'1\''),
(282, 31, 'Search Pembayaran', '2023-07-30 14:15:20', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(283, 29, 'Search Pembayaran', '2023-07-30 14:15:52', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(284, 29, 'Search Pembayaran', '2023-07-30 14:18:41', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(285, 4, 'Search Pembayaran', '2023-07-31 16:44:23', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(286, 4, 'Search Pembayaran', '2023-07-31 16:44:53', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(287, 4, 'Search Pembayaran', '2023-07-31 16:48:44', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(288, 4, 'Tambah Pembayaran Spp', '2023-07-31 16:49:22', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'104\' dan kelas Id \'11\''),
(289, 4, 'Search Pembayaran', '2023-07-31 16:50:02', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(290, 4, 'Search Pembayaran', '2023-07-31 16:50:32', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(291, 39, 'Search Pembayaran', '2023-07-31 16:51:29', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(292, 4, 'Search Pembayaran', '2023-07-31 16:54:13', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(293, 4, 'Tambah Pembayaran Spp', '2023-07-31 16:54:34', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'104\' dan kelas Id \'11\''),
(294, 4, 'Search Pembayaran', '2023-07-31 16:54:46', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(295, 4, 'Search Pembayaran', '2023-07-31 16:55:01', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(296, 4, 'Search Pembayaran', '2023-07-31 16:55:32', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(297, 4, 'Search Pembayaran', '2023-08-02 11:53:45', '127.0.0.1', 'Search Pembayaran Nis \'001TKP\' dan kelas Id \'11\''),
(298, 4, 'Search Pembayaran', '2023-08-02 11:54:08', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(299, 4, 'Search Pembayaran', '2023-08-02 11:54:42', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(300, 4, 'Search Pembayaran', '2023-08-02 11:54:58', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(301, 4, 'Search Pembayaran', '2023-08-02 12:28:27', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(302, 35, 'Search Pembayaran', '2023-08-02 12:39:52', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(303, 35, 'Search Pembayaran', '2023-08-02 12:46:45', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(304, 35, 'Search Pembayaran', '2023-08-02 12:46:50', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(305, 35, 'Search Pembayaran', '2023-08-02 12:46:55', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(306, 4, 'Search Pembayaran', '2023-08-02 12:54:01', '127.0.0.1', 'Search Pembayaran Nis \'001TKP\' dan kelas Id \'11\''),
(307, 35, 'Search Pembayaran', '2023-08-02 13:05:46', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(308, 35, 'Search Pembayaran', '2023-08-02 13:08:17', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(309, 4, 'Search Pembayaran', '2023-08-03 09:07:02', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(310, 4, 'Search Pembayaran', '2023-08-03 12:54:32', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(311, 4, 'Search Pembayaran', '2023-08-03 13:07:20', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(312, 4, 'Search Pembayaran', '2023-08-03 22:17:59', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(313, 4, 'Search Pembayaran', '2023-08-04 08:58:08', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(314, 4, 'Tambah Pembayaran Spp', '2023-08-04 08:58:35', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'99\' dan kelas Id \'10\''),
(315, 4, 'Search Pembayaran', '2023-08-04 10:33:20', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(316, 4, 'Search Pembayaran', '2023-08-05 10:00:42', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(317, 4, 'Search Pembayaran', '2023-08-05 10:02:21', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(318, 4, 'Tambah Pembayaran Spp', '2023-08-05 10:38:59', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'93\' dan kelas Id \'1\''),
(319, 4, 'Search Pembayaran', '2023-08-05 10:39:36', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(320, 4, 'Search Pembayaran', '2023-08-05 10:58:32', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(321, 4, 'Search Pembayaran', '2023-08-05 11:45:12', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(322, 33, 'Search Pembayaran', '2023-08-05 13:04:23', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(323, 33, 'Search Pembayaran', '2023-08-05 13:11:07', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(324, 33, 'Search Pembayaran', '2023-08-05 13:17:13', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(325, 33, 'Search Pembayaran', '2023-08-05 13:29:21', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(326, 33, 'Tambah Pembayaran Spp', '2023-08-05 13:30:46', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'91\' dan kelas Id \'1\''),
(327, 33, 'Search Pembayaran', '2023-08-05 13:31:21', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(328, 33, 'Search Pembayaran', '2023-08-06 11:54:42', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(329, 39, 'Search Pembayaran', '2023-08-07 20:38:28', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(330, 4, 'Search Pembayaran', '2023-08-10 12:36:53', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(331, 4, 'Search Pembayaran', '2023-08-10 12:38:48', '127.0.0.1', 'Search Pembayaran Nis \'001TKP\' dan kelas Id \'11\''),
(332, 4, 'Tambah Pembayaran Spp', '2023-08-10 12:39:29', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'105\' dan kelas Id \'11\''),
(333, 4, 'Search Pembayaran', '2023-08-13 11:46:30', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(334, 4, 'Search Pembayaran', '2023-08-13 11:47:19', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(335, 4, 'Search Pembayaran', '2023-08-13 11:47:41', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(336, 4, 'Search Pembayaran', '2023-08-13 11:48:09', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(337, 4, 'Search Pembayaran', '2023-08-13 11:48:33', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(338, 4, 'Search Pembayaran', '2023-08-13 11:57:29', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(339, 4, 'Search Pembayaran', '2023-08-13 12:00:36', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(340, 4, 'Tambah Pembayaran Spp', '2023-08-13 12:01:46', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'93\' dan kelas Id \'1\''),
(341, 4, 'Search Pembayaran', '2023-08-13 12:02:16', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(342, 33, 'Search Pembayaran', '2023-08-14 09:45:03', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(343, 4, 'Search Pembayaran', '2023-08-22 10:24:35', '127.0.0.1', 'Search Pembayaran Nis \'003TB\' dan kelas Id \'1\''),
(344, 4, 'Tambah Pembayaran Spp', '2023-08-22 10:26:11', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'109\' dan kelas Id \'1\''),
(345, 41, 'Search Pembayaran', '2023-08-22 10:33:13', '127.0.0.1', 'Search Pembayaran Nis \'003TB\' dan kelas Id \'1\''),
(346, 41, 'Tambah Pembayaran Spp', '2023-08-22 10:34:30', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'109\' dan kelas Id \'1\''),
(347, 4, 'Search Pembayaran', '2023-08-26 09:53:54', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(348, 33, 'Search Pembayaran', '2023-08-26 10:01:51', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(349, 33, 'Search Pembayaran', '2023-08-26 10:01:59', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(350, 33, 'Search Pembayaran', '2023-08-26 10:02:06', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(351, 4, 'Search Pembayaran', '2023-08-28 11:51:35', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(352, 4, 'Search Pembayaran', '2023-08-28 12:25:45', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(353, 4, 'Search Pembayaran', '2023-08-28 12:25:59', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(354, 4, 'Search Pembayaran', '2023-08-28 12:26:28', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(355, 4, 'Search Pembayaran', '2023-08-28 12:27:05', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(356, 4, 'Search Pembayaran', '2023-08-28 12:27:22', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(357, 4, 'Search Pembayaran', '2023-08-28 12:28:02', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(358, 4, 'Search Pembayaran', '2023-08-28 12:28:20', '127.0.0.1', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(359, 33, 'Search Pembayaran', '2023-08-28 13:02:19', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(360, 39, 'Search Pembayaran', '2023-08-31 08:58:46', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(361, 40, 'Search Pembayaran', '2023-08-31 08:59:12', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(362, 38, 'Search Pembayaran', '2023-08-31 08:59:44', '127.0.0.1', 'Search Pembayaran Nis \'001TKP\' dan kelas Id \'11\''),
(363, 38, 'Search Pembayaran', '2023-08-31 08:59:58', '127.0.0.1', 'Search Pembayaran Nis \'001TKP\' dan kelas Id \'11\''),
(364, 33, 'Search Pembayaran', '2023-08-31 09:23:01', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(365, 33, 'Search Pembayaran', '2023-08-31 09:23:17', '127.0.0.1', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(366, 4, 'Search Pembayaran', '2023-08-31 09:32:59', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(367, 4, 'Tambah Pembayaran Spp', '2023-08-31 09:34:28', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'108\' dan kelas Id \'1\''),
(368, 4, 'Search Pembayaran', '2023-08-31 09:37:09', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(369, 4, 'Search Pembayaran', '2023-08-31 09:37:10', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(370, 4, 'Search Pembayaran', '2023-08-31 09:37:21', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(371, 4, 'Search Pembayaran', '2023-08-31 09:38:11', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(372, 4, 'Search Pembayaran', '2023-08-31 09:38:35', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(373, 4, 'Search Pembayaran', '2023-08-31 09:39:22', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(374, 4, 'Search Pembayaran', '2023-08-31 09:39:37', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(375, 4, 'Search Pembayaran', '2023-08-31 09:40:18', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(376, 4, 'Search Pembayaran', '2023-08-31 09:40:33', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(377, 4, 'Search Pembayaran', '2023-08-31 09:41:02', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(378, 4, 'Search Pembayaran', '2023-08-31 09:41:14', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(379, 4, 'Search Pembayaran', '2023-08-31 09:42:47', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(380, 4, 'Search Pembayaran', '2023-08-31 09:43:06', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(381, 4, 'Search Pembayaran', '2023-08-31 09:43:21', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(382, 4, 'Search Pembayaran', '2023-08-31 09:43:51', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(383, 4, 'Search Pembayaran', '2023-08-31 09:45:37', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(384, 4, 'Search Pembayaran', '2023-09-01 09:12:55', '127.0.0.1', 'Search Pembayaran Nis \'001MM\' dan kelas Id \'10\''),
(385, 4, 'Search Pembayaran', '2023-09-01 09:14:57', '127.0.0.1', 'Search Pembayaran Nis \'001MM\' dan kelas Id \'10\''),
(386, 4, 'Search Pembayaran', '2023-09-01 09:41:00', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(387, 4, 'Search Pembayaran', '2023-09-01 18:03:38', '127.0.0.1', 'Search Pembayaran Nis \'001TKP\' dan kelas Id \'11\''),
(388, 42, 'Search Pembayaran', '2023-09-01 18:09:13', '127.0.0.1', 'Search Pembayaran Nis \'003TKJ\' dan kelas Id \'12\''),
(389, 42, 'Tambah Pembayaran Spp', '2023-09-01 18:10:45', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'111\' dan kelas Id \'12\''),
(390, 4, 'Search Pembayaran', '2023-09-01 18:12:45', '127.0.0.1', 'Search Pembayaran Nis \'003TKJ\' dan kelas Id \'12\''),
(391, 4, 'Search Pembayaran', '2023-09-01 18:16:20', '127.0.0.1', 'Search Pembayaran Nis \'003TKJ\' dan kelas Id \'12\''),
(392, 4, 'Tambah Pembayaran Spp', '2023-09-01 18:16:53', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'111\' dan kelas Id \'12\''),
(393, 4, 'Search Pembayaran', '2023-09-01 18:17:10', '127.0.0.1', 'Search Pembayaran Nis \'003TKJ\' dan kelas Id \'12\''),
(394, 4, 'Search Pembayaran', '2023-09-01 18:17:36', '127.0.0.1', 'Search Pembayaran Nis \'003TKJ\' dan kelas Id \'12\''),
(395, 4, 'Search Pembayaran', '2023-09-01 18:18:49', '127.0.0.1', 'Search Pembayaran Nis \'003TKJ\' dan kelas Id \'12\''),
(396, 4, 'Search Pembayaran', '2023-09-01 18:19:27', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(397, 4, 'Search Pembayaran', '2023-09-02 08:43:33', '127.0.0.1', 'Search Pembayaran Nis \'001MM\' dan kelas Id \'10\''),
(398, 4, 'Search Pembayaran', '2023-09-02 08:43:35', '127.0.0.1', 'Search Pembayaran Nis \'001MM\' dan kelas Id \'10\''),
(399, 4, 'Tambah Pembayaran Spp', '2023-09-02 08:43:59', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'98\' dan kelas Id \'10\''),
(400, 4, 'Search Pembayaran', '2023-09-03 12:48:45', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\'');
INSERT INTO `mm_logs` (`id`, `user_id`, `activity`, `ctime`, `ip`, `detail`) VALUES
(401, 4, 'Search Pembayaran', '2023-09-03 12:49:28', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(402, 4, 'Tambah Pembayaran Spp', '2023-09-03 12:51:32', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'93\' dan kelas Id \'1\''),
(403, 29, 'Search Pembayaran', '2023-09-04 10:21:34', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(404, 29, 'Tambah Pembayaran Spp', '2023-09-04 10:24:49', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'93\' dan kelas Id \'1\''),
(405, 4, 'Search Pembayaran', '2023-09-04 10:47:28', '127.0.0.1', 'Search Pembayaran Nis \'003TKJ\' dan kelas Id \'12\''),
(406, 4, 'Tambah Pembayaran Spp', '2023-09-04 10:47:48', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'111\' dan kelas Id \'12\''),
(407, 43, 'Search Pembayaran', '2023-09-04 10:57:13', '127.0.0.1', 'Search Pembayaran Nis \'001MM\' dan kelas Id \'10\''),
(408, 43, 'Tambah Pembayaran Spp', '2023-09-04 10:57:35', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'98\' dan kelas Id \'10\''),
(409, 43, 'Tambah Pembayaran Spp', '2023-09-04 11:06:33', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'98\' dan kelas Id \'10\''),
(410, 4, 'Search Pembayaran', '2023-09-23 09:57:20', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(411, 4, 'Search Pembayaran', '2023-09-23 09:58:29', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(412, 37, 'Search Pembayaran', '2023-09-23 10:03:46', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(413, 4, 'Search Pembayaran', '2023-09-23 10:17:59', '127.0.0.1', 'Search Pembayaran Nis \'002TKP\' dan kelas Id \'11\''),
(414, 4, 'Tambah Pembayaran Spp', '2023-09-23 10:18:21', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'104\' dan kelas Id \'11\''),
(415, 4, 'Search Pembayaran', '2023-09-23 10:33:30', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(416, 37, 'Search Pembayaran', '2023-09-23 10:34:00', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(417, 37, 'Tambah Pembayaran Spp', '2023-09-23 10:36:24', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'99\' dan kelas Id \'10\''),
(418, 37, 'Search Pembayaran', '2023-09-23 10:44:37', '127.0.0.1', 'Search Pembayaran Nis \'002MM\' dan kelas Id \'10\''),
(419, 4, 'Search Pembayaran', '2023-09-28 10:28:08', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(420, 4, 'Search Pembayaran', '2023-09-28 10:40:54', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(421, 4, 'Search Pembayaran', '2023-09-28 10:41:31', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(422, 4, 'Search Pembayaran', '2023-09-28 10:41:51', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(423, 4, 'Search Pembayaran', '2023-09-28 10:47:08', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(424, 4, 'Search Pembayaran', '2023-09-28 10:47:21', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(425, 4, 'Search Pembayaran', '2023-10-24 14:33:04', '127.0.0.1', 'Search Pembayaran Nis \'001TKP\' dan kelas Id \'11\''),
(426, 4, 'Search Pembayaran', '2023-10-24 14:33:45', '127.0.0.1', 'Search Pembayaran Nis \'001TKP\' dan kelas Id \'11\''),
(427, 40, 'Search Pembayaran', '2023-10-24 15:27:03', '127.0.0.1', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(428, 40, 'Tambah Pembayaran Spp', '2023-10-24 15:28:17', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'108\' dan kelas Id \'1\''),
(429, 4, 'Search Pembayaran', '2023-10-24 15:31:47', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(430, 4, 'Tambah Pembayaran Spp', '2023-10-24 15:32:18', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'93\' dan kelas Id \'1\''),
(431, 29, 'Search Pembayaran', '2023-10-24 15:33:55', '127.0.0.1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(432, 33, 'Search Pembayaran', '2023-10-25 13:49:15', '36.68.89.193', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(433, 33, 'Search Pembayaran', '2023-10-25 13:50:22', '36.68.89.193', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(434, 33, 'Search Pembayaran', '2023-10-25 13:50:24', '36.68.89.193', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(435, 33, 'Search Pembayaran', '2023-10-25 13:50:26', '36.68.89.193', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(436, 33, 'Search Pembayaran', '2023-10-25 13:50:28', '36.68.89.193', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(437, 33, 'Search Pembayaran', '2023-10-25 13:50:43', '36.68.89.193', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(438, 33, 'Search Pembayaran', '2023-10-25 13:50:52', '36.68.89.193', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(439, 33, 'Search Pembayaran', '2023-10-25 13:50:55', '36.68.89.193', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(440, 33, 'Search Pembayaran', '2023-10-25 13:51:05', '36.68.89.193', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(441, 33, 'Search Pembayaran', '2023-10-25 13:51:49', '36.68.89.193', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(442, 33, 'Search Pembayaran', '2023-10-25 13:51:51', '36.68.89.193', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(443, 4, 'Search Pembayaran', '2023-10-27 09:56:05', '116.206.31.91', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(444, 4, 'Tambah Pembayaran Spp', '2023-10-27 09:56:26', '116.206.31.91', 'Tambah Pembayaran Spp dengan ID Tagihan \'90\' dan kelas Id \'1\''),
(445, 34, 'Search Pembayaran', '2023-11-03 11:51:37', '36.68.128.69', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(446, 34, 'Tambah Pembayaran Spp', '2023-11-03 11:52:22', '36.68.128.69', 'Tambah Pembayaran Spp dengan ID Tagihan \'90\' dan kelas Id \'1\''),
(447, 4, 'Search Pembayaran', '2023-11-03 11:56:34', '114.122.22.102', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(448, 4, 'Search Pembayaran', '2023-11-03 14:00:45', '114.122.20.82', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(449, 34, 'Search Pembayaran', '2023-11-03 14:03:13', '114.122.20.82', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(450, 34, 'Search Pembayaran', '2023-11-03 14:05:44', '114.122.20.82', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(451, 34, 'Search Pembayaran', '2023-11-03 14:05:53', '114.122.20.82', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(452, 34, 'Tambah Pembayaran Spp', '2023-11-03 14:07:44', '114.122.20.82', 'Tambah Pembayaran Spp dengan ID Tagihan \'90\' dan kelas Id \'1\''),
(453, 41, 'Search Pembayaran', '2023-11-03 14:12:57', '114.122.20.82', 'Search Pembayaran Nis \'003TB\' dan kelas Id \'1\''),
(454, 41, 'Tambah Pembayaran Spp', '2023-11-03 14:13:24', '114.122.20.82', 'Tambah Pembayaran Spp dengan ID Tagihan \'109\' dan kelas Id \'1\''),
(455, 41, 'Search Pembayaran', '2023-11-03 14:14:03', '114.122.20.82', 'Search Pembayaran Nis \'003TB\' dan kelas Id \'1\''),
(456, 4, 'Search Pembayaran', '2023-11-04 10:17:36', '114.122.13.112', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(457, 4, 'Tambah Pembayaran Spp', '2023-11-04 10:17:58', '114.122.13.112', 'Tambah Pembayaran Spp dengan ID Tagihan \'93\' dan kelas Id \'1\''),
(458, 4, 'Search Pembayaran', '2023-11-04 10:19:10', '114.122.13.112', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(459, 4, 'Search Pembayaran', '2023-11-07 10:18:28', '114.122.8.111', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(460, 4, 'Tambah Pembayaran Spp', '2023-11-07 10:18:51', '114.122.8.111', 'Tambah Pembayaran Spp dengan ID Tagihan \'93\' dan kelas Id \'1\''),
(461, 34, 'Search Pembayaran', '2023-11-07 10:20:19', '114.122.8.111', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(462, 34, 'Search Pembayaran', '2023-11-07 10:21:07', '114.122.8.111', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(463, 34, 'Search Pembayaran', '2023-11-07 10:23:12', '114.122.8.111', 'Search Pembayaran Nis \'001TB\' dan kelas Id \'1\''),
(464, 4, 'Search Pembayaran', '2023-12-15 15:01:31', '114.10.83.64', 'Search Pembayaran Nis \'001KJ\' dan kelas Id \'1\''),
(465, 4, 'Tambah Pembayaran Spp', '2023-12-15 15:02:02', '114.10.83.64', 'Tambah Pembayaran Spp dengan ID Tagihan \'91\' dan kelas Id \'1\''),
(466, 4, 'Search Pembayaran', '2023-12-16 10:03:28', '114.5.147.254', 'Search Pembayaran Nis \'007TKJ\' dan kelas Id \'12\''),
(467, 4, 'Tambah Pembayaran Spp', '2023-12-16 10:03:48', '114.5.147.254', 'Tambah Pembayaran Spp dengan ID Tagihan \'113\' dan kelas Id \'12\''),
(468, 45, 'Search Pembayaran', '2023-12-16 10:04:25', '114.5.147.254', 'Search Pembayaran Nis \'007TKJ\' dan kelas Id \'12\''),
(469, 45, 'Tambah Pembayaran Spp', '2023-12-16 10:05:33', '114.5.147.254', 'Tambah Pembayaran Spp dengan ID Tagihan \'113\' dan kelas Id \'12\''),
(470, 4, 'Search Pembayaran', '2023-12-16 10:51:23', '114.5.147.254', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(471, 33, 'Search Pembayaran', '2023-12-16 12:24:26', '114.5.147.199', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(472, 4, 'Search Pembayaran', '2023-12-16 14:26:32', '114.10.87.212', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(473, 4, 'Tambah Pembayaran Spp', '2023-12-16 14:27:19', '114.10.87.212', 'Tambah Pembayaran Spp dengan ID Tagihan \'93\' dan kelas Id \'1\''),
(474, 40, 'Search Pembayaran', '2023-12-16 14:33:56', '114.10.87.212', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(475, 40, 'Search Pembayaran', '2023-12-16 14:34:11', '114.10.87.212', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(476, 40, 'Tambah Pembayaran Spp', '2023-12-16 14:36:19', '114.10.87.212', 'Tambah Pembayaran Spp dengan ID Tagihan \'108\' dan kelas Id \'1\''),
(477, 40, 'Search Pembayaran', '2023-12-16 14:44:26', '114.10.87.212', 'Search Pembayaran Nis \'002TB\' dan kelas Id \'1\''),
(478, 40, 'Tambah Pembayaran Spp', '2023-12-16 14:48:55', '114.10.87.212', 'Tambah Pembayaran Spp dengan ID Tagihan \'108\' dan kelas Id \'1\''),
(479, 4, 'Search Pembayaran', '2023-12-16 14:58:35', '114.10.87.212', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(480, 4, 'Tambah Pembayaran Spp', '2023-12-16 15:11:54', '114.10.87.212', 'Tambah Pembayaran Spp dengan ID Tagihan \'93\' dan kelas Id \'1\''),
(481, 4, 'Search Pembayaran', '2024-01-20 21:02:16', '2001:448a:3053:2c6d:4550:5d44:d12f:b5a1', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(482, 46, 'Search Pembayaran', '2024-01-20 21:43:23', '2001:448a:3053:2c6d:d563:a2aa:e9cf:bf0f', 'Search Pembayaran Nis \'1235\' dan kelas Id \'11\''),
(483, 43, 'Search Pembayaran', '2024-01-24 09:33:40', '66.96.225.83', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(484, 43, 'Tambah Pembayaran Spp', '2024-01-24 09:33:58', '66.96.225.83', 'Tambah Pembayaran Spp dengan ID Tagihan \'115\' dan kelas Id \'1\''),
(485, 4, 'Search Pembayaran', '2024-01-24 10:10:26', '36.95.46.187', 'Search Pembayaran Nis \'---Pilih Siswa---\' dan kelas Id \'1\''),
(486, 4, 'Search Pembayaran', '2024-01-24 10:10:31', '36.95.46.187', 'Search Pembayaran Nis \'003TKJ\' dan kelas Id \'12\''),
(487, 4, 'Search Pembayaran', '2024-01-24 10:10:50', '36.95.46.187', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(488, 46, 'Search Pembayaran', '2024-01-24 10:14:13', '36.95.46.187', 'Search Pembayaran Nis \'1235\' dan kelas Id \'11\''),
(489, 46, 'Search Pembayaran', '2024-01-24 10:17:13', '36.95.46.187', 'Search Pembayaran Nis \'1235\' dan kelas Id \'11\''),
(490, 46, 'Search Pembayaran', '2024-01-24 10:18:06', '36.95.46.187', 'Search Pembayaran Nis \'1235\' dan kelas Id \'11\''),
(491, 4, 'Search Pembayaran', '2024-01-28 15:45:18', '103.213.129.11', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(492, 4, 'Tambah Pembayaran Spp', '2024-01-28 15:45:34', '103.213.129.11', 'Tambah Pembayaran Spp dengan ID Tagihan \'115\' dan kelas Id \'1\''),
(493, 4, 'Search Pembayaran', '2024-01-28 15:48:04', '103.213.129.11', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(494, 4, 'Search Pembayaran', '2024-01-28 15:48:21', '103.213.129.11', 'Search Pembayaran Nis \'---Pilih Siswa---\' dan kelas Id \'10\''),
(495, 4, 'Search Pembayaran', '2024-01-28 15:48:25', '103.213.129.11', 'Search Pembayaran Nis \'002TKJ\' dan kelas Id \'1\''),
(496, 4, 'Search Pembayaran', '2024-01-28 15:49:09', '103.213.129.11', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(497, 4, 'Search Pembayaran', '2024-01-28 15:49:31', '103.213.129.11', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(498, 4, 'Search Pembayaran', '2024-01-28 15:50:58', '103.213.129.11', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(499, 33, 'Search Pembayaran', '2024-01-28 15:51:08', '103.213.129.11', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(500, 33, 'Tambah Pembayaran Spp', '2024-01-28 15:51:22', '103.213.129.11', 'Tambah Pembayaran Spp dengan ID Tagihan \'114\' dan kelas Id \'1\''),
(501, 33, 'Search Pembayaran', '2024-01-28 15:51:23', '103.213.129.11', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(502, 33, 'Search Pembayaran', '2024-01-28 15:54:50', '103.213.129.11', 'Search Pembayaran Nis \'001TKJ\' dan kelas Id \'1\''),
(503, 47, 'Search Pembayaran', '2024-01-28 15:54:59', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'1\''),
(504, 4, 'Search Pembayaran', '2024-01-28 15:55:11', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'1\''),
(505, 4, 'Search Pembayaran', '2024-01-28 15:55:38', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'1\''),
(506, 47, 'Search Pembayaran', '2024-01-28 15:56:09', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'1\''),
(507, 47, 'Tambah Pembayaran Spp', '2024-01-28 15:56:57', '103.213.129.11', 'Tambah Pembayaran Spp dengan ID Tagihan \'117\' dan kelas Id \'1\''),
(508, 4, 'Search Pembayaran', '2024-01-28 15:59:07', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'1\''),
(509, 47, 'Search Pembayaran', '2024-01-28 16:01:35', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(510, 47, 'Search Pembayaran', '2024-01-28 16:02:25', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'1\''),
(511, 47, 'Search Pembayaran', '2024-01-28 16:02:28', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(512, 4, 'Search Pembayaran', '2024-01-28 16:02:39', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(513, 4, 'Search Pembayaran', '2024-01-28 16:06:03', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(514, 47, 'Search Pembayaran', '2024-01-28 16:23:30', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(515, 47, 'Search Pembayaran', '2024-01-28 16:23:54', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'1\''),
(516, 47, 'Search Pembayaran', '2024-01-28 16:25:24', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(517, 47, 'Tambah Pembayaran Spp', '2024-01-28 16:26:27', '103.213.129.11', 'Tambah Pembayaran Spp dengan ID Tagihan \'117\' dan kelas Id \'1\''),
(518, 47, 'Search Pembayaran', '2024-01-28 16:27:18', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(519, 4, 'Search Pembayaran', '2024-01-28 16:27:54', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(520, 47, 'Search Pembayaran', '2024-01-28 16:30:16', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(521, 47, 'Search Pembayaran', '2024-01-28 16:31:47', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(522, 4, 'Search Pembayaran', '2024-01-28 16:32:29', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(523, 47, 'Search Pembayaran', '2024-01-28 16:34:06', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(524, 47, 'Search Pembayaran', '2024-01-28 16:36:24', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(525, 47, 'Search Pembayaran', '2024-01-28 16:37:53', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(526, 47, 'Search Pembayaran', '2024-01-28 16:38:28', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(527, 4, 'Search Pembayaran', '2024-01-28 18:55:24', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(528, 47, 'Search Pembayaran', '2024-01-28 18:57:36', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(529, 47, 'Search Pembayaran', '2024-01-28 19:04:34', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(530, 47, 'Search Pembayaran', '2024-01-28 19:05:36', '103.213.129.11', 'Search Pembayaran Nis \'3032001\' dan kelas Id \'10\''),
(531, 48, 'Search Pembayaran', '2024-01-30 17:21:35', '180.253.44.37', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(532, 48, 'Tambah Pembayaran Spp', '2024-01-30 17:21:52', '180.253.44.37', 'Tambah Pembayaran Spp dengan ID Tagihan \'121\' dan kelas Id \'1\''),
(533, 43, 'Search Pembayaran', '2024-03-04 19:44:20', '36.70.5.191', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(534, 43, 'Tambah Pembayaran Spp', '2024-03-04 19:44:36', '36.70.5.191', 'Tambah Pembayaran Spp dengan ID Tagihan \'121\' dan kelas Id \'1\''),
(535, 48, 'Search Pembayaran', '2024-03-06 16:17:06', '36.74.95.91', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(536, 48, 'Tambah Pembayaran Spp', '2024-03-06 16:18:17', '36.74.95.91', 'Tambah Pembayaran Spp dengan ID Tagihan \'121\' dan kelas Id \'1\''),
(537, 43, 'Search Pembayaran', '2024-03-20 05:14:48', '103.28.118.216', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(538, 43, 'Search Pembayaran', '2024-03-30 12:43:42', '140.213.10.12', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(539, 43, 'Search Pembayaran', '2024-03-31 00:49:07', '182.1.211.52', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(540, 43, 'Search Pembayaran', '2024-04-09 04:53:24', '103.253.24.56', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(541, 43, 'Search Pembayaran', '2024-04-09 04:55:28', '103.253.24.56', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(542, 43, 'Search Pembayaran', '2024-04-11 19:27:12', '103.253.24.56', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(543, 43, 'Search Pembayaran', '2024-04-11 19:49:27', '114.79.1.144', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(544, 43, 'Search Pembayaran', '2024-04-11 19:49:52', '114.79.1.144', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(545, 43, 'Tambah Pembayaran Spp', '2024-04-11 19:50:23', '114.79.1.144', 'Tambah Pembayaran Spp dengan ID Tagihan \'121\' dan kelas Id \'1\''),
(546, 3, 'Search Pembayaran', '2024-04-17 22:13:54', '114.10.17.143', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(547, 43, 'Search Pembayaran', '2024-04-17 22:18:47', '114.10.17.143', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(548, 43, 'Search Pembayaran', '2024-04-17 22:19:17', '114.10.17.143', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(549, 43, 'Search Pembayaran', '2024-04-19 09:38:07', '114.10.11.6', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(550, 43, 'Search Pembayaran', '2024-04-19 20:13:24', '114.10.124.103', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(551, 43, 'Search Pembayaran', '2024-04-19 20:18:02', '114.10.124.103', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(552, 48, 'Search Pembayaran', '2024-04-19 20:19:30', '114.10.124.103', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(553, 48, 'Tambah Pembayaran Spp', '2024-04-19 20:22:07', '114.10.124.103', 'Tambah Pembayaran Spp dengan ID Tagihan \'121\' dan kelas Id \'1\''),
(554, 43, 'Search Pembayaran', '2024-04-27 09:15:58', '114.10.125.47', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(555, 43, 'Search Pembayaran', '2024-04-27 13:50:05', '114.10.125.119', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(556, 43, 'Search Pembayaran', '2024-04-27 14:07:57', '114.10.125.119', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(557, 43, 'Search Pembayaran', '2024-04-27 20:09:28', '114.10.9.239', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(558, 43, 'Search Pembayaran', '2024-04-28 12:10:43', '38.188.112.238', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(559, 48, 'Search Pembayaran', '2024-04-29 07:54:34', '114.10.18.242', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(560, 43, 'Search Pembayaran', '2024-05-06 14:59:09', '139.192.148.99', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(561, 43, 'Tambah Pembayaran Spp', '2024-05-06 15:00:18', '139.192.148.99', 'Tambah Pembayaran Spp dengan ID Tagihan \'121\' dan kelas Id \'1\''),
(562, 48, 'Search Pembayaran', '2024-05-06 15:05:46', '114.10.5.188', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(563, 48, 'Search Pembayaran', '2024-05-06 15:07:39', '27.124.95.72', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(564, 48, 'Tambah Pembayaran Spp', '2024-05-06 15:26:20', '139.192.148.99', 'Tambah Pembayaran Spp dengan ID Tagihan \'121\' dan kelas Id \'1\''),
(565, 43, 'Search Pembayaran', '2024-05-06 22:38:03', '114.10.121.156', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(566, 43, 'Search Pembayaran', '2024-05-07 14:49:24', '103.142.255.99', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(567, 43, 'Search Pembayaran', '2024-05-09 08:37:32', '27.124.95.72', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(568, 43, 'Search Pembayaran', '2024-05-10 14:56:34', '36.68.9.150', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(569, 43, 'Search Pembayaran', '2024-05-10 18:44:59', '114.10.18.56', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(570, 43, 'Search Pembayaran', '2024-05-10 18:45:28', '114.10.18.56', 'Search Pembayaran Nis \'---Pilih Siswa---\' dan kelas Id \'1\''),
(571, 43, 'Search Pembayaran', '2024-05-10 18:45:41', '114.10.18.56', 'Search Pembayaran Nis \'---Pilih Siswa---\' dan kelas Id \'1\''),
(572, 43, 'Search Pembayaran', '2024-05-10 18:45:53', '114.10.18.56', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(573, 43, 'Search Pembayaran', '2024-05-10 20:45:57', '114.10.18.56', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(574, 43, 'Search Pembayaran', '2024-05-11 14:26:32', '114.10.6.108', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(575, 43, 'Search Pembayaran', '2024-05-11 15:01:13', '114.10.6.108', 'Search Pembayaran Nis \'---Pilih Siswa---\' dan kelas Id \'1\''),
(576, 43, 'Search Pembayaran', '2024-05-11 15:01:28', '114.10.6.108', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(577, 43, 'Search Pembayaran', '2024-05-11 15:04:25', '114.10.6.108', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(578, 43, 'Search Pembayaran', '2024-05-11 15:04:59', '114.10.6.108', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(579, 43, 'Search Pembayaran', '2024-05-12 18:33:51', '36.85.218.22', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(580, 4, 'Search Pembayaran', '2024-05-13 13:55:38', '103.187.162.20', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(581, 4, 'Search Pembayaran', '2024-05-13 13:56:05', '103.187.162.20', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(582, 4, 'Search Pembayaran', '2024-05-13 13:56:06', '103.187.162.20', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(583, 43, 'Search Pembayaran', '2024-05-15 12:30:02', '114.79.23.134', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(584, 43, 'Search Pembayaran', '2024-05-17 22:07:31', '114.10.4.254', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(585, 43, 'Search Pembayaran', '2024-05-19 12:20:54', '114.10.17.96', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(586, 43, 'Search Pembayaran', '2024-05-20 13:21:24', '114.10.17.96', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(587, 43, 'Search Pembayaran', '2024-05-20 14:02:05', '114.10.17.96', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(588, 43, 'Search Pembayaran', '2024-05-20 19:38:53', '103.189.201.46', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(589, 43, 'Search Pembayaran', '2024-05-21 15:33:15', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(590, 43, 'Search Pembayaran', '2024-05-21 15:53:51', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(591, 48, 'Search Pembayaran', '2024-05-21 16:39:45', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(592, 48, 'Search Pembayaran', '2024-05-21 16:47:14', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(593, 48, 'Tambah Pembayaran Spp', '2024-05-21 16:48:26', '27.124.88.106', 'Tambah Pembayaran Spp dengan ID Tagihan \'121\' dan kelas Id \'1\''),
(594, 48, 'Search Pembayaran', '2024-05-21 16:48:49', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(595, 48, 'Search Pembayaran', '2024-05-21 20:13:15', '114.10.5.216', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(596, 43, 'Search Pembayaran', '2024-05-21 20:15:06', '114.10.120.28', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(597, 43, 'Search Pembayaran', '2024-05-21 20:16:15', '114.10.120.28', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(598, 43, 'Search Pembayaran', '2024-05-21 20:17:34', '114.10.120.28', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(599, 43, 'Search Pembayaran', '2024-05-22 06:37:34', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(600, 43, 'Tambah Pembayaran Spp', '2024-05-22 06:38:09', '114.10.121.211', 'Tambah Pembayaran Spp dengan ID Tagihan \'123\' dan kelas Id \'1\''),
(601, 43, 'Search Pembayaran', '2024-05-22 06:38:46', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(602, 43, 'Search Pembayaran', '2024-05-22 06:39:24', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(603, 43, 'Search Pembayaran', '2024-05-22 06:40:00', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(604, 43, 'Search Pembayaran', '2024-05-22 06:41:15', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(605, 48, 'Search Pembayaran', '2024-05-22 06:45:42', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(606, 48, 'Search Pembayaran', '2024-05-22 07:26:54', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(607, 48, 'Search Pembayaran', '2024-05-22 07:46:39', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(608, 48, 'Search Pembayaran', '2024-05-22 07:51:31', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(609, 48, 'Search Pembayaran', '2024-05-22 07:59:30', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(610, 48, 'Search Pembayaran', '2024-05-22 07:59:32', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(611, 48, 'Search Pembayaran', '2024-05-22 08:01:05', '114.10.121.211', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(612, 43, 'Search Pembayaran', '2024-05-23 14:17:45', '114.10.20.223', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(613, 43, 'Search Pembayaran', '2024-05-23 14:58:21', '114.10.10.230', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(614, 43, 'Search Pembayaran', '2024-05-23 15:57:48', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(615, 43, 'Search Pembayaran', '2024-05-23 16:04:18', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(616, 43, 'Search Pembayaran', '2024-05-23 18:54:50', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(617, 43, 'Search Pembayaran', '2024-05-23 18:55:08', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(618, 43, 'Search Pembayaran', '2024-05-23 19:29:49', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(619, 43, 'Search Pembayaran', '2024-05-23 19:33:45', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(620, 48, 'Search Pembayaran', '2024-05-24 10:29:09', '139.195.113.115', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(621, 48, 'Tambah Pembayaran Spp', '2024-05-24 10:35:32', '139.195.113.115', 'Tambah Pembayaran Spp dengan ID Tagihan \'123\' dan kelas Id \'1\''),
(622, 43, 'Search Pembayaran', '2024-05-24 14:59:49', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(623, 48, 'Search Pembayaran', '2024-05-24 16:27:53', '116.254.112.207', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(624, 48, 'Search Pembayaran', '2024-05-24 17:31:00', '116.254.112.207', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(625, 43, 'Search Pembayaran', '2024-05-24 17:33:06', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(626, 43, 'Search Pembayaran', '2024-05-24 17:33:37', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(627, 43, 'Search Pembayaran', '2024-05-24 17:35:18', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(628, 43, 'Search Pembayaran', '2024-05-24 17:35:59', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(629, 48, 'Search Pembayaran', '2024-05-24 17:40:20', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(630, 48, 'Search Pembayaran', '2024-05-24 17:42:21', '116.254.112.207', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(631, 48, 'Tambah Pembayaran Spp', '2024-05-24 17:51:35', '116.254.112.207', 'Tambah Pembayaran Spp dengan ID Tagihan \'125\' dan kelas Id \'1\''),
(632, 48, 'Search Pembayaran', '2024-05-24 17:52:30', '116.254.112.207', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(633, 43, 'Search Pembayaran', '2024-05-24 18:29:44', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(634, 43, 'Search Pembayaran', '2024-05-24 18:45:33', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(635, 48, 'Search Pembayaran', '2024-05-24 22:11:33', '27.124.95.72', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(636, 43, 'Search Pembayaran', '2024-05-24 22:12:21', '27.124.95.72', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(637, 48, 'Search Pembayaran', '2024-05-24 22:13:08', '27.124.95.72', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(638, 48, 'Search Pembayaran', '2024-05-24 22:13:30', '27.124.95.72', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(639, 48, 'Search Pembayaran', '2024-05-24 22:13:42', '27.124.95.72', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(640, 48, 'Search Pembayaran', '2024-05-24 22:14:38', '27.124.95.72', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(641, 48, 'Search Pembayaran', '2024-05-24 22:14:54', '27.124.95.72', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(642, 48, 'Search Pembayaran', '2024-05-25 13:34:54', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(643, 48, 'Tambah Pembayaran Spp', '2024-05-25 13:36:36', '114.10.17.241', 'Tambah Pembayaran Spp dengan ID Tagihan \'123\' dan kelas Id \'1\''),
(644, 43, 'Search Pembayaran', '2024-05-25 13:37:52', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(645, 43, 'Search Pembayaran', '2024-05-25 13:38:04', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(646, 43, 'Search Pembayaran', '2024-05-25 15:32:54', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(647, 48, 'Search Pembayaran', '2024-05-25 15:51:40', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(648, 48, 'Search Pembayaran', '2024-05-25 15:52:02', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(649, 48, 'Search Pembayaran', '2024-05-25 15:54:49', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(650, 48, 'Search Pembayaran', '2024-05-25 15:54:58', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(651, 48, 'Search Pembayaran', '2024-05-25 17:38:19', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(652, 43, 'Search Pembayaran', '2024-05-25 19:08:04', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(653, 43, 'Search Pembayaran', '2024-05-25 19:10:14', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(654, 43, 'Search Pembayaran', '2024-05-25 19:36:31', '114.10.17.241', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(655, 43, 'Search Pembayaran', '2024-05-27 05:26:21', '114.10.123.6', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(656, 43, 'Search Pembayaran', '2024-05-27 05:38:41', '114.10.123.6', 'Search Pembayaran Nis \'---Pilih Siswa---\' dan kelas Id \'10\''),
(657, 43, 'Search Pembayaran', '2024-05-27 09:41:27', '114.10.21.80', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(658, 43, 'Search Pembayaran', '2024-05-27 09:41:28', '114.10.21.80', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(659, 43, 'Search Pembayaran', '2024-05-27 09:57:13', '114.10.21.80', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(660, 43, 'Search Pembayaran', '2024-05-27 10:06:47', '114.10.21.80', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(661, 43, 'Search Pembayaran', '2024-05-27 10:07:00', '114.10.21.80', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(662, 43, 'Search Pembayaran', '2024-05-27 10:10:23', '114.10.21.80', 'Search Pembayaran Nis \'---Pilih Siswa---\' dan kelas Id \'10\''),
(663, 43, 'Search Pembayaran', '2024-05-27 10:10:24', '114.10.21.80', 'Search Pembayaran Nis \'---Pilih Siswa---\' dan kelas Id \'10\''),
(664, 43, 'Search Pembayaran', '2024-05-27 10:18:55', '114.10.21.80', 'Search Pembayaran Nis \'1234\' dan kelas Id \'10\''),
(665, 43, 'Search Pembayaran', '2024-05-27 10:31:21', '114.10.21.80', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(666, 43, 'Tambah Pembayaran Spp', '2024-05-27 10:37:54', '114.10.21.80', 'Tambah Pembayaran Spp dengan ID Tagihan \'127\' dan kelas Id \'1\''),
(667, 43, 'Search Pembayaran', '2024-05-27 10:39:24', '114.10.21.80', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(668, 43, 'Search Pembayaran', '2024-05-27 14:30:11', '114.10.6.128', 'Search Pembayaran Nis \'1234\' dan kelas Id \'1\''),
(669, 50, 'Search Pembayaran', '2024-05-27 14:40:40', '114.10.6.128', 'Search Pembayaran Nis \'1234\' dan kelas Id \'10\''),
(670, 48, 'Search Pembayaran', '2024-05-27 14:43:31', '114.10.6.128', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(671, 43, 'Search Pembayaran', '2024-05-27 20:35:51', '114.10.6.128', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(672, 43, 'Search Pembayaran', '2024-05-27 20:35:54', '114.10.6.128', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(673, 43, 'Search Pembayaran', '2024-05-27 21:01:38', '114.10.6.128', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(674, 43, 'Search Pembayaran', '2024-05-27 23:17:21', '103.124.138.148', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(675, 50, 'Search Pembayaran', '2024-05-27 23:22:21', '103.124.138.148', 'Search Pembayaran Nis \'1234\' dan kelas Id \'10\''),
(676, 43, 'Search Pembayaran', '2024-05-27 23:24:15', '103.124.138.148', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(677, 43, 'Search Pembayaran', '2024-05-27 23:38:28', '114.10.6.128', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(678, 43, 'Search Pembayaran', '2024-05-27 23:38:30', '114.10.6.128', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(679, 43, 'Search Pembayaran', '2024-05-29 12:33:42', '117.103.68.200', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(680, 43, 'Tambah Pembayaran Spp', '2024-05-29 12:34:10', '117.103.68.200', 'Tambah Pembayaran Spp dengan ID Tagihan \'127\' dan kelas Id \'1\''),
(681, 43, 'Search Pembayaran', '2024-05-31 05:35:15', '180.254.65.146', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(682, 43, 'Tambah Pembayaran Spp', '2024-05-31 05:35:59', '180.254.65.146', 'Tambah Pembayaran Spp dengan ID Tagihan \'127\' dan kelas Id \'1\''),
(683, 43, 'Tambah Pembayaran Spp', '2024-05-31 05:36:02', '180.254.65.146', 'Tambah Pembayaran Spp dengan ID Tagihan \'127\' dan kelas Id \'1\''),
(684, 43, 'Tambah Pembayaran Spp', '2024-05-31 05:36:04', '180.254.65.146', 'Tambah Pembayaran Spp dengan ID Tagihan \'127\' dan kelas Id \'1\''),
(685, 43, 'Search Pembayaran', '2024-06-02 00:34:38', '2001:448a:4050:b2bb:71d0:e1fe:8f8e:e9cf', 'Search Pembayaran Nis \'1234\' dan kelas Id \'10\''),
(686, 43, 'Search Pembayaran', '2024-06-02 00:34:57', '2001:448a:4050:b2bb:71d0:e1fe:8f8e:e9cf', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(687, 43, 'Search Pembayaran', '2024-06-02 00:35:10', '2001:448a:4050:b2bb:71d0:e1fe:8f8e:e9cf', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(688, 43, 'Search Pembayaran', '2024-06-02 01:55:17', '2001:448a:4050:b2bb:71d0:e1fe:8f8e:e9cf', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(689, 43, 'Search Pembayaran', '2024-06-05 08:27:07', '2001:448a:20a0:2a20:d019:26f3:c08a:d90', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(690, 43, 'Search Pembayaran', '2024-06-05 08:43:44', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(691, 48, 'Search Pembayaran', '2024-06-05 08:44:28', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(692, 48, 'Tambah Pembayaran Spp', '2024-06-05 08:45:38', '27.124.88.106', 'Tambah Pembayaran Spp dengan ID Tagihan \'127\' dan kelas Id \'1\''),
(693, 48, 'Search Pembayaran', '2024-06-05 08:50:26', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(694, 48, 'Search Pembayaran', '2024-06-05 08:50:28', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(695, 48, 'Search Pembayaran', '2024-06-05 08:50:29', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(696, 48, 'Search Pembayaran', '2024-06-05 08:50:30', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(697, 48, 'Search Pembayaran', '2024-06-05 08:50:31', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(698, 48, 'Search Pembayaran', '2024-06-05 08:50:31', '27.124.88.106', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(699, 43, 'Search Pembayaran', '2024-06-06 18:26:20', '114.10.6.39', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(700, 48, 'Search Pembayaran', '2024-06-06 18:26:53', '114.10.6.39', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(701, 43, 'Search Pembayaran', '2024-06-07 20:51:07', '114.10.11.47', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(702, 43, 'Search Pembayaran', '2024-06-07 20:51:26', '114.10.11.47', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(703, 48, 'Search Pembayaran', '2024-06-07 20:52:32', '114.10.11.47', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(704, 48, 'Search Pembayaran', '2024-06-07 20:52:35', '114.10.11.47', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(705, 43, 'Search Pembayaran', '2024-06-08 10:09:51', '125.164.97.164', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(706, 43, 'Search Pembayaran', '2024-06-08 10:09:52', '125.164.97.164', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(707, 48, 'Search Pembayaran', '2024-06-08 10:13:00', '125.164.97.164', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(708, 48, 'Tambah Pembayaran Spp', '2024-06-08 10:13:58', '125.164.97.164', 'Tambah Pembayaran Spp dengan ID Tagihan \'127\' dan kelas Id \'1\''),
(709, 43, 'Search Pembayaran', '2024-06-08 12:06:17', '2001:448a:6020:57be:b0c4:4f1d:1487:f7a6', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(710, 50, 'Search Pembayaran', '2024-06-08 12:07:55', '2001:448a:6020:57be:b0c4:4f1d:1487:f7a6', 'Search Pembayaran Nis \'1234\' dan kelas Id \'10\''),
(711, 48, 'Search Pembayaran', '2024-06-08 12:08:34', '2001:448a:6020:57be:b0c4:4f1d:1487:f7a6', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(712, 48, 'Search Pembayaran', '2024-06-08 12:08:37', '2001:448a:6020:57be:b0c4:4f1d:1487:f7a6', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(713, 48, 'Search Pembayaran', '2024-06-08 12:08:40', '2001:448a:6020:57be:b0c4:4f1d:1487:f7a6', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(714, 48, 'Search Pembayaran', '2024-06-08 12:09:46', '2001:448a:6020:57be:b0c4:4f1d:1487:f7a6', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(715, 48, 'Search Pembayaran', '2024-06-08 12:10:38', '2001:448a:6020:57be:b0c4:4f1d:1487:f7a6', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(716, 48, 'Search Pembayaran', '2024-06-08 14:29:10', '114.10.16.85', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(717, 48, 'Search Pembayaran', '2024-06-08 14:30:40', '114.10.16.85', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(718, 51, 'Search Pembayaran', '2024-06-09 09:53:42', '103.180.119.10', 'Search Pembayaran Nis \'00000\' dan kelas Id \'1\''),
(719, 51, 'Search Pembayaran', '2024-06-09 09:53:46', '103.180.119.10', 'Search Pembayaran Nis \'00000\' dan kelas Id \'1\''),
(720, 43, 'Search Pembayaran', '2024-06-09 09:56:39', '103.180.119.10', 'Search Pembayaran Nis \'00000\' dan kelas Id \'1\''),
(721, 43, 'Search Pembayaran', '2024-06-09 09:57:29', '103.180.119.10', 'Search Pembayaran Nis \'00000\' dan kelas Id \'1\''),
(722, 43, 'Search Pembayaran', '2024-06-09 09:58:00', '103.180.119.10', 'Search Pembayaran Nis \'00000\' dan kelas Id \'1\''),
(723, 43, 'Search Pembayaran', '2024-06-09 09:59:33', '103.180.119.10', 'Search Pembayaran Nis \'00000\' dan kelas Id \'1\''),
(724, 43, 'Search Pembayaran', '2024-06-09 10:06:44', '103.180.119.10', 'Search Pembayaran Nis \'00000\' dan kelas Id \'1\''),
(725, 51, 'Search Pembayaran', '2024-06-09 10:15:25', '103.180.119.10', 'Search Pembayaran Nis \'00000\' dan kelas Id \'1\''),
(726, 52, 'Search Pembayaran', '2024-06-09 10:20:53', '103.180.119.10', 'Search Pembayaran Nis \'11111\' dan kelas Id \'1\''),
(727, 52, 'Search Pembayaran', '2024-06-09 10:21:24', '103.180.119.10', 'Search Pembayaran Nis \'11111\' dan kelas Id \'1\''),
(728, 52, 'Search Pembayaran', '2024-06-09 10:23:14', '103.180.119.10', 'Search Pembayaran Nis \'11111\' dan kelas Id \'1\''),
(729, 52, 'Tambah Pembayaran Spp', '2024-06-09 10:26:01', '103.180.119.10', 'Tambah Pembayaran Spp dengan ID Tagihan \'131\' dan kelas Id \'1\''),
(730, 52, 'Tambah Pembayaran Spp', '2024-06-09 10:31:27', '103.180.119.10', 'Tambah Pembayaran Spp dengan ID Tagihan \'131\' dan kelas Id \'1\''),
(731, 43, 'Search Pembayaran', '2024-06-09 20:27:35', '114.10.16.161', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(732, 43, 'Search Pembayaran', '2024-06-09 20:33:36', '114.10.16.161', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(733, 43, 'Search Pembayaran', '2024-06-09 21:16:31', '114.10.16.161', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(734, 43, 'Search Pembayaran', '2024-06-10 08:54:12', '114.10.7.187', 'Search Pembayaran Nis \'11111\' dan kelas Id \'1\''),
(735, 43, 'Search Pembayaran', '2024-06-10 08:54:57', '114.10.7.187', 'Search Pembayaran Nis \'11111\' dan kelas Id \'1\''),
(736, 43, 'Search Pembayaran', '2024-06-10 09:50:31', '114.10.7.187', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(737, 43, 'Search Pembayaran', '2024-06-10 10:02:14', '114.10.7.187', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(738, 43, 'Search Pembayaran', '2024-06-10 10:15:43', '103.180.119.10', 'Search Pembayaran Nis \'---Pilih Siswa---\' dan kelas Id \'1\''),
(739, 43, 'Search Pembayaran', '2024-06-10 10:15:50', '103.180.119.10', 'Search Pembayaran Nis \'11111\' dan kelas Id \'1\''),
(740, 43, 'Tambah Pembayaran Spp', '2024-06-10 10:16:44', '103.180.119.10', 'Tambah Pembayaran Spp dengan ID Tagihan \'131\' dan kelas Id \'1\''),
(741, 43, 'Search Pembayaran', '2024-06-10 10:30:56', '103.180.119.10', 'Search Pembayaran Nis \'11111\' dan kelas Id \'11\''),
(742, 43, 'Search Pembayaran', '2024-06-10 10:34:07', '103.180.119.10', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(743, 43, 'Search Pembayaran', '2024-06-10 10:34:09', '103.180.119.10', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(744, 43, 'Search Pembayaran', '2024-06-10 10:34:10', '103.180.119.10', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(745, 43, 'Search Pembayaran', '2024-06-10 10:34:10', '103.180.119.10', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(746, 43, 'Search Pembayaran', '2024-06-10 10:34:10', '103.180.119.10', 'Search Pembayaran Nis \'01920\' dan kelas Id \'1\''),
(747, 53, 'Search Pembayaran', '2024-06-10 10:37:44', '103.180.119.10', 'Search Pembayaran Nis \'11111\' dan kelas Id \'11\''),
(748, 54, 'Search Pembayaran', '2024-06-10 10:52:55', '103.180.119.10', 'Search Pembayaran Nis \'00000\' dan kelas Id \'1\''),
(749, 56, 'Search Pembayaran', '2024-06-10 15:55:17', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(750, 56, 'Tambah Pembayaran Spp', '2024-06-10 15:57:17', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(751, 56, 'Search Pembayaran', '2024-06-10 15:59:17', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(752, 56, 'Tambah Pembayaran Spp', '2024-06-10 16:00:09', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(753, 56, 'Tambah Pembayaran Spp', '2024-06-10 16:02:44', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(754, 56, 'Search Pembayaran', '2024-06-10 16:13:49', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(755, 56, 'Tambah Pembayaran Spp', '2024-06-10 16:14:14', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(756, 56, 'Search Pembayaran', '2024-06-10 16:14:29', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(757, 56, 'Tambah Pembayaran Spp', '2024-06-10 16:15:18', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(758, 56, 'Search Pembayaran', '2024-06-10 16:21:46', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(759, 55, 'Search Pembayaran', '2024-06-10 16:25:32', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(760, 55, 'Tambah Pembayaran Spp', '2024-06-10 16:25:44', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(761, 55, 'Tambah Pembayaran Spp', '2024-06-10 16:25:56', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(762, 55, 'Search Pembayaran', '2024-06-10 20:07:58', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(763, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:08:10', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(764, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:08:23', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(765, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:08:35', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(766, 55, 'Search Pembayaran', '2024-06-10 20:21:11', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(767, 55, 'Search Pembayaran', '2024-06-10 20:22:21', '127.0.0.1', 'Search Pembayaran Nis \'11111\' dan kelas Id \'11\''),
(768, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:22:50', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'131\' dan kelas Id \'1\''),
(769, 55, 'Search Pembayaran', '2024-06-10 20:26:21', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(770, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:26:31', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(771, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:26:43', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(772, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:26:54', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(773, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:27:06', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(774, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:27:17', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(775, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:27:29', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(776, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:27:52', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(777, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:28:45', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(778, 56, 'Search Pembayaran', '2024-06-10 20:29:21', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(779, 56, 'Tambah Pembayaran Spp', '2024-06-10 20:30:08', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(780, 56, 'Search Pembayaran', '2024-06-10 20:42:56', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(781, 56, 'Search Pembayaran', '2024-06-10 20:43:04', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(782, 56, 'Tambah Pembayaran Spp', '2024-06-10 20:43:53', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(783, 55, 'Search Pembayaran', '2024-06-10 20:49:04', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(784, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:49:17', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'132\' dan kelas Id \'1\''),
(785, 55, 'Search Pembayaran', '2024-06-10 20:51:30', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(786, 55, 'Search Pembayaran', '2024-06-10 20:53:50', '127.0.0.1', 'Search Pembayaran Nis \'11111\' dan kelas Id \'11\''),
(787, 55, 'Tambah Pembayaran Spp', '2024-06-10 20:54:06', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'131\' dan kelas Id \'1\''),
(788, 55, 'Search Pembayaran', '2024-06-10 21:04:24', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\'');
INSERT INTO `mm_logs` (`id`, `user_id`, `activity`, `ctime`, `ip`, `detail`) VALUES
(789, 55, 'Search Pembayaran', '2024-06-10 21:07:24', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(790, 56, 'Search Pembayaran', '2024-06-30 11:26:41', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(791, 56, 'Search Pembayaran', '2024-06-30 11:33:07', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(792, 55, 'Search Pembayaran', '2024-06-30 13:21:18', '127.0.0.1', 'Search Pembayaran Nis \'11111\' dan kelas Id \'11\''),
(793, 55, 'Search Pembayaran', '2024-06-30 13:24:43', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(794, 55, 'Search Pembayaran', '2024-06-30 13:26:34', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(795, 55, 'Search Pembayaran', '2024-06-30 13:43:19', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(796, 55, 'Tambah Pembayaran Spp', '2024-06-30 13:43:35', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'133\' dan kelas Id \'1\''),
(797, 56, 'Search Pembayaran', '2024-06-30 14:10:52', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(798, 56, 'Tambah Pembayaran Spp', '2024-06-30 14:11:42', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'133\' dan kelas Id \'1\''),
(799, 55, 'Search Pembayaran', '2024-06-30 15:57:40', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(800, 56, 'Search Pembayaran', '2024-07-02 09:04:58', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(801, 56, 'Search Pembayaran', '2024-07-02 09:05:03', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(802, 56, 'Search Pembayaran', '2024-07-02 09:44:28', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(803, 55, 'Search Pembayaran', '2024-07-02 09:50:48', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(804, 55, 'Search Pembayaran', '2024-07-03 14:22:29', '127.0.0.1', 'Search Pembayaran Nis \'---Pilih Siswa---\' dan kelas Id \'10\''),
(805, 55, 'Search Pembayaran', '2024-07-03 15:02:18', '127.0.0.1', 'Search Pembayaran Nis \'---Pilih Siswa---\' dan kelas Id \'1\''),
(806, 55, 'Search Pembayaran', '2024-07-03 15:03:15', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(807, 56, 'Search Pembayaran', '2024-07-03 15:52:13', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(808, 56, 'Search Pembayaran', '2024-07-04 21:04:56', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(809, 56, 'Tambah Pembayaran Spp', '2024-07-04 21:06:35', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'133\' dan kelas Id \'1\''),
(810, 56, 'Search Pembayaran', '2024-07-04 21:08:38', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(811, 56, 'Search Pembayaran', '2024-07-04 21:08:40', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(812, 56, 'Search Pembayaran', '2024-07-04 21:08:43', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(813, 56, 'Search Pembayaran', '2024-07-04 21:08:44', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(814, 56, 'Search Pembayaran', '2024-07-04 21:08:51', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(815, 56, 'Search Pembayaran', '2024-07-04 21:09:03', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(816, 56, 'Search Pembayaran', '2024-07-04 21:11:09', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(817, 56, 'Search Pembayaran', '2024-07-04 21:13:15', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(818, 56, 'Search Pembayaran', '2024-07-04 21:14:32', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(819, 56, 'Search Pembayaran', '2024-07-04 21:16:34', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(820, 56, 'Search Pembayaran', '2024-07-04 21:16:44', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(821, 56, 'Search Pembayaran', '2024-07-04 21:17:59', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(822, 56, 'Search Pembayaran', '2024-07-04 21:18:03', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(823, 56, 'Search Pembayaran', '2024-07-04 21:18:18', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(824, 56, 'Search Pembayaran', '2024-07-04 21:23:22', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(825, 55, 'Search Pembayaran', '2024-07-04 21:26:41', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(826, 56, 'Search Pembayaran', '2024-07-05 20:15:14', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(827, 56, 'Tambah Pembayaran Spp', '2024-07-05 20:17:11', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'133\' dan kelas Id \'1\''),
(828, 56, 'Search Pembayaran', '2024-07-05 20:21:51', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(829, 56, 'Tambah Pembayaran Spp', '2024-07-05 20:27:10', '127.0.0.1', 'Tambah Pembayaran Spp dengan ID Tagihan \'133\' dan kelas Id \'1\''),
(830, 56, 'Search Pembayaran', '2024-07-10 10:15:47', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(831, 56, 'Search Pembayaran', '2024-07-10 10:15:49', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(832, 56, 'Search Pembayaran', '2024-07-10 10:15:52', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(833, 56, 'Search Pembayaran', '2024-07-10 10:15:55', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\''),
(834, 56, 'Search Pembayaran', '2024-07-10 10:21:38', '127.0.0.1', 'Search Pembayaran Nis \'12345\' dan kelas Id \'1\'');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('cukupfun123@gmail.com', '1905c2c58037e234f2dba1b95e2298d4704f5957cb4173c8535785ef4ecb05cc', '2023-11-04 03:14:36'),
('dani@gmail.com', '5c3950dd458ed4ee907f87207ba8b556a15399f6d80faef0c0a144b21e4e9509', '2023-06-18 08:22:57'),
('danisnnapish30082001@gmail.com', '7b4f80bf63680ee1c1990a71aa9f3c24795de864141bfed26a9fab45e71a99a8', '2023-11-04 03:13:49'),
('kepalasekolah@gmail.com', '516a60cc2c47db78f348f04b5ce315546bbf43a0344b8ca64efb5381c053b8bf', '2023-11-04 03:14:57'),
('siswamm1@gmail.com', 'ce627fc54a7c9731c68208c44c46fb406de5391058441a61f576a0a9fb5dbe63', '2023-08-07 06:43:13'),
('siswatb1@gmail.com', 'fcc668e545250d8b91942009a520b933df646a2d4996aaadb7e281f912b630bf', '2023-11-04 03:15:11'),
('siswatb2@gmail.com', '0b6cc24a1540066ea7c5282238215966d0023ac26fd3a9d48ef8ef72bd1b9a4f', '2023-08-08 03:03:55'),
('siswatkj1@gmail.com', '7eddb26d6b21584166ead54553404544c6d527b7f4ced606f625f7c1ef72eccc', '2023-08-08 02:59:31'),
('siswatkj2@gmail.com', 'a979a01a0e645a0b8f807cbec85f5d0a24a34c1c4c5328f6b9a0ccd833303f09', '2023-11-04 03:14:24'),
('siswatkp2@gmail.com', '396181f6fd8290371f59ab04bf9479b1db3aeffebe459048de47ba6116c40168', '2023-08-08 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bulan_id` int(11) DEFAULT NULL,
  `tagihan_id` int(11) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `user_pay_id` int(11) DEFAULT NULL,
  `nilai` varchar(30) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `pdf_url` varchar(300) DEFAULT NULL,
  `metode_pembayaran` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `bulan_id`, `tagihan_id`, `kelas_id`, `user_pay_id`, `nilai`, `order_id`, `pdf_url`, `metode_pembayaran`, `status`, `created_at`) VALUES
(501, 48, 6, 125, 1, NULL, '200000', NULL, NULL, 'Online', 'Pending', '2024-05-24 10:51:35'),
(502, 48, 7, 125, 1, NULL, '200000', NULL, NULL, 'Online', 'Pending', '2024-05-24 10:51:35'),
(503, 48, 8, 125, 1, NULL, '200000', NULL, NULL, 'Online', 'Pending', '2024-05-24 10:51:35'),
(504, 48, 9, 125, 1, NULL, '200000', NULL, NULL, 'Online', 'Pending', '2024-05-24 10:51:35'),
(505, 48, 10, 125, 1, NULL, '200000', NULL, NULL, 'Online', 'Pending', '2024-05-24 10:51:35'),
(506, 48, 11, 125, 1, NULL, '200000', NULL, NULL, 'Online', 'Pending', '2024-05-24 10:51:35'),
(507, 48, 12, 125, 1, NULL, '200000', NULL, NULL, 'Online', 'Pending', '2024-05-24 10:51:35'),
(508, 48, NULL, 126, 1, NULL, '100000', NULL, NULL, 'Online', 'Pending', '2024-05-24 15:14:35'),
(509, 48, 2, 123, 1, NULL, '200000', 1705562789, 'https://app.sandbox.midtrans.com/snap/v1/transactions/c91d8e93-ce82-45f4-bf60-7035977eb13a/pdf', 'Online', 'Lunas', '2024-05-25 06:36:37'),
(510, 48, 1, 127, 1, NULL, '200000', NULL, NULL, 'Manual', 'Lunas', '2024-05-27 03:37:54'),
(511, 48, 8, 127, 1, NULL, '200000', NULL, NULL, 'Manual', 'Lunas', '2024-05-29 05:34:10'),
(512, 48, 2, 127, 1, NULL, '200000', NULL, NULL, 'Manual', 'Lunas', '2024-05-30 22:36:02'),
(513, 48, 2, 127, 1, NULL, '200000', NULL, NULL, 'Manual', 'Lunas', '2024-05-30 22:35:59'),
(514, 48, 2, 127, 1, NULL, '200000', NULL, NULL, 'Manual', 'Lunas', '2024-05-30 22:36:04'),
(515, 48, 3, 127, 1, NULL, '200000', 309484550, 'https://app.sandbox.midtrans.com/snap/v1/transactions/c4f027aa-0aad-4fe4-ae00-09b4bcb6041f/pdf', 'Online', 'Lunas', '2024-06-05 01:45:39'),
(516, 48, 10, 127, 1, NULL, '200000', NULL, NULL, 'Online', 'Pending', '2024-06-08 03:13:58'),
(517, 52, 1, 131, 1, NULL, '1000', 430647579, 'https://app.sandbox.midtrans.com/snap/v1/transactions/57d30baf-eb75-4dd6-b152-8b5cfffb3c01/pdf', 'Online', 'Lunas', '2024-06-09 03:29:07'),
(518, 52, 2, 131, 1, NULL, '1000', 157986087, 'https://app.sandbox.midtrans.com/snap/v1/transactions/111dd41e-b429-4d33-922b-ebad57807fd0/pdf', 'Online', 'Lunas', '2024-06-09 03:33:03'),
(519, 52, 3, 131, 1, NULL, '1000', NULL, NULL, 'Manual', 'Lunas', '2024-06-10 03:16:44'),
(520, 56, 1, 132, 1, NULL, '1000', NULL, NULL, 'Manual', 'Lunas', '2024-06-10 13:28:45'),
(521, 56, 2, 132, 1, NULL, '1000', NULL, NULL, 'Manual', 'Lunas', '2024-06-10 13:28:45'),
(522, 56, 3, 132, 1, NULL, '1000', 1381149145, 'https://app.sandbox.midtrans.com/snap/v1/transactions/5463038c-427f-4076-9d4b-aab699cfe658/pdf', 'Online', 'Lunas', '2024-06-10 13:32:01'),
(523, 56, 4, 132, 1, NULL, '1000', 790950879, 'https://app.sandbox.midtrans.com/snap/v1/transactions/b3820152-223d-45cf-8b54-a63e487df91d/pdf', 'Online', 'Lunas', '2024-06-10 13:43:54'),
(524, 56, 5, 132, 1, NULL, '1000', NULL, NULL, 'Manual', 'Lunas', '2024-06-10 13:49:17'),
(525, 52, 4, 131, 1, NULL, '1000', NULL, NULL, 'Manual', 'Lunas', '2024-06-10 13:54:06'),
(526, 56, 1, 133, 1, NULL, '1000000', NULL, NULL, 'Manual', 'Lunas', '2024-06-30 06:43:35'),
(527, 56, 2, 133, 1, NULL, '1000000', 236895581, 'https://app.sandbox.midtrans.com/snap/v1/transactions/5806cb12-0e69-4447-920d-73f863803884/pdf', 'Online', 'Failed', '2024-07-02 02:04:58'),
(529, 56, 3, 133, 1, NULL, '1000000', 199855080, 'https://app.sandbox.midtrans.com/snap/v1/transactions/4fc9741e-b46f-40f3-824c-873608e15600/pdf', 'Online', 'Lunas', '2024-07-05 13:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tagihan`
--

CREATE TABLE `tagihan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `thajaran_id` int(11) NOT NULL,
  `jenis_pembayaran` varchar(250) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tagihan`
--

INSERT INTO `tagihan` (`id`, `user_id`, `thajaran_id`, `jenis_pembayaran`, `kelas_id`, `nilai`, `status`, `created_at`, `updated_at`) VALUES
(133, 56, 7, '1', 1, 1000000, 'Belum Lunas', '2024-06-30 06:25:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id` int(11) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `active` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id`, `tahun`, `active`, `created_at`, `updated_at`) VALUES
(2, '2023', 'ON', '2024-05-20 07:43:03', '2024-05-20 14:43:03'),
(4, '2022', 'OFF', '2024-05-17 08:00:52', '2024-05-17 15:00:52'),
(5, '2021', 'ON', '2023-07-31 09:38:28', NULL),
(7, '2024', 'ON', '2024-05-21 23:34:11', NULL),
(8, '2022', 'ON', '2024-05-24 10:29:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `no_tlp` varchar(20) DEFAULT NULL,
  `kelas_id` int(11) DEFAULT NULL,
  `jurusan_id` int(11) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `no_ortu` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role` int(11) NOT NULL COMMENT '1 = Admin, 2 = Siswa, 3 = Kepala Sekolah',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nis`, `nama_lengkap`, `email`, `email_verified_at`, `no_tlp`, `kelas_id`, `jurusan_id`, `tgl_lahir`, `alamat`, `status`, `no_ortu`, `password`, `image`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(48, '01920', 'ab', 'ab@gmail.com', NULL, '6285797887711', 10, 2, '2024-01-07', 'a', 'ON', '6285797887711', '$2y$10$QCstIM4cYgmfwNwQwIfD3OacnDKjOhCkvIBPa5IkzrUiZXnoehoA2', 'avatar2.png', NULL, 2, '2024-01-30 10:20:38', '2024-06-30 05:49:32'),
(52, '11111', 'khoirul yazid', 'danilukman06@gmail.com', NULL, '083846143924', 11, 1, '2002-03-31', 'Jalan jembatan mini indah', 'Lulus', '083846143924', '$2y$10$LMql0ZcvlNcYKN1vFJCSjupPRFVYc3uCb2AfcPcKSkQeoJG8v74Xa', 'avatar2.png', NULL, 2, '2024-06-09 03:19:58', '2024-06-10 03:29:21'),
(55, NULL, 'Achmad Khoirul Yazid', 'khoirulyazid32@gmail.com', NULL, '083846143924', NULL, NULL, '2001-10-24', 'Maduran-Lamongan', 'ON', NULL, '$2y$10$t0jq6fXX.yqjqxurg4jEUORJ4Pav14Ur3WqBOHwCBaJFGAaS4FUDu', 'user.png.png', NULL, 1, '2024-06-10 08:47:41', '2024-06-10 12:49:49'),
(56, '12345', 'yaziddd', 'yaz32@gmail.com', NULL, '083846143924', 1, 2, '2024-06-04', 'pelangwot', 'ON', '45436436346', '$2y$10$rRtEaK7mdhyLw8KPyCAj9ep3qX/ybPvS8MPTNNrCSmYLmiO1To6AO', 'yazid.jpg', NULL, 2, '2024-06-10 08:50:28', '2024-07-10 03:18:05'),
(57, NULL, 'kepala sekolah', 'manies32@gmail.com', NULL, '083846143924', NULL, NULL, '2024-05-29', 'Jalan jembatan mini indah', 'ON', NULL, '$2y$10$ueFGTz5XAmPKYaHz1DtJ7OKak7Iyhtt8rNsHWBv07ARxVKAT52.Jm', 'user.png.png', NULL, 3, '2024-06-10 13:13:39', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplikasi`
--
ALTER TABLE `aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulan`
--
ALTER TABLE `bulan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mm_logs`
--
ALTER TABLE `mm_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `bulan_id` (`bulan_id`),
  ADD KEY `tagihan_id` (`tagihan_id`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `thajaran_id` (`thajaran_id`),
  ADD KEY `jenis_pembayaran` (`jenis_pembayaran`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `jurusan_id` (`jurusan_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplikasi`
--
ALTER TABLE `aplikasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mm_logs`
--
ALTER TABLE `mm_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=835;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

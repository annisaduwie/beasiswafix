-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 30 Mar 2019 pada 09.04
-- Versi Server: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(225) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(50) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `email`, `create_dtm`, `update_dtm`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'ebeasiswa.indonesia@gmail.com', '2019-01-09 16:14:03', '2019-01-09 16:14:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa`
--

CREATE TABLE `beasiswa` (
  `id_beasiswa` int(225) NOT NULL,
  `url` varchar(255) NOT NULL,
  `id_beasiswa_univ` int(225) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beasiswa`
--

INSERT INTO `beasiswa` (`id_beasiswa`, `url`, `id_beasiswa_univ`, `create_dtm`, `update_dtm`) VALUES
(1, 'http://beasiswa.id/?s=universitas+gadjah+mada', 1, '2018-12-04 10:30:07', '2018-12-04 10:30:07'),
(3, 'http://beasiswa.id/?s=institut+teknologi+bandung', 3, '2018-12-18 10:47:13', '2018-12-19 10:29:41'),
(4, 'http://beasiswa.id/?s=universitas+indonesia', 4, '2019-03-28 06:24:53', '2019-03-28 06:24:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa_umum`
--

CREATE TABLE `beasiswa_umum` (
  `id_beasiswa_umum` int(225) NOT NULL,
  `nama_beasiswa_umum` varchar(50) NOT NULL,
  `jenjang` varchar(20) DEFAULT NULL,
  `negara` varchar(50) DEFAULT NULL,
  `url_beasiswa_umum` varchar(255) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beasiswa_umum`
--

INSERT INTO `beasiswa_umum` (`id_beasiswa_umum`, `nama_beasiswa_umum`, `jenjang`, `negara`, `url_beasiswa_umum`, `create_dtm`, `update_dtm`) VALUES
(2, 'Beasiswa Diploma', 'Diploma', NULL, 'http://beasiswa.id/category/beasiswa-diploma/', '2018-11-28 04:38:46', '2018-11-28 04:38:46'),
(3, 'Beasiswa Sarjana', 'Sarjana', NULL, 'http://beasiswa.id/category/beasiswa-sarjana/', '2018-11-28 04:38:33', '2018-11-28 04:38:33'),
(4, 'Beasiswa Pascasarjana', 'Magister', NULL, 'http://beasiswa.id/category/beasiswa-magister/', '2018-11-28 04:38:25', '2018-11-28 04:38:25'),
(5, 'Beasiswa Doktor', 'Doktor', NULL, 'http://beasiswa.id/category/beasiswa-doktor/', '2018-11-28 04:38:15', '2018-11-28 04:38:15'),
(8, 'Beasiswa di Australia', NULL, 'Australia', 'http://beasiswa.id/tag/beasiswa-australia/', '2018-11-28 03:28:52', '2018-11-28 03:28:52'),
(9, 'Beasiswa di Indonesia', NULL, 'Indonesia', 'http://beasiswa.id/tag/beasiswa-indonesia/', '2018-11-28 03:29:41', '2018-11-28 03:29:41'),
(10, 'Beasiswa di Amerika', NULL, 'Amerika', 'http://beasiswa.id/tag/beasiswa-amerika/', '2018-11-28 03:31:10', '2018-11-28 03:31:10'),
(11, 'Beasiswa di Belanda', NULL, 'Belanda', 'http://beasiswa.id/tag/beasiswa-belanda/', '2018-11-28 03:31:53', '2018-11-28 03:31:53'),
(12, 'Beasiswa di Jepang', NULL, 'Jepang', 'http://beasiswa.id/tag/beasiswa-jepang/', '2018-12-03 00:46:31', '2018-12-03 00:46:31'),
(13, 'Beasiswa di Arab Saudi', NULL, 'Arab-Saudi', 'http://beasiswa.id/tag/beasiswa-arab-saudi/', '2018-12-03 00:45:15', '2018-12-03 00:45:15'),
(14, 'Beasiswa di Perancis', NULL, 'Perancis', 'http://beasiswa.id/tag/beasiswa-perancis/', '2018-11-28 03:34:42', '2018-11-28 03:34:42'),
(15, 'Beasiswa di Korea', NULL, 'Korea', 'http://beasiswa.id/tag/beasiswa-korea/', '2018-11-28 03:36:35', '2018-11-28 03:36:35'),
(16, 'Beasiswa di Singapura', NULL, 'Singapura', 'http://beasiswa.id/tag/beasiswa-singapura/', '2018-11-28 03:36:23', '2018-11-28 03:36:23'),
(17, 'Beasiswa di Malaysia', NULL, 'Malaysia', 'http://beasiswa.id/tag/beasiswa-malaysia/', '2018-11-28 03:37:19', '2018-11-28 03:37:19'),
(22, 'Beasiswa di Inggris', NULL, 'Inggris', 'http://beasiswa.id/tag/beasiswa-inggris/', '2018-12-01 03:06:38', '2018-12-01 03:06:38'),
(23, 'Beasiswa di Thailand', NULL, 'Thailand', 'http://beasiswa.id/tag/beasiswa-thailand/', '2018-12-01 07:51:44', '2018-12-01 07:51:44'),
(24, 'Beasiswa Djarum', 'Sarjana', 'Indonesia', 'http://beasiswa.id/?s=beasiswa+bagian', '2019-02-01 06:55:06', '2019-02-01 06:55:06'),
(25, 'Beasiswa Mesir', 'Sarjana', 'Mesir', 'http://beasiswa.id/?s=beasiswa+bagian', '2019-02-01 06:53:07', '2019-02-01 06:53:07'),
(26, 'Beasiswa Djarum', NULL, 'Indonesia', 'dsd', '2019-03-23 22:26:04', '2019-03-23 22:26:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa_universitas`
--

CREATE TABLE `beasiswa_universitas` (
  `id_beasiswa_univ` int(225) NOT NULL,
  `id_universitas` int(225) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beasiswa_universitas`
--

INSERT INTO `beasiswa_universitas` (`id_beasiswa_univ`, `id_universitas`, `create_dtm`, `update_dtm`) VALUES
(1, 1, '2018-12-04 10:30:07', '2018-12-04 10:30:07'),
(3, 2, '2018-12-18 10:47:13', '2018-12-18 10:47:13'),
(4, 4, '2019-03-28 06:24:53', '2019-03-28 06:24:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_beasiswa`
--

CREATE TABLE `detail_beasiswa` (
  `id_detail_beasiswa` int(225) NOT NULL,
  `id_beasiswa` int(225) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` mediumtext,
  `url_detail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pencarian`
--

CREATE TABLE `detail_pencarian` (
  `id_detail_pencarian` int(225) NOT NULL,
  `id_universitas` int(225) NOT NULL,
  `id_pencarian` int(225) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pencarian`
--

INSERT INTO `detail_pencarian` (`id_detail_pencarian`, `id_universitas`, `id_pencarian`, `create_dtm`, `update_dtm`) VALUES
(1, 1, 50, '2019-01-14 18:18:36', '2019-01-14 18:18:36'),
(2, 1, 51, '2019-01-14 23:13:29', '2019-01-14 23:13:29'),
(3, 1, 51, '2019-01-14 23:21:50', '2019-01-14 23:21:50'),
(4, 1, 51, '2019-01-14 23:39:00', '2019-01-14 23:39:00'),
(5, 1, 51, '2019-01-14 23:40:55', '2019-01-14 23:40:55'),
(6, 1, 51, '2019-01-14 23:42:28', '2019-01-14 23:42:28'),
(7, 1, 51, '2019-01-14 23:43:32', '2019-01-14 23:43:32'),
(8, 1, 51, '2019-01-14 23:43:50', '2019-01-14 23:43:50'),
(9, 1, 51, '2019-01-14 23:44:48', '2019-01-14 23:44:48'),
(10, 1, 51, '2019-01-14 23:46:31', '2019-01-14 23:46:31'),
(11, 1, 51, '2019-01-14 23:48:55', '2019-01-14 23:48:55'),
(12, 1, 51, '2019-01-14 23:49:38', '2019-01-14 23:49:38'),
(13, 1, 51, '2019-01-14 23:52:21', '2019-01-14 23:52:21'),
(14, 1, 51, '2019-01-14 23:54:52', '2019-01-14 23:54:52'),
(15, 1, 51, '2019-01-14 23:55:49', '2019-01-14 23:55:49'),
(16, 1, 51, '2019-01-14 23:56:33', '2019-01-14 23:56:33'),
(17, 1, 51, '2019-01-14 23:59:23', '2019-01-14 23:59:23'),
(18, 1, 51, '2019-01-15 00:00:00', '2019-01-15 00:00:00'),
(19, 1, 51, '2019-01-15 00:00:52', '2019-01-15 00:00:52'),
(20, 1, 51, '2019-01-15 00:03:11', '2019-01-15 00:03:11'),
(21, 1, 51, '2019-01-15 00:04:46', '2019-01-15 00:04:46'),
(22, 1, 51, '2019-01-15 00:05:34', '2019-01-15 00:05:34'),
(23, 1, 51, '2019-01-15 00:07:36', '2019-01-15 00:07:36'),
(24, 1, 51, '2019-01-15 00:08:10', '2019-01-15 00:08:10'),
(25, 1, 51, '2019-01-15 00:09:08', '2019-01-15 00:09:08'),
(26, 1, 51, '2019-01-15 00:09:28', '2019-01-15 00:09:28'),
(27, 1, 51, '2019-01-15 00:10:43', '2019-01-15 00:10:43'),
(28, 1, 51, '2019-01-15 00:11:03', '2019-01-15 00:11:03'),
(29, 1, 51, '2019-01-15 00:20:34', '2019-01-15 00:20:34'),
(30, 1, 51, '2019-01-15 00:21:27', '2019-01-15 00:21:27'),
(31, 1, 51, '2019-01-15 00:21:57', '2019-01-15 00:21:57'),
(32, 1, 51, '2019-01-15 00:22:49', '2019-01-15 00:22:49'),
(33, 1, 51, '2019-01-15 00:23:33', '2019-01-15 00:23:33'),
(34, 1, 51, '2019-01-15 00:24:20', '2019-01-15 00:24:20'),
(35, 1, 51, '2019-01-15 00:25:10', '2019-01-15 00:25:10'),
(36, 1, 51, '2019-01-15 00:25:35', '2019-01-15 00:25:35'),
(37, 1, 51, '2019-01-15 00:26:51', '2019-01-15 00:26:51'),
(38, 1, 60, '2019-03-12 16:14:04', '2019-03-12 16:14:04'),
(39, 2, 61, '2019-03-12 16:14:55', '2019-03-12 16:14:55'),
(40, 1, 62, '2019-03-12 22:05:24', '2019-03-12 22:05:24'),
(41, 2, 63, '2019-03-12 22:06:04', '2019-03-12 22:06:04'),
(42, 2, 66, '2019-03-24 08:42:49', '2019-03-24 08:42:49'),
(43, 2, 67, '2019-03-24 08:45:02', '2019-03-24 08:45:02'),
(44, 1, 69, '2019-03-28 08:04:09', '2019-03-28 08:04:09'),
(45, 1, 69, '2019-03-28 08:05:00', '2019-03-28 08:05:00'),
(46, 2, 69, '2019-03-28 08:07:04', '2019-03-28 08:07:04'),
(47, 1, 69, '2019-03-28 08:08:18', '2019-03-28 08:08:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_universitas`
--

CREATE TABLE `detail_universitas` (
  `id_detail_universitas` int(225) NOT NULL,
  `id_universitas` int(225) NOT NULL,
  `deskripsi_universitas` mediumtext CHARACTER SET utf8,
  `alamat_universitas` varchar(255) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `no_telp` varchar(15) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_universitas`
--

INSERT INTO `detail_universitas` (`id_detail_universitas`, `id_universitas`, `deskripsi_universitas`, `alamat_universitas`, `email`, `no_telp`, `create_dtm`, `update_dtm`) VALUES
(1, 1, 'Universitas Gadjah Mada resmi didirikan pada tanggal 19 Desember 1949 sebagai Universitas yang bersifat nasional. Universitas Gadjah Mada termasuk sebagai universitas yang tertua di Indonesia yang juga berperan sebagai pengemban Pancasila dan sebagai universitas pembina di Indonesia.\r\n\r\nKantor Pusat UGM berlokasi di Kampus Bulaksumur Daerah Istimewa Yogyakarta. Saat ini Universitas Gadjah Mada memiliki 18 Fakultas, 1 Sekolah Vokasi, dan 1 Sekolah Pascasarjana, dengan jumlah program studi mencapai 251 program studi. Seluruh kegiatan Universitas dituangkan dalam bentuk Tri Dharma Perguruan Tinggi yang terdiri atas kegiatan Pendidikan dan Pengajaran, Penelitian, serta Pengabdian kepada Masyarakat. Lebih dari 56.000 mahasiswa dari dalam dan luar negeri menjalankan studi di Universitas Gadjah Mada pada jenjang pendidikan Diploma, Sarjana, dan Pascasarjana (S2 dan S3).\r\n\r\nDi universitas ini, mahasiswa mendapatkan kesempatan yang luas untuk mengembangkan kreativitas dan inovasi di bidangnya masing-masing dengan kegiatan perkuliahan yang didukung dengan peralatan modern dan teknologi informasi. Sebagai universitas riset, Universitas Gadjah Mada memberikan perhatian yang sangat besar terhadap kegiatan-kegiatan penelitian yang diwujudkan dengan upaya mendorong dosen dan mahasiswa untuk melakukan dan mengembangkan berbagai penelitian serta dengan mendirikan 25 pusat studi terkait beragam bidang keilmuan.\r\n\r\nKomitmen kerakyatan pun diwujudkan dalam kegiatan pengabdian kepada masyarakat baik dengan penerjunan mahasiswa KKN ke seluruh penjuru Indonesia maupun melalui kegiatan-kegiatan pemberdayaan masyarakat. Dalam penyelenggaraan Tri Dharma Perguruan Tinggi, Universitas Gadjah Mada dimotori oleh 3.608 dosen dan 4.324 karyawan yang berkomitmen untuk menjadikan UGM sebagai universitas terbesar yang menjadi rujukan bangsa Indonesia.\r\n\r\nAgar seluruh kegiatan kampus berlangsung dengan baik dan membahagiakan, Universitas Gadjah Mada mengarahkan penataan dan pengembangan infrastruktur fisik di lingkungan kampus pada prinsip perwujudan kampus “educopolis”. Prinsip ini tertuang dalam Rencana Induk Pengembangan Kampus yang mengamanatkan sebuah lingkungan yang kondusif untuk proses pembelajaran dalam konteks pengembangan kolaborasi multidisiplin dan tanggap terhadap isu ekologis.', 'Bulaksumur Yogyakarta 55281', 'info@ugm.ac.id', '+62 (274) 64925', '2018-12-04 08:21:08', '2018-12-12 15:54:08'),
(2, 2, 'Institut Teknologi Bandung (ITB) adalah sebuah perguruan tinggi negeri yang berkedudukan di Kota Bandung. Nama ITB diresmikan pada tanggal 2 Maret 1959. Sejak tahun 2012, ITB kembali berstatus sebagai perguruan tinggi negeri (bahasa resmi: perguruan tinggi yang diselenggarakan oleh pemerintah), berubah dari status sebelumnya sebagai perguruan tinggi badan hukum milik negara (BHMN). Hingga tahun 2012 ITB telah memiliki empat program studi yang terakreditasi secara internasional dari salah satu lembaga akreditasi independen Amerika Serikat ABET, di mana ITB merupakan satu-satunya perguruan tinggi negeri di Indonesia yang memiliki akreditasi internasional tersebut.', 'Jl. Tamansari 64\r\nBandung 40116 \r\nJawa Barat\r\nIndonesia', 'ppid@itb.ac.id', '+62-22-2500935', '2018-12-18 10:18:11', '2018-12-18 11:06:58'),
(3, 3, 'Universitas', ' Jalan Ir. Sutami 36 Kentingan,\r\nJebres, Surakarta,\r\nJawa Tengah, Indonesia', 'campus@mail.uns.ac.id', '(+62)271-646994', '2019-01-31 22:57:49', '2019-03-28 06:47:32'),
(4, 4, 'Universitas Indonesia adalah kampus modern, komprehensif, terbuka, multi budaya, dan humanis yang mencakup disiplin ilmu yang luas. UI saat ini secara simultan selalu berusaha menjadi salah satu universitas riset atau institusi akademik terkemuka di dunia. Sebagai universitas riset, upaya-upaya pencapaian tertinggi dalam hal penemuan, pengembangan dan difusi pengetahuan secara regional dan global selalu dilakukan. Sementara itu, UI juga memperdalam komitmen dalam upayanya di bidang pengembangan akademik dan aktifitas penelitian melalui sejumlah disiplin ilmu yang ada dilingkupnya.\r\n\r\nCikal bakal UI bermula pada tahun 1849 dan UI merupakan representasi institusi pendidikan dengan sejarah paling tua di Asia. Telah menghasilkan lebih dari 400.000 alumni, UI secara kontinyu melanjutkan peran pentingnya di level nasional dan dunia. Bagaimanapun UI tidak bisa melepaskan diri dari misi terkininya menjadi institusi pendidikan berkualitas tinggi, riset standar dunia dan menjaga standar gengsi di sejumlah jurnal internasional.', 'Kampus Baru UI Depok\r\nJawa Barat – 16424\r\nIndonesia\r\n', 'humas-ui@ui.ac.id', '+62 21 786 7222', '2019-03-28 06:12:11', '2019-03-28 06:23:41'),
(5, 5, 'Tahun 2017, ITS menduduki peringkat terbaik ke-5 di Indonesia berdasarkan penilaian Kementerian Riset, Teknologi, dan Pendiddikan Tinggi (Kemristekdikti) dan menjadi 10 universitas unggulan di Indonesia versi QS World University Ranking. Selain dari aspek pendidikan dan manejemen, ITS memiliki komitmen yang kuat pada pengelolaan lingkungan, salah satunya dengan Program Smart Eco-Campus.', 'Jl. Raya ITS, \r\nKeputih, Sukolilo,\r\n Kota Surabaya, Jawa Timur 60111', 'humas@its.ac.id', '031-5994251-54', '2019-03-28 07:30:46', '2019-03-28 07:30:46'),
(6, 6, 'Universitas ini didirikan pada 8 September 1636 dan merupakan perguruan tinggi tertua di Amerika Serikat. Awalnya bernama New College, dan dinamakan ulang menjadi Harvard College pada 13 Maret 1639 untuk menghormati penyumbang terbesarnya, John Harvard, seorang mantan mahasiswa Universitas Cambridge.\r\nUniversitas Harvard didedikasikan untuk keunggulan dalam pengajaran, pembelajaran dan penelitian, dan untuk mengembangkan para pemimpin di banyak disiplin ilmu yang membuat perbedaan secara global. \r\nUniversitas ini memiliki pendaftaran lebih dari 20.000 kandidat tingkat, termasuk mahasiswa sarjana, pascasarjana, dan profesional. Harvard memiliki lebih dari 360.000 alumni di seluruh dunia.', 'Massachusetts Hall\r\nCambridge, MA 02138', 'fascom@fas.harvard.edu', '(617) 495-1000', '2019-03-29 13:33:26', '2019-03-30 03:38:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(225) NOT NULL,
  `nama_fakultas` varchar(225) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama_fakultas`, `create_dtm`, `update_dtm`) VALUES
(1, 'Fakultas Biologi', '2018-12-04 08:25:55', '2019-02-01 08:08:04'),
(2, 'Fakultas Ekonomi dan Bisnis', '2018-12-04 08:26:47', '2018-12-04 08:39:35'),
(3, 'Fakultas Farmasi', '2018-12-04 08:27:05', '2018-12-04 08:27:05'),
(4, 'Fakultas Filsafat', '2018-12-04 08:27:19', '2018-12-04 08:27:19'),
(5, 'Fakultas Geografi', '2018-12-04 08:27:36', '2018-12-04 08:27:36'),
(6, 'Fakultas Hukum', '2018-12-04 08:27:50', '2018-12-04 08:27:50'),
(8, 'Fakultas Ilmu Sosial dan Ilmu Politik', '2018-12-04 08:28:19', '2018-12-04 08:28:19'),
(9, 'Fakultas Kedokteran Gigi', '2018-12-04 08:28:41', '2018-12-04 08:28:41'),
(10, 'Fakultas Kedokteran Hewan', '2018-12-04 08:28:53', '2018-12-04 08:28:53'),
(11, 'Fakultas Kedokteran, Kesehatan Masyarakat dan Keperawatan', '2018-12-04 08:29:21', '2018-12-04 08:29:21'),
(12, 'Fakultas Kehutanan', '2018-12-04 08:29:37', '2018-12-04 08:29:37'),
(13, 'Fakultas Matematika dan Ilmu Pengetahuan Alam', '2018-12-04 08:30:01', '2018-12-04 08:30:01'),
(14, 'Fakultas Pertanian', '2018-12-04 08:30:17', '2018-12-04 08:30:17'),
(15, 'Fakultas Peternakan', '2018-12-04 08:30:36', '2018-12-04 08:30:36'),
(16, 'Fakultas Psikologi', '2018-12-04 08:30:54', '2018-12-04 08:30:54'),
(17, 'Fakultas Teknik', '2018-12-04 08:31:09', '2018-12-04 08:31:09'),
(18, 'Fakultas Teknologi Pertanian', '2018-12-04 08:31:25', '2018-12-04 08:31:25'),
(19, 'Sekolah Pasca Sarjana', '2018-12-04 08:31:45', '2018-12-04 08:31:45'),
(20, 'Sekolah Vokasi', '2018-12-04 08:32:01', '2018-12-04 08:32:01'),
(21, 'Fakultas Ilmu dan Teknologi Kebumian', '2018-12-19 08:24:40', '2018-12-19 08:24:40'),
(22, 'Fakultas Matematika dan Ilmu Pengetahuan Alam', '2018-12-19 08:25:17', '2018-12-19 08:25:17'),
(23, 'Fakultas Seni Rupa dan Desain', '2018-12-19 08:25:40', '2018-12-19 08:25:40'),
(24, 'Fakultas Teknologi Industri', '2018-12-19 08:26:08', '2018-12-19 08:26:08'),
(25, 'Fakultas Teknik Mesin dan Dirgantara', '2018-12-19 08:31:02', '2018-12-19 08:31:02'),
(26, 'Fakultas Teknik Pertambangan dan Perminyakan', '2018-12-19 08:31:19', '2018-12-19 08:31:19'),
(27, 'Fakultas Teknik Sipil dan Lingkungan', '2018-12-19 08:31:48', '2018-12-19 08:31:48'),
(29, 'Sekolah Arsitektur, Perencanaan dan Pengembangan Kebijakan', '2018-12-19 08:32:16', '2018-12-19 08:32:16'),
(30, 'Sekolah Bisnis dan Manajemen ', '2018-12-19 08:33:16', '2018-12-19 08:33:16'),
(31, 'Sekolah Farmasi', '2018-12-19 08:33:36', '2018-12-19 08:33:36'),
(32, 'Sekolah Ilmu dan Teknologi Hayati', '2018-12-19 08:33:51', '2018-12-19 08:33:51'),
(33, 'Sekolah Teknik Elektro dan Informatika', '2018-12-19 08:34:07', '2018-12-19 08:34:07'),
(35, 'Fakultas Ilmu Budaya', '2018-12-20 18:41:29', '2018-12-20 18:41:29'),
(42, 'Fakultas Matematika dan Ilmu Pengetahuan Alam', '2019-02-01 06:35:22', '2019-02-01 06:35:22'),
(43, 'Fakultas Biologi', '2019-03-23 23:14:13', '2019-03-23 23:14:13'),
(44, 'Business School', '2019-03-30 02:40:14', '2019-03-30 02:43:54'),
(45, 'College', '2019-03-30 02:45:21', '2019-03-30 02:45:21'),
(46, 'Division of Continuing Education', '2019-03-30 02:46:24', '2019-03-30 02:46:24'),
(47, 'School of Dental Medicine', '2019-03-30 02:47:07', '2019-03-30 02:47:07'),
(48, 'Divinity School', '2019-03-30 02:47:28', '2019-03-30 02:47:28'),
(49, 'Faculty of Arts snd Sciences', '2019-03-30 02:48:04', '2019-03-30 02:48:04'),
(50, 'Graduate School of Design', '2019-03-30 02:48:25', '2019-03-30 02:48:25'),
(51, 'Graduate School of Education', '2019-03-30 02:49:02', '2019-03-30 02:49:02'),
(52, 'School of Engineering and Applied Sciences', '2019-03-30 02:51:01', '2019-03-30 02:51:01'),
(53, 'Kennedy School', '2019-03-30 02:51:20', '2019-03-30 02:51:20'),
(54, 'Law School', '2019-03-30 02:51:32', '2019-03-30 02:51:32'),
(55, 'Medical School', '2019-03-30 02:51:47', '2019-03-30 02:51:47'),
(56, 'Instituted for Advanced Study', '2019-03-30 02:52:34', '2019-03-30 02:52:34'),
(57, 'School of Public Health', '2019-03-30 02:53:13', '2019-03-30 02:53:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fak_univ`
--

CREATE TABLE `fak_univ` (
  `id_fak_univ` int(225) NOT NULL,
  `id_fakultas` int(225) DEFAULT NULL,
  `id_universitas` int(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fak_univ`
--

INSERT INTO `fak_univ` (`id_fak_univ`, `id_fakultas`, `id_universitas`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-12-04 08:25:55', '0000-00-00 00:00:00'),
(2, 2, 1, '2018-12-04 08:26:47', '0000-00-00 00:00:00'),
(3, 3, 1, '2018-12-04 08:27:05', '0000-00-00 00:00:00'),
(4, 4, 1, '2018-12-04 08:27:19', '0000-00-00 00:00:00'),
(5, 5, 1, '2018-12-04 08:27:36', '0000-00-00 00:00:00'),
(6, 6, 1, '2018-12-04 08:27:50', '0000-00-00 00:00:00'),
(8, 8, 1, '2018-12-04 08:28:19', '0000-00-00 00:00:00'),
(9, 9, 1, '2018-12-04 08:28:41', '0000-00-00 00:00:00'),
(10, 10, 1, '2018-12-04 08:28:54', '0000-00-00 00:00:00'),
(11, 11, 1, '2018-12-04 08:29:21', '0000-00-00 00:00:00'),
(12, 12, 1, '2018-12-04 08:29:37', '0000-00-00 00:00:00'),
(13, 13, 1, '2018-12-04 08:30:02', '0000-00-00 00:00:00'),
(14, 14, 1, '2018-12-04 08:30:17', '0000-00-00 00:00:00'),
(15, 15, 1, '2018-12-04 08:30:37', '0000-00-00 00:00:00'),
(16, 16, 1, '2018-12-04 08:30:55', '0000-00-00 00:00:00'),
(17, 17, 1, '2018-12-04 08:31:09', '0000-00-00 00:00:00'),
(18, 18, 1, '2018-12-04 08:31:25', '0000-00-00 00:00:00'),
(19, 19, 1, '2018-12-04 08:31:45', '0000-00-00 00:00:00'),
(20, 20, 1, '2018-12-04 08:32:02', '0000-00-00 00:00:00'),
(22, NULL, 2, '2018-12-18 10:18:12', '0000-00-00 00:00:00'),
(23, 21, 2, '2018-12-19 08:24:41', '0000-00-00 00:00:00'),
(24, 22, 2, '2018-12-19 08:25:17', '0000-00-00 00:00:00'),
(25, 23, 2, '2018-12-19 08:25:41', '0000-00-00 00:00:00'),
(26, 24, 2, '2018-12-19 08:26:08', '0000-00-00 00:00:00'),
(27, 25, 2, '2018-12-19 08:31:03', '0000-00-00 00:00:00'),
(28, 26, 2, '2018-12-19 08:31:19', '0000-00-00 00:00:00'),
(29, 27, 2, '2018-12-19 08:31:50', '0000-00-00 00:00:00'),
(31, 29, 2, '2018-12-19 08:32:16', '0000-00-00 00:00:00'),
(32, 30, 2, '2018-12-19 08:33:16', '0000-00-00 00:00:00'),
(33, 31, 2, '2018-12-19 08:33:37', '0000-00-00 00:00:00'),
(34, 32, 2, '2018-12-19 08:33:51', '0000-00-00 00:00:00'),
(35, 33, 2, '2018-12-19 08:34:07', '0000-00-00 00:00:00'),
(36, NULL, 3, '2019-01-31 22:57:49', '0000-00-00 00:00:00'),
(49, 42, 3, '2019-02-01 06:35:22', '0000-00-00 00:00:00'),
(50, 43, 2, '2019-03-23 23:14:13', '0000-00-00 00:00:00'),
(51, NULL, 4, '2019-03-28 06:12:11', '0000-00-00 00:00:00'),
(52, NULL, 5, '2019-03-28 07:30:46', '0000-00-00 00:00:00'),
(53, NULL, 6, '2019-03-29 13:33:26', '0000-00-00 00:00:00'),
(54, 44, 6, '2019-03-30 02:40:14', '0000-00-00 00:00:00'),
(55, 45, 6, '2019-03-30 02:45:21', '0000-00-00 00:00:00'),
(56, 46, 6, '2019-03-30 02:46:25', '0000-00-00 00:00:00'),
(57, 47, 6, '2019-03-30 02:47:07', '0000-00-00 00:00:00'),
(58, 48, 6, '2019-03-30 02:47:29', '0000-00-00 00:00:00'),
(59, 49, 6, '2019-03-30 02:48:04', '0000-00-00 00:00:00'),
(60, 50, 6, '2019-03-30 02:48:26', '0000-00-00 00:00:00'),
(61, 51, 6, '2019-03-30 02:49:02', '0000-00-00 00:00:00'),
(62, 52, 6, '2019-03-30 02:51:01', '0000-00-00 00:00:00'),
(63, 53, 6, '2019-03-30 02:51:20', '0000-00-00 00:00:00'),
(64, 54, 6, '2019-03-30 02:51:32', '0000-00-00 00:00:00'),
(65, 55, 6, '2019-03-30 02:51:47', '0000-00-00 00:00:00'),
(66, 56, 6, '2019-03-30 02:52:34', '0000-00-00 00:00:00'),
(67, 57, 6, '2019-03-30 02:53:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(225) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `program_studi` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `deskripsi` mediumtext NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `id_pencari` int(225) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsultasi`, `no_hp`, `program_studi`, `kategori`, `deskripsi`, `status`, `id_pencari`, `create_dtm`, `update_dtm`) VALUES
(9, ' 0389632787', ' Ilmu Politik', 'Dalam Negeri', 'nyari beasiswa', 'Sudah Dibalas', 118, '2018-12-06 11:20:58', '2018-12-15 09:59:11'),
(10, ' 0895325008487', ' Komputer', 'Luar Negeri', 'ABC', 'belum dibalas', 118, '2018-12-06 13:10:09', '2019-01-04 16:21:11'),
(11, '0895325008487', ' Program Komputer', 'Dalam Negeri', 'Tanya', 'belum dibalas', 118, '2018-12-06 13:12:23', '2019-01-04 16:21:26'),
(12, '084563478563', ' Komputer', 'Dalam Negeri', 'Tanya', 'belum dibalas', 118, '2018-12-06 13:13:29', '2019-01-04 16:21:38'),
(13, ' 085233716754', ' Desain Elementer', 'Dalam Negeri', 'Mau nanya tentang universitas yang menyediakan tentang jurusan desain', 'belum dibalas', 122, '2018-12-16 12:02:28', '2019-01-04 16:21:51'),
(14, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-07 02:28:48', '0000-00-00 00:00:00'),
(15, ' 0895325008487', ' Bahasa Jepang', 'Dalam Negeri', 'Saya tertarik dengan bahasa jepang sejak SMA, saya ingin mengambil jurusan bahasa jepang di universitas yang tepat, tolong beri saya saran/masukan universitas mana yang terbaik untuk jurusan bahasa jepang, terima kasih', 'Sudah Dibalas', 118, '2019-01-12 19:41:34', '2019-01-31 22:09:23'),
(16, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-14 22:15:03', '0000-00-00 00:00:00'),
(17, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-14 22:16:12', '0000-00-00 00:00:00'),
(18, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-14 22:16:29', '0000-00-00 00:00:00'),
(19, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-31 18:03:24', '0000-00-00 00:00:00'),
(20, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-31 18:05:30', '0000-00-00 00:00:00'),
(21, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-31 18:05:49', '0000-00-00 00:00:00'),
(22, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-31 18:06:18', '0000-00-00 00:00:00'),
(23, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-31 18:07:22', '0000-00-00 00:00:00'),
(24, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-31 18:07:59', '0000-00-00 00:00:00'),
(25, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-31 18:09:20', '0000-00-00 00:00:00'),
(26, ' ', ' ', 'Dalam Negeri', '', 'belum dibalas', 118, '2019-01-31 18:13:48', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konten_beasiswa`
--

CREATE TABLE `konten_beasiswa` (
  `id_konten_beasiswa_umum` varchar(225) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `link` mediumtext NOT NULL,
  `deskripsi` longtext NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `id_pencarian_beasiswa` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konten_beasiswa`
--

INSERT INTO `konten_beasiswa` (`id_konten_beasiswa_umum`, `judul`, `date`, `link`, `deskripsi`, `create_dtm`, `update_dtm`, `id_pencarian_beasiswa`) VALUES
('post-4824', 'Beasiswa S1 dan S2 di Korean National University of Arts, Korea', '2017-04-17', 'http://beasiswa.id/2017/beasiswa-s1-dan-s2-di-korean-national-university-of-arts-korea/', 'Ini salah satu peluang beasiswa kuliah di Korea yang tersedia bagi pelamar Indonesia. 2018 Art Major Asian (AMA) Scholarship. Ditujukan bagi Anda yang memiliki talenta seni dan berminat melanjutkan studi tahun akademik 2018 – 2019 jenjang S1 dan S2 di Korean National University of Arts (K’ARTS). K’ARTS merupakan universitas seni terkemuka di Korea. Beasiswa AMA merupakan beasiswa penuh yang menanggung biaya kuliah selama menjalani studi. Rincian beasiswa S1 dan S2 di K’ARTS Korea 2018 – 2019 di antaranya tiket pesawat PP ke Korea, uang saku 800 ribu Won per bulan, gratis pelatihan bahasa Korea, tanggungan penuh biaya kuliah semester, dan asuransi kesehatan. Program yang ditawarkan cukup banyak, di antaranya Vocal Music, Instrumental Music, Composition, Conduction,  Acting, Directing, Stage Design, Theatre Studies, Film Making, Broadcasting, Multimedia, Animation, Cinea Studies,  Dance Performance, Choreography,&hellip;', '2019-03-13 13:29:12', '0000-00-00 00:00:00', 0),
('post-4896', 'Beasiswa S1 dan S2 di SolBridge International School of Business, Korea Selatan', '2017-05-29', 'http://beasiswa.id/2017/beasiswa-s1-dan-s2-di-solbridge-international-school-of-business-korea-selatan/', 'Berminat melanjutkan kuliah di Korea Selatan? SolBridge International School of Business saat ini menawarkan bantuan dana perkuliahan di bidang Administrasi Bisnis bagi pelajar internasional untuk program Undergraduate (Sarjana) dan Graduate (Pascasarjana / Magister). Beasiswa diberikan berdasarkan penilaian kemampuan bahasa Inggris, nilai akademik, dan keaktifan ekstrakurikuler. Perlu diketahui, SolBridge International School of Business didirikan oleh Woosong University pada tahun 2007 di Daejeon, Korea Selatan. Untuk bidang studi yang diajarkan nantinya akan menggunakan bahasa Inggris, sehingga pelamar tidak disyaratkan mampu berbahasa Korea secara khusus. Bantuan dana yang diberikan nilainya bervariasi, mulai dari 30% hingga 70% dari uang kuliah keseluruhan. Namun tidak menutup kemungkinan, bantuan dana hingga 100% bebas biaya kuliah diberikan. Karena beasiswa hanya meliputi uang perkuliahan, maka biaya lain seperti tempat tinggal, makanan, asuransi, dan biaya hidup lainnya dapat mencari dari sumber pendanaan&hellip;', '2019-03-13 13:29:12', '0000-00-00 00:00:00', 0),
('post-5299', 'Beasiswa S1 dan S2 di Korea National University of Arts, Korea', '2018-04-16', 'http://beasiswa.id/2018/beasiswa-s1-dan-s2-di-korea-national-university-of-arts-korea/', 'Berminat melanjutkan kuliah dan mendapatkan beasiswa S1 dan S2 di Korea? 2019 Art Major Asian (AMA) Scholarship ditujukan bagi Anda yang memiliki talenta seni dan berminat melanjutkan studi S1 maupun S2 tahun akademik 2019 – 2020 di Korean National University of Arts (K’ARTS). K’ARTS merupakan universitas seni terkemuka di Korea. Beasiswa AMA merupakan beasiswa penuh yang menanggung biaya kuliah selama menjalani studi. Cakupan Beasiswa : 1. Tiket pesawat PP ke Korea 2. Uang saku 800 ribu Won/bln 3. Gratis 3 bulan pelatihan intensif bahasa Korea sebelum kuliah 4. Tanggungan penuh biaya kuliah semester 5. Asuransi kesehatan Program yang ditawarkan : - Vocal Music - Instrumental Music - Composition - Conduction - Acting - Directing - Stage Design - Theatre Studies - Film Making - Broadcasting - Multimedia&hellip;', '2019-03-13 13:29:12', '0000-00-00 00:00:00', 0),
('post-5664', 'Beasiswa Diploma dan S1 dari KGSP di Korea', '2018-09-12', 'http://beasiswa.id/2018/beasiswa-diploma-dan-s1-dari-kgsp-di-korea/', 'Hai Sobat Beasiswa,id Mungkin Anda salah satu yang menantikan Beasiswa Pemerintah Korea 2019 ini. Korean Government Scholarship Program (KGSP). Kali ini beasiswa KGSP ditujukan bagi lulusan SMA/sederajat yang ingin menempuh kuliah diploma atau sarjana di universitas-universitas Korea. Beasiswa disediakan full yang menanggung kebutuhan selama studi di Korea. Pendidikan berlangsung sekitar dua tahun untuk diploma (associate degree)  dan empat tahun untuk sarjana. Plus akan menjalani kursus bahasa Korea sekitar setahun sebelum perkuliahan. Sehingga durasi total sekitar 3 tahun untuk diploma dan 5 tahun untuk S1. Khusus bagi pelamar Indonesia, ada tiga jenis beasiswa KGSP 2019 yang bisa dilamar. Yakni beasiswa diploma (setara D2), beasiswa S1 khusus jurusan natural science dan engineering, dan beasiswa S1 via Kedubes Korea di Jakarta. Beasiswa diploma (associate degree) menyediakan kuota sebanyak 20 beasiswa dan terbuka bagi negara-negara anggota&hellip;', '2019-03-13 13:29:12', '0000-00-00 00:00:00', 0),
('post-6130', 'Beasiswa S1 oleh KAIST di Korea Selatan', '2018-12-31', 'http://beasiswa.id/2018/beasiswa-s1-oleh-kaist-di-korea-selatan/', 'Pilihan beasiswa ke Korea sebetulnya cukup banyak, mulai dari tawaran Beasiswa KGSP oleh Pemerintah Korea Selatan hingga tawaran langsung dari universitas-universitas ternama di Korea. Salah satu universitas ternama yang menyediakan beasiswa adalah Korea Advanced Institute of Science and Technology atau disingkat KAIST. Universitas ini termasuk dalam peringkat 100 terbaik universitas di dunia yang berorientasi pada bidang Sains, Teknik dan Teknologi. Salah satu beasiswa yang rutin disediakan oleh KAIST adalah KAIST International Student Scholarship. Beasiswa tersebut disediakan khusus bagi mahasiswa internasional, termasuk Indonesia. Beasiswa KAIST ditujukan bagi lulusan SMA/sederajat yang ingin melanjutkan S1 pada sejumlah program studi yang disediakan oleh KAIST seperti Fisika, Matematika, Kimia, Biologi, Teknik Mesin, Teknik Penerbangan, Teknik Listrik, Ilmu komputer, Teknik Sipil dan Lingkungan, Desain Industri, Teknik Industri, Teknik Kimia dan Biomolekular, Ilmu dan&hellip;', '2019-03-13 13:29:12', '0000-00-00 00:00:00', 0),
('post-6256', 'Beasiswa S2 Grand ICT Research Center di Korea Selatan', '2019-01-28', 'http://beasiswa.id/2019/beasiswa-s2-grand-ict-research-center-di-korea-selatan/', 'Grand ICT Research Center di Pusan National University (PNU), Korea Selatan saat ini menawarkan kesempatan bagi lulusan S1 untuk bergabung dalam Graduate Program (Integrated Master-PhD) di School of Computer Science and Engineering di PNU. Para peserta terpilih akan bergabung dengan laboratorium penelitian kolaboratif di Grand ICT Research Center. Penelitian akan dibimbing oleh 4 profesor: Sang Hwa Chung, Kwang Ryel Ryu, Jongdeok Kim, dan Giltae Song. Berikut informasi selengkapnya mengenai Beasiswa Integrated Master-PhD. Grand ICT Research Center, Computer Science &amp; Engineering, di Pusan National University (PNU) mendalami bidang area Internet of Things, kecerdasan buatan, dan mengembangkan teknologi IT untuk smart factory dan berinovasi serta menerapkan teknologi baru ke industri manufaktur. Kuota Beasiswa : 2-4 posisi Durasi Beasiswa : 3-5 tahun Perkuliahan akan dimulai pada bulan September 2019. Area&hellip;', '2019-03-24 07:30:08', '0000-00-00 00:00:00', 0),
('post-6319', 'Beasiswa S2 dan S3 dari KGSP di Korea', '2019-02-10', 'http://beasiswa.id/2019/beasiswa-s2-dan-s3-dari-kgsp-di-korea/', 'Hai Sobat&nbsp;Beasiswa.ID Bagi kamu yang berniat melanjutkan studi di Korea Selatan, Korean Govenment Scholarship Program (KGSP) kembali dibuka bagi para pelamar internasional, termasuk Indonesia. KGSP (Korean Government Scholarship Program) adalah&nbsp;beasiswa&nbsp;yang diberikan oleh pemerintah&nbsp;Korea&nbsp;bagi mahasiswa internasional. Beasiswa ini sangat menarik karena menanggung seluruh biaya, termasuk biaya kuliah dan biaya hidup. Beasiswa ini memiliki kuota total 830 kursi untuk 146 negara. Indonesia kebagian sekitar 26 kursi beasiswa pada 2019 - 2020. Sebanyak dua belas (12) beasiswa di antaranya bisa dilamar langsung melalui Kedubes Korea di Jakarta, sementara empat belas (14) beasiswa Korea sisanya dapat dilamar melalui universitas di Korea. Pendidikan berlangsung sekitar dua tahun untuk program master dan tiga tahun untuk doktor. Plus akan menjalani kursus bahasa Korea sekitar setahun. Sehingga durasi total sekitar 3 tahun untuk master dan 4 tahun untuk&nbsp;Doktor.&hellip;', '2019-03-24 07:30:08', '0000-00-00 00:00:00', 0),
('post-6372', 'Beasiswa S1 dari Program Beasiswa Utusan Daerah', '2019-02-18', 'http://beasiswa.id/2019/beasiswa-s1-dari-program-beasiswa-utusan-daerah/', 'Satu lagi beasiswa S1 untuk lulusan SMK/SMA/sederajat. Program Beasiswa Utusan Daerah (BUD) merupakan cara penerimaan mahasiswa program Sarjana dan Pascasarjana IPB yang direkomendasikan dan dibiayai oleh pemerintah pusat, pemerintah daerah, perusahaan atau lembaga swasta, yang apabila lulus diharapkan kembali ke daerah untuk membangun daerah. Berikut informasi selengkapnya mengenai Beasiswa IPB Program BUD. Latar belakang diselenggarakan Beasiswa IPB Program BUD: Pengalaman berbagai negara dan daerah maju membuktikan, SDM dan IPTEKS berkualitas penting bagi percepatan dan penguatan pembangunan, termasuk pembangunan pangan serta pertanian dalam arti luas guna peningkatan ekonomi daerah dan kesejahteraan masyarakat.Peningkatan kualitas SDM dan IPTEKS merupakan tanggung jawab bersama, terutama oleh pendidikan tinggi, pemerintah pusat, pemerintah daerah, swasta, dan masyarakat.Dalam rangka meningkatkan jumlah serta pemerataan SDM dan IPTEKS berkualitas bagi pembangunan, IPB dengan motto “Mencari dan Memberi&hellip;', '2019-03-13 13:28:57', '0000-00-00 00:00:00', 0),
('post-6381', 'Beasiswa S1 dari Tokopedia', '2019-02-20', 'http://beasiswa.id/2019/beasiswa-s1-dari-tokopedia/', 'Bagi kamu mahasiswa semester 5 yang sedang mencari beasiswa, berikut ini ada info beasiswa 2019 yang bisa kamu coba. Beasiswa Tokopedia 2019 kembali hadir untuk mahasiswa Indonesia khususnya yang berasal dari jurusan Ilmu Komputer, Sistem Informasi, Matematika, Statistika, Teknik Industri, dan Teknik Komputer, yang berprestasi di bidang akademik maupun non-akademik. Berikut informasi selengkapnya. Baca Juga : Beasiswa S1 dari Program Beasiswa Utusan Daerah Tokopedia merupakan perusahaan teknologi Indonesia dengan misi pemerataan ekonomi secara digital. Berikut Perguruan Tinggi yang bekerjasama dengan Beasiswa Tokopedia: Universitas ParahyanganUniversitas Multimedia NusantaraTelkom UniversitySTMIK AKAKOMUniversitas Islam Indonesia CAKUPAN BEASISWA : Biaya perkuliahan selama 2 semesterUang buku selama 2 semester senilai Rp 1.000.000,- per semester.Biaya penunjang pendidikan (uang saku) selama 1 tahun senilai Rp 3.000.000,- per bulan. Biaya wisuda. PERSYARATAN : Merupakan mahasiswa semester 5&hellip;', '2019-03-13 13:28:57', '0000-00-00 00:00:00', 0),
('post-6386', 'Beasiswa S1 dari PPM School of Management', '2019-02-21', 'http://beasiswa.id/2019/beasiswa-s1-dari-ppm-school-of-management/', 'Sebagai institusi manajemen pertama di Indonesia sejak 1967 silam, PPM Manajemen senantiasa berkomitmen untuk terus menyebarkan ilmu dan praktik manajemen yang beretika, luhur, dan santun kepada seluruh masyarakat Indonesia. Melalui program Beasiswa S1 Akuntansi Tahun 2019, PPM Manajemen ingin meneguhkan komitmen itu dan senantiasa bangga untuk ikut mencerdaskan anak bangsa. Baca Juga : Beasiswa S1 dari Tokopedia PPM School of Management memiliki dedikasi tinggi dalam pengembangan ilmu manajemen selama lebih dari 40 tahun. Program Beasiswa S1 Akuntansi Bisnis ini memberikan kesempatan bagi pemuda-pemudi dari berbagai penjuru di Indonesia untuk bergabung ke dalam keluarga besar PPM School of Management dan  merasakan pengalaman sebagai mahasiswa PPM School of Management. KEUNGGULAN PROGRAM : Kurikulum berbasis IFRS (International Financial Reporting Standard) yang memudahkan lulusannya berkarir di berbagai negara. Sertifikasi Accurate Profesional&hellip;', '2019-03-13 13:28:56', '0000-00-00 00:00:00', 0),
('post-6408', 'Beasiswa S1 di Universitas Islam Indonesia, Yogyakarta', '2019-02-26', 'http://beasiswa.id/2019/beasiswa-s1-di-universitas-islam-indonesia-yogyakarta/', 'Salah satu beasiswa S1 yang dapat anda coba adalah tawaran Beasiswa dari Universitas Islam Indonesia (UII). Perguruan tinggi yang berlokasi di Yogyakarta, ini didirikan oleh tokoh-tokoh nasional seperti Dr. Mohammad Hatta, KH. Abdulkahar Mudzakkir, Moh. Roem, KH. A. Wahid Hasyim, KH. Mas Mansyur dan M. Natsir, dan tokoh-tokoh lainnya. Hingga kini UII telah mendapatkan berbagai penghargaan, antara lain pencapaian akreditasi institusi \"A\" dengan skor teratas antara PTS se-Indonesia, peringkat 10 besar dalam Perguruan Tinggi Terbaik di Indonesia tahun 2015, Indonesia Green Awards kategori Green Campus, dan sebagainya. Berikut informasi selengkapnya mengenai Beasiswa S1 Yogyakarta oleh UII. Baca Juga : Beasiswa S1 dari Indonesian Leadership Foundation Program Studi yang tersedia di UII adalah sebagai berikut:1. Program Diploma 3: Akuntansi, Kimia Analis, Manajemen, Perbankan &amp; Keuangan2. Program S1: Akuntansi,&hellip;', '2019-03-13 13:28:56', '0000-00-00 00:00:00', 0),
('post-6432', 'Beasiswa S1 di Institut Teknologi Harapan Bangsa, Bandung', '2019-03-05', 'http://beasiswa.id/2019/beasiswa-s1-di-institut-teknologi-harapan-bangsa-bandung/', 'Salah satu Beasiswa S1 Bandung yang dapat anda coba adalah beasiswa yang ditawarkan oleh Institut Teknologi Harapan Bangsa (ITHB). ITHB merupakan salah satu perguruan tinggi swasta yang terletak di Bandung dan didirikan oleh Yayasan Petra Harapan Bangsa. Kampus ITHB mengusung visi menjadi perguruan tinggi yang dikenal dalam skala regional sebagai lembaga yang mendidik pemimpin masa depan yang memiliki potensi berstandar global, karakter unggul, dan komitmen pada panggilan untuk membawa perubahan positif di tengah masyarakat. Berbagai jenis beasiswa ditawarkan oleh ITHB, ada yang berdasarkan prestasi akademik, olahraga dan sebagainya. Berikut informasi selengkapnya. Berbagai keuntungan yang bisa didapatkan apabila melanjutkan studi di ITHB, antara lain: Program-program yang menawarkan prospek karir global yang luas di dunia Teknologi Informasi dan Komunikasi. Sertifikasi Profesional IT internasional sebagai gerbang peluang karir global. Sistem&hellip;', '2019-03-13 13:28:56', '0000-00-00 00:00:00', 0),
('post-6453', 'Beasiswa S1 dari Universitas Pertamina', '2019-03-09', 'http://beasiswa.id/2019/beasiswa-s1-dari-universitas-pertamina/', 'Bagi kamu lulusan SMA/SMK/Sederajat tahun 2019, 2018, dan 2017, ada tawaran beasiswa kuliah S1 dari Universitas Pertamina. Universitas Pertamina didirikan di Jakarta dan dikelola oleh Yayasan Pertamina Foundation. Beasiswa Universitas Pertamina ini ditawarkan dalam dua program yaitu, Beasiswa Ekonomi Universitas Pertamina dan Beasiswa Prestasi Universitas Pertamina. Berikut informasi lengkapnya. Baca Juga : Beasiswa Alih Jenjang D3 ke S1 di University of Westminster, Inggris Universitas Pertamina menawarkan 6 fakultas dan 15 program studi S1, yaitu: Fakultas Teknologi Eksplorasi dan Produksi, dengan program studi : Teknik Geologi, Teknik Geofisika, dan Teknik Perminyakan Fakultas Teknologi Industri, dengan program studi : Teknik Elektro, Teknik Mesin, Teknik Kimia, dan Teknik Logistik Fakultas Ekonomi dan Bisnis, dengan program studi : Manajemen dan Ilmu Ekonomi Fakultas Perencanaan Infrastruktur, dengan program studi : Teknik Sipil&hellip;', '2019-03-13 13:28:56', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pencari`
--

CREATE TABLE `pencari` (
  `id_pencari` int(225) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tingkatan` varchar(10) NOT NULL,
  `status` enum('aktif','belum aktif','','') NOT NULL,
  `isDelete` varchar(1) NOT NULL DEFAULT '0',
  `profil_pic` varchar(100) DEFAULT NULL,
  `create_dtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pencari`
--

INSERT INTO `pencari` (`id_pencari`, `nama`, `username`, `password`, `email`, `tingkatan`, `status`, `isDelete`, `profil_pic`, `create_dtm`, `update_dtm`) VALUES
(118, 'Annisa dwi', 'nisa', '1f191d8125e30434f6dec60608dc6c03', 'Annisaduwie@gmail.com', 'Pelajar', 'aktif', '0', 'C360_2014-06-25-12-31-14-311.jpg', '2018-09-24 01:42:32', '2019-03-12 17:23:13'),
(122, 'Hida Nur Fatimah', 'hida', 'cfd6572c9a7c12d8331916b5f3570f84', 'hida@yopmail.com', 'Pelajar', 'aktif', '0', NULL, '2018-10-26 12:12:09', '2019-01-29 06:18:07'),
(128, 'dwi', 'dwinovynt', 'a9e7bca6a7fdf4fe9d52397fef4749db', 'dwinovynt19@gmail.com', 'Mahasiswa', 'aktif', '0', NULL, '2019-01-29 16:03:14', '2019-03-12 14:58:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pencarian`
--

CREATE TABLE `pencarian` (
  `id_pencarian` int(225) NOT NULL,
  `keyword_prodi` varchar(50) NOT NULL,
  `keyword_kategori` varchar(20) NOT NULL,
  `keyword_tingkatan` varchar(50) NOT NULL,
  `keyword_universitas` varchar(20) NOT NULL,
  `waktu_pencarian` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_pencari` int(225) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pencarian`
--

INSERT INTO `pencarian` (`id_pencarian`, `keyword_prodi`, `keyword_kategori`, `keyword_tingkatan`, `keyword_universitas`, `waktu_pencarian`, `id_pencari`, `create_dtm`, `update_dtm`, `status`) VALUES
(32, 'Biologi', 'Dalam Negeri', 'Sarjana', '', '2018-11-14 00:30:27', 122, '2018-11-14 00:30:27', '2018-11-14 00:30:27', ''),
(46, 'Biologi', 'Dalam Negeri', 'Sarjana', '', '2019-01-06 20:58:39', 118, '2019-01-06 20:58:39', '0000-00-00 00:00:00', ''),
(47, 'Biologi', 'Dalam Negeri', 'Sarjana', '', '2019-01-06 21:17:59', 118, '2019-01-06 21:17:59', '0000-00-00 00:00:00', ''),
(48, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-01-12 19:28:28', 118, '2019-01-12 19:28:28', '0000-00-00 00:00:00', ''),
(49, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-01-12 19:28:32', 118, '2019-01-12 19:28:32', '0000-00-00 00:00:00', ''),
(50, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-01-14 18:18:32', 118, '2019-01-14 18:18:32', '0000-00-00 00:00:00', ''),
(51, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-01-14 23:13:11', 118, '2019-01-14 23:13:11', '0000-00-00 00:00:00', ''),
(52, 'Akuntansi', 'Dalam Negeri', 'Diploma', '', '2019-01-29 14:32:17', 118, '2019-01-29 14:32:17', '0000-00-00 00:00:00', ''),
(53, 'Arsitektur', 'Dalam Negeri', 'Magister', '', '2019-01-30 14:50:36', 118, '2019-01-30 14:50:36', '0000-00-00 00:00:00', ''),
(54, 'Arsitektur', 'Dalam Negeri', 'Magister', '', '2019-01-30 15:00:54', 118, '2019-01-30 15:00:54', '0000-00-00 00:00:00', ''),
(55, 'Desain', 'Dalam Negeri', 'Magister', '', '2019-01-30 16:03:55', 118, '2019-01-30 16:03:55', '0000-00-00 00:00:00', ''),
(56, 'Desain', 'Dalam Negeri', 'Magister', '', '2019-01-30 16:15:50', 118, '2019-01-30 16:15:50', '0000-00-00 00:00:00', ''),
(57, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-01-30 16:25:45', 118, '2019-01-30 16:25:45', '0000-00-00 00:00:00', ''),
(58, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-01-31 11:04:25', 118, '2019-01-31 11:04:25', '0000-00-00 00:00:00', ''),
(59, 'Bahasa Inggris', 'Dalam Negeri', 'Diploma', '', '2019-03-12 16:13:39', 118, '2019-03-12 16:13:39', '0000-00-00 00:00:00', ''),
(60, 'Bahasa Inggris', 'Dalam Negeri', 'Diploma', '', '2019-03-12 16:13:48', 118, '2019-03-12 16:13:48', '0000-00-00 00:00:00', ''),
(61, 'Biologi', 'Dalam Negeri', 'Sarjana', '', '2019-03-12 16:14:50', 118, '2019-03-12 16:14:50', '0000-00-00 00:00:00', ''),
(62, 'Bioteknologi', 'Dalam Negeri', 'Magister', '', '2019-03-12 22:05:14', 128, '2019-03-12 22:05:14', '0000-00-00 00:00:00', ''),
(63, 'Farmasi', 'Dalam Negeri', 'Magister', '', '2019-03-12 22:05:56', 128, '2019-03-12 22:05:56', '0000-00-00 00:00:00', ''),
(64, 'Arsitektur', 'Dalam Negeri', 'Magister', '', '2019-03-13 12:32:36', 128, '2019-03-13 12:32:36', '0000-00-00 00:00:00', ''),
(65, 'Arsitektur', 'Dalam Negeri', 'Magister', '', '2019-03-13 12:32:41', 128, '2019-03-13 12:32:41', '0000-00-00 00:00:00', ''),
(66, 'Administrasi Bisnis', 'Dalam Negeri', 'Magister', '', '2019-03-24 08:42:42', 128, '2019-03-24 08:42:42', '0000-00-00 00:00:00', ''),
(67, 'Astronomi', 'Dalam Negeri', 'Magister', '', '2019-03-24 08:44:55', 128, '2019-03-24 08:44:55', '2019-03-24 08:45:17', 'Sudah Dihapus'),
(68, 'Aeronotika dan Astronotika', 'Dalam Negeri', 'Sarjana', '', '2019-03-24 22:55:54', 118, '2019-03-24 22:55:54', '0000-00-00 00:00:00', 'Belum Dihapus'),
(69, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-28 08:04:06', 118, '2019-03-28 08:04:06', '0000-00-00 00:00:00', 'Belum Dihapus'),
(70, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:18:49', 118, '2019-03-29 02:18:49', '0000-00-00 00:00:00', 'Belum Dihapus'),
(71, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:18:59', 118, '2019-03-29 02:18:59', '0000-00-00 00:00:00', 'Belum Dihapus'),
(72, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:19:03', 118, '2019-03-29 02:19:03', '0000-00-00 00:00:00', 'Belum Dihapus'),
(73, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:19:06', 118, '2019-03-29 02:19:06', '0000-00-00 00:00:00', 'Belum Dihapus'),
(74, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:19:24', 118, '2019-03-29 02:19:24', '0000-00-00 00:00:00', 'Belum Dihapus'),
(75, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:22:49', 118, '2019-03-29 02:22:49', '0000-00-00 00:00:00', 'Belum Dihapus'),
(76, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:22:56', 118, '2019-03-29 02:22:56', '0000-00-00 00:00:00', 'Belum Dihapus'),
(77, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:22:58', 118, '2019-03-29 02:22:58', '0000-00-00 00:00:00', 'Belum Dihapus'),
(78, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:23:07', 118, '2019-03-29 02:23:07', '0000-00-00 00:00:00', 'Belum Dihapus'),
(79, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:23:13', 118, '2019-03-29 02:23:13', '0000-00-00 00:00:00', 'Belum Dihapus'),
(80, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:23:56', 118, '2019-03-29 02:23:56', '0000-00-00 00:00:00', 'Belum Dihapus'),
(81, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:29:07', 118, '2019-03-29 02:29:07', '0000-00-00 00:00:00', 'Belum Dihapus'),
(82, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:29:17', 118, '2019-03-29 02:29:17', '0000-00-00 00:00:00', 'Belum Dihapus'),
(83, 'Business Economics', 'Luar Negeri', 'Doktor', '', '2019-03-30 02:58:10', 128, '2019-03-30 02:58:10', '0000-00-00 00:00:00', 'Belum Dihapus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pencarian_beasiswa`
--

CREATE TABLE `pencarian_beasiswa` (
  `id_pencarian_beasiswa` int(225) NOT NULL,
  `keyword_jenjang` varchar(20) NOT NULL,
  `keyword_negara` varchar(50) DEFAULT NULL,
  `waktu_pencarian` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `id_pencari` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pencarian_beasiswa`
--

INSERT INTO `pencarian_beasiswa` (`id_pencarian_beasiswa`, `keyword_jenjang`, `keyword_negara`, `waktu_pencarian`, `create_dtm`, `update_dtm`, `id_pencari`, `status`) VALUES
(2, 'S1', 'Indonesia', '2018-12-15 18:06:15', '2018-12-15 09:15:06', '0000-00-00 00:00:00', 118, ''),
(3, 'S1', 'Indonesia', '2018-12-15 18:18:20', '2018-12-15 09:20:18', '0000-00-00 00:00:00', 118, ''),
(4, 'S1', 'Indonesia', '2018-12-15 18:01:21', '2018-12-15 09:21:01', '0000-00-00 00:00:00', 118, ''),
(5, 'S1', 'Indonesia', '2018-12-15 18:39:21', '2018-12-15 09:21:39', '0000-00-00 00:00:00', 118, ''),
(6, 'S1', 'Indonesia', '2018-12-15 18:29:22', '2018-12-15 09:22:29', '0000-00-00 00:00:00', 118, ''),
(7, 'S1', 'Singapura', '2018-12-16 21:42:04', '2018-12-16 12:04:42', '0000-00-00 00:00:00', 122, ''),
(8, 'S2', 'Perancis', '2018-12-18 18:45:04', '2018-12-18 09:04:45', '0000-00-00 00:00:00', 118, ''),
(9, 'S2', 'Perancis', '2018-12-18 18:06:05', '2018-12-18 09:05:06', '0000-00-00 00:00:00', 118, ''),
(10, 'S2', 'Perancis', '2018-12-18 18:30:08', '2018-12-18 09:08:30', '0000-00-00 00:00:00', 118, ''),
(11, 'S3', 'Jepang', '2018-12-18 18:11:13', '2018-12-18 09:13:11', '0000-00-00 00:00:00', 118, ''),
(12, 'S2', 'Thailand', '2018-12-21 18:50:12', '2018-12-21 09:12:50', '0000-00-00 00:00:00', 118, ''),
(13, 'S2', 'Thailand', '2018-12-21 18:16:13', '2018-12-21 09:13:16', '0000-00-00 00:00:00', 118, ''),
(14, 'S1', 'Inggris', '2019-01-06 04:24:29', '2019-01-05 19:29:24', '0000-00-00 00:00:00', 118, ''),
(15, 'S1', 'Thailand', '2019-01-06 04:34:29', '2019-01-05 19:29:34', '0000-00-00 00:00:00', 118, ''),
(16, 'S1', 'Indonesia', '2019-01-06 04:46:29', '2019-01-05 19:29:46', '0000-00-00 00:00:00', 118, ''),
(17, 'S1', 'Indonesia', '2019-01-06 04:48:31', '2019-01-05 19:31:48', '0000-00-00 00:00:00', 118, ''),
(18, 'S1', 'Indonesia', '2019-01-06 04:03:32', '2019-01-05 19:32:03', '0000-00-00 00:00:00', 118, ''),
(19, 'S1', 'Malaysia', '2019-01-06 04:49:33', '2019-01-05 19:33:49', '0000-00-00 00:00:00', 118, ''),
(20, 'S1', 'Inggris', '2019-01-06 04:20:34', '2019-01-05 19:34:20', '0000-00-00 00:00:00', 118, ''),
(21, 'S1', 'Inggris', '2019-01-06 04:27:34', '2019-01-05 19:34:27', '0000-00-00 00:00:00', 118, ''),
(22, 'S1', 'Inggris', '2019-01-06 04:46:34', '2019-01-05 19:34:46', '0000-00-00 00:00:00', 118, ''),
(23, 'S1', 'Inggris', '2019-01-06 04:55:34', '2019-01-05 19:34:55', '0000-00-00 00:00:00', 118, ''),
(24, 'S1', 'Inggris', '2019-01-06 04:10:35', '2019-01-05 19:35:10', '0000-00-00 00:00:00', 118, ''),
(25, 'S1', 'Singapura', '2019-01-06 04:59:36', '2019-01-05 19:36:59', '0000-00-00 00:00:00', 118, ''),
(27, 'S1', 'Belanda', '2019-01-08 02:10:07', '2019-01-07 17:07:10', '0000-00-00 00:00:00', 118, ''),
(28, 'S1', 'Korea', '2019-01-08 02:23:07', '2019-01-07 17:07:23', '0000-00-00 00:00:00', 118, ''),
(29, 'S1', '1', '2019-01-15 03:50:05', '2019-01-14 18:05:50', '0000-00-00 00:00:00', 118, ''),
(30, 'S1', 'Korea', '2019-01-15 03:04:06', '2019-01-14 18:06:04', '0000-00-00 00:00:00', 118, ''),
(31, 'S1', 'Korea', '2019-01-15 03:57:09', '2019-01-14 18:09:57', '0000-00-00 00:00:00', 118, ''),
(32, 'S1', 'Korea', '2019-01-15 03:28:12', '2019-01-14 18:12:28', '0000-00-00 00:00:00', 118, ''),
(33, 'S2', 'Malaysia', '2019-02-01 18:52:08', '2019-02-01 09:08:52', '0000-00-00 00:00:00', 118, ''),
(34, 'S1', 'Indonesia', '2019-03-13 21:06:04', '2019-03-13 13:04:06', '0000-00-00 00:00:00', 118, ''),
(35, 'S1', 'Indonesia', '2019-03-13 21:22:04', '2019-03-13 13:04:22', '0000-00-00 00:00:00', 118, ''),
(36, 'S1', 'Indonesia', '2019-03-13 21:03:05', '2019-03-13 13:05:03', '0000-00-00 00:00:00', 118, ''),
(37, 'S1', 'Indonesia', '2019-03-13 21:30:26', '2019-03-13 13:26:30', '0000-00-00 00:00:00', 118, ''),
(38, 'S1', 'Indonesia', '2019-03-13 21:53:26', '2019-03-13 13:26:53', '0000-00-00 00:00:00', 118, ''),
(39, 'S1', 'Indonesia', '2019-03-13 21:55:28', '2019-03-13 13:28:55', '0000-00-00 00:00:00', 118, ''),
(40, 'S1', 'Korea', '2019-03-13 21:11:29', '2019-03-13 13:29:11', '0000-00-00 00:00:00', 118, ''),
(50, 'S2', 'Indonesia', '2019-03-24 16:05:23', '2019-03-24 08:23:05', '2019-03-24 08:23:16', 128, 'Sudah Dihapus'),
(51, 'S1', 'Indonesia', '2019-03-28 16:15:03', '2019-03-28 08:03:15', '0000-00-00 00:00:00', 118, 'Belum Dihapus'),
(52, 'S1', 'Indonesia', '2019-03-28 16:36:13', '2019-03-28 08:13:36', '0000-00-00 00:00:00', 118, 'Belum Dihapus'),
(53, 'S1', 'Indonesia', '2019-03-29 07:13:39', '2019-03-28 23:39:13', '0000-00-00 00:00:00', 118, 'Belum Dihapus'),
(54, 'S1', 'Indonesia', '2019-03-29 08:23:30', '2019-03-29 00:30:23', '0000-00-00 00:00:00', 118, 'Belum Dihapus'),
(55, 'S1', 'Indonesia', '2019-03-29 08:26:34', '2019-03-29 00:34:26', '0000-00-00 00:00:00', 118, 'Belum Dihapus'),
(56, 'S1', 'Indonesia', '2019-03-29 08:09:37', '2019-03-29 00:37:10', '0000-00-00 00:00:00', 118, 'Belum Dihapus'),
(57, 'S1', 'Indonesia', '2019-03-29 08:40:37', '2019-03-29 00:37:40', '0000-00-00 00:00:00', 118, 'Belum Dihapus'),
(58, 'S1', 'Indonesia', '2019-03-29 08:57:37', '2019-03-29 00:37:57', '0000-00-00 00:00:00', 118, 'Belum Dihapus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pencarian_favorit`
--

CREATE TABLE `pencarian_favorit` (
  `id_pencarian_favorit` int(225) NOT NULL,
  `id_universitas` int(225) NOT NULL,
  `id_pencari` int(225) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pencarian_favorit`
--

INSERT INTO `pencarian_favorit` (`id_pencarian_favorit`, `id_universitas`, `id_pencari`, `create_dtm`, `update_dtm`) VALUES
(19, 1, 122, '2018-11-14 00:44:56', '2018-11-14 00:44:56'),
(21, 2, 118, '2019-01-12 19:28:31', '0000-00-00 00:00:00'),
(22, 1, 128, '2019-03-13 12:32:41', '0000-00-00 00:00:00'),
(24, 1, 118, '2019-03-29 02:29:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(225) NOT NULL,
  `nama_prodi` varchar(100) NOT NULL,
  `tingkatan` varchar(10) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `tingkatan`, `create_dtm`, `update_dtm`) VALUES
(1, 'Biologi', 'Sarjana', '2018-12-04 08:36:26', '2019-02-01 06:46:43'),
(2, 'Biologi', 'Magister', '2018-12-04 08:38:56', '2018-12-04 08:38:56'),
(3, 'Akuntansi', 'Sarjana', '2018-12-04 08:40:01', '2018-12-04 08:40:01'),
(4, 'Ilmu Ekonomi', 'Sarjana', '2018-12-04 08:41:12', '2018-12-04 08:41:12'),
(5, 'Manajemen', 'Sarjana', '2018-12-04 08:41:29', '2018-12-04 08:41:29'),
(6, 'Akuntansi', 'Magister', '2018-12-04 08:42:03', '2018-12-04 08:42:03'),
(7, 'Ilmu Ekonomi', 'Magister', '2018-12-04 08:42:17', '2018-12-04 08:42:17'),
(8, 'Manajemen', 'Magister', '2018-12-04 08:42:43', '2018-12-04 08:42:43'),
(9, 'Ekonomika Pembangunan', 'Magister', '2018-12-04 08:43:06', '2018-12-04 08:43:06'),
(10, 'Farmasi', 'Sarjana', '2018-12-04 08:43:54', '2018-12-04 08:43:54'),
(11, 'Farmasi Klinik', 'Magister', '2018-12-04 08:44:16', '2018-12-04 08:44:16'),
(12, 'Ilmu Farmasi', 'Magister', '2018-12-04 08:44:31', '2018-12-04 08:44:31'),
(13, 'Filsafat', 'Sarjana', '2018-12-04 08:45:22', '2018-12-04 08:45:22'),
(14, 'Filsafat', 'Magister', '2018-12-04 08:45:34', '2018-12-04 08:45:34'),
(15, 'Geografi Lingkungan', 'Sarjana', '2018-12-04 08:46:34', '2018-12-04 08:46:34'),
(16, 'Kartografi dan Penginderaan Jarak Jauh', 'Sarjana', '2018-12-04 08:47:04', '2018-12-04 08:47:04'),
(17, 'Pembangunan Wilayah', 'Sarjana', '2018-12-04 08:47:28', '2018-12-04 08:47:28'),
(18, 'Geografi', 'Magister', '2018-12-04 08:47:51', '2018-12-04 08:47:51'),
(19, 'Penginderaan Jarak Jauh', 'Magister', '2018-12-04 08:48:15', '2018-12-04 08:48:15'),
(20, 'Hukum', 'Sarjana', '2018-12-04 08:48:48', '2018-12-04 08:48:48'),
(21, 'Ilmu Hukum', 'Magister', '2018-12-04 08:49:06', '2018-12-04 08:49:06'),
(39, 'Ilmu Hubungan Internasional', 'Sarjana', '2018-12-04 08:56:46', '2018-12-04 08:56:46'),
(40, 'Ilmu Komunikasi', 'Sarjana', '2018-12-04 08:56:58', '2018-12-04 08:56:58'),
(41, 'Manajemen dan Kebijakan Publik', 'Sarjana', '2018-12-04 08:57:16', '2018-12-04 08:58:52'),
(42, 'Pembangunan Sosial dan Kesejahteraan', 'Sarjana', '2018-12-04 08:57:38', '2018-12-04 08:57:38'),
(43, 'Politik dan Pemerintahan', 'Sarjana', '2018-12-04 08:57:49', '2018-12-04 08:57:49'),
(44, 'Sosiologi', 'Sarjana', '2018-12-04 08:58:00', '2018-12-04 08:58:00'),
(45, 'Manajemen dan Kebijakan Publik', 'Magister', '2018-12-04 08:58:37', '2018-12-04 08:58:37'),
(46, 'Politik dan Pemerintahan', 'Magister', '2018-12-04 08:59:16', '2018-12-04 08:59:16'),
(47, 'Ilmu Hubungan Internasional', 'Magister', '2018-12-04 08:59:32', '2018-12-04 08:59:32'),
(48, 'Ilmu Komunikasi', 'Magister', '2018-12-04 08:59:48', '2018-12-04 08:59:48'),
(49, 'Sosiologi', 'Magister', '2018-12-04 09:00:00', '2018-12-04 09:00:00'),
(50, 'Pembangunan Sosial dan Kesejahteraan', 'Magister', '2018-12-04 09:00:15', '2018-12-04 09:00:15'),
(51, 'Ilmu Administrasi Publik', 'Magister', '2018-12-04 09:00:27', '2018-12-04 09:00:27'),
(52, 'Higiene Gigi', 'Sarjana', '2018-12-04 09:01:36', '2018-12-04 09:01:36'),
(53, 'Kedokteran Gigi', 'Sarjana', '2018-12-04 09:01:57', '2018-12-04 09:01:57'),
(54, 'Ilmu Kedokteran Gigi', 'Magister', '2018-12-04 09:02:38', '2018-12-04 09:02:38'),
(55, 'Ilmu Kedokteran Gigi Klinis', 'Magister', '2018-12-04 09:02:50', '2018-12-04 09:02:50'),
(56, 'Kedokteran Hewan', 'Sarjana', '2018-12-04 09:04:10', '2018-12-04 09:04:10'),
(57, 'Sains Veteriner', 'Magister', '2018-12-04 09:04:36', '2018-12-04 09:04:36'),
(58, 'Gizi Kesehatan', 'Sarjana', '2018-12-04 09:09:12', '2018-12-04 09:09:12'),
(59, 'Ilmu Keperawatan', 'Sarjana', '2018-12-04 09:09:46', '2018-12-04 09:09:46'),
(60, 'Kedokteran', 'Sarjana', '2018-12-04 09:10:02', '2018-12-04 09:10:02'),
(61, 'Ilmu Biomedik', 'Magister', '2018-12-04 09:10:52', '2018-12-04 09:10:52'),
(62, 'Ilmu Kedokteran Klinis', 'Magister', '2018-12-04 09:11:13', '2018-12-04 09:11:13'),
(63, 'Ilmu Kedokteran Tropis', 'Magister', '2018-12-04 09:11:31', '2018-12-04 09:11:31'),
(64, 'Ilmu Pendidikan Kedokterandan dan Kesehatan', 'Magister', '2018-12-04 09:12:01', '2018-12-04 09:12:01'),
(65, 'Keperawatan', 'Magister', '2018-12-04 09:12:28', '2018-12-04 09:12:28'),
(66, 'Kehutanan', 'Sarjana', '2018-12-04 09:13:30', '2018-12-04 09:13:30'),
(67, 'Ilmu Kehutanan', 'Magister', '2018-12-04 09:13:40', '2018-12-04 09:13:40'),
(68, 'Elektronika dan Instrumentasi', 'Sarjana', '2018-12-04 09:14:36', '2018-12-04 09:14:36'),
(69, 'Fisika', 'Sarjana', '2018-12-04 09:24:21', '2018-12-04 09:24:21'),
(70, 'Geofisika', 'Sarjana', '2018-12-04 09:24:55', '2018-12-04 09:24:55'),
(71, 'Ilmu Komputer', 'Sarjana', '2018-12-04 09:25:14', '2018-12-04 09:25:14'),
(72, 'Kimia', 'Sarjana', '2018-12-04 09:25:25', '2018-12-04 09:25:25'),
(73, 'Matematika', 'Sarjana', '2018-12-04 09:25:37', '2018-12-04 09:25:37'),
(74, 'Statistika', 'Sarjana', '2018-12-04 09:25:52', '2018-12-04 09:25:52'),
(75, 'Fisika', 'Magister', '2018-12-04 09:26:18', '2018-12-04 09:26:18'),
(76, 'Kimia', 'Magister', '2018-12-04 09:26:30', '2018-12-04 09:26:30'),
(77, 'Ilmu Komputer', 'Magister', '2018-12-04 09:26:44', '2018-12-04 09:26:44'),
(78, 'Matematika', 'Magister', '2018-12-04 09:26:56', '2018-12-04 09:26:56'),
(79, 'Agronomi', 'Sarjana', '2018-12-04 09:27:51', '2018-12-04 09:27:51'),
(80, 'Akuakultur', 'Sarjana', '2018-12-04 09:28:08', '2018-12-04 09:28:08'),
(81, 'Ekonomi Pertanian dan Agribisnis', 'Sarjana', '2018-12-04 09:28:23', '2018-12-04 09:28:37'),
(82, 'Ilmu Tanah', 'Sarjana', '2018-12-04 09:28:52', '2018-12-04 09:28:52'),
(83, 'Manajemen Sumberdaya Akuatik', 'Sarjana', '2018-12-04 09:29:11', '2018-12-04 09:29:11'),
(84, 'Mikrobiologi Pertanian', 'Sarjana', '2018-12-04 09:29:29', '2018-12-04 09:29:29'),
(85, 'Penyuluhan dan Komunikasi Pertanian', 'Sarjana', '2018-12-04 09:29:54', '2018-12-04 09:29:54'),
(86, 'Proteksi Tanaman', 'Sarjana', '2018-12-04 09:30:30', '2018-12-04 09:30:30'),
(87, 'Teknologi Hasil Pertanian', 'Sarjana', '2018-12-04 09:30:53', '2018-12-04 09:30:53'),
(88, 'Agronomi', 'Magister', '2018-12-04 09:32:51', '2018-12-04 09:32:51'),
(89, 'Ekonomi Pertanian', 'Magister', '2018-12-04 09:33:06', '2018-12-04 09:33:06'),
(90, 'Fitopatologi', 'Magister', '2018-12-04 09:33:22', '2018-12-04 09:33:22'),
(91, 'Ilmu Hama Tanaman', 'Magister', '2018-12-04 09:33:58', '2018-12-04 09:33:58'),
(92, 'Pemuliaan Tanaman', 'Magister', '2018-12-04 09:34:12', '2018-12-04 09:34:12'),
(93, 'Ilmu Tanah', 'Magister', '2018-12-04 09:34:26', '2018-12-04 09:34:26'),
(94, 'Manajemen Agribisnis', 'Magister', '2018-12-04 09:34:48', '2018-12-04 09:34:48'),
(95, 'Ilmu Perikanan', 'Magister', '2018-12-04 09:35:15', '2018-12-04 09:35:15'),
(96, 'Ilmu dan Industri Peternakan', 'Sarjana', '2018-12-04 09:37:22', '2018-12-04 09:37:22'),
(97, 'Ilmu Peternakan', 'Magister', '2018-12-04 09:37:54', '2018-12-04 09:37:54'),
(98, 'Psikologi', 'Sarjana', '2018-12-04 09:40:25', '2018-12-04 09:40:25'),
(99, 'Psikologi', 'Magister', '2018-12-04 09:40:39', '2018-12-04 09:40:39'),
(100, 'Arsitektur', 'Sarjana', '2018-12-04 09:41:55', '2018-12-04 09:41:55'),
(101, 'Perencarnaan Wilayah Kota', 'Sarjana', '2018-12-04 09:42:25', '2018-12-04 09:42:25'),
(102, 'Teknik Elektro', 'Sarjana', '2018-12-04 09:42:54', '2018-12-04 09:42:54'),
(103, 'Teknik Fisika', 'Sarjana', '2018-12-04 09:43:40', '2018-12-04 09:43:40'),
(104, 'Teknik Geodesi', 'Sarjana', '2018-12-04 09:43:56', '2018-12-04 09:43:56'),
(105, 'Teknik Geologi', 'Sarjana', '2018-12-04 09:44:15', '2018-12-04 09:44:15'),
(106, 'Teknik Industri', 'Sarjana', '2018-12-04 09:44:32', '2018-12-04 09:44:32'),
(107, 'Teknik Kimia', 'Sarjana', '2018-12-04 09:44:47', '2018-12-04 09:44:47'),
(108, 'Teknik Mesin', 'Sarjana', '2018-12-04 09:45:04', '2018-12-04 09:45:04'),
(109, 'Teknik Nuklir', 'Sarjana', '2018-12-04 09:45:18', '2018-12-04 09:45:18'),
(110, 'Teknik Sipil', 'Sarjana', '2018-12-04 09:45:58', '2018-12-04 09:45:58'),
(111, 'Arsitektur', 'Magister', '2018-12-04 09:46:22', '2018-12-04 09:46:22'),
(112, 'Teknik Elektro', 'Magister', '2018-12-04 09:46:47', '2018-12-04 09:46:47'),
(113, 'Teknik Fisika', 'Magister', '2018-12-04 09:47:08', '2018-12-04 09:47:08'),
(114, 'Teknik Geologi', 'Magister', '2018-12-04 09:47:24', '2018-12-04 09:47:24'),
(115, 'Teknik Geomatika', 'Magister', '2018-12-04 09:47:44', '2018-12-04 09:47:44'),
(116, 'Teknik Kimia', 'Magister', '2018-12-04 09:48:18', '2018-12-04 09:48:18'),
(117, 'Teknik Mesin', 'Magister', '2018-12-04 09:49:15', '2018-12-04 09:49:15'),
(118, 'Teknik Industri', 'Magister', '2018-12-04 09:49:29', '2018-12-04 09:49:29'),
(119, 'Teknologi Informasi', 'Magister', '2018-12-04 09:49:52', '2018-12-04 09:49:52'),
(120, 'Teknologi Informasi', 'Magister', '2018-12-04 09:50:24', '2018-12-04 09:50:24'),
(121, 'Teknik Sistem', 'Magister', '2018-12-04 09:50:50', '2018-12-04 09:50:50'),
(122, 'Teknik Sipil', 'Magister', '2018-12-04 09:51:02', '2018-12-04 09:51:02'),
(123, 'Teknik Pengelolaan Bencana Alam', 'Magister', '2018-12-04 09:51:19', '2018-12-04 09:51:19'),
(124, 'Teknik Pertanian', 'Sarjana', '2018-12-04 09:53:22', '2018-12-04 09:53:22'),
(125, 'Teknologi Industri Pertanian', 'Sarjana', '2018-12-04 09:53:41', '2018-12-04 09:53:41'),
(126, 'Teknologi Pangan dan Hasil Pertanian', 'Sarjana', '2018-12-04 09:54:30', '2018-12-04 09:54:30'),
(127, 'Ilmu dan Teknologi Pangan', 'Magister', '2018-12-04 09:55:11', '2018-12-04 09:55:11'),
(128, 'Teknik Pertanian', 'Magister', '2018-12-04 09:55:33', '2018-12-04 09:55:33'),
(129, 'Teknologi Hasil Perkebunan', 'Magister', '2018-12-04 09:56:16', '2018-12-04 09:56:16'),
(130, 'Teknologi Industri Pertanian', 'Magister', '2018-12-04 09:56:33', '2018-12-04 09:56:33'),
(131, 'Bioteknologi', 'Magister', '2018-12-04 09:58:04', '2018-12-04 09:58:04'),
(132, 'Ilmu Lingkungan', 'Magister', '2018-12-04 09:58:24', '2018-12-04 09:58:24'),
(133, 'Agama dan Lintas Budaya', 'Magister', '2018-12-04 09:58:37', '2018-12-04 09:58:37'),
(134, 'Kajian Budaya dan Media', 'Magister', '2018-12-04 09:58:49', '2018-12-04 09:58:49'),
(135, 'Kependudukan', 'Magister', '2018-12-04 09:59:18', '2018-12-04 09:59:18'),
(136, 'Ketahanan Nasional', 'Magister', '2018-12-04 09:59:32', '2018-12-04 09:59:32'),
(137, 'Kajian Pariwisata', 'Magister', '2018-12-04 09:59:46', '2018-12-04 09:59:46'),
(138, 'Pengkajian Seni Pertunjukan dan Seni Rupa', 'Magister', '2018-12-04 10:00:09', '2018-12-04 10:00:09'),
(139, 'Penyuluhan dan Komunikasi Pembangunan', 'Magister', '2018-12-04 10:00:34', '2018-12-04 10:00:34'),
(140, 'Manajemen Bencana', 'Magister', '2018-12-04 10:00:48', '2018-12-04 10:00:48'),
(141, 'Manajemen Pendidikan Tinggi', 'Magister', '2018-12-04 10:01:01', '2018-12-04 10:01:01'),
(142, 'Bioetika', 'Magister', '2018-12-04 10:01:14', '2018-12-04 10:01:14'),
(143, 'Studi Kebijakan', 'Magister', '2018-12-04 10:01:27', '2018-12-04 10:01:27'),
(144, 'Akuntansi', 'Diploma', '2018-12-04 10:05:02', '2018-12-04 10:05:02'),
(145, 'Ekonomi Terapan', 'Diploma', '2018-12-04 10:05:17', '2018-12-04 10:05:17'),
(146, 'Manajemen', 'Diploma', '2018-12-04 10:05:28', '2018-12-04 10:05:28'),
(147, 'Penginderaan Jauh dan Sistem Informasi Geografi', 'Diploma', '2018-12-04 10:06:12', '2018-12-04 10:06:12'),
(148, 'Bahasa Jepang', 'Diploma', '2018-12-04 10:06:24', '2018-12-04 10:06:24'),
(149, 'Bahasa Korea', 'Diploma', '2018-12-04 10:06:37', '2018-12-04 10:06:37'),
(150, 'Bahasa Inggris', 'Diploma', '2018-12-04 10:06:55', '2018-12-04 10:06:55'),
(151, 'Pariwisata', 'Diploma', '2018-12-04 10:07:07', '2018-12-04 10:07:07'),
(152, 'Kearsipan', 'Diploma', '2018-12-04 10:07:19', '2018-12-04 10:07:19'),
(153, 'Kesehatan Hewan', 'Diploma', '2018-12-04 10:07:33', '2018-12-04 10:07:33'),
(154, 'Pengelolaan Hutan', 'Diploma', '2018-12-04 10:07:52', '2018-12-04 10:07:52'),
(155, 'Teknologi Instrumentasi', 'Diploma', '2018-12-04 10:08:09', '2018-12-04 10:08:09'),
(156, 'Rekam Medis dan Informasi Kesehatan', 'Diploma', '2018-12-04 10:08:27', '2018-12-04 10:08:27'),
(157, 'Komputer dan Sistem Informasi', 'Diploma', '2018-12-04 10:08:37', '2018-12-04 10:08:37'),
(158, 'Teknik Geomatika', 'Diploma', '2018-12-04 10:08:47', '2018-12-04 10:08:47'),
(159, 'Teknik Mesin', 'Diploma', '2018-12-04 10:08:56', '2018-12-04 10:08:56'),
(160, 'Teknologi Listrik', 'Diploma', '2018-12-04 10:09:31', '2018-12-04 10:09:31'),
(161, 'Teknik Sipil', 'Diploma', '2018-12-04 10:27:48', '2018-12-04 10:27:48'),
(162, 'Agroindustri', 'Diploma', '2018-12-04 10:27:58', '2018-12-04 10:27:58'),
(163, 'Metrologi dan Instrumentasi', 'Diploma', '2018-12-04 10:28:09', '2018-12-04 10:28:09'),
(164, 'Teknologi Rekayasa Internet', 'Diploma', '2018-12-04 10:28:19', '2018-12-04 10:28:19'),
(165, 'Teknik Pengelolaan dan Pemeliharaan Infrastruktur Sipil', 'Diploma', '2018-12-04 10:28:30', '2018-12-04 10:28:30'),
(166, 'Teknik Pengelolaan dan Perawatan Alat Berat', 'Diploma', '2018-12-04 10:28:48', '2018-12-04 10:28:48'),
(167, 'Pembangunan Ekonomi Kewilayahan', 'Diploma', '2018-12-04 10:28:58', '2018-12-04 10:28:58'),
(168, 'Meteorologi', 'Sarjana', '2018-12-19 08:36:10', '0000-00-00 00:00:00'),
(169, 'Oseanografi', 'Sarjana', '2018-12-19 08:36:24', '0000-00-00 00:00:00'),
(170, 'Teknik Geodesi dan Geomatika', 'Sarjana', '2018-12-19 08:36:52', '0000-00-00 00:00:00'),
(171, 'Teknik Geologi', 'Sarjana', '2018-12-19 08:37:10', '0000-00-00 00:00:00'),
(172, 'Astronomi', 'Sarjana', '2018-12-19 08:37:39', '0000-00-00 00:00:00'),
(173, 'Fisika', 'Sarjana', '2018-12-19 08:37:49', '0000-00-00 00:00:00'),
(174, 'Kimia', 'Sarjana', '2018-12-19 08:38:01', '0000-00-00 00:00:00'),
(175, 'Matematika', 'Sarjana', '2018-12-19 08:38:12', '0000-00-00 00:00:00'),
(176, 'Desain Interior', 'Sarjana', '2018-12-19 08:38:42', '0000-00-00 00:00:00'),
(177, 'Desain Komunikasi visual', 'Sarjana', '2018-12-19 08:38:52', '0000-00-00 00:00:00'),
(178, 'Desain Produk', 'Sarjana', '2018-12-19 08:39:03', '0000-00-00 00:00:00'),
(179, 'Kria', 'Sarjana', '2018-12-19 08:39:25', '0000-00-00 00:00:00'),
(180, 'Seni Rupa', 'Sarjana', '2018-12-19 08:39:37', '0000-00-00 00:00:00'),
(181, 'Manajemen Rekayasa Industri', 'Sarjana', '2018-12-19 08:40:29', '0000-00-00 00:00:00'),
(182, 'Teknik Bioenergi dan Kemurgi', 'Sarjana', '2018-12-19 08:40:43', '0000-00-00 00:00:00'),
(183, 'Teknik Fisika', 'Sarjana', '2018-12-19 08:40:57', '0000-00-00 00:00:00'),
(184, 'Teknik Industri', 'Sarjana', '2018-12-19 08:42:08', '0000-00-00 00:00:00'),
(185, 'Teknik Kimia', 'Sarjana', '2018-12-19 08:42:26', '0000-00-00 00:00:00'),
(186, 'Teknik Pangan', 'Sarjana', '2018-12-19 08:42:38', '0000-00-00 00:00:00'),
(187, 'Aeronotika dan Astronotika', 'Sarjana', '2018-12-19 08:43:41', '0000-00-00 00:00:00'),
(188, 'Teknik Material', 'Sarjana', '2018-12-19 08:43:54', '0000-00-00 00:00:00'),
(189, 'Teknik Mesin', 'Sarjana', '2018-12-19 08:44:07', '0000-00-00 00:00:00'),
(190, 'Teknik Geofisika', 'Doktor', '2018-12-19 08:44:40', '2018-12-19 09:56:28'),
(191, 'Teknik Metalurgi', 'Sarjana', '2018-12-19 08:44:55', '0000-00-00 00:00:00'),
(192, 'Teknik Perminyakan', 'Sarjana', '2018-12-19 08:45:08', '0000-00-00 00:00:00'),
(193, 'Teknik Pertambangan', 'Sarjana', '2018-12-19 08:45:21', '0000-00-00 00:00:00'),
(194, 'Rekayasa Infrastruktur Lingkungan', 'Sarjana', '2018-12-19 08:47:15', '0000-00-00 00:00:00'),
(195, 'Teknik dan Pengelolaan Sumber Daya Air', 'Sarjana', '2018-12-19 08:47:31', '0000-00-00 00:00:00'),
(196, 'Teknik Kelautan', 'Sarjana', '2018-12-19 08:47:56', '0000-00-00 00:00:00'),
(197, 'Teknik Lingkungan', 'Sarjana', '2018-12-19 08:50:36', '0000-00-00 00:00:00'),
(198, 'Teknik Sipil', 'Sarjana', '2018-12-19 08:51:15', '0000-00-00 00:00:00'),
(199, 'Arsitektur', 'Sarjana', '2018-12-19 08:51:53', '0000-00-00 00:00:00'),
(200, 'Perencanaan Wilayah dan Kota', 'Sarjana', '2018-12-19 08:52:07', '0000-00-00 00:00:00'),
(201, 'Kewirausahaan', 'Sarjana', '2018-12-19 08:52:33', '0000-00-00 00:00:00'),
(202, 'Manajemen', 'Sarjana', '2018-12-19 08:53:38', '0000-00-00 00:00:00'),
(203, 'Farmasi Klinik dan Komunitas', 'Sarjana', '2018-12-19 08:57:39', '0000-00-00 00:00:00'),
(204, 'Sains dan Teknologi Farmasi', 'Sarjana', '2018-12-19 08:57:52', '0000-00-00 00:00:00'),
(205, 'Biologi', 'Sarjana', '2018-12-19 08:59:08', '0000-00-00 00:00:00'),
(206, 'Mikrobiologi', 'Sarjana', '2018-12-19 08:59:23', '0000-00-00 00:00:00'),
(207, 'Rekayasa Hayati', 'Sarjana', '2018-12-19 08:59:35', '0000-00-00 00:00:00'),
(208, 'Rekayasa Pertanian', 'Sarjana', '2018-12-19 08:59:47', '0000-00-00 00:00:00'),
(209, 'Rekayasa Kehutanan', 'Sarjana', '2018-12-19 09:00:04', '0000-00-00 00:00:00'),
(210, 'Teknologi Pasca Panen', 'Sarjana', '2018-12-19 09:01:49', '0000-00-00 00:00:00'),
(211, 'Sistem dan Teknologi Informasi', 'Sarjana', '2018-12-19 09:20:26', '0000-00-00 00:00:00'),
(212, 'Teknik Biomedis', 'Sarjana', '2018-12-19 09:20:38', '0000-00-00 00:00:00'),
(213, 'Teknik Elektro', 'Sarjana', '2018-12-19 09:20:55', '0000-00-00 00:00:00'),
(214, 'Teknik Informatika', 'Sarjana', '2018-12-19 09:21:10', '0000-00-00 00:00:00'),
(215, 'Teknik Telekomunikasi', 'Sarjana', '2018-12-19 09:21:23', '0000-00-00 00:00:00'),
(216, 'Teknik Tenaga Listrik', 'Sarjana', '2018-12-19 09:21:35', '0000-00-00 00:00:00'),
(217, 'Sains Kebumian', 'Magister', '2018-12-19 09:23:26', '0000-00-00 00:00:00'),
(218, 'Teknik Air Tanah', 'Magister', '2018-12-19 09:23:56', '0000-00-00 00:00:00'),
(219, 'Teknik Geodesi dan Geomatika', 'Magister', '2018-12-19 09:24:32', '0000-00-00 00:00:00'),
(220, 'Teknik Geologi', 'Magister', '2018-12-19 09:24:51', '0000-00-00 00:00:00'),
(221, 'Aktuaria', 'Magister', '2018-12-19 09:25:05', '0000-00-00 00:00:00'),
(222, 'Astronomi', 'Magister', '2018-12-19 09:25:15', '0000-00-00 00:00:00'),
(223, 'Fisika', 'Magister', '2018-12-19 09:25:25', '0000-00-00 00:00:00'),
(224, 'Kimia', 'Magister', '2018-12-19 09:25:36', '0000-00-00 00:00:00'),
(225, 'Matematika', 'Magister', '2018-12-19 09:25:47', '0000-00-00 00:00:00'),
(226, 'Pengajaran Matematika', 'Magister', '2018-12-19 09:26:10', '0000-00-00 00:00:00'),
(227, 'Pengajaran Fisika', 'Magister', '2018-12-19 09:26:25', '0000-00-00 00:00:00'),
(228, 'Pengajaran Kimia', 'Magister', '2018-12-19 09:26:40', '0000-00-00 00:00:00'),
(229, 'Sains Komputasi', 'Magister', '2018-12-19 09:26:55', '0000-00-00 00:00:00'),
(230, 'Desain', 'Magister', '2018-12-19 09:27:19', '0000-00-00 00:00:00'),
(231, 'Seni Rupa', 'Magister', '2018-12-19 09:27:29', '0000-00-00 00:00:00'),
(232, 'Instrumentasi dan Kontrol', 'Magister', '2018-12-19 09:28:13', '0000-00-00 00:00:00'),
(233, 'Logistik', 'Magister', '2018-12-19 09:28:25', '0000-00-00 00:00:00'),
(234, 'Teknik dan Manajemen Industri', 'Magister', '2018-12-19 09:28:47', '0000-00-00 00:00:00'),
(235, 'Teknik Fisika', 'Magister', '2018-12-19 09:30:45', '0000-00-00 00:00:00'),
(236, 'Teknik Kimia', 'Magister', '2018-12-19 09:30:56', '0000-00-00 00:00:00'),
(237, 'Aeronotika dan Astronotika', 'Magister', '2018-12-19 09:32:22', '0000-00-00 00:00:00'),
(238, 'Teknik Material', 'Magister', '2018-12-19 09:32:39', '0000-00-00 00:00:00'),
(239, 'Teknik Mesin', 'Magister', '2018-12-19 09:32:50', '0000-00-00 00:00:00'),
(240, 'Ilmu dan Rekayasa Nuklir', 'Magister', '2018-12-19 09:33:22', '0000-00-00 00:00:00'),
(241, 'Rekayasa Pertambangan', 'Magister', '2018-12-19 09:33:55', '0000-00-00 00:00:00'),
(242, 'Teknik Geofisika', 'Magister', '2018-12-19 09:35:13', '0000-00-00 00:00:00'),
(243, 'Teknik Metalurgi', 'Magister', '2018-12-19 09:35:45', '0000-00-00 00:00:00'),
(244, 'Teknik Panas Bumi', 'Magister', '2018-12-19 09:35:58', '0000-00-00 00:00:00'),
(245, 'Teknik Perminyakan', 'Magister', '2018-12-19 09:36:15', '0000-00-00 00:00:00'),
(246, 'Pengelolaan Infrastruktur Air Bersih dan Sanitasi', 'Magister', '2018-12-19 09:41:16', '0000-00-00 00:00:00'),
(247, 'Pengelolaan Infrastruktur Air Bersih dan Sanitasi', 'Magister', '2018-12-19 09:41:17', '0000-00-00 00:00:00'),
(248, 'Pengelolaan Sumber Daya Air', 'Magister', '2018-12-19 09:41:38', '0000-00-00 00:00:00'),
(249, 'Sistem dan Teknik Jalan Raya', 'Magister', '2018-12-19 09:42:19', '0000-00-00 00:00:00'),
(250, 'Teknik Kelautan', 'Magister', '2018-12-19 09:42:47', '0000-00-00 00:00:00'),
(251, 'Teknik Lingkungan', 'Magister', '2018-12-19 09:43:05', '0000-00-00 00:00:00'),
(252, 'Teknik Sipil', 'Magister', '2018-12-19 09:43:22', '0000-00-00 00:00:00'),
(253, 'Arsitektur', 'Magister', '2018-12-19 09:43:46', '0000-00-00 00:00:00'),
(254, 'Arsitektur Lanskap', 'Magister', '2018-12-19 09:44:35', '0000-00-00 00:00:00'),
(255, 'Perencanaan Kepariwisataan', 'Magister', '2018-12-19 09:44:53', '0000-00-00 00:00:00'),
(256, 'Perencanaan Wilayah dan Kota', 'Magister', '2018-12-19 09:45:15', '0000-00-00 00:00:00'),
(257, 'Rancang Kota', 'Magister', '2018-12-19 09:45:27', '0000-00-00 00:00:00'),
(258, 'Studi Pembangunan', 'Magister', '2018-12-19 09:46:12', '0000-00-00 00:00:00'),
(259, 'Studi Pertahanan', 'Magister', '2018-12-19 09:46:34', '0000-00-00 00:00:00'),
(260, 'Transportasi', 'Magister', '2018-12-19 09:46:48', '0000-00-00 00:00:00'),
(261, 'Administrasi Bisnis', 'Magister', '2018-12-19 09:47:20', '0000-00-00 00:00:00'),
(262, 'Sains Manajemen', 'Magister', '2018-12-19 09:47:34', '0000-00-00 00:00:00'),
(263, 'Farmasi', 'Magister', '2018-12-19 09:47:53', '0000-00-00 00:00:00'),
(264, 'Farmasi Industri', 'Magister', '2018-12-19 09:48:06', '0000-00-00 00:00:00'),
(265, 'Ilmu Keolahragaan', 'Magister', '2018-12-19 09:48:18', '0000-00-00 00:00:00'),
(266, 'Biologi', 'Magister', '2018-12-19 09:48:45', '0000-00-00 00:00:00'),
(267, 'Biomanajemen', 'Magister', '2018-12-19 09:48:56', '0000-00-00 00:00:00'),
(268, 'Bioteknologi', 'Magister', '2018-12-19 09:49:08', '0000-00-00 00:00:00'),
(269, 'Informatika', 'Magister', '2018-12-19 09:49:42', '0000-00-00 00:00:00'),
(270, 'Teknik Elektro', 'Magister', '2018-12-19 09:49:54', '0000-00-00 00:00:00'),
(271, 'Sains Kebumian', 'Doktor', '2018-12-19 09:51:13', '0000-00-00 00:00:00'),
(272, 'Teknik Geodesi dan Geomatika', 'Doktor', '2018-12-19 09:51:37', '0000-00-00 00:00:00'),
(273, 'Teknik Geologi', 'Doktor', '2018-12-19 09:51:48', '0000-00-00 00:00:00'),
(274, 'Astronomi', 'Doktor', '2018-12-19 09:52:16', '0000-00-00 00:00:00'),
(275, 'Fisika', 'Doktor', '2018-12-19 09:52:25', '0000-00-00 00:00:00'),
(276, 'Kimia', 'Doktor', '2018-12-19 09:52:36', '0000-00-00 00:00:00'),
(277, 'MAtematika', 'Doktor', '2018-12-19 09:52:46', '0000-00-00 00:00:00'),
(278, 'Ilmu Seni Rupa dan Desain', 'Doktor', '2018-12-19 09:53:21', '0000-00-00 00:00:00'),
(279, 'Teknik dan Manajemen Industri', 'Doktor', '2018-12-19 09:53:52', '0000-00-00 00:00:00'),
(280, 'Teknik Fisika', 'Doktor', '2018-12-19 09:54:05', '0000-00-00 00:00:00'),
(281, 'Teknik Kimia', 'Doktor', '2018-12-19 09:54:15', '0000-00-00 00:00:00'),
(282, 'Aeronotika dan Astronotika', 'Doktor', '2018-12-19 09:54:36', '0000-00-00 00:00:00'),
(283, 'Ilmu dan Teknik Material', 'Doktor', '2018-12-19 09:55:00', '0000-00-00 00:00:00'),
(284, 'Rekayasa Nuklir', 'Doktor', '2018-12-19 09:55:17', '0000-00-00 00:00:00'),
(285, 'Teknik Mesin', 'Doktor', '2018-12-19 09:55:29', '0000-00-00 00:00:00'),
(286, 'Rekayasa Pertambangan', 'Doktor', '2018-12-19 09:56:04', '0000-00-00 00:00:00'),
(287, 'Teknik Geofisika', 'Magister', '2018-12-19 09:56:19', '0000-00-00 00:00:00'),
(288, 'Teknik Perminyakan', 'Doktor', '2018-12-19 09:56:42', '0000-00-00 00:00:00'),
(289, 'Teknik Lingkungan', 'Doktor', '2018-12-19 09:57:08', '0000-00-00 00:00:00'),
(290, 'Teknik Sipil', 'Doktor', '2018-12-19 09:57:18', '0000-00-00 00:00:00'),
(291, 'Arsitektur', 'Doktor', '2018-12-19 09:57:43', '0000-00-00 00:00:00'),
(292, 'Perencanaan Wilayah dan Kota', 'Doktor', '2018-12-19 09:57:59', '0000-00-00 00:00:00'),
(293, 'Transportasi', 'Doktor', '2018-12-19 09:58:10', '0000-00-00 00:00:00'),
(294, 'Sains Manajemen', 'Doktor', '2018-12-19 09:58:33', '0000-00-00 00:00:00'),
(295, 'Farmasi', 'Doktor', '2018-12-19 09:59:15', '0000-00-00 00:00:00'),
(296, 'Biologi', 'Doktor', '2018-12-19 09:59:46', '0000-00-00 00:00:00'),
(297, 'Teknik Elektro dan Informatika', 'Doktor', '2018-12-19 10:00:28', '0000-00-00 00:00:00'),
(298, 'n', 'Diploma', '2019-01-02 09:43:35', '0000-00-00 00:00:00'),
(299, 'A', 'Magister', '2019-01-02 09:44:13', '0000-00-00 00:00:00'),
(300, 'b', 'Diploma', '2019-01-02 09:44:25', '0000-00-00 00:00:00'),
(301, 'Akutansi', 'Magister', '2019-02-01 12:33:22', '2019-02-01 12:33:55'),
(303, 'Akuntansi', 'Magister', '2019-02-01 12:50:05', '0000-00-00 00:00:00'),
(304, 'Akutansi', 'Diploma', '2019-02-01 13:14:48', '0000-00-00 00:00:00'),
(305, 'Akutansi', 'Magister', '2019-02-01 13:14:59', '0000-00-00 00:00:00'),
(306, 'Business Economics', 'Doktor', '2019-03-30 02:56:10', '0000-00-00 00:00:00'),
(307, 'Business Administration', 'Doktor', '2019-03-30 02:57:20', '0000-00-00 00:00:00'),
(308, 'Accounting and Management', 'Doktor', '2019-03-30 03:00:04', '0000-00-00 00:00:00'),
(309, 'Health Policy', 'Doktor', '2019-03-30 03:07:14', '0000-00-00 00:00:00'),
(310, 'Management', 'Doktor', '2019-03-30 03:08:08', '2019-03-30 03:08:37'),
(311, 'Marketing', 'Doktor', '2019-03-30 03:08:31', '0000-00-00 00:00:00'),
(312, 'Organizational Behavior', 'Doktor', '2019-03-30 03:09:08', '0000-00-00 00:00:00'),
(313, 'Strategy', 'Doktor', '2019-03-30 03:10:00', '0000-00-00 00:00:00'),
(314, 'Technology and Operations Management', 'Doktor', '2019-03-30 03:10:42', '0000-00-00 00:00:00'),
(315, 'Applied Mathematics', 'Sarjana', '2019-03-30 04:06:09', '0000-00-00 00:00:00'),
(316, 'Bioengineering', 'Sarjana', '2019-03-30 04:06:38', '0000-00-00 00:00:00'),
(317, 'Computer Science', 'Sarjana', '2019-03-30 04:06:50', '0000-00-00 00:00:00'),
(318, 'Electrical Engineering', 'Sarjana', '2019-03-30 04:07:17', '0000-00-00 00:00:00'),
(319, 'Environmental Science and Engineering', 'Sarjana', '2019-03-30 04:07:30', '0000-00-00 00:00:00'),
(320, 'Mechanical Engineering', 'Sarjana', '2019-03-30 04:07:57', '0000-00-00 00:00:00'),
(321, 'Applied Mathematics ', 'Doktor', '2019-03-30 04:31:31', '0000-00-00 00:00:00'),
(322, 'Applied Physics', 'Doktor', '2019-03-30 04:32:07', '0000-00-00 00:00:00'),
(323, 'Business Analytics', 'Doktor', '2019-03-30 04:33:12', '0000-00-00 00:00:00'),
(324, 'Computational Science and Engineering', 'Magister', '2019-03-30 04:33:29', '0000-00-00 00:00:00'),
(325, 'Computer Science ', 'Doktor', '2019-03-30 04:33:47', '0000-00-00 00:00:00'),
(326, 'Data Science', 'Magister', '2019-03-30 04:33:59', '0000-00-00 00:00:00'),
(327, 'Bioengineering', 'Doktor', '2019-03-30 04:34:42', '2019-03-30 04:35:25'),
(328, 'Electrical Engineering', 'Magister', '2019-03-30 04:35:09', '0000-00-00 00:00:00'),
(329, 'Electrical Engineering', 'Doktor', '2019-03-30 04:35:15', '0000-00-00 00:00:00'),
(330, 'Environmental Science and Engineering', 'Doktor', '2019-03-30 04:35:41', '0000-00-00 00:00:00'),
(331, 'Materials Science and Mechanical Engineering', 'Doktor', '2019-03-30 04:36:17', '0000-00-00 00:00:00'),
(332, 'Design Engineering', 'Magister', '2019-03-30 04:37:14', '0000-00-00 00:00:00'),
(333, 'African and African American Studies', 'Doktor', '2019-03-30 04:44:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi_fak`
--

CREATE TABLE `prodi_fak` (
  `id_prodi_fak` int(225) NOT NULL,
  `id_prodi` int(225) DEFAULT NULL,
  `id_fakultas` int(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi_fak`
--

INSERT INTO `prodi_fak` (`id_prodi_fak`, `id_prodi`, `id_fakultas`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-12-04 08:36:27', '0000-00-00 00:00:00'),
(2, 2, 1, '2018-12-04 08:38:57', '0000-00-00 00:00:00'),
(3, 3, 2, '2018-12-04 08:40:01', '0000-00-00 00:00:00'),
(4, 4, 2, '2018-12-04 08:41:12', '0000-00-00 00:00:00'),
(5, 5, 2, '2018-12-04 08:41:30', '0000-00-00 00:00:00'),
(6, 6, 2, '2018-12-04 08:42:03', '0000-00-00 00:00:00'),
(7, 7, 2, '2018-12-04 08:42:19', '0000-00-00 00:00:00'),
(8, 8, 2, '2018-12-04 08:42:43', '0000-00-00 00:00:00'),
(9, 9, 2, '2018-12-04 08:43:07', '0000-00-00 00:00:00'),
(10, 10, 3, '2018-12-04 08:43:54', '0000-00-00 00:00:00'),
(11, 11, 3, '2018-12-04 08:44:16', '0000-00-00 00:00:00'),
(12, 12, 3, '2018-12-04 08:44:32', '0000-00-00 00:00:00'),
(13, 13, 4, '2018-12-04 08:45:23', '0000-00-00 00:00:00'),
(14, 14, 4, '2018-12-04 08:45:34', '0000-00-00 00:00:00'),
(15, 15, 5, '2018-12-04 08:46:34', '0000-00-00 00:00:00'),
(16, 16, 5, '2018-12-04 08:47:04', '0000-00-00 00:00:00'),
(17, 17, 5, '2018-12-04 08:47:29', '0000-00-00 00:00:00'),
(18, 18, 5, '2018-12-04 08:47:51', '0000-00-00 00:00:00'),
(19, 19, 5, '2018-12-04 08:48:15', '0000-00-00 00:00:00'),
(20, 20, 6, '2018-12-04 08:48:48', '0000-00-00 00:00:00'),
(21, 21, 6, '2018-12-04 08:49:06', '0000-00-00 00:00:00'),
(39, 39, 8, '2018-12-04 08:56:46', '0000-00-00 00:00:00'),
(40, 40, 8, '2018-12-04 08:56:58', '0000-00-00 00:00:00'),
(41, 41, 8, '2018-12-04 08:57:16', '0000-00-00 00:00:00'),
(42, 42, 8, '2018-12-04 08:57:38', '0000-00-00 00:00:00'),
(43, 43, 8, '2018-12-04 08:57:49', '0000-00-00 00:00:00'),
(44, 44, 8, '2018-12-04 08:58:00', '0000-00-00 00:00:00'),
(45, 45, 8, '2018-12-04 08:58:37', '0000-00-00 00:00:00'),
(46, 46, 8, '2018-12-04 08:59:16', '0000-00-00 00:00:00'),
(47, 47, 8, '2018-12-04 08:59:32', '0000-00-00 00:00:00'),
(48, 48, 8, '2018-12-04 08:59:48', '0000-00-00 00:00:00'),
(49, 49, 8, '2018-12-04 09:00:00', '0000-00-00 00:00:00'),
(50, 50, 8, '2018-12-04 09:00:15', '0000-00-00 00:00:00'),
(51, 51, 8, '2018-12-04 09:00:27', '0000-00-00 00:00:00'),
(52, 52, 9, '2018-12-04 09:01:36', '0000-00-00 00:00:00'),
(53, 53, 9, '2018-12-04 09:01:57', '0000-00-00 00:00:00'),
(54, 54, 9, '2018-12-04 09:02:38', '0000-00-00 00:00:00'),
(55, 55, 9, '2018-12-04 09:02:50', '0000-00-00 00:00:00'),
(56, 56, 10, '2018-12-04 09:04:10', '0000-00-00 00:00:00'),
(57, 57, 10, '2018-12-04 09:04:36', '0000-00-00 00:00:00'),
(58, 58, 11, '2018-12-04 09:09:12', '0000-00-00 00:00:00'),
(59, 59, 11, '2018-12-04 09:09:46', '0000-00-00 00:00:00'),
(60, 60, 11, '2018-12-04 09:10:02', '0000-00-00 00:00:00'),
(61, 61, 11, '2018-12-04 09:10:52', '0000-00-00 00:00:00'),
(62, 62, 11, '2018-12-04 09:11:13', '0000-00-00 00:00:00'),
(63, 63, 11, '2018-12-04 09:11:31', '0000-00-00 00:00:00'),
(64, 64, 11, '2018-12-04 09:12:01', '0000-00-00 00:00:00'),
(65, 65, 11, '2018-12-04 09:12:28', '0000-00-00 00:00:00'),
(66, 66, 12, '2018-12-04 09:13:30', '0000-00-00 00:00:00'),
(67, 67, 12, '2018-12-04 09:13:42', '0000-00-00 00:00:00'),
(68, 68, 13, '2018-12-04 09:14:36', '0000-00-00 00:00:00'),
(69, 69, 13, '2018-12-04 09:24:21', '0000-00-00 00:00:00'),
(70, 70, 13, '2018-12-04 09:24:56', '0000-00-00 00:00:00'),
(71, 71, 13, '2018-12-04 09:25:15', '0000-00-00 00:00:00'),
(72, 72, 13, '2018-12-04 09:25:25', '0000-00-00 00:00:00'),
(73, 73, 13, '2018-12-04 09:25:38', '0000-00-00 00:00:00'),
(74, 74, 13, '2018-12-04 09:25:52', '0000-00-00 00:00:00'),
(75, 75, 13, '2018-12-04 09:26:19', '0000-00-00 00:00:00'),
(76, 76, 13, '2018-12-04 09:26:31', '0000-00-00 00:00:00'),
(77, 77, 13, '2018-12-04 09:26:44', '0000-00-00 00:00:00'),
(78, 78, 13, '2018-12-04 09:26:58', '0000-00-00 00:00:00'),
(79, 79, 14, '2018-12-04 09:27:51', '0000-00-00 00:00:00'),
(80, 80, 14, '2018-12-04 09:28:08', '0000-00-00 00:00:00'),
(81, 81, 14, '2018-12-04 09:28:23', '0000-00-00 00:00:00'),
(82, 82, 14, '2018-12-04 09:28:52', '0000-00-00 00:00:00'),
(83, 83, 14, '2018-12-04 09:29:11', '0000-00-00 00:00:00'),
(84, 84, 14, '2018-12-04 09:29:29', '0000-00-00 00:00:00'),
(85, 85, 14, '2018-12-04 09:29:54', '0000-00-00 00:00:00'),
(86, 86, 14, '2018-12-04 09:30:30', '0000-00-00 00:00:00'),
(87, 87, 14, '2018-12-04 09:30:53', '0000-00-00 00:00:00'),
(88, 88, 14, '2018-12-04 09:32:51', '0000-00-00 00:00:00'),
(89, 89, 14, '2018-12-04 09:33:07', '0000-00-00 00:00:00'),
(90, 90, 14, '2018-12-04 09:33:22', '0000-00-00 00:00:00'),
(91, 91, 14, '2018-12-04 09:33:58', '0000-00-00 00:00:00'),
(92, 92, 14, '2018-12-04 09:34:12', '0000-00-00 00:00:00'),
(93, 93, 14, '2018-12-04 09:34:26', '0000-00-00 00:00:00'),
(94, 94, 14, '2018-12-04 09:34:48', '0000-00-00 00:00:00'),
(95, 95, 14, '2018-12-04 09:35:15', '0000-00-00 00:00:00'),
(96, 96, 15, '2018-12-04 09:37:22', '0000-00-00 00:00:00'),
(97, 97, 15, '2018-12-04 09:37:54', '0000-00-00 00:00:00'),
(98, 98, 16, '2018-12-04 09:40:25', '0000-00-00 00:00:00'),
(99, 99, 16, '2018-12-04 09:40:39', '0000-00-00 00:00:00'),
(100, 100, 17, '2018-12-04 09:41:56', '0000-00-00 00:00:00'),
(101, 101, 17, '2018-12-04 09:42:25', '0000-00-00 00:00:00'),
(102, 102, 17, '2018-12-04 09:42:55', '0000-00-00 00:00:00'),
(103, 103, 17, '2018-12-04 09:43:40', '0000-00-00 00:00:00'),
(104, 104, 17, '2018-12-04 09:43:56', '0000-00-00 00:00:00'),
(105, 105, 17, '2018-12-04 09:44:15', '0000-00-00 00:00:00'),
(106, 106, 17, '2018-12-04 09:44:32', '0000-00-00 00:00:00'),
(107, 107, 17, '2018-12-04 09:44:47', '0000-00-00 00:00:00'),
(108, 108, 17, '2018-12-04 09:45:04', '0000-00-00 00:00:00'),
(109, 109, 17, '2018-12-04 09:45:18', '0000-00-00 00:00:00'),
(110, 110, 17, '2018-12-04 09:45:58', '0000-00-00 00:00:00'),
(111, 111, 17, '2018-12-04 09:46:23', '0000-00-00 00:00:00'),
(112, 112, 17, '2018-12-04 09:46:47', '0000-00-00 00:00:00'),
(113, 113, 17, '2018-12-04 09:47:08', '0000-00-00 00:00:00'),
(114, 114, 17, '2018-12-04 09:47:24', '0000-00-00 00:00:00'),
(115, 115, 17, '2018-12-04 09:47:44', '0000-00-00 00:00:00'),
(116, 116, 17, '2018-12-04 09:48:18', '0000-00-00 00:00:00'),
(117, 117, 17, '2018-12-04 09:49:15', '0000-00-00 00:00:00'),
(118, 118, 17, '2018-12-04 09:49:29', '0000-00-00 00:00:00'),
(119, 119, 17, '2018-12-04 09:49:52', '0000-00-00 00:00:00'),
(120, 120, 17, '2018-12-04 09:50:24', '0000-00-00 00:00:00'),
(121, 121, 17, '2018-12-04 09:50:50', '0000-00-00 00:00:00'),
(122, 122, 17, '2018-12-04 09:51:02', '0000-00-00 00:00:00'),
(123, 123, 17, '2018-12-04 09:51:19', '0000-00-00 00:00:00'),
(124, 124, 18, '2018-12-04 09:53:22', '0000-00-00 00:00:00'),
(125, 125, 18, '2018-12-04 09:53:41', '0000-00-00 00:00:00'),
(126, 126, 18, '2018-12-04 09:54:30', '0000-00-00 00:00:00'),
(127, 127, 18, '2018-12-04 09:55:11', '0000-00-00 00:00:00'),
(128, 128, 18, '2018-12-04 09:55:33', '0000-00-00 00:00:00'),
(129, 129, 18, '2018-12-04 09:56:18', '0000-00-00 00:00:00'),
(130, 130, 18, '2018-12-04 09:56:33', '0000-00-00 00:00:00'),
(131, 131, 19, '2018-12-04 09:58:04', '0000-00-00 00:00:00'),
(132, 132, 19, '2018-12-04 09:58:24', '0000-00-00 00:00:00'),
(133, 133, 19, '2018-12-04 09:58:37', '0000-00-00 00:00:00'),
(134, 134, 19, '2018-12-04 09:58:49', '0000-00-00 00:00:00'),
(135, 135, 19, '2018-12-04 09:59:18', '0000-00-00 00:00:00'),
(136, 136, 19, '2018-12-04 09:59:32', '0000-00-00 00:00:00'),
(137, 137, 19, '2018-12-04 09:59:47', '0000-00-00 00:00:00'),
(138, 138, 19, '2018-12-04 10:00:09', '0000-00-00 00:00:00'),
(139, 139, 19, '2018-12-04 10:00:34', '0000-00-00 00:00:00'),
(140, 140, 19, '2018-12-04 10:00:49', '0000-00-00 00:00:00'),
(141, 141, 19, '2018-12-04 10:01:01', '0000-00-00 00:00:00'),
(142, 142, 19, '2018-12-04 10:01:14', '0000-00-00 00:00:00'),
(143, 143, 19, '2018-12-04 10:01:28', '0000-00-00 00:00:00'),
(144, 144, 20, '2018-12-04 10:05:02', '0000-00-00 00:00:00'),
(145, 145, 20, '2018-12-04 10:05:17', '0000-00-00 00:00:00'),
(146, 146, 20, '2018-12-04 10:05:28', '0000-00-00 00:00:00'),
(147, 147, 20, '2018-12-04 10:06:12', '0000-00-00 00:00:00'),
(148, 148, 20, '2018-12-04 10:06:24', '0000-00-00 00:00:00'),
(149, 149, 20, '2018-12-04 10:06:37', '0000-00-00 00:00:00'),
(150, 150, 20, '2018-12-04 10:06:56', '0000-00-00 00:00:00'),
(151, 151, 20, '2018-12-04 10:07:07', '0000-00-00 00:00:00'),
(152, 152, 20, '2018-12-04 10:07:19', '0000-00-00 00:00:00'),
(153, 153, 20, '2018-12-04 10:07:33', '0000-00-00 00:00:00'),
(154, 154, 20, '2018-12-04 10:07:52', '0000-00-00 00:00:00'),
(155, 155, 20, '2018-12-04 10:08:10', '0000-00-00 00:00:00'),
(156, 156, 20, '2018-12-04 10:08:27', '0000-00-00 00:00:00'),
(157, 157, 20, '2018-12-04 10:08:37', '0000-00-00 00:00:00'),
(158, 158, 20, '2018-12-04 10:08:47', '0000-00-00 00:00:00'),
(159, 159, 20, '2018-12-04 10:08:57', '0000-00-00 00:00:00'),
(160, 160, 20, '2018-12-04 10:09:31', '0000-00-00 00:00:00'),
(161, 161, 20, '2018-12-04 10:27:48', '0000-00-00 00:00:00'),
(162, 162, 20, '2018-12-04 10:27:58', '0000-00-00 00:00:00'),
(163, 163, 20, '2018-12-04 10:28:09', '0000-00-00 00:00:00'),
(164, 164, 20, '2018-12-04 10:28:19', '0000-00-00 00:00:00'),
(165, 165, 20, '2018-12-04 10:28:30', '0000-00-00 00:00:00'),
(166, 166, 20, '2018-12-04 10:28:48', '0000-00-00 00:00:00'),
(167, 167, 20, '2018-12-04 10:28:58', '0000-00-00 00:00:00'),
(168, 168, 21, '2018-12-19 08:36:10', '0000-00-00 00:00:00'),
(169, 169, 21, '2018-12-19 08:36:24', '0000-00-00 00:00:00'),
(170, 170, 21, '2018-12-19 08:36:52', '0000-00-00 00:00:00'),
(171, 171, 21, '2018-12-19 08:37:10', '0000-00-00 00:00:00'),
(172, 172, 22, '2018-12-19 08:37:39', '0000-00-00 00:00:00'),
(173, 173, 22, '2018-12-19 08:37:49', '0000-00-00 00:00:00'),
(174, 174, 22, '2018-12-19 08:38:01', '0000-00-00 00:00:00'),
(175, 175, 22, '2018-12-19 08:38:12', '0000-00-00 00:00:00'),
(176, 176, 23, '2018-12-19 08:38:42', '0000-00-00 00:00:00'),
(177, 177, 23, '2018-12-19 08:38:52', '0000-00-00 00:00:00'),
(178, 178, 23, '2018-12-19 08:39:03', '0000-00-00 00:00:00'),
(179, 179, 23, '2018-12-19 08:39:25', '0000-00-00 00:00:00'),
(180, 180, 23, '2018-12-19 08:39:37', '0000-00-00 00:00:00'),
(181, 181, 24, '2018-12-19 08:40:29', '0000-00-00 00:00:00'),
(182, 182, 24, '2018-12-19 08:40:43', '0000-00-00 00:00:00'),
(183, 183, 24, '2018-12-19 08:40:57', '0000-00-00 00:00:00'),
(184, 184, 24, '2018-12-19 08:42:08', '0000-00-00 00:00:00'),
(185, 185, 24, '2018-12-19 08:42:26', '0000-00-00 00:00:00'),
(186, 186, 24, '2018-12-19 08:42:38', '0000-00-00 00:00:00'),
(187, 187, 25, '2018-12-19 08:43:41', '0000-00-00 00:00:00'),
(188, 188, 25, '2018-12-19 08:43:54', '0000-00-00 00:00:00'),
(189, 189, 25, '2018-12-19 08:44:07', '0000-00-00 00:00:00'),
(190, 190, 26, '2018-12-19 08:44:40', '0000-00-00 00:00:00'),
(191, 191, 26, '2018-12-19 08:44:55', '0000-00-00 00:00:00'),
(192, 192, 26, '2018-12-19 08:45:08', '0000-00-00 00:00:00'),
(193, 193, 26, '2018-12-19 08:45:22', '0000-00-00 00:00:00'),
(194, 194, 27, '2018-12-19 08:47:15', '0000-00-00 00:00:00'),
(195, 195, 27, '2018-12-19 08:47:31', '0000-00-00 00:00:00'),
(196, 196, 27, '2018-12-19 08:47:57', '0000-00-00 00:00:00'),
(197, 197, 27, '2018-12-19 08:50:36', '0000-00-00 00:00:00'),
(198, 198, 27, '2018-12-19 08:51:15', '0000-00-00 00:00:00'),
(199, 199, 29, '2018-12-19 08:51:53', '0000-00-00 00:00:00'),
(200, 200, 29, '2018-12-19 08:52:08', '0000-00-00 00:00:00'),
(201, 201, 30, '2018-12-19 08:52:33', '0000-00-00 00:00:00'),
(202, 202, 30, '2018-12-19 08:53:38', '0000-00-00 00:00:00'),
(203, 203, 31, '2018-12-19 08:57:39', '0000-00-00 00:00:00'),
(204, 204, 31, '2018-12-19 08:57:52', '0000-00-00 00:00:00'),
(205, 205, 32, '2018-12-19 08:59:08', '0000-00-00 00:00:00'),
(206, 206, 32, '2018-12-19 08:59:23', '0000-00-00 00:00:00'),
(207, 207, 32, '2018-12-19 08:59:35', '0000-00-00 00:00:00'),
(208, 208, 32, '2018-12-19 08:59:47', '0000-00-00 00:00:00'),
(209, 209, 32, '2018-12-19 09:00:04', '0000-00-00 00:00:00'),
(210, 210, 32, '2018-12-19 09:01:49', '0000-00-00 00:00:00'),
(211, 211, 33, '2018-12-19 09:20:26', '0000-00-00 00:00:00'),
(212, 212, 33, '2018-12-19 09:20:38', '0000-00-00 00:00:00'),
(213, 213, 33, '2018-12-19 09:20:55', '0000-00-00 00:00:00'),
(214, 214, 33, '2018-12-19 09:21:10', '0000-00-00 00:00:00'),
(215, 215, 33, '2018-12-19 09:21:23', '0000-00-00 00:00:00'),
(216, 216, 33, '2018-12-19 09:21:35', '0000-00-00 00:00:00'),
(217, 217, 21, '2018-12-19 09:23:26', '0000-00-00 00:00:00'),
(218, 218, 21, '2018-12-19 09:23:56', '0000-00-00 00:00:00'),
(219, 219, 21, '2018-12-19 09:24:32', '0000-00-00 00:00:00'),
(220, 220, 21, '2018-12-19 09:24:51', '0000-00-00 00:00:00'),
(221, 221, 21, '2018-12-19 09:25:05', '0000-00-00 00:00:00'),
(222, 222, 21, '2018-12-19 09:25:15', '0000-00-00 00:00:00'),
(223, 223, 21, '2018-12-19 09:25:25', '0000-00-00 00:00:00'),
(224, 224, 21, '2018-12-19 09:25:36', '0000-00-00 00:00:00'),
(225, 225, 21, '2018-12-19 09:25:47', '0000-00-00 00:00:00'),
(226, 226, 21, '2018-12-19 09:26:10', '0000-00-00 00:00:00'),
(227, 227, 21, '2018-12-19 09:26:26', '0000-00-00 00:00:00'),
(228, 228, 21, '2018-12-19 09:26:40', '0000-00-00 00:00:00'),
(229, 229, 21, '2018-12-19 09:26:55', '0000-00-00 00:00:00'),
(230, 230, 23, '2018-12-19 09:27:19', '0000-00-00 00:00:00'),
(231, 231, 23, '2018-12-19 09:27:29', '0000-00-00 00:00:00'),
(232, 232, 24, '2018-12-19 09:28:13', '0000-00-00 00:00:00'),
(233, 233, 24, '2018-12-19 09:28:25', '0000-00-00 00:00:00'),
(234, 234, 24, '2018-12-19 09:28:47', '0000-00-00 00:00:00'),
(235, 235, 24, '2018-12-19 09:30:45', '0000-00-00 00:00:00'),
(236, 236, 24, '2018-12-19 09:30:56', '0000-00-00 00:00:00'),
(237, 237, 25, '2018-12-19 09:32:22', '0000-00-00 00:00:00'),
(238, 238, 25, '2018-12-19 09:32:39', '0000-00-00 00:00:00'),
(239, 239, 25, '2018-12-19 09:32:50', '0000-00-00 00:00:00'),
(240, 240, 25, '2018-12-19 09:33:22', '0000-00-00 00:00:00'),
(241, 241, 26, '2018-12-19 09:33:55', '0000-00-00 00:00:00'),
(242, 242, 26, '2018-12-19 09:35:13', '0000-00-00 00:00:00'),
(243, 243, 26, '2018-12-19 09:35:45', '0000-00-00 00:00:00'),
(244, 244, 26, '2018-12-19 09:35:58', '0000-00-00 00:00:00'),
(245, 245, 26, '2018-12-19 09:36:15', '0000-00-00 00:00:00'),
(246, 246, 27, '2018-12-19 09:41:17', '0000-00-00 00:00:00'),
(247, 247, 27, '2018-12-19 09:41:17', '0000-00-00 00:00:00'),
(248, 248, 27, '2018-12-19 09:41:38', '0000-00-00 00:00:00'),
(249, 249, 27, '2018-12-19 09:42:19', '0000-00-00 00:00:00'),
(250, 250, 27, '2018-12-19 09:42:48', '0000-00-00 00:00:00'),
(251, 251, 27, '2018-12-19 09:43:05', '0000-00-00 00:00:00'),
(252, 252, 27, '2018-12-19 09:43:22', '0000-00-00 00:00:00'),
(253, 253, 29, '2018-12-19 09:43:46', '0000-00-00 00:00:00'),
(254, 254, 29, '2018-12-19 09:44:36', '0000-00-00 00:00:00'),
(255, 255, 29, '2018-12-19 09:44:53', '0000-00-00 00:00:00'),
(256, 256, 29, '2018-12-19 09:45:15', '0000-00-00 00:00:00'),
(257, 257, 29, '2018-12-19 09:45:27', '0000-00-00 00:00:00'),
(258, 258, 29, '2018-12-19 09:46:12', '0000-00-00 00:00:00'),
(259, 259, 29, '2018-12-19 09:46:34', '0000-00-00 00:00:00'),
(260, 260, 29, '2018-12-19 09:46:48', '0000-00-00 00:00:00'),
(261, 261, 30, '2018-12-19 09:47:20', '0000-00-00 00:00:00'),
(262, 262, 30, '2018-12-19 09:47:34', '0000-00-00 00:00:00'),
(263, 263, 31, '2018-12-19 09:47:53', '0000-00-00 00:00:00'),
(264, 264, 31, '2018-12-19 09:48:06', '0000-00-00 00:00:00'),
(265, 265, 31, '2018-12-19 09:48:18', '0000-00-00 00:00:00'),
(266, 266, 32, '2018-12-19 09:48:45', '0000-00-00 00:00:00'),
(267, 267, 32, '2018-12-19 09:48:56', '0000-00-00 00:00:00'),
(268, 268, 32, '2018-12-19 09:49:08', '0000-00-00 00:00:00'),
(269, 269, 33, '2018-12-19 09:49:42', '0000-00-00 00:00:00'),
(270, 270, 33, '2018-12-19 09:49:54', '0000-00-00 00:00:00'),
(271, 271, 21, '2018-12-19 09:51:14', '0000-00-00 00:00:00'),
(272, 272, 21, '2018-12-19 09:51:37', '0000-00-00 00:00:00'),
(273, 273, 21, '2018-12-19 09:51:49', '0000-00-00 00:00:00'),
(274, 274, 22, '2018-12-19 09:52:16', '0000-00-00 00:00:00'),
(275, 275, 22, '2018-12-19 09:52:26', '0000-00-00 00:00:00'),
(276, 276, 22, '2018-12-19 09:52:36', '0000-00-00 00:00:00'),
(277, 277, 22, '2018-12-19 09:52:46', '0000-00-00 00:00:00'),
(278, 278, 23, '2018-12-19 09:53:22', '0000-00-00 00:00:00'),
(279, 279, 24, '2018-12-19 09:53:52', '0000-00-00 00:00:00'),
(280, 280, 24, '2018-12-19 09:54:05', '0000-00-00 00:00:00'),
(281, 281, 24, '2018-12-19 09:54:15', '0000-00-00 00:00:00'),
(282, 282, 25, '2018-12-19 09:54:36', '0000-00-00 00:00:00'),
(283, 283, 25, '2018-12-19 09:55:00', '0000-00-00 00:00:00'),
(284, 284, 25, '2018-12-19 09:55:17', '0000-00-00 00:00:00'),
(285, 285, 25, '2018-12-19 09:55:29', '0000-00-00 00:00:00'),
(286, 286, 26, '2018-12-19 09:56:04', '0000-00-00 00:00:00'),
(287, 287, 26, '2018-12-19 09:56:19', '0000-00-00 00:00:00'),
(288, 288, 26, '2018-12-19 09:56:42', '0000-00-00 00:00:00'),
(289, 289, 27, '2018-12-19 09:57:08', '0000-00-00 00:00:00'),
(290, 290, 27, '2018-12-19 09:57:18', '0000-00-00 00:00:00'),
(291, 291, 29, '2018-12-19 09:57:43', '0000-00-00 00:00:00'),
(292, 292, 29, '2018-12-19 09:57:59', '0000-00-00 00:00:00'),
(293, 293, 29, '2018-12-19 09:58:10', '0000-00-00 00:00:00'),
(294, 294, 30, '2018-12-19 09:58:33', '0000-00-00 00:00:00'),
(295, 295, 31, '2018-12-19 09:59:15', '0000-00-00 00:00:00'),
(296, 296, 32, '2018-12-19 09:59:47', '0000-00-00 00:00:00'),
(297, 297, 33, '2018-12-19 10:00:28', '0000-00-00 00:00:00'),
(298, 301, 42, '2019-02-01 12:33:22', '0000-00-00 00:00:00'),
(300, 303, 42, '2019-02-01 12:50:05', '0000-00-00 00:00:00'),
(301, 304, 42, '2019-02-01 13:14:48', '0000-00-00 00:00:00'),
(302, 305, 42, '2019-02-01 13:15:00', '0000-00-00 00:00:00'),
(303, 306, 44, '2019-03-30 02:56:10', '0000-00-00 00:00:00'),
(304, 307, 44, '2019-03-30 02:57:20', '0000-00-00 00:00:00'),
(305, 308, 44, '2019-03-30 03:00:04', '0000-00-00 00:00:00'),
(306, 309, 44, '2019-03-30 03:07:14', '0000-00-00 00:00:00'),
(307, 310, 44, '2019-03-30 03:08:08', '0000-00-00 00:00:00'),
(308, 311, 44, '2019-03-30 03:08:31', '0000-00-00 00:00:00'),
(309, 312, 44, '2019-03-30 03:09:08', '0000-00-00 00:00:00'),
(310, 313, 44, '2019-03-30 03:10:00', '0000-00-00 00:00:00'),
(311, 314, 44, '2019-03-30 03:10:42', '0000-00-00 00:00:00'),
(312, 315, 52, '2019-03-30 04:06:09', '0000-00-00 00:00:00'),
(313, 316, 52, '2019-03-30 04:06:39', '0000-00-00 00:00:00'),
(314, 317, 52, '2019-03-30 04:06:52', '0000-00-00 00:00:00'),
(315, 318, 52, '2019-03-30 04:07:19', '0000-00-00 00:00:00'),
(316, 319, 52, '2019-03-30 04:07:31', '0000-00-00 00:00:00'),
(317, 320, 52, '2019-03-30 04:07:58', '0000-00-00 00:00:00'),
(318, 321, 52, '2019-03-30 04:31:31', '0000-00-00 00:00:00'),
(319, 322, 52, '2019-03-30 04:32:07', '0000-00-00 00:00:00'),
(320, 323, 52, '2019-03-30 04:33:12', '0000-00-00 00:00:00'),
(321, 324, 52, '2019-03-30 04:33:30', '0000-00-00 00:00:00'),
(322, 325, 52, '2019-03-30 04:33:47', '0000-00-00 00:00:00'),
(323, 326, 52, '2019-03-30 04:33:59', '0000-00-00 00:00:00'),
(324, 327, 52, '2019-03-30 04:34:42', '0000-00-00 00:00:00'),
(325, 328, 52, '2019-03-30 04:35:09', '0000-00-00 00:00:00'),
(326, 329, 52, '2019-03-30 04:35:15', '0000-00-00 00:00:00'),
(327, 330, 52, '2019-03-30 04:35:41', '0000-00-00 00:00:00'),
(328, 331, 52, '2019-03-30 04:36:17', '0000-00-00 00:00:00'),
(329, 332, 52, '2019-03-30 04:37:14', '0000-00-00 00:00:00'),
(330, 333, 49, '2019-03-30 04:44:53', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `universitas`
--

CREATE TABLE `universitas` (
  `id_universitas` int(225) NOT NULL,
  `url_universitas` varchar(225) NOT NULL,
  `kategori_universitas` enum('Dalam Negeri','Luar Negeri','','') NOT NULL,
  `negara` varchar(50) NOT NULL,
  `gambar_universitas` varchar(50) DEFAULT NULL,
  `nama_universitas` varchar(50) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `universitas`
--

INSERT INTO `universitas` (`id_universitas`, `url_universitas`, `kategori_universitas`, `negara`, `gambar_universitas`, `nama_universitas`, `create_dtm`, `update_dtm`) VALUES
(1, 'www.ugm.ac.id.id', 'Dalam Negeri', 'Indonesia', 'ugm1.jpg', 'Universitas Gadjah Mada', '2018-12-04 08:21:08', '2019-01-31 23:15:58'),
(2, 'https://www.itb.ac.id/', 'Dalam Negeri', 'Indonesia', 'itbhome.jpg', 'Institut Teknologi Bandung', '2018-12-18 10:18:11', '2018-12-18 10:43:33'),
(3, 'www.uns.ac.id', 'Dalam Negeri', 'Indonesia', 'm4qyjarXFB.jpg', 'Universitas Sebelas Maret', '2019-01-31 22:57:49', '0000-00-00 00:00:00'),
(4, 'www.ui.ac.id', 'Dalam Negeri', 'Indonesia', 'UI_Web-Size.jpg', 'Universitas Indonesia', '2019-03-28 06:12:11', '2019-03-28 06:32:00'),
(5, 'www.its.ac.id', 'Dalam Negeri', 'Indonesia', '', 'Institut Teknologi Sepuluh November', '2019-03-28 07:30:46', '0000-00-00 00:00:00'),
(6, 'www.harvard.edu', 'Luar Negeri', 'Amerika Serikat', 'Harvard_university.jpg', 'Universitas Harvard', '2019-03-29 13:33:25', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD PRIMARY KEY (`id_beasiswa`),
  ADD KEY `beasiswa_univ_cons` (`id_beasiswa_univ`);

--
-- Indexes for table `beasiswa_umum`
--
ALTER TABLE `beasiswa_umum`
  ADD PRIMARY KEY (`id_beasiswa_umum`);

--
-- Indexes for table `beasiswa_universitas`
--
ALTER TABLE `beasiswa_universitas`
  ADD PRIMARY KEY (`id_beasiswa_univ`),
  ADD KEY `universitas_cons2` (`id_universitas`);

--
-- Indexes for table `detail_beasiswa`
--
ALTER TABLE `detail_beasiswa`
  ADD PRIMARY KEY (`id_detail_beasiswa`),
  ADD KEY `beasiswa_constrain` (`id_beasiswa`);

--
-- Indexes for table `detail_pencarian`
--
ALTER TABLE `detail_pencarian`
  ADD PRIMARY KEY (`id_detail_pencarian`),
  ADD KEY `universitas_conns` (`id_universitas`),
  ADD KEY `pencarian_cons` (`id_pencarian`);

--
-- Indexes for table `detail_universitas`
--
ALTER TABLE `detail_universitas`
  ADD PRIMARY KEY (`id_detail_universitas`),
  ADD KEY `universitas_cons1` (`id_universitas`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `fak_univ`
--
ALTER TABLE `fak_univ`
  ADD PRIMARY KEY (`id_fak_univ`),
  ADD KEY `id_fakultas` (`id_fakultas`),
  ADD KEY `id_univ` (`id_universitas`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`),
  ADD KEY `id_pencari` (`id_pencari`);

--
-- Indexes for table `konten_beasiswa`
--
ALTER TABLE `konten_beasiswa`
  ADD PRIMARY KEY (`id_konten_beasiswa_umum`);

--
-- Indexes for table `pencari`
--
ALTER TABLE `pencari`
  ADD PRIMARY KEY (`id_pencari`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `pencarian`
--
ALTER TABLE `pencarian`
  ADD PRIMARY KEY (`id_pencarian`),
  ADD KEY `pencarian_constrain` (`id_pencari`);

--
-- Indexes for table `pencarian_beasiswa`
--
ALTER TABLE `pencarian_beasiswa`
  ADD PRIMARY KEY (`id_pencarian_beasiswa`),
  ADD KEY `pencari_constrain` (`id_pencari`);

--
-- Indexes for table `pencarian_favorit`
--
ALTER TABLE `pencarian_favorit`
  ADD PRIMARY KEY (`id_pencarian_favorit`),
  ADD KEY `pencari_cons` (`id_pencari`),
  ADD KEY `universitas_const` (`id_universitas`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `prodi_fak`
--
ALTER TABLE `prodi_fak`
  ADD PRIMARY KEY (`id_prodi_fak`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indexes for table `universitas`
--
ALTER TABLE `universitas`
  ADD PRIMARY KEY (`id_universitas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `beasiswa`
--
ALTER TABLE `beasiswa`
  MODIFY `id_beasiswa` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `beasiswa_umum`
--
ALTER TABLE `beasiswa_umum`
  MODIFY `id_beasiswa_umum` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `beasiswa_universitas`
--
ALTER TABLE `beasiswa_universitas`
  MODIFY `id_beasiswa_univ` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `detail_beasiswa`
--
ALTER TABLE `detail_beasiswa`
  MODIFY `id_detail_beasiswa` int(225) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detail_pencarian`
--
ALTER TABLE `detail_pencarian`
  MODIFY `id_detail_pencarian` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `detail_universitas`
--
ALTER TABLE `detail_universitas`
  MODIFY `id_detail_universitas` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `fak_univ`
--
ALTER TABLE `fak_univ`
  MODIFY `id_fak_univ` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `pencari`
--
ALTER TABLE `pencari`
  MODIFY `id_pencari` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `pencarian`
--
ALTER TABLE `pencarian`
  MODIFY `id_pencarian` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `pencarian_beasiswa`
--
ALTER TABLE `pencarian_beasiswa`
  MODIFY `id_pencarian_beasiswa` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `pencarian_favorit`
--
ALTER TABLE `pencarian_favorit`
  MODIFY `id_pencarian_favorit` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;
--
-- AUTO_INCREMENT for table `prodi_fak`
--
ALTER TABLE `prodi_fak`
  MODIFY `id_prodi_fak` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;
--
-- AUTO_INCREMENT for table `universitas`
--
ALTER TABLE `universitas`
  MODIFY `id_universitas` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD CONSTRAINT `beasiswa_univ_cons` FOREIGN KEY (`id_beasiswa_univ`) REFERENCES `beasiswa_universitas` (`id_beasiswa_univ`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `beasiswa_universitas`
--
ALTER TABLE `beasiswa_universitas`
  ADD CONSTRAINT `universitas_cons2` FOREIGN KEY (`id_universitas`) REFERENCES `universitas` (`id_universitas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_beasiswa`
--
ALTER TABLE `detail_beasiswa`
  ADD CONSTRAINT `beasiswa_constrain` FOREIGN KEY (`id_beasiswa`) REFERENCES `beasiswa` (`id_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pencarian`
--
ALTER TABLE `detail_pencarian`
  ADD CONSTRAINT `pencarian_cons` FOREIGN KEY (`id_pencarian`) REFERENCES `pencarian` (`id_pencarian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `universitas_conns` FOREIGN KEY (`id_universitas`) REFERENCES `universitas` (`id_universitas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_universitas`
--
ALTER TABLE `detail_universitas`
  ADD CONSTRAINT `universitas_cons1` FOREIGN KEY (`id_universitas`) REFERENCES `universitas` (`id_universitas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `fak_univ`
--
ALTER TABLE `fak_univ`
  ADD CONSTRAINT `fak_univ_ibfk_1` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fak_univ_ibfk_2` FOREIGN KEY (`id_universitas`) REFERENCES `universitas` (`id_universitas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD CONSTRAINT `pencari_constrain_1` FOREIGN KEY (`id_pencari`) REFERENCES `pencari` (`id_pencari`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pencarian`
--
ALTER TABLE `pencarian`
  ADD CONSTRAINT `pencarian_constrain` FOREIGN KEY (`id_pencari`) REFERENCES `pencari` (`id_pencari`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pencarian_beasiswa`
--
ALTER TABLE `pencarian_beasiswa`
  ADD CONSTRAINT `pencari_constrain` FOREIGN KEY (`id_pencari`) REFERENCES `pencari` (`id_pencari`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pencarian_favorit`
--
ALTER TABLE `pencarian_favorit`
  ADD CONSTRAINT `pencari_cons` FOREIGN KEY (`id_pencari`) REFERENCES `pencari` (`id_pencari`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `universitas_const` FOREIGN KEY (`id_universitas`) REFERENCES `universitas` (`id_universitas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `prodi_fak`
--
ALTER TABLE `prodi_fak`
  ADD CONSTRAINT `prodi_fak_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id_prodi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prodi_fak_ibfk_2` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

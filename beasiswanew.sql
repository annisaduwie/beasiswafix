-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16 Des 2018 pada 12.45
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
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `create_dtm`, `update_dtm`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 'http://beasiswa.id/?s=universitas+gadjah+mada', 1, '2018-12-04 10:30:07', '2018-12-04 10:30:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa_umum`
--

CREATE TABLE `beasiswa_umum` (
  `id_beasiswa_umum` int(225) NOT NULL,
  `nama_beasiswa_umum` varchar(50) NOT NULL,
  `jenjang` varchar(20) DEFAULT NULL,
  `negara` varchar(50) DEFAULT NULL,
  `url_beasiswa_umum` varchar(225) NOT NULL,
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
(23, 'Beasiswa di Thailand', NULL, 'Thailand', 'http://beasiswa.id/tag/beasiswa-thailand/', '2018-12-01 07:51:44', '2018-12-01 07:51:44');

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
(1, 1, '2018-12-04 10:30:07', '2018-12-04 10:30:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_beasiswa`
--

CREATE TABLE `detail_beasiswa` (
  `id_detail_beasiswa` int(11) NOT NULL,
  `id_beasiswa` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` mediumtext,
  `url_detail` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_kategori`
--

CREATE TABLE `detail_kategori` (
  `id_detail_kategori` int(11) NOT NULL,
  `id_detail_beasiswa` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `url_kategori` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_kategori`
--

INSERT INTO `detail_kategori` (`id_detail_kategori`, `id_detail_beasiswa`, `id_kategori`, `url_kategori`, `created_at`, `updated_at`) VALUES
(15, 3, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:06:45', '2018-09-24 21:06:45'),
(16, 3, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:06:45', '2018-09-24 21:06:45'),
(17, 3, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:06:45', '2018-09-24 21:06:45'),
(18, 3, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:06:45', '2018-09-24 21:06:45'),
(19, 3, 10, 'https://ditmawa.ugm.ac.id/category/info-lomba', '2018-09-24 21:06:45', '2018-09-24 21:06:45'),
(20, 3, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:06:45', '2018-09-24 21:06:45'),
(21, 3, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:06:45', '2018-09-24 21:06:45'),
(22, 3, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:06:45', '2018-09-24 21:06:45'),
(37, 6, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(38, 6, 13, 'https://ditmawa.ugm.ac.id/category/berita-slider', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(39, 6, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(40, 6, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(41, 6, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(42, 7, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(43, 7, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(44, 7, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(45, 7, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(46, 7, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(47, 7, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(48, 7, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(49, 8, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(50, 8, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(51, 8, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(52, 8, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(53, 8, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(54, 8, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(55, 8, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(56, 8, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:54', '2018-09-24 21:07:54'),
(57, 9, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(58, 9, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(59, 9, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(60, 9, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(61, 9, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(62, 10, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(63, 10, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(64, 10, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(65, 10, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(66, 10, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(67, 10, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(68, 10, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(69, 10, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(70, 10, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(71, 11, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(72, 11, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(73, 11, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(74, 11, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(75, 12, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(76, 12, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(77, 12, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(78, 12, 13, 'https://ditmawa.ugm.ac.id/category/berita-slider', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(79, 12, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(80, 12, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(81, 12, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(82, 12, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(83, 12, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(84, 12, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(85, 12, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:07:55', '2018-09-24 21:07:55'),
(86, 22, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(87, 22, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(88, 22, 13, 'https://ditmawa.ugm.ac.id/category/berita-slider', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(89, 22, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(90, 22, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(91, 22, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(92, 22, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(93, 22, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(94, 22, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(95, 23, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(96, 23, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(97, 23, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(98, 23, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(99, 23, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(100, 23, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(101, 23, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(102, 23, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(103, 24, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(104, 24, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(105, 24, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(106, 24, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(107, 24, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(108, 24, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(109, 25, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:56', '2018-09-24 21:07:56'),
(110, 25, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(111, 25, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(112, 25, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(113, 25, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(114, 25, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(115, 25, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(116, 26, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(117, 26, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(118, 26, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(119, 26, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(120, 26, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(121, 26, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(122, 26, 14, 'https://ditmawa.ugm.ac.id/category/lowongan', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(123, 26, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(124, 27, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(125, 27, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:57', '2018-09-24 21:07:57'),
(126, 27, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(127, 27, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(128, 27, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(129, 27, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(130, 27, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(131, 28, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(132, 28, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(133, 28, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(134, 29, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(135, 29, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(136, 29, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(137, 29, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(138, 29, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(139, 29, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(140, 29, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(141, 30, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(142, 30, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(143, 30, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(144, 30, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(145, 30, 14, 'https://ditmawa.ugm.ac.id/category/lowongan', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(146, 30, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:58', '2018-09-24 21:07:58'),
(147, 31, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(148, 31, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(149, 31, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(150, 31, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(151, 32, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(152, 32, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(153, 32, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(154, 32, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(155, 32, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(156, 32, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(157, 33, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(158, 33, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(159, 33, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(160, 33, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(161, 33, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:07:59', '2018-09-24 21:07:59'),
(162, 34, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(163, 34, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(164, 34, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(165, 34, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(166, 34, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(167, 34, 15, 'https://ditmawa.ugm.ac.id/category/informasi-kreativitas', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(168, 34, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(169, 34, 16, 'https://ditmawa.ugm.ac.id/category/kegiatan-ormawa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(170, 35, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(171, 35, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(172, 35, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(173, 35, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(174, 35, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(175, 35, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(176, 36, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(177, 36, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(178, 36, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(179, 36, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(180, 36, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(181, 36, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(182, 36, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(183, 37, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(184, 37, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(185, 37, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(186, 37, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(187, 37, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(188, 37, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(189, 37, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:00', '2018-09-24 21:08:00'),
(190, 38, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(191, 38, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(192, 38, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(193, 38, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(194, 38, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(195, 39, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(196, 39, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(197, 39, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(198, 39, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(199, 39, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(200, 39, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(201, 40, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(202, 40, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(203, 40, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(204, 40, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(205, 40, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(206, 40, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(207, 40, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(208, 41, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(209, 41, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(210, 41, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(211, 41, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(212, 41, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(213, 41, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:01', '2018-09-24 21:08:01'),
(214, 42, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(215, 42, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(216, 42, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(217, 42, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(218, 42, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(219, 42, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(220, 43, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(221, 43, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(222, 43, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(223, 43, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(224, 43, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(225, 43, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(226, 43, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(227, 43, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(228, 44, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(229, 44, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(230, 44, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(231, 44, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(232, 44, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(233, 44, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(234, 44, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(235, 44, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(236, 44, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(237, 45, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(238, 45, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(239, 45, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(240, 45, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(241, 45, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(242, 45, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:02', '2018-09-24 21:08:02'),
(243, 46, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(244, 46, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(245, 46, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(246, 46, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(247, 46, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(248, 46, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(249, 46, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(250, 47, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(251, 47, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(252, 47, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(253, 47, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(254, 47, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(255, 47, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(256, 47, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(257, 48, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(258, 48, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(259, 48, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(260, 48, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(261, 48, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(262, 48, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(263, 49, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(264, 49, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(265, 49, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(266, 49, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(267, 49, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(268, 49, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:03', '2018-09-24 21:08:03'),
(269, 50, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(270, 50, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(271, 50, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(272, 50, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(273, 50, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(274, 50, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(275, 50, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(276, 50, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(277, 51, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(278, 51, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(279, 51, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(280, 51, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(281, 51, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(282, 51, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(283, 51, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(284, 52, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(285, 52, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(286, 52, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(287, 52, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(288, 53, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(289, 53, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(290, 53, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(291, 53, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(292, 53, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(293, 53, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(294, 53, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(295, 53, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:04', '2018-09-24 21:08:04'),
(296, 54, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(297, 54, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(298, 54, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(299, 54, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(300, 54, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(301, 54, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(302, 54, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(303, 55, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(304, 55, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(305, 55, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(306, 55, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(307, 55, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(308, 55, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(309, 55, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(310, 56, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(311, 56, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(312, 56, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(313, 56, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(314, 56, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(315, 56, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(316, 56, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(317, 56, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(318, 56, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(319, 57, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(320, 57, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(321, 57, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(322, 57, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(323, 57, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(324, 57, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(325, 57, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(326, 57, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:05', '2018-09-24 21:08:05'),
(327, 58, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(328, 58, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(329, 58, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(330, 58, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(331, 58, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(332, 58, 15, 'https://ditmawa.ugm.ac.id/category/informasi-kreativitas', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(333, 58, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(334, 58, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(335, 58, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(336, 58, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(337, 59, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(338, 59, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(339, 59, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(340, 59, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(341, 59, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(342, 59, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(343, 60, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(344, 60, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(345, 60, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(346, 60, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(347, 60, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(348, 60, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(349, 60, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(350, 60, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(351, 60, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(352, 61, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(353, 61, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(354, 61, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(355, 61, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(356, 61, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(357, 61, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(358, 61, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(359, 61, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:06', '2018-09-24 21:08:06'),
(360, 62, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(361, 62, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(362, 62, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(363, 62, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(364, 62, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(365, 63, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(366, 63, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(367, 63, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(368, 63, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(369, 63, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(370, 63, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(371, 64, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(372, 64, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(373, 64, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(374, 64, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(375, 64, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(376, 65, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(377, 65, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(378, 65, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(379, 65, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(380, 65, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(381, 65, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(382, 65, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:07', '2018-09-24 21:08:07'),
(383, 66, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(384, 66, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(385, 66, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(386, 66, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(387, 66, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(388, 66, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(389, 66, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(390, 67, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(391, 67, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(392, 67, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(393, 67, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(394, 67, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(395, 68, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(396, 68, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(397, 68, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(398, 68, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(399, 68, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(400, 69, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(401, 69, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(402, 69, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(403, 69, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(404, 69, 17, 'https://ditmawa.ugm.ac.id/category/buletin', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(405, 69, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(406, 69, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(407, 69, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(408, 69, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(409, 69, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(410, 69, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:08', '2018-09-24 21:08:08'),
(411, 70, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(412, 70, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(413, 70, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(414, 70, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(415, 70, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(416, 70, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(417, 70, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(418, 71, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(419, 71, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(420, 71, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(421, 71, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(422, 71, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(423, 71, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(424, 71, 16, 'https://ditmawa.ugm.ac.id/category/kegiatan-ormawa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(425, 71, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(426, 71, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(427, 71, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(428, 72, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(429, 72, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(430, 72, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(431, 72, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(432, 72, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(433, 72, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(434, 73, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(435, 73, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(436, 73, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:09', '2018-09-24 21:08:09'),
(437, 74, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(438, 74, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(439, 74, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(440, 74, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(441, 74, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(442, 75, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(443, 75, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(444, 75, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(445, 75, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(446, 75, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(447, 75, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(448, 75, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(449, 75, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(450, 75, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(451, 75, 18, 'https://ditmawa.ugm.ac.id/category/pkm', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(452, 76, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(453, 76, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(454, 76, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(455, 76, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(456, 76, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(457, 77, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(458, 77, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(459, 77, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(460, 77, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(461, 77, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:10', '2018-09-24 21:08:10'),
(462, 78, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(463, 78, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(464, 78, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(465, 78, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(466, 78, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(467, 78, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(468, 78, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(469, 78, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(470, 78, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(471, 79, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(472, 79, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(473, 79, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(474, 79, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(475, 79, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(476, 79, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(477, 79, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(478, 80, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(479, 80, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(480, 80, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(481, 80, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(482, 80, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(483, 81, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(484, 81, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(485, 81, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(486, 81, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11');
INSERT INTO `detail_kategori` (`id_detail_kategori`, `id_detail_beasiswa`, `id_kategori`, `url_kategori`, `created_at`, `updated_at`) VALUES
(487, 81, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:11', '2018-09-24 21:08:11'),
(488, 82, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(489, 82, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(490, 82, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(491, 82, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(492, 82, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(493, 82, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(494, 83, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(495, 83, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(496, 83, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(497, 83, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(498, 84, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(499, 84, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(500, 84, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(501, 84, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(502, 84, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(503, 85, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(504, 85, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(505, 85, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(506, 85, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(507, 85, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:12', '2018-09-24 21:08:12'),
(508, 86, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(509, 86, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(510, 86, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(511, 86, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(512, 86, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(513, 86, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(514, 86, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(515, 86, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(516, 87, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(517, 87, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(518, 87, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(519, 87, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(520, 87, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(521, 87, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(522, 88, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(523, 88, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(524, 88, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(525, 88, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(526, 89, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(527, 89, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(528, 89, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(529, 89, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(530, 89, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(531, 89, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:13', '2018-09-24 21:08:13'),
(532, 90, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(533, 90, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(534, 90, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(535, 90, 7, 'https://ditmawa.ugm.ac.id/category/donatur-beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(536, 90, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(537, 90, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(538, 91, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(539, 91, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(540, 91, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(541, 91, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(542, 91, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(543, 92, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(544, 92, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(545, 92, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(546, 92, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(547, 92, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(548, 92, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(549, 92, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(550, 93, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(551, 93, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(552, 93, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(553, 93, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(554, 93, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(555, 93, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:14', '2018-09-24 21:08:14'),
(556, 94, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(557, 94, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(558, 94, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(559, 94, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(560, 94, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(561, 95, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(562, 95, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(563, 95, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(564, 95, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(565, 96, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(566, 96, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(567, 96, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(568, 96, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(569, 96, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(570, 96, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(571, 96, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(572, 97, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(573, 97, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(574, 97, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(575, 97, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(576, 97, 11, 'https://ditmawa.ugm.ac.id/category/informasi', '2018-09-24 21:08:15', '2018-09-24 21:08:15'),
(577, 98, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(578, 98, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(579, 98, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(580, 98, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(581, 99, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(582, 99, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(583, 100, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(584, 100, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(585, 100, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(586, 100, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(587, 101, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(588, 101, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(589, 101, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(590, 101, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:16', '2018-09-24 21:08:16'),
(591, 102, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(592, 102, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(593, 102, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(594, 102, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(595, 102, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(596, 103, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(597, 103, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(598, 103, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(599, 103, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(600, 103, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(601, 103, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(602, 103, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(603, 104, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(604, 104, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(605, 104, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(606, 104, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(607, 105, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(608, 105, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(609, 105, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(610, 105, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(611, 105, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(612, 105, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:17', '2018-09-24 21:08:17'),
(613, 106, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(614, 106, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(615, 106, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(616, 107, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(617, 107, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(618, 107, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(619, 107, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(620, 107, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(621, 108, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(622, 108, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(623, 108, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(624, 108, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(625, 109, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(626, 109, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(627, 109, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(628, 109, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(629, 109, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:18', '2018-09-24 21:08:18'),
(630, 110, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(631, 110, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(632, 110, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(633, 110, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(634, 111, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(635, 111, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(636, 111, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(637, 111, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(638, 112, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(639, 112, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(640, 112, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(641, 112, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(642, 113, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(643, 113, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(644, 113, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(645, 113, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:19', '2018-09-24 21:08:19'),
(646, 114, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(647, 114, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(648, 114, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(649, 114, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(650, 114, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(651, 115, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(652, 115, 3, 'https://ditmawa.ugm.ac.id/category/berita-slider-km', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(653, 115, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(654, 115, 6, 'https://ditmawa.ugm.ac.id/category/kesejahteraan', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(655, 116, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(656, 116, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(657, 116, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(658, 117, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:20', '2018-09-24 21:08:20'),
(659, 117, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(660, 117, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(661, 118, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(662, 118, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(663, 119, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(664, 119, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(665, 119, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(666, 119, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(667, 120, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(668, 120, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(669, 120, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(670, 120, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(671, 121, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(672, 121, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(673, 121, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(674, 121, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:21', '2018-09-24 21:08:21'),
(675, 122, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(676, 122, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(677, 122, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(678, 123, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(679, 123, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(680, 123, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(681, 124, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(682, 124, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(683, 124, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(684, 125, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(685, 125, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(686, 125, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:22', '2018-09-24 21:08:22'),
(687, 126, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(688, 126, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(689, 126, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(690, 127, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(691, 127, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(692, 127, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(693, 128, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(694, 128, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(695, 128, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(696, 129, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(697, 129, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(698, 129, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:23', '2018-09-24 21:08:23'),
(699, 130, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(700, 130, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(701, 130, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(702, 131, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(703, 131, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(704, 131, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(705, 132, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(706, 132, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(707, 132, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(708, 133, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(709, 133, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(710, 133, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:24', '2018-09-24 21:08:24'),
(711, 134, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(712, 134, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(713, 134, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(714, 135, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(715, 135, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(716, 135, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(717, 135, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(718, 136, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(719, 136, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(720, 136, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(721, 137, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(722, 137, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(723, 137, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:25', '2018-09-24 21:08:25'),
(724, 138, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(725, 138, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(726, 138, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(727, 139, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(728, 139, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(729, 139, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(730, 140, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(731, 140, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(732, 140, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(733, 141, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(734, 141, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(735, 141, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:26', '2018-09-24 21:08:26'),
(736, 142, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(737, 142, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(738, 142, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(739, 142, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(740, 143, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(741, 143, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(742, 143, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(743, 144, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(744, 144, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(745, 144, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(746, 145, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(747, 145, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(748, 145, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(749, 145, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:27', '2018-09-24 21:08:27'),
(750, 146, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(751, 146, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(752, 146, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(753, 147, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(754, 147, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(755, 147, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(756, 148, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(757, 148, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(758, 148, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(759, 148, 5, 'https://ditmawa.ugm.ac.id/category/kegiatan', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(760, 149, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(761, 149, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(762, 149, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:28', '2018-09-24 21:08:28'),
(763, 150, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(764, 150, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(765, 151, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(766, 151, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(767, 151, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(768, 152, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(769, 152, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(770, 153, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(771, 153, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(772, 153, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(773, 154, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(774, 154, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(775, 155, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(776, 155, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(777, 156, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(778, 156, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(779, 156, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(780, 157, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(781, 157, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(782, 157, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(783, 157, 18, 'https://ditmawa.ugm.ac.id/category/pkm', '2018-09-24 21:08:29', '2018-09-24 21:08:29'),
(784, 158, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:30', '2018-09-24 21:08:30'),
(785, 158, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:30', '2018-09-24 21:08:30'),
(786, 159, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:30', '2018-09-24 21:08:30'),
(787, 159, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:30', '2018-09-24 21:08:30'),
(788, 160, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:30', '2018-09-24 21:08:30'),
(789, 160, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:30', '2018-09-24 21:08:30'),
(790, 161, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:30', '2018-09-24 21:08:30'),
(791, 161, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:30', '2018-09-24 21:08:30'),
(792, 161, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:30', '2018-09-24 21:08:30'),
(793, 161, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:30', '2018-09-24 21:08:30'),
(794, 162, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(795, 162, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(796, 162, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(797, 163, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(798, 163, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(799, 163, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(800, 163, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(801, 164, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(802, 164, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(803, 164, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(804, 165, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(805, 165, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(806, 165, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:31', '2018-09-24 21:08:31'),
(807, 166, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(808, 166, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(809, 166, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(810, 167, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(811, 167, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(812, 167, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(813, 168, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(814, 168, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(815, 168, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(816, 168, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(817, 169, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(818, 169, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(819, 169, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(820, 169, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:32', '2018-09-24 21:08:32'),
(821, 170, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(822, 170, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(823, 170, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(824, 171, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(825, 171, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(826, 171, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(827, 172, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(828, 172, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(829, 172, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(830, 173, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(831, 173, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(832, 173, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:33', '2018-09-24 21:08:33'),
(833, 174, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:34', '2018-09-24 21:08:34'),
(834, 174, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:34', '2018-09-24 21:08:34'),
(835, 174, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:34', '2018-09-24 21:08:34'),
(836, 175, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:34', '2018-09-24 21:08:34'),
(837, 175, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:34', '2018-09-24 21:08:34'),
(838, 176, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:34', '2018-09-24 21:08:34'),
(839, 176, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:34', '2018-09-24 21:08:34'),
(840, 176, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:34', '2018-09-24 21:08:34'),
(841, 177, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:34', '2018-09-24 21:08:34'),
(842, 177, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:34', '2018-09-24 21:08:34'),
(843, 177, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:34', '2018-09-24 21:08:34'),
(844, 178, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(845, 178, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(846, 178, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(847, 179, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(848, 179, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(849, 179, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(850, 180, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(851, 180, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(852, 180, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(853, 181, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(854, 181, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(855, 181, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:35', '2018-09-24 21:08:35'),
(856, 182, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(857, 182, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(858, 182, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(859, 183, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(860, 183, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(861, 183, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(862, 183, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(863, 184, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(864, 184, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(865, 185, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(866, 185, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(867, 185, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(868, 186, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(869, 186, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(870, 186, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(871, 187, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(872, 187, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(873, 188, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(874, 188, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(875, 188, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(876, 189, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(877, 189, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(878, 189, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:36', '2018-09-24 21:08:36'),
(879, 190, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(880, 190, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(881, 190, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(882, 191, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(883, 191, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(884, 191, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(885, 192, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(886, 192, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(887, 192, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(888, 193, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(889, 193, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(890, 193, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(891, 193, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(892, 193, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:37', '2018-09-24 21:08:37'),
(893, 194, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(894, 194, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(895, 194, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(896, 195, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(897, 195, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(898, 195, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(899, 196, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(900, 196, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(901, 196, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(902, 196, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(903, 197, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(904, 197, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(905, 197, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:38', '2018-09-24 21:08:38'),
(906, 198, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(907, 198, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(908, 198, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(909, 199, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(910, 199, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(911, 199, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(912, 200, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(913, 200, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(914, 200, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(915, 201, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(916, 201, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(917, 201, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(918, 201, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:39', '2018-09-24 21:08:39'),
(919, 202, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(920, 202, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(921, 202, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(922, 203, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(923, 203, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(924, 203, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(925, 204, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(926, 204, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(927, 204, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(928, 204, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(929, 205, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(930, 205, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(931, 205, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:40', '2018-09-24 21:08:40'),
(932, 206, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:41', '2018-09-24 21:08:41'),
(933, 206, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:41', '2018-09-24 21:08:41'),
(934, 206, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:41', '2018-09-24 21:08:41'),
(935, 207, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:41', '2018-09-24 21:08:41'),
(936, 207, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:41', '2018-09-24 21:08:41'),
(937, 207, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:41', '2018-09-24 21:08:41'),
(938, 208, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:41', '2018-09-24 21:08:41'),
(939, 208, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:41', '2018-09-24 21:08:41'),
(940, 209, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:41', '2018-09-24 21:08:41'),
(941, 209, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:41', '2018-09-24 21:08:41'),
(942, 209, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:41', '2018-09-24 21:08:41'),
(943, 210, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:42', '2018-09-24 21:08:42'),
(944, 210, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:42', '2018-09-24 21:08:42'),
(945, 211, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:42', '2018-09-24 21:08:42'),
(946, 211, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:42', '2018-09-24 21:08:42'),
(947, 212, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:42', '2018-09-24 21:08:42');
INSERT INTO `detail_kategori` (`id_detail_kategori`, `id_detail_beasiswa`, `id_kategori`, `url_kategori`, `created_at`, `updated_at`) VALUES
(948, 212, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:42', '2018-09-24 21:08:42'),
(949, 212, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:42', '2018-09-24 21:08:42'),
(950, 213, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:42', '2018-09-24 21:08:42'),
(951, 213, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:42', '2018-09-24 21:08:42'),
(952, 213, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:42', '2018-09-24 21:08:42'),
(953, 214, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(954, 214, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(955, 215, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(956, 215, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(957, 215, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(958, 216, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(959, 216, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(960, 216, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(961, 217, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(962, 217, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(963, 217, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(964, 218, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(965, 218, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(966, 218, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(967, 219, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(968, 219, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(969, 220, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:43', '2018-09-24 21:08:43'),
(970, 220, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(971, 220, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(972, 221, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(973, 221, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(974, 221, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(975, 221, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(976, 222, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(977, 222, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(978, 222, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(979, 223, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(980, 223, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(981, 223, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(982, 224, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(983, 224, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(984, 224, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(985, 225, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(986, 225, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(987, 225, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(988, 225, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:44', '2018-09-24 21:08:44'),
(989, 226, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(990, 226, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(991, 227, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(992, 227, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(993, 227, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(994, 228, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(995, 228, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(996, 228, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(997, 229, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(998, 229, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(999, 229, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(1000, 229, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:45', '2018-09-24 21:08:45'),
(1001, 230, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1002, 230, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1003, 230, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1004, 231, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1005, 231, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1006, 231, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1007, 232, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1008, 232, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1009, 232, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1010, 232, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1011, 233, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1012, 233, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:46', '2018-09-24 21:08:46'),
(1013, 234, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1014, 234, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1015, 234, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1016, 235, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1017, 235, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1018, 235, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1019, 235, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1020, 236, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1021, 236, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1022, 236, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1023, 237, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1024, 237, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1025, 237, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:47', '2018-09-24 21:08:47'),
(1026, 238, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1027, 238, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1028, 238, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1029, 239, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1030, 239, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1031, 239, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1032, 240, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1033, 240, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1034, 240, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1035, 241, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1036, 241, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1037, 241, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:48', '2018-09-24 21:08:48'),
(1038, 242, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1039, 242, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1040, 242, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1041, 243, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1042, 243, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1043, 243, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1044, 244, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1045, 244, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1046, 244, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1047, 245, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1048, 245, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1049, 245, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:49', '2018-09-24 21:08:49'),
(1050, 246, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:50', '2018-09-24 21:08:50'),
(1051, 246, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:50', '2018-09-24 21:08:50'),
(1052, 246, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:50', '2018-09-24 21:08:50'),
(1053, 247, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:50', '2018-09-24 21:08:50'),
(1054, 247, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:50', '2018-09-24 21:08:50'),
(1055, 248, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:50', '2018-09-24 21:08:50'),
(1056, 248, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:50', '2018-09-24 21:08:50'),
(1057, 249, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:50', '2018-09-24 21:08:50'),
(1058, 249, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:50', '2018-09-24 21:08:50'),
(1059, 249, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:50', '2018-09-24 21:08:50'),
(1060, 250, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:51', '2018-09-24 21:08:51'),
(1061, 250, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:51', '2018-09-24 21:08:51'),
(1062, 251, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:51', '2018-09-24 21:08:51'),
(1063, 251, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:51', '2018-09-24 21:08:51'),
(1064, 251, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:51', '2018-09-24 21:08:51'),
(1065, 252, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:51', '2018-09-24 21:08:51'),
(1066, 252, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:51', '2018-09-24 21:08:51'),
(1067, 253, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:51', '2018-09-24 21:08:51'),
(1068, 253, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:51', '2018-09-24 21:08:51'),
(1069, 253, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:51', '2018-09-24 21:08:51'),
(1070, 254, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1071, 254, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1072, 254, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1073, 255, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1074, 255, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1075, 256, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1076, 256, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1077, 257, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1078, 257, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1079, 257, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1080, 258, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1081, 258, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1082, 259, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1083, 259, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1084, 260, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1085, 260, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1086, 260, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1087, 261, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1088, 261, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:52', '2018-09-24 21:08:52'),
(1089, 261, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:53', '2018-09-24 21:08:53'),
(1090, 262, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:53', '2018-09-24 21:08:53'),
(1091, 263, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:53', '2018-09-24 21:08:53'),
(1092, 263, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:53', '2018-09-24 21:08:53'),
(1093, 264, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:53', '2018-09-24 21:08:53'),
(1094, 264, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:53', '2018-09-24 21:08:53'),
(1095, 264, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:53', '2018-09-24 21:08:53'),
(1096, 265, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:53', '2018-09-24 21:08:53'),
(1097, 265, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:53', '2018-09-24 21:08:53'),
(1098, 265, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:53', '2018-09-24 21:08:53'),
(1099, 266, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1100, 266, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1101, 266, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1102, 267, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1103, 267, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1104, 268, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1105, 268, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1106, 268, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1107, 268, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1108, 269, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1109, 269, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1110, 269, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:54', '2018-09-24 21:08:54'),
(1111, 270, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:55', '2018-09-24 21:08:55'),
(1112, 270, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:55', '2018-09-24 21:08:55'),
(1113, 270, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:55', '2018-09-24 21:08:55'),
(1114, 271, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:55', '2018-09-24 21:08:55'),
(1115, 271, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:55', '2018-09-24 21:08:55'),
(1116, 271, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:55', '2018-09-24 21:08:55'),
(1117, 272, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:55', '2018-09-24 21:08:55'),
(1118, 272, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:55', '2018-09-24 21:08:55'),
(1119, 272, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:55', '2018-09-24 21:08:55'),
(1120, 273, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:55', '2018-09-24 21:08:55'),
(1121, 273, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:55', '2018-09-24 21:08:55'),
(1122, 274, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1123, 274, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1124, 274, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1125, 275, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1126, 275, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1127, 275, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1128, 275, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1129, 276, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1130, 276, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1131, 277, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1132, 277, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1133, 277, 14, 'https://ditmawa.ugm.ac.id/category/lowongan', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1134, 277, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:56', '2018-09-24 21:08:56'),
(1135, 278, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1136, 278, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1137, 278, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1138, 279, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1139, 279, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1140, 279, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1141, 280, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1142, 280, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1143, 280, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1144, 280, 19, 'https://ditmawa.ugm.ac.id/category/ppsmb-ugm-2014', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1145, 281, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1146, 281, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1147, 281, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:57', '2018-09-24 21:08:57'),
(1148, 282, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1149, 282, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1150, 282, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1151, 282, 19, 'https://ditmawa.ugm.ac.id/category/ppsmb-ugm-2014', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1152, 283, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1153, 283, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1154, 283, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1155, 284, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1156, 284, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1157, 284, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1158, 285, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1159, 285, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1160, 285, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1161, 285, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:08:58', '2018-09-24 21:08:58'),
(1162, 286, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:59', '2018-09-24 21:08:59'),
(1163, 286, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:59', '2018-09-24 21:08:59'),
(1164, 287, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:59', '2018-09-24 21:08:59'),
(1165, 287, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:59', '2018-09-24 21:08:59'),
(1166, 287, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:59', '2018-09-24 21:08:59'),
(1167, 287, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:08:59', '2018-09-24 21:08:59'),
(1168, 288, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:08:59', '2018-09-24 21:08:59'),
(1169, 288, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:59', '2018-09-24 21:08:59'),
(1170, 288, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:59', '2018-09-24 21:08:59'),
(1171, 289, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:08:59', '2018-09-24 21:08:59'),
(1172, 289, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:08:59', '2018-09-24 21:08:59'),
(1173, 290, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:00', '2018-09-24 21:09:00'),
(1174, 290, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:00', '2018-09-24 21:09:00'),
(1175, 290, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:00', '2018-09-24 21:09:00'),
(1176, 291, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:00', '2018-09-24 21:09:00'),
(1177, 291, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:00', '2018-09-24 21:09:00'),
(1178, 291, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:00', '2018-09-24 21:09:00'),
(1179, 292, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:00', '2018-09-24 21:09:00'),
(1180, 292, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:00', '2018-09-24 21:09:00'),
(1181, 292, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:00', '2018-09-24 21:09:00'),
(1182, 293, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:00', '2018-09-24 21:09:00'),
(1183, 293, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:00', '2018-09-24 21:09:00'),
(1184, 294, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1185, 294, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1186, 294, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1187, 295, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1188, 295, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1189, 295, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1190, 295, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1191, 296, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1192, 296, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1193, 296, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1194, 297, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1195, 297, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1196, 297, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:01', '2018-09-24 21:09:01'),
(1197, 298, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1198, 298, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1199, 298, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1200, 299, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1201, 299, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1202, 299, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1203, 300, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1204, 300, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1205, 300, 20, 'https://ditmawa.ugm.ac.id/category/kegiatan-kemahasiswaan', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1206, 301, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1207, 301, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1208, 301, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:02', '2018-09-24 21:09:02'),
(1209, 302, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1210, 302, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1211, 303, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1212, 303, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1213, 303, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1214, 304, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1215, 305, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1216, 305, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1217, 305, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1218, 306, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1219, 306, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1220, 306, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1221, 307, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1222, 307, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1223, 307, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1224, 308, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1225, 308, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1226, 308, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1227, 308, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1228, 308, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1229, 309, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:03', '2018-09-24 21:09:03'),
(1230, 309, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1231, 309, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1232, 310, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1233, 310, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1234, 310, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1235, 311, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1236, 311, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1237, 311, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1238, 312, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1239, 312, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1240, 313, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1241, 313, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:04', '2018-09-24 21:09:04'),
(1242, 314, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:09:05', '2018-09-24 21:09:05'),
(1243, 314, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:05', '2018-09-24 21:09:05'),
(1244, 314, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:05', '2018-09-24 21:09:05'),
(1245, 315, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:05', '2018-09-24 21:09:05'),
(1246, 315, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:05', '2018-09-24 21:09:05'),
(1247, 316, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:05', '2018-09-24 21:09:05'),
(1248, 317, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:05', '2018-09-24 21:09:05'),
(1249, 317, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:05', '2018-09-24 21:09:05'),
(1250, 317, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:05', '2018-09-24 21:09:05'),
(1251, 317, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:05', '2018-09-24 21:09:05'),
(1252, 318, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:06', '2018-09-24 21:09:06'),
(1253, 318, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:06', '2018-09-24 21:09:06'),
(1254, 318, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:06', '2018-09-24 21:09:06'),
(1255, 319, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:06', '2018-09-24 21:09:06'),
(1256, 319, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:06', '2018-09-24 21:09:06'),
(1257, 319, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:06', '2018-09-24 21:09:06'),
(1258, 320, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:06', '2018-09-24 21:09:06'),
(1259, 320, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:06', '2018-09-24 21:09:06'),
(1260, 320, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:06', '2018-09-24 21:09:06'),
(1261, 321, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:06', '2018-09-24 21:09:06'),
(1262, 322, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:07', '2018-09-24 21:09:07'),
(1263, 322, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:07', '2018-09-24 21:09:07'),
(1264, 322, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:07', '2018-09-24 21:09:07'),
(1265, 323, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:07', '2018-09-24 21:09:07'),
(1266, 324, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:07', '2018-09-24 21:09:07'),
(1267, 325, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:07', '2018-09-24 21:09:07'),
(1268, 326, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:08', '2018-09-24 21:09:08'),
(1269, 327, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:08', '2018-09-24 21:09:08'),
(1270, 328, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:08', '2018-09-24 21:09:08'),
(1271, 329, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:08', '2018-09-24 21:09:08'),
(1272, 330, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:09', '2018-09-24 21:09:09'),
(1273, 331, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:09', '2018-09-24 21:09:09'),
(1274, 332, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:09', '2018-09-24 21:09:09'),
(1275, 333, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:09', '2018-09-24 21:09:09'),
(1276, 334, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:09', '2018-09-24 21:09:09'),
(1277, 335, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:09', '2018-09-24 21:09:09'),
(1278, 336, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:09', '2018-09-24 21:09:09'),
(1279, 337, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:09', '2018-09-24 21:09:09'),
(1280, 338, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:10', '2018-09-24 21:09:10'),
(1281, 339, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:10', '2018-09-24 21:09:10'),
(1282, 340, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:10', '2018-09-24 21:09:10'),
(1283, 341, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:10', '2018-09-24 21:09:10'),
(1284, 342, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:11', '2018-09-24 21:09:11'),
(1285, 343, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:11', '2018-09-24 21:09:11'),
(1286, 344, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:11', '2018-09-24 21:09:11'),
(1287, 345, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:11', '2018-09-24 21:09:11'),
(1288, 346, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:12', '2018-09-24 21:09:12'),
(1289, 347, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:12', '2018-09-24 21:09:12'),
(1290, 348, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:12', '2018-09-24 21:09:12'),
(1291, 349, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:12', '2018-09-24 21:09:12'),
(1292, 350, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:13', '2018-09-24 21:09:13'),
(1293, 351, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:13', '2018-09-24 21:09:13'),
(1294, 352, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:13', '2018-09-24 21:09:13'),
(1295, 353, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:13', '2018-09-24 21:09:13'),
(1296, 354, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:14', '2018-09-24 21:09:14'),
(1297, 355, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:14', '2018-09-24 21:09:14'),
(1298, 356, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:14', '2018-09-24 21:09:14'),
(1299, 357, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:14', '2018-09-24 21:09:14'),
(1300, 358, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:14', '2018-09-24 21:09:14'),
(1301, 359, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:14', '2018-09-24 21:09:14'),
(1302, 360, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:14', '2018-09-24 21:09:14'),
(1303, 361, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:14', '2018-09-24 21:09:14'),
(1304, 362, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:15', '2018-09-24 21:09:15'),
(1305, 363, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:15', '2018-09-24 21:09:15'),
(1306, 363, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:15', '2018-09-24 21:09:15'),
(1307, 363, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:15', '2018-09-24 21:09:15'),
(1308, 364, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:15', '2018-09-24 21:09:15'),
(1309, 365, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:15', '2018-09-24 21:09:15'),
(1310, 366, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:16', '2018-09-24 21:09:16'),
(1311, 367, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:16', '2018-09-24 21:09:16'),
(1312, 368, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:16', '2018-09-24 21:09:16'),
(1313, 368, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:16', '2018-09-24 21:09:16'),
(1314, 369, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:16', '2018-09-24 21:09:16'),
(1315, 370, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:17', '2018-09-24 21:09:17'),
(1316, 371, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:17', '2018-09-24 21:09:17'),
(1317, 372, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:17', '2018-09-24 21:09:17'),
(1318, 373, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:17', '2018-09-24 21:09:17'),
(1319, 374, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:18', '2018-09-24 21:09:18'),
(1320, 375, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:18', '2018-09-24 21:09:18'),
(1321, 376, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:18', '2018-09-24 21:09:18'),
(1322, 377, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:18', '2018-09-24 21:09:18'),
(1323, 378, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:19', '2018-09-24 21:09:19'),
(1324, 379, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:19', '2018-09-24 21:09:19'),
(1325, 380, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:19', '2018-09-24 21:09:19'),
(1326, 381, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:19', '2018-09-24 21:09:19'),
(1327, 382, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:19', '2018-09-24 21:09:19'),
(1328, 383, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:19', '2018-09-24 21:09:19'),
(1329, 384, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:19', '2018-09-24 21:09:19'),
(1330, 385, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:19', '2018-09-24 21:09:19'),
(1331, 386, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:20', '2018-09-24 21:09:20'),
(1332, 387, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:20', '2018-09-24 21:09:20'),
(1333, 388, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:20', '2018-09-24 21:09:20'),
(1334, 389, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:20', '2018-09-24 21:09:20'),
(1335, 389, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:20', '2018-09-24 21:09:20'),
(1336, 389, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:20', '2018-09-24 21:09:20'),
(1337, 389, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:20', '2018-09-24 21:09:20'),
(1338, 390, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:21', '2018-09-24 21:09:21'),
(1339, 391, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:21', '2018-09-24 21:09:21'),
(1340, 391, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:21', '2018-09-24 21:09:21'),
(1341, 391, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:21', '2018-09-24 21:09:21'),
(1342, 392, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:21', '2018-09-24 21:09:21'),
(1343, 392, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:21', '2018-09-24 21:09:21'),
(1344, 392, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:21', '2018-09-24 21:09:21'),
(1345, 392, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:21', '2018-09-24 21:09:21'),
(1346, 393, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:21', '2018-09-24 21:09:21'),
(1347, 394, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:22', '2018-09-24 21:09:22'),
(1348, 394, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:22', '2018-09-24 21:09:22'),
(1349, 394, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:22', '2018-09-24 21:09:22'),
(1350, 394, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:22', '2018-09-24 21:09:22'),
(1351, 395, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:22', '2018-09-24 21:09:22'),
(1352, 396, 12, 'https://ditmawa.ugm.ac.id/category/agenda-kegiatan', '2018-09-24 21:09:22', '2018-09-24 21:09:22'),
(1353, 396, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:22', '2018-09-24 21:09:22'),
(1354, 396, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:22', '2018-09-24 21:09:22'),
(1355, 397, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:22', '2018-09-24 21:09:22'),
(1356, 397, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:22', '2018-09-24 21:09:22'),
(1357, 398, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:23', '2018-09-24 21:09:23'),
(1358, 399, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:23', '2018-09-24 21:09:23'),
(1359, 400, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:23', '2018-09-24 21:09:23'),
(1360, 401, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:23', '2018-09-24 21:09:23'),
(1361, 402, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:24', '2018-09-24 21:09:24'),
(1362, 403, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:24', '2018-09-24 21:09:24'),
(1363, 404, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:24', '2018-09-24 21:09:24'),
(1364, 405, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:24', '2018-09-24 21:09:24'),
(1365, 406, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:25', '2018-09-24 21:09:25'),
(1366, 407, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:25', '2018-09-24 21:09:25'),
(1367, 408, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:25', '2018-09-24 21:09:25'),
(1368, 409, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:25', '2018-09-24 21:09:25'),
(1369, 410, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:26', '2018-09-24 21:09:26'),
(1370, 411, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:26', '2018-09-24 21:09:26'),
(1371, 412, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:26', '2018-09-24 21:09:26'),
(1372, 413, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:26', '2018-09-24 21:09:26'),
(1373, 414, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:26', '2018-09-24 21:09:26'),
(1374, 415, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:26', '2018-09-24 21:09:26'),
(1375, 416, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:26', '2018-09-24 21:09:26'),
(1376, 416, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:26', '2018-09-24 21:09:26'),
(1377, 417, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:26', '2018-09-24 21:09:26'),
(1378, 418, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:27', '2018-09-24 21:09:27'),
(1379, 419, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:27', '2018-09-24 21:09:27'),
(1380, 420, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:27', '2018-09-24 21:09:27'),
(1381, 421, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:27', '2018-09-24 21:09:27'),
(1382, 421, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:27', '2018-09-24 21:09:27'),
(1383, 422, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:28', '2018-09-24 21:09:28'),
(1384, 422, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:28', '2018-09-24 21:09:28'),
(1385, 423, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:28', '2018-09-24 21:09:28'),
(1386, 424, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:28', '2018-09-24 21:09:28'),
(1387, 425, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:28', '2018-09-24 21:09:28'),
(1388, 426, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:29', '2018-09-24 21:09:29'),
(1389, 426, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:29', '2018-09-24 21:09:29'),
(1390, 427, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:29', '2018-09-24 21:09:29'),
(1391, 428, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:29', '2018-09-24 21:09:29'),
(1392, 429, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:29', '2018-09-24 21:09:29'),
(1393, 430, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:30', '2018-09-24 21:09:30'),
(1394, 431, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:30', '2018-09-24 21:09:30'),
(1395, 432, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:30', '2018-09-24 21:09:30'),
(1396, 433, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:30', '2018-09-24 21:09:30'),
(1397, 434, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:31', '2018-09-24 21:09:31'),
(1398, 435, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:31', '2018-09-24 21:09:31'),
(1399, 435, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:31', '2018-09-24 21:09:31'),
(1400, 436, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:31', '2018-09-24 21:09:31'),
(1401, 437, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:31', '2018-09-24 21:09:31');
INSERT INTO `detail_kategori` (`id_detail_kategori`, `id_detail_beasiswa`, `id_kategori`, `url_kategori`, `created_at`, `updated_at`) VALUES
(1402, 438, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:31', '2018-09-24 21:09:31'),
(1403, 439, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:31', '2018-09-24 21:09:31'),
(1404, 440, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:31', '2018-09-24 21:09:31'),
(1405, 441, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:31', '2018-09-24 21:09:31'),
(1406, 441, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:31', '2018-09-24 21:09:31'),
(1407, 442, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:32', '2018-09-24 21:09:32'),
(1408, 442, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:32', '2018-09-24 21:09:32'),
(1409, 443, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:32', '2018-09-24 21:09:32'),
(1410, 443, 8, 'https://ditmawa.ugm.ac.id/category/penawaran-beasiswa', '2018-09-24 21:09:32', '2018-09-24 21:09:32'),
(1411, 444, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:32', '2018-09-24 21:09:32'),
(1412, 445, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:32', '2018-09-24 21:09:32'),
(1413, 445, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:32', '2018-09-24 21:09:32'),
(1414, 446, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:33', '2018-09-24 21:09:33'),
(1415, 447, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:33', '2018-09-24 21:09:33'),
(1416, 447, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:33', '2018-09-24 21:09:33'),
(1417, 448, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:33', '2018-09-24 21:09:33'),
(1418, 449, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:33', '2018-09-24 21:09:33'),
(1419, 450, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:34', '2018-09-24 21:09:34'),
(1420, 451, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:34', '2018-09-24 21:09:34'),
(1421, 452, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:34', '2018-09-24 21:09:34'),
(1422, 453, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:34', '2018-09-24 21:09:34'),
(1423, 454, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:35', '2018-09-24 21:09:35'),
(1424, 455, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:35', '2018-09-24 21:09:35'),
(1425, 456, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:35', '2018-09-24 21:09:35'),
(1426, 456, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:35', '2018-09-24 21:09:35'),
(1427, 457, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:35', '2018-09-24 21:09:35'),
(1428, 457, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:35', '2018-09-24 21:09:35'),
(1429, 458, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:36', '2018-09-24 21:09:36'),
(1430, 458, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:36', '2018-09-24 21:09:36'),
(1431, 459, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:36', '2018-09-24 21:09:36'),
(1432, 460, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:36', '2018-09-24 21:09:36'),
(1433, 460, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:36', '2018-09-24 21:09:36'),
(1434, 461, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:36', '2018-09-24 21:09:36'),
(1435, 462, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1436, 462, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1437, 463, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1438, 463, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1439, 464, 2, 'https://ditmawa.ugm.ac.id/category/berita', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1440, 464, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1441, 464, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1442, 465, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1443, 465, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1444, 466, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1445, 466, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1446, 467, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1447, 467, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1448, 468, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1449, 469, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1450, 469, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:37', '2018-09-24 21:09:37'),
(1451, 470, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:38', '2018-09-24 21:09:38'),
(1452, 471, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:38', '2018-09-24 21:09:38'),
(1453, 471, 9, 'https://ditmawa.ugm.ac.id/category/pengumuman', '2018-09-24 21:09:38', '2018-09-24 21:09:38'),
(1454, 472, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:38', '2018-09-24 21:09:38'),
(1455, 472, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:38', '2018-09-24 21:09:38'),
(1456, 473, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:38', '2018-09-24 21:09:38'),
(1457, 473, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:38', '2018-09-24 21:09:38'),
(1458, 474, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:39', '2018-09-24 21:09:39'),
(1459, 475, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:39', '2018-09-24 21:09:39'),
(1460, 476, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:39', '2018-09-24 21:09:39'),
(1461, 476, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:39', '2018-09-24 21:09:39'),
(1462, 476, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:39', '2018-09-24 21:09:39'),
(1463, 477, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:39', '2018-09-24 21:09:39'),
(1464, 478, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:40', '2018-09-24 21:09:40'),
(1465, 479, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:40', '2018-09-24 21:09:40'),
(1466, 480, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:40', '2018-09-24 21:09:40'),
(1467, 480, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:40', '2018-09-24 21:09:40'),
(1468, 481, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:40', '2018-09-24 21:09:40'),
(1469, 482, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:41', '2018-09-24 21:09:41'),
(1470, 482, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:41', '2018-09-24 21:09:41'),
(1471, 483, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:41', '2018-09-24 21:09:41'),
(1472, 484, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:41', '2018-09-24 21:09:41'),
(1473, 485, 1, 'https://ditmawa.ugm.ac.id/category/beasiswa', '2018-09-24 21:09:41', '2018-09-24 21:09:41'),
(1474, 485, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:41', '2018-09-24 21:09:41'),
(1475, 486, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:42', '2018-09-24 21:09:42'),
(1476, 487, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:42', '2018-09-24 21:09:42'),
(1477, 488, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:42', '2018-09-24 21:09:42'),
(1478, 489, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:42', '2018-09-24 21:09:42'),
(1479, 490, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:43', '2018-09-24 21:09:43'),
(1480, 491, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:43', '2018-09-24 21:09:43'),
(1481, 492, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:43', '2018-09-24 21:09:43'),
(1482, 493, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:43', '2018-09-24 21:09:43'),
(1483, 494, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:43', '2018-09-24 21:09:43'),
(1484, 495, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:44', '2018-09-24 21:09:44'),
(1485, 496, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:44', '2018-09-24 21:09:44'),
(1486, 497, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:44', '2018-09-24 21:09:44'),
(1487, 498, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:45', '2018-09-24 21:09:45'),
(1488, 499, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:45', '2018-09-24 21:09:45'),
(1489, 500, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:45', '2018-09-24 21:09:45'),
(1490, 501, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:45', '2018-09-24 21:09:45'),
(1491, 502, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:46', '2018-09-24 21:09:46'),
(1492, 503, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:46', '2018-09-24 21:09:46'),
(1493, 504, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:46', '2018-09-24 21:09:46'),
(1494, 505, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:46', '2018-09-24 21:09:46'),
(1495, 506, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:47', '2018-09-24 21:09:47'),
(1496, 507, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:47', '2018-09-24 21:09:47'),
(1497, 508, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:47', '2018-09-24 21:09:47'),
(1498, 509, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:47', '2018-09-24 21:09:47'),
(1499, 510, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:47', '2018-09-24 21:09:47'),
(1500, 511, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:47', '2018-09-24 21:09:47'),
(1501, 512, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:47', '2018-09-24 21:09:47'),
(1502, 513, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:47', '2018-09-24 21:09:47'),
(1503, 514, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:48', '2018-09-24 21:09:48'),
(1504, 515, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:48', '2018-09-24 21:09:48'),
(1505, 516, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:48', '2018-09-24 21:09:48'),
(1506, 517, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:48', '2018-09-24 21:09:48'),
(1507, 518, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:49', '2018-09-24 21:09:49'),
(1508, 519, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:49', '2018-09-24 21:09:49'),
(1509, 520, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:49', '2018-09-24 21:09:49'),
(1510, 521, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:49', '2018-09-24 21:09:49'),
(1511, 522, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:50', '2018-09-24 21:09:50'),
(1512, 523, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:50', '2018-09-24 21:09:50'),
(1513, 524, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:50', '2018-09-24 21:09:50'),
(1514, 525, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:50', '2018-09-24 21:09:50'),
(1515, 526, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:51', '2018-09-24 21:09:51'),
(1516, 527, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:51', '2018-09-24 21:09:51'),
(1517, 528, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:51', '2018-09-24 21:09:51'),
(1518, 529, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:51', '2018-09-24 21:09:51'),
(1519, 530, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:52', '2018-09-24 21:09:52'),
(1520, 531, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:52', '2018-09-24 21:09:52'),
(1521, 532, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:52', '2018-09-24 21:09:52'),
(1522, 533, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:52', '2018-09-24 21:09:52'),
(1523, 534, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:52', '2018-09-24 21:09:52'),
(1524, 535, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:52', '2018-09-24 21:09:52'),
(1525, 536, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:53', '2018-09-24 21:09:53'),
(1526, 537, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:53', '2018-09-24 21:09:53'),
(1527, 538, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:53', '2018-09-24 21:09:53'),
(1528, 539, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:53', '2018-09-24 21:09:53'),
(1529, 540, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:53', '2018-09-24 21:09:53'),
(1530, 541, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:53', '2018-09-24 21:09:53'),
(1531, 542, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:54', '2018-09-24 21:09:54'),
(1532, 543, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:54', '2018-09-24 21:09:54'),
(1533, 544, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:54', '2018-09-24 21:09:54'),
(1534, 545, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:54', '2018-09-24 21:09:54'),
(1535, 546, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:55', '2018-09-24 21:09:55'),
(1536, 547, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:55', '2018-09-24 21:09:55'),
(1537, 548, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:55', '2018-09-24 21:09:55'),
(1538, 549, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:55', '2018-09-24 21:09:55'),
(1539, 550, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:56', '2018-09-24 21:09:56'),
(1540, 551, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:56', '2018-09-24 21:09:56'),
(1541, 552, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:56', '2018-09-24 21:09:56'),
(1542, 553, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:56', '2018-09-24 21:09:56'),
(1543, 554, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:57', '2018-09-24 21:09:57'),
(1544, 555, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:57', '2018-09-24 21:09:57'),
(1545, 556, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:57', '2018-09-24 21:09:57'),
(1546, 557, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:57', '2018-09-24 21:09:57'),
(1547, 558, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:57', '2018-09-24 21:09:57'),
(1548, 559, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:57', '2018-09-24 21:09:57'),
(1549, 560, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:57', '2018-09-24 21:09:57'),
(1550, 561, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:57', '2018-09-24 21:09:57'),
(1551, 562, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:58', '2018-09-24 21:09:58'),
(1552, 563, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:58', '2018-09-24 21:09:58'),
(1553, 564, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:58', '2018-09-24 21:09:58'),
(1554, 565, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:58', '2018-09-24 21:09:58'),
(1555, 566, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:59', '2018-09-24 21:09:59'),
(1556, 567, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:59', '2018-09-24 21:09:59'),
(1557, 568, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:59', '2018-09-24 21:09:59'),
(1558, 569, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:09:59', '2018-09-24 21:09:59'),
(1559, 570, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:10:00', '2018-09-24 21:10:00'),
(1560, 571, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:10:00', '2018-09-24 21:10:00'),
(1561, 572, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:10:00', '2018-09-24 21:10:00'),
(1562, 573, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:10:00', '2018-09-24 21:10:00'),
(1563, 574, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:10:01', '2018-09-24 21:10:01'),
(1564, 575, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:10:01', '2018-09-24 21:10:01'),
(1565, 576, 4, 'https://ditmawa.ugm.ac.id/category/info-beasiswa', '2018-09-24 21:10:01', '2018-09-24 21:10:01');

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
(3, 1, 34, '2018-12-04 13:34:03', '2018-12-04 13:34:03'),
(4, 1, 34, '2018-12-04 13:35:20', '2018-12-04 13:35:20'),
(5, 1, 34, '2018-12-04 13:35:36', '2018-12-04 13:35:36'),
(6, 1, 34, '2018-12-04 13:36:15', '2018-12-04 13:36:15'),
(7, 1, 35, '2018-12-07 15:50:11', '2018-12-07 15:50:11'),
(8, 1, 36, '2018-12-13 09:23:38', '2018-12-13 09:23:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_universitas`
--

CREATE TABLE `detail_universitas` (
  `id_detail_universitas` int(255) NOT NULL,
  `id_universitas` int(255) NOT NULL,
  `deskripsi_universitas` mediumtext CHARACTER SET utf8 NOT NULL,
  `alamat_universitas` varchar(255) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_universitas`
--

INSERT INTO `detail_universitas` (`id_detail_universitas`, `id_universitas`, `deskripsi_universitas`, `alamat_universitas`, `latitude`, `longitude`, `email`, `no_telp`, `create_dtm`, `update_dtm`) VALUES
(1, 1, 'Universitas Gadjah Mada resmi didirikan pada tanggal 19 Desember 1949 sebagai Universitas yang bersifat nasional. Universitas Gadjah Mada termasuk sebagai universitas yang tertua di Indonesia yang juga berperan sebagai pengemban Pancasila dan sebagai universitas pembina di Indonesia.\r\n\r\nKantor Pusat UGM berlokasi di Kampus Bulaksumur Daerah Istimewa Yogyakarta. Saat ini Universitas Gadjah Mada memiliki 18 Fakultas, 1 Sekolah Vokasi, dan 1 Sekolah Pascasarjana, dengan jumlah program studi mencapai 251 program studi. Seluruh kegiatan Universitas dituangkan dalam bentuk Tri Dharma Perguruan Tinggi yang terdiri atas kegiatan Pendidikan dan Pengajaran, Penelitian, serta Pengabdian kepada Masyarakat. Lebih dari 56.000 mahasiswa dari dalam dan luar negeri menjalankan studi di Universitas Gadjah Mada pada jenjang pendidikan Diploma, Sarjana, dan Pascasarjana (S2 dan S3).\r\n\r\nDi universitas ini, mahasiswa mendapatkan kesempatan yang luas untuk mengembangkan kreativitas dan inovasi di bidangnya masing-masing dengan kegiatan perkuliahan yang didukung dengan peralatan modern dan teknologi informasi. Sebagai universitas riset, Universitas Gadjah Mada memberikan perhatian yang sangat besar terhadap kegiatan-kegiatan penelitian yang diwujudkan dengan upaya mendorong dosen dan mahasiswa untuk melakukan dan mengembangkan berbagai penelitian serta dengan mendirikan 25 pusat studi terkait beragam bidang keilmuan.\r\n\r\nKomitmen kerakyatan pun diwujudkan dalam kegiatan pengabdian kepada masyarakat baik dengan penerjunan mahasiswa KKN ke seluruh penjuru Indonesia maupun melalui kegiatan-kegiatan pemberdayaan masyarakat. Dalam penyelenggaraan Tri Dharma Perguruan Tinggi, Universitas Gadjah Mada dimotori oleh 3.608 dosen dan 4.324 karyawan yang berkomitmen untuk menjadikan UGM sebagai universitas terbesar yang menjadi rujukan bangsa Indonesia.\r\n\r\nAgar seluruh kegiatan kampus berlangsung dengan baik dan membahagiakan, Universitas Gadjah Mada mengarahkan penataan dan pengembangan infrastruktur fisik di lingkungan kampus pada prinsip perwujudan kampus “educopolis”. Prinsip ini tertuang dalam Rencana Induk Pengembangan Kampus yang mengamanatkan sebuah lingkungan yang kondusif untuk proses pembelajaran dalam konteks pengembangan kolaborasi multidisiplin dan tanggap terhadap isu ekologis.', 'Bulaksumur Yogyakarta 55281', '7.7714', '110.3775', 'info@ugm.ac.id', '+62 (274) 64925', '2018-12-04 08:21:08', '2018-12-12 15:54:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(255) NOT NULL,
  `nama_fakultas` varchar(225) NOT NULL,
  `id_univ_fak` int(225) DEFAULT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama_fakultas`, `id_univ_fak`, `create_dtm`, `update_dtm`) VALUES
(1, 'Fakultas Biologi', NULL, '2018-12-04 08:25:55', '2018-12-04 08:25:55'),
(2, 'Fakultas Ekonomi dan Bisnis', NULL, '2018-12-04 08:26:47', '2018-12-04 08:39:35'),
(3, 'Fakultas Farmasi', NULL, '2018-12-04 08:27:05', '2018-12-04 08:27:05'),
(4, 'Fakultas Filsafat', NULL, '2018-12-04 08:27:19', '2018-12-04 08:27:19'),
(5, 'Fakultas Geografi', NULL, '2018-12-04 08:27:36', '2018-12-04 08:27:36'),
(6, 'Fakultas Hukum', NULL, '2018-12-04 08:27:50', '2018-12-04 08:27:50'),
(8, 'Fakultas Ilmu Sosial dan Ilmu Politik', NULL, '2018-12-04 08:28:19', '2018-12-04 08:28:19'),
(9, 'Fakultas Kedokteran Gigi', NULL, '2018-12-04 08:28:41', '2018-12-04 08:28:41'),
(10, 'Fakultas Kedokteran Hewan', NULL, '2018-12-04 08:28:53', '2018-12-04 08:28:53'),
(11, 'Fakultas Kedokteran, Kesehatan Masyarakat dan Keperawatan', NULL, '2018-12-04 08:29:21', '2018-12-04 08:29:21'),
(12, 'Fakultas Kehutanan', NULL, '2018-12-04 08:29:37', '2018-12-04 08:29:37'),
(13, 'Fakultas Matematika dan Ilmu Pengetahuan Alam', NULL, '2018-12-04 08:30:01', '2018-12-04 08:30:01'),
(14, 'Fakultas Pertanian', NULL, '2018-12-04 08:30:17', '2018-12-04 08:30:17'),
(15, 'Fakultas Peternakan', NULL, '2018-12-04 08:30:36', '2018-12-04 08:30:36'),
(16, 'Fakultas Psikologi', NULL, '2018-12-04 08:30:54', '2018-12-04 08:30:54'),
(17, 'Fakultas Teknik', NULL, '2018-12-04 08:31:09', '2018-12-04 08:31:09'),
(18, 'Fakultas Teknologi Pertanian', NULL, '2018-12-04 08:31:25', '2018-12-04 08:31:25'),
(19, 'Sekolah Pasca Sarjana', NULL, '2018-12-04 08:31:45', '2018-12-04 08:31:45'),
(20, 'Sekolah Vokasi', NULL, '2018-12-04 08:32:01', '2018-12-04 08:32:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fak_univ`
--

CREATE TABLE `fak_univ` (
  `id_fak_univ` int(11) NOT NULL,
  `id_fakultas` int(11) DEFAULT NULL,
  `id_universitas` int(11) DEFAULT NULL,
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
(20, 20, 1, '2018-12-04 08:32:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'beasiswa', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(2, 'berita', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(3, 'berita slider km', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(4, 'info beasiswa dan layanan sosial', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(5, 'kegiatan', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(6, 'kesejahteraan', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(7, 'donatur beasiswa', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(8, 'penawaran beasiswa', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(9, 'pengumuman', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(10, 'info lomba', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(11, 'informasi', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(12, 'agenda kegiatan', '2018-09-24 20:50:53', '2018-09-24 20:50:53'),
(13, 'berita slider', '2018-09-24 20:51:42', '2018-09-24 20:51:42'),
(14, 'lowongan & informasi umum', '2018-09-24 20:52:42', '2018-09-24 20:52:42'),
(15, 'informasi prestasi dan kegiatan kreativitas mahasiswa', '2018-09-24 20:52:44', '2018-09-24 20:52:44'),
(16, 'kegiatan organisasi mahasiswa', '2018-09-24 20:52:44', '2018-09-24 20:52:44'),
(17, 'buletin', '2018-09-24 20:52:51', '2018-09-24 20:52:51'),
(18, 'pkm', '2018-09-24 20:52:53', '2018-09-24 20:52:53'),
(19, 'ppsmb 2014', '2018-09-24 20:53:35', '2018-09-24 20:53:35'),
(20, 'kegiatan dan kelembagaan mahasiswaan', '2018-09-24 20:53:39', '2018-09-24 20:53:39');

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
(8, '084563478563', 'Farmasi', 'Dalam Negeri', 'Permisi, saya mau tanya mengenai informasi beasiswa yang sesuat dengan minat saya yaitu farmasi, saya ingin berkuliah di dalam negeri tapi saya masih bingung universitas-universitas mana yang menyediakan passing grate yang lumayan dan beasiswa yang banyak, terima kasih', 'Sudah Dibalas', 118, '2018-12-05 11:23:11', '2018-12-06 10:50:56'),
(9, ' 0389632787', ' Ilmu Politik', 'Dalam Negeri', 'nyari beasiswa', 'Sudah Dibalas', 118, '2018-12-06 11:20:58', '2018-12-15 09:59:11'),
(10, ' 0895325008487', ' Komputer', 'Luar Negeri', 'ABC', 'dikirim', 118, '2018-12-06 13:10:09', '0000-00-00 00:00:00'),
(11, '0895325008487', ' Program Komputer', 'Dalam Negeri', 'Tanya', 'dikirim', 118, '2018-12-06 13:12:23', '0000-00-00 00:00:00'),
(12, '084563478563', ' Komputer', 'Dalam Negeri', 'Tanya', 'dikirim', 118, '2018-12-06 13:13:29', '0000-00-00 00:00:00');

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
('post-5950', 'Beasiswa S1 Juara Harian Kompas dan Avian Brands', '2018-11-22', 'http://beasiswa.id/2018/beasiswa-s1-juara-harian-kompas-dan-avian-brands/', 'Bagi kamu pelajar SMA/SMK/Sederajat Negeri dan Swasta, ada tawaran beasiswa untuk melanjutkan kuliah S1 yang bisa kamu coba. Harian Kompas bekerjasama dengan Avian Brands kembali menyelenggarakan Beasiswa Juara Batch 2 sebagai bentuk kontribusi dalam dunia pendidikan di Indonesia. Pada tahap kedua ini, Beasiswa Juara membuka pendaftaran beasiswa untuk siswa/i SMA/SMK/Sederajat, baik swasta maupun negeri untuk melanjutkan kuliah S1 pada perguruan tinggi yang telah ditentukan. PILIHAN UNIVERSITAS: 1. JABODETABEK: – Universitas Trisakti – Universitas Katolik Indonesia Atma Jaya – Universitas Bunda Mulia – Binus University – Universitas Multimedia Nusantara – Universitas Pelita Harapan – Universitas Kristen Krida Wacana – Universitas Tarumanagara – Universitas Pramita Indonesia 2. JAWA BARAT: – Telkom University 3. JAWA TENGAH: – Unika SOEGIJAPRANATA – Universitas Dian Nuswantoro (UDINUS) Semarang – Universitas Kristen Satya Wacana&hellip;', '2018-12-15 09:15:10', '2018-12-15 09:17:46', 2),
('post-6002', 'Beasiswa S1 di Universitas Bakrie', '2018-12-05', 'http://beasiswa.id/2018/beasiswa-s1-di-universitas-bakrie-2/', 'Masih seputar beasiswa s1 dalam negeri, INDBeasiswa akan membagikan informasi beasiswa dari salah satu universitas swasta ternama di Indonesia yaitu Universitas Bakrie. Beasiswa S1 Universitas Bakrie Jalur Rapor merupakan program penerimaan mahasiswa baru tanpa tes tertulis melalui evaluasi nilai rapor. Berikut informasi selengkapnya. Universitas Bakrie berkomitmen untuk meningkatkan mutu dan kualitas lulusannya salah satunya dengan keberhasilan Universitas Bakrie meraih Akreditasi Institusi AIPT B berdasarkan SK BAN PT dengan No. 2672/SK/BAN-PT/Akred/PT/XI/2016 tertanggal 24 Nopember 2016; PTS Unggulan di Wilayah Kopertis III tahun 2013, The Best School of Management 2015 versi Majalah SWA, Dosen Berprestasi untuk Kopertis Wilayah III bahkan program studi Ilmu Komunikasi, Akuntansi dan Magister Manajemen telah ter akreditasi A. Pilihan program Studi S1 yang tersedia di Universitas Bakrie adalah sebagai berikut: 1. Akuntansi 2. Information System&hellip;', '2018-12-15 09:15:10', '2018-12-15 09:18:02', 2),
('post-6016', 'Beasiswa DT Peduli untuk Mahasiswa S1 dari Sumatera Utara', '2018-12-09', 'http://beasiswa.id/2018/beasiswa-dt-peduli-untuk-mahasiswa-s1-dari-sumatera-utara/', 'Bagi kamu mahasiswa S1 yang berdomisili di Sumatera Utara, ada tawaran beasiswa yang bisa kamu ikuti. Program Beasiswa Berprestasi oleh DT Peduli, ditawarkan bagi mahasiswa S1 yang sedang menjalani semester 3 – 6. DT Peduli merupakan sebuah LEMBAGA AMIL ZAKAT NASIONAL dan merupakan lembaga Nirlaba yang bergerak di bidang penghimpunan dan pendayagunaan dana zakat, Infaq, shadaqah dan wakaf (ZISWA). Lembaga ini didirikan oleh KH Abdullah Gymnastiar sebagai bagian dari Yayasan Daarut Tauhiid dengan tekad menjadi LAZ yang Amanah, Profesional dan Jujur berlandaskan pada Ukhuwah Islamiyah. KEUNTUNGAN YANG DIDAPATKAN: 1. Mendapatkan beasiswa 2. Pembekalan karakter BAKU Daarut Tauhiid 3. Tim Relawan DT Peduli OUTPUT YANG DIHARAPKAN: 1. Berkarakter baik dan kuat 2. Ahli Dzikir, Fikir, Ikhtiar 3. Peluang bergabung bersama Daarut Tauhiid PERSYARATAN UMUM: 1. Ikhwan/Akhwat Muslim 2.&hellip;', '2018-12-15 09:15:10', '2018-12-15 09:18:23', 2),
('post-6027', 'Beasiswa NU-CARE LAZISNU untuk Mahasiswa Diploma dan Sarjana', '2018-12-10', 'http://beasiswa.id/2018/beasiswa-nu-care-lazisnu-untuk-mahasiswa-diploma-dan-sarjana/', 'Satu lagi beasiswa untuk mahasiswa yang sedang berkuliah. Program Beasiswa Cahaya Pintar NU CARE 2018 ditawarkan oleh NU CARE-LAZISNU bagi mahasiswa yang sedang berkuliah di kawasan JABODETABEK. Sebagai informasi, NU CARE-LAZISNU merupakan lembaga nirlaba milik perkumpulan Nahdlatul Ulama (NU) yang bertujuan, berkhidmat dalam rangka membantu kesejahteraan umat; mengangkat harkat sosial dengan mendayagunakan dana Zakat, Infak, Sedekah serta Wakaf (ZISWAF). DURASI:Durasi pemberian beasiswa maksimal 6 semester untuk mahasiswa D3, maksimal 8 semester untuk mahasiswa D4 dan S1, serta maksimal 4 semester untuk mahasiswa S2. KUOTA BEASISWA:50 beasiswa diberikan bagi mahasiswa yang tersebar pada perguruan tinggi yang ada di Jakarta, Bogor, Depok, Tangerang, dan Bekasi (JABODETABEK). PERSYARATAN UMUM: Merupakan mahasiswa yang sedang berkuliah pada perguruan tinggi dalam negeri yang telah terakreditasi BAN-PT, baik yang berada di bawah naungan Kementerian&hellip;', '2018-12-15 09:15:10', '2018-12-15 09:18:50', 2),
('post-6034', 'Beasiswa Pemkab Jembrana untuk Mahasiswa Diploma dan Sarjana', '2018-12-11', 'http://beasiswa.id/2018/beasiswa-pemkab-jembrana-untuk-mahasiswa-diploma-dan-sarjana/', '&nbsp;Pemerintah Kabupaten Jembrana melalui Dinas Kepemudaan dan Olah Raga Kabupaten Jembrana saat ini memberikan bantuan&nbsp;beasiswa&nbsp;bagi mahasiswa berprestasi yang berasal dari Pemuda Kabupaten Jembrana. Berikut persyaratan dan ketentuan Beasiswa Kabupaten Jembrana untuk Mahasiswa D3, D4 dan S1. KUOTA BEASISWA: 800 orang PERSYARATAN: 1. Merupakan mahasiswa yang sedang berkuliah D3, D4, atau S1 dan telah melewati semester genap (semester 2/4/6). 2. Saat ini sedang menempuh pendidikan pada Perguruan Tinggi Negeri (PTN) dan Perguruan Tinggi Swasta (PTS) yang terakreditasi Peringkat A. 3. Maksimal sedang duduk di semester 7 untuk D4/S1 dan maksimal semester 5 untuk D3. 4. Memiliki IPK minimal 3,30 kecuali Fakultas Kedokteran Jurusan Pendidikan dan Kedokteran Gigi dan Fakultas Teknik jurusan Teknik Arsitektur, Elektro, Industri, Kimia, Sipil, Mesin, Perkapalan, Fisika, Penyehatan, Planologi (perencanaan wilayah kota), Komputer, Penerbangan dan Metalurgi&hellip;', '2018-12-15 09:15:09', '2018-12-15 09:19:21', 2);

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
(118, 'Annisa dwi', 'nisa', '1f191d8125e30434f6dec60608dc6c03', 'Annisaduwie@gmail.com', 'Pelajar', 'aktif', '0', 'C360_2014-06-25-12-31-14-311.jpg', '2018-09-24 01:42:32', '2018-12-15 11:02:07'),
(122, 'Hida Nur Fatimah', 'hida', 'cfd6572c9a7c12d8331916b5f3570f84', 'hida@yopmail.com', 'Pelajar', 'aktif', '0', NULL, '2018-10-26 12:12:09', '2018-10-27 20:32:16');

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
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pencarian`
--

INSERT INTO `pencarian` (`id_pencarian`, `keyword_prodi`, `keyword_kategori`, `keyword_tingkatan`, `keyword_universitas`, `waktu_pencarian`, `id_pencari`, `create_dtm`, `update_dtm`) VALUES
(32, 'Biologi', 'Dalam Negeri', 'Sarjana', '', '2018-11-14 00:30:27', 122, '2018-11-14 00:30:27', '2018-11-14 00:30:27'),
(34, 'Bahasa dan Kebudayaan Korea', 'Dalam Negeri', 'Sarjana', '', '2018-12-04 13:34:00', 118, '2018-12-04 13:34:00', '2018-12-04 13:34:00'),
(35, 'Statistika', 'Dalam Negeri', 'Sarjana', '', '2018-12-07 15:50:04', 118, '2018-12-07 15:50:04', '0000-00-00 00:00:00'),
(36, 'Biologi', 'Dalam Negeri', 'Sarjana', '', '2018-12-13 09:23:33', 118, '2018-12-13 09:23:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pencarian_beasiswa`
--

CREATE TABLE `pencarian_beasiswa` (
  `id_pencarian_beasiswa` int(11) NOT NULL,
  `keyword_jenjang` varchar(20) NOT NULL,
  `keyword_negara` varchar(20) DEFAULT NULL,
  `waktu_pencarian` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `id_pencari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pencarian_beasiswa`
--

INSERT INTO `pencarian_beasiswa` (`id_pencarian_beasiswa`, `keyword_jenjang`, `keyword_negara`, `waktu_pencarian`, `create_dtm`, `update_dtm`, `id_pencari`) VALUES
(2, 'S1', 'Indonesia', '2018-12-15 18:06:15', '2018-12-15 09:15:06', '0000-00-00 00:00:00', 118),
(3, 'S1', 'Indonesia', '2018-12-15 18:18:20', '2018-12-15 09:20:18', '0000-00-00 00:00:00', 118),
(4, 'S1', 'Indonesia', '2018-12-15 18:01:21', '2018-12-15 09:21:01', '0000-00-00 00:00:00', 118),
(5, 'S1', 'Indonesia', '2018-12-15 18:39:21', '2018-12-15 09:21:39', '0000-00-00 00:00:00', 118),
(6, 'S1', 'Indonesia', '2018-12-15 18:29:22', '2018-12-15 09:22:29', '0000-00-00 00:00:00', 118);

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
(20, 1, 118, '2018-12-03 16:57:35', '2018-12-03 16:57:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `persyaratan_beasiswa`
--

CREATE TABLE `persyaratan_beasiswa` (
  `id_persyaratan` int(255) NOT NULL,
  `description` longtext NOT NULL,
  `link` varchar(255) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `id_konten_beasiswa` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(255) NOT NULL,
  `nama_prodi` varchar(100) NOT NULL,
  `tingkatan` varchar(10) NOT NULL,
  `id_fak_prodi` int(255) DEFAULT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `tingkatan`, `id_fak_prodi`, `create_dtm`, `update_dtm`) VALUES
(1, 'Biologi', 'Sarjana', NULL, '2018-12-04 08:36:26', '2018-12-04 08:36:26'),
(2, 'Biologi', 'Magister', NULL, '2018-12-04 08:38:56', '2018-12-04 08:38:56'),
(3, 'Akuntansi', 'Sarjana', NULL, '2018-12-04 08:40:01', '2018-12-04 08:40:01'),
(4, 'Ilmu Ekonomi', 'Sarjana', NULL, '2018-12-04 08:41:12', '2018-12-04 08:41:12'),
(5, 'Manajemen', 'Sarjana', NULL, '2018-12-04 08:41:29', '2018-12-04 08:41:29'),
(6, 'Akuntansi', 'Magister', NULL, '2018-12-04 08:42:03', '2018-12-04 08:42:03'),
(7, 'Ilmu Ekonomi', 'Magister', NULL, '2018-12-04 08:42:17', '2018-12-04 08:42:17'),
(8, 'Manajemen', 'Magister', NULL, '2018-12-04 08:42:43', '2018-12-04 08:42:43'),
(9, 'Ekonomika Pembangunan', 'Magister', NULL, '2018-12-04 08:43:06', '2018-12-04 08:43:06'),
(10, 'Farmasi', 'Sarjana', NULL, '2018-12-04 08:43:54', '2018-12-04 08:43:54'),
(11, 'Farmasi Klinik', 'Magister', NULL, '2018-12-04 08:44:16', '2018-12-04 08:44:16'),
(12, 'Ilmu Farmasi', 'Magister', NULL, '2018-12-04 08:44:31', '2018-12-04 08:44:31'),
(13, 'Filsafat', 'Sarjana', NULL, '2018-12-04 08:45:22', '2018-12-04 08:45:22'),
(14, 'Filsafat', 'Magister', NULL, '2018-12-04 08:45:34', '2018-12-04 08:45:34'),
(15, 'Geografi Lingkungan', 'Sarjana', NULL, '2018-12-04 08:46:34', '2018-12-04 08:46:34'),
(16, 'Kartografi dan Penginderaan Jarak Jauh', 'Sarjana', NULL, '2018-12-04 08:47:04', '2018-12-04 08:47:04'),
(17, 'Pembangunan Wilayah', 'Sarjana', NULL, '2018-12-04 08:47:28', '2018-12-04 08:47:28'),
(18, 'Geografi', 'Magister', NULL, '2018-12-04 08:47:51', '2018-12-04 08:47:51'),
(19, 'Penginderaan Jarak Jauh', 'Magister', NULL, '2018-12-04 08:48:15', '2018-12-04 08:48:15'),
(20, 'Hukum', 'Sarjana', NULL, '2018-12-04 08:48:48', '2018-12-04 08:48:48'),
(21, 'Ilmu Hukum', 'Magister', NULL, '2018-12-04 08:49:06', '2018-12-04 08:49:06'),
(22, 'Antropologi Budaya', 'Sarjana', NULL, '2018-12-04 08:49:45', '2018-12-04 08:49:45'),
(23, 'Arkeologi', 'Sarjana', NULL, '2018-12-04 08:50:18', '2018-12-04 08:50:18'),
(24, 'Bahasa dan Kebudayaan Korea', 'Sarjana', NULL, '2018-12-04 08:50:45', '2018-12-04 08:50:45'),
(25, 'Bahasa dan Sastra Indonesia', 'Sarjana', NULL, '2018-12-04 08:51:07', '2018-12-04 08:51:07'),
(26, 'Pariwisata', 'Sarjana', NULL, '2018-12-04 08:51:23', '2018-12-04 08:51:23'),
(27, 'Sastra Arab', 'Sarjana', NULL, '2018-12-04 08:51:37', '2018-12-04 08:51:37'),
(28, 'Sastra Inggris', 'Sarjana', NULL, '2018-12-04 08:51:53', '2018-12-04 08:51:53'),
(29, 'Sastra Jawa', 'Sarjana', NULL, '2018-12-04 08:52:05', '2018-12-04 08:52:05'),
(30, 'Sastra Jepang', 'Sarjana', NULL, '2018-12-04 08:52:17', '2018-12-04 08:52:17'),
(31, 'Sastra Perancis', 'Sarjana', NULL, '2018-12-04 08:52:33', '2018-12-04 08:52:33'),
(32, 'Sejarah', 'Sarjana', NULL, '2018-12-04 08:52:43', '2018-12-04 08:52:43'),
(33, 'Antropologi', 'Magister', NULL, '2018-12-04 08:54:34', '2018-12-04 08:54:34'),
(34, 'Arkeologi', 'Magister', NULL, '2018-12-04 08:54:46', '2018-12-04 08:54:46'),
(35, 'Linguistik', 'Magister', NULL, '2018-12-04 08:54:58', '2018-12-04 08:54:58'),
(36, 'Sastra', 'Magister', NULL, '2018-12-04 08:55:11', '2018-12-04 08:55:11'),
(37, 'PENGKAJIAN AMERIKA', 'Magister', NULL, '2018-12-04 08:55:24', '2018-12-04 08:55:24'),
(38, 'Sejarah', 'Magister', NULL, '2018-12-04 08:55:39', '2018-12-04 08:55:39'),
(39, 'Ilmu Hubungan Internasional', 'Sarjana', NULL, '2018-12-04 08:56:46', '2018-12-04 08:56:46'),
(40, 'Ilmu Komunikasi', 'Sarjana', NULL, '2018-12-04 08:56:58', '2018-12-04 08:56:58'),
(41, 'Manajemen dan Kebijakan Publik', 'Sarjana', NULL, '2018-12-04 08:57:16', '2018-12-04 08:58:52'),
(42, 'Pembangunan Sosial dan Kesejahteraan', 'Sarjana', NULL, '2018-12-04 08:57:38', '2018-12-04 08:57:38'),
(43, 'Politik dan Pemerintahan', 'Sarjana', NULL, '2018-12-04 08:57:49', '2018-12-04 08:57:49'),
(44, 'Sosiologi', 'Sarjana', NULL, '2018-12-04 08:58:00', '2018-12-04 08:58:00'),
(45, 'Manajemen dan Kebijakan Publik', 'Magister', NULL, '2018-12-04 08:58:37', '2018-12-04 08:58:37'),
(46, 'Politik dan Pemerintahan', 'Magister', NULL, '2018-12-04 08:59:16', '2018-12-04 08:59:16'),
(47, 'Ilmu Hubungan Internasional', 'Magister', NULL, '2018-12-04 08:59:32', '2018-12-04 08:59:32'),
(48, 'Ilmu Komunikasi', 'Magister', NULL, '2018-12-04 08:59:48', '2018-12-04 08:59:48'),
(49, 'Sosiologi', 'Magister', NULL, '2018-12-04 09:00:00', '2018-12-04 09:00:00'),
(50, 'Pembangunan Sosial dan Kesejahteraan', 'Magister', NULL, '2018-12-04 09:00:15', '2018-12-04 09:00:15'),
(51, 'Ilmu Administrasi Publik', 'Magister', NULL, '2018-12-04 09:00:27', '2018-12-04 09:00:27'),
(52, 'Higiene Gigi', 'Sarjana', NULL, '2018-12-04 09:01:36', '2018-12-04 09:01:36'),
(53, 'Kedokteran Gigi', 'Sarjana', NULL, '2018-12-04 09:01:57', '2018-12-04 09:01:57'),
(54, 'Ilmu Kedokteran Gigi', 'Magister', NULL, '2018-12-04 09:02:38', '2018-12-04 09:02:38'),
(55, 'Ilmu Kedokteran Gigi Klinis', 'Magister', NULL, '2018-12-04 09:02:50', '2018-12-04 09:02:50'),
(56, 'Kedokteran Hewan', 'Sarjana', NULL, '2018-12-04 09:04:10', '2018-12-04 09:04:10'),
(57, 'Sains Veteriner', 'Magister', NULL, '2018-12-04 09:04:36', '2018-12-04 09:04:36'),
(58, 'Gizi Kesehatan', 'Sarjana', NULL, '2018-12-04 09:09:12', '2018-12-04 09:09:12'),
(59, 'Ilmu Keperawatan', 'Sarjana', NULL, '2018-12-04 09:09:46', '2018-12-04 09:09:46'),
(60, 'Kedokteran', 'Sarjana', NULL, '2018-12-04 09:10:02', '2018-12-04 09:10:02'),
(61, 'Ilmu Biomedik', 'Magister', NULL, '2018-12-04 09:10:52', '2018-12-04 09:10:52'),
(62, 'Ilmu Kedokteran Klinis', 'Magister', NULL, '2018-12-04 09:11:13', '2018-12-04 09:11:13'),
(63, 'Ilmu Kedokteran Tropis', 'Magister', NULL, '2018-12-04 09:11:31', '2018-12-04 09:11:31'),
(64, 'Ilmu Pendidikan Kedokterandan dan Kesehatan', 'Magister', NULL, '2018-12-04 09:12:01', '2018-12-04 09:12:01'),
(65, 'Keperawatan', 'Magister', NULL, '2018-12-04 09:12:28', '2018-12-04 09:12:28'),
(66, 'Kehutanan', 'Sarjana', NULL, '2018-12-04 09:13:30', '2018-12-04 09:13:30'),
(67, 'Ilmu Kehutanan', 'Magister', NULL, '2018-12-04 09:13:40', '2018-12-04 09:13:40'),
(68, 'Elektronika dan Instrumentasi', 'Sarjana', NULL, '2018-12-04 09:14:36', '2018-12-04 09:14:36'),
(69, 'Fisika', 'Sarjana', NULL, '2018-12-04 09:24:21', '2018-12-04 09:24:21'),
(70, 'Geofisika', 'Sarjana', NULL, '2018-12-04 09:24:55', '2018-12-04 09:24:55'),
(71, 'Ilmu Komputer', 'Sarjana', NULL, '2018-12-04 09:25:14', '2018-12-04 09:25:14'),
(72, 'Kimia', 'Sarjana', NULL, '2018-12-04 09:25:25', '2018-12-04 09:25:25'),
(73, 'Matematika', 'Sarjana', NULL, '2018-12-04 09:25:37', '2018-12-04 09:25:37'),
(74, 'Statistika', 'Sarjana', NULL, '2018-12-04 09:25:52', '2018-12-04 09:25:52'),
(75, 'Fisika', 'Magister', NULL, '2018-12-04 09:26:18', '2018-12-04 09:26:18'),
(76, 'Kimia', 'Magister', NULL, '2018-12-04 09:26:30', '2018-12-04 09:26:30'),
(77, 'Ilmu Komputer', 'Magister', NULL, '2018-12-04 09:26:44', '2018-12-04 09:26:44'),
(78, 'Matematika', 'Magister', NULL, '2018-12-04 09:26:56', '2018-12-04 09:26:56'),
(79, 'Agronomi', 'Sarjana', NULL, '2018-12-04 09:27:51', '2018-12-04 09:27:51'),
(80, 'Akuakultur', 'Sarjana', NULL, '2018-12-04 09:28:08', '2018-12-04 09:28:08'),
(81, 'Ekonomi Pertanian dan Agribisnis', 'Sarjana', NULL, '2018-12-04 09:28:23', '2018-12-04 09:28:37'),
(82, 'Ilmu Tanah', 'Sarjana', NULL, '2018-12-04 09:28:52', '2018-12-04 09:28:52'),
(83, 'Manajemen Sumberdaya Akuatik', 'Sarjana', NULL, '2018-12-04 09:29:11', '2018-12-04 09:29:11'),
(84, 'Mikrobiologi Pertanian', 'Sarjana', NULL, '2018-12-04 09:29:29', '2018-12-04 09:29:29'),
(85, 'Penyuluhan dan Komunikasi Pertanian', 'Sarjana', NULL, '2018-12-04 09:29:54', '2018-12-04 09:29:54'),
(86, 'Proteksi Tanaman', 'Sarjana', NULL, '2018-12-04 09:30:30', '2018-12-04 09:30:30'),
(87, 'Teknologi Hasil Pertanian', 'Sarjana', NULL, '2018-12-04 09:30:53', '2018-12-04 09:30:53'),
(88, 'Agronomi', 'Magister', NULL, '2018-12-04 09:32:51', '2018-12-04 09:32:51'),
(89, 'Ekonomi Pertanian', 'Magister', NULL, '2018-12-04 09:33:06', '2018-12-04 09:33:06'),
(90, 'Fitopatologi', 'Magister', NULL, '2018-12-04 09:33:22', '2018-12-04 09:33:22'),
(91, 'Ilmu Hama Tanaman', 'Magister', NULL, '2018-12-04 09:33:58', '2018-12-04 09:33:58'),
(92, 'Pemuliaan Tanaman', 'Magister', NULL, '2018-12-04 09:34:12', '2018-12-04 09:34:12'),
(93, 'Ilmu Tanah', 'Magister', NULL, '2018-12-04 09:34:26', '2018-12-04 09:34:26'),
(94, 'Manajemen Agribisnis', 'Magister', NULL, '2018-12-04 09:34:48', '2018-12-04 09:34:48'),
(95, 'Ilmu Perikanan', 'Magister', NULL, '2018-12-04 09:35:15', '2018-12-04 09:35:15'),
(96, 'Ilmu dan Industri Peternakan', 'Sarjana', NULL, '2018-12-04 09:37:22', '2018-12-04 09:37:22'),
(97, 'Ilmu Peternakan', 'Magister', NULL, '2018-12-04 09:37:54', '2018-12-04 09:37:54'),
(98, 'Psikologi', 'Sarjana', NULL, '2018-12-04 09:40:25', '2018-12-04 09:40:25'),
(99, 'Psikologi', 'Magister', NULL, '2018-12-04 09:40:39', '2018-12-04 09:40:39'),
(100, 'Arsitektur', 'Sarjana', NULL, '2018-12-04 09:41:55', '2018-12-04 09:41:55'),
(101, 'Perencarnaan Wilayah Kota', 'Sarjana', NULL, '2018-12-04 09:42:25', '2018-12-04 09:42:25'),
(102, 'Teknik Elektro', 'Sarjana', NULL, '2018-12-04 09:42:54', '2018-12-04 09:42:54'),
(103, 'Teknik Fisika', 'Sarjana', NULL, '2018-12-04 09:43:40', '2018-12-04 09:43:40'),
(104, 'Teknik Geodesi', 'Sarjana', NULL, '2018-12-04 09:43:56', '2018-12-04 09:43:56'),
(105, 'Teknik Geologi', 'Sarjana', NULL, '2018-12-04 09:44:15', '2018-12-04 09:44:15'),
(106, 'Teknik Industri', 'Sarjana', NULL, '2018-12-04 09:44:32', '2018-12-04 09:44:32'),
(107, 'Teknik Kimia', 'Sarjana', NULL, '2018-12-04 09:44:47', '2018-12-04 09:44:47'),
(108, 'Teknik Mesin', 'Sarjana', NULL, '2018-12-04 09:45:04', '2018-12-04 09:45:04'),
(109, 'Teknik Nuklir', 'Sarjana', NULL, '2018-12-04 09:45:18', '2018-12-04 09:45:18'),
(110, 'Teknik Sipil', 'Sarjana', NULL, '2018-12-04 09:45:58', '2018-12-04 09:45:58'),
(111, 'Arsitektur', 'Magister', NULL, '2018-12-04 09:46:22', '2018-12-04 09:46:22'),
(112, 'Teknik Elektro', 'Magister', NULL, '2018-12-04 09:46:47', '2018-12-04 09:46:47'),
(113, 'Teknik Fisika', 'Magister', NULL, '2018-12-04 09:47:08', '2018-12-04 09:47:08'),
(114, 'Teknik Geologi', 'Magister', NULL, '2018-12-04 09:47:24', '2018-12-04 09:47:24'),
(115, 'Teknik Geomatika', 'Magister', NULL, '2018-12-04 09:47:44', '2018-12-04 09:47:44'),
(116, 'Teknik Kimia', 'Magister', NULL, '2018-12-04 09:48:18', '2018-12-04 09:48:18'),
(117, 'Teknik Mesin', 'Magister', NULL, '2018-12-04 09:49:15', '2018-12-04 09:49:15'),
(118, 'Teknik Industri', 'Magister', NULL, '2018-12-04 09:49:29', '2018-12-04 09:49:29'),
(119, 'Teknologi Informasi', 'Magister', NULL, '2018-12-04 09:49:52', '2018-12-04 09:49:52'),
(120, 'Teknologi Informasi', 'Magister', NULL, '2018-12-04 09:50:24', '2018-12-04 09:50:24'),
(121, 'Teknik Sistem', 'Magister', NULL, '2018-12-04 09:50:50', '2018-12-04 09:50:50'),
(122, 'Teknik Sipil', 'Magister', NULL, '2018-12-04 09:51:02', '2018-12-04 09:51:02'),
(123, 'Teknik Pengelolaan Bencana Alam', 'Magister', NULL, '2018-12-04 09:51:19', '2018-12-04 09:51:19'),
(124, 'Teknik Pertanian', 'Sarjana', NULL, '2018-12-04 09:53:22', '2018-12-04 09:53:22'),
(125, 'Teknologi Industri Pertanian', 'Sarjana', NULL, '2018-12-04 09:53:41', '2018-12-04 09:53:41'),
(126, 'Teknologi Pangan dan Hasil Pertanian', 'Sarjana', NULL, '2018-12-04 09:54:30', '2018-12-04 09:54:30'),
(127, 'Ilmu dan Teknologi Pangan', 'Magister', NULL, '2018-12-04 09:55:11', '2018-12-04 09:55:11'),
(128, 'Teknik Pertanian', 'Magister', NULL, '2018-12-04 09:55:33', '2018-12-04 09:55:33'),
(129, 'Teknologi Hasil Perkebunan', 'Magister', NULL, '2018-12-04 09:56:16', '2018-12-04 09:56:16'),
(130, 'Teknologi Industri Pertanian', 'Magister', NULL, '2018-12-04 09:56:33', '2018-12-04 09:56:33'),
(131, 'Bioteknologi', 'Magister', NULL, '2018-12-04 09:58:04', '2018-12-04 09:58:04'),
(132, 'Ilmu Lingkungan', 'Magister', NULL, '2018-12-04 09:58:24', '2018-12-04 09:58:24'),
(133, 'Agama dan Lintas Budaya', 'Magister', NULL, '2018-12-04 09:58:37', '2018-12-04 09:58:37'),
(134, 'Kajian Budaya dan Media', 'Magister', NULL, '2018-12-04 09:58:49', '2018-12-04 09:58:49'),
(135, 'Kependudukan', 'Magister', NULL, '2018-12-04 09:59:18', '2018-12-04 09:59:18'),
(136, 'Ketahanan Nasional', 'Magister', NULL, '2018-12-04 09:59:32', '2018-12-04 09:59:32'),
(137, 'Kajian Pariwisata', 'Magister', NULL, '2018-12-04 09:59:46', '2018-12-04 09:59:46'),
(138, 'Pengkajian Seni Pertunjukan dan Seni Rupa', 'Magister', NULL, '2018-12-04 10:00:09', '2018-12-04 10:00:09'),
(139, 'Penyuluhan dan Komunikasi Pembangunan', 'Magister', NULL, '2018-12-04 10:00:34', '2018-12-04 10:00:34'),
(140, 'Manajemen Bencana', 'Magister', NULL, '2018-12-04 10:00:48', '2018-12-04 10:00:48'),
(141, 'Manajemen Pendidikan Tinggi', 'Magister', NULL, '2018-12-04 10:01:01', '2018-12-04 10:01:01'),
(142, 'Bioetika', 'Magister', NULL, '2018-12-04 10:01:14', '2018-12-04 10:01:14'),
(143, 'Studi Kebijakan', 'Magister', NULL, '2018-12-04 10:01:27', '2018-12-04 10:01:27'),
(144, 'Akuntansi', 'Diploma', NULL, '2018-12-04 10:05:02', '2018-12-04 10:05:02'),
(145, 'Ekonomi Terapan', 'Diploma', NULL, '2018-12-04 10:05:17', '2018-12-04 10:05:17'),
(146, 'Manajemen', 'Diploma', NULL, '2018-12-04 10:05:28', '2018-12-04 10:05:28'),
(147, 'Penginderaan Jauh dan Sistem Informasi Geografi', 'Diploma', NULL, '2018-12-04 10:06:12', '2018-12-04 10:06:12'),
(148, 'Bahasa Jepang', 'Diploma', NULL, '2018-12-04 10:06:24', '2018-12-04 10:06:24'),
(149, 'Bahasa Korea', 'Diploma', NULL, '2018-12-04 10:06:37', '2018-12-04 10:06:37'),
(150, 'Bahasa Inggris', 'Diploma', NULL, '2018-12-04 10:06:55', '2018-12-04 10:06:55'),
(151, 'Pariwisata', 'Diploma', NULL, '2018-12-04 10:07:07', '2018-12-04 10:07:07'),
(152, 'Kearsipan', 'Diploma', NULL, '2018-12-04 10:07:19', '2018-12-04 10:07:19'),
(153, 'Kesehatan Hewan', 'Diploma', NULL, '2018-12-04 10:07:33', '2018-12-04 10:07:33'),
(154, 'Pengelolaan Hutan', 'Diploma', NULL, '2018-12-04 10:07:52', '2018-12-04 10:07:52'),
(155, 'Teknologi Instrumentasi', 'Diploma', NULL, '2018-12-04 10:08:09', '2018-12-04 10:08:09'),
(156, 'Rekam Medis dan Informasi Kesehatan', 'Diploma', NULL, '2018-12-04 10:08:27', '2018-12-04 10:08:27'),
(157, 'Komputer dan Sistem Informasi', 'Diploma', NULL, '2018-12-04 10:08:37', '2018-12-04 10:08:37'),
(158, 'Teknik Geomatika', 'Diploma', NULL, '2018-12-04 10:08:47', '2018-12-04 10:08:47'),
(159, 'Teknik Mesin', 'Diploma', NULL, '2018-12-04 10:08:56', '2018-12-04 10:08:56'),
(160, 'Teknologi Listrik', 'Diploma', NULL, '2018-12-04 10:09:31', '2018-12-04 10:09:31'),
(161, 'Teknik Sipil', 'Diploma', NULL, '2018-12-04 10:27:48', '2018-12-04 10:27:48'),
(162, 'Agroindustri', 'Diploma', NULL, '2018-12-04 10:27:58', '2018-12-04 10:27:58'),
(163, 'Metrologi dan Instrumentasi', 'Diploma', NULL, '2018-12-04 10:28:09', '2018-12-04 10:28:09'),
(164, 'Teknologi Rekayasa Internet', 'Diploma', NULL, '2018-12-04 10:28:19', '2018-12-04 10:28:19'),
(165, 'Teknik Pengelolaan dan Pemeliharaan Infrastruktur Sipil', 'Diploma', NULL, '2018-12-04 10:28:30', '2018-12-04 10:28:30'),
(166, 'Teknik Pengelolaan dan Perawatan Alat Berat', 'Diploma', NULL, '2018-12-04 10:28:48', '2018-12-04 10:28:48'),
(167, 'Pembangunan Ekonomi Kewilayahan', 'Diploma', NULL, '2018-12-04 10:28:58', '2018-12-04 10:28:58'),
(168, 'C', 'Sarjana', NULL, '2018-12-12 16:21:55', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi_fak`
--

CREATE TABLE `prodi_fak` (
  `id_prodi_fak` int(11) NOT NULL,
  `id_prodi` int(11) DEFAULT NULL,
  `id_fakultas` int(11) DEFAULT NULL,
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
(167, 167, 20, '2018-12-04 10:28:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `universitas`
--

CREATE TABLE `universitas` (
  `id_universitas` int(225) NOT NULL,
  `url_universitas` varchar(225) NOT NULL,
  `kategori_universitas` enum('Dalam Negeri','Luar Negeri','','') NOT NULL,
  `negara` varchar(50) NOT NULL,
  `gambar_universitas` varchar(50) NOT NULL,
  `nama_universitas` varchar(50) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `universitas`
--

INSERT INTO `universitas` (`id_universitas`, `url_universitas`, `kategori_universitas`, `negara`, `gambar_universitas`, `nama_universitas`, `create_dtm`, `update_dtm`) VALUES
(1, 'www.ugm.ac.id', 'Dalam Negeri', 'Indonesia', 'ugm1.jpg', 'Universitas Gadjah Mada', '2018-12-04 08:21:08', '2018-12-04 08:21:08');

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
-- Indexes for table `detail_kategori`
--
ALTER TABLE `detail_kategori`
  ADD PRIMARY KEY (`id_detail_kategori`),
  ADD KEY `detail_beasiswa_constrain` (`id_detail_beasiswa`),
  ADD KEY `kategori_cons` (`id_kategori`);

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
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

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
-- Indexes for table `persyaratan_beasiswa`
--
ALTER TABLE `persyaratan_beasiswa`
  ADD PRIMARY KEY (`id_persyaratan`);

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
  MODIFY `id_beasiswa` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `beasiswa_umum`
--
ALTER TABLE `beasiswa_umum`
  MODIFY `id_beasiswa_umum` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `beasiswa_universitas`
--
ALTER TABLE `beasiswa_universitas`
  MODIFY `id_beasiswa_univ` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `detail_beasiswa`
--
ALTER TABLE `detail_beasiswa`
  MODIFY `id_detail_beasiswa` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detail_kategori`
--
ALTER TABLE `detail_kategori`
  MODIFY `id_detail_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1566;
--
-- AUTO_INCREMENT for table `detail_pencarian`
--
ALTER TABLE `detail_pencarian`
  MODIFY `id_detail_pencarian` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `detail_universitas`
--
ALTER TABLE `detail_universitas`
  MODIFY `id_detail_universitas` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `fak_univ`
--
ALTER TABLE `fak_univ`
  MODIFY `id_fak_univ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pencari`
--
ALTER TABLE `pencari`
  MODIFY `id_pencari` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `pencarian`
--
ALTER TABLE `pencarian`
  MODIFY `id_pencarian` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `pencarian_beasiswa`
--
ALTER TABLE `pencarian_beasiswa`
  MODIFY `id_pencarian_beasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pencarian_favorit`
--
ALTER TABLE `pencarian_favorit`
  MODIFY `id_pencarian_favorit` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `persyaratan_beasiswa`
--
ALTER TABLE `persyaratan_beasiswa`
  MODIFY `id_persyaratan` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `prodi_fak`
--
ALTER TABLE `prodi_fak`
  MODIFY `id_prodi_fak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `universitas`
--
ALTER TABLE `universitas`
  MODIFY `id_universitas` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- Ketidakleluasaan untuk tabel `detail_kategori`
--
ALTER TABLE `detail_kategori`
  ADD CONSTRAINT `detail_beasiswa_constrain` FOREIGN KEY (`id_detail_beasiswa`) REFERENCES `detail_beasiswa` (`id_detail_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kategori_cons` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

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

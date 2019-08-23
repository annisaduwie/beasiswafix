-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 Apr 2019 pada 08.52
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
(5, 'http://beasiswa.id/?s=universitas+harvard', 5, '2019-03-30 08:14:07', '2019-03-30 08:14:07'),
(7, 'http://beasiswa.id/?s=institut+teknologi+sepuluh+november', 7, '2019-04-02 07:16:05', '2019-04-02 07:16:05'),
(8, 'http://beasiswa.id/?s=institut+pertanian+bogor', 8, '2019-04-02 08:58:32', '2019-04-02 08:58:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `beasiswa_umum`
--

CREATE TABLE `beasiswa_umum` (
  `id_beasiswa_umum` int(225) NOT NULL,
  `nama_beasiswa_umum` varchar(50) NOT NULL,
  `negara` varchar(50) DEFAULT NULL,
  `url_beasiswa_umum` varchar(255) NOT NULL,
  `id_admin` int(225) NOT NULL,
  `create_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `beasiswa_umum`
--

INSERT INTO `beasiswa_umum` (`id_beasiswa_umum`, `nama_beasiswa_umum`, `negara`, `url_beasiswa_umum`, `id_admin`, `create_dtm`, `update_dtm`) VALUES
(8, 'Beasiswa di Australia', 'Australia', 'http://beasiswa.id/tag/beasiswa-australia/', 1, '2019-03-31 14:37:24', '2019-03-31 14:37:24'),
(9, 'Beasiswa di Indonesia', 'Indonesia', 'http://beasiswa.id/tag/beasiswa-indonesia/', 1, '2019-03-31 14:38:20', '2019-03-31 14:38:20'),
(10, 'Beasiswa di Amerika', 'Amerika', 'http://beasiswa.id/tag/beasiswa-amerika/', 1, '2019-03-31 14:38:20', '2019-03-31 14:38:20'),
(11, 'Beasiswa di Belanda', 'Belanda', 'http://beasiswa.id/tag/beasiswa-belanda/', 1, '2019-03-31 14:38:20', '2019-03-31 14:38:20'),
(13, 'Beasiswa di Arab Saudi', 'Arab Saudi', 'http://beasiswa.id/tag/beasiswa-arab-saudi/', 1, '2019-03-31 14:38:20', '2019-03-31 14:38:20'),
(14, 'Beasiswa di Perancis', 'Perancis', 'http://beasiswa.id/tag/beasiswa-perancis/', 1, '2019-03-31 14:38:20', '2019-03-31 14:38:20'),
(15, 'Beasiswa di Korea', 'Korea', 'http://beasiswa.id/tag/beasiswa-korea/', 1, '2019-03-31 14:38:20', '2019-03-31 14:38:20'),
(16, 'Beasiswa di Singapura', 'Singapura', 'http://beasiswa.id/tag/beasiswa-singapura/', 1, '2019-03-31 14:38:21', '2019-03-31 14:38:21'),
(17, 'Beasiswa di Malaysia', 'Malaysia', 'http://beasiswa.id/tag/beasiswa-malaysia/', 1, '2019-03-31 14:38:21', '2019-03-31 14:38:21'),
(22, 'Beasiswa di Inggris', 'Inggris', 'http://beasiswa.id/tag/beasiswa-inggris/', 1, '2019-03-31 14:38:21', '2019-03-31 14:38:21'),
(23, 'Beasiswa di Thailand', 'Thailand', 'http://beasiswa.id/tag/beasiswa-thailand/', 1, '2019-03-31 14:38:21', '2019-03-31 14:38:21'),
(24, 'Beasiswa di Turki', 'Turki', 'http://beasiswa.id/tag/beasiswa-turki/', 1, '2019-04-09 05:46:26', '2019-04-09 05:46:26'),
(26, 'Beasiswa di Cina', 'Cina', 'http://beasiswa.id/tag/beasiswa-cina/', 1, '2019-04-09 06:38:17', '2019-04-09 06:38:17'),
(27, 'Beasiswa di  Rusia', 'Rusia', 'http://beasiswa.id/tag/beasiswa-rusia/', 1, '2019-04-09 06:41:56', '2019-04-09 06:41:56');

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
(5, 6, '2019-03-30 08:14:07', '2019-03-30 08:14:07'),
(7, 5, '2019-04-02 07:16:04', '2019-04-02 07:16:04'),
(8, 7, '2019-04-02 08:58:31', '2019-04-02 08:58:31');

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
(44, 1, 69, '2019-03-28 08:04:09', '2019-03-28 08:04:09'),
(45, 1, 69, '2019-03-28 08:05:00', '2019-03-28 08:05:00'),
(46, 2, 69, '2019-03-28 08:07:04', '2019-03-28 08:07:04'),
(47, 1, 69, '2019-03-28 08:08:18', '2019-03-28 08:08:18'),
(50, 1, 99, '2019-04-02 07:13:39', '2019-04-02 07:13:39'),
(51, 5, 105, '2019-04-02 07:14:09', '2019-04-02 07:14:09'),
(52, 2, 106, '2019-04-02 16:19:28', '2019-04-02 16:19:28'),
(53, 2, 106, '2019-04-02 16:20:36', '2019-04-02 16:20:36'),
(54, 2, 106, '2019-04-02 16:22:02', '2019-04-02 16:22:02'),
(55, 2, 106, '2019-04-02 16:22:31', '2019-04-02 16:22:31'),
(56, 2, 106, '2019-04-02 16:22:49', '2019-04-02 16:22:49'),
(57, 2, 106, '2019-04-02 16:30:22', '2019-04-02 16:30:22'),
(58, 2, 106, '2019-04-02 16:33:19', '2019-04-02 16:33:19'),
(59, 2, 106, '2019-04-02 16:33:41', '2019-04-02 16:33:41'),
(60, 2, 106, '2019-04-02 16:33:59', '2019-04-02 16:33:59'),
(61, 2, 106, '2019-04-02 16:36:39', '2019-04-02 16:36:39'),
(62, 2, 106, '2019-04-02 16:37:12', '2019-04-02 16:37:12'),
(63, 2, 106, '2019-04-02 16:38:06', '2019-04-02 16:38:06'),
(64, 2, 106, '2019-04-02 16:38:40', '2019-04-02 16:38:40'),
(65, 2, 106, '2019-04-02 16:38:55', '2019-04-02 16:38:55'),
(66, 2, 106, '2019-04-02 16:39:36', '2019-04-02 16:39:36'),
(67, 2, 106, '2019-04-02 16:39:56', '2019-04-02 16:39:56'),
(68, 2, 106, '2019-04-02 16:40:54', '2019-04-02 16:40:54'),
(69, 2, 106, '2019-04-02 16:41:27', '2019-04-02 16:41:27'),
(70, 2, 106, '2019-04-02 16:42:10', '2019-04-02 16:42:10'),
(71, 2, 106, '2019-04-02 16:42:50', '2019-04-02 16:42:50'),
(72, 2, 106, '2019-04-02 16:43:41', '2019-04-02 16:43:41'),
(73, 2, 106, '2019-04-02 16:47:19', '2019-04-02 16:47:19'),
(74, 2, 106, '2019-04-02 16:47:54', '2019-04-02 16:47:54'),
(75, 2, 106, '2019-04-02 16:48:23', '2019-04-02 16:48:23'),
(76, 2, 106, '2019-04-02 16:50:09', '2019-04-02 16:50:09'),
(77, 2, 106, '2019-04-02 16:51:01', '2019-04-02 16:51:01'),
(78, 2, 106, '2019-04-02 16:51:21', '2019-04-02 16:51:21'),
(79, 2, 106, '2019-04-02 16:51:39', '2019-04-02 16:51:39'),
(80, 2, 106, '2019-04-02 16:52:23', '2019-04-02 16:52:23'),
(81, 2, 106, '2019-04-02 16:52:39', '2019-04-02 16:52:39'),
(82, 2, 106, '2019-04-02 16:52:54', '2019-04-02 16:52:54'),
(83, 2, 106, '2019-04-02 16:53:09', '2019-04-02 16:53:09'),
(84, 2, 106, '2019-04-02 16:54:25', '2019-04-02 16:54:25'),
(85, 2, 106, '2019-04-02 16:54:32', '2019-04-02 16:54:32'),
(86, 2, 106, '2019-04-02 16:54:55', '2019-04-02 16:54:55'),
(87, 2, 106, '2019-04-02 16:55:50', '2019-04-02 16:55:50'),
(88, 2, 106, '2019-04-02 16:56:11', '2019-04-02 16:56:11'),
(89, 2, 106, '2019-04-02 16:56:28', '2019-04-02 16:56:28'),
(90, 2, 106, '2019-04-02 16:56:43', '2019-04-02 16:56:43'),
(91, 2, 106, '2019-04-02 16:57:09', '2019-04-02 16:57:09'),
(92, 2, 106, '2019-04-02 16:57:22', '2019-04-02 16:57:22'),
(93, 2, 106, '2019-04-02 16:57:48', '2019-04-02 16:57:48'),
(94, 2, 106, '2019-04-02 16:58:30', '2019-04-02 16:58:30'),
(95, 2, 106, '2019-04-02 16:59:24', '2019-04-02 16:59:24'),
(96, 1, 107, '2019-04-02 17:10:12', '2019-04-02 17:10:12'),
(97, 1, 107, '2019-04-02 17:13:26', '2019-04-02 17:13:26'),
(128, 2, 113, '2019-04-03 06:02:14', '2019-04-03 06:02:14'),
(129, 2, 114, '2019-04-03 06:20:20', '2019-04-03 06:20:20'),
(130, 2, 114, '2019-04-03 06:22:51', '2019-04-03 06:22:51'),
(131, 2, 114, '2019-04-03 06:27:10', '2019-04-03 06:27:10'),
(132, 2, 118, '2019-04-03 06:47:10', '2019-04-03 06:47:10'),
(133, 2, 119, '2019-04-03 06:47:46', '2019-04-03 06:47:46'),
(134, 2, 119, '2019-04-03 06:49:08', '2019-04-03 06:49:08'),
(135, 2, 124, '2019-04-03 07:41:45', '2019-04-03 07:41:45'),
(136, 1, 125, '2019-04-03 08:18:29', '2019-04-03 08:18:29'),
(137, 1, 125, '2019-04-03 08:20:16', '2019-04-03 08:20:16'),
(138, 1, 125, '2019-04-03 08:21:04', '2019-04-03 08:21:04'),
(139, 2, 125, '2019-04-03 08:25:32', '2019-04-03 08:25:32'),
(143, 2, 129, '2019-04-03 08:32:51', '2019-04-03 08:32:51'),
(145, 2, 132, '2019-04-03 08:36:59', '2019-04-03 08:36:59'),
(146, 2, 132, '2019-04-03 08:41:04', '2019-04-03 08:41:04'),
(147, 2, 132, '2019-04-03 08:46:05', '2019-04-03 08:46:05'),
(148, 2, 132, '2019-04-03 08:47:04', '2019-04-03 08:47:04'),
(149, 2, 132, '2019-04-03 08:47:20', '2019-04-03 08:47:20'),
(150, 2, 132, '2019-04-03 08:47:56', '2019-04-03 08:47:56'),
(151, 2, 132, '2019-04-03 08:49:48', '2019-04-03 08:49:48'),
(152, 2, 132, '2019-04-03 08:57:17', '2019-04-03 08:57:17'),
(153, 2, 132, '2019-04-03 09:01:30', '2019-04-03 09:01:30'),
(154, 2, 132, '2019-04-03 09:02:11', '2019-04-03 09:02:11'),
(155, 2, 132, '2019-04-03 09:02:30', '2019-04-03 09:02:30'),
(156, 2, 132, '2019-04-03 09:02:45', '2019-04-03 09:02:45'),
(157, 2, 132, '2019-04-03 09:03:00', '2019-04-03 09:03:00'),
(158, 2, 132, '2019-04-03 09:03:42', '2019-04-03 09:03:42'),
(159, 2, 133, '2019-04-03 13:41:40', '2019-04-03 13:41:40'),
(160, 1, 134, '2019-04-03 13:43:21', '2019-04-03 13:43:21'),
(161, 1, 135, '2019-04-03 14:55:21', '2019-04-03 14:55:21'),
(162, 1, 136, '2019-04-04 01:24:57', '2019-04-04 01:24:57'),
(163, 2, 137, '2019-04-04 02:27:29', '2019-04-04 02:27:29'),
(165, 5, 143, '2019-04-04 11:25:45', '2019-04-04 11:25:45'),
(166, 1, 144, '2019-04-05 01:53:03', '2019-04-05 01:53:03'),
(167, 1, 145, '2019-04-05 03:39:55', '2019-04-05 03:39:55'),
(168, 1, 146, '2019-04-05 03:50:21', '2019-04-05 03:50:21'),
(169, 1, 146, '2019-04-05 03:53:33', '2019-04-05 03:53:33'),
(170, 1, 146, '2019-04-05 03:54:10', '2019-04-05 03:54:10'),
(171, 1, 146, '2019-04-05 03:55:11', '2019-04-05 03:55:11'),
(172, 1, 146, '2019-04-05 03:55:49', '2019-04-05 03:55:49'),
(173, 1, 146, '2019-04-05 03:56:20', '2019-04-05 03:56:20'),
(174, 1, 146, '2019-04-05 03:56:39', '2019-04-05 03:56:39'),
(175, 1, 146, '2019-04-05 03:56:57', '2019-04-05 03:56:57'),
(176, 1, 146, '2019-04-05 03:57:23', '2019-04-05 03:57:23'),
(177, 1, 146, '2019-04-05 03:58:38', '2019-04-05 03:58:38'),
(178, 1, 146, '2019-04-05 04:07:15', '2019-04-05 04:07:15'),
(179, 1, 146, '2019-04-05 04:07:44', '2019-04-05 04:07:44'),
(180, 1, 147, '2019-04-05 04:09:30', '2019-04-05 04:09:30'),
(181, 1, 147, '2019-04-05 04:10:22', '2019-04-05 04:10:22'),
(183, 7, 149, '2019-04-05 07:08:26', '2019-04-05 07:08:26'),
(184, 1, 150, '2019-04-05 07:18:36', '2019-04-05 07:18:36'),
(185, 1, 150, '2019-04-05 12:00:08', '2019-04-05 12:00:08'),
(186, 2, 152, '2019-04-06 08:11:20', '2019-04-06 08:11:20'),
(187, 2, 153, '2019-04-06 09:03:37', '2019-04-06 09:03:37'),
(188, 2, 154, '2019-04-06 09:23:08', '2019-04-06 09:23:08'),
(189, 1, 155, '2019-04-06 09:42:49', '2019-04-06 09:42:49'),
(190, 2, 156, '2019-04-06 11:09:27', '2019-04-06 11:09:27'),
(192, 2, 158, '2019-04-07 07:22:09', '2019-04-07 07:22:09'),
(193, 2, 158, '2019-04-07 07:24:36', '2019-04-07 07:24:36'),
(194, 1, 159, '2019-04-07 07:26:15', '2019-04-07 07:26:15'),
(195, 1, 160, '2019-04-07 07:28:06', '2019-04-07 07:28:06'),
(196, 2, 160, '2019-04-07 07:28:15', '2019-04-07 07:28:15'),
(197, 2, 160, '2019-04-07 07:29:38', '2019-04-07 07:29:38'),
(198, 2, 160, '2019-04-07 07:30:06', '2019-04-07 07:30:06'),
(199, 2, 160, '2019-04-07 07:30:29', '2019-04-07 07:30:29'),
(200, 2, 160, '2019-04-07 07:32:33', '2019-04-07 07:32:33'),
(201, 1, 161, '2019-04-07 07:37:08', '2019-04-07 07:37:08'),
(202, 1, 161, '2019-04-07 07:38:24', '2019-04-07 07:38:24'),
(203, 1, 161, '2019-04-07 07:43:03', '2019-04-07 07:43:03'),
(204, 1, 161, '2019-04-07 07:43:23', '2019-04-07 07:43:23'),
(205, 1, 161, '2019-04-07 07:46:20', '2019-04-07 07:46:20'),
(206, 1, 161, '2019-04-07 07:47:03', '2019-04-07 07:47:03'),
(207, 1, 161, '2019-04-07 07:54:40', '2019-04-07 07:54:40'),
(208, 1, 162, '2019-04-07 07:54:57', '2019-04-07 07:54:57'),
(209, 1, 162, '2019-04-07 07:59:15', '2019-04-07 07:59:15'),
(210, 1, 162, '2019-04-07 08:01:51', '2019-04-07 08:01:51'),
(211, 1, 164, '2019-04-07 08:04:44', '2019-04-07 08:04:44'),
(212, 1, 164, '2019-04-07 08:06:00', '2019-04-07 08:06:00'),
(213, 1, 164, '2019-04-07 08:10:44', '2019-04-07 08:10:44'),
(214, 1, 164, '2019-04-07 08:11:53', '2019-04-07 08:11:53'),
(215, 1, 164, '2019-04-07 08:13:45', '2019-04-07 08:13:45'),
(216, 1, 164, '2019-04-07 08:14:29', '2019-04-07 08:14:29'),
(217, 1, 164, '2019-04-07 08:15:42', '2019-04-07 08:15:42'),
(218, 1, 164, '2019-04-07 08:15:57', '2019-04-07 08:15:57'),
(219, 1, 165, '2019-04-07 08:16:12', '2019-04-07 08:16:12'),
(220, 1, 165, '2019-04-07 08:25:06', '2019-04-07 08:25:06'),
(221, 1, 165, '2019-04-07 08:25:16', '2019-04-07 08:25:16'),
(222, 1, 165, '2019-04-07 08:25:33', '2019-04-07 08:25:33'),
(223, 2, 166, '2019-04-07 08:44:37', '2019-04-07 08:44:37'),
(224, 1, 168, '2019-04-07 12:32:28', '2019-04-07 12:32:28'),
(225, 6, 169, '2019-04-07 12:37:58', '2019-04-07 12:37:58'),
(226, 1, 170, '2019-04-07 12:38:25', '2019-04-07 12:38:25'),
(227, 5, 172, '2019-04-07 12:45:43', '2019-04-07 12:45:43'),
(228, 1, 176, '2019-04-07 14:07:17', '2019-04-07 14:07:17'),
(229, 1, 176, '2019-04-07 14:09:54', '2019-04-07 14:09:54'),
(230, 1, 183, '2019-04-07 15:18:26', '2019-04-07 15:18:26'),
(231, 1, 184, '2019-04-08 04:47:46', '2019-04-08 04:47:46'),
(232, 1, 195, '2019-04-10 01:43:28', '2019-04-10 01:43:28'),
(233, 5, 198, '2019-04-10 10:48:13', '2019-04-10 10:48:13'),
(234, 7, 204, '2019-04-10 11:37:12', '2019-04-10 11:37:12'),
(238, 7, 211, '2019-04-10 21:25:39', '2019-04-10 21:25:39'),
(239, 1, 212, '2019-04-11 05:14:02', '2019-04-11 05:14:02'),
(240, 1, 213, '2019-04-20 08:40:53', '2019-04-20 08:40:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pencarian_beasiswa`
--

CREATE TABLE `detail_pencarian_beasiswa` (
  `id_detail_pencarian_beasiswa` int(225) NOT NULL,
  `id_pencarian_beasiswa` int(225) NOT NULL,
  `id_konten_beasiswa_umum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_pencarian_beasiswa`
--

INSERT INTO `detail_pencarian_beasiswa` (`id_detail_pencarian_beasiswa`, `id_pencarian_beasiswa`, `id_konten_beasiswa_umum`) VALUES
(48, 443, 'post-6100'),
(49, 443, 'post-4925'),
(50, 443, 'post-4006'),
(51, 443, 'post-6100'),
(52, 443, 'post-4925'),
(53, 443, 'post-4006'),
(54, 443, 'post-6100'),
(55, 443, 'post-4925'),
(56, 443, 'post-4006'),
(57, 443, 'post-5798'),
(58, 443, 'post-5720'),
(59, 443, 'post-4603'),
(60, 443, 'post-4597'),
(61, 443, 'post-6100'),
(62, 443, 'post-4925'),
(63, 443, 'post-4006'),
(64, 444, 'post-6517'),
(65, 444, 'post-6511'),
(66, 444, 'post-6504');

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
(5, 5, 'Tahun 2017, ITS menduduki peringkat terbaik ke-5 di Indonesia berdasarkan penilaian Kementerian Riset, Teknologi, dan Pendiddikan Tinggi (Kemristekdikti) dan menjadi 10 universitas unggulan di Indonesia versi QS World University Ranking. Selain dari aspek pendidikan dan manejemen, ITS memiliki komitmen yang kuat pada pengelolaan lingkungan, salah satunya dengan Program Smart Eco-Campus.', 'Jl. Raya ITS, \r\nKeputih, Sukolilo,\r\n Kota Surabaya, Jawa Timur 60111', 'humas@its.ac.id', '031-5994251-54', '2019-03-28 07:30:46', '2019-03-28 07:30:46'),
(6, 6, 'Universitas ini didirikan pada 8 September 1636 dan merupakan perguruan tinggi tertua di Amerika Serikat. Awalnya bernama New College, dan dinamakan ulang menjadi Harvard College pada 13 Maret 1639 untuk menghormati penyumbang terbesarnya, John Harvard, seorang mantan mahasiswa Universitas Cambridge.\r\nUniversitas Harvard didedikasikan untuk keunggulan dalam pengajaran, pembelajaran dan penelitian, dan untuk mengembangkan para pemimpin di banyak disiplin ilmu yang membuat perbedaan secara global. \r\nUniversitas ini memiliki pendaftaran lebih dari 20.000 kandidat tingkat, termasuk mahasiswa sarjana, pascasarjana, dan profesional. Harvard memiliki lebih dari 360.000 alumni di seluruh dunia.', 'Massachusetts Hall\r\nCambridge, MA 02138', 'fascom@fas.harvard.edu', '(617) 495-1000', '2019-03-29 13:33:26', '2019-03-30 03:38:47'),
(7, 7, 'Pada saat ini IPB adalah satu-satunya perguruan tinggi di Indonesia yang menyandang nama “institut” setaraf universitas yang diberi kepercayaan penuh oleh pemerintah untuk menekuni dan mengembangkan ilmu-ilmu pertanian tropika di tanah air.\r\n\r\nIPB telah tumbuh dan berkembang menjadi perguruan tinggi yang mempunyai reputasi baik serta berperan penting dalam pembangunan nasional dan pendidikan tinggi di Indonesia. Proses tumbuh dan berkembangnya IPB telah melalui tiga penggalan waktu yakni masa penjajahan, masa perjuangan kemerdekaan, dan masa setelah proklamasi kemerdekaan. Dari ketiga masa tersebut ada benang merah yang konsisten yakni nilai-nilai kejuangan, kebangsaan, patriotisme dan kepemimpinan para pendahulu. Inilah nilai-nilai yang selalu dipegang teguh dari masa ke masa.\r\n\r\nTradisi pengabdian kepada masyarakat yang merupakan bagian integral dari tridarma perguruan tinggi juga lahir dari kampus ini. Action research yang dimulai pada tahun 1963 di Karawang dan melalui kerjasama dengan berbagai perguruan tinggi dan institusi lainnya, ternyata menghantarkan bangsa Indonesia dapat meningkatkan produksi beras secara nyata dan bahkan pernah mencapai swasembada beras.', 'Jl. Raya Dramaga \r\nKampus IPB Dramaga Bogor \r\n16680 West Java, Indonesia', 'biro.komunikasi@apps.ipb.ac.id', '+62 251 8622642', '2019-04-02 07:51:17', '2019-04-02 07:51:17');

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
(43, 'Fakultas Biologi', '2019-03-23 23:14:13', '2019-03-23 23:14:13'),
(44, 'Business School', '2019-03-30 02:40:14', '2019-03-30 02:43:54'),
(45, 'College', '2019-03-30 02:45:21', '2019-03-30 02:45:21'),
(46, 'Division of Continuing Education', '2019-03-30 02:46:24', '2019-03-30 02:46:24'),
(47, 'School of Dental Medicine', '2019-03-30 02:47:07', '2019-03-30 02:47:07'),
(48, 'Divinity School', '2019-03-30 02:47:28', '2019-03-30 02:47:28'),
(49, 'Faculty of Arts and Sciences', '2019-03-30 02:48:04', '2019-03-30 08:19:36'),
(50, 'Graduate School of Design', '2019-03-30 02:48:25', '2019-03-30 02:48:25'),
(51, 'Graduate School of Education', '2019-03-30 02:49:02', '2019-03-30 02:49:02'),
(52, 'School of Engineering and Applied Sciences', '2019-03-30 02:51:01', '2019-03-30 02:51:01'),
(53, 'Kennedy School of Government', '2019-03-30 02:51:20', '2019-03-30 12:47:33'),
(54, 'Law School', '2019-03-30 02:51:32', '2019-03-30 02:51:32'),
(55, 'Medical School', '2019-03-30 02:51:47', '2019-03-30 02:51:47'),
(56, 'Instituted for Advanced Study', '2019-03-30 02:52:34', '2019-03-30 02:52:34'),
(57, 'School of Public Health', '2019-03-30 02:53:13', '2019-03-30 02:53:13'),
(58, 'Sains', '2019-04-02 04:15:49', '2019-04-02 04:15:49'),
(59, 'Teknologi Kelautan', '2019-04-02 04:34:25', '2019-04-02 04:34:25'),
(60, 'Teknologi Industri', '2019-04-02 04:34:41', '2019-04-02 04:34:41'),
(61, 'Matematika, Komputasi, dan Sains Data', '2019-04-02 04:35:09', '2019-04-02 04:35:09'),
(62, 'Teknologi Elektro', '2019-04-02 04:35:36', '2019-04-02 04:35:36'),
(63, 'Teknologi Informasi dan Komunikasi', '2019-04-02 04:36:15', '2019-04-02 04:36:15'),
(64, 'Teknik Sipil, Lingkungan, dan Kebumian', '2019-04-02 04:36:51', '2019-04-02 04:36:51'),
(65, 'Bisnis dan Manajemen Teknologi', '2019-04-02 04:37:12', '2019-04-02 04:37:12'),
(66, 'Arsitektur, Desain, dan Perencenaan', '2019-04-02 04:42:16', '2019-04-02 04:42:16'),
(67, 'Vokasi', '2019-04-02 04:42:39', '2019-04-02 04:42:39'),
(68, 'Fakultas Pertanian', '2019-04-02 08:01:20', '2019-04-02 08:01:20'),
(69, 'Fakultas Kedokteran Hewan', '2019-04-02 08:03:34', '2019-04-02 08:03:34'),
(70, 'Fakultas Peternakan', '2019-04-02 08:03:54', '2019-04-02 08:03:54'),
(71, 'Fakultas Perikanan dan Kelautan', '2019-04-02 08:04:46', '2019-04-02 08:04:46'),
(72, 'Fakultas Kehutanan', '2019-04-02 08:05:16', '2019-04-02 08:05:29'),
(73, 'Fakultas Teknologi Pertanian', '2019-04-02 08:05:52', '2019-04-02 08:05:52'),
(74, 'Fakultas Matematika dan Ilmu Pengetahuan Alam', '2019-04-02 08:06:15', '2019-04-02 08:06:32'),
(75, 'Fakultas Ekonomi dan Manajemen', '2019-04-02 08:07:04', '2019-04-02 08:07:04'),
(76, 'Fakultas Ekologi Manusia', '2019-04-02 08:07:23', '2019-04-02 08:07:23'),
(77, 'Sekolah Bisnis Program Bisnis', '2019-04-02 08:08:17', '2019-04-02 08:08:17'),
(79, 'Fakultas Ekonomi dan Bisnis', '2019-04-09 09:08:23', '2019-04-09 09:08:23'),
(80, 'Fakultas Ilmu Administrasi', '2019-04-09 09:08:44', '2019-04-09 09:08:44'),
(81, 'Fakultas Pertanian', '2019-04-09 09:09:00', '2019-04-09 09:09:00'),
(82, 'Fakultas Peternakan', '2019-04-09 09:09:16', '2019-04-09 09:09:16'),
(83, 'Fakultas Teknik', '2019-04-09 09:09:36', '2019-04-09 09:09:36'),
(84, 'Fakultas Kedokteran', '2019-04-09 09:09:51', '2019-04-09 09:09:51'),
(85, 'Fakultas Ilmu Perikanan dan Kelautan', '2019-04-09 09:10:11', '2019-04-09 09:10:11'),
(86, 'Fakultas Matematika dan Ilmu Pengetahuan Alam', '2019-04-09 09:10:39', '2019-04-09 09:10:39'),
(87, 'Fakultas Teknologi Pertanian', '2019-04-09 09:11:00', '2019-04-09 09:11:00'),
(88, 'Fakultas Ilmu Sosial dan Ilmu Politik', '2019-04-09 09:11:31', '2019-04-09 09:11:31'),
(89, 'Fakultas Ilmu Budaya', '2019-04-09 09:11:55', '2019-04-09 09:11:55'),
(90, 'Fakultas Kedokteran Hewan', '2019-04-09 09:12:15', '2019-04-09 09:12:15'),
(91, 'Fakultas Ilmu Komputer', '2019-04-09 09:12:40', '2019-04-09 09:12:40'),
(92, 'Fakultas Kedokteran Gigi', '2019-04-09 09:12:56', '2019-04-09 09:12:56');

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
(50, 43, 2, '2019-03-23 23:14:13', '0000-00-00 00:00:00'),
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
(67, 57, 6, '2019-03-30 02:53:13', '0000-00-00 00:00:00'),
(68, 58, 5, '2019-04-02 04:15:49', '0000-00-00 00:00:00'),
(69, 59, 5, '2019-04-02 04:34:25', '0000-00-00 00:00:00'),
(70, 60, 5, '2019-04-02 04:34:41', '0000-00-00 00:00:00'),
(71, 61, 5, '2019-04-02 04:35:09', '0000-00-00 00:00:00'),
(72, 62, 5, '2019-04-02 04:35:36', '0000-00-00 00:00:00'),
(73, 63, 5, '2019-04-02 04:36:15', '0000-00-00 00:00:00'),
(74, 64, 5, '2019-04-02 04:36:51', '0000-00-00 00:00:00'),
(75, 65, 5, '2019-04-02 04:37:12', '0000-00-00 00:00:00'),
(76, 66, 5, '2019-04-02 04:42:16', '0000-00-00 00:00:00'),
(77, 67, 5, '2019-04-02 04:42:39', '0000-00-00 00:00:00'),
(78, NULL, 7, '2019-04-02 07:51:18', '0000-00-00 00:00:00'),
(79, 68, 7, '2019-04-02 08:01:20', '0000-00-00 00:00:00'),
(80, 69, 7, '2019-04-02 08:03:35', '0000-00-00 00:00:00'),
(81, 70, 7, '2019-04-02 08:03:54', '0000-00-00 00:00:00'),
(82, 71, 7, '2019-04-02 08:04:46', '0000-00-00 00:00:00'),
(83, 72, 7, '2019-04-02 08:05:16', '0000-00-00 00:00:00'),
(84, 73, 7, '2019-04-02 08:05:52', '0000-00-00 00:00:00'),
(85, 74, 7, '2019-04-02 08:06:16', '0000-00-00 00:00:00'),
(86, 75, 7, '2019-04-02 08:07:04', '0000-00-00 00:00:00'),
(87, 76, 7, '2019-04-02 08:07:23', '0000-00-00 00:00:00'),
(88, 77, 7, '2019-04-02 08:08:17', '0000-00-00 00:00:00');

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
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konten_beasiswa`
--

INSERT INTO `konten_beasiswa` (`id_konten_beasiswa_umum`, `judul`, `date`, `link`, `deskripsi`, `create_dtm`, `update_dtm`) VALUES
('post-4006', 'Beasiswa Ma’had Lughah Universitas Ummul Qura Mekkah, Arab Saudi', '2016-11-13', 'http://beasiswa.id/2016/beasiswa-mahad-lughah-universitas-ummul-qura-mekkah-arab-saudi/', 'Dibuka pendaftaran beasiswa program ma’had lughoh di Jaami’ah Ummul Quro’ atau Ummul Qura University (UQU). Pendaftaran beasiswa tahun ajaran 1437-1438 H / 2016-2017 M dibuka secara online mulai tanggal 18 Dzulhijjah 1437 H / 19 September 2016 M hingga tanggal 30 Jumadil Ula 1438 H / 29 Desember 2016 M. Fasilitas beasiswa Universitas Ummul Qura tidak jauh beda dengan Universitas Islam Madinah (UIM). Bedanya, di Makkah ada Ka’bah dan Masjidil Haram, sedangkan di Madinah ada Raudhoh dan Masjid Nabawi. Beasiswa Jaami’ah Ummul Quro’ ini dibuka untuk pria (ikhwan) dan wanita (akhwat), baik yang sudah menikah ataupun belum. Profil Ummul Qura University Ummul Qura merupakan universitas yang paling bergengsi di seluruh dunia Islam karena lokasinya di Mekkah. Jarak Ummul Qura dengan Masjidil Haram sendiri hanya sekitar 4 km yang memungkinkan Anda umroh tiap hari. Ummul Qura adalah&hellip;', '2019-04-10 21:19:45', '0000-00-00 00:00:00'),
('post-4597', 'Beasiswa S1 di Belanda untuk Foundation Program dari Holland ISC', '2017-02-28', 'http://beasiswa.id/2017/beasiswa-s1-di-belanda-untuk-foundation-program-dari-holland-isc/', 'Beasiswa di Belanda ini ialah program Study Group – Holland International Study Centre (ISC). Bantuan finansial tersebut diberikan untuk program  foundation, atau persiapan untuk studi S1. Holland ISC bekerja sama dengan beberapa universitas di Holland. Mitra-mitra ini dari yang termasuk dalam Top 200 universitas riset sampai universitas sains terapan terbaik di Belanda. Holland ISC menyediakan akses menuju institusi mitra tersebut. Research University University of Groningen Vrije Universiteit Amsterdam Twente University Tilburg University University of Applied Science Hanze University of Applied Science Hague University of Applied Science Wittenburg University Amsterdam Tilburg University Program Foundation Year dari Holland ISC menjamin peserta siap mengejar gelarnya dengan skill dan kepercayaan diri. Program Studi Berikut berbagai program studi foundation yang ditawarkan. Bisnis dan Manajemen Program satu tahun ini menyiapkan peserta untuk menempuh S1 di berbagai&hellip;', '2019-04-11 04:43:47', '0000-00-00 00:00:00'),
('post-4603', 'Beasiswa S1 Orange Tulip Scholarship di Hague University, Belanda', '2017-02-28', 'http://beasiswa.id/2017/beasiswa-s1-orange-tulip-scholarship-di-hague-university-belanda/', 'Beasiswa S1 di Belanda, Hague University dapat dilamar melalui Orange Tulip Scholarship. Institusi tersebut menyediakan beasiswa bagi 5 penerima. Hague University ialah kampus bagi 150 negara dimana semua orang bicara dalam bahasa Inggris. Mahasiswa akan diajar oleh dosen local maupun internasional yang mudah berinteraksi dengan mahasiswanya. Hubungn sosial antar-mahasiswa juga memperkaya masa studi. Ada berbagai program studi sarjana di Hague University. Pilihan jurusan lihat di Programmes – Hague University of Applied Sciences. Cakupan dan Nilai Beasiswa Setiap penerima beasiswa S1 di Belanda ini memperoleh uang tunai sebesar 5.000 Euro pada tahun pertama studi. Beasiswa akan diberikan setelah tiba di Belanda dan melunasi biaya studi, visa, dan lain-lain. Kriteria Penerimaan Pelamar beasiswa S1 di Belanda ini harus sesuai dengan kriteria berikut. Berasal dari negara non-Uni Eropa, Islandia, Norgwegia, Liechtenstein, Swiss, dan&hellip;', '2019-04-11 04:43:47', '0000-00-00 00:00:00'),
('post-4925', 'Beasiswa S1 di Imam Abdulrahman bin Faisal University, Arab Saudi', '2017-07-03', 'http://beasiswa.id/2017/beasiswa-s1-di-imam-abdulrahman-bin-faisal-university-arab-saudi/', 'Arab Saudi saat ini menawarkan beasiswa di Imam Abdulrahman Bin Faisal University yang terletak di Dammam Provinsi Timur, Kerajaan Saudi Arabia. Beasiswa ini ditawarkan bagi lulusan SMA/SMK/Sederajat yang berminat untuk melanjutkan kuliah S1 dalam program studi Islam dan umum pada tahun ajaran 1438-1439 H atau 2017-2018. Fakultas umum yang tersedia di universitas ini diantaranya Fakultas Teknik Komputer, Teknik Mesin, Arsitektur, Bisnis, dan Perminyakan. Sedangkan untuk program Studi Islam terdapat dua fakultas yang tersedia yaitu Fakultas Syariah Wal Qonun dan Tarbiyah (Tarbiyah Umum dan Quran Psikologi). Dalam proses kuliah nantinya, mahasiswa yang mengambil Jurusan Umum tidak diharuskan mahir berbahasa Arab, karena bahasa Arab hanya merupakan bahasa pengantar seperti untuk pengajuan pendaftaran beasiswa. Jadi bagi mahasiswa asing yang ingin mengambil Jurusan Umum sebaiknya lebih memperdalam bahasa Inggris, karena saat memasuki Sanah Takhdhiriyyah (Tahun&hellip;', '2019-04-10 21:19:45', '0000-00-00 00:00:00'),
('post-5720', 'Beasiswa S1 dan S2 Holland Scholarship di Belanda', '2018-09-29', 'http://beasiswa.id/2018/beasiswa-s1-dan-s2-holland-scholarship-di-belanda/', 'Baru-baru ini ada skema beasiswa lain yang ditawarkan Pemerintah Belanda yang tidak saja ditujukan bagi warganegara lokal, tapi juga mancanegara (di luar Kawasan Ekonomi Eropa). Holland Scholarship. Beasiswa tersebut dapat dipergunakan untuk studi S1 atau S2 di universitas-universitas Belanda. Beasiswa Holland dibiayai oleh Kementerian Pendidikan, Budaya dan Ilmu Pengetahuan Belanda bekerja sama dengan universitas riset dan universitas ilmu terapan Belanda. Pemenangnya akan memperoleh beasiswa senilai 5.000 Euro pada tahun pertama studi. Meski bukan beasiswa penuh dan berbeda dengan beasiswa StuNed, OTS, atau NFP, beasiswa Holland cukup membantu meringankan biaya studi yang harus dikeluarkan. Setidaknya ada sekitar 2.100 lebih program studi berbahasa Inggris yang ditawarkan di universitas Belanda. Universitas yang bisa dilamar misalnya Amsterdamse University of the Arts, Amsterdam University of Applied Sciences, Gerrit Rietveld Academie, Erasmus University Rotterdam, Leiden University, Maastricht University,&hellip;', '2019-04-11 04:43:32', '0000-00-00 00:00:00'),
('post-5798', 'Beasiswa S1 dan S2 dari Orange Tulip Scholarship di Belanda', '2018-10-17', 'http://beasiswa.id/2018/beasiswa-s1-dan-s2-dari-orange-tulip-scholarship-di-belanda/', 'Ada tawaran spesial buat kamu yang ingin ke negeri kincir angin. Ya, beasiswa Belanda yang sedang dibuka saat ini adalah program Orange Tulip Scholarship (OTS). Setiap tahunnya, institusi pendidikan tinggi dan perusahaan Belanda bersama dengan Pemerintah Indonesia rutin menawarkan beasiswa S1 dan S2 dari Orange Tulip Scholarship di Belanda bagi warganegara Indonesia yang berminat untuk melanjutkan studi baik di jenjang Foundation, Bachelor (S1), dan Master (S2) pada universitas-universitas yang terdapat di Belanda. Dalam skema Beasiswa OTS 2019 – 2020 ini terdapat puluhan universitas Belanda yang ikut serta dan nantinya akan terus bertambah. Berikut ini merupakan daftar skema institusi dan program studi yang telah mengkonfirmasi partisipasi mereka dalam Beasiswa OTS Indonesia 2019 – 2020: Deadline pendaftaran 15 Januari 2019 1. University of Amsterdam Deadline pendaftaran 1 Februari 2019 1.&hellip;', '2019-04-11 04:43:31', '0000-00-00 00:00:00'),
('post-6100', 'Beasiswa S1, S2, S3 dan Postdoc dari Islamic Development Bank', '2018-12-25', 'http://beasiswa.id/2018/beasiswa-s1-s2-s3-dan-postdoc-dari-islamic-development-bank/', 'Salah satu program beasiswa bergengsi yang saat ini tengah dibuka adalah&nbsp;IsDB Scholarship&nbsp;yang ditawarkan langsung oleh Islamic Development Bank atau Bank Pembangunan Islam bagi negara-negara anggota IsDB serta komunitas muslim yang berada di negara non anggota IsDB. Beasiswa IsDB memiliki beragam tawaran mulai dari&nbsp;beasiswa S1, beasiswa S2,&nbsp;beasiswa S3, hingga beasiswa postdoctoral dan riset.&nbsp; Yang menarik, pada beasiswa IsDB 2019 – 2020 pelamar dapat mendaftar beasiswa untuk tujuan studi di dalam negeri maupun luar negeri. Anda bebas memilih universitas atau perguruan tinggi yang dilamar dengan syarat universitas tersebut masuk dalam peringkat 10 universitas terbaik di negara tujuan. Misalnya di dalam negeri ada ITB, UGM, IPB, UI, Undip, dan seterusnya. Beasiswa yang diberikan oleh IsDB mencakup biaya kuliah penuh yang dibayarkan langsung ke universitas, tunjangan hidup bulanan yang sepadan dengan&hellip;', '2019-04-10 21:19:45', '0000-00-00 00:00:00'),
('post-6504', 'Beasiswa S1 dari CIMB Foundation', '2019-03-27', 'http://beasiswa.id/2019/beasiswa-s1-dari-cimb-foundation/', 'Bagi kamu yang sedang mencari beasiswa S1, ada tawaran beasiswa CIMB Asean yang bisa kamu coba. Beasiswa ini di tawarkan oleh CIMB Foundation dengan nama Program CIMB ASEAN Scholarships. Beasiswa CIMB ASEAN tidak hanya di tawarkan bagi lulusan SMA/SMK/Sederajat yang akan mengambil kuliah di luar maupun dalam negeri, namun beasiswa ini juga ditawarkan bagi mahasiswa S1 yang sedang menjalani perkuliahan di dalam ataupun luar negeri pada tahun pertama atau tahun kedua. Baca Juga : Beasiswa Kuliah Singkat dari Hubert H. Humphrey Fellowships Melalui program ini, CIMB tidak hanya menawarkan beasiswa perkuliahan tetapi juga menyediakan program pengembangan profesional menarik serta sistem dukungan pembinaan/mentoring untuk memberdayakan talenta muda dalam mengubah hidup mereka dan membuat perbedaan yang lebih baik bagi masyarakat sekitar mereka. CAKUPAN PEMBIAYAAN BEASISWA: Beasiswa penuh uang perkuliahan,&hellip;', '2019-04-11 05:39:30', '0000-00-00 00:00:00'),
('post-6511', 'Beasiswa S1 dari Kementrian Agama RI', '2019-03-28', 'http://beasiswa.id/2019/beasiswa-s1-dari-kementrian-agama-ri/', 'Kali ini,  kembali membawa informasi beasiswa yang di tawarkan oleh Kementrian Agama RI. Kini Kementrian Agama RI tengah menawarkan beasiswa bagi para santri lulusan pondok pesantren tahun akademik 2019-2020. Program Beasiswa Santri Berprestasi atau PBSB. Pendaftarannya dibuka mulai 1 April s/d 30 April 2019.&nbsp; Baca Juga : Beasiswa S1 dari CIMB Foundation Beasiswa santri ini memberikan kesempatan bagi lulusan santri tingkat akhir (aliyah/ulya) dan lulus tahun 2017, 2018 dan 2019 pada Madrasah Aliyah Swasta (MAS) dan Madrasah Aliyah Negeri (MAN) yang berada dan/atau menjadi bagian dari Pondok Pesantren, Satuan Pendidikan Muadalah (SPM), Satuan Pendidikan Diniyah Formal (PDF) dan Pondok Pesantren Salafiyah (PPS) Penyelenggara Pendidikan Kesetaraan. Santri terpilih nantinya dapat melanjutkan studi sarjana (S1) pada bidang studi yang berhubungan dengan MIPA, IPS, dan Keagamaan di sejumlah perguruan&hellip;', '2019-04-11 05:39:30', '0000-00-00 00:00:00'),
('post-6517', 'Beasiswa S1 dari PT Mandala Multifinance Tbk', '2019-03-31', 'http://beasiswa.id/2019/beasiswa-s1-dari-pt-mandala-multifinance-tbk/', 'Kali ini beasiswa.ID kembali dengan membawa informasi beasiswa dari PT. Mandala Multifinance Tbk. PT. Mandala kini sedang menawarkan beasiswa untuk mahasiswa S1 on-going dari PTN dan PTS di Indonesia dalam Program Beasiswa Mandala (Mandala Scholarship Program). Program ini bertujuan untuk membantu para mahasiswa agar terus termotivasi untuk berprestasi serta mencari kader-kader perusahaan yang memiliki potensi untuk membangun karir dan bersama-sama mengembangkan perusahaan. Berikut informasi selengkapnya. Baca Juga : Beasiswa S1 dari Kementrian Agama RI PT. Mandala Multifinance Tbk adalah salah satu perusahaan pembiayaan otomotif dan multiguna berskala nasional yang sedang berkembang dan terus memperluas jaringan bisnisnya di seluruh wilayah Indonesia. Sebagai salah satu bentuk kepedulian sosial perusahaan terhadap dunia pendidikan, PT. Mandala Multifinance Tbk menawarkan beasiswa “Mandala Scholarship Program” bagi mahasiswa-mahasiswi berprestasi di seluruh Indonesia. PERGURUAN TINGGI&hellip;', '2019-04-11 05:39:28', '0000-00-00 00:00:00');

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
(118, 'Annisa dwi N', 'nisadwi', '1f191d8125e30434f6dec60608dc6c03', 'Annisaduwie@gmail.com', 'Pelajar', 'aktif', '0', 'neonbrand-618320-unsplash.jpg', '2018-09-24 01:42:32', '2019-04-05 05:04:50'),
(122, 'Hida Nur Fatimah', 'hida', 'cfd6572c9a7c12d8331916b5f3570f84', 'hida@yopmail.com', 'Pelajar', 'aktif', '1', NULL, '2018-10-26 12:12:09', '2019-04-10 13:11:17'),
(129, 'ester', 'ester', '202cb962ac59075b964b07152d234b70', 'ester.lia.123@gmail.com', 'Mahasiswa', 'aktif', '0', 'contoh+profile+pengguna+aplikasi+dengan+yii.png', '2019-04-07 17:06:11', '2019-04-07 08:21:15'),
(130, 'Hida Nur Fatimah', 'fatimah', '25d55ad283aa400af464c76d713c07ad', 'hidanurfatimah@gmail.com', 'Mahasiswa', 'aktif', '0', NULL, '2019-04-10 13:10:30', '2019-04-10 04:32:19');

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
(68, 'Aeronotika dan Astronotika', 'Dalam Negeri', 'Sarjana', '', '2019-03-24 22:55:54', 118, '2019-03-24 22:55:54', '2019-04-05 02:24:58', 'Sudah Dihapus'),
(69, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-28 08:04:06', 118, '2019-03-28 08:04:06', '2019-04-05 02:40:31', 'Sudah Dihapus'),
(70, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:18:49', 118, '2019-03-29 02:18:49', '2019-04-05 02:40:38', 'Sudah Dihapus'),
(71, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:18:59', 118, '2019-03-29 02:18:59', '2019-04-05 02:40:44', 'Sudah Dihapus'),
(72, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:19:03', 118, '2019-03-29 02:19:03', '2019-04-05 02:40:50', 'Sudah Dihapus'),
(73, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:19:06', 118, '2019-03-29 02:19:06', '2019-04-05 02:40:56', 'Sudah Dihapus'),
(74, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:19:24', 118, '2019-03-29 02:19:24', '2019-04-05 02:41:03', 'Sudah Dihapus'),
(75, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:22:49', 118, '2019-03-29 02:22:49', '2019-04-05 02:41:09', 'Sudah Dihapus'),
(76, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:22:56', 118, '2019-03-29 02:22:56', '2019-04-05 02:41:14', 'Sudah Dihapus'),
(77, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:22:58', 118, '2019-03-29 02:22:58', '2019-04-05 02:41:19', 'Sudah Dihapus'),
(78, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:23:07', 118, '2019-03-29 02:23:07', '2019-04-05 02:41:25', 'Sudah Dihapus'),
(79, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:23:13', 118, '2019-03-29 02:23:13', '2019-04-05 02:41:30', 'Sudah Dihapus'),
(80, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:23:56', 118, '2019-03-29 02:23:56', '2019-04-05 02:41:46', 'Sudah Dihapus'),
(81, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:29:07', 118, '2019-03-29 02:29:07', '2019-04-05 02:41:35', 'Sudah Dihapus'),
(82, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-03-29 02:29:17', 118, '2019-03-29 02:29:17', '2019-04-01 12:07:15', 'Sudah Dihapus'),
(99, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-02 07:13:35', 118, '2019-04-02 07:13:35', '2019-04-05 02:41:41', 'Sudah Dihapus'),
(100, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-02 07:14:03', 118, '2019-04-02 07:14:03', '2019-04-05 02:41:51', 'Sudah Dihapus'),
(101, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-02 07:14:06', 118, '2019-04-02 07:14:06', '2019-04-05 02:43:48', 'Sudah Dihapus'),
(102, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-02 07:14:06', 118, '2019-04-02 07:14:06', '2019-04-05 02:43:43', 'Sudah Dihapus'),
(103, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-02 07:14:06', 118, '2019-04-02 07:14:06', '2019-04-05 02:41:56', 'Sudah Dihapus'),
(104, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-02 07:14:06', 118, '2019-04-02 07:14:06', '2019-04-05 02:42:01', 'Sudah Dihapus'),
(105, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-02 07:14:06', 118, '2019-04-02 07:14:06', '2019-04-05 02:42:08', 'Sudah Dihapus'),
(106, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-02 16:19:23', 118, '2019-04-02 16:19:23', '2019-04-05 02:43:39', 'Sudah Dihapus'),
(107, 'Biologi', 'Dalam Negeri', 'Sarjana', '', '2019-04-02 17:10:07', 118, '2019-04-02 17:10:07', '2019-04-05 02:43:35', 'Sudah Dihapus'),
(113, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 06:01:14', 118, '2019-04-03 06:01:14', '2019-04-05 02:43:32', 'Sudah Dihapus'),
(114, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 06:12:27', 118, '2019-04-03 06:12:27', '2019-04-05 02:43:29', 'Sudah Dihapus'),
(115, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 06:39:48', 118, '2019-04-03 06:39:48', '2019-04-05 02:43:25', 'Sudah Dihapus'),
(116, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 06:40:50', 118, '2019-04-03 06:40:50', '2019-04-05 02:43:22', 'Sudah Dihapus'),
(117, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 06:42:08', 118, '2019-04-03 06:42:08', '2019-04-05 02:43:19', 'Sudah Dihapus'),
(118, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 06:47:08', 118, '2019-04-03 06:47:08', '2019-04-05 02:43:16', 'Sudah Dihapus'),
(119, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 06:47:43', 118, '2019-04-03 06:47:43', '2019-04-05 02:43:14', 'Sudah Dihapus'),
(120, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 07:35:55', 118, '2019-04-03 07:35:55', '2019-04-05 02:43:09', 'Sudah Dihapus'),
(121, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 07:37:09', 118, '2019-04-03 07:37:09', '2019-04-05 02:43:05', 'Sudah Dihapus'),
(122, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 07:40:50', 118, '2019-04-03 07:40:50', '2019-04-05 02:43:00', 'Sudah Dihapus'),
(123, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 07:40:58', 118, '2019-04-03 07:40:58', '2019-04-05 02:42:57', 'Sudah Dihapus'),
(124, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 07:41:04', 118, '2019-04-03 07:41:04', '2019-04-05 02:42:53', 'Sudah Dihapus'),
(125, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 08:18:25', 118, '2019-04-03 08:18:25', '2019-04-05 02:42:50', 'Sudah Dihapus'),
(129, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 08:32:47', 118, '2019-04-03 08:32:47', '2019-04-05 02:42:46', 'Sudah Dihapus'),
(132, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 08:36:53', 118, '2019-04-03 08:36:53', '2019-04-05 02:42:43', 'Sudah Dihapus'),
(133, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 13:41:35', 118, '2019-04-03 13:41:35', '2019-04-05 02:42:40', 'Sudah Dihapus'),
(134, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 13:43:14', 118, '2019-04-03 13:43:14', '2019-04-05 02:42:37', 'Sudah Dihapus'),
(135, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-03 14:55:14', 118, '2019-04-03 14:55:14', '2019-04-05 02:42:33', 'Sudah Dihapus'),
(136, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-04 01:24:51', 118, '2019-04-04 01:24:51', '2019-04-05 02:42:30', 'Sudah Dihapus'),
(137, 'Astronomi', 'Dalam Negeri', 'Sarjana', '', '2019-04-04 02:27:25', 118, '2019-04-04 02:27:25', '2019-04-05 02:42:27', 'Sudah Dihapus'),
(139, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-04 11:25:27', 118, '2019-04-04 11:25:27', '2019-04-05 02:42:24', 'Sudah Dihapus'),
(140, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-04 11:25:42', 118, '2019-04-04 11:25:42', '2019-04-05 02:42:18', 'Sudah Dihapus'),
(141, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-04 11:25:42', 118, '2019-04-04 11:25:42', '2019-04-05 02:42:21', 'Sudah Dihapus'),
(142, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-04 11:25:43', 118, '2019-04-04 11:25:43', '2019-04-05 02:42:16', 'Sudah Dihapus'),
(143, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-04 11:25:43', 118, '2019-04-04 11:25:43', '2019-04-05 02:25:07', 'Sudah Dihapus'),
(144, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-05 01:52:58', 118, '2019-04-05 01:52:58', '2019-04-05 02:25:03', 'Sudah Dihapus'),
(145, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-05 03:39:50', 118, '2019-04-05 03:39:50', '2019-04-05 11:59:43', 'Sudah Dihapus'),
(146, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-05 03:50:17', 118, '2019-04-05 03:50:17', '2019-04-06 12:22:22', 'Sudah Dihapus'),
(147, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-05 04:09:15', 118, '2019-04-05 04:09:15', '2019-04-06 12:22:31', 'Sudah Dihapus'),
(149, 'Arsitektur Lanskap', 'Dalam Negeri', 'Sarjana', '', '2019-04-05 07:08:18', 118, '2019-04-05 07:08:18', '2019-04-06 12:22:43', 'Sudah Dihapus'),
(150, 'Psikologi', 'Dalam Negeri', 'Sarjana', '', '2019-04-05 07:18:32', 118, '2019-04-05 07:18:32', '2019-04-06 12:22:51', 'Sudah Dihapus'),
(151, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-05 12:05:35', 118, '2019-04-05 12:05:35', '2019-04-06 12:23:12', 'Sudah Dihapus'),
(152, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-06 08:11:16', 118, '2019-04-06 08:11:16', '2019-04-10 14:55:18', 'Sudah Dihapus'),
(153, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-06 08:47:30', 118, '2019-04-06 08:47:30', '2019-04-10 14:55:14', 'Sudah Dihapus'),
(154, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-06 09:23:03', 118, '2019-04-06 09:23:03', '2019-04-10 14:55:11', 'Sudah Dihapus'),
(155, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-06 09:42:45', 118, '2019-04-06 09:42:45', '2019-04-10 14:55:00', 'Sudah Dihapus'),
(156, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-06 11:09:20', 118, '2019-04-06 11:09:20', '2019-04-10 14:54:53', 'Sudah Dihapus'),
(158, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 07:22:04', 118, '2019-04-07 07:22:04', '2019-04-10 14:54:49', 'Sudah Dihapus'),
(159, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 07:26:12', 118, '2019-04-07 07:26:12', '2019-04-10 14:54:46', 'Sudah Dihapus'),
(160, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 07:27:48', 118, '2019-04-07 07:27:48', '2019-04-10 14:54:43', 'Sudah Dihapus'),
(161, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 07:33:50', 118, '2019-04-07 07:33:50', '2019-04-10 14:54:39', 'Sudah Dihapus'),
(162, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 07:54:54', 118, '2019-04-07 07:54:54', '2019-04-10 14:54:34', 'Sudah Dihapus'),
(163, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 08:03:54', 118, '2019-04-07 08:03:54', '2019-04-10 14:54:31', 'Sudah Dihapus'),
(164, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 08:04:42', 118, '2019-04-07 08:04:42', '2019-04-10 14:54:24', 'Sudah Dihapus'),
(165, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 08:16:08', 118, '2019-04-07 08:16:08', '2019-04-10 14:54:21', 'Sudah Dihapus'),
(166, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 08:44:34', 118, '2019-04-07 08:44:34', '2019-04-10 14:54:18', 'Sudah Dihapus'),
(167, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 09:12:26', 118, '2019-04-07 09:12:26', '2019-04-10 14:54:15', 'Sudah Dihapus'),
(168, 'Farmasi', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 12:32:14', 118, '2019-04-07 12:32:14', '2019-04-10 14:54:12', 'Sudah Dihapus'),
(169, 'Law and Business', 'Luar Negeri', 'Sarjana', '', '2019-04-07 12:37:50', 118, '2019-04-07 12:37:50', '2019-04-10 14:54:09', 'Sudah Dihapus'),
(170, 'Akuntansi', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 12:38:16', 118, '2019-04-07 12:38:16', '2019-04-10 14:54:06', 'Sudah Dihapus'),
(171, 'Fisika', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 12:44:34', 118, '2019-04-07 12:44:34', '2019-04-10 14:54:03', 'Sudah Dihapus'),
(172, 'Informatika', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 12:45:32', 118, '2019-04-07 12:45:32', '2019-04-10 14:54:00', 'Sudah Dihapus'),
(173, 'Fisika', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 12:47:05', 118, '2019-04-07 12:47:05', '2019-04-10 14:53:56', 'Sudah Dihapus'),
(174, 'Fisika', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 12:47:27', 118, '2019-04-07 12:47:27', '2019-04-10 14:53:53', 'Sudah Dihapus'),
(175, 'Fisika', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 12:47:35', 118, '2019-04-07 12:47:35', '2019-04-10 14:53:49', 'Sudah Dihapus'),
(176, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 14:06:56', 118, '2019-04-07 14:06:56', '2019-04-10 14:53:44', 'Sudah Dihapus'),
(177, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-07 14:41:08', 118, '2019-04-07 14:41:08', '2019-04-10 14:53:41', 'Sudah Dihapus'),
(178, 'Akuntansi', 'Dalam Negeri', 'Magister', '', '2019-04-07 15:14:55', 129, '2019-04-07 15:14:55', '0000-00-00 00:00:00', 'Belum Dihapus'),
(179, 'Arsitektur', 'Dalam Negeri', 'Magister', '', '2019-04-07 15:17:59', 129, '2019-04-07 15:17:59', '0000-00-00 00:00:00', 'Belum Dihapus'),
(180, 'Arsitektur', 'Dalam Negeri', 'Magister', '', '2019-04-07 15:18:13', 129, '2019-04-07 15:18:13', '0000-00-00 00:00:00', 'Belum Dihapus'),
(181, 'Arsitektur', 'Dalam Negeri', 'Magister', '', '2019-04-07 15:18:13', 129, '2019-04-07 15:18:13', '0000-00-00 00:00:00', 'Belum Dihapus'),
(182, 'Arsitektur', 'Dalam Negeri', 'Magister', '', '2019-04-07 15:18:14', 129, '2019-04-07 15:18:14', '0000-00-00 00:00:00', 'Belum Dihapus'),
(183, 'Arsitektur', 'Dalam Negeri', 'Magister', '', '2019-04-07 15:18:20', 129, '2019-04-07 15:18:20', '0000-00-00 00:00:00', 'Belum Dihapus'),
(184, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-08 04:47:10', 118, '2019-04-08 04:47:10', '2019-04-10 14:53:38', 'Sudah Dihapus'),
(187, 'Akuntansi', 'Dalam Negeri', 'Sarjana', '', '2019-04-09 02:13:32', 118, '2019-04-09 02:13:32', '2019-04-10 14:53:34', 'Sudah Dihapus'),
(188, 'Akuntansi', 'Dalam Negeri', 'Sarjana', '', '2019-04-09 02:14:52', 118, '2019-04-09 02:14:52', '2019-04-10 14:53:31', 'Sudah Dihapus'),
(189, 'Akuntansi', 'Dalam Negeri', 'Sarjana', '', '2019-04-09 02:15:48', 118, '2019-04-09 02:15:48', '2019-04-10 14:53:27', 'Sudah Dihapus'),
(190, 'Akuntansi', 'Dalam Negeri', 'Sarjana', '', '2019-04-09 02:16:58', 118, '2019-04-09 02:16:58', '2019-04-10 14:53:20', 'Sudah Dihapus'),
(191, 'Akuntansi', 'Dalam Negeri', 'Sarjana', '', '2019-04-09 02:17:44', 118, '2019-04-09 02:17:44', '2019-04-10 14:53:17', 'Sudah Dihapus'),
(193, 'Agribisnis', 'Dalam Negeri', 'Sarjana', '', '2019-04-09 10:30:52', 118, '2019-04-09 10:30:52', '2019-04-10 14:53:15', 'Sudah Dihapus'),
(194, 'Agribisnis', 'Dalam Negeri', 'Sarjana', '', '2019-04-09 10:54:49', 118, '2019-04-09 10:54:49', '2019-04-10 14:53:12', 'Sudah Dihapus'),
(195, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 01:43:23', 118, '2019-04-10 01:43:23', '2019-04-10 14:53:09', 'Sudah Dihapus'),
(196, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 10:47:51', 118, '2019-04-10 10:47:51', '2019-04-10 14:53:05', 'Sudah Dihapus'),
(197, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 10:47:51', 118, '2019-04-10 10:47:51', '2019-04-10 14:53:02', 'Sudah Dihapus'),
(198, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 10:47:51', 118, '2019-04-10 10:47:51', '2019-04-10 14:52:58', 'Sudah Dihapus'),
(199, 'Biologi', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 11:11:46', 118, '2019-04-10 11:11:46', '2019-04-10 14:52:55', 'Sudah Dihapus'),
(200, 'Akuntansi', 'Dalam Negeri', 'Magister', '', '2019-04-10 11:33:22', 130, '2019-04-10 11:33:22', '0000-00-00 00:00:00', 'Belum Dihapus'),
(201, 'Akuntansi', 'Dalam Negeri', 'Magister', '', '2019-04-10 11:33:46', 130, '2019-04-10 11:33:46', '0000-00-00 00:00:00', 'Belum Dihapus'),
(202, 'Akuntansi', 'Dalam Negeri', 'Magister', '', '2019-04-10 11:34:10', 130, '2019-04-10 11:34:10', '0000-00-00 00:00:00', 'Belum Dihapus'),
(203, 'Akuntansi', 'Dalam Negeri', 'Magister', '', '2019-04-10 11:34:39', 130, '2019-04-10 11:34:39', '0000-00-00 00:00:00', 'Belum Dihapus'),
(204, 'Agribisnis', 'Dalam Negeri', 'Magister', '', '2019-04-10 11:36:56', 130, '2019-04-10 11:36:56', '0000-00-00 00:00:00', 'Belum Dihapus'),
(205, 'Agribisnis', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 14:55:42', 118, '2019-04-10 14:55:42', '0000-00-00 00:00:00', 'Belum Dihapus'),
(206, 'Agribisnis', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 14:56:51', 118, '2019-04-10 14:56:51', '0000-00-00 00:00:00', 'Belum Dihapus'),
(207, 'Agribisnis', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 14:57:17', 118, '2019-04-10 14:57:17', '2019-04-10 14:58:14', 'Sudah Dihapus'),
(208, 'Agribisnis', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 14:58:21', 118, '2019-04-10 14:58:21', '2019-04-10 14:58:44', 'Sudah Dihapus'),
(209, 'Agribisnis', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 21:20:08', 118, '2019-04-10 21:20:08', '0000-00-00 00:00:00', 'Belum Dihapus'),
(210, 'Agribisnis', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 21:23:39', 118, '2019-04-10 21:23:39', '0000-00-00 00:00:00', 'Belum Dihapus'),
(211, 'Agribisnis', 'Dalam Negeri', 'Sarjana', '', '2019-04-10 21:25:33', 118, '2019-04-10 21:25:33', '0000-00-00 00:00:00', 'Belum Dihapus'),
(212, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-11 05:13:59', 118, '2019-04-11 05:13:59', '0000-00-00 00:00:00', 'Belum Dihapus'),
(213, 'Arsitektur', 'Dalam Negeri', 'Sarjana', '', '2019-04-20 08:39:22', 118, '2019-04-20 08:39:22', '0000-00-00 00:00:00', 'Belum Dihapus');

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
(416, 'S1', 'Indonesia', '2019-04-09 01:34:58', '2019-04-08 16:58:34', '2019-04-10 14:20:10', 118, 'Sudah Dihapus'),
(417, 'S1', 'Indonesia', '2019-04-09 02:24:03', '2019-04-08 17:03:24', '2019-04-10 14:21:30', 118, 'Sudah Dihapus'),
(418, 'S1', 'Indonesia', '2019-04-09 02:06:06', '2019-04-08 17:06:06', '2019-04-10 14:21:26', 118, 'Sudah Dihapus'),
(419, 'S1', 'Indonesia', '2019-04-09 02:25:09', '2019-04-08 17:09:25', '2019-04-10 14:21:23', 118, 'Sudah Dihapus'),
(420, 'S1', 'Indonesia', '2019-04-09 02:06:10', '2019-04-08 17:10:06', '2019-04-10 14:21:20', 118, 'Sudah Dihapus'),
(421, 'S1', 'Indonesia', '2019-04-09 02:14:13', '2019-04-08 17:13:14', '2019-04-10 14:21:16', 118, 'Sudah Dihapus'),
(422, 'S1', 'Indonesia', '2019-04-09 02:41:13', '2019-04-08 17:13:41', '2019-04-10 14:21:12', 118, 'Sudah Dihapus'),
(423, 'S1', 'Indonesia', '2019-04-09 02:34:34', '2019-04-08 17:34:34', '2019-04-10 14:21:04', 118, 'Sudah Dihapus'),
(424, 'S1', 'Turki', '2019-04-09 14:53:45', '2019-04-09 05:45:53', '2019-04-10 14:21:00', 118, 'Sudah Dihapus'),
(425, 'S1', 'Turki', '2019-04-09 14:05:47', '2019-04-09 05:47:05', '2019-04-10 14:20:57', 118, 'Sudah Dihapus'),
(426, 'S1', 'Turki', '2019-04-09 14:40:48', '2019-04-09 05:48:40', '2019-04-10 14:20:53', 118, 'Sudah Dihapus'),
(427, 'S1', 'Cina', '2019-04-09 15:11:39', '2019-04-09 06:39:11', '2019-04-10 14:20:49', 118, 'Sudah Dihapus'),
(428, 'D3', 'Cina', '2019-04-09 15:20:42', '2019-04-09 06:42:20', '2019-04-10 14:20:46', 118, 'Sudah Dihapus'),
(429, 'S1', 'Belanda', '2019-04-09 15:51:44', '2019-04-09 06:44:51', '2019-04-10 14:20:42', 118, 'Sudah Dihapus'),
(430, 'S1', 'Belanda', '2019-04-09 15:00:45', '2019-04-09 06:45:00', '2019-04-10 14:20:38', 118, 'Sudah Dihapus'),
(431, 'S1', 'Turki', '2019-04-10 19:00:44', '2019-04-10 10:44:00', '2019-04-10 14:20:34', 118, 'Sudah Dihapus'),
(432, 'S1', 'Amerika', '2019-04-10 19:58:44', '2019-04-10 10:44:58', '2019-04-10 14:20:31', 118, 'Sudah Dihapus'),
(433, 'S1', 'Amerika', '2019-04-10 19:27:45', '2019-04-10 10:45:27', '2019-04-10 14:20:27', 118, 'Sudah Dihapus'),
(434, 'S1', 'Amerika', '2019-04-10 19:32:45', '2019-04-10 10:45:32', '2019-04-10 14:20:22', 118, 'Sudah Dihapus'),
(435, 'S1', 'Amerika', '2019-04-10 19:18:46', '2019-04-10 10:46:18', '2019-04-10 14:20:17', 118, 'Sudah Dihapus'),
(436, 'S3', 'India', '2019-04-10 20:07:39', '2019-04-10 11:39:07', '0000-00-00 00:00:00', 130, 'Belum Dihapus'),
(437, 'S3', 'India', '2019-04-10 20:11:39', '2019-04-10 11:39:11', '0000-00-00 00:00:00', 130, 'Belum Dihapus'),
(438, 'S3', 'Cina', '2019-04-10 20:29:39', '2019-04-10 11:39:29', '0000-00-00 00:00:00', 130, 'Belum Dihapus'),
(439, 'S1', 'Belanda', '2019-04-10 23:43:21', '2019-04-10 14:21:43', '2019-04-10 14:24:51', 118, 'Sudah Dihapus'),
(440, 'S1', 'Belanda', '2019-04-10 23:59:24', '2019-04-10 14:24:59', '2019-04-10 14:28:18', 118, 'Sudah Dihapus'),
(441, 'S1', 'Belanda', '2019-04-10 23:26:25', '2019-04-10 14:25:26', '2019-04-10 14:28:13', 118, 'Sudah Dihapus'),
(442, 'S1', 'Belanda', '2019-04-10 23:50:25', '2019-04-10 14:25:50', '0000-00-00 00:00:00', 118, 'Belum Dihapus'),
(443, 'S1', 'Arab-Saudi', '2019-04-11 06:37:19', '2019-04-10 21:19:37', '0000-00-00 00:00:00', 118, 'Belum Dihapus'),
(444, 'S1', 'Indonesia', '2019-04-11 14:26:39', '2019-04-11 05:39:26', '0000-00-00 00:00:00', 118, 'Belum Dihapus');

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
(26, 1, 118, '2019-04-03 07:41:04', '0000-00-00 00:00:00'),
(28, 1, 129, '2019-04-07 15:18:20', '0000-00-00 00:00:00'),
(30, 1, 130, '2019-04-10 11:34:38', '0000-00-00 00:00:00');

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
(333, 'African and African American Studies', 'Doktor', '2019-03-30 04:44:53', '0000-00-00 00:00:00'),
(334, 'American Studies', 'Doktor', '2019-03-30 08:19:54', '0000-00-00 00:00:00'),
(335, 'Anthropology', 'Doktor', '2019-03-30 08:20:30', '0000-00-00 00:00:00'),
(336, 'Anthropology', 'Magister', '2019-03-30 08:20:53', '0000-00-00 00:00:00'),
(337, 'Applied Mathematics', 'Doktor', '2019-03-30 08:21:13', '0000-00-00 00:00:00'),
(338, 'Applied Physics', 'Doktor', '2019-03-30 08:21:29', '0000-00-00 00:00:00'),
(339, 'Archaeology', 'Doktor', '2019-03-30 08:21:45', '0000-00-00 00:00:00'),
(340, 'Architecture, Landscape Architecture, and Urban Planning', 'Doktor', '2019-03-30 08:22:01', '0000-00-00 00:00:00'),
(341, 'Astronomy', 'Doktor', '2019-03-30 08:22:15', '0000-00-00 00:00:00'),
(342, 'Bioengineering', 'Doktor', '2019-03-30 08:22:29', '0000-00-00 00:00:00'),
(343, 'Bioinformatics and Integrative Genomics', 'Doktor', '2019-03-30 08:22:44', '0000-00-00 00:00:00'),
(344, 'Biological and Biomedical Sciences', 'Doktor', '2019-03-30 08:23:01', '0000-00-00 00:00:00'),
(345, 'Biological Sciences in Dental Medicine', 'Doktor', '2019-03-30 08:23:26', '0000-00-00 00:00:00'),
(346, 'Biological Sciences in Public Health', 'Doktor', '2019-03-30 08:23:42', '0000-00-00 00:00:00'),
(347, 'Biophysics', 'Doktor', '2019-03-30 08:23:58', '0000-00-00 00:00:00'),
(348, 'Biostatistics', 'Doktor', '2019-03-30 08:24:12', '0000-00-00 00:00:00'),
(349, 'Business Administration', 'Doktor', '2019-03-30 08:24:26', '0000-00-00 00:00:00'),
(350, 'Business Economics', 'Doktor', '2019-03-30 08:24:40', '0000-00-00 00:00:00'),
(351, 'Celtic Languages and Literatures', 'Magister', '2019-03-30 08:25:09', '0000-00-00 00:00:00'),
(352, 'Celtic Languages and Literatures', 'Doktor', '2019-03-30 08:25:21', '0000-00-00 00:00:00'),
(353, 'Chemical Biology', 'Doktor', '2019-03-30 08:25:36', '0000-00-00 00:00:00'),
(354, 'Chemical Physics', 'Doktor', '2019-03-30 08:25:59', '0000-00-00 00:00:00'),
(355, 'Chemistry and Chemical Biology', 'Doktor', '2019-03-30 08:26:15', '0000-00-00 00:00:00'),
(356, 'The Classics', 'Doktor', '2019-03-30 08:26:29', '0000-00-00 00:00:00'),
(357, 'Comparative Literature', 'Doktor', '2019-03-30 08:26:44', '0000-00-00 00:00:00'),
(358, 'Computational Science and Engineering', 'Doktor', '2019-03-30 08:27:00', '0000-00-00 00:00:00'),
(359, 'Computer Science', 'Doktor', '2019-03-30 08:27:18', '0000-00-00 00:00:00'),
(360, 'Computational Science and Engineering', 'Magister', '2019-03-30 08:27:51', '0000-00-00 00:00:00'),
(361, 'Data Science', 'Magister', '2019-03-30 08:28:05', '0000-00-00 00:00:00'),
(362, 'Division of Medical Sciences', 'Doktor', '2019-03-30 08:28:23', '0000-00-00 00:00:00'),
(363, 'Earth and Planetary Sciences', 'Doktor', '2019-03-30 08:28:51', '0000-00-00 00:00:00'),
(364, 'East Asian Languages and Civilizations', 'Doktor', '2019-03-30 08:29:08', '0000-00-00 00:00:00'),
(365, 'Economics', 'Doktor', '2019-03-30 08:29:37', '0000-00-00 00:00:00'),
(366, 'Education', 'Doktor', '2019-03-30 08:29:53', '0000-00-00 00:00:00'),
(367, 'Electrical Engineering ', 'Doktor', '2019-03-30 08:30:27', '0000-00-00 00:00:00'),
(368, 'Electrical Engineering ', 'Magister', '2019-03-30 08:30:56', '0000-00-00 00:00:00'),
(369, 'Engineering and Applied Sciences', 'Magister', '2019-03-30 08:31:16', '0000-00-00 00:00:00'),
(370, 'Engineering and Applied Sciences', 'Doktor', '2019-03-30 08:31:23', '0000-00-00 00:00:00'),
(371, 'English', 'Doktor', '2019-03-30 08:31:47', '0000-00-00 00:00:00'),
(372, 'Environmental Science and Engineering', 'Doktor', '2019-03-30 08:32:01', '0000-00-00 00:00:00'),
(373, 'Film and Visual Studies', 'Doktor', '2019-03-30 08:32:15', '0000-00-00 00:00:00'),
(374, 'Germanic Languages and Literatures', 'Doktor', '2019-03-30 08:32:27', '0000-00-00 00:00:00'),
(375, 'Government', 'Doktor', '2019-03-30 08:32:40', '0000-00-00 00:00:00'),
(376, 'Health Policy', 'Doktor', '2019-03-30 08:33:00', '0000-00-00 00:00:00'),
(377, 'History', 'Doktor', '2019-03-30 08:33:19', '0000-00-00 00:00:00'),
(378, 'History of Art and Architecture', 'Doktor', '2019-03-30 08:33:36', '0000-00-00 00:00:00'),
(379, 'History of Science', 'Doktor', '2019-03-30 08:33:52', '0000-00-00 00:00:00'),
(380, 'History of Science', 'Magister', '2019-03-30 08:34:04', '0000-00-00 00:00:00'),
(381, 'Human Evolutionary Biology', 'Doktor', '2019-03-30 08:34:21', '0000-00-00 00:00:00'),
(382, 'Immunology', 'Doktor', '2019-03-30 08:34:36', '0000-00-00 00:00:00'),
(383, 'Inner Asian and Altaic Studies', 'Doktor', '2019-03-30 08:34:50', '0000-00-00 00:00:00'),
(384, 'International Relations', 'Doktor', '2019-03-30 08:35:03', '0000-00-00 00:00:00'),
(385, 'Linguistics', 'Doktor', '2019-03-30 08:35:15', '0000-00-00 00:00:00'),
(386, 'Materials Science and Mechanical Engineering', 'Doktor', '2019-03-30 08:35:30', '0000-00-00 00:00:00'),
(387, 'Mathematics', 'Doktor', '2019-03-30 08:35:47', '0000-00-00 00:00:00'),
(388, 'Middle Eastern Studies', 'Magister', '2019-03-30 08:39:53', '0000-00-00 00:00:00'),
(389, 'Middle Eastern Studies', 'Doktor', '2019-03-30 08:40:02', '0000-00-00 00:00:00'),
(390, 'Molecular and Cellular Biology ', 'Doktor', '2019-03-30 08:40:19', '0000-00-00 00:00:00'),
(391, 'Music', 'Magister', '2019-03-30 08:40:33', '0000-00-00 00:00:00'),
(392, 'Music', 'Doktor', '2019-03-30 08:40:53', '0000-00-00 00:00:00'),
(393, 'Near Eastern Languages and Civilizations', 'Magister', '2019-03-30 08:41:12', '0000-00-00 00:00:00'),
(394, 'Near Eastern Languages and Civilizations', 'Doktor', '2019-03-30 08:41:22', '0000-00-00 00:00:00'),
(395, 'Neuroscience', 'Doktor', '2019-03-30 08:43:05', '0000-00-00 00:00:00'),
(396, 'Organismic and Evolutionary Biology ', 'Doktor', '2019-03-30 08:43:38', '0000-00-00 00:00:00'),
(397, 'Organizational Behavior', 'Doktor', '2019-03-30 08:44:00', '0000-00-00 00:00:00'),
(398, 'Philosophy', 'Doktor', '2019-03-30 08:44:14', '0000-00-00 00:00:00'),
(399, 'Physics', 'Doktor', '2019-03-30 08:44:28', '0000-00-00 00:00:00'),
(400, 'Political Economy and Government', 'Doktor', '2019-03-30 08:44:49', '0000-00-00 00:00:00'),
(401, 'Political Science', 'Doktor', '2019-03-30 08:45:04', '0000-00-00 00:00:00'),
(402, 'Population Health Sciences', 'Doktor', '2019-03-30 08:45:16', '0000-00-00 00:00:00'),
(403, 'Psychology', 'Doktor', '2019-03-30 08:45:28', '0000-00-00 00:00:00'),
(404, 'Public Policy', 'Doktor', '2019-03-30 08:45:41', '0000-00-00 00:00:00'),
(405, 'Regional Studies–East Asia', 'Magister', '2019-03-30 08:45:55', '0000-00-00 00:00:00'),
(406, 'Regional Studies–Russia, Eastern Europe, and Central Asia', 'Magister', '2019-03-30 08:46:08', '0000-00-00 00:00:00'),
(407, 'Religion', 'Doktor', '2019-03-30 08:46:20', '0000-00-00 00:00:00'),
(408, 'Romance Languages and Literatures', 'Doktor', '2019-03-30 08:46:38', '0000-00-00 00:00:00'),
(409, 'Slavic Languages and Literatures', 'Doktor', '2019-03-30 08:46:53', '0000-00-00 00:00:00'),
(410, 'Social Policy', 'Doktor', '2019-03-30 08:47:07', '0000-00-00 00:00:00'),
(411, 'Sociology', 'Doktor', '2019-03-30 08:47:20', '0000-00-00 00:00:00'),
(412, 'South Asian Studies', 'Magister', '2019-03-30 08:47:33', '0000-00-00 00:00:00'),
(413, 'South Asian Studies', 'Doktor', '2019-03-30 08:47:41', '0000-00-00 00:00:00'),
(414, 'Speech and Hearing Bioscience and Technology ', 'Doktor', '2019-03-30 08:47:56', '0000-00-00 00:00:00'),
(415, 'Statistics', 'Doktor', '2019-03-30 08:48:09', '0000-00-00 00:00:00'),
(416, 'Systems Biology', 'Doktor', '2019-03-30 08:48:29', '0000-00-00 00:00:00'),
(417, 'Virology', 'Doktor', '2019-03-30 08:48:50', '0000-00-00 00:00:00'),
(418, 'Oral Medicine', 'Magister', '2019-03-30 09:25:55', '0000-00-00 00:00:00'),
(419, 'Oral Medicine', 'Doktor', '2019-03-30 09:26:07', '2019-03-30 09:26:17'),
(420, 'Oral and Maxillofacial Pathology', 'Magister', '2019-03-30 09:27:42', '0000-00-00 00:00:00'),
(421, 'Oral and Maxillofacial Pathology', 'Doktor', '2019-03-30 09:27:52', '0000-00-00 00:00:00'),
(422, 'Geriatric Dentistry', 'Magister', '2019-03-30 09:29:07', '0000-00-00 00:00:00'),
(423, 'Geriatric Dentistry', 'Doktor', '2019-03-30 09:29:15', '0000-00-00 00:00:00'),
(424, 'Implant Dentistry', 'Magister', '2019-03-30 09:30:47', '0000-00-00 00:00:00'),
(425, 'Implant Dentistry', 'Doktor', '2019-03-30 09:30:59', '0000-00-00 00:00:00'),
(426, 'Dental Public Health', 'Magister', '2019-03-30 09:32:38', '0000-00-00 00:00:00'),
(427, 'Dental Public Health', 'Doktor', '2019-03-30 09:32:48', '0000-00-00 00:00:00'),
(428, 'Endodontics', 'Magister', '2019-03-30 09:33:39', '0000-00-00 00:00:00'),
(429, 'Endodontics', 'Doktor', '2019-03-30 09:33:49', '0000-00-00 00:00:00'),
(430, 'Dental Education', 'Magister', '2019-03-30 09:35:03', '0000-00-00 00:00:00'),
(431, 'Oral and Maxillofacial Surgery', 'Magister', '2019-03-30 09:36:42', '0000-00-00 00:00:00'),
(432, 'Periodontology', 'Magister', '2019-03-30 09:38:10', '0000-00-00 00:00:00'),
(433, 'Periodontology', 'Doktor', '2019-03-30 09:38:23', '0000-00-00 00:00:00'),
(434, 'Prosthodontics', 'Magister', '2019-03-30 09:40:10', '0000-00-00 00:00:00'),
(435, 'Prosthodontics', 'Doktor', '2019-03-30 09:40:19', '0000-00-00 00:00:00'),
(436, 'Biological Sciences in Dental Medicine', 'Doktor', '2019-03-30 09:42:26', '2019-03-30 13:35:22'),
(437, 'Arts in Education', 'Magister', '2019-03-30 09:47:01', '0000-00-00 00:00:00'),
(438, 'Education Policy and Management', 'Magister', '2019-03-30 09:47:24', '0000-00-00 00:00:00'),
(439, 'Higher Education', 'Magister', '2019-03-30 09:48:12', '0000-00-00 00:00:00'),
(440, 'Human Development and Psychology', 'Magister', '2019-03-30 09:48:47', '0000-00-00 00:00:00'),
(441, 'International Education Policy', 'Magister', '2019-03-30 09:49:13', '0000-00-00 00:00:00'),
(442, 'Language and literacy', 'Magister', '2019-03-30 09:49:35', '0000-00-00 00:00:00'),
(443, 'Learning and Teaching', 'Magister', '2019-03-30 09:49:49', '0000-00-00 00:00:00'),
(444, 'Mind, Brain, and Education', 'Magister', '2019-03-30 09:50:11', '0000-00-00 00:00:00'),
(445, 'Prevention Science and Practice/CAS in Conseling', 'Magister', '2019-03-30 09:50:47', '0000-00-00 00:00:00'),
(446, 'School Leadership', 'Magister', '2019-03-30 09:51:01', '0000-00-00 00:00:00'),
(447, 'Specialized Studies', 'Magister', '2019-03-30 09:51:18', '0000-00-00 00:00:00'),
(448, 'Teacher Education', 'Magister', '2019-03-30 09:51:40', '0000-00-00 00:00:00'),
(449, 'Technology, innovation, and education', 'Magister', '2019-03-30 10:03:19', '0000-00-00 00:00:00'),
(450, 'Doctor of Education', 'Doktor', '2019-03-30 10:04:33', '0000-00-00 00:00:00'),
(451, 'Doctor of Education Leadership', 'Doktor', '2019-03-30 10:05:14', '0000-00-00 00:00:00'),
(452, 'Doctor of Philosophy in Education', 'Doktor', '2019-03-30 10:05:45', '0000-00-00 00:00:00'),
(453, 'Law and Government', 'Sarjana', '2019-03-30 10:35:47', '0000-00-00 00:00:00'),
(454, 'Law and Government', 'Magister', '2019-03-30 10:35:57', '0000-00-00 00:00:00'),
(455, 'Law and Business', 'Sarjana', '2019-03-30 10:36:12', '0000-00-00 00:00:00'),
(456, 'International and Comparative Law', 'Sarjana', '2019-03-30 10:39:13', '0000-00-00 00:00:00'),
(457, 'Law, Science, and Technology', 'Sarjana', '2019-03-30 10:39:47', '0000-00-00 00:00:00'),
(458, 'Law and Social Change', 'Sarjana', '2019-03-30 10:40:12', '0000-00-00 00:00:00'),
(459, 'Criminal Justice', 'Sarjana', '2019-03-30 10:40:28', '0000-00-00 00:00:00'),
(460, 'Law and History', 'Sarjana', '2019-03-30 10:42:52', '0000-00-00 00:00:00'),
(461, 'Law and Business', 'Magister', '2019-03-30 10:44:05', '0000-00-00 00:00:00'),
(462, 'International and Comparative Law', 'Magister', '2019-03-30 10:44:28', '0000-00-00 00:00:00'),
(463, 'Law, Science, and Technology', 'Magister', '2019-03-30 10:45:42', '0000-00-00 00:00:00'),
(464, 'Law and History', 'Magister', '2019-03-30 10:46:03', '0000-00-00 00:00:00'),
(465, 'Criminal Justice', 'Magister', '2019-03-30 10:46:38', '0000-00-00 00:00:00'),
(466, 'Law and Social Change', 'Magister', '2019-03-30 10:46:49', '0000-00-00 00:00:00'),
(467, 'Law and Business', 'Doktor', '2019-03-30 10:51:22', '0000-00-00 00:00:00'),
(468, 'Law and Government', 'Doktor', '2019-03-30 10:51:29', '0000-00-00 00:00:00'),
(469, 'Law and History', 'Doktor', '2019-03-30 10:51:37', '0000-00-00 00:00:00'),
(470, 'Law and Social Change', 'Doktor', '2019-03-30 10:51:47', '0000-00-00 00:00:00'),
(471, 'International and Comparative Law', 'Doktor', '2019-03-30 10:52:13', '0000-00-00 00:00:00'),
(472, 'Criminal Justice', 'Doktor', '2019-03-30 10:52:31', '0000-00-00 00:00:00'),
(473, 'Law, Science, and Technology', 'Doktor', '2019-03-30 10:53:11', '0000-00-00 00:00:00'),
(474, 'Public Policy', 'Magister', '2019-03-30 12:48:33', '0000-00-00 00:00:00'),
(475, 'Public Administration in Internal Development', 'Magister', '2019-03-30 12:49:07', '0000-00-00 00:00:00'),
(476, 'Public Administration', 'Magister', '2019-03-30 12:49:24', '0000-00-00 00:00:00'),
(477, 'Political Economy and Government', 'Doktor', '2019-03-30 12:50:50', '0000-00-00 00:00:00'),
(478, 'Public Policy', 'Doktor', '2019-03-30 12:51:01', '0000-00-00 00:00:00'),
(479, 'Health Policy', 'Doktor', '2019-03-30 12:51:15', '0000-00-00 00:00:00'),
(480, 'Social Policy', 'Doktor', '2019-03-30 12:51:40', '0000-00-00 00:00:00'),
(481, 'Clinical Effectiveness', 'Magister', '2019-03-30 12:57:57', '0000-00-00 00:00:00'),
(482, 'Epidemiology', 'Magister', '2019-03-30 12:58:15', '0000-00-00 00:00:00'),
(483, 'Global Health', 'Magister', '2019-03-30 12:58:41', '0000-00-00 00:00:00'),
(484, 'Health and Social Behavior', 'Magister', '2019-03-30 12:59:15', '0000-00-00 00:00:00'),
(485, 'Health Management', 'Magister', '2019-03-30 12:59:32', '0000-00-00 00:00:00'),
(486, 'Health Policy', 'Magister', '2019-03-30 12:59:46', '0000-00-00 00:00:00'),
(487, 'Occupational and Environmental', 'Magister', '2019-03-30 13:00:21', '0000-00-00 00:00:00'),
(488, 'Quantitative Methods', 'Magister', '2019-03-30 13:00:55', '0000-00-00 00:00:00'),
(489, 'Environmental Health Sciences', 'Magister', '2019-03-30 13:01:30', '0000-00-00 00:00:00'),
(490, 'Nutrition', 'Magister', '2019-03-30 13:01:54', '0000-00-00 00:00:00'),
(491, 'Biological Sciences in Public Health', 'Doktor', '2019-03-30 13:03:02', '0000-00-00 00:00:00'),
(492, 'Biostatistics', 'Doktor', '2019-03-30 13:03:16', '2019-03-30 13:03:39'),
(493, 'Health Policy', 'Doktor', '2019-03-30 13:03:56', '0000-00-00 00:00:00'),
(494, 'Population Health Sciences', 'Doktor', '2019-03-30 13:04:17', '0000-00-00 00:00:00'),
(495, 'Biologi', 'Sarjana', '2019-04-02 04:48:40', '0000-00-00 00:00:00'),
(496, 'Biologi', 'Magister', '2019-04-02 04:48:51', '0000-00-00 00:00:00'),
(497, 'Fisika', 'Sarjana', '2019-04-02 05:09:36', '0000-00-00 00:00:00'),
(498, 'Fisika', 'Magister', '2019-04-02 05:09:53', '0000-00-00 00:00:00'),
(499, 'Fisika', 'Doktor', '2019-04-02 05:10:03', '0000-00-00 00:00:00'),
(500, 'Kimia', 'Sarjana', '2019-04-02 05:10:56', '0000-00-00 00:00:00'),
(501, 'Kimia', 'Magister', '2019-04-02 05:11:10', '0000-00-00 00:00:00'),
(502, 'Kimia', 'Doktor', '2019-04-02 05:11:19', '0000-00-00 00:00:00'),
(503, 'Teknik Perkapalan', 'Sarjana', '2019-04-02 05:12:10', '0000-00-00 00:00:00'),
(504, 'Teknik Perkapalan', 'Magister', '2019-04-02 05:13:05', '0000-00-00 00:00:00'),
(505, 'Teknik Perkapalan', 'Doktor', '2019-04-02 05:13:23', '0000-00-00 00:00:00'),
(506, 'Teknik Sistem Perkapalan', 'Sarjana', '2019-04-02 05:14:17', '0000-00-00 00:00:00'),
(507, 'Teknik Sistem Perkapalan', 'Magister', '2019-04-02 05:14:37', '0000-00-00 00:00:00'),
(508, 'Teknik Sistem Perkapalan', 'Doktor', '2019-04-02 05:14:51', '0000-00-00 00:00:00'),
(509, 'Teknik Kelautan', 'Sarjana', '2019-04-02 05:15:16', '0000-00-00 00:00:00'),
(510, 'Teknik Transportasi Laut', 'Sarjana', '2019-04-02 05:15:45', '2019-04-02 05:16:18'),
(511, 'Teknik Transportasi Laut', 'Doktor', '2019-04-02 05:16:06', '0000-00-00 00:00:00'),
(512, 'Teknik Mesin', 'Sarjana', '2019-04-02 05:17:18', '0000-00-00 00:00:00'),
(513, 'Teknik Mesin', 'Magister', '2019-04-02 05:17:31', '0000-00-00 00:00:00'),
(514, 'Teknik Mesin', 'Doktor', '2019-04-02 05:17:41', '0000-00-00 00:00:00'),
(515, 'Teknik Fisika', 'Sarjana', '2019-04-02 05:18:19', '0000-00-00 00:00:00'),
(516, 'Teknik Fisika', 'Magister', '2019-04-02 05:18:34', '0000-00-00 00:00:00'),
(517, 'Teknik Fisika', 'Doktor', '2019-04-02 05:18:44', '0000-00-00 00:00:00'),
(518, 'Teknik Industri', 'Sarjana', '2019-04-02 05:19:18', '0000-00-00 00:00:00'),
(519, 'Teknik Industri', 'Magister', '2019-04-02 05:19:29', '0000-00-00 00:00:00'),
(520, 'Teknik Industri', 'Doktor', '2019-04-02 05:19:42', '0000-00-00 00:00:00'),
(521, 'Teknik Material', 'Sarjana', '2019-04-02 05:24:22', '0000-00-00 00:00:00'),
(522, 'Teknik Material', 'Magister', '2019-04-02 05:24:36', '0000-00-00 00:00:00'),
(523, 'Matematika', 'Sarjana', '2019-04-02 05:37:24', '0000-00-00 00:00:00'),
(524, 'Matematika', 'Magister', '2019-04-02 05:37:41', '0000-00-00 00:00:00'),
(525, 'Statistika', 'Sarjana', '2019-04-02 05:38:01', '0000-00-00 00:00:00'),
(526, 'Statistika', 'Magister', '2019-04-02 05:38:10', '0000-00-00 00:00:00'),
(527, 'Statistika', 'Doktor', '2019-04-02 05:38:19', '0000-00-00 00:00:00'),
(528, 'Akuaria', 'Sarjana', '2019-04-02 05:38:39', '0000-00-00 00:00:00'),
(529, 'Manajemen Bisnis', 'Sarjana', '2019-04-02 05:39:15', '0000-00-00 00:00:00'),
(530, 'Manajemen Teknologi', 'Magister', '2019-04-02 05:40:06', '0000-00-00 00:00:00'),
(531, 'Studi Pembangunan', 'Sarjana', '2019-04-02 05:40:44', '0000-00-00 00:00:00'),
(532, 'Teknik Elektro', 'Sarjana', '2019-04-02 05:41:41', '0000-00-00 00:00:00'),
(533, 'Teknik Elektro', 'Magister', '2019-04-02 05:41:52', '0000-00-00 00:00:00'),
(534, 'Teknik Elektro', 'Doktor', '2019-04-02 05:42:02', '0000-00-00 00:00:00'),
(535, 'Informatika', 'Sarjana', '2019-04-02 05:42:34', '0000-00-00 00:00:00'),
(536, 'Informatika', 'Magister', '2019-04-02 05:43:02', '0000-00-00 00:00:00'),
(537, 'Informatika', 'Doktor', '2019-04-02 05:43:14', '0000-00-00 00:00:00'),
(538, 'Sistem Informasi', 'Sarjana', '2019-04-02 05:43:41', '0000-00-00 00:00:00'),
(539, 'Sistem Informasi', 'Magister', '2019-04-02 05:44:00', '0000-00-00 00:00:00'),
(540, 'Teknologi Informasi', 'Sarjana', '2019-04-02 05:44:21', '0000-00-00 00:00:00'),
(541, 'Teknik Sipil', 'Sarjana', '2019-04-02 05:46:01', '0000-00-00 00:00:00'),
(542, 'Teknik Sipil', 'Magister', '2019-04-02 05:46:26', '0000-00-00 00:00:00'),
(543, 'Teknik Lingkungan', 'Sarjana', '2019-04-02 05:47:01', '0000-00-00 00:00:00'),
(544, 'Teknik Lingkungan', 'Magister', '2019-04-02 05:47:27', '0000-00-00 00:00:00'),
(545, 'Teknik Lingkungan', 'Doktor', '2019-04-02 05:47:41', '0000-00-00 00:00:00'),
(546, 'Teknik Geomatika', 'Sarjana', '2019-04-02 05:48:13', '0000-00-00 00:00:00'),
(547, 'Teknik Geomatika', 'Magister', '2019-04-02 05:48:27', '0000-00-00 00:00:00'),
(548, 'Teknik Geofisika', 'Sarjana', '2019-04-02 05:49:34', '0000-00-00 00:00:00'),
(549, 'Arsitektur', 'Sarjana', '2019-04-02 05:51:37', '0000-00-00 00:00:00'),
(550, 'Arsitektur', 'Magister', '2019-04-02 05:51:46', '0000-00-00 00:00:00'),
(551, 'Arsitektur', 'Doktor', '2019-04-02 05:51:55', '0000-00-00 00:00:00'),
(552, 'Perencanaan Wilayah dan Kota', 'Sarjana', '2019-04-02 05:52:16', '0000-00-00 00:00:00'),
(553, 'Desain Produk Industri', 'Sarjana', '2019-04-02 05:52:45', '0000-00-00 00:00:00'),
(554, 'Desain Interior', 'Sarjana', '2019-04-02 05:53:07', '0000-00-00 00:00:00'),
(555, 'Desain Komunikasi Visual', 'Sarjana', '2019-04-02 05:53:33', '0000-00-00 00:00:00'),
(556, 'Teknik Infrastruktur Sipil', 'Diploma', '2019-04-02 05:54:55', '0000-00-00 00:00:00'),
(557, 'Teknik Mesin Industri', 'Diploma', '2019-04-02 05:55:13', '0000-00-00 00:00:00'),
(558, 'Teknik Elektro Otomasi', 'Diploma', '2019-04-02 05:55:32', '0000-00-00 00:00:00'),
(559, 'Teknik Kimia Industri', 'Diploma', '2019-04-02 05:55:53', '0000-00-00 00:00:00'),
(560, 'Teknik Instrumentasi', 'Diploma', '2019-04-02 05:56:07', '0000-00-00 00:00:00'),
(561, 'Statistika Bisnis', 'Diploma', '2019-04-02 05:56:21', '0000-00-00 00:00:00'),
(562, 'Ilmu Tanah dan Sumberdaya Lahan', 'Sarjana', '2019-04-02 08:10:40', '0000-00-00 00:00:00'),
(563, 'Agronomi dan Hortikultura', 'Sarjana', '2019-04-02 08:11:27', '0000-00-00 00:00:00'),
(564, 'Proteksi Tanaman', 'Sarjana', '2019-04-02 08:12:12', '0000-00-00 00:00:00'),
(565, 'Arsitektur Lanskap', 'Sarjana', '2019-04-02 08:12:31', '0000-00-00 00:00:00'),
(566, 'Anatomi, Fisiologi, dan Farmakologi', 'Sarjana', '2019-04-02 08:13:22', '0000-00-00 00:00:00'),
(567, 'Ilmu Penyakit Hewan dan Kesehatan Masyarakat Veteriner', 'Sarjana', '2019-04-02 08:13:45', '0000-00-00 00:00:00'),
(568, 'Klinik, Reproduksi, dan Patologi', 'Sarjana', '2019-04-02 08:16:11', '0000-00-00 00:00:00'),
(569, 'Ilmu Produksi dan Teknologi Peternakan', 'Sarjana', '2019-04-02 08:17:33', '0000-00-00 00:00:00'),
(570, 'Ilmu Nutrisi dan Teknologi Pakan', 'Sarjana', '2019-04-02 08:17:50', '0000-00-00 00:00:00'),
(571, 'Manajemen Hutan', 'Sarjana', '2019-04-02 08:18:27', '0000-00-00 00:00:00'),
(572, 'Teknologi Hasil Hutan', 'Sarjana', '2019-04-02 08:18:41', '0000-00-00 00:00:00'),
(573, 'Konservasi Sumberdaya Hutan dan Ekowisata', 'Sarjana', '2019-04-02 08:18:57', '0000-00-00 00:00:00'),
(574, 'Silvikultur', 'Sarjana', '2019-04-02 08:19:14', '0000-00-00 00:00:00'),
(575, 'Budidaya Perairan', 'Sarjana', '2019-04-02 08:20:03', '0000-00-00 00:00:00'),
(576, 'Manajemen Sumberdaya Perairan', 'Sarjana', '2019-04-02 08:20:19', '0000-00-00 00:00:00'),
(577, 'Teknologi Hasil Perairan', 'Sarjana', '2019-04-02 08:20:33', '0000-00-00 00:00:00'),
(578, 'Pemanfaatan Sumberdaya Perikanan', 'Sarjana', '2019-04-02 08:21:14', '0000-00-00 00:00:00'),
(579, 'Ilmu dan Teknologi Kelautan', 'Sarjana', '2019-04-02 08:21:27', '0000-00-00 00:00:00'),
(580, 'Teknik Mesin dan Biosistem', 'Sarjana', '2019-04-02 08:23:10', '0000-00-00 00:00:00'),
(581, 'Ilmu dan Teknologi Pangan', 'Sarjana', '2019-04-02 08:23:29', '0000-00-00 00:00:00'),
(582, 'Teknologi Industri Pertanian', 'Sarjana', '2019-04-02 08:23:41', '0000-00-00 00:00:00'),
(583, 'Teknik Sipil dan Lingkungan', 'Sarjana', '2019-04-02 08:23:53', '0000-00-00 00:00:00'),
(584, 'Statistika', 'Sarjana', '2019-04-02 08:25:36', '0000-00-00 00:00:00'),
(585, 'Meteorologi dan Geofisika', 'Sarjana', '2019-04-02 08:25:59', '0000-00-00 00:00:00'),
(586, 'Biologi', 'Sarjana', '2019-04-02 08:26:11', '0000-00-00 00:00:00'),
(587, 'Kimia', 'Sarjana', '2019-04-02 08:26:17', '0000-00-00 00:00:00'),
(588, 'Matematika', 'Sarjana', '2019-04-02 08:26:37', '0000-00-00 00:00:00'),
(589, 'Ilmu Komputer', 'Sarjana', '2019-04-02 08:26:52', '0000-00-00 00:00:00'),
(590, 'Fisika', 'Sarjana', '2019-04-02 08:27:05', '0000-00-00 00:00:00'),
(591, 'Biokimia', 'Sarjana', '2019-04-02 08:27:14', '0000-00-00 00:00:00'),
(592, 'Ilmu Ekonomi', 'Sarjana', '2019-04-02 08:27:54', '0000-00-00 00:00:00'),
(593, 'Agribisnis', 'Sarjana', '2019-04-02 08:28:03', '0000-00-00 00:00:00'),
(594, 'Ekonomi Sumberdaya dan Lingkungan', 'Sarjana', '2019-04-02 08:28:38', '0000-00-00 00:00:00'),
(595, 'Gizi Masyarakat', 'Sarjana', '2019-04-02 08:29:04', '0000-00-00 00:00:00'),
(596, 'Ilmu Keluarga dan Konsumen', 'Sarjana', '2019-04-02 08:29:19', '0000-00-00 00:00:00'),
(597, 'Komunikasi dan Pengembangan Masyarakat', 'Sarjana', '2019-04-02 08:29:44', '0000-00-00 00:00:00'),
(598, 'Bisnis', 'Sarjana', '2019-04-02 08:30:24', '0000-00-00 00:00:00'),
(599, 'Ilmu Tanah', 'Magister', '2019-04-02 08:31:15', '2019-04-02 08:31:49'),
(600, 'Agroteknologi Tanah', 'Magister', '2019-04-02 08:31:34', '2019-04-02 08:31:55'),
(601, 'Biologi Tanah dan Lingkungan', 'Sarjana', '2019-04-02 08:32:14', '0000-00-00 00:00:00'),
(602, 'Pengelolaan Daerah Aliran Sungai', 'Magister', '2019-04-02 08:32:52', '0000-00-00 00:00:00'),
(603, 'Ilmu Perencanaan Wilayah', 'Magister', '2019-04-02 08:33:12', '0000-00-00 00:00:00'),
(604, 'Ilmu dan Teknologi Benih', 'Magister', '2019-04-02 08:33:43', '0000-00-00 00:00:00'),
(605, 'Agronomi dan Holtikultura', 'Magister', '2019-04-02 08:34:01', '0000-00-00 00:00:00'),
(606, 'Pemuliaan dan Bioteknologi Tanaman', 'Magister', '2019-04-02 08:34:23', '0000-00-00 00:00:00'),
(607, 'Entomologi', 'Magister', '2019-04-02 08:34:42', '0000-00-00 00:00:00'),
(608, 'Fitopatologi', 'Magister', '2019-04-02 08:35:24', '0000-00-00 00:00:00');
INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `tingkatan`, `create_dtm`, `update_dtm`) VALUES
(609, 'Arsitektur Lanskap', 'Magister', '2019-04-02 08:36:08', '0000-00-00 00:00:00'),
(610, 'Pengelolaan Hama Terpadu', 'Magister', '2019-04-02 08:36:30', '0000-00-00 00:00:00'),
(611, 'Ilmu-Ilmu Faal dan Khasiat Obat', 'Magister', '2019-04-02 08:37:15', '0000-00-00 00:00:00'),
(612, 'Anatomi dan Perkembangan Hewan', 'Magister', '2019-04-02 08:37:24', '0000-00-00 00:00:00'),
(613, 'Kesehatan Masyarakat Veteriner', 'Magister', '2019-04-02 08:37:32', '0000-00-00 00:00:00'),
(614, 'Parasitologi dan Entomologi Kesehatan', 'Magister', '2019-04-02 08:37:41', '0000-00-00 00:00:00'),
(615, 'Mikrobiologi Medik', 'Magister', '2019-04-02 08:37:48', '0000-00-00 00:00:00'),
(616, 'Ilmu Biomedis Hewan', 'Magister', '2019-04-02 08:37:56', '0000-00-00 00:00:00'),
(617, 'Biologi Reproduksi', 'Magister', '2019-04-02 08:38:03', '0000-00-00 00:00:00'),
(618, 'Ilmu Produksi dan Teknologi Peternakan', 'Magister', '2019-04-02 08:38:26', '0000-00-00 00:00:00'),
(619, 'Ilmu Nutrisi dan Pakan', 'Magister', '2019-04-02 08:38:33', '0000-00-00 00:00:00'),
(620, 'Ilmu Akuakultur', 'Magister', '2019-04-02 08:39:06', '0000-00-00 00:00:00'),
(621, 'Pengelolaan Sumberdaya Perairan', 'Magister', '2019-04-02 08:39:17', '0000-00-00 00:00:00'),
(622, 'Pengelolaan Sumberdaya Pesisir dan Lautan', 'Magister', '2019-04-02 08:39:24', '0000-00-00 00:00:00'),
(623, 'Teknologi Hasil Perairan', 'Magister', '2019-04-02 08:39:33', '0000-00-00 00:00:00'),
(624, 'Teknologi Perikanan Laut', 'Magister', '2019-04-02 08:39:40', '0000-00-00 00:00:00'),
(625, 'Ilmu Kelautan', 'Magister', '2019-04-02 08:39:51', '0000-00-00 00:00:00'),
(626, 'Teknologi Kelautan', 'Magister', '2019-04-02 08:40:06', '0000-00-00 00:00:00'),
(627, 'Ilmu Pengelolaan Hutan', 'Magister', '2019-04-02 08:40:35', '0000-00-00 00:00:00'),
(628, 'Ilmu dan Teknologi Hasil Hutan', 'Magister', '2019-04-02 08:40:45', '0000-00-00 00:00:00'),
(629, 'Konservasi Biodiversitas Tropika', 'Magister', '2019-04-02 08:40:53', '0000-00-00 00:00:00'),
(630, 'Manajemen Ekowisata dan Jasa Lingkungan', 'Magister', '2019-04-02 08:41:01', '0000-00-00 00:00:00'),
(631, 'Silvikultur Tropika', 'Magister', '2019-04-02 08:41:08', '0000-00-00 00:00:00'),
(632, 'Teknik Mesin Pertanian dan Pangan', 'Magister', '2019-04-02 08:41:50', '0000-00-00 00:00:00'),
(633, 'Teknologi Pascapanen', 'Magister', '2019-04-02 08:42:01', '0000-00-00 00:00:00'),
(634, 'Teknik Sipil dan Lingkungan', 'Magister', '2019-04-02 08:42:09', '0000-00-00 00:00:00'),
(635, 'Ilmu Pangan', 'Magister', '2019-04-02 08:42:16', '0000-00-00 00:00:00'),
(636, 'Teknologi Industri Pertanian', 'Magister', '2019-04-02 08:42:28', '0000-00-00 00:00:00'),
(637, 'Statistika', 'Magister', '2019-04-02 08:45:11', '0000-00-00 00:00:00'),
(638, 'Statistika Terapan', 'Magister', '2019-04-02 08:45:25', '0000-00-00 00:00:00'),
(639, 'Klimatologi Terapan', 'Magister', '2019-04-02 08:45:42', '0000-00-00 00:00:00'),
(640, 'Mikrobiologi', 'Magister', '2019-04-02 08:45:57', '0000-00-00 00:00:00'),
(641, 'Biosains Hewan', 'Magister', '2019-04-02 08:46:12', '0000-00-00 00:00:00'),
(642, 'Biologi Tumbuhan', 'Magister', '2019-04-02 08:46:26', '0000-00-00 00:00:00'),
(643, 'Kimia', 'Magister', '2019-04-02 08:47:47', '0000-00-00 00:00:00'),
(644, 'Matematika Terapan', 'Magister', '2019-04-02 08:47:55', '0000-00-00 00:00:00'),
(645, 'Ilmu Komputer ', 'Magister', '2019-04-02 08:48:06', '0000-00-00 00:00:00'),
(646, 'Biofisika', 'Magister', '2019-04-02 08:48:14', '0000-00-00 00:00:00'),
(647, 'Biokimia', 'Magister', '2019-04-02 08:48:25', '0000-00-00 00:00:00'),
(648, 'Ilmu Ekonomi', 'Magister', '2019-04-02 08:48:51', '0000-00-00 00:00:00'),
(649, 'Ilmu Manajemen', 'Magister', '2019-04-02 08:49:01', '0000-00-00 00:00:00'),
(650, 'Ekonomi Sumberdaya dan Lingkungan', 'Magister', '2019-04-02 08:49:10', '0000-00-00 00:00:00'),
(651, 'Ekonomi Sumberdaya Kelautan Tropika', 'Magister', '2019-04-02 08:49:18', '0000-00-00 00:00:00'),
(652, 'Ilmu Ekonomi Pertanian', 'Magister', '2019-04-02 08:49:26', '0000-00-00 00:00:00'),
(653, 'Agribisnis', 'Magister', '2019-04-02 08:49:34', '0000-00-00 00:00:00'),
(654, ' Ilmu Perencanaan Pembangunan Wilayah dan Pedesaan', 'Magister', '2019-04-02 08:49:41', '0000-00-00 00:00:00'),
(655, 'Ilmu Gizi', 'Magister', '2019-04-02 08:49:59', '0000-00-00 00:00:00'),
(656, 'Ilmu Keluarga dan Perkembangan Anak', 'Magister', '2019-04-02 08:50:06', '0000-00-00 00:00:00'),
(657, 'Ilmu Penyuluhan Pembangunan', 'Magister', '2019-04-02 08:50:12', '0000-00-00 00:00:00'),
(658, 'Komunikasi Pembangunan Pertanian Pedesaan', 'Magister', '2019-04-02 08:50:20', '0000-00-00 00:00:00'),
(659, 'Sosiologi Pedesaan', 'Magister', '2019-04-02 08:50:27', '0000-00-00 00:00:00'),
(660, 'Ilmu Tanah', 'Doktor', '2019-04-02 08:51:03', '0000-00-00 00:00:00'),
(661, 'Ilmu dan Teknologi Benih', 'Doktor', '2019-04-02 08:51:14', '0000-00-00 00:00:00'),
(662, 'Agronomi dan Hortikultura', 'Doktor', '2019-04-02 08:51:21', '0000-00-00 00:00:00'),
(663, 'Pemuliaan dan Bioteknologi Tanaman', 'Doktor', '2019-04-02 08:51:28', '0000-00-00 00:00:00'),
(664, 'Entomologi', 'Doktor', '2019-04-02 08:51:35', '0000-00-00 00:00:00'),
(665, 'Fitopatologi', 'Doktor', '2019-04-02 08:51:42', '0000-00-00 00:00:00'),
(666, 'Ilmu-Ilmu Faal dan Khasiat Obat', 'Doktor', '2019-04-02 08:51:54', '0000-00-00 00:00:00'),
(667, 'Kesehatan Masyarakat Veteriner', 'Doktor', '2019-04-02 08:52:01', '0000-00-00 00:00:00'),
(668, 'Parasitologi dan Entomologi Kesehatan', 'Doktor', '2019-04-02 08:52:09', '0000-00-00 00:00:00'),
(669, 'Ilmu Biomedis Hewan', 'Doktor', '2019-04-02 08:52:16', '0000-00-00 00:00:00'),
(670, 'Biologi Reproduksi', 'Doktor', '2019-04-02 08:52:25', '0000-00-00 00:00:00'),
(671, 'Ilmu Produksi dan Teknologi Peternakan', 'Doktor', '2019-04-02 08:52:39', '0000-00-00 00:00:00'),
(672, 'Ilmu Nutrisi dan Pakan', 'Doktor', '2019-04-02 08:52:46', '0000-00-00 00:00:00'),
(673, 'Ilmu Akuakultur', 'Doktor', '2019-04-02 08:53:06', '0000-00-00 00:00:00'),
(674, 'Pengelolaan Sumberdaya Perairan', 'Doktor', '2019-04-02 08:53:20', '0000-00-00 00:00:00'),
(675, 'Pengelolaan Sumberdaya Pesisir dan Lautan', 'Doktor', '2019-04-02 08:53:26', '0000-00-00 00:00:00'),
(676, 'Teknologi Perikanan Laut', 'Doktor', '2019-04-02 08:53:34', '0000-00-00 00:00:00'),
(677, 'Ilmu Kelautan', 'Doktor', '2019-04-02 08:53:41', '0000-00-00 00:00:00'),
(678, 'Teknologi Kelautan', 'Doktor', '2019-04-02 08:53:48', '0000-00-00 00:00:00'),
(679, 'Ilmu Pengelolaan Hutan', 'Doktor', '2019-04-02 08:54:09', '0000-00-00 00:00:00'),
(680, 'Ilmu dan Teknologi Hasil Hutan', 'Doktor', '2019-04-02 08:54:19', '0000-00-00 00:00:00'),
(681, 'Konservasi Biodiversitas Tropika', 'Doktor', '2019-04-02 08:54:32', '0000-00-00 00:00:00'),
(682, 'Manajemen Ekowisata dan Jasa Lingkungan', 'Doktor', '2019-04-02 08:54:38', '0000-00-00 00:00:00'),
(683, 'Silvikultur Tropika', 'Doktor', '2019-04-02 08:54:50', '0000-00-00 00:00:00'),
(684, 'Ilmu Keteknikan Pertanian', 'Doktor', '2019-04-02 08:55:05', '0000-00-00 00:00:00'),
(685, 'Ilmu Pangan', 'Doktor', '2019-04-02 08:55:15', '0000-00-00 00:00:00'),
(686, 'Teknologi Industri Pertanian', 'Doktor', '2019-04-02 08:55:23', '0000-00-00 00:00:00'),
(687, 'Statistika', 'Doktor', '2019-04-02 08:55:36', '0000-00-00 00:00:00'),
(688, 'Klimatologi Terapan', 'Doktor', '2019-04-02 08:55:43', '0000-00-00 00:00:00'),
(689, 'Mikrobiologi', 'Doktor', '2019-04-02 08:55:51', '0000-00-00 00:00:00'),
(690, 'Biosains Hewan', 'Doktor', '2019-04-02 08:55:58', '0000-00-00 00:00:00'),
(691, 'Biologi Tumbuhan', 'Doktor', '2019-04-02 08:56:04', '0000-00-00 00:00:00'),
(692, 'Ekonomi Sumberdaya Kelautan Tropika', 'Doktor', '2019-04-02 08:56:23', '0000-00-00 00:00:00'),
(693, 'Ilmu Ekonomi Pertanian', 'Doktor', '2019-04-02 08:56:31', '0000-00-00 00:00:00'),
(694, 'Ilmu Perencanaan Pembangunan Wilayah dan Pedesaan', 'Doktor', '2019-04-02 08:56:41', '0000-00-00 00:00:00'),
(695, 'Ilmu Gizi', 'Doktor', '2019-04-02 08:56:53', '0000-00-00 00:00:00'),
(696, 'Ilmu Penyuluhan Pembangunan', 'Doktor', '2019-04-02 08:56:59', '0000-00-00 00:00:00'),
(697, 'Komunikasi Pembangunan Pertanian Pedesaan', 'Doktor', '2019-04-02 08:57:06', '0000-00-00 00:00:00'),
(698, 'Sosiologi Pedesaan', 'Doktor', '2019-04-02 08:57:13', '0000-00-00 00:00:00'),
(703, 'Ilmu Ekonomi', 'Sarjana', '2019-04-09 09:21:21', '0000-00-00 00:00:00'),
(704, 'Manajemen', 'Sarjana', '2019-04-09 09:21:36', '0000-00-00 00:00:00'),
(705, 'Akuntansi', 'Sarjana', '2019-04-09 09:21:48', '0000-00-00 00:00:00'),
(706, 'Ilmu Ekonomi', 'Magister', '2019-04-09 09:22:22', '0000-00-00 00:00:00'),
(707, 'Manajemen', 'Magister', '2019-04-09 09:22:34', '0000-00-00 00:00:00'),
(708, 'Akuntansi', 'Magister', '2019-04-09 09:22:47', '0000-00-00 00:00:00'),
(709, 'Ilmu Ekonomi', 'Doktor', '2019-04-09 09:23:13', '0000-00-00 00:00:00'),
(710, 'Manajemen', 'Doktor', '2019-04-09 09:23:53', '0000-00-00 00:00:00'),
(711, 'Akuntansi', 'Doktor', '2019-04-09 09:24:05', '0000-00-00 00:00:00'),
(713, 'Agribisnis', 'Sarjana', '2019-04-09 09:28:16', '0000-00-00 00:00:00'),
(714, 'Agroekoteknologi', 'Sarjana', '2019-04-09 09:28:38', '0000-00-00 00:00:00'),
(715, 'Ilmu Tanaman', 'Magister', '2019-04-09 09:28:59', '0000-00-00 00:00:00'),
(716, 'Pengelolaan Tanah dan Air', 'Magister', '2019-04-09 09:29:31', '0000-00-00 00:00:00'),
(717, 'Ekonomi Pertanian', 'Magister', '2019-04-09 09:29:50', '0000-00-00 00:00:00'),
(718, 'Sosiologi', 'Magister', '2019-04-09 09:30:04', '0000-00-00 00:00:00'),
(719, 'Agribisnis', 'Magister', '2019-04-09 09:30:16', '0000-00-00 00:00:00'),
(720, 'Patologi Tumbuhan', 'Magister', '2019-04-09 09:30:37', '0000-00-00 00:00:00'),
(721, 'Entomologi Tanaman', 'Magister', '2019-04-09 09:31:14', '0000-00-00 00:00:00'),
(722, 'Ilmu Pertanian', 'Doktor', '2019-04-09 09:31:33', '0000-00-00 00:00:00');

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
(330, 333, 49, '2019-03-30 04:44:53', '0000-00-00 00:00:00'),
(331, 334, 49, '2019-03-30 08:19:54', '0000-00-00 00:00:00'),
(332, 335, 49, '2019-03-30 08:20:30', '0000-00-00 00:00:00'),
(333, 336, 49, '2019-03-30 08:20:54', '0000-00-00 00:00:00'),
(334, 337, 49, '2019-03-30 08:21:13', '0000-00-00 00:00:00'),
(335, 338, 49, '2019-03-30 08:21:29', '0000-00-00 00:00:00'),
(336, 339, 49, '2019-03-30 08:21:45', '0000-00-00 00:00:00'),
(337, 340, 49, '2019-03-30 08:22:01', '0000-00-00 00:00:00'),
(338, 341, 49, '2019-03-30 08:22:15', '0000-00-00 00:00:00'),
(339, 342, 49, '2019-03-30 08:22:29', '0000-00-00 00:00:00'),
(340, 343, 49, '2019-03-30 08:22:44', '0000-00-00 00:00:00'),
(341, 344, 49, '2019-03-30 08:23:01', '0000-00-00 00:00:00'),
(342, 345, 49, '2019-03-30 08:23:26', '0000-00-00 00:00:00'),
(343, 346, 49, '2019-03-30 08:23:42', '0000-00-00 00:00:00'),
(344, 347, 49, '2019-03-30 08:23:58', '0000-00-00 00:00:00'),
(345, 348, 49, '2019-03-30 08:24:12', '0000-00-00 00:00:00'),
(346, 349, 49, '2019-03-30 08:24:26', '0000-00-00 00:00:00'),
(347, 350, 49, '2019-03-30 08:24:40', '0000-00-00 00:00:00'),
(348, 351, 49, '2019-03-30 08:25:09', '0000-00-00 00:00:00'),
(349, 352, 49, '2019-03-30 08:25:22', '0000-00-00 00:00:00'),
(350, 353, 49, '2019-03-30 08:25:36', '0000-00-00 00:00:00'),
(351, 354, 49, '2019-03-30 08:25:59', '0000-00-00 00:00:00'),
(352, 355, 49, '2019-03-30 08:26:15', '0000-00-00 00:00:00'),
(353, 356, 49, '2019-03-30 08:26:29', '0000-00-00 00:00:00'),
(354, 357, 49, '2019-03-30 08:26:44', '0000-00-00 00:00:00'),
(355, 358, 49, '2019-03-30 08:27:00', '0000-00-00 00:00:00'),
(356, 359, 49, '2019-03-30 08:27:18', '0000-00-00 00:00:00'),
(357, 360, 49, '2019-03-30 08:27:51', '0000-00-00 00:00:00'),
(358, 361, 49, '2019-03-30 08:28:05', '0000-00-00 00:00:00'),
(359, 362, 49, '2019-03-30 08:28:23', '0000-00-00 00:00:00'),
(360, 363, 49, '2019-03-30 08:28:51', '0000-00-00 00:00:00'),
(361, 364, 49, '2019-03-30 08:29:08', '0000-00-00 00:00:00'),
(362, 365, 49, '2019-03-30 08:29:37', '0000-00-00 00:00:00'),
(363, 366, 49, '2019-03-30 08:29:53', '0000-00-00 00:00:00'),
(364, 367, 49, '2019-03-30 08:30:27', '0000-00-00 00:00:00'),
(365, 368, 49, '2019-03-30 08:30:56', '0000-00-00 00:00:00'),
(366, 369, 49, '2019-03-30 08:31:16', '0000-00-00 00:00:00'),
(367, 370, 49, '2019-03-30 08:31:23', '0000-00-00 00:00:00'),
(368, 371, 49, '2019-03-30 08:31:47', '0000-00-00 00:00:00'),
(369, 372, 49, '2019-03-30 08:32:01', '0000-00-00 00:00:00'),
(370, 373, 49, '2019-03-30 08:32:15', '0000-00-00 00:00:00'),
(371, 374, 49, '2019-03-30 08:32:27', '0000-00-00 00:00:00'),
(372, 375, 49, '2019-03-30 08:32:40', '0000-00-00 00:00:00'),
(373, 376, 49, '2019-03-30 08:33:00', '0000-00-00 00:00:00'),
(374, 377, 49, '2019-03-30 08:33:20', '0000-00-00 00:00:00'),
(375, 378, 49, '2019-03-30 08:33:37', '0000-00-00 00:00:00'),
(376, 379, 49, '2019-03-30 08:33:52', '0000-00-00 00:00:00'),
(377, 380, 49, '2019-03-30 08:34:04', '0000-00-00 00:00:00'),
(378, 381, 49, '2019-03-30 08:34:21', '0000-00-00 00:00:00'),
(379, 382, 49, '2019-03-30 08:34:36', '0000-00-00 00:00:00'),
(380, 383, 49, '2019-03-30 08:34:50', '0000-00-00 00:00:00'),
(381, 384, 49, '2019-03-30 08:35:03', '0000-00-00 00:00:00'),
(382, 385, 49, '2019-03-30 08:35:15', '0000-00-00 00:00:00'),
(383, 386, 49, '2019-03-30 08:35:31', '0000-00-00 00:00:00'),
(384, 387, 49, '2019-03-30 08:35:47', '0000-00-00 00:00:00'),
(385, 388, 49, '2019-03-30 08:39:54', '0000-00-00 00:00:00'),
(386, 389, 49, '2019-03-30 08:40:02', '0000-00-00 00:00:00'),
(387, 390, 49, '2019-03-30 08:40:19', '0000-00-00 00:00:00'),
(388, 391, 49, '2019-03-30 08:40:33', '0000-00-00 00:00:00'),
(389, 392, 49, '2019-03-30 08:40:53', '0000-00-00 00:00:00'),
(390, 393, 49, '2019-03-30 08:41:12', '0000-00-00 00:00:00'),
(391, 394, 49, '2019-03-30 08:41:22', '0000-00-00 00:00:00'),
(392, 395, 49, '2019-03-30 08:43:05', '0000-00-00 00:00:00'),
(393, 396, 49, '2019-03-30 08:43:38', '0000-00-00 00:00:00'),
(394, 397, 49, '2019-03-30 08:44:00', '0000-00-00 00:00:00'),
(395, 398, 49, '2019-03-30 08:44:14', '0000-00-00 00:00:00'),
(396, 399, 49, '2019-03-30 08:44:29', '0000-00-00 00:00:00'),
(397, 400, 49, '2019-03-30 08:44:49', '0000-00-00 00:00:00'),
(398, 401, 49, '2019-03-30 08:45:04', '0000-00-00 00:00:00'),
(399, 402, 49, '2019-03-30 08:45:16', '0000-00-00 00:00:00'),
(400, 403, 49, '2019-03-30 08:45:28', '0000-00-00 00:00:00'),
(401, 404, 49, '2019-03-30 08:45:41', '0000-00-00 00:00:00'),
(402, 405, 49, '2019-03-30 08:45:55', '0000-00-00 00:00:00'),
(403, 406, 49, '2019-03-30 08:46:08', '0000-00-00 00:00:00'),
(404, 407, 49, '2019-03-30 08:46:20', '0000-00-00 00:00:00'),
(405, 408, 49, '2019-03-30 08:46:40', '0000-00-00 00:00:00'),
(406, 409, 49, '2019-03-30 08:46:53', '0000-00-00 00:00:00'),
(407, 410, 49, '2019-03-30 08:47:07', '0000-00-00 00:00:00'),
(408, 411, 49, '2019-03-30 08:47:21', '0000-00-00 00:00:00'),
(409, 412, 49, '2019-03-30 08:47:33', '0000-00-00 00:00:00'),
(410, 413, 49, '2019-03-30 08:47:41', '0000-00-00 00:00:00'),
(411, 414, 49, '2019-03-30 08:47:56', '0000-00-00 00:00:00'),
(412, 415, 49, '2019-03-30 08:48:09', '0000-00-00 00:00:00'),
(413, 416, 49, '2019-03-30 08:48:30', '0000-00-00 00:00:00'),
(414, 417, 49, '2019-03-30 08:48:50', '0000-00-00 00:00:00'),
(415, 418, 47, '2019-03-30 09:25:55', '0000-00-00 00:00:00'),
(416, 419, 47, '2019-03-30 09:26:07', '0000-00-00 00:00:00'),
(417, 420, 47, '2019-03-30 09:27:42', '0000-00-00 00:00:00'),
(418, 421, 47, '2019-03-30 09:27:52', '0000-00-00 00:00:00'),
(419, 422, 47, '2019-03-30 09:29:07', '0000-00-00 00:00:00'),
(420, 423, 47, '2019-03-30 09:29:15', '0000-00-00 00:00:00'),
(421, 424, 47, '2019-03-30 09:30:48', '0000-00-00 00:00:00'),
(422, 425, 47, '2019-03-30 09:30:59', '0000-00-00 00:00:00'),
(423, 426, 47, '2019-03-30 09:32:38', '0000-00-00 00:00:00'),
(424, 427, 47, '2019-03-30 09:32:48', '0000-00-00 00:00:00'),
(425, 428, 47, '2019-03-30 09:33:39', '0000-00-00 00:00:00'),
(426, 429, 47, '2019-03-30 09:33:49', '0000-00-00 00:00:00'),
(427, 430, 47, '2019-03-30 09:35:03', '0000-00-00 00:00:00'),
(428, 431, 47, '2019-03-30 09:36:42', '0000-00-00 00:00:00'),
(429, 432, 47, '2019-03-30 09:38:11', '0000-00-00 00:00:00'),
(430, 433, 47, '2019-03-30 09:38:23', '0000-00-00 00:00:00'),
(431, 434, 47, '2019-03-30 09:40:10', '0000-00-00 00:00:00'),
(432, 435, 47, '2019-03-30 09:40:19', '0000-00-00 00:00:00'),
(433, 436, 47, '2019-03-30 09:42:26', '0000-00-00 00:00:00'),
(434, 437, 51, '2019-03-30 09:47:02', '0000-00-00 00:00:00'),
(435, 438, 51, '2019-03-30 09:47:24', '0000-00-00 00:00:00'),
(436, 439, 51, '2019-03-30 09:48:12', '0000-00-00 00:00:00'),
(437, 440, 51, '2019-03-30 09:48:47', '0000-00-00 00:00:00'),
(438, 441, 51, '2019-03-30 09:49:13', '0000-00-00 00:00:00'),
(439, 442, 51, '2019-03-30 09:49:35', '0000-00-00 00:00:00'),
(440, 443, 51, '2019-03-30 09:49:49', '0000-00-00 00:00:00'),
(441, 444, 51, '2019-03-30 09:50:11', '0000-00-00 00:00:00'),
(442, 445, 51, '2019-03-30 09:50:47', '0000-00-00 00:00:00'),
(443, 446, 51, '2019-03-30 09:51:01', '0000-00-00 00:00:00'),
(444, 447, 51, '2019-03-30 09:51:18', '0000-00-00 00:00:00'),
(445, 448, 51, '2019-03-30 09:51:40', '0000-00-00 00:00:00'),
(446, 449, 51, '2019-03-30 10:03:19', '0000-00-00 00:00:00'),
(447, 450, 51, '2019-03-30 10:04:33', '0000-00-00 00:00:00'),
(448, 451, 51, '2019-03-30 10:05:14', '0000-00-00 00:00:00'),
(449, 452, 51, '2019-03-30 10:05:45', '0000-00-00 00:00:00'),
(450, 453, 54, '2019-03-30 10:35:47', '0000-00-00 00:00:00'),
(451, 454, 54, '2019-03-30 10:35:57', '0000-00-00 00:00:00'),
(452, 455, 54, '2019-03-30 10:36:12', '0000-00-00 00:00:00'),
(453, 456, 54, '2019-03-30 10:39:13', '0000-00-00 00:00:00'),
(454, 457, 54, '2019-03-30 10:39:47', '0000-00-00 00:00:00'),
(455, 458, 54, '2019-03-30 10:40:12', '0000-00-00 00:00:00'),
(456, 459, 54, '2019-03-30 10:40:28', '0000-00-00 00:00:00'),
(457, 460, 54, '2019-03-30 10:42:52', '0000-00-00 00:00:00'),
(458, 461, 54, '2019-03-30 10:44:05', '0000-00-00 00:00:00'),
(459, 462, 54, '2019-03-30 10:44:28', '0000-00-00 00:00:00'),
(460, 463, 54, '2019-03-30 10:45:42', '0000-00-00 00:00:00'),
(461, 464, 54, '2019-03-30 10:46:03', '0000-00-00 00:00:00'),
(462, 465, 54, '2019-03-30 10:46:38', '0000-00-00 00:00:00'),
(463, 466, 54, '2019-03-30 10:46:49', '0000-00-00 00:00:00'),
(464, 467, 54, '2019-03-30 10:51:22', '0000-00-00 00:00:00'),
(465, 468, 54, '2019-03-30 10:51:29', '0000-00-00 00:00:00'),
(466, 469, 54, '2019-03-30 10:51:37', '0000-00-00 00:00:00'),
(467, 470, 54, '2019-03-30 10:51:47', '0000-00-00 00:00:00'),
(468, 471, 54, '2019-03-30 10:52:13', '0000-00-00 00:00:00'),
(469, 472, 54, '2019-03-30 10:52:31', '0000-00-00 00:00:00'),
(470, 473, 54, '2019-03-30 10:53:11', '0000-00-00 00:00:00'),
(471, 474, 53, '2019-03-30 12:48:33', '0000-00-00 00:00:00'),
(472, 475, 53, '2019-03-30 12:49:07', '0000-00-00 00:00:00'),
(473, 476, 53, '2019-03-30 12:49:24', '0000-00-00 00:00:00'),
(474, 477, 53, '2019-03-30 12:50:50', '0000-00-00 00:00:00'),
(475, 478, 53, '2019-03-30 12:51:01', '0000-00-00 00:00:00'),
(476, 479, 53, '2019-03-30 12:51:16', '0000-00-00 00:00:00'),
(477, 480, 53, '2019-03-30 12:51:40', '0000-00-00 00:00:00'),
(478, 481, 57, '2019-03-30 12:57:57', '0000-00-00 00:00:00'),
(479, 482, 57, '2019-03-30 12:58:15', '0000-00-00 00:00:00'),
(480, 483, 57, '2019-03-30 12:58:41', '0000-00-00 00:00:00'),
(481, 484, 57, '2019-03-30 12:59:15', '0000-00-00 00:00:00'),
(482, 485, 57, '2019-03-30 12:59:32', '0000-00-00 00:00:00'),
(483, 486, 57, '2019-03-30 12:59:46', '0000-00-00 00:00:00'),
(484, 487, 57, '2019-03-30 13:00:21', '0000-00-00 00:00:00'),
(485, 488, 57, '2019-03-30 13:00:55', '0000-00-00 00:00:00'),
(486, 489, 57, '2019-03-30 13:01:30', '0000-00-00 00:00:00'),
(487, 490, 57, '2019-03-30 13:01:54', '0000-00-00 00:00:00'),
(488, 491, 57, '2019-03-30 13:03:03', '0000-00-00 00:00:00'),
(489, 492, 57, '2019-03-30 13:03:16', '0000-00-00 00:00:00'),
(490, 493, 57, '2019-03-30 13:03:56', '0000-00-00 00:00:00'),
(491, 494, 57, '2019-03-30 13:04:17', '0000-00-00 00:00:00'),
(492, 495, 58, '2019-04-02 04:48:40', '0000-00-00 00:00:00'),
(493, 496, 58, '2019-04-02 04:48:51', '0000-00-00 00:00:00'),
(494, 497, 58, '2019-04-02 05:09:36', '0000-00-00 00:00:00'),
(495, 498, 58, '2019-04-02 05:09:53', '0000-00-00 00:00:00'),
(496, 499, 58, '2019-04-02 05:10:03', '0000-00-00 00:00:00'),
(497, 500, 58, '2019-04-02 05:10:56', '0000-00-00 00:00:00'),
(498, 501, 58, '2019-04-02 05:11:10', '0000-00-00 00:00:00'),
(499, 502, 58, '2019-04-02 05:11:19', '0000-00-00 00:00:00'),
(500, 503, 59, '2019-04-02 05:12:10', '0000-00-00 00:00:00'),
(501, 504, 59, '2019-04-02 05:13:05', '0000-00-00 00:00:00'),
(502, 505, 59, '2019-04-02 05:13:23', '0000-00-00 00:00:00'),
(503, 506, 59, '2019-04-02 05:14:17', '0000-00-00 00:00:00'),
(504, 507, 59, '2019-04-02 05:14:38', '0000-00-00 00:00:00'),
(505, 508, 59, '2019-04-02 05:14:51', '0000-00-00 00:00:00'),
(506, 509, 59, '2019-04-02 05:15:16', '0000-00-00 00:00:00'),
(507, 510, 59, '2019-04-02 05:15:46', '0000-00-00 00:00:00'),
(508, 511, 59, '2019-04-02 05:16:06', '0000-00-00 00:00:00'),
(509, 512, 60, '2019-04-02 05:17:18', '0000-00-00 00:00:00'),
(510, 513, 60, '2019-04-02 05:17:31', '0000-00-00 00:00:00'),
(511, 514, 60, '2019-04-02 05:17:41', '0000-00-00 00:00:00'),
(512, 515, 60, '2019-04-02 05:18:19', '0000-00-00 00:00:00'),
(513, 516, 60, '2019-04-02 05:18:34', '0000-00-00 00:00:00'),
(514, 517, 60, '2019-04-02 05:18:44', '0000-00-00 00:00:00'),
(515, 518, 60, '2019-04-02 05:19:18', '0000-00-00 00:00:00'),
(516, 519, 60, '2019-04-02 05:19:29', '0000-00-00 00:00:00'),
(517, 520, 60, '2019-04-02 05:19:42', '0000-00-00 00:00:00'),
(518, 521, 60, '2019-04-02 05:24:22', '0000-00-00 00:00:00'),
(519, 522, 60, '2019-04-02 05:24:36', '0000-00-00 00:00:00'),
(520, 523, 61, '2019-04-02 05:37:24', '0000-00-00 00:00:00'),
(521, 524, 61, '2019-04-02 05:37:41', '0000-00-00 00:00:00'),
(522, 525, 61, '2019-04-02 05:38:01', '0000-00-00 00:00:00'),
(523, 526, 61, '2019-04-02 05:38:10', '0000-00-00 00:00:00'),
(524, 527, 61, '2019-04-02 05:38:19', '0000-00-00 00:00:00'),
(525, 528, 61, '2019-04-02 05:38:39', '0000-00-00 00:00:00'),
(526, 529, 65, '2019-04-02 05:39:15', '0000-00-00 00:00:00'),
(527, 530, 65, '2019-04-02 05:40:06', '0000-00-00 00:00:00'),
(528, 531, 65, '2019-04-02 05:40:44', '0000-00-00 00:00:00'),
(529, 532, 62, '2019-04-02 05:41:42', '0000-00-00 00:00:00'),
(530, 533, 62, '2019-04-02 05:41:52', '0000-00-00 00:00:00'),
(531, 534, 62, '2019-04-02 05:42:02', '0000-00-00 00:00:00'),
(532, 535, 63, '2019-04-02 05:42:34', '0000-00-00 00:00:00'),
(533, 536, 63, '2019-04-02 05:43:02', '0000-00-00 00:00:00'),
(534, 537, 63, '2019-04-02 05:43:14', '0000-00-00 00:00:00'),
(535, 538, 63, '2019-04-02 05:43:41', '0000-00-00 00:00:00'),
(536, 539, 63, '2019-04-02 05:44:00', '0000-00-00 00:00:00'),
(537, 540, 63, '2019-04-02 05:44:21', '0000-00-00 00:00:00'),
(538, 541, 64, '2019-04-02 05:46:01', '0000-00-00 00:00:00'),
(539, 542, 64, '2019-04-02 05:46:26', '0000-00-00 00:00:00'),
(540, 543, 64, '2019-04-02 05:47:01', '0000-00-00 00:00:00'),
(541, 544, 64, '2019-04-02 05:47:27', '0000-00-00 00:00:00'),
(542, 545, 64, '2019-04-02 05:47:41', '0000-00-00 00:00:00'),
(543, 546, 64, '2019-04-02 05:48:13', '0000-00-00 00:00:00'),
(544, 547, 64, '2019-04-02 05:48:27', '0000-00-00 00:00:00'),
(545, 548, 64, '2019-04-02 05:49:34', '0000-00-00 00:00:00'),
(546, 549, 66, '2019-04-02 05:51:37', '0000-00-00 00:00:00'),
(547, 550, 66, '2019-04-02 05:51:47', '0000-00-00 00:00:00'),
(548, 551, 66, '2019-04-02 05:51:55', '0000-00-00 00:00:00'),
(549, 552, 66, '2019-04-02 05:52:16', '0000-00-00 00:00:00'),
(550, 553, 66, '2019-04-02 05:52:45', '0000-00-00 00:00:00'),
(551, 554, 66, '2019-04-02 05:53:07', '0000-00-00 00:00:00'),
(552, 555, 66, '2019-04-02 05:53:33', '0000-00-00 00:00:00'),
(553, 556, 67, '2019-04-02 05:54:55', '0000-00-00 00:00:00'),
(554, 557, 67, '2019-04-02 05:55:13', '0000-00-00 00:00:00'),
(555, 558, 67, '2019-04-02 05:55:33', '0000-00-00 00:00:00'),
(556, 559, 67, '2019-04-02 05:55:53', '0000-00-00 00:00:00'),
(557, 560, 67, '2019-04-02 05:56:08', '0000-00-00 00:00:00'),
(558, 561, 67, '2019-04-02 05:56:21', '0000-00-00 00:00:00'),
(559, 562, 68, '2019-04-02 08:10:40', '0000-00-00 00:00:00'),
(560, 563, 68, '2019-04-02 08:11:27', '0000-00-00 00:00:00'),
(561, 564, 68, '2019-04-02 08:12:12', '0000-00-00 00:00:00'),
(562, 565, 68, '2019-04-02 08:12:31', '0000-00-00 00:00:00'),
(563, 566, 69, '2019-04-02 08:13:22', '0000-00-00 00:00:00'),
(564, 567, 69, '2019-04-02 08:13:45', '0000-00-00 00:00:00'),
(565, 568, 69, '2019-04-02 08:16:11', '0000-00-00 00:00:00'),
(566, 569, 70, '2019-04-02 08:17:33', '0000-00-00 00:00:00'),
(567, 570, 70, '2019-04-02 08:17:50', '0000-00-00 00:00:00'),
(568, 571, 72, '2019-04-02 08:18:27', '0000-00-00 00:00:00'),
(569, 572, 72, '2019-04-02 08:18:42', '0000-00-00 00:00:00'),
(570, 573, 72, '2019-04-02 08:18:57', '0000-00-00 00:00:00'),
(571, 574, 72, '2019-04-02 08:19:14', '0000-00-00 00:00:00'),
(572, 575, 71, '2019-04-02 08:20:03', '0000-00-00 00:00:00'),
(573, 576, 71, '2019-04-02 08:20:19', '0000-00-00 00:00:00'),
(574, 577, 71, '2019-04-02 08:20:33', '0000-00-00 00:00:00'),
(575, 578, 71, '2019-04-02 08:21:14', '0000-00-00 00:00:00'),
(576, 579, 71, '2019-04-02 08:21:27', '0000-00-00 00:00:00'),
(577, 580, 73, '2019-04-02 08:23:10', '0000-00-00 00:00:00'),
(578, 581, 73, '2019-04-02 08:23:29', '0000-00-00 00:00:00'),
(579, 582, 73, '2019-04-02 08:23:41', '0000-00-00 00:00:00'),
(580, 583, 73, '2019-04-02 08:23:53', '0000-00-00 00:00:00'),
(581, 584, 74, '2019-04-02 08:25:36', '0000-00-00 00:00:00'),
(582, 585, 74, '2019-04-02 08:25:59', '0000-00-00 00:00:00'),
(583, 586, 74, '2019-04-02 08:26:11', '0000-00-00 00:00:00'),
(584, 587, 74, '2019-04-02 08:26:17', '0000-00-00 00:00:00'),
(585, 588, 74, '2019-04-02 08:26:37', '0000-00-00 00:00:00'),
(586, 589, 74, '2019-04-02 08:26:52', '0000-00-00 00:00:00'),
(587, 590, 74, '2019-04-02 08:27:05', '0000-00-00 00:00:00'),
(588, 591, 74, '2019-04-02 08:27:14', '0000-00-00 00:00:00'),
(589, 592, 75, '2019-04-02 08:27:54', '0000-00-00 00:00:00'),
(590, 593, 75, '2019-04-02 08:28:03', '0000-00-00 00:00:00'),
(591, 594, 75, '2019-04-02 08:28:38', '0000-00-00 00:00:00'),
(592, 595, 76, '2019-04-02 08:29:04', '0000-00-00 00:00:00'),
(593, 596, 76, '2019-04-02 08:29:20', '0000-00-00 00:00:00'),
(594, 597, 76, '2019-04-02 08:29:44', '0000-00-00 00:00:00'),
(595, 598, 77, '2019-04-02 08:30:24', '0000-00-00 00:00:00'),
(596, 599, 68, '2019-04-02 08:31:15', '0000-00-00 00:00:00'),
(597, 600, 68, '2019-04-02 08:31:35', '0000-00-00 00:00:00'),
(598, 601, 68, '2019-04-02 08:32:14', '0000-00-00 00:00:00'),
(599, 602, 68, '2019-04-02 08:32:52', '0000-00-00 00:00:00'),
(600, 603, 68, '2019-04-02 08:33:12', '0000-00-00 00:00:00'),
(601, 604, 68, '2019-04-02 08:33:43', '0000-00-00 00:00:00'),
(602, 605, 68, '2019-04-02 08:34:01', '0000-00-00 00:00:00'),
(603, 606, 68, '2019-04-02 08:34:23', '0000-00-00 00:00:00'),
(604, 607, 68, '2019-04-02 08:34:42', '0000-00-00 00:00:00'),
(605, 608, 68, '2019-04-02 08:35:24', '0000-00-00 00:00:00'),
(606, 609, 68, '2019-04-02 08:36:08', '0000-00-00 00:00:00'),
(607, 610, 68, '2019-04-02 08:36:30', '0000-00-00 00:00:00'),
(608, 611, 69, '2019-04-02 08:37:15', '0000-00-00 00:00:00'),
(609, 612, 69, '2019-04-02 08:37:24', '0000-00-00 00:00:00'),
(610, 613, 69, '2019-04-02 08:37:32', '0000-00-00 00:00:00'),
(611, 614, 69, '2019-04-02 08:37:41', '0000-00-00 00:00:00'),
(612, 615, 69, '2019-04-02 08:37:48', '0000-00-00 00:00:00'),
(613, 616, 69, '2019-04-02 08:37:56', '0000-00-00 00:00:00'),
(614, 617, 69, '2019-04-02 08:38:03', '0000-00-00 00:00:00'),
(615, 618, 70, '2019-04-02 08:38:26', '0000-00-00 00:00:00'),
(616, 619, 70, '2019-04-02 08:38:33', '0000-00-00 00:00:00'),
(617, 620, 71, '2019-04-02 08:39:07', '0000-00-00 00:00:00'),
(618, 621, 71, '2019-04-02 08:39:17', '0000-00-00 00:00:00'),
(619, 622, 71, '2019-04-02 08:39:24', '0000-00-00 00:00:00'),
(620, 623, 71, '2019-04-02 08:39:33', '0000-00-00 00:00:00'),
(621, 624, 71, '2019-04-02 08:39:40', '0000-00-00 00:00:00'),
(622, 625, 71, '2019-04-02 08:39:51', '0000-00-00 00:00:00'),
(623, 626, 71, '2019-04-02 08:40:06', '0000-00-00 00:00:00'),
(624, 627, 72, '2019-04-02 08:40:35', '0000-00-00 00:00:00'),
(625, 628, 72, '2019-04-02 08:40:45', '0000-00-00 00:00:00'),
(626, 629, 72, '2019-04-02 08:40:53', '0000-00-00 00:00:00'),
(627, 630, 72, '2019-04-02 08:41:01', '0000-00-00 00:00:00'),
(628, 631, 72, '2019-04-02 08:41:08', '0000-00-00 00:00:00'),
(629, 632, 73, '2019-04-02 08:41:50', '0000-00-00 00:00:00'),
(630, 633, 73, '2019-04-02 08:42:01', '0000-00-00 00:00:00'),
(631, 634, 73, '2019-04-02 08:42:09', '0000-00-00 00:00:00'),
(632, 635, 73, '2019-04-02 08:42:16', '0000-00-00 00:00:00'),
(633, 636, 73, '2019-04-02 08:42:28', '0000-00-00 00:00:00'),
(634, 637, 74, '2019-04-02 08:45:12', '0000-00-00 00:00:00'),
(635, 638, 74, '2019-04-02 08:45:25', '0000-00-00 00:00:00'),
(636, 639, 74, '2019-04-02 08:45:42', '0000-00-00 00:00:00'),
(637, 640, 74, '2019-04-02 08:45:57', '0000-00-00 00:00:00'),
(638, 641, 74, '2019-04-02 08:46:12', '0000-00-00 00:00:00'),
(639, 642, 74, '2019-04-02 08:46:26', '0000-00-00 00:00:00'),
(640, 643, 74, '2019-04-02 08:47:47', '0000-00-00 00:00:00'),
(641, 644, 74, '2019-04-02 08:47:55', '0000-00-00 00:00:00'),
(642, 645, 74, '2019-04-02 08:48:06', '0000-00-00 00:00:00'),
(643, 646, 74, '2019-04-02 08:48:15', '0000-00-00 00:00:00'),
(644, 647, 74, '2019-04-02 08:48:25', '0000-00-00 00:00:00'),
(645, 648, 75, '2019-04-02 08:48:51', '0000-00-00 00:00:00'),
(646, 649, 75, '2019-04-02 08:49:02', '0000-00-00 00:00:00'),
(647, 650, 75, '2019-04-02 08:49:10', '0000-00-00 00:00:00'),
(648, 651, 75, '2019-04-02 08:49:18', '0000-00-00 00:00:00'),
(649, 652, 75, '2019-04-02 08:49:26', '0000-00-00 00:00:00'),
(650, 653, 75, '2019-04-02 08:49:34', '0000-00-00 00:00:00'),
(651, 654, 75, '2019-04-02 08:49:41', '0000-00-00 00:00:00'),
(652, 655, 76, '2019-04-02 08:49:59', '0000-00-00 00:00:00'),
(653, 656, 76, '2019-04-02 08:50:06', '0000-00-00 00:00:00'),
(654, 657, 76, '2019-04-02 08:50:13', '0000-00-00 00:00:00'),
(655, 658, 76, '2019-04-02 08:50:20', '0000-00-00 00:00:00'),
(656, 659, 76, '2019-04-02 08:50:27', '0000-00-00 00:00:00'),
(657, 660, 68, '2019-04-02 08:51:03', '0000-00-00 00:00:00'),
(658, 661, 68, '2019-04-02 08:51:14', '0000-00-00 00:00:00'),
(659, 662, 68, '2019-04-02 08:51:21', '0000-00-00 00:00:00'),
(660, 663, 68, '2019-04-02 08:51:29', '0000-00-00 00:00:00'),
(661, 664, 68, '2019-04-02 08:51:35', '0000-00-00 00:00:00'),
(662, 665, 68, '2019-04-02 08:51:42', '0000-00-00 00:00:00'),
(663, 666, 69, '2019-04-02 08:51:54', '0000-00-00 00:00:00'),
(664, 667, 69, '2019-04-02 08:52:01', '0000-00-00 00:00:00'),
(665, 668, 69, '2019-04-02 08:52:09', '0000-00-00 00:00:00'),
(666, 669, 69, '2019-04-02 08:52:16', '0000-00-00 00:00:00'),
(667, 670, 69, '2019-04-02 08:52:25', '0000-00-00 00:00:00'),
(668, 671, 70, '2019-04-02 08:52:39', '0000-00-00 00:00:00'),
(669, 672, 70, '2019-04-02 08:52:46', '0000-00-00 00:00:00'),
(670, 673, 71, '2019-04-02 08:53:06', '0000-00-00 00:00:00'),
(671, 674, 71, '2019-04-02 08:53:20', '0000-00-00 00:00:00'),
(672, 675, 71, '2019-04-02 08:53:26', '0000-00-00 00:00:00'),
(673, 676, 71, '2019-04-02 08:53:34', '0000-00-00 00:00:00'),
(674, 677, 71, '2019-04-02 08:53:41', '0000-00-00 00:00:00'),
(675, 678, 71, '2019-04-02 08:53:48', '0000-00-00 00:00:00'),
(676, 679, 72, '2019-04-02 08:54:09', '0000-00-00 00:00:00'),
(677, 680, 72, '2019-04-02 08:54:19', '0000-00-00 00:00:00'),
(678, 681, 72, '2019-04-02 08:54:32', '0000-00-00 00:00:00'),
(679, 682, 72, '2019-04-02 08:54:38', '0000-00-00 00:00:00'),
(680, 683, 72, '2019-04-02 08:54:50', '0000-00-00 00:00:00'),
(681, 684, 73, '2019-04-02 08:55:06', '0000-00-00 00:00:00'),
(682, 685, 73, '2019-04-02 08:55:15', '0000-00-00 00:00:00'),
(683, 686, 73, '2019-04-02 08:55:23', '0000-00-00 00:00:00'),
(684, 687, 74, '2019-04-02 08:55:36', '0000-00-00 00:00:00'),
(685, 688, 74, '2019-04-02 08:55:43', '0000-00-00 00:00:00'),
(686, 689, 74, '2019-04-02 08:55:52', '0000-00-00 00:00:00'),
(687, 690, 74, '2019-04-02 08:55:58', '0000-00-00 00:00:00'),
(688, 691, 74, '2019-04-02 08:56:05', '0000-00-00 00:00:00'),
(689, 692, 75, '2019-04-02 08:56:24', '0000-00-00 00:00:00'),
(690, 693, 75, '2019-04-02 08:56:32', '0000-00-00 00:00:00'),
(691, 694, 75, '2019-04-02 08:56:41', '0000-00-00 00:00:00'),
(692, 695, 76, '2019-04-02 08:56:53', '0000-00-00 00:00:00'),
(693, 696, 76, '2019-04-02 08:56:59', '0000-00-00 00:00:00'),
(694, 697, 76, '2019-04-02 08:57:06', '0000-00-00 00:00:00'),
(695, 698, 76, '2019-04-02 08:57:13', '0000-00-00 00:00:00'),
(700, 703, 79, '2019-04-09 09:21:21', '0000-00-00 00:00:00'),
(701, 704, 79, '2019-04-09 09:21:36', '0000-00-00 00:00:00'),
(702, 705, 79, '2019-04-09 09:21:48', '0000-00-00 00:00:00'),
(703, 706, 79, '2019-04-09 09:22:22', '0000-00-00 00:00:00'),
(704, 707, 79, '2019-04-09 09:22:35', '0000-00-00 00:00:00'),
(705, 708, 79, '2019-04-09 09:22:47', '0000-00-00 00:00:00'),
(706, 709, 79, '2019-04-09 09:23:13', '0000-00-00 00:00:00'),
(707, 710, 79, '2019-04-09 09:23:54', '0000-00-00 00:00:00'),
(708, 711, 79, '2019-04-09 09:24:06', '0000-00-00 00:00:00'),
(710, 713, 81, '2019-04-09 09:28:17', '0000-00-00 00:00:00'),
(711, 714, 81, '2019-04-09 09:28:39', '0000-00-00 00:00:00'),
(712, 715, 81, '2019-04-09 09:28:59', '0000-00-00 00:00:00'),
(713, 716, 81, '2019-04-09 09:29:31', '0000-00-00 00:00:00'),
(714, 717, 81, '2019-04-09 09:29:50', '0000-00-00 00:00:00'),
(715, 718, 81, '2019-04-09 09:30:04', '0000-00-00 00:00:00'),
(716, 719, 81, '2019-04-09 09:30:16', '0000-00-00 00:00:00'),
(717, 720, 81, '2019-04-09 09:30:37', '0000-00-00 00:00:00'),
(718, 721, 81, '2019-04-09 09:31:14', '0000-00-00 00:00:00'),
(719, 722, 81, '2019-04-09 09:31:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulasan`
--

CREATE TABLE `ulasan` (
  `id_ulasan` int(225) NOT NULL,
  `judul_ulasan` varchar(50) NOT NULL,
  `deskripsi_ulasan` mediumtext NOT NULL,
  `rating` int(1) NOT NULL,
  `status_publikasi` varchar(20) NOT NULL,
  `post_ulasan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_dtm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `id_pencari` int(225) NOT NULL,
  `id_universitas` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ulasan`
--

INSERT INTO `ulasan` (`id_ulasan`, `judul_ulasan`, `deskripsi_ulasan`, `rating`, `status_publikasi`, `post_ulasan`, `update_dtm`, `id_pencari`, `id_universitas`) VALUES
(0, 'keren abis', 'universitas nomor 3', 2, 'Sudah disetujui', '2019-04-20 08:42:40', '2019-04-20 08:49:37', 118, 1);

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
(1, 'www.ugm.ac.id.id', 'Dalam Negeri', 'Indonesia', 'ugm1.jpg', 'Universitas Gadjah Mada', '2018-12-04 08:21:08', '2019-04-09 10:40:46'),
(2, 'https://www.itb.ac.id/', 'Dalam Negeri', 'Indonesia', 'itbhome.jpg', 'Institut Teknologi Bandung', '2018-12-18 10:18:11', '2019-04-02 09:14:05'),
(5, 'www.its.ac.id', 'Dalam Negeri', 'Indonesia', 'its.jpg', 'Institut Teknologi Sepuluh November', '2019-03-28 07:30:46', '2019-04-10 21:15:43'),
(6, 'www.harvard.edu', 'Luar Negeri', 'Amerika Serikat', 'Harvard_university.jpg', 'Harvard University', '2019-03-29 13:33:25', '2019-04-09 05:37:18'),
(7, 'www.ipb.ac.id', 'Dalam Negeri', 'Indonesia', 'ipb_pic.jpg', 'Institut Pertanian Bogor', '2019-04-02 07:51:17', '0000-00-00 00:00:00');

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
  ADD PRIMARY KEY (`id_beasiswa_umum`),
  ADD KEY `admin_cons` (`id_admin`);

--
-- Indexes for table `beasiswa_universitas`
--
ALTER TABLE `beasiswa_universitas`
  ADD PRIMARY KEY (`id_beasiswa_univ`),
  ADD KEY `universitas_cons2` (`id_universitas`);

--
-- Indexes for table `detail_pencarian`
--
ALTER TABLE `detail_pencarian`
  ADD PRIMARY KEY (`id_detail_pencarian`),
  ADD KEY `universitas_conns` (`id_universitas`),
  ADD KEY `pencarian_cons` (`id_pencarian`);

--
-- Indexes for table `detail_pencarian_beasiswa`
--
ALTER TABLE `detail_pencarian_beasiswa`
  ADD PRIMARY KEY (`id_detail_pencarian_beasiswa`),
  ADD KEY `pencarian_beasiswa_cons` (`id_pencarian_beasiswa`),
  ADD KEY `konten_beasiswa` (`id_konten_beasiswa_umum`);

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
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD KEY `pencari_universitas_constrain` (`id_pencari`),
  ADD KEY `universitas` (`id_universitas`);

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
  MODIFY `id_beasiswa` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `beasiswa_umum`
--
ALTER TABLE `beasiswa_umum`
  MODIFY `id_beasiswa_umum` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `beasiswa_universitas`
--
ALTER TABLE `beasiswa_universitas`
  MODIFY `id_beasiswa_univ` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `detail_pencarian`
--
ALTER TABLE `detail_pencarian`
  MODIFY `id_detail_pencarian` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT for table `detail_pencarian_beasiswa`
--
ALTER TABLE `detail_pencarian_beasiswa`
  MODIFY `id_detail_pencarian_beasiswa` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `detail_universitas`
--
ALTER TABLE `detail_universitas`
  MODIFY `id_detail_universitas` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `fak_univ`
--
ALTER TABLE `fak_univ`
  MODIFY `id_fak_univ` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `pencari`
--
ALTER TABLE `pencari`
  MODIFY `id_pencari` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `pencarian`
--
ALTER TABLE `pencarian`
  MODIFY `id_pencarian` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;
--
-- AUTO_INCREMENT for table `pencarian_beasiswa`
--
ALTER TABLE `pencarian_beasiswa`
  MODIFY `id_pencarian_beasiswa` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;
--
-- AUTO_INCREMENT for table `pencarian_favorit`
--
ALTER TABLE `pencarian_favorit`
  MODIFY `id_pencarian_favorit` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=723;
--
-- AUTO_INCREMENT for table `prodi_fak`
--
ALTER TABLE `prodi_fak`
  MODIFY `id_prodi_fak` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=720;
--
-- AUTO_INCREMENT for table `universitas`
--
ALTER TABLE `universitas`
  MODIFY `id_universitas` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `beasiswa`
--
ALTER TABLE `beasiswa`
  ADD CONSTRAINT `beasiswa_univ_cons` FOREIGN KEY (`id_beasiswa_univ`) REFERENCES `beasiswa_universitas` (`id_beasiswa_univ`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `beasiswa_umum`
--
ALTER TABLE `beasiswa_umum`
  ADD CONSTRAINT `admin_cons` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `beasiswa_universitas`
--
ALTER TABLE `beasiswa_universitas`
  ADD CONSTRAINT `universitas_cons2` FOREIGN KEY (`id_universitas`) REFERENCES `universitas` (`id_universitas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pencarian`
--
ALTER TABLE `detail_pencarian`
  ADD CONSTRAINT `pencarian_cons` FOREIGN KEY (`id_pencarian`) REFERENCES `pencarian` (`id_pencarian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `universitas_conns` FOREIGN KEY (`id_universitas`) REFERENCES `universitas` (`id_universitas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_pencarian_beasiswa`
--
ALTER TABLE `detail_pencarian_beasiswa`
  ADD CONSTRAINT `konten_beasiswa` FOREIGN KEY (`id_konten_beasiswa_umum`) REFERENCES `konten_beasiswa` (`id_konten_beasiswa_umum`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pencarian_beasiswa_cons` FOREIGN KEY (`id_pencarian_beasiswa`) REFERENCES `pencarian_beasiswa` (`id_pencarian_beasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

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

--
-- Ketidakleluasaan untuk tabel `ulasan`
--
ALTER TABLE `ulasan`
  ADD CONSTRAINT `pencari_universitas_constrain` FOREIGN KEY (`id_pencari`) REFERENCES `pencari` (`id_pencari`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `universitas` FOREIGN KEY (`id_universitas`) REFERENCES `universitas` (`id_universitas`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

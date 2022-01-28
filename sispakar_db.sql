-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2021 at 12:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispakar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator'),
('teguh', 'f5cd3a020bc94866049206a7cf14e266', 'teguh');

-- --------------------------------------------------------

--
-- Table structure for table `basis_pengetahuan`
--

CREATE TABLE `basis_pengetahuan` (
  `kode_pengetahuan` int(11) NOT NULL,
  `kode_penyakit` int(11) NOT NULL,
  `kode_gejala` int(11) NOT NULL,
  `mb` double(11,1) NOT NULL,
  `md` double(11,1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `basis_pengetahuan`
--

INSERT INTO `basis_pengetahuan` (`kode_pengetahuan`, `kode_penyakit`, `kode_gejala`, `mb`, `md`) VALUES
(125, 2, 9, 0.6, 0.2),
(124, 2, 5, 0.8, 0.2),
(123, 2, 2, 0.9, 0.1),
(14, 2, 8, 0.6, 0.4),
(15, 2, 7, 0.8, 0.2),
(16, 2, 3, 0.6, 0.1),
(17, 2, 4, 0.6, 0.4),
(18, 2, 6, 0.7, 0.3),
(10, 2, 11, 0.6, 0.2),
(11, 2, 12, 0.5, 0.2),
(12, 2, 13, 0.7, 0.3),
(126, 2, 10, 0.4, 0.2),
(1, 1, 7, 0.8, 0.1),
(2, 1, 8, 0.9, 0.1),
(3, 1, 9, 0.9, 0.1),
(4, 1, 5, 0.6, 0.2),
(5, 1, 3, 0.6, 0.4),
(6, 1, 1, 0.6, 0.4),
(7, 1, 2, 0.8, 0.2),
(8, 1, 4, 0.7, 0.3),
(9, 1, 6, 0.9, 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` int(11) NOT NULL,
  `nama_gejala` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`) VALUES
(13, 'Kesemutan'),
(10, 'Gangguan ereksi pada pria'),
(11, 'Nyeri atau mati rasa pada kaki dan tangan'),
(1, 'Merasa kaku atau kesemutan pada kaki'),
(2, 'Luka yang lama sembuh'),
(3, 'Mudah diserang penyakit infeksi'),
(4, 'Sering Merasa Lelah'),
(5, 'Pandangan kabur'),
(6, 'Berat badan turun'),
(7, 'Sering merasa lapar (polyphagia)'),
(8, 'Sering haus (polydipsia)'),
(12, 'Kulit gatal'),
(9, 'Sering buang air kecil, terutama pada malam hari ');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `tanggal` varchar(50) NOT NULL DEFAULT '0',
  `penyakit` text NOT NULL,
  `gejala` text NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `tanggal`, `penyakit`, `gejala`, `hasil_id`, `hasil_nilai`) VALUES
(344, '2021-07-10 16:14:40', 'a:2:{i:1;s:8:\"0.778816\";i:2;s:8:\"0.606880\";}', 'a:3:{i:2;s:1:\"3\";i:3;s:1:\"5\";i:8;s:1:\"2\";}', 1, '0.778816'),
(342, '2021-07-10 15:48:59', 'a:2:{i:2;s:8:\"0.821452\";i:1;s:8:\"0.651520\";}', 'a:7:{i:3;s:1:\"3\";i:4;s:1:\"1\";i:5;s:1:\"6\";i:7;s:1:\"3\";i:10;s:1:\"4\";i:11;s:1:\"1\";i:12;s:1:\"2\";}', 2, '0.821452'),
(343, '2021-07-10 16:11:03', 'a:2:{i:2;s:8:\"0.537920\";i:1;s:8:\"0.208000\";}', 'a:5:{i:1;s:1:\"1\";i:2;s:1:\"6\";i:3;s:1:\"2\";i:10;s:1:\"1\";i:13;s:1:\"3\";}', 2, '0.537920'),
(341, '2021-07-08 17:32:47', 'a:2:{i:1;s:8:\"0.778816\";i:2;s:8:\"0.606880\";}', 'a:3:{i:2;s:1:\"3\";i:3;s:1:\"5\";i:8;s:1:\"2\";}', 1, '0.778816'),
(339, '2021-07-08 17:22:43', 'a:2:{i:2;s:8:\"0.400000\";i:1;s:8:\"0.160000\";}', 'a:1:{i:3;s:1:\"2\";}', 2, '0.400000'),
(340, '2021-07-08 17:23:29', 'a:2:{i:2;s:8:\"0.644320\";i:1;s:8:\"0.529984\";}', 'a:3:{i:3;s:1:\"5\";i:5;s:1:\"2\";i:7;s:1:\"4\";}', 2, '0.644320'),
(337, '2021-07-08 17:21:52', 'a:2:{i:2;s:8:\"0.200000\";i:1;s:8:\"0.080000\";}', 'a:1:{i:3;s:1:\"4\";}', 2, '0.200000'),
(338, '2021-07-08 17:22:19', 'a:2:{i:2;s:8:\"0.300000\";i:1;s:8:\"0.120000\";}', 'a:1:{i:3;s:1:\"3\";}', 2, '0.300000'),
(336, '2021-07-08 17:20:00', 'a:2:{i:2;s:8:\"0.100000\";i:1;s:8:\"0.040000\";}', 'a:1:{i:3;s:1:\"5\";}', 2, '0.100000'),
(334, '2021-07-08 17:08:31', 'a:2:{i:1;s:8:\"0.782272\";i:2;s:8:\"0.412672\";}', 'a:3:{i:6;s:1:\"5\";i:7;s:1:\"4\";i:8;s:1:\"2\";}', 1, '0.782272'),
(335, '2021-07-08 17:18:08', 'a:2:{i:1;s:8:\"0.960000\";i:2;s:8:\"0.712000\";}', 'a:3:{i:8;s:1:\"1\";i:9;s:1:\"1\";i:11;s:1:\"1\";}', 1, '0.960000'),
(333, '2021-07-08 15:09:18', 'a:2:{i:2;s:8:\"0.662925\";i:1;s:8:\"0.361600\";}', 'a:5:{i:1;s:1:\"2\";i:2;s:1:\"4\";i:10;s:1:\"3\";i:11;s:1:\"1\";i:12;s:1:\"2\";}', 2, '0.662925'),
(332, '2021-07-08 13:26:31', 'a:2:{i:2;s:8:\"0.662925\";i:1;s:8:\"0.361600\";}', 'a:5:{i:1;s:1:\"2\";i:2;s:1:\"4\";i:10;s:1:\"3\";i:11;s:1:\"1\";i:12;s:1:\"2\";}', 2, '0.662925'),
(331, '2021-07-08 13:08:26', 'a:2:{i:1;s:8:\"0.410176\";i:2;s:8:\"0.300800\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"3\";i:3;s:1:\"5\";}', 1, '0.410176'),
(330, '2021-07-08 13:08:05', 'a:2:{i:1;s:6:\"0.4102\";i:2;s:6:\"0.3008\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"3\";i:3;s:1:\"5\";}', 1, '0.4102'),
(329, '2021-07-08 13:00:53', 'a:2:{i:1;s:4:\"0.41\";i:2;s:4:\"0.30\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"3\";i:3;s:1:\"5\";}', 1, '0.41'),
(328, '2021-07-08 12:59:53', 'a:2:{i:1;s:6:\"0.4102\";i:2;s:6:\"0.3008\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"3\";i:3;s:1:\"5\";}', 1, '0.4102'),
(326, '2021-07-08 12:46:52', 'a:2:{i:1;s:9:\"0.5598720\";i:2;s:9:\"0.4288000\";}', 'a:3:{i:1;s:1:\"4\";i:2;s:1:\"2\";i:3;s:1:\"4\";}', 1, '0.5598720'),
(327, '2021-07-08 12:55:03', 'a:1:{i:1;s:6:\"0.0400\";}', 'a:1:{i:1;s:1:\"5\";}', 1, '0.0400'),
(325, '2021-07-08 12:39:32', 'a:2:{i:1;s:9:\"0.4101760\";i:2;s:9:\"0.3008000\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"3\";i:3;s:1:\"5\";}', 1, '0.4101760'),
(323, '2021-07-08 12:26:28', 'a:2:{i:1;s:6:\"0.4102\";i:2;s:6:\"0.3008\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"3\";i:3;s:1:\"5\";}', 1, '0.4102'),
(324, '2021-07-08 12:29:24', 'a:2:{i:2;s:6:\"0.7984\";i:1;s:6:\"0.6800\";}', 'a:5:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:10;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"1\";}', 2, '0.7984'),
(321, '2021-07-08 12:21:09', 'a:2:{i:1;s:6:\"0.3288\";i:2;s:6:\"0.2944\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"4\";i:3;s:1:\"4\";}', 1, '0.3288'),
(322, '2021-07-08 12:21:23', 'a:2:{i:1;s:6:\"0.7440\";i:2;s:6:\"0.6400\";}', 'a:3:{i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}', 1, '0.7440'),
(320, '2021-07-08 12:18:13', 'a:2:{i:1;s:11:\"0.328768000\";i:2;s:11:\"0.294400000\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"4\";i:3;s:1:\"4\";}', 1, '0.328768000'),
(318, '2021-07-08 12:09:38', 'a:2:{i:1;s:6:\"0.3288\";i:2;s:6:\"0.2944\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"4\";i:3;s:1:\"4\";}', 1, '0.3288'),
(319, '2021-07-08 12:17:55', 'a:2:{i:1;s:6:\"0.3288\";i:2;s:6:\"0.2944\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"4\";i:3;s:1:\"4\";}', 1, '0.3288'),
(317, '2021-07-08 12:08:54', 'a:2:{i:1;s:6:\"0.1890\";i:2;s:6:\"0.1536\";}', 'a:3:{i:1;s:1:\"5\";i:2;s:1:\"5\";i:3;s:1:\"5\";}', 1, '0.1890'),
(314, '2021-07-08 12:07:39', 'a:0:{}', 'a:1:{i:1;s:1:\"6\";}', 0, ''),
(315, '2021-07-08 12:07:48', 'a:0:{}', 'a:2:{i:1;s:1:\"5\";i:2;s:1:\"5\";}', 0, ''),
(316, '2021-07-08 12:08:32', 'a:2:{i:1;s:6:\"0.1552\";i:2;s:6:\"0.0800\";}', 'a:2:{i:1;s:1:\"5\";i:2;s:1:\"5\";}', 1, '0.1552'),
(313, '2021-07-08 12:06:38', 'a:0:{}', 'a:1:{i:1;s:1:\"7\";}', 0, ''),
(312, '2021-07-08 12:06:28', 'a:0:{}', 'a:1:{i:1;s:2:\"10\";}', 0, ''),
(311, '2021-07-08 11:58:42', 'a:2:{i:1;s:6:\"0.4073\";i:2;s:6:\"0.3847\";}', 'a:3:{i:4;s:1:\"4\";i:7;s:1:\"4\";i:8;s:1:\"4\";}', 1, '0.4073'),
(309, '2021-07-08 11:37:53', 'a:0:{}', 'a:1:{i:1;s:1:\"5\";}', 0, ''),
(310, '2021-07-08 11:46:16', 'a:2:{i:1;s:6:\"0.6637\";i:2;s:6:\"0.5148\";}', 'a:4:{i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"2\";}', 1, '0.6637'),
(307, '2021-07-07 19:28:21', 'a:1:{i:2;s:5:\"0.748\";}', 'a:3:{i:11;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"1\";}', 2, '0.748'),
(308, '2021-07-08 11:28:16', 'a:2:{i:1;s:5:\"0.666\";i:2;s:5:\"0.532\";}', 'a:4:{i:1;s:1:\"4\";i:2;s:1:\"2\";i:3;s:1:\"4\";i:4;s:1:\"3\";}', 1, '0.666'),
(306, '2021-07-07 19:28:10', 'a:1:{i:2;s:5:\"0.748\";}', 'a:3:{i:11;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"1\";}', 2, '0.748'),
(304, '2021-07-07 19:21:24', 'a:1:{i:2;s:4:\"0.75\";}', 'a:3:{i:11;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"1\";}', 2, '0.75'),
(305, '2021-07-07 19:27:41', 'a:1:{i:2;s:4:\"0.75\";}', 'a:3:{i:11;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"1\";}', 2, '0.75'),
(303, '2021-07-07 19:17:28', 'a:1:{i:2;s:4:\"0.66\";}', 'a:3:{i:10;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"1\";}', 2, '0.66'),
(302, '2021-07-07 19:15:50', 'a:2:{i:2;s:4:\"0.68\";i:1;s:4:\"0.68\";}', 'a:2:{i:7;s:1:\"1\";i:8;s:1:\"1\";}', 2, '0.68'),
(300, '2021-07-07 19:06:09', 'a:2:{i:2;s:4:\"0.68\";i:1;s:4:\"0.68\";}', 'a:2:{i:7;s:1:\"1\";i:8;s:1:\"1\";}', 2, '0.68'),
(301, '2021-07-07 19:07:04', 'a:2:{i:2;s:4:\"0.68\";i:1;s:4:\"0.36\";}', 'a:2:{i:7;s:1:\"1\";i:8;s:1:\"1\";}', 2, '0.68'),
(299, '2021-07-07 19:00:54', 'a:2:{i:2;s:4:\"0.68\";i:1;s:4:\"0.64\";}', 'a:2:{i:7;s:1:\"1\";i:8;s:1:\"1\";}', 2, '0.68'),
(297, '2021-07-07 18:57:03', 'a:2:{i:2;s:6:\"0.5800\";i:1;s:6:\"0.5200\";}', 'a:2:{i:3;s:1:\"1\";i:4;s:1:\"1\";}', 2, '0.5800'),
(298, '2021-07-07 19:00:39', 'a:2:{i:2;s:4:\"0.58\";i:1;s:4:\"0.52\";}', 'a:2:{i:3;s:1:\"1\";i:4;s:1:\"1\";}', 2, '0.58'),
(296, '2021-07-07 18:56:41', 'a:2:{i:2;s:6:\"0.6800\";i:1;s:6:\"0.6400\";}', 'a:2:{i:7;s:1:\"1\";i:8;s:1:\"1\";}', 2, '0.6800'),
(295, '2021-07-07 18:54:33', 'a:2:{i:1;s:6:\"0.6800\";i:2;s:6:\"0.4000\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"1\";}', 1, '0.6800'),
(294, '2021-07-07 18:49:21', 'a:2:{i:2;s:6:\"0.5800\";i:1;s:6:\"0.2000\";}', 'a:3:{i:1;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"1\";}', 2, '0.5800'),
(293, '2021-07-07 18:32:46', 'a:2:{i:2;s:6:\"0.5800\";i:1;s:6:\"0.2000\";}', 'a:3:{i:1;s:1:\"1\";i:12;s:1:\"1\";i:13;s:1:\"1\";}', 2, '0.5800'),
(292, '2021-07-07 17:49:37', 'a:2:{i:1;s:6:\"0.9300\";i:2;s:6:\"0.9283\";}', 'a:9:{i:1;s:1:\"3\";i:2;s:1:\"2\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"3\";i:6;s:1:\"1\";i:7;s:1:\"3\";i:8;s:1:\"2\";i:9;s:1:\"1\";}', 1, '0.9300'),
(291, '2021-07-02 22:41:53', 'a:0:{}', 'a:0:{}', 0, ''),
(290, '2021-07-02 22:31:44', 'a:2:{i:1;s:6:\"1.0000\";i:2;s:6:\"0.9782\";}', 'a:5:{i:3;s:1:\"3\";i:6;s:1:\"3\";i:7;s:1:\"1\";i:8;s:1:\"3\";i:11;s:1:\"2\";}', 1, '1.0000'),
(288, '2021-07-02 21:10:35', 'a:0:{}', 'a:0:{}', 0, ''),
(289, '2021-07-02 21:12:07', 'a:1:{i:1;s:6:\"0.3937\";}', 'a:13:{i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"1\";i:4;s:1:\"3\";i:5;s:1:\"8\";i:6;s:1:\"6\";i:7;s:1:\"3\";i:8;s:1:\"1\";i:9;s:1:\"3\";i:10;s:1:\"5\";i:11;s:1:\"3\";i:12;s:1:\"6\";i:13;s:1:\"8\";}', 1, '0.3937'),
(287, '2021-07-02 17:09:51', 'a:2:{i:2;s:6:\"0.8226\";i:1;s:6:\"0.0800\";}', 'a:5:{i:4;s:1:\"4\";i:5;s:1:\"6\";i:10;s:1:\"3\";i:12;s:1:\"4\";i:13;s:1:\"3\";}', 2, '0.8226'),
(286, '2021-07-02 17:09:13', 'a:2:{i:1;s:6:\"0.9040\";i:2;s:6:\"0.5056\";}', 'a:6:{i:1;s:1:\"1\";i:4;s:1:\"4\";i:6;s:1:\"1\";i:10;s:1:\"5\";i:11;s:1:\"3\";i:12;s:1:\"8\";}', 1, '0.9040'),
(285, '2021-07-02 17:08:46', 'a:1:{i:1;s:6:\"0.1541\";}', 'a:13:{i:1;s:1:\"1\";i:2;s:1:\"3\";i:3;s:1:\"5\";i:4;s:1:\"2\";i:5;s:1:\"8\";i:6;s:1:\"7\";i:7;s:1:\"2\";i:8;s:1:\"6\";i:9;s:1:\"2\";i:10;s:1:\"3\";i:11;s:1:\"8\";i:12;s:1:\"5\";i:13;s:1:\"2\";}', 1, '0.1541'),
(345, '2021-07-10 16:21:13', 'a:2:{i:2;s:8:\"0.570995\";i:1;s:8:\"0.349504\";}', 'a:5:{i:1;s:1:\"2\";i:2;s:1:\"5\";i:3;s:1:\"3\";i:10;s:1:\"5\";i:13;s:1:\"3\";}', 2, '0.570995'),
(346, '2021-07-10 16:32:36', 'a:2:{i:1;s:8:\"0.144000\";i:2;s:8:\"0.083200\";}', 'a:5:{i:1;s:1:\"1\";i:2;s:1:\"6\";i:3;s:1:\"4\";i:10;s:1:\"1\";i:13;s:1:\"6\";}', 1, '0.144000'),
(347, '2021-07-10 16:44:02', 'a:1:{i:1;s:8:\"0.200000\";}', 'a:1:{i:1;s:1:\"1\";}', 1, '0.200000'),
(348, '2021-07-10 16:44:09', 'a:1:{i:1;s:8:\"0.160000\";}', 'a:1:{i:1;s:1:\"2\";}', 1, '0.160000'),
(349, '2021-07-10 16:44:16', 'a:1:{i:1;s:8:\"0.120000\";}', 'a:1:{i:1;s:1:\"3\";}', 1, '0.120000'),
(350, '2021-07-10 16:44:27', 'a:1:{i:1;s:8:\"0.080000\";}', 'a:1:{i:1;s:1:\"4\";}', 1, '0.080000'),
(351, '2021-07-10 16:44:33', 'a:1:{i:1;s:8:\"0.040000\";}', 'a:1:{i:1;s:1:\"5\";}', 1, '0.040000'),
(352, '2021-07-10 16:44:40', 'a:0:{}', 'a:1:{i:1;s:1:\"6\";}', 0, ''),
(353, '2021-07-10 16:45:07', 'a:2:{i:2;s:8:\"0.750400\";i:1;s:8:\"0.505408\";}', 'a:4:{i:1;s:1:\"6\";i:2;s:1:\"3\";i:3;s:1:\"1\";i:4;s:1:\"5\";}', 2, '0.750400'),
(354, '2021-07-10 16:55:59', 'a:2:{i:2;s:8:\"0.712960\";i:1;s:8:\"0.638733\";}', 'a:4:{i:1;s:1:\"1\";i:2;s:1:\"3\";i:3;s:1:\"2\";i:4;s:1:\"4\";}', 2, '0.712960'),
(355, '2021-07-10 17:05:02', 'a:2:{i:2;s:8:\"0.472000\";i:1;s:8:\"0.424000\";}', 'a:4:{i:1;s:1:\"6\";i:2;s:1:\"6\";i:3;s:1:\"1\";i:4;s:1:\"1\";}', 2, '0.472000'),
(356, '2021-07-10 17:12:58', 'a:0:{}', 'a:4:{i:1;s:1:\"6\";i:2;s:1:\"6\";i:3;s:1:\"6\";i:4;s:1:\"6\";}', 0, ''),
(357, '2021-07-10 17:13:05', 'a:1:{i:1;s:8:\"0.211008\";}', 'a:4:{i:1;s:1:\"6\";i:2;s:1:\"6\";i:3;s:1:\"6\";i:4;s:1:\"1\";}', 1, '0.211008'),
(358, '2021-07-10 17:22:43', 'a:1:{i:1;s:6:\"0.2110\";}', 'a:4:{i:1;s:1:\"6\";i:2;s:1:\"6\";i:3;s:1:\"6\";i:4;s:1:\"1\";}', 1, '0.2110'),
(359, '2021-07-10 17:22:56', 'a:1:{i:1;s:6:\"0.0800\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"6\";}', 1, '0.0800'),
(360, '2021-07-10 17:23:43', 'a:1:{i:1;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 1, '0.2000'),
(361, '2021-07-10 17:27:07', 'a:1:{i:1;s:6:\"0.2000\";}', 'a:1:{i:1;s:1:\"1\";}', 1, '0.2000'),
(362, '2021-07-10 17:27:19', 'a:2:{i:1;s:6:\"0.2960\";i:2;s:6:\"0.1600\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"5\";}', 1, '0.2960'),
(363, '2021-07-10 17:27:31', 'a:1:{i:1;s:6:\"0.0800\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"6\";}', 1, '0.0800'),
(364, '2021-07-10 17:28:08', 'a:1:{i:1;s:6:\"0.0800\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"6\";}', 1, '0.0800'),
(365, '2021-07-10 17:30:13', 'a:1:{i:1;s:6:\"0.2000\";}', 'a:2:{i:1;s:1:\"1\";i:2;s:1:\"6\";}', 1, '0.2000'),
(366, '2021-07-10 17:30:46', 'a:1:{i:2;s:6:\"0.3000\";}', 'a:3:{i:11;s:1:\"6\";i:12;s:1:\"1\";i:13;s:1:\"6\";}', 2, '0.3000'),
(367, '2021-07-10 17:32:12', 'a:1:{i:2;s:6:\"0.3000\";}', 'a:5:{i:1;s:1:\"6\";i:2;s:1:\"6\";i:4;s:1:\"6\";i:8;s:1:\"6\";i:12;s:1:\"1\";}', 2, '0.3000'),
(368, '2021-07-10 17:32:34', 'a:1:{i:2;s:9:\"0.3000000\";}', 'a:5:{i:1;s:1:\"6\";i:2;s:1:\"6\";i:4;s:1:\"6\";i:8;s:1:\"6\";i:12;s:1:\"1\";}', 2, '0.3000000');

-- --------------------------------------------------------

--
-- Table structure for table `kondisi`
--

CREATE TABLE `kondisi` (
  `id` int(11) NOT NULL,
  `kondisi` varchar(64) NOT NULL,
  `ket` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kondisi`
--

INSERT INTO `kondisi` (`id`, `kondisi`, `ket`) VALUES
(1, 'Ya', ''),
(2, 'hampir pasti ', ''),
(3, 'kemungkinan besar ', ''),
(4, 'mungkin ', ''),
(5, 'hampir mungkin ', ''),
(6, 'tidak ', '');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` int(11) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `det_penyakit` varchar(500) NOT NULL,
  `srn_penyakit` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `det_penyakit`, `srn_penyakit`, `gambar`) VALUES
(1, 'Diabetes Melitus Tipe 1', 'Diabetes tipe 1 atau diabetes ketergantungan insulin adalah suatu penyakit jangka panjang yang terjadi ketika pankreas tidak dapat memproduksi cukup insulin bagi tubuh. Insulin sangat dibutuhkan tubuh untuk mengontrol glukosa (gula) dalam sel yang didapat dari darah. ', 'Beberapa pengobatan yang diberikan dokter, antara lain ialah Insulin untuk mengontrol glukosa darah pengidap. Pemberian insulin ini dengan cara disuntikkan pada lapisan di bawah kulit sekitar 3-4 kali sehari sesuai dosis yang dianjurkan dokter.\r\nPola makan sehat dan olahraga teratur untuk membantu mengontrol tingkat glukosa darah.\r\nMerawat kaki dan memeriksakan mata secara berkala untuk mencegah komplikasi lebih lanjut.', '01 Diabetes Melitus Tipe 1.jpg'),
(2, 'Diabetes Melitus Tipe 2', 'Diabetes tipe 2, atau yang juga disebut diabetes melitus tidak tergantung insulin, adalah penyakit jangka panjang yang terjadi ketika tubuh tidak secara efektif menggunakan insulin. Pengidap diabetes tipe 2 memiliki kadar glukosa (gula) darah di atas normal akibat tubuh tidak efektif menggunakan insulin atau kekurangan insulin yang relatif dibandingkan kadar glukosa darah.', 'Pemberian obat-obatan diabetes di bawah pengawasan dokter. Obat-obatan tersebut, antara lain, Metformin ,Sulfonilurea ,Pioglitazone, Gliptin,\r\ndan Agonis. \r\n', '02 Diabetes Mellitus Tipe 2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `kode_post` int(11) NOT NULL,
  `nama_post` varchar(50) NOT NULL,
  `det_post` varchar(15000) NOT NULL,
  `srn_post` varchar(15000) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`kode_post`, `nama_post`, `det_post`, `srn_post`, `gambar`) VALUES
(14, 'Diabetes Melitus Tipe 1', '<p><strong>Deskripsi</strong></p>\r\n\r\n<p>Diabetes tipe 1 atau diabetes ketergantungan insulin adalah suatu penyakit jangka panjang yang terjadi ketika pankreas tidak dapat memproduksi cukup insulin bagi tubuh. Insulin sangat dibutuhkan tubuh untuk mengontrol glukosa (gula) dalam sel yang didapat dari darah. Pada pengidap diabetes, glukosa yang terdapat dalam darah tidak dapat diserap oleh sel-sel tubuh, sehingga menyebabkan berbagai gejala dan komplikasi.</p>\r\n\r\n<p><strong>Faktor Risiko Diabetes Tipe 1</strong></p>\r\n\r\n<p>Beberapa faktor risiko terjadinya diabetes tipe 1, antara lain:</p>\r\n\r\n<ul>\r\n	<li>Faktor riwayat keluarga atau keturunan, yaitu saat seseorang akan lebih memiliki risiko terkena diabetes tipe 1 jika ada anggota keluarga yang mengidap penyakit yang sama, karena berhubungan dengan gen tertentu.</li>\r\n	<li>Faktor geografi. Orang yang tinggal di daerah yang jauh dari garis khatulistiwa, seperti di Finlandia dan Sardinia, paling banyak terkena diabetes tipe 1. Hal ini disebabkan karena kurangnya vitamin D yang bisa didapatkan dari sinar matahari, sehingga akhirnya memicu penyakit autoimun.</li>\r\n	<li>Faktor usia. Penyakit ini paling banyak terdeteksi pada anak-anak usia 4-7 tahun, kemudian pada anak-anak usia 10-14 tahun.</li>\r\n	<li>Faktor pemicu lainnya, seperti mengonsumsi susu sapi pada usia terlalu dini, air yang mengandung natrium nitrat, sereal dan gluten sebelum usia 4 bulan atau setelah 7 bulan, memiliki ibu dengan riwayat preeklampsia, serta mengidap penyakit kuning saat lahir.</li>\r\n</ul>\r\n\r\n<p><strong>Penyebab Diabetes Tipe 1</strong></p>\r\n\r\n<p>Penyebab diabetes tipe 1 adalah ketidakmampuan pankreas untuk memproduksi cukup insulin, sehingga glukosa di dalam darah tidak dapat masuk ke dalam sel. Gangguan pada pankreas ini diduga karena proses autoimun, yaitu ketika sistem kekebalan tubuh seseorang menyerang sel-sel tubuh yang sehat. Pada diabetes tipe 1, sistem kekebalan tubuh tersebut menyerang dan merusak sel beta pada pankreas, sehingga tidak dapat memproduksi cukup insulin. Beberapa hal yang bisa menjadi penyebab kerusakan sel beta pankreas, antara lain infeksi virus (enterovirus, virus Epstein-Barr, virus rubella, rotavirus, serta virus gondongan), konsumsi obat-obatan tertentu (<em>pyrinuron</em>&nbsp;dan&nbsp;<em>strepzotocin</em>), serta pengaruh gluten.</p>\r\n\r\n<p><strong>Gejala Diabetes Tipe 1</strong></p>\r\n\r\n<p>Beberapa gejala dari diabetes tipe 1, antara lain:</p>\r\n\r\n<ul>\r\n	<li>Sering buang air kecil, terutama pada malam hari (<em>polyuria</em>).</li>\r\n	<li>Sering haus (<em>polydipsia</em>).</li>\r\n	<li>Sering merasa lapar (<em>polyphagia</em>).</li>\r\n	<li>Berat badan turun.</li>\r\n	<li>Pandangan kabur.</li>\r\n	<li>Kelelahan.</li>\r\n	<li>Mudah diserang penyakit infeksi.</li>\r\n	<li>Luka yang lama sembuh.</li>\r\n	<li>Merasa kaku atau kesemutan pada kaki.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n</ul>\r\n\r\n<ul>\r\n</ul>\r\n', '<p><strong>Pencegahan Diabetes Tipe 1</strong></p>\r\n\r\n<p>Upaya pencegahan pada diabetes tipe 1, antara lain:</p>\r\n\r\n<ul>\r\n	<li>Menjalani pengobatan intensif jika terdapat anggota keluarga yang mengidap diabetes tipe 1.</li>\r\n	<li>Menjalani tes DNA untuk mengetahui adanya gen pembawa atau penyakit diabetes tipe 1.</li>\r\n</ul>\r\n\r\n<p><strong>Pengobatan Diabetes Tipe 1</strong></p>\r\n\r\n<p>Diabetes tidak bisa disembuhkan. Pengobatan yang dilakukan bertujuan untuk menjaga keseimbangan kadar glukosa darah dan mengendalikan gejala. Selain itu, pengobatan juga dilakukan untuk mencegah komplikasi yang dapat terjadi di kemudian hari. Beberapa pengobatan yang diberikan dokter, antara lain:</p>\r\n\r\n<ul>\r\n	<li>Insulin untuk mengontrol glukosa darah pengidap. Pemberian insulin ini dengan cara disuntikkan pada lapisan di bawah kulit sekitar 3-4 kali sehari sesuai dosis yang dianjurkan dokter.</li>\r\n	<li>Pola makan sehat dan olahraga teratur untuk membantu mengontrol tingkat glukosa darah.</li>\r\n	<li>Merawat kaki dan memeriksakan mata secara berkala untuk mencegah komplikasi lebih lanjut.</li>\r\n</ul>\r\n', '01 Diabetes Melitus Tipe 1.jpg'),
(15, 'Diabetes Melitus Tipe 2', '<p><strong>Deskripsi</strong></p>\r\n\r\n<p>Diabetes tipe 2, atau yang juga disebut diabetes melitus tidak tergantung insulin, adalah penyakit jangka panjang yang terjadi ketika tubuh tidak secara efektif menggunakan insulin. Pengidap diabetes tipe 2 memiliki kadar glukosa (gula) darah di atas normal akibat tubuh tidak efektif menggunakan insulin atau kekurangan insulin yang relatif dibandingkan kadar glukosa darah.</p>\r\n\r\n<p><strong>Faktor Risiko Diabetes Tipe 2</strong></p>\r\n\r\n<p>Beberapa faktor risiko diabetes tipe 2, antara lain:</p>\r\n\r\n<ul>\r\n	<li>Memiliki berat badan berlebih atau obesitas.</li>\r\n	<li>Distribusi lemak perut yang tinggi.</li>\r\n	<li>Gaya hidup tidak aktif dan jarang beraktivitas atau berolahraga.</li>\r\n	<li>Riwayat penyakit diabetes tipe 2 dalam keluarga.</li>\r\n	<li>Ras kulit hitam, Hispanik, Pribumi Amerika, dan Asia-Amerika, memiliki angka pengidap lebih tinggi dibandingkan dengan ras kulit putih.</li>\r\n	<li>Usia di atas 45 tahun, walaupun tidak menutup kemungkinan dapat terjadi sebelum usia 45 tahun.</li>\r\n	<li>Kondisi prediabetes, yaitu ketika kadar gula darah lebih tinggi dari normal, tapi tidak cukup tinggi untuk diklasifikasikan sebagai diabetes.</li>\r\n	<li>Riwayat diabetes saat hamil.</li>\r\n	<li>Wanita dengan sindrom ovarium polikistik, yang ditandai dengan menstruasi tidak teratur, pertumbuhan rambut berlebihan, dan obesitas.</li>\r\n</ul>\r\n\r\n<p><strong>Penyebab Diabetes Tipe 2</strong></p>\r\n\r\n<p>Organ pankreas di dalam tubuh memproduksi sebuah hormon bernama insulin yang berperan dalam mengendalikan kadar gula dalam darah.Insulin berfungsi untung memindahkan glukosa dari darah ke dalam sel-sel tubuh untuk diubah menjadi energi. Pada pengidap diabetes tipe 2, yang terjadi adalah:</p>\r\n\r\n<ul>\r\n	<li>Tubuh pengidap tidak memproduksi insulin dalam jumlah yang cukup untuk mengontrol kadar glukosa darah agar tetap dalam batas normal.</li>\r\n	<li>Tubuh pengidap memproduksi insulin yang cukup, tapi sel-sel tubuh tidak menggunakannya dengan baik sebagaimana mestinya. Kondisi ini dinamakan resistensi insulin. Orang yang mengalami obesitas berisiko mengalami resistensi insulin, karena banyaknya kadar lemak dalam tubuh bisa membuat tubuh kesulitan menggunakan insulin dengan benar. Selain itu, keturunan atau riwayat keluarga dengan diabetes tipe 2 juga dapat meningkatkan seseorang untuk mengidap penyakit yang sama.</li>\r\n</ul>\r\n\r\n<p><strong>Gejala Diabetes Tipe 2</strong></p>\r\n\r\n<p>Beberapa gejala dari diabetes tipe 2, antara lain:</p>\r\n\r\n<ul>\r\n	<li>Sering buang air kecil, terutama saat malam hari.</li>\r\n	<li>Sering merasa haus.</li>\r\n	<li>Sering merasa lapar.</li>\r\n	<li>Berat badan turun.</li>\r\n	<li>Luka yang sulit sembuh.</li>\r\n	<li>Mudah terserang infeksi.</li>\r\n	<li>Kulit gatal.</li>\r\n	<li>Pandangan kabur.</li>\r\n	<li>Kelelahan.</li>\r\n	<li>Nyeri atau mati rasa pada kaki dan tangan.</li>\r\n	<li>Kesemutan.</li>\r\n	<li>Gatal di kemaluan pada wanita.</li>\r\n	<li>Gangguan ereksi pada pria.</li>\r\n</ul>\r\n\r\n<p><strong>Komplikasi Diabetes Tipe 2</strong></p>\r\n\r\n<p>Beberapa komplikasi diabetes tipe 2, antara lain:</p>\r\n\r\n<ul>\r\n	<li>Penyakit kardiovaskular.</li>\r\n	<li>Kerusakan saraf (neuropati).</li>\r\n	<li>Kerusakan pada kaki.</li>\r\n	<li>Kerusakan mata.</li>\r\n	<li>Kerusakan ginjal.</li>\r\n	<li>Gangguan kulit.</li>\r\n	<li>Disfungsi seksual pada pria.</li>\r\n	<li>Keguguran atau kelahiran mati.</li>\r\n</ul>\r\n', '<p><strong>Pencegahan Diabetes Tipe 2</strong></p>\r\n\r\n<p>Beberapa upaya untuk mencegah diabetes tipe 2, antara lain:</p>\r\n\r\n<ul>\r\n	<li>Mempertahankan berat badan ideal dengan mengonsumsi makanan rendah lemak.</li>\r\n	<li>Mengonsumsi makanan tinggi serat seperti buah dan sayur.</li>\r\n	<li>Mengurangi konsumsi makanan dan minuman manis.</li>\r\n	<li>Berolahraga secara rutin dan banyak melakukan aktivitas fisik.</li>\r\n	<li>Mengurangi waktu duduk diam terlalu lama, seperti ketika menonton televisi.</li>\r\n	<li>Menghindari atau berhenti merokok.</li>\r\n</ul>\r\n\r\n<p><strong>Pengobatan Diabetes Tipe 2</strong></p>\r\n\r\n<p>Hingga saat ini, diabetes tipe 2 tidak dapat disembuhkan. Perubahan pola hidup serta pemberian obat bertujuan untuk mengontrol kadar glukosa darah agar dapat normal dan stabil, serta mencegah komplikasi lebih lanjut.</p>\r\n\r\n<p>Perubahan pola hidup sehat yang bisa dilakukan, antara lain:</p>\r\n\r\n<ul>\r\n	<li>Menghindari makanan berkadar glukosa tinggi atau berlemak tinggi.</li>\r\n	<li>Meningkatkan makanan tinggi serat.</li>\r\n	<li>Melakukan olaraga secara teratur, minimal 3 jam dalam satu minggu.</li>\r\n	<li>Menurunkan dan menjaga berat badan tetap ideal.</li>\r\n	<li>Menghindari atau berhenti merokok.</li>\r\n	<li>Menghindari atau berhenti mengonsumsi minuman beralkohol.</li>\r\n	<li>Menjaga kesehatan kaki dan mencegah kaki terluka.</li>\r\n	<li>Memeriksa kondisi kesehatan mata secara rutin.</li>\r\n</ul>\r\n\r\n<p>Pemberian obat-obatan diabetes di bawah pengawasan dokter. Obat-obatan tersebut, antara lain:</p>\r\n\r\n<ul>\r\n	<li>Metformin untuk mengurangi kadar glukosa darah.</li>\r\n	<li>Sulfonilurea untuk meningkatkan produksi insulin dalam pankreas.</li>\r\n	<li>Pioglitazone sebagai pemicu insulin.</li>\r\n	<li>Gliptin (penghambat DPP-4 ) untuk mencegah pemecahan GLP-1.</li>\r\n	<li>Penghambat SGLT-2 yang berdampak pada urine.</li>\r\n	<li>Agonis GLP-1 untuk memicu produksi insulin tanpa risiko hipoglikemia.</li>\r\n	<li>Acarbose untuk memperlambat pencernaan karbohidrat.</li>\r\n	<li>Nateglinide dan repaglinide yang bermanfaat untuk melepas insulin ke aliran darah.</li>\r\n	<li>Terapi insulin sebagai pendamping obat-obatan lain.</li>\r\n	<li>Obat-obatan lain yang diberikan untuk mengurangi risiko komplikasi, seperti statin dan obat anti hipertensi.</li>\r\n</ul>\r\n', '02 Diabetes Mellitus Tipe 2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  ADD PRIMARY KEY (`kode_pengetahuan`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`kode_post`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basis_pengetahuan`
--
ALTER TABLE `basis_pengetahuan`
  MODIFY `kode_pengetahuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `kode_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT for table `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `kode_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `kode_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2021 at 06:21 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kerajinan`
--
CREATE DATABASE IF NOT EXISTS `kerajinan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kerajinan`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'malasngoding', 'malasngoding@gmail.com', 'malas'),
(2, 'farhan', 'farhanade40@gmail.com', '123'),
(3, 'admin', '122201902766@mhs.dinus.ac.id', '123'),
(4, 'a221902766', 'farhanade40@gmail.com', '123'),
(5, 'malasngoding', 'farhanade40@gmail.com', '123'),
(6, 'malasngoding', 'farhanade40@gmail.com', '123'),
(7, 'farhan', 'farhanade40@gmail.com', '123'),
(8, 'malasngoding', 'farhanade40@gmail.com', '123'),
(9, 'malasngoding', 'farhanade40@gmail.com', '123'),
(10, 'malasngoding', 'farhanade40@gmail.com', '123'),
(11, 'yusupasu', 'yusup@gmail.com', '123'),
(12, 'ade', 'ade@gmail.com', '123'),
(13, 'malasngoding', 'farhanade40@gmail.com', '1234'),
(14, 'gagag', 'gagag@gmail.com', '12345'),
(15, 'farhan', 'farhanade40@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konfigurasi`
--

CREATE TABLE IF NOT EXISTS `tbl_konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_website` varchar(225) NOT NULL,
  `logo` varchar(225) NOT NULL,
  `favicon` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `facebook` varchar(225) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `keywords` varchar(225) NOT NULL,
  `metatext` varchar(225) NOT NULL,
  `about` text NOT NULL,
  PRIMARY KEY (`id_konfigurasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_konfigurasi`
--

INSERT INTO `tbl_konfigurasi` (`id_konfigurasi`, `nama_website`, `logo`, `favicon`, `email`, `no_telp`, `alamat`, `facebook`, `instagram`, `keywords`, `metatext`, `about`) VALUES
(1, 'SUSANTOKUN', 'member.png', 'admin.png', 'admin@susantokun.com', '081906515912', 'KOMPLEK BTN Munjul No.12A 02/06, Sukaresmi, Cianjur, Jawa Barat, Indonesia (43253)', 'https://facebook.com/susantokundotcom', 'https://instagram.com/susantokun', 'info-susantokun, demo-susantokun, susantokun', 'Situs Edukasi, Tips dan Tutorial', 'Susantokun adalah situs edukasi seperti pelajaran dan ilmu pengetahuan, serta membahas tentang tips, tutorial, teknologi, tugas-tugas hingga berita terkini.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE IF NOT EXISTS `tbl_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`, `description`) VALUES
(1, 'Administrator', 'Hak akses Administrator'),
(2, 'Member', 'Hak akses Member');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_role` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `password_reset_key` varchar(100) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `id_role`, `username`, `password`, `password_reset_key`, `first_name`, `last_name`, `email`, `phone`, `photo`, `activated`, `last_login`, `created_at`, `updated_at`) VALUES
(3, 2, 'malasngoding', '123', NULL, '', '', 'farhanade40@gmail.com', '', '', 0, NULL, '2021-04-02 23:19:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_order`
--

CREATE TABLE IF NOT EXISTS `tb_detail_order` (
  `id_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `pembelian` int(11) NOT NULL,
  PRIMARY KEY (`id_detail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tb_detail_order`
--

INSERT INTO `tb_detail_order` (`id_detail`, `id_order`, `id_produk`, `pembelian`) VALUES
(1, 44, 1, 2),
(2, 44, 2, 2),
(3, 45, 1, 1),
(4, 45, 2, 3),
(5, 46, 1, 2),
(6, 46, 2, 3),
(7, 46, 3, 1),
(8, 47, 1, 2),
(9, 48, 1, 2),
(10, 48, 2, 2),
(11, 49, 1, 1),
(12, 50, 1, 1),
(13, 51, 2, 1),
(14, 52, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_order`
--

CREATE TABLE IF NOT EXISTS `tb_order` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `total_item` int(11) NOT NULL,
  `total_bayar` float NOT NULL,
  `tgl_transaksi` date NOT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `tb_order`
--

INSERT INTO `tb_order` (`id_order`, `total_item`, `total_bayar`, `tgl_transaksi`) VALUES
(44, 4, 600000, '2020-05-17'),
(45, 4, 700000, '2020-05-19'),
(46, 6, 1100000, '2020-05-19'),
(47, 2, 200000, '2021-04-07'),
(48, 4, 600000, '2021-04-08'),
(49, 1, 100000, '2021-04-14'),
(50, 1, 100000, '2021-04-14'),
(51, 1, 200000, '2021-04-14'),
(52, 2, 200000, '2021-04-14'),
(53, 1, 200000, '2021-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE IF NOT EXISTS `tb_produk` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gambar` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` float NOT NULL,
  `stok` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id`, `gambar`, `nama_produk`, `harga`, `stok`) VALUES
(1, 'tasrotan.jpg', 'Tas Rotan', 75000, 10),
(2, 'piringhias.jpg', 'Piring Hias', 55000, 15),
(3, 'patung.jpg', 'Patung', 90000, 8),
(4, 'kerajinanbatok.jpg', 'Kerajinan Batok', 40000, 12);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

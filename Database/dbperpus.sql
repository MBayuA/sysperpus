-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 15, 2018 at 04:22 
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbuku`
--

CREATE TABLE `tblbuku` (
  `id` int(11) NOT NULL,
  `kode` char(6) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `jumlah` char(5) NOT NULL,
  `jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbuku`
--

INSERT INTO `tblbuku` (`id`, `kode`, `judul`, `penerbit`, `jumlah`, `jenis`) VALUES
(1, 'PMG001', 'Membuat Aplikasi Bernilai Jutaan Rupiah dengan VB.NET', 'Elex Media Komputindo', '10', 'Pemrograman'),
(2, 'NVL001', 'Paranoid', 'Bukune', '12', 'Novel'),
(3, 'KMK001', '#BeraniBeda - Juki untuk Indonesia Satu', 'Bukune', '23', 'Komik'),
(5, 'PMG002', 'Mahir dalam C#', 'Gramedia', '21', 'Pemrograman'),
(6, 'NVL002', 'Psycopath Diary', 'Gramedia', '13', 'Novel'),
(7, 'PMG003', 'Kuasai bahasa pemrograman PHP satu minggu!', 'Elex Media Komputindo', '23', 'Pemrograman'),
(8, 'PLJ001', 'Sejarah Indonesia kelas XI Kurikulum 2013', 'Erlangga', '40', 'Pelajaran'),
(9, 'PLJ002', 'Matematika Kelas X Kurikulum 2013', 'Yudhistira', '50', 'Pelajaran'),
(10, 'KMK002', 'The Pitcher VOL,1', 'Elex Media Komputindo', '5', 'Komik'),
(11, 'KMK003', 'The Pitcher VOL.2', 'Elex Media Komputindo', '3', 'Komik'),
(12, 'PLJ003', 'Fisika Kelas X Kurikulum 2013', 'Yudhistira', '48', 'Pelajaran');

-- --------------------------------------------------------

--
-- Table structure for table `tblpesan`
--

CREATE TABLE `tblpesan` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `pengirim` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `penerima` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpinjam`
--

CREATE TABLE `tblpinjam` (
  `id` int(11) NOT NULL,
  `kode` char(6) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('Dibaca','Pending','Diterima') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpinjam`
--

INSERT INTO `tblpinjam` (`id`, `kode`, `judul`, `nama`, `tanggal`, `status`) VALUES
(1, 'KMK001', '#BeraniBeda - Juki untuk Indonesia Satu', 'Jane Doe', '2018-03-20', 'Diterima'),
(2, 'NVL001', 'Paranoid', 'Jane Doe', '2018-03-20', 'Diterima'),
(3, 'PMG002', 'Mahir dalam C#', 'Jane Doe', '2018-03-20', 'Diterima'),
(4, 'KMK002', 'The Pitcher VOL,1', 'Melody Nurramdhani Laksani', '2018-03-20', 'Dibaca'),
(5, 'KMK003', 'The Pitcher VOL.2', 'Melody Nurramdhani Laksani', '2018-03-20', 'Dibaca'),
(6, 'NVL002', 'Psycopath Diary', 'Melody Nurramdhani Laksani', '2018-03-20', 'Diterima'),
(7, 'NVL001', 'Paranoid', 'Melody Nurramdhani Laksani', '2018-03-20', 'Dibaca');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequestkembali`
--

CREATE TABLE `tblrequestkembali` (
  `id` int(11) NOT NULL,
  `kode` char(6) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggalpinjam` date NOT NULL,
  `tanggalkembalikan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` char(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `lvl` enum('Admin','User') NOT NULL,
  `pict` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `status` enum('Active','Pending') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `nama`, `username`, `password`, `email`, `lvl`, `pict`, `jenis_kelamin`, `status`) VALUES
(1, 'Dimas Firmansyah', 'dimasfirmansyah', '$2y$10$oP5yDtukF2WJB4UVFvH8jOgqW6/mfXthy6dceoQvler1admg5wrVe', 'd9firmansyah@gmail.com', 'Admin', '5ab0ead693ab3.jpg', 'Laki-Laki', 'Active'),
(4, 'Melody Nurramdhani Laksani', 'melodynl48', '$2y$10$t/7JUGYChkAX.AmJhybw..XE0KqjJR/u1FWRiaQaZOtfNSIWR5bbi', 'melody@jkt48.com', 'User', '5ab1068c7e689.jpg', 'Perempuan', 'Active'),
(5, 'Sinka Juliani', 'sinkadudut', '$2y$10$EqDQat6ruqOq7f4EaD8DxOM2gR8Xj/Fiyew0qo4M0wcO1m938Pf/2', 'sinka@jkt48.com', 'Admin', '5ab1205bbdb3d.jpg', 'Perempuan', 'Active'),
(6, 'John Doe', 'johndoe', '$2y$10$wvXiIwS7c2f5Abah9quA/uqVkquE2K2ORt63UA6xswJTYsMxbv6dK', 'john@doe.com', 'User', 'default.png', 'Laki-Laki', 'Active'),
(7, 'Jane Doe', 'janedoe', '$2y$10$kPNBWLkLULDJeXiKgqNPBeq/lqB5mENBbKIgPbxjQzkwk4IAGKuCW', 'jane@doe.com', 'User', 'defaultwoman.png', 'Perempuan', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbuku`
--
ALTER TABLE `tblbuku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indexes for table `tblpesan`
--
ALTER TABLE `tblpesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpinjam`
--
ALTER TABLE `tblpinjam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrequestkembali`
--
ALTER TABLE `tblrequestkembali`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbuku`
--
ALTER TABLE `tblbuku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblpesan`
--
ALTER TABLE `tblpesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblpinjam`
--
ALTER TABLE `tblpinjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblrequestkembali`
--
ALTER TABLE `tblrequestkembali`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

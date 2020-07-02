-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 10:16 AM
-- Server version: 10.1.37-MariaDB
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
-- Database: `siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `hapus_mahasiswa`
--

CREATE TABLE `hapus_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` int(3) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tanggal_hapus` date NOT NULL,
  `user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hapus_mahasiswa`
--

INSERT INTO `hapus_mahasiswa` (`id`, `nama`, `umur`, `tanggal_lahir`, `jenis_kelamin`, `tanggal_hapus`, `user`) VALUES
(16, 'Coba Trigger', 20, '1999-01-01', 'Lelaki', '2020-05-08', 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` int(3) NOT NULL,
  `tanggal_lahir` datetime DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `umur`, `tanggal_lahir`, `jenis_kelamin`) VALUES
(1, 'Priyo Sigit Pamungkas', 19, '2000-09-12 00:00:00', 'Lelaki'),
(2, 'Amman Fathoni', 20, '1999-06-12 00:00:00', 'Lelaki'),
(3, 'Adib Assegaf', 20, '2000-03-17 00:00:00', 'Lelaki'),
(4, 'Erik Priambodo', 20, '2000-03-20 00:00:00', 'Lelaki'),
(5, 'Timorandi Wisnu P', 23, '1997-04-03 00:00:00', 'Lelaki'),
(6, 'Heru Prasetyo', 21, '1999-02-03 00:00:00', 'Lelaki'),
(7, 'Arvita Listya', 20, '2000-04-13 00:00:00', 'Perempuan'),
(8, 'Meillisa Rahayu', 20, '2000-05-03 00:00:00', 'Perempuan'),
(9, 'Rifai Rejal', 20, '2000-06-01 00:00:00', 'Lelaki'),
(10, 'Onky Happy N', 21, '1999-01-03 00:00:00', 'Lelaki'),
(11, 'Azizul Ramadhan', 21, '1999-02-02 00:00:00', 'Lelaki'),
(12, 'Muhammad Arif', 21, '1999-02-03 00:00:00', 'Lelaki'),
(13, 'Juan Frido', 22, '1998-04-03 00:00:00', 'Lelaki'),
(14, 'Indana Rishi', 21, '1999-01-03 00:00:00', 'Lelaki'),
(15, 'Bachtiar Nur Yogi', 20, '2000-04-10 00:00:00', 'Lelaki');

--
-- Triggers `mahasiswa`
--
DELIMITER $$
CREATE TRIGGER `hapus_mahasiswa` AFTER DELETE ON `mahasiswa` FOR EACH ROW BEGIN
INSERT INTO hapus_mahasiswa (id, nama, umur, tanggal_lahir, jenis_kelamin, tanggal_hapus, user) VALUES (old.id, old.nama, old.umur, old.tanggal_lahir, old.jenis_kelamin, sysdate(), CURRENT_USER);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jenis_kelamin`, `telp`, `alamat`) VALUES
('A221802711', 'Priyo Sigit Pamungkas', 'Laki-laki', '08199288272', 'Kendal'),
('A221802712', 'Sinta Widhi Kurniawati', 'Perempuan', '089228827727', 'Kendal'),
('A221802713', 'Erik Priambodo', 'Laki-laki', '08561777166', 'Tembalang'),
('A221802714', 'Farid Firdausi', 'Laki-laki', '089283773622', 'Kendal'),
('A221802715', 'Heri Setyawan', 'Laki-laki', '081552171888', 'Ungaran'),
('A221802716', 'Teguh Rahayu Widodo', 'Laki-laki', '089918826535', 'Gunungpati'),
('A221802717', 'Arvita Listya', 'Perempuan', '082635534778', 'Gunungpati'),
('A221802718', 'Azka Fikral Adiba', 'Perempuan', '085516616611', 'Kendal'),
('A221802719', 'Salsabila Wijaya', 'Perempuan', '089188172515', 'Ngaliyan'),
('A221802720', 'Rahma Nisa', 'Perempuan', '088726166122', 'Yogyakarta'),
('A221802721', 'Yoga Prasetya', 'Laki-laki', '081172652441', 'Kendal'),
('A221802722', 'Kawal Mahesa Rasyid', 'Laki-laki', '089166255151', 'Ngaliyan'),
('A221802723', 'Bachtiar Nur Yogi', 'Laki-laki', '089928827151', 'Pemalang'),
('A221802724', 'Syifafauziah', 'Perempuan', '085661557281', 'Ungaran'),
('A221802725', 'Fahmi Ihza Nugraha', 'Laki-laki', '089918827635', 'Mijen'),
('A221802726', 'Amman Fathoni', 'Laki-laki', '089988181717', 'Pemalang'),
('A221802727', 'Candraningtyas Islamintari', 'Perempuan', '082661551551', 'Ngaliyan'),
('A221802728', 'Adib Assegaf', 'Laki-laki', '081662662771', 'Purwodadi'),
('A221802729', 'Priska Maulidina', 'Perempuan', '0828817717', 'Gunungpati'),
('A221802730', 'Sri Mulyaningsih', 'Perempuan', '08552662771', 'Ungaran');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hapus_mahasiswa`
--
ALTER TABLE `hapus_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

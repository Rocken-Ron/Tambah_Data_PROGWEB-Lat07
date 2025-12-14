-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2025 at 05:50 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siamu`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nik` char(7) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nik`, `nama`) VALUES
('D000001', 'Budi Santoso'),
('D000002', 'Siti Rahma'),
('D000003', 'Andi Pratama'),
('D000004', 'Rina Kusuma'),
('D000005', 'Tono Wirawan'),
('D000006', 'Lilis Hapsari'),
('D000007', 'Agus Widodo'),
('D000008', 'Nina Kartika'),
('D000009', 'Joko Purbo'),
('D000010', 'Maria Fransisca');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `hari` enum('senin','selasa','rabu','kamis','jumat') NOT NULL,
  `waktu` enum('07.30 - 10.20','10.30 - 13.20','13.30 - 16.20','16.30 - 19.20') NOT NULL,
  `kode_mk` char(6) NOT NULL,
  `nik` char(10) NOT NULL,
  `kode_ruang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `hari`, `waktu`, `kode_mk`, `nik`, `kode_ruang`) VALUES
(81, 'jumat', '13.30 - 16.20', 'MK009', 'D000009', 109),
(82, 'jumat', '10.30 - 13.20', 'MK008', 'D000008', 108),
(83, 'jumat', '07.30 - 10.20', 'MK007', 'D000007', 107),
(85, 'kamis', '13.30 - 16.20', 'MK005', 'D000005', 105),
(86, 'kamis', '10.30 - 13.20', 'MK004', 'D000004', 104),
(87, 'kamis', '07.30 - 10.20', 'MK003', 'D000003', 103),
(89, 'rabu', '13.30 - 16.20', 'MK001', 'D000001', 101),
(90, 'rabu', '10.30 - 13.20', 'MK010', 'D000010', 110),
(91, 'rabu', '07.30 - 10.20', 'MK009', 'D000009', 109),
(93, 'selasa', '13.30 - 16.20', 'MK007', 'D000007', 107),
(94, 'selasa', '10.30 - 13.20', 'MK006', 'D000006', 106),
(95, 'selasa', '07.30 - 10.20', 'MK005', 'D000005', 105),
(97, 'senin', '13.30 - 16.20', 'MK003', 'D000003', 103),
(98, 'senin', '10.30 - 13.20', 'MK002', 'D000002', 102),
(99, 'senin', '07.30 - 10.20', 'MK001', 'D000001', 101),
(105, 'rabu', '07.30 - 10.20', 'MK005', 'D000001', 101),
(106, 'senin', '07.30 - 10.20', 'MK001', 'D000001', 101),
(108, 'senin', '07.30 - 10.20', 'MK001', 'D000001', 101);

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `no_reg` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nilai` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(8) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `password`) VALUES
('72250121', 'Andi Pratama', 'andi123'),
('72250122', 'Budi Santoso', 'budi123'),
('72250123', 'Citra Lestari', 'citra123'),
('72250124', 'Dewi Anggraini', 'dewi123'),
('72250125', 'Eko Saputra', 'eko123'),
('72250126', 'Fajar Hidayat', 'fajar123'),
('72250127', 'Gita Permata', 'gita123'),
('72250128', 'Hadi Kurniawan', 'hadi123'),
('72250129', 'Intan Maharani', 'intan123'),
('72250130', 'Joko Susilo', 'joko123');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mk` char(16) NOT NULL,
  `nama_mk` varchar(30) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mk`, `nama_mk`, `sks`) VALUES
('MK001', 'Pemrograman Dasar', 3),
('MK002', 'Basis Data', 3),
('MK003', 'Jaringan Komputer', 3),
('MK004', 'Sistem Operasi', 3),
('MK005', 'Struktur Data', 3),
('MK006', 'Analisis Algoritma', 3),
('MK007', 'Pemrograman Web', 3),
('MK008', 'Kecerdasan Buatan', 3),
('MK009', 'Rekayasa Perangkat Lunak', 3),
('MK010', 'Keamanan Informasi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `registrasi`
--

CREATE TABLE `registrasi` (
  `no_reg` int(11) NOT NULL,
  `nim` char(8) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `kode_ruang` int(11) NOT NULL,
  `nama_ruang` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`kode_ruang`, `nama_ruang`) VALUES
(101, 'Ruang A1'),
(102, 'Ruang A2'),
(103, 'Ruang B1'),
(104, 'Ruang B2'),
(105, 'Ruang C1'),
(106, 'Ruang C2'),
(107, 'Ruang D1'),
(108, 'Ruang D2'),
(109, 'Ruang E1'),
(110, 'Ruang E2');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_jadwal`
-- (See below for the actual view)
--
CREATE TABLE `view_jadwal` (
`id_jadwal` int(11)
,`hari` enum('senin','selasa','rabu','kamis','jumat')
,`waktu` enum('07.30 - 10.20','10.30 - 13.20','13.30 - 16.20','16.30 - 19.20')
,`kode_mk` char(16)
,`nama_mk` varchar(30)
,`sks` int(11)
,`kode_ruang` int(11)
,`nama_ruang` varchar(15)
,`nik` char(7)
,`nama` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `view_jadwal`
--
DROP TABLE IF EXISTS `view_jadwal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal`  AS SELECT `j`.`id_jadwal` AS `id_jadwal`, `j`.`hari` AS `hari`, `j`.`waktu` AS `waktu`, `mk`.`kode_mk` AS `kode_mk`, `mk`.`nama_mk` AS `nama_mk`, `mk`.`sks` AS `sks`, `r`.`kode_ruang` AS `kode_ruang`, `r`.`nama_ruang` AS `nama_ruang`, `d`.`nik` AS `nik`, `d`.`nama` AS `nama` FROM (((`jadwal` `j` join `mata_kuliah` `mk` on(`j`.`kode_mk` = `mk`.`kode_mk`)) join `ruang` `r` on(`j`.`kode_ruang` = `r`.`kode_ruang`)) join `dosen` `d` on(`j`.`nik` = `d`.`nik`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `kode_mk` (`kode_mk`),
  ADD KEY `nik` (`nik`),
  ADD KEY `kode_ruang` (`kode_ruang`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`),
  ADD KEY `no_reg` (`no_reg`),
  ADD KEY `krs_ibfk_2` (`id_jadwal`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD PRIMARY KEY (`no_reg`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`kode_ruang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `krs`
--
ALTER TABLE `krs`
  MODIFY `id_krs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `registrasi`
--
ALTER TABLE `registrasi`
  MODIFY `no_reg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`kode_mk`) REFERENCES `mata_kuliah` (`kode_mk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`nik`) REFERENCES `dosen` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`kode_ruang`) REFERENCES `ruang` (`kode_ruang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`no_reg`) REFERENCES `registrasi` (`no_reg`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`) ON UPDATE CASCADE;

--
-- Constraints for table `registrasi`
--
ALTER TABLE `registrasi`
  ADD CONSTRAINT `registrasi_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

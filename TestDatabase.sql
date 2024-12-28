-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 28, 2024 at 11:46 AM
-- Server version: 11.5.2-MariaDB
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TestDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `Mahasiswa`
--

CREATE TABLE `Mahasiswa` (
  `NIM` varchar(10) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `Jurusan` varchar(50) DEFAULT NULL,
  `Umur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Mahasiswa`
--

INSERT INTO `Mahasiswa` (`NIM`, `Nama`, `Alamat`, `Jurusan`, `Umur`) VALUES
('123456', 'John', 'Jl. Merdeka No. 1', 'Teknik Informatika', 21),
('234567', 'Alice', 'Jl. Gatot Subroto', 'Sistem Informasi', 23),
('345678', 'Bob', 'Jl. Sudirman No. 5', 'Teknik Informatika', 20),
('456789', 'Cindy', 'Jl. Pahlawan No. 2', 'Manajemen', 22),
('567890', 'David', 'Jl. Diponegoro No. 3', 'Teknik Elektro', 25),
('678901', 'Emily', 'Jl. Cendrawasih No. 4', 'Manajemen', 24),
('789012', 'Frank', 'Jl. Ahmad Yani No. 6', 'Teknik Informatika', 19);

-- --------------------------------------------------------

--
-- Table structure for table `MataKuliah`
--

CREATE TABLE `MataKuliah` (
  `ID` int(11) NOT NULL,
  `Mata_Kuliah` varchar(50) DEFAULT NULL,
  `NIM` varchar(10) DEFAULT NULL,
  `Nilai` int(11) DEFAULT NULL,
  `Dosen_Pengajar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `MataKuliah`
--

INSERT INTO `MataKuliah` (`ID`, `Mata_Kuliah`, `NIM`, `Nilai`, `Dosen_Pengajar`) VALUES
(1, 'Pemrograman Web', '123456', 85, 'Pak Budi'),
(2, 'Basis Data', '234567', 70, 'Ibu Ani'),
(3, 'Jaringan Komputer', '345678', 75, 'Pak Dodi'),
(4, 'Sistem Operasi', '123456', 90, 'Pak Budi'),
(5, 'Manajemen Proyek', '456789', 80, 'Ibu Desi'),
(6, 'Bahasa Inggris', '567890', 60, 'Ibu Eka'),
(7, 'Statistika', '678901', 75, 'Pak Farhan'),
(8, 'Algoritma', '789012', 65, 'Pak Galih'),
(9, 'Pemrograman Java', '123456', 95, 'Pak Budi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Mahasiswa`
--
ALTER TABLE `Mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `MataKuliah`
--
ALTER TABLE `MataKuliah`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NIM` (`NIM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `MataKuliah`
--
ALTER TABLE `MataKuliah`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `MataKuliah`
--
ALTER TABLE `MataKuliah`
  ADD CONSTRAINT `MataKuliah_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `Mahasiswa` (`NIM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 15, 2024 at 10:13 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2110010461_pbo2`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `nama_laporan` varchar(255) NOT NULL,
  `jenis_laporan` varchar(255) NOT NULL,
  `tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`nama_laporan`, `jenis_laporan`, `tanggal`) VALUES
('1', '2', '15 september 2024'),
('asd', 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `nama_obat` varchar(255) NOT NULL,
  `jenis_obat` varchar(255) NOT NULL,
  `tgl_expired` varchar(255) NOT NULL,
  `harga_obat` int NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`nama_obat`, `jenis_obat`, `tgl_expired`, `harga_obat`, `nama_supplier`, `satuan`) VALUES
('asd', 'asd', 'asd', 123, 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `obatkeluar`
--

CREATE TABLE `obatkeluar` (
  `tanggal` varchar(255) NOT NULL,
  `nama_obat` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `obatmasuk`
--

CREATE TABLE `obatmasuk` (
  `tanggal` varchar(255) NOT NULL,
  `no` int NOT NULL,
  `nama_obat` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `nama_supplier` varchar(255) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('asd', 'asd'),
('Muhammad Nur Imannudin', '201120'),
('n', 'dx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`nama_laporan`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`nama_obat`);

--
-- Indexes for table `obatkeluar`
--
ALTER TABLE `obatkeluar`
  ADD PRIMARY KEY (`tanggal`);

--
-- Indexes for table `obatmasuk`
--
ALTER TABLE `obatmasuk`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`nama_supplier`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

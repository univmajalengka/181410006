-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 01:49 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sbdl_yuda`
--

-- --------------------------------------------------------

--
-- Table structure for table `data admin`
--

CREATE TABLE `data admin` (
  `Id` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data barang`
--

CREATE TABLE `data barang` (
  `Id` int(11) NOT NULL,
  `Nama` varchar(35) NOT NULL,
  `Deskripsi` text NOT NULL,
  `Warna` varchar(35) NOT NULL,
  `Ukuran` varchar(15) NOT NULL,
  `Kategori` varchar(35) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data kategori`
--

CREATE TABLE `data kategori` (
  `Id` int(11) NOT NULL,
  `Kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data no transaksi`
--

CREATE TABLE `data no transaksi` (
  `Notransaksi` varchar(25) NOT NULL,
  `Username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data pelanggan`
--

CREATE TABLE `data pelanggan` (
  `Id` int(11) NOT NULL,
  `Nama` varchar(35) NOT NULL,
  `Alamat` text NOT NULL,
  `Email` text NOT NULL,
  `Telepon` varchar(25) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data transaksi`
--

CREATE TABLE `data transaksi` (
  `Notransaksi` varchar(25) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Id` int(11) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data admin`
--
ALTER TABLE `data admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `data barang`
--
ALTER TABLE `data barang`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `data kategori`
--
ALTER TABLE `data kategori`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `data no transaksi`
--
ALTER TABLE `data no transaksi`
  ADD PRIMARY KEY (`Notransaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

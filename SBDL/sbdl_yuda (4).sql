-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 03:33 PM
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
-- Table structure for table `data_admin`
--

CREATE TABLE `data_admin` (
  `Id` int(11) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_admin`
--

INSERT INTO `data_admin` (`Id`, `Username`, `Password`) VALUES
(1, 'admin', 'admin'),
(2, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE `data_barang` (
  `Id` int(11) NOT NULL,
  `Nama_busana` varchar(35) NOT NULL,
  `Deskripsi` text NOT NULL,
  `Warna` varchar(35) NOT NULL,
  `Ukuran` varchar(15) NOT NULL,
  `Kategori` varchar(35) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_barang`
--

INSERT INTO `data_barang` (`Id`, `Nama_busana`, `Deskripsi`, `Warna`, `Ukuran`, `Kategori`, `Harga`, `Stock`) VALUES
(1, 'kameja', 'bahan : kulit', 'merah', 'm', 'jas', 200000, 5),
(2, 'jaket', 'bahan : kulit', 'hitam', 's', 'bomber', 250000, 10),
(3, 'jaket', 'bahan : wol', 'hijau', 'l', 'parka', 300000, 5),
(4, 'jaket', 'bahan : kulit', 'kuning', 'm', 'snorkel', 275000, 5),
(5, 'jaket', 'bahan : wol', 'biru', 'm', 'cagoule', 150000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `data_kategori`
--

CREATE TABLE `data_kategori` (
  `Id` int(11) NOT NULL,
  `Kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kategori`
--

INSERT INTO `data_kategori` (`Id`, `Kategori`) VALUES
(1, 'bomber'),
(5, 'cagoule'),
(2, 'jas'),
(3, 'parka'),
(4, 'snorkel');

-- --------------------------------------------------------

--
-- Table structure for table `data_notransaksi`
--

CREATE TABLE `data_notransaksi` (
  `Notransaksi` varchar(25) NOT NULL,
  `Username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_notransaksi`
--

INSERT INTO `data_notransaksi` (`Notransaksi`, `Username`) VALUES
('000-01', 'admin'),
('000-02', 'user'),
('000-03', 'yuda'),
('000-04', 'suparmanto'),
('000-05', 'afif');

-- --------------------------------------------------------

--
-- Table structure for table `data_pelanggan`
--

CREATE TABLE `data_pelanggan` (
  `Id` int(11) NOT NULL,
  `Nama` varchar(35) NOT NULL,
  `Alamat` text NOT NULL,
  `Email` text NOT NULL,
  `Telepon` varchar(25) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pelanggan`
--

INSERT INTO `data_pelanggan` (`Id`, `Nama`, `Alamat`, `Email`, `Telepon`, `Username`, `Password`) VALUES
(1, 'Yuda Suparmanto', 'cihaur', 'yudasuparmanto3@gmail.com', '083100193300', 'yuda', 'yuda'),
(2, 'aldi', 'leuwimunding', 'aldi111@gmail.com', '081111222333', 'aldi', 'aldi'),
(3, 'yuda', 'maja', 'yuda@gmail.com', '085793183193', 'yuda', 'yuda'),
(4, 'suparmanto', 'cihaur', 'suparmanto@gmail.com', '081222333444', 'suparmanto', 'suparmanto'),
(5, 'afif', 'lame', 'afif@gmail.com', '084555666777', 'afif', 'afif');

-- --------------------------------------------------------

--
-- Table structure for table `data_transaksi`
--

CREATE TABLE `data_transaksi` (
  `Notransaksi` varchar(25) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Id` int(11) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_transaksi`
--

INSERT INTO `data_transaksi` (`Notransaksi`, `Username`, `Id`, `Harga`, `Nama`, `Jumlah`, `Subtotal`) VALUES
('000-01', 'admin', 1, 250000, 'jaket', 1, 250000),
('000-02', 'user', 2, 200000, 'kameja', 1, 200000),
('000-03', 'yuda', 3, 300000, 'jaket', 1, 300000),
('000-04', 'suparmanto', 4, 275000, 'snorkel', 1, 275000),
('000-05', 'afif', 5, 150000, 'cagoule', 1, 150000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_admin`
--
ALTER TABLE `data_admin`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Username_2` (`Username`);

--
-- Indexes for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Kategori_2` (`Kategori`);

--
-- Indexes for table `data_kategori`
--
ALTER TABLE `data_kategori`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Kategori_2` (`Kategori`);

--
-- Indexes for table `data_notransaksi`
--
ALTER TABLE `data_notransaksi`
  ADD PRIMARY KEY (`Notransaksi`);

--
-- Indexes for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
  ADD KEY `Notransaksi_2` (`Notransaksi`),
  ADD KEY `Username_2` (`Username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_admin`
--
ALTER TABLE `data_admin`
  ADD CONSTRAINT `data_admin_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `data_barang` (`Id`),
  ADD CONSTRAINT `data_admin_ibfk_2` FOREIGN KEY (`Username`) REFERENCES `data_transaksi` (`Username`);

--
-- Constraints for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD CONSTRAINT `data_barang_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `data_pelanggan` (`Id`),
  ADD CONSTRAINT `data_barang_ibfk_2` FOREIGN KEY (`Kategori`) REFERENCES `data_kategori` (`Kategori`);

--
-- Constraints for table `data_transaksi`
--
ALTER TABLE `data_transaksi`
  ADD CONSTRAINT `data_transaksi_ibfk_1` FOREIGN KEY (`Notransaksi`) REFERENCES `data_notransaksi` (`Notransaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

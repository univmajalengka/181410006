-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2020 at 12:55 PM
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

--
-- Dumping data for table `data admin`
--

INSERT INTO `data admin` (`Id`, `Username`, `Password`) VALUES
(1, 'admin', 'admin'),
(2, 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `data barang`
--

CREATE TABLE `data barang` (
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
-- Dumping data for table `data barang`
--

INSERT INTO `data barang` (`Id`, `Nama_busana`, `Deskripsi`, `Warna`, `Ukuran`, `Kategori`, `Harga`, `Stock`) VALUES
(1, 'kameja', 'bahan : kulit', 'merah', 'm', 'jas', 200000, 5),
(2, 'jaket', 'bahan : kulit', 'hitam', 's', 'bomber', 250000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `data kategori`
--

CREATE TABLE `data kategori` (
  `Id` int(11) NOT NULL,
  `Kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data kategori`
--

INSERT INTO `data kategori` (`Id`, `Kategori`) VALUES
(1, 'bomber'),
(2, 'jas');

-- --------------------------------------------------------

--
-- Table structure for table `data no transaksi`
--

CREATE TABLE `data no transaksi` (
  `Notransaksi` varchar(25) NOT NULL,
  `Username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data no transaksi`
--

INSERT INTO `data no transaksi` (`Notransaksi`, `Username`) VALUES
('000-01', 'admin'),
('000-02', 'user');

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

--
-- Dumping data for table `data pelanggan`
--

INSERT INTO `data pelanggan` (`Id`, `Nama`, `Alamat`, `Email`, `Telepon`, `Username`, `Password`) VALUES
(1, 'Yuda Suparmanto', 'cihaur', 'yudasuparmanto3@gmail.com', '083100193300', 'yuda', 'yuda'),
(2, 'aldi', 'leuwimunding', 'aldi111@gmail.com', '081111222333', 'aldi', 'aldi');

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
-- Dumping data for table `data transaksi`
--

INSERT INTO `data transaksi` (`Notransaksi`, `Username`, `Id`, `Harga`, `Nama`, `Jumlah`, `Subtotal`) VALUES
('000-01', 'admin', 1, 250000, 'jaket', 1, 250000),
('000-02', 'user', 2, 200000, 'kameja', 1, 200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data admin`
--
ALTER TABLE `data admin`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Username_2` (`Username`);

--
-- Indexes for table `data barang`
--
ALTER TABLE `data barang`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Kategori_2` (`Kategori`);

--
-- Indexes for table `data kategori`
--
ALTER TABLE `data kategori`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Kategori_2` (`Kategori`);

--
-- Indexes for table `data no transaksi`
--
ALTER TABLE `data no transaksi`
  ADD PRIMARY KEY (`Notransaksi`);

--
-- Indexes for table `data pelanggan`
--
ALTER TABLE `data pelanggan`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `data transaksi`
--
ALTER TABLE `data transaksi`
  ADD KEY `Notransaksi_2` (`Notransaksi`),
  ADD KEY `Username_2` (`Username`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data admin`
--
ALTER TABLE `data admin`
  ADD CONSTRAINT `data admin_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `data barang` (`Id`),
  ADD CONSTRAINT `data admin_ibfk_2` FOREIGN KEY (`Username`) REFERENCES `data transaksi` (`Username`);

--
-- Constraints for table `data barang`
--
ALTER TABLE `data barang`
  ADD CONSTRAINT `data barang_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `data pelanggan` (`Id`),
  ADD CONSTRAINT `data barang_ibfk_2` FOREIGN KEY (`Kategori`) REFERENCES `data kategori` (`Kategori`);

--
-- Constraints for table `data transaksi`
--
ALTER TABLE `data transaksi`
  ADD CONSTRAINT `data transaksi_ibfk_1` FOREIGN KEY (`Notransaksi`) REFERENCES `data no transaksi` (`Notransaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

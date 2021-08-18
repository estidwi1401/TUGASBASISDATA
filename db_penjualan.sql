-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2021 at 02:19 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(20) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `stok`) VALUES
(1, 'tas', 50000, 10),
(2, 'kaos', 25000, 15),
(3, 'hijab', 15000, 20),
(4, 'kemeja', 30000, 20),
(5, 'levis', 100000, 10),
(6, 'jaket', 90000, 5),
(7, 'leging', 15000, 5),
(8, 'piama', 70000, 20),
(18, 'celana', 30000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') DEFAULT NULL,
  `no_telp` char(14) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `jenis_kelamin`, `no_telp`, `alamat`) VALUES
(1, 'esti', 'wanita', '111111111111', 'serang'),
(2, 'dwi', 'pria', '222222222222', 'serang'),
(3, 'yanti', 'wanita', '333333333333', 'serang'),
(4, 'muti', 'wanita', '4444444444444', 'solo'),
(5, 'ramadhan', 'pria', '55555555555', 'serang'),
(6, 'firman', 'pria', '66666666666', 'tanggerang'),
(7, 'ardian', 'pria', '77777777777', 'anyer'),
(8, 'ali', 'pria', '88888888888', 'cilegon'),
(9, 'suji', 'wanita', '99999999999', 'serdang'),
(10, 'suga', 'pria', '101010101010', 'bandung'),
(21, 'linda', 'wanita', '505050505050', 'serang');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `id_pembeli` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_barang`, `id_pembeli`, `tanggal`, `keterangan`) VALUES
(1, 1, 1, '2021-08-01', 'warna coklat'),
(2, 4, 6, '2021-08-01', 'merah'),
(3, 2, 8, '2021-08-01', 'hitam'),
(4, 5, 7, '2021-08-01', 'biru'),
(5, 7, 3, '2021-08-02', 'hitam'),
(6, 8, 9, '2021-08-02', 'hijau'),
(7, 6, 4, '2021-08-02', 'biru'),
(8, 3, 4, '2021-08-02', 'coksu'),
(9, 1, 3, '2021-08-02', 'pink'),
(10, 2, 8, '2021-08-03', 'putih'),
(11, 1, 2, '2021-08-03', 'crem'),
(12, 5, 10, '2021-08-03', 'biru'),
(13, 6, 3, '2021-08-03', 'hitam'),
(14, 7, 9, '2021-08-03', 'hijau'),
(15, 1, 4, '2021-08-03', 'merah'),
(16, 2, 4, '2021-08-04', 'coklat'),
(17, 7, 3, '2021-08-04', 'hitam'),
(18, 4, 8, '2021-08-04', 'hitam'),
(21, 3, 3, '2021-08-04', 'putih'),
(22, 1, 4, '2021-08-04', 'abuabu'),
(23, 7, 3, '2021-08-05', 'coklat'),
(24, 4, 7, '2021-08-05', 'putih'),
(25, 3, 2, '2021-08-05', 'merah'),
(26, 1, 8, '2021-08-06', 'hitam'),
(27, 8, 10, '2021-08-05', 'abuabu'),
(28, 4, 7, '2021-08-06', 'salem'),
(29, 5, 1, '2021-08-06', 'hitam'),
(30, 6, 6, '2021-08-07', 'coklat'),
(31, 3, 3, '2021-08-04', 'putih'),
(32, 1, 4, '2021-08-04', 'abuabu'),
(33, 7, 3, '2021-08-05', 'coklat'),
(34, 4, 7, '2021-08-05', 'putih'),
(35, 3, 2, '2021-08-05', 'merah'),
(36, 1, 8, '2021-08-06', 'hitam'),
(37, 8, 10, '2021-08-05', 'abuabu'),
(38, 4, 7, '2021-08-06', 'salem'),
(39, 5, 1, '2021-08-06', 'hitam'),
(40, 6, 6, '2021-08-07', 'coklat'),
(41, 6, 3, '2021-08-08', 'putih'),
(42, 1, 5, '2021-08-08', 'abuabu'),
(43, 7, 4, '2021-08-08', 'coklat'),
(44, 5, 5, '2021-08-09', 'putih'),
(45, 4, 8, '2021-08-09', 'putih'),
(46, 3, 8, '2021-08-09', 'coklat'),
(47, 5, 1, '2021-08-09', 'ungu'),
(48, 3, 6, '2021-08-09', 'coklat'),
(49, 3, 6, '2021-08-09', 'hitam'),
(50, 2, 8, '2021-08-10', 'putih'),
(51, 1, 6, '2021-08-01', 'warna coklat'),
(52, 3, 1, '2021-08-10', 'hijau'),
(53, 4, 4, '2021-08-10', 'crem'),
(54, 4, 5, '2021-08-11', 'army'),
(55, 5, 7, '2021-08-11', 'biru'),
(56, 8, 9, '2021-08-11', 'pink'),
(57, 3, 9, '2021-08-11', 'gold'),
(58, 8, 10, '2021-08-12', 'ungu'),
(59, 2, 5, '2021-08-12', 'dongker'),
(60, 6, 8, '2021-08-12', 'hitam'),
(61, 3, 3, '2021-08-13', 'salem'),
(62, 3, 1, '2021-08-10', 'hijau'),
(63, 4, 4, '2021-08-10', 'crem'),
(64, 4, 5, '2021-08-11', 'army'),
(65, 5, 7, '2021-08-11', 'biru'),
(66, 8, 9, '2021-08-11', 'pink'),
(67, 3, 9, '2021-08-11', 'gold'),
(68, 8, 10, '2021-08-12', 'ungu'),
(69, 2, 5, '2021-08-12', 'dongker'),
(70, 6, 8, '2021-08-12', 'hitam'),
(71, 3, 3, '2021-08-13', 'salem'),
(72, 1, 1, '2021-08-12', 'hijau'),
(73, 2, 1, '2021-08-13', 'abuabu'),
(74, 3, 3, '2021-08-13', 'gold'),
(75, 4, 3, '2021-08-13', 'merah'),
(76, 5, 4, '2021-08-14', 'hitam'),
(77, 6, 5, '2021-08-15', 'army'),
(78, 7, 9, '2021-08-15', 'putih'),
(79, 8, 10, '2021-08-15', 'cream'),
(80, 5, 8, '2021-08-15', 'biru'),
(81, 6, 6, '2021-08-16', 'peach'),
(82, 3, 2, '2021-08-16', 'kuning'),
(83, 8, 1, '2021-08-16', 'ungu'),
(84, 1, 1, '2021-08-12', 'hijau'),
(85, 2, 1, '2021-08-13', 'abuabu'),
(86, 3, 3, '2021-08-13', 'gold'),
(87, 4, 3, '2021-08-13', 'merah'),
(88, 5, 4, '2021-08-14', 'hitam'),
(89, 6, 5, '2021-08-15', 'army'),
(90, 7, 9, '2021-08-15', 'putih'),
(91, 8, 10, '2021-08-15', 'cream'),
(92, 5, 8, '2021-08-15', 'biru'),
(93, 6, 6, '2021-08-16', 'peach'),
(94, 3, 2, '2021-08-16', 'kuning'),
(95, 8, 1, '2021-08-16', 'ungu'),
(96, 18, 21, '2021-08-17', 'coklat'),
(97, 18, 1, '2021-08-17', 'hitam'),
(98, 18, 2, '2021-08-17', 'hitam'),
(99, 2, 3, '2021-08-17', 'ungu'),
(100, 18, 4, '2021-08-17', 'hitam'),
(101, 4, 21, '2021-08-18', 'hijau'),
(102, 5, 21, '2021-08-18', 'abuabu'),
(103, 4, 21, '2021-08-18', 'hijau'),
(104, 5, 21, '2021-08-18', 'abuabu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

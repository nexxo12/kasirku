-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2020 at 06:49 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vsstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `garansi`
--

CREATE TABLE `garansi` (
  `ID_GARANSI` int(11) NOT NULL,
  `INV_PENJUALAN` varchar(100) DEFAULT NULL,
  `ID_BARANG` varchar(100) DEFAULT NULL,
  `TGL_BELI` date DEFAULT NULL,
  `TGL_HABIS` date DEFAULT NULL,
  `STATUS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `garansi`
--

INSERT INTO `garansi` (`ID_GARANSI`, `INV_PENJUALAN`, `ID_BARANG`, `TGL_BELI`, `TGL_HABIS`, `STATUS`) VALUES
(5, 'INV00002', 'BR006', '2020-10-20', '0000-00-00', ''),
(6, 'INV00003', 'BR004', '2020-10-20', '0000-00-00', ''),
(8, 'INV00005', 'BR011', '2020-10-20', '0000-00-00', ''),
(9, 'INV00006', 'BR010', '2020-10-28', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_penjualan`
--

CREATE TABLE `inv_penjualan` (
  `id_inv` varchar(100) NOT NULL,
  `TGL_TRX` date DEFAULT NULL,
  `BARANG` varchar(100) DEFAULT NULL,
  `GRAND_TOTAL` double DEFAULT NULL,
  `inv_ol` varchar(100) DEFAULT NULL,
  `ongkir` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inv_penjualan`
--

INSERT INTO `inv_penjualan` (`id_inv`, `TGL_TRX`, `BARANG`, `GRAND_TOTAL`, `inv_ol`, `ongkir`) VALUES
('INV00002', '2020-10-20', '\r\nIntel Core i3 9100F 3.6Ghz Up To 4.2Ghz Box Coffee Lake', 5600000, 'INV/20201025/XX/X/660118966	', 2000),
('INV00003', '2020-10-20', '\r\nSeasonic S12III-500 80+ Bronze', 6000000, 'INV/20201025/XX/X/660118966', 20000),
('INV00005', '2020-10-20', '\r\nECS H310CHS-M7 LGA 1151', 4250000, 'INV/20201025/XX/X/660118966', 8000),
('INV00006', '2020-10-28', '\r\nPATRIOT VIPER ELITE DDR4 8GB (2x4GB) 2666Mhz', 7000000, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `ID_KATEGORI` int(11) NOT NULL,
  `KATEGORI` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`ID_KATEGORI`, `KATEGORI`) VALUES
(1, 'Prosessor'),
(2, 'RAM'),
(3, 'Motherboard'),
(4, 'HDD'),
(5, 'Power Supply'),
(6, 'VGA'),
(7, 'Casing'),
(8, 'Monitor'),
(9, 'Keyboard'),
(10, 'SSD'),
(11, 'Mouse'),
(12, 'Speaker'),
(15, 'Software');

-- --------------------------------------------------------

--
-- Table structure for table `list_penjualan`
--

CREATE TABLE `list_penjualan` (
  `ID_PENJUALAN` int(11) NOT NULL,
  `INV_PENJUALAN` varchar(100) DEFAULT NULL,
  `ID_BARANG` varchar(100) DEFAULT NULL,
  `ID_PELANGGAN` varchar(100) DEFAULT NULL,
  `ID_LOGIN` int(11) DEFAULT NULL,
  `TANGGAL_TRANSAKSI` date DEFAULT NULL,
  `JUMLAH_BELI` int(11) DEFAULT NULL,
  `HARGA_AWAL` double DEFAULT NULL,
  `HARGA_JL` double DEFAULT NULL,
  `TOTAL_HARGA` double DEFAULT NULL,
  `LABA` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Triggers `list_penjualan`
--
DELIMITER $$
CREATE TRIGGER `INSERT PJ` AFTER INSERT ON `list_penjualan` FOR EACH ROW BEGIN
INSERT INTO penjualan VALUES
(NEW.ID_PENJUALAN,NEW.INV_PENJUALAN, NEW.ID_BARANG, NEW.ID_PELANGGAN, NEW.ID_LOGIN, NEW.TANGGAL_TRANSAKSI, NEW.JUMLAH_BELI, NEW.HARGA_AWAL, NEW.HARGA_JL, NEW.TOTAL_HARGA, NEW.LABA);
        
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID_LOGIN` int(11) NOT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `PASSWORD` text DEFAULT NULL,
  `NAMA` varchar(50) DEFAULT NULL,
  `ALAMAT` varchar(100) DEFAULT NULL,
  `LEVEL` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID_LOGIN`, `USERNAME`, `PASSWORD`, `NAMA`, `ALAMAT`, `LEVEL`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Admin', 'Jalan terindah', 'super'),
(2, 'maria', '202cb962ac59075b964b07152d234b70', 'Maria Gomez', 'Amerika', 'kasir'),
(3, 'vscomp', '202cb962ac59075b964b07152d234b70', 'VSComp', 'Surabaya', 'super');

-- --------------------------------------------------------

--
-- Table structure for table `master_barang`
--

CREATE TABLE `master_barang` (
  `ID_BARANG` varchar(100) NOT NULL,
  `ID_KATEGORI` int(11) DEFAULT NULL,
  `NAMA_BARANG` varchar(100) DEFAULT NULL,
  `STOK` int(11) DEFAULT NULL,
  `SATUAN` varchar(10) DEFAULT NULL,
  `HARGA_JUAL` double DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_barang`
--

INSERT INTO `master_barang` (`ID_BARANG`, `ID_KATEGORI`, `NAMA_BARANG`, `STOK`, `SATUAN`, `HARGA_JUAL`, `STATUS`) VALUES
('BR001', 6, 'Galax Geforce RTX 2060 6GB DDR6 - Dual Fan', 9, 'unit', 5600000, ''),
('BR002', 1, 'AM4 Raven Ridge Ryzen 3 2200G 3.5 Ghz Box', 3, 'unit', 1270000, ''),
('BR003', 2, 'GEIL DDR4 Evo Potenza PC21330 2666MHz 16GB (2x8GB)', 7, 'unit', 1230000, ''),
('BR004', 5, 'Seasonic S12III-500 80+ Bronze', 1, 'Unit', 780000, ''),
('BR005', 3, 'ASRock X570 Phantom Gaming X', 5, 'unit', 2700000, ''),
('BR006', 1, 'Intel Core i3 9100F 3.6Ghz Up To 4.2Ghz Box Coffee Lake', 7, 'unit', 1120000, ''),
('BR007', 5, 'Seasonic Prime Gold GX-1000 / 1000GD - 1000W Full Modular', 0, 'unit', 2850000, ''),
('BR008', 6, 'PowerColor RX 580 RED DRAGON 8GB GDDR5', 5, 'unit', 2870000, ''),
('BR009', 3, 'Fast Intel H61 Socket 1155 with HDMI Port', 0, 'unit', 656000, ''),
('BR010', 2, 'PATRIOT VIPER ELITE DDR4 8GB (2x4GB) 2666Mhz', 5, 'unit', 715000, ''),
('BR011', 3, 'ECS H310CHS-M7 LGA 1151', 10, 'unit', 950000, ''),
('BR012', 6, 'PowerColor RX 580 RED Devil GOLDEN 8GB GDDR5', 0, 'unit', 3000000, ''),
('BR013', 7, 'Cube Gaming Varde - Matx - Tempered Glass - 3x Fan', 7, 'unit', 450000, ''),
('BR014', 7, 'Armaggeddon Nimitz N5 Aurora Micro ATX', 0, 'unit', 336000, ''),
('BR015', 10, 'Adata SSD SU650 120GB', 15, 'unit', 365000, ''),
('BR016', 10, 'Adata XPG Spectrix S40G RGB 512GB M.2 NVME PCIE GEN3X4', 0, 'unit', 1410000, ''),
('BR017', 4, 'WDC 3.5\" 1TB SATA3 - Caviar Blue', 9, 'unit', 695000, ''),
('BR018', 4, 'Seagate 3.5\" 1TB Baracuda SATA3', 0, 'unit', 750000, '');

--
-- Triggers `master_barang`
--
DELIMITER $$
CREATE TRIGGER `input id produk terjual` AFTER INSERT ON `master_barang` FOR EACH ROW BEGIN
INSERT INTO produk_terjual VALUES
('', NEW.ID_BARANG,'');
        
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_PELANGGAN` varchar(100) NOT NULL,
  `NAMA` varchar(20) DEFAULT NULL,
  `ALAMAT` varchar(100) DEFAULT NULL,
  `HP` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`ID_PELANGGAN`, `NAMA`, `ALAMAT`, `HP`) VALUES
('1', 'CASH', '-', '-'),
('2', 'SCK Komputer', 'ITC Mega Grosir', '08323383830'),
('3', 'Icon Comp', 'Harco Mangga Dua', '08323383830'),
('4', 'Surya Kencana', 'Jl. Rungkut Industri', '08323383830');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_barang`
--

CREATE TABLE `pembelian_barang` (
  `ID_BELI` varchar(50) NOT NULL,
  `ID_SUPP` int(11) DEFAULT NULL,
  `ID_BARANG` varchar(100) DEFAULT NULL,
  `ID_LOGIN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `SATUAN` varchar(10) DEFAULT NULL,
  `HARGA_BELI` double DEFAULT NULL,
  `TGL_BELI` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian_barang`
--

INSERT INTO `pembelian_barang` (`ID_BELI`, `ID_SUPP`, `ID_BARANG`, `ID_LOGIN`, `JUMLAH`, `SATUAN`, `HARGA_BELI`, `TGL_BELI`) VALUES
('BL001', 20205, 'BR001', 1, 5, 'unit', 4900000, '2020-06-02'),
('BL002', 20205, 'BR002', 1, 1, 'unit', 1270000, '2020-06-02'),
('BL003', 20205, 'BR002', 1, 2, 'unit', 1270000, '2020-06-02'),
('BL004', 20203, 'BR003', 1, 3, 'unit', 780000, '2020-06-02'),
('BL005', 20205, 'BR004', 1, 3, 'unit', 780000, '2020-06-02'),
('BL006', 20201, 'BR005', 1, 3, 'unit', 2000000, '2020-06-02'),
('BL007', 20205, 'BR013', 1, 4, 'unit', 295000, '2020-06-02'),
('BL008', 20205, 'BR004', 3, 2, 'unit', 550000, '2020-06-15'),
('BL010', 20205, 'BR017', 2, 5, 'unit', 670000, '2020-06-18'),
('BL011', 20205, 'BR015', 3, 10, 'unit', 300000, '2020-06-18'),
('BL012', 20203, 'BR011', 3, 10, 'unit', 800000, '2020-06-18'),
('BL013', 20205, 'BR006', 3, 10, 'unit', 1000000, '2020-06-18'),
('BL014', 20203, 'BR010', 3, 10, 'unit', 600000, '2020-06-18'),
('BL015', 20202, 'BR008', 3, 5, 'unit', 2700000, '2020-07-15');

--
-- Triggers `pembelian_barang`
--
DELIMITER $$
CREATE TRIGGER `UPDATE STOK` AFTER INSERT ON `pembelian_barang` FOR EACH ROW BEGIN
UPDATE master_barang SET STOK=STOK+NEW.JUMLAH WHERE ID_BARANG = NEW.ID_BARANG;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `ID_PENJUALAN` int(11) NOT NULL,
  `INV_PENJUALAN` varchar(100) DEFAULT NULL,
  `ID_BARANG` varchar(100) DEFAULT NULL,
  `ID_PELANGGAN` varchar(100) DEFAULT NULL,
  `ID_LOGIN` int(11) DEFAULT NULL,
  `TANGGAL_TRANSAKSI` date DEFAULT NULL,
  `JUMLAH_BELI` int(11) DEFAULT NULL,
  `HARGA_AWAL` double DEFAULT NULL,
  `HARGA_JUALPJ` double DEFAULT NULL,
  `TOTAL_HARGA` double DEFAULT NULL,
  `LABAPJ` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`ID_PENJUALAN`, `INV_PENJUALAN`, `ID_BARANG`, `ID_PELANGGAN`, `ID_LOGIN`, `TANGGAL_TRANSAKSI`, `JUMLAH_BELI`, `HARGA_AWAL`, `HARGA_JUALPJ`, `TOTAL_HARGA`, `LABAPJ`) VALUES
(5, 'INV00002', 'BR006', '1', 3, '2020-10-20', 5, 1000000, 1120000, 5600000, 600000),
(6, 'INV00003', 'BR004', '1', 1, '2020-10-20', 10, 560000, 600000, 6000000, 400000),
(8, 'INV00005', 'BR011', '1', 1, '2020-10-20', 5, 800000, 850000, 4250000, 250000),
(9, 'INV00006', 'BR010', '1', 1, '2020-10-28', 10, 600000, 700000, 7000000, 1000000);

--
-- Triggers `penjualan`
--
DELIMITER $$
CREATE TRIGGER `PENJUALAN` AFTER INSERT ON `penjualan` FOR EACH ROW BEGIN
UPDATE master_barang SET STOK=STOK-NEW.JUMLAH_BELI WHERE ID_BARANG = NEW.ID_BARANG;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Return STOK` AFTER DELETE ON `penjualan` FOR EACH ROW BEGIN
UPDATE master_barang SET STOK=STOK+OLD.JUMLAH_BELI WHERE ID_BARANG = OLD.ID_BARANG;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Return produk terjual` AFTER DELETE ON `penjualan` FOR EACH ROW BEGIN
UPDATE produk_terjual SET TOTAL=TOTAL-OLD.JUMLAH_BELI WHERE ID_BARANG = OLD.ID_BARANG;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update produk terjual` AFTER INSERT ON `penjualan` FOR EACH ROW BEGIN
UPDATE produk_terjual SET TOTAL=TOTAL+NEW.JUMLAH_BELI WHERE ID_BARANG = NEW.ID_BARANG;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `waranty` AFTER INSERT ON `penjualan` FOR EACH ROW BEGIN
INSERT INTO garansi VALUES
(NEW.ID_PENJUALAN, NEW.INV_PENJUALAN, NEW.ID_BARANG, NEW.TANGGAL_TRANSAKSI, '', '');
        
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `produk_terjual`
--

CREATE TABLE `produk_terjual` (
  `id` int(11) NOT NULL,
  `ID_BARANG` varchar(50) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_terjual`
--

INSERT INTO `produk_terjual` (`id`, `ID_BARANG`, `TOTAL`) VALUES
(0, 'BR019', 0),
(2, 'BR001', -4),
(4, 'BR002', 0),
(5, 'BR003', -4),
(6, 'BR004', 5),
(7, 'BR005', -2),
(8, 'BR006', 3),
(9, 'BR007', 0),
(10, 'BR008', 0),
(11, 'BR009', 0),
(12, 'BR010', 5),
(13, 'BR011', 0),
(14, 'BR012', 0),
(15, 'BR013', -3),
(16, 'BR014', 0),
(17, 'BR015', -5),
(18, 'BR016', 0),
(19, 'BR017', -4),
(20, 'BR018', 0);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `ID_SUPP` int(11) NOT NULL,
  `NAMA` varchar(100) DEFAULT NULL,
  `ALAMAT` varchar(200) DEFAULT NULL,
  `NO_HP` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`ID_SUPP`, `NAMA`, `ALAMAT`, `NO_HP`) VALUES
(20201, 'Icon Comp', 'Jl. Sempol Blok P10, Vatican City', '083767847563'),
(20202, 'Kios Komputer', 'Jl. Bunguran Asih', '083767847563'),
(20203, 'Enter Komputer', 'Harco mangga dua', '083767847563'),
(20204, 'Coc Komputer', 'Jl. Rungkut', '08323383830'),
(20205, 'Win Komputer', 'ITC', '08323383830');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `garansi`
--
ALTER TABLE `garansi`
  ADD PRIMARY KEY (`ID_GARANSI`),
  ADD KEY `ID_BARANG` (`ID_BARANG`) USING BTREE;

--
-- Indexes for table `inv_penjualan`
--
ALTER TABLE `inv_penjualan`
  ADD PRIMARY KEY (`id_inv`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`ID_KATEGORI`);

--
-- Indexes for table `list_penjualan`
--
ALTER TABLE `list_penjualan`
  ADD PRIMARY KEY (`ID_PENJUALAN`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`ID_LOGIN`);

--
-- Indexes for table `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`ID_BARANG`),
  ADD KEY `ID_KATEGORI` (`ID_KATEGORI`) USING BTREE;

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_PELANGGAN`);

--
-- Indexes for table `pembelian_barang`
--
ALTER TABLE `pembelian_barang`
  ADD PRIMARY KEY (`ID_BELI`),
  ADD KEY `FK_REFERENCE_4` (`ID_SUPP`),
  ADD KEY `FK_REFERENCE_5` (`ID_BARANG`),
  ADD KEY `FK_REFERENCE_6` (`ID_LOGIN`);

--
-- Indexes for table `produk_terjual`
--
ALTER TABLE `produk_terjual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`ID_SUPP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `ID_KATEGORI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `produk_terjual`
--
ALTER TABLE `produk_terjual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `garansi`
--
ALTER TABLE `garansi`
  ADD CONSTRAINT `garansi_ibfk_1` FOREIGN KEY (`ID_BARANG`) REFERENCES `master_barang` (`ID_BARANG`);

--
-- Constraints for table `master_barang`
--
ALTER TABLE `master_barang`
  ADD CONSTRAINT `master_barang_ibfk_1` FOREIGN KEY (`ID_KATEGORI`) REFERENCES `kategori` (`ID_KATEGORI`);

--
-- Constraints for table `pembelian_barang`
--
ALTER TABLE `pembelian_barang`
  ADD CONSTRAINT `FK_REFERENCE_4` FOREIGN KEY (`ID_SUPP`) REFERENCES `supplier` (`ID_SUPP`),
  ADD CONSTRAINT `FK_REFERENCE_5` FOREIGN KEY (`ID_BARANG`) REFERENCES `master_barang` (`ID_BARANG`),
  ADD CONSTRAINT `FK_REFERENCE_6` FOREIGN KEY (`ID_LOGIN`) REFERENCES `login` (`ID_LOGIN`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

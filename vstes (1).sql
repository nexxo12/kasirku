-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2020 at 07:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vstes`
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
(6, 'INV00003', 'BR005', '2020-11-05', '2021-11-05', ''),
(7, 'INV00004', 'BR021', '2020-11-06', '0000-00-00', ''),
(8, 'INV00004', 'BR022', '2020-11-06', '0000-00-00', ''),
(9, 'INV00005', 'BR007', '2020-11-06', '0000-00-00', ''),
(10, 'INV00005', 'BR010', '2020-11-06', '0000-00-00', ''),
(11, 'INV00005', 'BR023', '2020-11-06', '0000-00-00', ''),
(12, 'INV00005', 'BR024', '2020-11-06', '0000-00-00', ''),
(13, 'INV00005', 'BR002', '2020-11-06', '0000-00-00', ''),
(14, 'INV00005', 'BR028', '2020-11-06', '0000-00-00', ''),
(15, 'INV00005', 'BR025', '2020-11-06', '0000-00-00', ''),
(16, 'INV00005', 'BR027', '2020-11-06', '0000-00-00', ''),
(17, 'INV00005', 'BR026', '2020-11-06', '0000-00-00', ''),
(18, 'INV00006', 'BR005', '2020-11-10', '0000-00-00', ''),
(19, 'INV00007', 'BR005', '2020-11-10', '0000-00-00', '');

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
  `ongkir` double DEFAULT NULL,
  `laba_ongkir` double DEFAULT NULL,
  `potongan` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inv_penjualan`
--

INSERT INTO `inv_penjualan` (`id_inv`, `TGL_TRX`, `BARANG`, `GRAND_TOTAL`, `inv_ol`, `ongkir`, `laba_ongkir`, `potongan`) VALUES
('INV00003', '2020-11-05', 'Kingstone HyperX 8GB DDR3-12800', 400000, 'INV/20201105/XX/XI/668438313', 0, 0, 4000),
('INV00004', '2020-11-06', 'Printer Canon G2010 All in One G 2010 - COMPETIBLE INK', 9265000, 'Transaksi Offline', 140000, 0, 0),
('INV00005', '2020-11-06', 'Proc Intel Core i5-2400 + Fan', 5385000, 'INV/20201106/XX/XI/668859740', 0, 0, 53850),
('INV00006', '2020-11-10', 'Kingstone HyperX 8GB DDR3-12800', 400000, 'INV/20201109/XX/XI/671415218', 0, 0, 4000),
('INV00007', '2020-11-10', 'Kingstone HyperX 8GB DDR3-12800', 400000, 'INV/20201110/XX/XI/671590196', 0, 0, 4000);

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
(15, 'Software'),
(16, 'Network'),
(17, 'Acc'),
(18, 'AIO'),
(19, 'Printer');

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
  `G_TOTAL` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_barang`
--

INSERT INTO `master_barang` (`ID_BARANG`, `ID_KATEGORI`, `NAMA_BARANG`, `STOK`, `SATUAN`, `HARGA_JUAL`, `G_TOTAL`) VALUES
('BR001', 16, 'Totolink USB Wifi Receiver', 2, 'unit', 65000, 130000),
('BR002', 10, 'SSD Pioneer 120GB Sata', 1, 'unit', 340000, 340000),
('BR003', 2, 'VenomRX 4GB DDR3-12800', 2, 'unit', 250000, 500000),
('BR004', 17, 'Fan Case LED 12CM', 3, 'unit', 17000, 51000),
('BR005', 2, 'Kingstone HyperX 8GB DDR3-12800', 5, 'unit', 460000, 2300000),
('BR007', 1, 'Proc Intel Core i5-2400 + Fan', 7, 'unit', 410000, 2870000),
('BR008', 5, 'PSU Alcatroz Magnum Pro 225 230W', 1, 'unit', 0, 0),
('BR009', 4, 'HDD 3.5 Seagate 500GB', 7, 'unit', 170000, 1190000),
('BR010', 2, 'Kingstone HyperX 8GB DDR3-12800 (2)', 0, 'unit', 0, 0),
('BR011', 1, 'Intel Core i5 9400F 2.9Ghz Up To 4.1Ghz', 0, 'unit', 2045000, 0),
('BR012', 3, 'MSI H310M Pro VD Plus', 0, 'unit', 875000, 0),
('BR013', 4, 'Seagate 1TB Baracuda', 0, 'unit', 675000, 0),
('BR014', 4, 'WD Blue 1TB', 0, 'unit', 630000, 0),
('BR015', 6, 'MSI Geforce GTX 1650 Ventus XS 4G OC', 0, 'unit', 2240000, 0),
('BR016', 5, 'Enlight 400W 80+', 0, 'unit', 395000, 0),
('BR017', 2, 'Klevv DDR4 Bolt X Series PC25600 3200MHz 16GB (2X8GB)', 0, 'unit', 980000, 0),
('BR018', 2, 'ADATA DDR4 XPG Gammix D30 PC24000 3000MHz 16GB (2X8GB)', 0, 'unit', 1055000, 0),
('BR019', 6, 'MSI Geforce GTX 1660 Ventus XS 6G OC', 0, 'unit', 3575000, 0),
('BR020', 10, 'Klevv 120GB Sata', 0, 'unit', 250000, 0),
('BR021', 18, 'PC AIO Acer C22 i3-10110U 4GB 1TB Windows 10 21.5 Inch No DVD', 0, 'unit', 6658000, 0),
('BR022', 19, 'Printer Canon G2010 All in One G 2010 - COMPETIBLE INK', 0, 'unit', 1647000, 0),
('BR023', 3, 'Mobo Gigabyte H61M-DS2', 0, 'unit', 1300000, 0),
('BR024', 4, 'Hdd 500 Gb Sata WD Blue', 0, 'unit', 165000, 0),
('BR025', 7, 'Case VenomRX NEMESIS', 0, 'unit', 350000, 0),
('BR026', 17, 'Cooler Fan Deepcool Ice Edge Mini F5 ', 0, 'unit', 130000, 0),
('BR027', 5, 'PSU Deepcool 500W 80+', 0, 'unit', 555000, 0),
('BR028', 6, 'MSI Aero Geforce GT1030 2GB GDDR5', 1, 'unit', 1088000, 1088000);

--
-- Triggers `master_barang`
--
DELIMITER $$
CREATE TRIGGER `input barang terjual` AFTER INSERT ON `master_barang` FOR EACH ROW BEGIN
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
('5', 'Tokopedia', '', ''),
('7', 'Komite Mtsn 1 BWI', 'Jln. Widuri, Banyuwangi', '');

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
('BL001', 20206, 'BR001', 1, 2, 'unit', 65000, '2020-11-04'),
('BL002', 20207, 'BR002', 1, 2, 'unit', 340000, '2020-11-04'),
('BL003', 20208, 'BR003', 1, 2, 'unit', 250000, '2020-11-04'),
('BL004', 20207, 'BR004', 1, 3, '3', 17000, '2020-11-04'),
('BL005', 20207, 'BR005', 1, 8, 'unit', 460000, '2020-11-04'),
('BL006', 20201, 'BR007', 1, 8, 'unit', 410000, '2020-11-04'),
('BL007', 20207, 'BR008', 1, 1, 'unit', 0, '2020-11-04'),
('BL008', 20208, 'BR009', 1, 7, 'unit', 170000, '2020-11-04'),
('BL009', 20209, 'BR010', 1, 1, 'unit', 0, '2020-11-04'),
('BL010', 20211, 'BR021', 1, 1, 'unit', 6658000, '2020-11-06'),
('BL011', 20207, 'BR022', 1, 1, 'unit', 1647000, '2020-11-06'),
('BL012', 20207, 'BR010', 1, 0, 'unit', 320000, '2020-11-06'),
('BL013', 20208, 'BR023', 1, 1, 'unit', 1300000, '2020-11-06'),
('BL014', 20208, 'BR024', 1, 1, 'unit', 165000, '2020-11-06'),
('BL015', 20208, 'BR025', 1, 1, 'unit', 350000, '2020-11-06'),
('BL016', 20208, 'BR026', 1, 1, 'unit', 130000, '2020-11-06'),
('BL017', 20208, 'BR027', 1, 1, 'unit', 555000, '2020-11-06'),
('BL018', 20205, 'BR028', 1, 2, 'unit', 1088000, '2020-11-06');

--
-- Triggers `pembelian_barang`
--
DELIMITER $$
CREATE TRIGGER `UPDATE STOK` AFTER INSERT ON `pembelian_barang` FOR EACH ROW BEGIN
UPDATE master_barang SET STOK=STOK+NEW.JUMLAH WHERE ID_BARANG = NEW.ID_BARANG;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `jumlah hg stok` AFTER INSERT ON `pembelian_barang` FOR EACH ROW BEGIN
UPDATE master_barang SET G_TOTAL=STOK*NEW.HARGA_BELI WHERE ID_BARANG = NEW.ID_BARANG;
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
(6, 'INV00003', 'BR005', '1', 1, '2020-11-05', 1, 460000, 400000, 400000, -60000),
(7, 'INV00004', 'BR021', '7', 1, '2020-11-06', 1, 6658000, 7615000, 7615000, 957000),
(8, 'INV00004', 'BR022', '7', 1, '2020-11-06', 1, 1647000, 1650000, 1650000, 3000),
(9, 'INV00005', 'BR007', '5', 1, '2020-11-06', 1, 410000, 5385000, 5385000, 4975000),
(10, 'INV00005', 'BR010', '5', 1, '2020-11-06', 1, 320000, 0, 0, 0),
(11, 'INV00005', 'BR023', '5', 1, '2020-11-06', 1, 1300000, 0, 0, 0),
(12, 'INV00005', 'BR024', '5', 1, '2020-11-06', 1, 165000, 0, 0, 0),
(13, 'INV00005', 'BR002', '5', 1, '2020-11-06', 1, 340000, 0, 0, 0),
(14, 'INV00005', 'BR028', '5', 1, '2020-11-06', 1, 1088000, 0, 0, 0),
(15, 'INV00005', 'BR025', '5', 1, '2020-11-06', 1, 350000, 0, 0, 0),
(16, 'INV00005', 'BR027', '5', 1, '2020-11-06', 1, 555000, 0, 0, 0),
(17, 'INV00005', 'BR026', '5', 1, '2020-11-06', 1, 130000, 0, 0, 0),
(18, 'INV00006', 'BR005', '5', 1, '2020-11-10', 1, 460000, 400000, 400000, -60000),
(19, 'INV00007', 'BR005', '5', 1, '2020-11-10', 1, 460000, 400000, 400000, -60000);

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
CREATE TRIGGER `return jumlah hg stok` AFTER DELETE ON `penjualan` FOR EACH ROW BEGIN
UPDATE master_barang SET G_TOTAL=HARGA_JUAL*OLD.JUMLAH_BELI+G_TOTAL WHERE ID_BARANG = OLD.ID_BARANG;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update jumlah hg stok` AFTER INSERT ON `penjualan` FOR EACH ROW BEGIN
UPDATE master_barang SET G_TOTAL=STOK*HARGA_JUAL WHERE ID_BARANG = NEW.ID_BARANG;
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
(1, 'BR001', 0),
(2, 'BR002', 1),
(3, 'BR003', 1),
(4, 'BR003', 0),
(5, 'BR004', 0),
(6, 'BR005', 3),
(7, 'BR006', -5),
(8, 'BR007', 1),
(9, 'BR008', 0),
(10, 'BR009', 0),
(11, 'BR010', 1),
(12, 'BR010', 1),
(13, 'BR011', 0),
(14, 'BR012', 0),
(15, 'BR013', 0),
(16, 'BR014', 0),
(17, 'BR015', 0),
(18, 'BR016', 0),
(19, 'BR017', 0),
(20, 'BR018', 0),
(21, 'BR019', 0),
(22, 'BR020', 0),
(23, 'BR021', 1),
(24, 'BR022', 1),
(25, 'BR023', 1),
(26, 'BR024', 1),
(27, 'BR025', 1),
(28, 'BR026', 1),
(29, 'BR027', 1),
(30, 'BR028', 1),
(32, 'BR029', 0);

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
(20205, 'Win Komputer', 'ITC', '08323383830'),
(20206, 'Bismar', 'Bendul merisi airdas ', ''),
(20207, 'Tokopedia', '', ''),
(20208, 'Oke One Computer', 'Ngagel', ''),
(20209, 'Stok', '', ''),
(20210, 'CM Computer', 'ITC', ''),
(20211, 'DB Click', 'ITC', '');

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
  MODIFY `ID_KATEGORI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `produk_terjual`
--
ALTER TABLE `produk_terjual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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

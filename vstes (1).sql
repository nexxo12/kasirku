-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2020 at 05:54 PM
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
(7, 'INV00004', 'BR021', '2020-11-06', '2021-11-06', ''),
(8, 'INV00004', 'BR022', '2020-11-06', '2021-11-06', ''),
(9, 'INV00005', 'BR007', '2020-11-06', '2021-11-06', ''),
(10, 'INV00005', 'BR010', '2020-11-06', '2021-11-06', ''),
(11, 'INV00005', 'BR023', '2020-11-06', '2021-11-06', ''),
(12, 'INV00005', 'BR024', '2020-11-06', '2021-11-06', ''),
(13, 'INV00005', 'BR002', '2020-11-06', '2021-11-06', ''),
(14, 'INV00005', 'BR028', '2020-11-06', '2021-11-06', ''),
(15, 'INV00005', 'BR025', '2020-11-06', '2021-11-06', ''),
(16, 'INV00005', 'BR027', '2020-11-06', '2021-11-06', ''),
(17, 'INV00005', 'BR026', '2020-11-06', '2021-11-06', ''),
(18, 'INV00006', 'BR005', '2020-11-10', '2021-11-10', ''),
(19, 'INV00007', 'BR005', '2020-11-10', '2021-11-10', ''),
(20, 'INV00008', 'BR005', '2020-11-11', '2021-11-11', ''),
(21, 'INV00009', 'BR030', '2020-11-16', '2021-11-16', ''),
(22, 'INV00009', 'BR033', '2020-11-16', '2021-11-16', ''),
(23, 'INV00009', 'BR005', '2020-11-16', '2021-11-16', ''),
(24, 'INV00009', 'BR016', '2020-11-16', '2021-11-16', ''),
(25, 'INV00009', 'BR028', '2020-11-16', '2021-11-16', ''),
(26, 'INV00009', 'BR032', '2020-11-16', '2021-11-16', ''),
(27, 'INV00009', 'BR004', '2020-11-16', '2021-11-16', ''),
(28, 'INV00009', 'BR014', '2020-11-16', '2021-11-16', ''),
(29, 'INV00010', 'BR035', '2020-11-17', '2021-11-17', ''),
(30, 'INV00011', 'BR008', '2020-11-17', '2020-11-24', ''),
(31, 'INV00012', 'BR036', '2020-11-19', '2021-11-19', ''),
(32, 'INV00012', 'BR033', '2020-11-19', '2021-11-19', ''),
(33, 'INV00012', 'BR038', '2020-11-19', '2021-11-19', ''),
(34, 'INV00012', 'BR039', '2020-11-19', '2021-11-19', ''),
(35, 'INV00012', 'BR037', '2020-11-19', '2021-11-19', ''),
(36, 'INV00013', 'BR007', '2020-11-21', '0000-00-00', ''),
(37, 'INV00013', 'BR003', '2020-11-21', '0000-00-00', ''),
(38, 'INV00013', 'BR033', '2020-11-21', '0000-00-00', ''),
(39, 'INV00013', 'BR039', '2020-11-21', '0000-00-00', ''),
(40, 'INV00013', 'BR041', '2020-11-21', '0000-00-00', ''),
(41, 'INV00014', 'BR001', '2020-11-29', '0000-00-00', ''),
(42, 'INV00014', 'BR005', '2020-11-29', '0000-00-00', ''),
(43, 'INV00014', 'BR009', '2020-11-29', '0000-00-00', ''),
(44, 'INV00014', 'BR039', '2020-11-29', '0000-00-00', ''),
(46, 'INV00014', 'BR044', '2020-11-29', '0000-00-00', ''),
(47, 'INV00014', 'BR043', '2020-11-29', '0000-00-00', ''),
(48, 'INV00014', 'BR045', '2020-11-29', '0000-00-00', ''),
(49, 'INV00014', 'BR046', '2020-11-29', '0000-00-00', ''),
(50, 'INV00014', 'BR042', '2020-11-29', '0000-00-00', ''),
(51, 'INV00015', 'BR029', '2020-12-04', '0000-00-00', '');

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
('INV00007', '2020-11-10', 'Kingstone HyperX 8GB DDR3-12800', 400000, 'INV/20201110/XX/XI/671590196', 0, 0, 4000),
('INV00008', '2020-11-11', 'Kingstone HyperX 8GB DDR3-12800', 400000, 'INV/20201111/XX/XI/672895014', 0, 0, 4000),
('INV00009', '2020-11-16', 'WD Blue 1TB', 5500000, 'Shopee / 2011165HQBHWD8', 140000, 0, 0),
('INV00010', '2020-11-17', 'Rexus Gladius GX100 Gamepad Wireless Android/PC/PS3', 330000, 'Shopee / 2011165HQBHWD8', 17000, 0, 0),
('INV00011', '2020-11-17', 'PSU Alcatroz Magnum Pro 225 230W', 50000, 'INV/20201116/XX/XI/677052116', 0, 0, 500),
('INV00012', '2020-11-19', 'Proc Intel i3-2120/2100', 2200000, 'Transaksi Offline', 40500, 0, 0),
('INV00013', '2020-11-21', 'Case Futura Black M300 + PSU', 2700000, 'INV/20201121/XX/XI/680546626', 13000, 0, 27000),
('INV00014', '2020-11-29', 'Motherboard FAST H61M 1155', 4835000, 'INV/20201128/XX/XI/686311817', 0, 0, 45500),
('INV00015', '2020-12-04', '\r\n', 56000, '', 0, 0, 0);

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
(NEW.ID_PENJUALAN,NEW.INV_PENJUALAN, NEW.ID_BARANG, NEW.ID_PELANGGAN, NEW.ID_LOGIN, NEW.TANGGAL_TRANSAKSI, NEW.JUMLAH_BELI, NEW.HARGA_AWAL*JUMLAH_BELI, NEW.HARGA_JL*JUMLAH_BELI, NEW.TOTAL_HARGA, NEW.LABA);
        
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
('BR001', 16, 'Totolink USB Wifi Receiver', 1, 'unit', 65000, 65000),
('BR002', 10, 'SSD Pioneer 120GB Sata', 1, 'unit', 340000, 340000),
('BR003', 2, 'VenomRX 4GB DDR3-12800', 0, 'unit', 250000, 0),
('BR004', 17, 'Fan Case LED 12CM', 2, 'unit', 17000, 34000),
('BR005', 2, 'Kingstone HyperX 8GB DDR3-12800', 2, 'unit', 460000, 920000),
('BR007', 1, 'Proc Intel Core i5-2400 + Fan', 6, 'unit', 410000, 2460000),
('BR008', 5, 'PSU Alcatroz Magnum Pro 225 230W', 0, 'unit', 0, 0),
('BR009', 4, 'HDD 3.5 Seagate 500GB', 6, 'unit', 170000, 1020000),
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
('BR028', 6, 'MSI Aero Geforce GT1030 2GB GDDR5', 0, 'unit', 1088000, 0),
('BR029', 17, 'DVD Game Maxell ', 39, 'unit', 2600, 101400),
('BR030', 1, 'Processor Core I7 2600 Sandy Bridge 1155', 0, 'unit', 1325000, 0),
('BR032', 7, 'Cube Gaming Noch - Tempered Glass, ATX, 1x Rainbow RGB Fan', 0, 'unit', 380000, 0),
('BR033', 3, 'VenomRX H61M 1155', 0, 'unit', 585000, 0),
('BR034', 17, 'Vention M02 1M Kabel High Speed HDMI Male to Male - M02', 1, 'unit', 39000, 39000),
('BR035', 17, 'Rexus Gladius GX100 Gamepad Wireless Android/PC/PS3', 0, 'unit', 275000, 0),
('BR036', 1, 'Proc Intel i3-2120/2100', 0, 'unit', 230000, 0),
('BR037', 7, 'Case Buldozer Thanos + PSU', 0, 'unit', 207000, 0),
('BR038', 2, 'RAM Kingstone 8GB DDR3-12800', 0, 'unit', 375000, 0),
('BR039', 10, 'Adata SSD SU650 240GB', 0, 'unit', 419000, 0),
('BR040', 17, 'Mousepad Gel Bantal', 9, 'unit', 3300, 29700),
('BR041', 7, 'Case Futura Black M300 + PSU', 0, 'unit', 275000, 0),
('BR042', 3, 'Motherboard FAST H61M 1155', 1, 'unit', 513000, 513000),
('BR043', 1, 'Proc Intel Core i5-3470 + Fan', 0, 'unit', 622000, 0),
('BR044', 6, 'Shappire Radeon RX 550 4GB DDR5', 0, 'unit', 1265000, 0),
('BR045', 5, 'PSU Infinity 400W 80+', 0, 'unit', 266000, 0),
('BR046', 7, 'Casing Infinity Twin M-ATX + Free 2 Fan', 0, 'unit', 356000, 0);

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
('7', 'Komite Mtsn 1 BWI', 'Jln. Widuri, Banyuwangi', ''),
('8', 'Shopee', '', ''),
('9', 'Pak Hari JNE', 'JNE Bentoel', '');

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
('BL018', 20205, 'BR028', 1, 2, 'unit', 1088000, '2020-11-06'),
('BL019', 20207, 'BR029', 1, 49, 'unit', 2600, '2020-11-12'),
('BL020', 20207, 'BR030', 1, 1, 'unit', 1325000, '2020-11-16'),
('BL021', 20208, 'BR016', 1, 1, 'unit', 395000, '2020-11-16'),
('BL022', 20208, 'BR033', 1, 1, 'unit', 585000, '2020-11-16'),
('BL023', 20205, 'BR032', 1, 1, 'unit', 380000, '2020-11-16'),
('BL024', 20205, 'BR014', 1, 1, 'unit', 630000, '2020-11-16'),
('BL025', 20207, 'BR034', 1, 1, 'unit', 39000, '2020-11-17'),
('BL026', 20207, 'BR035', 1, 1, 'unit', 275000, '2020-11-17'),
('BL027', 20207, 'BR036', 1, 1, 'unit', 230000, '2020-11-19'),
('BL028', 20207, 'BR037', 1, 1, 'unit', 207000, '2020-11-19'),
('BL029', 20207, 'BR038', 1, 1, 'unit', 375000, '2020-11-19'),
('BL030', 20205, 'BR039', 1, 1, 'unit', 419000, '2020-11-19'),
('BL031', 20208, 'BR033', 1, 1, 'unit', 585000, '2020-11-19'),
('BL032', 20207, 'BR040', 1, 9, 'unit', 3300, '2020-11-19'),
('BL033', 20208, 'BR033', 1, 1, 'unit', 585000, '2020-11-21'),
('BL034', 20208, 'BR041', 1, 1, 'unit', 275000, '2020-11-21'),
('BL035', 20207, 'BR039', 1, 2, 'unit', 435000, '2020-11-21'),
('BL036', 20207, 'BR043', 1, 1, 'unit', 622000, '2020-11-29'),
('BL037', 20207, 'BR042', 1, 2, 'unit', 513000, '2020-11-29'),
('BL038', 20207, 'BR044', 1, 1, 'unit', 1265000, '2020-11-29'),
('BL039', 20207, 'BR045', 1, 1, 'unit', 266000, '2020-11-29'),
('BL040', 20208, 'BR046', 1, 1, 'unit', 356000, '2020-11-29');

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
(19, 'INV00007', 'BR005', '5', 1, '2020-11-10', 1, 460000, 400000, 400000, -60000),
(20, 'INV00008', 'BR005', '5', 1, '2020-11-11', 1, 460000, 400000, 400000, -60000),
(21, 'INV00009', 'BR030', '8', 1, '2020-11-16', 1, 1325000, 5500000, 5500000, 4175000),
(22, 'INV00009', 'BR033', '8', 1, '2020-11-16', 1, 585000, 0, 0, 0),
(23, 'INV00009', 'BR005', '8', 1, '2020-11-16', 1, 460000, 0, 0, 0),
(24, 'INV00009', 'BR016', '8', 1, '2020-11-16', 1, 395000, 0, 0, 0),
(25, 'INV00009', 'BR028', '8', 1, '2020-11-16', 1, 1088000, 0, 0, 0),
(26, 'INV00009', 'BR032', '8', 1, '2020-11-16', 1, 380000, 0, 0, 0),
(27, 'INV00009', 'BR004', '8', 1, '2020-11-16', 1, 17000, 0, 0, 0),
(28, 'INV00009', 'BR014', '8', 1, '2020-11-16', 1, 630000, 0, 0, 0),
(29, 'INV00010', 'BR035', '8', 1, '2020-11-17', 1, 275000, 330000, 330000, 55000),
(30, 'INV00011', 'BR008', '5', 1, '2020-11-17', 1, 0, 50000, 50000, 50000),
(31, 'INV00012', 'BR036', '9', 1, '2020-11-19', 1, 230000, 350000, 350000, 120000),
(32, 'INV00012', 'BR033', '9', 1, '2020-11-19', 1, 585000, 600000, 600000, 15000),
(33, 'INV00012', 'BR038', '9', 1, '2020-11-19', 1, 375000, 475000, 475000, 100000),
(34, 'INV00012', 'BR039', '9', 1, '2020-11-19', 1, 419000, 475000, 475000, 56000),
(35, 'INV00012', 'BR037', '9', 1, '2020-11-19', 1, 207000, 300000, 300000, 93000),
(36, 'INV00013', 'BR007', '5', 1, '2020-11-21', 1, 410000, 550000, 550000, 140000),
(37, 'INV00013', 'BR003', '5', 1, '2020-11-21', 2, 500000, 700000, 700000, 200000),
(38, 'INV00013', 'BR033', '5', 1, '2020-11-21', 1, 585000, 685000, 685000, 100000),
(39, 'INV00013', 'BR039', '5', 1, '2020-11-21', 1, 435000, 480000, 480000, 45000),
(40, 'INV00013', 'BR041', '5', 1, '2020-11-21', 1, 275000, 285000, 285000, 10000),
(41, 'INV00014', 'BR001', '1', 1, '2020-11-29', 1, 65000, 85000, 85000, 20000),
(42, 'INV00014', 'BR005', '1', 1, '2020-11-29', 1, 460000, 500000, 500000, 40000),
(43, 'INV00014', 'BR009', '1', 1, '2020-11-29', 1, 170000, 300000, 300000, 130000),
(44, 'INV00014', 'BR039', '1', 1, '2020-11-29', 1, 435000, 480000, 480000, 45000),
(46, 'INV00014', 'BR044', '1', 1, '2020-11-29', 1, 1265000, 1465000, 1465000, 200000),
(47, 'INV00014', 'BR043', '1', 1, '2020-11-29', 1, 622000, 685000, 685000, 63000),
(48, 'INV00014', 'BR045', '1', 1, '2020-11-29', 1, 266000, 366000, 366000, 100000),
(49, 'INV00014', 'BR046', '1', 1, '2020-11-29', 1, 356000, 360000, 360000, 4000),
(50, 'INV00014', 'BR042', '1', 1, '2020-11-29', 1, 513000, 594000, 594000, 81000),
(51, 'INV00015', 'BR029', '5', 1, '2020-12-04', 10, 26000, 56000, 56000, 30000);

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
(1, 'BR001', 1),
(2, 'BR002', 1),
(3, 'BR003', 3),
(4, 'BR003', 2),
(5, 'BR004', 1),
(6, 'BR005', 6),
(8, 'BR007', 2),
(9, 'BR008', 1),
(10, 'BR009', 1),
(11, 'BR010', 1),
(12, 'BR010', 1),
(13, 'BR011', 0),
(14, 'BR012', 0),
(15, 'BR013', 0),
(16, 'BR014', 1),
(17, 'BR015', 0),
(18, 'BR016', 1),
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
(30, 'BR028', 2),
(32, 'BR029', 10),
(34, 'BR030', 1),
(35, 'BR031', 0),
(36, 'BR032', 1),
(37, 'BR033', 3),
(38, 'BR034', 0),
(39, 'BR035', 1),
(40, 'BR036', 1),
(41, 'BR037', 1),
(42, 'BR038', 1),
(43, 'BR039', 3),
(44, 'BR040', 0),
(45, 'BR041', 1),
(46, 'BR042', 1),
(47, 'BR043', 1),
(48, 'BR044', 1),
(49, 'BR045', 1),
(50, 'BR046', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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

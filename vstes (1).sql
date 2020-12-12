-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 04:46 PM
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
(51, 'INV00015', 'BR029', '2020-12-04', '0000-00-00', ''),
(52, 'INV00016', 'BR005', '2020-12-05', '0000-00-00', ''),
(53, 'INV00017', 'BR001', '2020-12-06', '0000-00-00', ''),
(54, 'INV00017', 'BR053', '2020-12-06', '0000-00-00', ''),
(55, 'INV00017', 'BR052', '2020-12-06', '0000-00-00', ''),
(56, 'INV00017', 'BR027', '2020-12-06', '0000-00-00', ''),
(57, 'INV00017', 'BR048', '2020-12-06', '0000-00-00', ''),
(58, 'INV00017', 'BR051', '2020-12-06', '0000-00-00', ''),
(59, 'INV00017', 'BR049', '2020-12-06', '0000-00-00', ''),
(60, 'INV00017', 'BR050', '2020-12-06', '0000-00-00', ''),
(61, 'INV00017', 'BR054', '2020-12-06', '0000-00-00', ''),
(62, 'INV00017', 'BR009', '2020-12-06', '0000-00-00', ''),
(63, 'INV00018', 'BR057', '2020-12-10', '0000-00-00', ''),
(66, 'INV00018', 'BR056', '2020-12-10', '0000-00-00', ''),
(67, 'INV00018', 'BR069', '2020-12-10', '0000-00-00', ''),
(71, 'INV00018', 'BR039', '2020-12-10', '0000-00-00', ''),
(72, 'INV00018', 'BR001', '2020-12-10', '0000-00-00', ''),
(73, 'INV00018', 'BR059', '2020-12-10', '0000-00-00', ''),
(74, 'INV00018', 'BR067', '2020-12-10', '0000-00-00', ''),
(75, 'INV00018', 'BR072', '2020-12-10', '0000-00-00', ''),
(76, 'INV00018', 'BR055', '2020-12-10', '0000-00-00', ''),
(77, 'INV00018', 'BR058', '2020-12-10', '0000-00-00', ''),
(78, 'INV00018', 'BR071', '2020-12-10', '0000-00-00', ''),
(79, 'INV00019', 'BR007', '2020-12-11', '0000-00-00', ''),
(80, 'INV00019', 'BR042', '2020-12-11', '0000-00-00', ''),
(81, 'INV00019', 'BR010', '2020-12-11', '0000-00-00', ''),
(82, 'INV00019', 'BR002', '2020-12-11', '0000-00-00', ''),
(83, 'INV00019', 'BR009', '2020-12-11', '0000-00-00', ''),
(84, 'INV00019', 'BR074', '2020-12-11', '0000-00-00', ''),
(86, 'INV00019', 'BR073', '2020-12-11', '0000-00-00', ''),
(87, 'INV00019', 'BR001', '2020-12-11', '0000-00-00', ''),
(88, 'INV00019', 'BR046', '2020-12-11', '0000-00-00', ''),
(91, 'INV00020', 'BR062', '2020-12-11', '0000-00-00', ''),
(92, 'INV00020', 'BR017', '2020-12-11', '0000-00-00', ''),
(94, 'INV00020', 'BR065', '2020-12-11', '0000-00-00', ''),
(95, 'INV00020', 'BR066', '2020-12-11', '0000-00-00', ''),
(96, 'INV00020', 'BR075', '2020-12-11', '0000-00-00', ''),
(97, 'INV00020', 'BR077', '2020-12-11', '0000-00-00', ''),
(98, 'INV00020', 'BR063', '2020-12-11', '0000-00-00', ''),
(99, 'INV00020', 'BR070', '2020-12-11', '0000-00-00', ''),
(100, 'INV00020', 'BR061', '2020-12-11', '0000-00-00', ''),
(101, 'INV00020', 'BR060', '2020-12-11', '0000-00-00', '');

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
  `potongan` double DEFAULT NULL,
  `cashback` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inv_penjualan`
--

INSERT INTO `inv_penjualan` (`id_inv`, `TGL_TRX`, `BARANG`, `GRAND_TOTAL`, `inv_ol`, `ongkir`, `laba_ongkir`, `potongan`, `cashback`) VALUES
('INV00003', '2020-11-05', 'Kingstone HyperX 8GB DDR3-12800', 400000, 'INV/20201105/XX/XI/668438313', 0, 0, 4000, NULL),
('INV00004', '2020-11-06', 'Printer Canon G2010 All in One G 2010 - COMPETIBLE INK', 9265000, 'Transaksi Offline', 140000, 0, 0, 0),
('INV00005', '2020-11-06', 'Proc Intel Core i5-2400 + Fan', 5385000, 'INV/20201106/XX/XI/668859740', 0, 0, 53850, NULL),
('INV00006', '2020-11-10', 'Kingstone HyperX 8GB DDR3-12800', 400000, 'INV/20201109/XX/XI/671415218', 0, 0, 4000, NULL),
('INV00007', '2020-11-10', 'Kingstone HyperX 8GB DDR3-12800', 400000, 'INV/20201110/XX/XI/671590196', 0, 0, 4000, NULL),
('INV00008', '2020-11-11', 'Kingstone HyperX 8GB DDR3-12800', 400000, 'INV/20201111/XX/XI/672895014', 0, 0, 4000, NULL),
('INV00009', '2020-11-16', 'WD Blue 1TB', 5500000, 'Shopee / 2011165HQBHWD8', 140000, 0, 0, NULL),
('INV00010', '2020-11-17', 'Rexus Gladius GX100 Gamepad Wireless Android/PC/PS3', 330000, 'Shopee / 2011165HQBHWD8', 17000, 0, 0, NULL),
('INV00011', '2020-11-17', 'PSU Alcatroz Magnum Pro 225 230W', 50000, 'INV/20201116/XX/XI/677052116', 0, 0, 500, NULL),
('INV00012', '2020-11-19', 'Proc Intel i3-2120/2100', 2200000, 'Transaksi Offline', 40500, 0, 0, NULL),
('INV00013', '2020-11-21', 'Case Futura Black M300 + PSU', 2700000, 'INV/20201121/XX/XI/680546626', 13000, 0, 27000, NULL),
('INV00014', '2020-11-29', 'Motherboard FAST H61M 1155', 4835000, 'INV/20201128/XX/XI/686311817', 0, 0, 45500, NULL),
('INV00015', '2020-12-04', 'DVD Game Maxell', 56000, 'INV/20201204/XX/XII/690928296', 0, 0, 560, 0),
('INV00016', '2020-12-05', 'Kingstone HyperX 8GB DDR3-12800', 400000, 'INV/20201205/XX/XII/691852517', 0, 0, 4000, NULL),
('INV00017', '2020-12-06', 'HDD 3.5 Seagate 500GB', 7345000, 'INV/20201205/XX/XII/692210398', 67000, 0, 73450, 235609),
('INV00018', '2020-12-10', 'Intel Core i3 10100F 3.6Ghz (1200)', 21780000, 'INV/20201209/XX/XII/695120342', 115000, 0, 217800, 594780),
('INV00019', '2020-12-11', 'Casing Infinity Twin M-ATX + Free 2 Fan', 4060000, 'BL/203030050526', 28000, 0, 102000, 103688),
('INV00020', '2020-12-11', 'Intel Core i7 10700F 2.9Ghz Up To 4.6Ghz Box', 17558000, 'INV/20201208/XX/XII/694651988', 77700, 0, 175580, 677737);

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
('BR001', 16, 'Totolink USB Wifi Receiver', 5, 'unit', 60000, 300000),
('BR002', 10, 'SSD Pioneer 120GB Sata', 0, 'unit', 340000, 0),
('BR003', 2, 'VenomRX 4GB DDR3-12800', 0, 'unit', 250000, 0),
('BR004', 17, 'Fan Case LED 12CM', 2, 'unit', 17000, 34000),
('BR005', 2, 'Kingstone HyperX 8GB DDR3-12800', 1, 'unit', 460000, 460000),
('BR007', 1, 'Proc Intel Core i5-2400 + Fan', 5, 'unit', 410000, 2050000),
('BR008', 5, 'PSU Alcatroz Magnum Pro 225 230W', 0, 'unit', 0, 0),
('BR009', 4, 'HDD 3.5 Seagate 500GB', 4, 'unit', 170000, 680000),
('BR010', 2, 'Kingstone HyperX 8GB DDR3-12800 (2)', 9, 'unit', 360000, 3240000),
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
('BR027', 5, 'PSU Deepcool 500W 80+', 0, 'unit', 545000, 0),
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
('BR039', 10, 'Adata SSD SU650 240GB', 0, 'unit', 401000, 0),
('BR040', 17, 'Mousepad Gel Bantal', 9, 'unit', 3300, 29700),
('BR041', 7, 'Case Futura Black M300 + PSU', 0, 'unit', 275000, 0),
('BR042', 3, 'Motherboard FAST H61M 1155', 0, 'unit', 513000, 0),
('BR043', 1, 'Proc Intel Core i5-3470 + Fan', 5, 'unit', 553000, 2765000),
('BR044', 6, 'Shappire Radeon RX 550 4GB DDR5', 0, 'unit', 1265000, 0),
('BR045', 5, 'PSU Infinity 400W 80+', 0, 'unit', 266000, 0),
('BR046', 7, 'Casing Infinity Twin M-ATX + Free 2 Fan', 0, 'unit', 356000, 0),
('BR047', 2, 'Kingstone 4GB DDR3-12800 Longdim', 10, 'unit', 180000, 1800000),
('BR048', 7, 'Cube Gaming Kellva White - Tempered Glass, mATX, 1x Black Fan', 0, 'unit', 410000, 0),
('BR049', 2, 'GEIL DDR4 Evo Potenza PC21330 2666MHz 8GB (2x4GB)', 0, 'unit', 520000, 0),
('BR050', 3, 'GALAX A320M (AM4, AMD Promontory A320, DDR4, USB 3.1, SATA3)', 0, 'unit', 690000, 0),
('BR051', 1, 'AMD AM4 Ryzen 5 3400G (Radeon Vega 11) 3.7Ghz', 0, 'unit', 2850000, 0),
('BR052', 8, 'LED LG 20MK400H HDMI', 0, 'unit', 1000000, 0),
('BR053', 9, 'AOC Keyboard Mouse Combo Gaming KM410', 0, 'unit', 172000, 0),
('BR054', 10, 'Adata SSD 120GB', 0, 'unit', 250000, 0),
('BR055', 7, 'Casing PowerUP Optimax + PSU', 0, 'unit', 220000, 0),
('BR056', 8, 'LED LG 19M38', 0, 'unit', 875000, 0),
('BR057', 1, 'Intel Core i3 10100F 3.6Ghz (1200)', 0, 'unit', 1350000, 0),
('BR058', 3, 'Galax H410M Elite', 0, 'unit', 890000, 0),
('BR059', 2, 'Klevv DDR4 Value Series PC21330 2666MHz 8GB (1x8GB)', 0, 'unit', 450000, 0),
('BR060', 1, 'Intel Core i7 10700F 2.9Ghz Up To 4.6Ghz Box', 0, 'unit', 4670000, 0),
('BR061', 3, 'Asrock B460 Steel Legend LGA 1200', 0, 'unit', 2100000, 0),
('BR062', 17, 'CUBE GAMING STORM - SINGLE FAN 12CM - Universal Socket', 0, 'unit', 370000, 0),
('BR063', 17, 'CUBE GAMING 12CM FAN INNER LED AUTOFLOW RGB', 0, 'unit', 80000, 0),
('BR064', 7, 'Cube Gaming Frins WHITE - Tempered Glass, ATX, 3x Rainbow RGB Fan', 0, 'unit', 490000, 0),
('BR065', 10, 'Adata SX6000 256GB NVME M.2', 0, 'unit', 580000, 0),
('BR066', 10, 'Klevv SSD Cras C710 512GB M.2 NVME PCIE GEN3X4', 0, 'unit', 950000, 0),
('BR067', 2, 'Team Elite DDR4 2666 8GB PC 21000', 0, 'unit', 490000, 0),
('BR068', 5, 'Deepcool Power Supply DN650 650W 80+ Sleeve Cable DN-650', 0, 'unit', 0, 0),
('BR069', 9, 'Logitech MK120 Keyboard + Mouse', 0, 'unit', 141500, 0),
('BR070', 6, 'Inno3D RTX 2060 6GB Twin 2X', 0, 'unit', 4500000, 0),
('BR071', 6, 'VGA Nvidia Geforce GT 210 1GB DDR3', 0, 'unit', 360000, 0),
('BR072', 3, 'Gigabyte H410M-S2 (1200)', 0, 'unit', 1005000, 0),
('BR073', 5, 'Paradox Gaming PSU ATX 450w', 0, 'unit', 285000, 0),
('BR074', 6, 'Colorful GT 1030 2GB DDR5', 1, 'unit', 1055000, 1055000),
('BR075', 7, 'Case Venomrx Samurai', 0, 'unit', 425000, 0),
('BR076', 17, 'INFORCE COOLING FAN CASING 120MM 12 CM RGB CPU COOLER - RAINBOW', 2, 'unit', 36000, 72000),
('BR077', 5, 'Aerocool Power Supply LUX RGB M 650W BRONZE Semi Modular', 0, 'unit', 650000, 0);

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
('10', 'Bukalapak', '', ''),
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
  `TOTAL_BELI` double DEFAULT NULL,
  `TGL_BELI` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian_barang`
--

INSERT INTO `pembelian_barang` (`ID_BELI`, `ID_SUPP`, `ID_BARANG`, `ID_LOGIN`, `JUMLAH`, `SATUAN`, `HARGA_BELI`, `TOTAL_BELI`, `TGL_BELI`) VALUES
('BL001', 20206, 'BR001', 1, 2, 'unit', 65000, NULL, '2020-11-04'),
('BL002', 20207, 'BR002', 1, 2, 'unit', 340000, NULL, '2020-11-04'),
('BL003', 20208, 'BR003', 1, 2, 'unit', 250000, NULL, '2020-11-04'),
('BL004', 20207, 'BR004', 1, 3, '3', 17000, NULL, '2020-11-04'),
('BL005', 20207, 'BR005', 1, 8, 'unit', 460000, NULL, '2020-11-04'),
('BL006', 20201, 'BR007', 1, 8, 'unit', 410000, NULL, '2020-11-04'),
('BL007', 20207, 'BR008', 1, 1, 'unit', 0, NULL, '2020-11-04'),
('BL008', 20208, 'BR009', 1, 7, 'unit', 170000, NULL, '2020-11-04'),
('BL009', 20209, 'BR010', 1, 1, 'unit', 0, NULL, '2020-11-04'),
('BL010', 20211, 'BR021', 1, 1, 'unit', 6658000, NULL, '2020-11-06'),
('BL011', 20207, 'BR022', 1, 1, 'unit', 1647000, NULL, '2020-11-06'),
('BL012', 20207, 'BR010', 1, 0, 'unit', 320000, NULL, '2020-11-06'),
('BL013', 20208, 'BR023', 1, 1, 'unit', 1300000, NULL, '2020-11-06'),
('BL014', 20208, 'BR024', 1, 1, 'unit', 165000, NULL, '2020-11-06'),
('BL015', 20208, 'BR025', 1, 1, 'unit', 350000, NULL, '2020-11-06'),
('BL016', 20208, 'BR026', 1, 1, 'unit', 130000, NULL, '2020-11-06'),
('BL017', 20208, 'BR027', 1, 1, 'unit', 555000, NULL, '2020-11-06'),
('BL018', 20205, 'BR028', 1, 2, 'unit', 1088000, NULL, '2020-11-06'),
('BL019', 20207, 'BR029', 1, 49, 'unit', 2600, NULL, '2020-11-12'),
('BL020', 20207, 'BR030', 1, 1, 'unit', 1325000, NULL, '2020-11-16'),
('BL021', 20208, 'BR016', 1, 1, 'unit', 395000, NULL, '2020-11-16'),
('BL022', 20208, 'BR033', 1, 1, 'unit', 585000, NULL, '2020-11-16'),
('BL023', 20205, 'BR032', 1, 1, 'unit', 380000, NULL, '2020-11-16'),
('BL024', 20205, 'BR014', 1, 1, 'unit', 630000, NULL, '2020-11-16'),
('BL025', 20207, 'BR034', 1, 1, 'unit', 39000, NULL, '2020-11-17'),
('BL026', 20207, 'BR035', 1, 1, 'unit', 275000, NULL, '2020-11-17'),
('BL027', 20207, 'BR036', 1, 1, 'unit', 230000, NULL, '2020-11-19'),
('BL028', 20207, 'BR037', 1, 1, 'unit', 207000, NULL, '2020-11-19'),
('BL029', 20207, 'BR038', 1, 1, 'unit', 375000, NULL, '2020-11-19'),
('BL030', 20205, 'BR039', 1, 1, 'unit', 419000, NULL, '2020-11-19'),
('BL031', 20208, 'BR033', 1, 1, 'unit', 585000, NULL, '2020-11-19'),
('BL032', 20207, 'BR040', 1, 9, 'unit', 3300, NULL, '2020-11-19'),
('BL033', 20208, 'BR033', 1, 1, 'unit', 585000, NULL, '2020-11-21'),
('BL034', 20208, 'BR041', 1, 1, 'unit', 275000, NULL, '2020-11-21'),
('BL035', 20207, 'BR039', 1, 2, 'unit', 435000, NULL, '2020-11-21'),
('BL036', 20207, 'BR043', 1, 1, 'unit', 622000, NULL, '2020-11-29'),
('BL037', 20207, 'BR042', 1, 2, 'unit', 513000, NULL, '2020-11-29'),
('BL038', 20207, 'BR044', 1, 1, 'unit', 1265000, NULL, '2020-11-29'),
('BL039', 20207, 'BR045', 1, 1, 'unit', 266000, NULL, '2020-11-29'),
('BL040', 20208, 'BR046', 1, 1, 'unit', 356000, NULL, '2020-11-29'),
('BL041', 20201, 'BR043', 1, 5, 'unit', 553000, 2765000, '2020-12-05'),
('BL042', 20207, 'BR010', 1, 10, 'unit', 360000, 3600000, '2020-12-05'),
('BL043', 20207, 'BR047', 1, 10, 'unit', 180000, 1800000, '2020-12-05'),
('BL044', 20205, 'BR048', 1, 1, 'unit', 410000, 410000, '2020-12-06'),
('BL045', 20205, 'BR049', 1, 1, 'unit', 520000, 520000, '2020-12-06'),
('BL046', 20205, 'BR050', 1, 1, 'unit', 690000, 690000, '2020-12-06'),
('BL047', 20205, 'BR051', 1, 1, 'unit', 2850000, 2850000, '2020-12-06'),
('BL048', 20210, 'BR052', 1, 1, 'unit', 1000000, 1000000, '2020-12-06'),
('BL049', 20212, 'BR053', 1, 1, 'unit', 172000, 172000, '2020-12-06'),
('BL050', 20210, 'BR027', 1, 1, 'unit', 545000, 545000, '2020-12-06'),
('BL051', 20205, 'BR054', 1, 1, 'unit', 250000, 250000, '2020-12-06'),
('BL052', 20206, 'BR056', 1, 4, 'unit', 875000, 3500000, '2020-12-10'),
('BL053', 20207, 'BR055', 1, 4, 'unit', 220000, 880000, '2020-12-10'),
('BL054', 20210, 'BR057', 1, 4, 'unit', 1350000, 5400000, '2020-12-10'),
('BL055', 20207, 'BR069', 1, 4, 'unit', 141500, 566000, '2020-12-10'),
('BL056', 20207, 'BR070', 1, 1, 'unit', 4500000, 4500000, '2020-12-10'),
('BL057', 20208, 'BR071', 1, 4, 'unit', 360000, 1440000, '2020-12-10'),
('BL058', 20206, 'BR001', 1, 10, 'unit', 60000, 600000, '2020-12-10'),
('BL059', 20205, 'BR058', 1, 3, 'unit', 890000, 2670000, '2020-12-10'),
('BL060', 20205, 'BR059', 1, 2, 'unit', 450000, 900000, '2020-12-10'),
('BL061', 20210, 'BR067', 1, 2, 'unit', 490000, 980000, '2020-12-10'),
('BL062', 20205, 'BR039', 1, 4, 'unit', 401000, 1604000, '2020-12-10'),
('BL063', 20210, 'BR072', 1, 1, 'unit', 1005000, 1005000, '2020-12-10'),
('BL064', 20210, 'BR074', 1, 2, 'unit', 1055000, 2110000, '2020-12-11'),
('BL065', 20210, 'BR073', 1, 1, 'unit', 285000, 285000, '2020-12-11'),
('BL066', 20208, 'BR046', 1, 1, 'unit', 355000, 355000, '2020-12-11'),
('BL067', 20205, 'BR060', 1, 1, 'unit', 4670000, 4670000, '2020-12-11'),
('BL068', 20205, 'BR062', 1, 1, 'unit', 370000, 370000, '2020-12-11'),
('BL069', 20205, 'BR017', 1, 1, 'unit', 980000, 980000, '2020-12-11'),
('BL070', 20205, 'BR061', 1, 1, 'unit', 2100000, 2100000, '2020-12-11'),
('BL071', 20205, 'BR065', 1, 1, 'unit', 580000, 580000, '2020-12-11'),
('BL072', 20205, 'BR066', 1, 1, 'unit', 950000, 950000, '2020-12-11'),
('BL073', 20205, 'BR063', 1, 1, 'unit', 80000, 80000, '2020-12-11'),
('BL074', 20208, 'BR075', 1, 1, 'unit', 425000, 425000, '2020-12-11'),
('BL075', 20207, 'BR076', 1, 2, 'unit', 36000, 72000, '2020-12-11'),
('BL076', 20207, 'BR077', 1, 1, 'unit', 650000, 650000, '2020-12-11');

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
(51, 'INV00015', 'BR029', '5', 1, '2020-12-04', 10, 26000, 56000, 56000, 30000),
(52, 'INV00016', 'BR005', '5', 1, '2020-12-05', 1, 460000, 400000, 400000, -60000),
(53, 'INV00017', 'BR001', '5', 1, '2020-12-06', 1, 65000, 70000, 70000, 5000),
(54, 'INV00017', 'BR053', '5', 1, '2020-12-06', 1, 172000, 250000, 250000, 78000),
(55, 'INV00017', 'BR052', '5', 1, '2020-12-06', 1, 1000000, 1090000, 1090000, 90000),
(56, 'INV00017', 'BR027', '5', 1, '2020-12-06', 1, 545000, 585000, 585000, 40000),
(57, 'INV00017', 'BR048', '5', 1, '2020-12-06', 1, 410000, 550000, 550000, 140000),
(58, 'INV00017', 'BR051', '5', 1, '2020-12-06', 1, 2850000, 2950000, 2950000, 100000),
(59, 'INV00017', 'BR049', '5', 1, '2020-12-06', 1, 520000, 650000, 650000, 130000),
(60, 'INV00017', 'BR050', '5', 1, '2020-12-06', 1, 690000, 740000, 740000, 50000),
(61, 'INV00017', 'BR054', '5', 1, '2020-12-06', 1, 250000, 260000, 260000, 10000),
(62, 'INV00017', 'BR009', '5', 1, '2020-12-06', 1, 170000, 200000, 200000, 30000),
(63, 'INV00018', 'BR057', '5', 1, '2020-12-10', 4, 5400000, 5800000, 5800000, 400000),
(66, 'INV00018', 'BR056', '5', 1, '2020-12-10', 4, 3500000, 3560000, 3560000, 60000),
(67, 'INV00018', 'BR069', '5', 1, '2020-12-10', 4, 566000, 600000, 600000, 34000),
(71, 'INV00018', 'BR039', '5', 1, '2020-12-10', 4, 1604000, 1900000, 1900000, 296000),
(72, 'INV00018', 'BR001', '5', 1, '2020-12-10', 4, 240000, 0, 0, 0),
(73, 'INV00018', 'BR059', '5', 1, '2020-12-10', 2, 900000, 1060000, 1060000, 160000),
(74, 'INV00018', 'BR067', '5', 1, '2020-12-10', 2, 980000, 1160000, 1160000, 180000),
(75, 'INV00018', 'BR072', '5', 1, '2020-12-10', 1, 1005000, 1050000, 1050000, 45000),
(76, 'INV00018', 'BR055', '5', 1, '2020-12-10', 4, 880000, 1520000, 1520000, 640000),
(77, 'INV00018', 'BR058', '5', 1, '2020-12-10', 3, 2670000, 3000000, 3000000, 330000),
(78, 'INV00018', 'BR071', '5', 1, '2020-12-10', 4, 1440000, 2130000, 2130000, 690000),
(79, 'INV00019', 'BR007', '10', 1, '2020-12-11', 1, 410000, 590000, 590000, 180000),
(80, 'INV00019', 'BR042', '10', 1, '2020-12-11', 1, 513000, 590000, 590000, 77000),
(81, 'INV00019', 'BR010', '10', 1, '2020-12-11', 1, 360000, 460000, 460000, 100000),
(82, 'INV00019', 'BR002', '10', 1, '2020-12-11', 1, 340000, 260000, 260000, -80000),
(83, 'INV00019', 'BR009', '10', 1, '2020-12-11', 1, 170000, 220000, 220000, 50000),
(84, 'INV00019', 'BR074', '10', 1, '2020-12-11', 1, 1055000, 1150000, 1150000, 95000),
(86, 'INV00019', 'BR073', '10', 1, '2020-12-11', 1, 285000, 350000, 350000, 65000),
(87, 'INV00019', 'BR001', '10', 1, '2020-12-11', 1, 60000, 70000, 70000, 10000),
(88, 'INV00019', 'BR046', '10', 1, '2020-12-11', 1, 355000, 370000, 370000, 15000),
(91, 'INV00020', 'BR062', '5', 1, '2020-12-11', 1, 370000, 470000, 470000, 100000),
(92, 'INV00020', 'BR017', '5', 1, '2020-12-11', 1, 980000, 1180000, 1180000, 200000),
(94, 'INV00020', 'BR065', '5', 1, '2020-12-11', 1, 580000, 590000, 590000, 10000),
(95, 'INV00020', 'BR066', '5', 1, '2020-12-11', 1, 950000, 990000, 990000, 40000),
(96, 'INV00020', 'BR075', '5', 1, '2020-12-11', 1, 425000, 525000, 525000, 100000),
(97, 'INV00020', 'BR077', '5', 1, '2020-12-11', 1, 650000, 750000, 750000, 100000),
(98, 'INV00020', 'BR063', '5', 1, '2020-12-11', 1, 80000, 90000, 90000, 10000),
(99, 'INV00020', 'BR070', '5', 1, '2020-12-11', 1, 4500000, 5750000, 5750000, 1250000),
(100, 'INV00020', 'BR061', '5', 1, '2020-12-11', 1, 2100000, 2343000, 2343000, 243000),
(101, 'INV00020', 'BR060', '5', 1, '2020-12-11', 1, 4670000, 4870000, 4870000, 200000);

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
(1, 'BR001', 7),
(2, 'BR002', 2),
(3, 'BR003', 3),
(4, 'BR003', 2),
(5, 'BR004', 1),
(6, 'BR005', 7),
(8, 'BR007', 3),
(9, 'BR008', 1),
(10, 'BR009', 3),
(11, 'BR010', 2),
(12, 'BR010', 2),
(13, 'BR011', 0),
(14, 'BR012', 0),
(15, 'BR013', 0),
(16, 'BR014', 1),
(17, 'BR015', 0),
(18, 'BR016', 1),
(19, 'BR017', 1),
(20, 'BR018', 0),
(21, 'BR019', 0),
(22, 'BR020', 0),
(23, 'BR021', 1),
(24, 'BR022', 1),
(25, 'BR023', 1),
(26, 'BR024', 1),
(27, 'BR025', 1),
(28, 'BR026', 1),
(29, 'BR027', 2),
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
(43, 'BR039', 7),
(44, 'BR040', 0),
(45, 'BR041', 1),
(46, 'BR042', 2),
(47, 'BR043', 1),
(48, 'BR044', 1),
(49, 'BR045', 1),
(50, 'BR046', 2),
(51, 'BR047', 0),
(52, 'BR048', 1),
(53, 'BR049', 1),
(54, 'BR050', 1),
(55, 'BR051', 1),
(56, 'BR052', 1),
(57, 'BR053', 1),
(58, 'BR054', 1),
(59, 'BR055', 4),
(60, 'BR056', 4),
(61, 'BR057', 4),
(62, 'BR058', 3),
(63, 'BR059', 2),
(64, 'BR060', 1),
(65, 'BR061', 1),
(66, 'BR062', 1),
(67, 'BR063', 1),
(68, 'BR064', 0),
(69, 'BR065', 1),
(70, 'BR066', 1),
(71, 'BR067', 2),
(72, 'BR068', 0),
(73, 'BR069', 4),
(74, 'BR070', 1),
(75, 'BR071', 4),
(76, 'BR072', 1),
(77, 'BR073', 1),
(78, 'BR074', 1),
(79, 'BR075', 1),
(80, 'BR076', 0),
(81, 'BR077', 1);

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
(20211, 'DB Click', 'ITC', ''),
(20212, 'IT SHOP', 'ITC', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

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

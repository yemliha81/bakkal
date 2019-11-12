-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 13 Eyl 2019, 12:41:45
-- Sunucu sürümü: 10.1.40-MariaDB
-- PHP Sürümü: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bakkal_db`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `barcodes_table`
--

CREATE TABLE `barcodes_table` (
  `id` int(11) NOT NULL,
  `ttt` varchar(50) NOT NULL,
  `barcode` bigint(14) DEFAULT NULL,
  `pro_name` varchar(255) DEFAULT NULL,
  `test` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `days_table`
--

CREATE TABLE `days_table` (
  `day_id` int(11) NOT NULL,
  `day_start_time` bigint(20) NOT NULL,
  `day_end_time` bigint(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `days_table`
--

INSERT INTO `days_table` (`day_id`, `day_start_time`, `day_end_time`, `status`) VALUES
(1, 1565875773, 1565877840, 0),
(2, 1565877842, 1565877843, 0),
(3, 1565877844, 1565877846, 0),
(4, 1565877847, 1565877848, 0),
(5, 1565877850, 1566183790, 0),
(6, 1566184965, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `orders_table`
--

CREATE TABLE `orders_table` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_insert_time` bigint(20) NOT NULL,
  `order_status` int(11) NOT NULL,
  `total_price` decimal(7,2) NOT NULL,
  `status3` int(11) NOT NULL,
  `status4` int(11) NOT NULL,
  `status5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `orders_table`
--

INSERT INTO `orders_table` (`order_id`, `customer_id`, `order_insert_time`, `order_status`, `total_price`, `status3`, `status4`, `status5`) VALUES
(1, 0, 1566114028, 0, '83.00', 0, 0, 0),
(2, 0, 1566116006, 0, '1.00', 0, 0, 0),
(3, 0, 1566116046, 0, '1.00', 0, 0, 0),
(4, 0, 1566116132, 0, '1.00', 0, 0, 0),
(5, 0, 1566116318, 0, '4.00', 0, 0, 0),
(6, 0, 1566116344, 0, '4.00', 0, 0, 0),
(7, 0, 1566116479, 0, '4.00', 0, 0, 0),
(8, 0, 1566116561, 0, '1.00', 0, 0, 0),
(9, 0, 1566116582, 0, '1.00', 0, 0, 0),
(10, 0, 1566116634, 0, '1.00', 0, 0, 0),
(11, 0, 1566116785, 0, '4.00', 0, 0, 0),
(12, 0, 1566116856, 0, '1.00', 0, 0, 0),
(13, 0, 1566116888, 0, '1.00', 0, 0, 0),
(14, 0, 1566116930, 0, '1.00', 0, 0, 0),
(15, 0, 1566116976, 0, '1.00', 0, 0, 0),
(16, 0, 1566183681, 0, '117.85', 0, 0, 0),
(17, 0, 1568024292, 0, '17.65', 0, 0, 0),
(18, 0, 1568025319, 0, '74.75', 0, 0, 0),
(19, 0, 1568025405, 0, '39.40', 0, 0, 0),
(20, 0, 1568364105, 0, '62.00', 0, 0, 0),
(21, 0, 1568370604, 0, '95.50', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `order_details_table`
--

CREATE TABLE `order_details_table` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `qty` decimal(7,2) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `insert_time` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `status2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `order_details_table`
--

INSERT INTO `order_details_table` (`id`, `order_id`, `pro_id`, `qty`, `price`, `insert_time`, `status`, `status2`) VALUES
(1, 1, 31, '8.00', '1.00', 0, 0, 0),
(2, 1, 30, '5.00', '15.00', 0, 0, 0),
(3, 2, 31, '1.00', '1.00', 0, 0, 0),
(4, 3, 31, '1.00', '1.00', 0, 0, 0),
(5, 4, 31, '1.00', '1.00', 0, 0, 0),
(6, 5, 31, '4.00', '1.00', 0, 0, 0),
(7, 6, 31, '4.00', '1.00', 0, 0, 0),
(8, 7, 31, '4.00', '1.00', 0, 0, 0),
(9, 8, 31, '1.00', '1.00', 0, 0, 0),
(10, 9, 31, '1.00', '1.00', 0, 0, 0),
(11, 10, 31, '1.00', '1.00', 0, 0, 0),
(12, 11, 31, '1.00', '1.00', 0, 0, 0),
(13, 11, 31, '3.00', '1.00', 0, 0, 0),
(14, 12, 31, '1.00', '1.00', 0, 0, 0),
(15, 13, 31, '1.00', '1.00', 0, 0, 0),
(16, 14, 31, '1.00', '1.00', 0, 0, 0),
(17, 15, 31, '1.00', '1.00', 0, 0, 0),
(18, 16, 1, '1.00', '10.00', 0, 0, 0),
(19, 16, 7, '4.00', '12.90', 0, 0, 0),
(20, 16, 8, '4.00', '6.75', 0, 0, 0),
(21, 16, 9, '3.00', '4.75', 0, 0, 0),
(22, 16, 10, '1.00', '15.00', 0, 0, 0),
(23, 17, 2, '1.00', '0.00', 0, 0, 0),
(24, 17, 6, '1.00', '0.00', 0, 0, 0),
(25, 17, 9, '1.00', '4.75', 0, 0, 0),
(26, 17, 7, '1.00', '12.90', 0, 0, 0),
(27, 17, 4, '1.00', '0.00', 0, 0, 0),
(28, 18, 8, '3.00', '6.75', 0, 0, 0),
(29, 18, 10, '3.00', '15.00', 0, 0, 0),
(30, 18, 9, '2.00', '4.75', 0, 0, 0),
(31, 19, 10, '1.00', '15.00', 0, 0, 0),
(32, 19, 9, '1.00', '4.75', 0, 0, 0),
(33, 19, 8, '1.00', '6.75', 0, 0, 0),
(34, 19, 7, '1.00', '12.90', 0, 0, 0),
(35, 20, 1, '3.00', '6.00', 0, 0, 0),
(36, 20, 2, '3.00', '8.00', 0, 0, 0),
(37, 20, 3, '2.00', '10.00', 0, 0, 0),
(38, 21, 1, '1.00', '6.00', 0, 0, 0),
(39, 21, 6, '2.00', '20.00', 0, 0, 0),
(40, 21, 7, '1.00', '40.00', 0, 0, 0),
(41, 21, 10, '2.00', '2.50', 0, 0, 0),
(42, 21, 11, '3.00', '1.50', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `printers_table`
--

CREATE TABLE `printers_table` (
  `id` int(11) NOT NULL,
  `printer_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `printers_table`
--

INSERT INTO `printers_table` (`id`, `printer_name`) VALUES
(1, 'KASA1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products_table`
--

CREATE TABLE `products_table` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pro_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_barcode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pro_price` decimal(7,2) NOT NULL,
  `pro_type` int(11) NOT NULL,
  `pro_stock` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `gr` decimal(7,2) NOT NULL,
  `pro_insert_time` bigint(20) NOT NULL,
  `pro_status` int(11) NOT NULL,
  `pro_status2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Tablo döküm verisi `products_table`
--

INSERT INTO `products_table` (`pro_id`, `pro_name`, `pro_img`, `pro_barcode`, `pro_price`, `pro_type`, `pro_stock`, `cat_id`, `unit`, `gr`, `pro_insert_time`, `pro_status`, `pro_status2`) VALUES
(1, 'Döner (55-60gr)', 'sandvic.png', '1', '6.00', 0, 0, 0, '', '0.00', 1568363877, 0, 0),
(2, 'Döner (95-100gr)', 'sandvic.png', '2', '8.00', 0, 0, 0, '', '0.00', 1568363900, 0, 0),
(3, 'Döner (115-120gr)', 'sandvic.png', '3', '10.00', 0, 0, 0, '', '0.00', 1568363937, 0, 0),
(4, 'Döner (150gr)', 'sandvic.png', '4', '12.00', 0, 0, 0, '', '0.00', 1568363961, 0, 0),
(5, 'Döner (200gr)', 'servis.png', '5', '16.00', 0, 0, 0, '', '0.00', 1568363976, 0, 0),
(6, 'Döner (250gr)', 'servis.png', '6', '20.00', 0, 0, 0, '', '0.00', 1568363988, 0, 0),
(7, 'Döner (500gr)', 'servis.png', '7', '40.00', 0, 0, 0, '', '0.00', 1568364001, 0, 0),
(8, 'Döner (1000gr)', 'servis.png', '8', '80.00', 0, 0, 0, '', '0.00', 1568364014, 0, 0),
(9, 'Cola Kutu', 'cola.jpg', '9', '3.00', 0, 0, 0, '', '0.00', 1568364043, 0, 0),
(10, 'Cola Şişe', 'sise-cola.jpg', '10', '2.50', 0, 0, 0, '', '0.00', 1568364060, 0, 0),
(11, 'Ayran', 'ayran.jpg', '11', '1.50', 0, 0, 0, '', '0.00', 1568364077, 0, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pro_records_table`
--

CREATE TABLE `pro_records_table` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `qty` decimal(7,2) NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `record_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `insert_time` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `status2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `barcodes_table`
--
ALTER TABLE `barcodes_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `days_table`
--
ALTER TABLE `days_table`
  ADD PRIMARY KEY (`day_id`);

--
-- Tablo için indeksler `orders_table`
--
ALTER TABLE `orders_table`
  ADD PRIMARY KEY (`order_id`);

--
-- Tablo için indeksler `order_details_table`
--
ALTER TABLE `order_details_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `printers_table`
--
ALTER TABLE `printers_table`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `products_table`
--
ALTER TABLE `products_table`
  ADD PRIMARY KEY (`pro_id`);

--
-- Tablo için indeksler `pro_records_table`
--
ALTER TABLE `pro_records_table`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `barcodes_table`
--
ALTER TABLE `barcodes_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `days_table`
--
ALTER TABLE `days_table`
  MODIFY `day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `orders_table`
--
ALTER TABLE `orders_table`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `order_details_table`
--
ALTER TABLE `order_details_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Tablo için AUTO_INCREMENT değeri `printers_table`
--
ALTER TABLE `printers_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `products_table`
--
ALTER TABLE `products_table`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `pro_records_table`
--
ALTER TABLE `pro_records_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

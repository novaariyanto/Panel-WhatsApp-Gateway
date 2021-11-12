-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2021 at 03:08 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_whatsapp_panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_autoreply`
--

CREATE TABLE `tb_autoreply` (
  `id` int(11) NOT NULL,
  `instance_key` varchar(50) NOT NULL,
  `receive` varchar(200) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_device`
--

CREATE TABLE `tb_device` (
  `id` int(11) NOT NULL,
  `device_name` varchar(100) NOT NULL,
  `api_key` varchar(50) NOT NULL,
  `qr_code` varchar(200) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `reg_date` date DEFAULT NULL,
  `data` text,
  `multidevice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_message`
--

CREATE TABLE `tb_message` (
  `id` int(11) NOT NULL,
  `instance_key` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `recipient` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL,
  `data_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_message_in`
--

CREATE TABLE `tb_message_in` (
  `id` int(11) NOT NULL,
  `externalId` varchar(100) NOT NULL,
  `instance_key` varchar(30) NOT NULL,
  `date_time` datetime NOT NULL,
  `pushname` varchar(100) NOT NULL,
  `from_number` varchar(30) NOT NULL,
  `type` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status_message` varchar(20) NOT NULL,
  `data_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_package`
--

CREATE TABLE `tb_package` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `device_max` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `day_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_setting`
--

CREATE TABLE `tb_setting` (
  `id` int(11) NOT NULL,
  `panel_key` varchar(100) NOT NULL,
  `app_name` varchar(200) NOT NULL,
  `domain` varchar(200) NOT NULL,
  `client_key` varchar(50) DEFAULT NULL,
  `server_key` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_setting`
--

INSERT INTO `tb_setting` (`id`, `panel_key`, `app_name`, `domain`, `client_key`, `server_key`) VALUES
(1, 'xxsbsd2mu4i1', 'Whatsapp Panel', 'http://localhost/wapa', 'as', 'as');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(11) NOT NULL,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_package` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `status_paid` int(11) NOT NULL,
  `day_value` int(11) NOT NULL,
  `price_package` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `email`, `phone_number`, `password`, `level`, `status`, `last_login`) VALUES
(1, 'admin', 'admin@gmail.com', '', '$2y$10$hRi1qju2KOeEPcBZ0wYfhu/PN5e9Wl.ddWeDTds8Uokad764X9D1a', 2, 1, '2021-10-27 15:08:46'),
(2, 'client01', 'client01@gmail.com', '', '123456', 1, 0, '2021-09-20 03:11:40'),
(3, 'client02', 'client02@gmail.com', '', 'nova123', 2, 0, '2021-09-20 03:14:12'),
(4, 'client03', 'client03@gmail.com', '', 'client03', 1, 0, '2021-09-20 03:17:30'),
(5, 'client04', 'client04@gmail.com', '', '12345', 1, 0, '2021-09-20 03:24:10'),
(6, 'client05', 'client03@gmail.com', '', 'client04', 1, 0, '2021-09-20 03:24:55'),
(7, 'client06', 'client06@gmail.com', '', '123456', 1, 0, '2021-09-20 03:33:03'),
(8, 'client09', 'client09@gmail.com', '', '$2y$10$7LxfVz2UKTszTc/U7vHx.eOCu1noD8YRATOKDOsdVrMGGiijosnlW', 1, 0, '2021-09-20 03:40:30'),
(9, 'client10', 'client10@gmail.com', '', '$2y$10$xysHnkP9yGj5KTDpc9omUOcn9dOAQ1BKBKKBuTAZpngT0oogyyusC', 1, 1, '2021-10-27 04:10:50'),
(10, 'client11', 'client11@gmail.com', '', '$2y$10$kGKt95M.IWejYJSEEx/xyuAnyfwt9EQVYB.aJJQwA2Wv38c6jbdei', 1, 0, '2021-09-20 05:03:43'),
(11, 'client12', 'client12@gmail.com', '', '$2y$10$k0le/1W4zTvGXMiyJ1rixuD5mbMOOPcsD0WPz0tznD9YZhlsAZZRC', 1, 0, '2021-09-20 08:40:27'),
(12, 'client17', 'client17@gmail.com', '', '$2y$10$5ObZ7DK/msH/uXUWUpcIQOTrNZSCIGlz8ICDRaj945V/v7OxKeXYS', 1, 0, '2021-09-20 05:28:31'),
(13, 'cro', 'cro@gmail.com', '', '$2y$10$qZZ8tYFgVdulmR/70EAvZ.hzD21aQ.8Q9hRd052mAnhfv8sHAw4pK', 1, 1, '2021-10-27 01:30:42'),
(14, 'super admin', 'superadmin@gmail.com', '', '$2y$10$BYEJGc/Su.YZgMRpsC0hwu3li03VzlY15G7TSoe0T0g.GkvW4ENCq', 3, 1, '2021-10-29 15:01:48'),
(15, 'demo', 'demo@gmail.com', '0895361034833', '$2y$10$D8XFiltGb1wCTXi77QovVOFsc0bpX731Y.yeIgx/CzApRGnf.Z8Iy', 1, 0, '2021-10-27 03:54:33'),
(16, 'demo2', 'demo2@gmail.com', '089123123', '$2y$10$Eh/Lms3q2oZxA3xeaSQjouFD5H9MasWZYisxoY1WCXpHVtn9dnVcW', 1, 0, '2021-10-27 04:04:08'),
(17, 'demo3', 'demo3@gmail.com', '08192839132', '$2y$10$dnzDt/2NFtapS6lJ5AkZU.1nNf7ei3poq/mnrUjnAqg0nIaPsM14C', 1, 0, '2021-10-27 04:06:26'),
(18, 'demo4', 'demo4@gmail.com', '08923123123', '$2y$10$TBfgmIBwwPbmc.zulZfXg.tNLk2KrpqLwLx/xsrz3Fmk0QIk3vdOS', 1, 1, '2021-11-12 02:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_package`
--

CREATE TABLE `tb_user_package` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_package` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_time` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_webhook`
--

CREATE TABLE `tb_webhook` (
  `id` int(11) NOT NULL,
  `instance_key` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_autoreply`
--
ALTER TABLE `tb_autoreply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_device`
--
ALTER TABLE `tb_device`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_message`
--
ALTER TABLE `tb_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_message_in`
--
ALTER TABLE `tb_message_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_package`
--
ALTER TABLE `tb_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_setting`
--
ALTER TABLE `tb_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user_package`
--
ALTER TABLE `tb_user_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_webhook`
--
ALTER TABLE `tb_webhook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_autoreply`
--
ALTER TABLE `tb_autoreply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_device`
--
ALTER TABLE `tb_device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_message`
--
ALTER TABLE `tb_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_message_in`
--
ALTER TABLE `tb_message_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_package`
--
ALTER TABLE `tb_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_setting`
--
ALTER TABLE `tb_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_user_package`
--
ALTER TABLE `tb_user_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_webhook`
--
ALTER TABLE `tb_webhook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

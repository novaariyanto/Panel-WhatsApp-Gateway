-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 27, 2021 at 05:06 PM
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
  `data` text
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
-- Table structure for table `tb_setting`
--

CREATE TABLE `tb_setting` (
  `id` int(11) NOT NULL,
  `panel_key` varchar(100) NOT NULL,
  `app_name` varchar(200) NOT NULL,
  `domain` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_setting`
--

INSERT INTO `tb_setting` (`id`, `panel_key`, `app_name`, `domain`) VALUES
(1, 'xxsbsd2mu4i1', 'Whatsapp Panel', 'http://localhost/wapa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `email`, `password`, `level`, `status`, `last_login`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$hRi1qju2KOeEPcBZ0wYfhu/PN5e9Wl.ddWeDTds8Uokad764X9D1a', 2, 1, '2021-09-22 00:08:23'),
(2, 'client01', 'client01@gmail.com', '123456', 1, 1, '2021-09-20 03:11:40'),
(3, 'client02', 'client02@gmail.com', 'nova123', 2, 1, '2021-09-20 03:14:12'),
(4, 'client03', 'client03@gmail.com', 'client03', 1, 1, '2021-09-20 03:17:30'),
(5, 'client04', 'client04@gmail.com', '12345', 1, 0, '2021-09-20 03:24:10'),
(6, 'client05', 'client03@gmail.com', 'client04', 1, 0, '2021-09-20 03:24:55'),
(7, 'client06', 'client06@gmail.com', '123456', 1, 1, '2021-09-20 03:33:03'),
(8, 'client09', 'client09@gmail.com', '$2y$10$7LxfVz2UKTszTc/U7vHx.eOCu1noD8YRATOKDOsdVrMGGiijosnlW', 1, 1, '2021-09-20 03:40:30'),
(9, 'client10', 'client10@gmail.com', '$2y$10$xysHnkP9yGj5KTDpc9omUOcn9dOAQ1BKBKKBuTAZpngT0oogyyusC', 1, 1, '2021-09-22 00:19:28'),
(10, 'client11', 'client11@gmail.com', '$2y$10$kGKt95M.IWejYJSEEx/xyuAnyfwt9EQVYB.aJJQwA2Wv38c6jbdei', 1, 0, '2021-09-20 05:03:43'),
(11, 'client12', 'client12@gmail.com', '$2y$10$k0le/1W4zTvGXMiyJ1rixuD5mbMOOPcsD0WPz0tznD9YZhlsAZZRC', 1, 0, '2021-09-20 08:40:27'),
(12, 'client17', 'client17@gmail.com', '$2y$10$5ObZ7DK/msH/uXUWUpcIQOTrNZSCIGlz8ICDRaj945V/v7OxKeXYS', 1, 0, '2021-09-20 05:28:31'),
(13, 'cro', 'cro@gmail.com', '$2y$10$qZZ8tYFgVdulmR/70EAvZ.hzD21aQ.8Q9hRd052mAnhfv8sHAw4pK', 1, 1, '2021-09-27 09:14:20');

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
-- Indexes for table `tb_setting`
--
ALTER TABLE `tb_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
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
-- AUTO_INCREMENT for table `tb_setting`
--
ALTER TABLE `tb_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_webhook`
--
ALTER TABLE `tb_webhook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

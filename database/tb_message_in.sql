-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2021 at 09:02 AM
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

--
-- Dumping data for table `tb_message_in`
--

INSERT INTO `tb_message_in` (`id`, `externalId`, `instance_key`, `date_time`, `pushname`, `from_number`, `type`, `message`, `status_message`, `data_message`) VALUES
(1, '856DE50F446A7E50C5E2641E5067C323', 'xOmO52xkbZ67', '2021-09-28 02:09:48', 'Whatsva', '6285156345912', 'chat-text', '!salam', 'received', '{\"externalId\":\"856DE50F446A7E50C5E2641E5067C323\",\"ts\":\"1632794961\",\"edit\":-1,\"isHsm\":false,\"count\":null,\"pushname\":\"Whatsva\",\"category\":null,\"offline\":null,\"type\":\"chat\",\"chat\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"author\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"conversation\":\"!salam\",\"messageContextInfo\":{\"deviceListMetadata\":{\"senderKeyHash\":\"SdTKfEq6uX4Okw==\",\"senderTimestamp\":\"1631501174\",\"recipientKeyHash\":\"kKjan9v6O452rw==\",\"recipientTimestamp\":\"1632718047\"},\"deviceListMetadataVersion\":2}}'),
(2, '856DE50F446A7E50C5E2641E5067C323', 'xOmO52xkbZ67', '2021-09-28 02:09:21', 'Whatsva', '6285156345912', 'chat-text', '!salam', 'received', '{\"externalId\":\"856DE50F446A7E50C5E2641E5067C323\",\"ts\":\"1632794961\",\"edit\":-1,\"isHsm\":false,\"count\":null,\"pushname\":\"Whatsva\",\"category\":null,\"offline\":null,\"type\":\"chat\",\"chat\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"author\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"conversation\":\"!salam\",\"messageContextInfo\":{\"deviceListMetadata\":{\"senderKeyHash\":\"SdTKfEq6uX4Okw==\",\"senderTimestamp\":\"1631501174\",\"recipientKeyHash\":\"kKjan9v6O452rw==\",\"recipientTimestamp\":\"1632718047\"},\"deviceListMetadataVersion\":2}}'),
(3, '856DE50F446A7E50C5E2641E5067C323', 'xOmO52xkbZ67', '2021-09-28 09:09:21', 'Whatsva', '6285156345912', 'chat-text', '!salam', 'received', '{\"externalId\":\"856DE50F446A7E50C5E2641E5067C323\",\"ts\":\"1632794961\",\"edit\":-1,\"isHsm\":false,\"count\":null,\"pushname\":\"Whatsva\",\"category\":null,\"offline\":null,\"type\":\"chat\",\"chat\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"author\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"conversation\":\"!salam\",\"messageContextInfo\":{\"deviceListMetadata\":{\"senderKeyHash\":\"SdTKfEq6uX4Okw==\",\"senderTimestamp\":\"1631501174\",\"recipientKeyHash\":\"kKjan9v6O452rw==\",\"recipientTimestamp\":\"1632718047\"},\"deviceListMetadataVersion\":2}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_message_in`
--
ALTER TABLE `tb_message_in`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_message_in`
--
ALTER TABLE `tb_message_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

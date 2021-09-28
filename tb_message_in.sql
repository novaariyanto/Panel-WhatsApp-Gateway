-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2021 at 03:43 PM
-- Server version: 8.0.25-0ubuntu0.20.10.1
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_panel_whatsapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_message_in`
--

CREATE TABLE `tb_message_in` (
  `id` int NOT NULL,
  `externalId` varchar(100) NOT NULL,
  `instance_key` varchar(30) NOT NULL,
  `date_time` datetime NOT NULL,
  `pushname` varchar(100) NOT NULL,
  `from_number` varchar(30) NOT NULL,
  `type` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `status_message` varchar(20) NOT NULL,
  `data_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_message_in`
--

INSERT INTO `tb_message_in` (`id`, `externalId`, `instance_key`, `date_time`, `pushname`, `from_number`, `type`, `message`, `status_message`, `data_message`) VALUES
(1, 'F58A92D2469FBC060661B179F23C2CD4', 'd2DzVLTuL5k9', '2021-09-28 09:09:33', 'Whatsva', '6285156345912', 'chat-text', '!salam', 'received', '{\"externalId\":\"F58A92D2469FBC060661B179F23C2CD4\",\"ts\":\"1632795330\",\"edit\":-1,\"isHsm\":false,\"count\":null,\"pushname\":\"Whatsva\",\"category\":null,\"offline\":null,\"type\":\"chat\",\"chat\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"author\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"conversation\":\"!salam\",\"messageContextInfo\":{\"deviceListMetadata\":{\"senderKeyHash\":\"SdTKfEq6uX4Okw==\",\"senderTimestamp\":\"1631501174\",\"recipientKeyHash\":\"kKjan9v6O452rw==\",\"recipientTimestamp\":\"1632718047\"},\"deviceListMetadataVersion\":2}}'),
(2, 'FD3C6AAA9DE9277AE72E2CB7201001E2', 'd2DzVLTuL5k9', '2021-09-28 09:09:38', 'Whatsva', '6285156345912', 'chat-text', '!salam', 'received', '{\"externalId\":\"FD3C6AAA9DE9277AE72E2CB7201001E2\",\"ts\":\"1632796418\",\"edit\":-1,\"isHsm\":false,\"count\":null,\"pushname\":\"Whatsva\",\"category\":null,\"offline\":null,\"type\":\"chat\",\"chat\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"author\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"conversation\":\"!salam\",\"messageContextInfo\":{\"deviceListMetadata\":{\"senderKeyHash\":\"SdTKfEq6uX4Okw==\",\"senderTimestamp\":\"1631501174\",\"recipientKeyHash\":\"kKjan9v6O452rw==\",\"recipientTimestamp\":\"1632718047\"},\"deviceListMetadataVersion\":2}}'),
(3, '856DE50F446A7E50C5E2641E5067C323', 'xOmO52xkbZ67', '2021-09-28 09:09:21', 'Whatsva', '6285156345912', 'chat-text', '!salam', 'received', '{\"externalId\":\"856DE50F446A7E50C5E2641E5067C323\",\"ts\":\"1632794961\",\"edit\":-1,\"isHsm\":false,\"count\":null,\"pushname\":\"Whatsva\",\"category\":null,\"offline\":null,\"type\":\"chat\",\"chat\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"author\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"conversation\":\"!salam\",\"messageContextInfo\":{\"deviceListMetadata\":{\"senderKeyHash\":\"SdTKfEq6uX4Okw==\",\"senderTimestamp\":\"1631501174\",\"recipientKeyHash\":\"kKjan9v6O452rw==\",\"recipientTimestamp\":\"1632718047\"},\"deviceListMetadataVersion\":2}}'),
(4, 'EC2ECD14EA3F4F10F6C145A9672BA658', 'd2DzVLTuL5k9', '2021-09-28 09:09:29', 'Whatsva', '6285156345912', 'chat-text', 'Bro', 'received', '{\"externalId\":\"EC2ECD14EA3F4F10F6C145A9672BA658\",\"ts\":\"1632796469\",\"edit\":-1,\"isHsm\":false,\"count\":null,\"pushname\":\"Whatsva\",\"category\":null,\"offline\":null,\"type\":\"chat\",\"chat\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"author\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"conversation\":\"Bro\",\"messageContextInfo\":{\"deviceListMetadata\":{\"senderKeyHash\":\"SdTKfEq6uX4Okw==\",\"senderTimestamp\":\"1631501174\",\"recipientKeyHash\":\"kKjan9v6O452rw==\",\"recipientTimestamp\":\"1632718047\"},\"deviceListMetadataVersion\":2}}'),
(5, '95C8606AC7963F061005D3646CE28F3A', 'd2DzVLTuL5k9', '2021-09-28 09:09:42', 'Whatsva', '6285156345912', 'chat-text', '!salam', 'received', '{\"externalId\":\"95C8606AC7963F061005D3646CE28F3A\",\"ts\":\"1632797502\",\"edit\":-1,\"isHsm\":false,\"count\":null,\"pushname\":\"Whatsva\",\"category\":null,\"offline\":null,\"type\":\"chat\",\"chat\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"author\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"conversation\":\"!salam\",\"messageContextInfo\":{\"deviceListMetadata\":{\"senderKeyHash\":\"SdTKfEq6uX4Okw==\",\"senderTimestamp\":\"1632797493\",\"recipientKeyHash\":\"kKjan9v6O452rw==\",\"recipientTimestamp\":\"1632718047\"},\"deviceListMetadataVersion\":2}}'),
(6, '4C0CA009B4E5583FA91A08926935BA02', 'd2DzVLTuL5k9', '2021-09-28 09:09:57', 'Whatsva', '6285156345912', 'chat-text', 'Bro', 'received', '{\"externalId\":\"4C0CA009B4E5583FA91A08926935BA02\",\"ts\":\"1632797517\",\"edit\":-1,\"isHsm\":false,\"count\":null,\"pushname\":\"Whatsva\",\"category\":null,\"offline\":null,\"type\":\"chat\",\"chat\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"author\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"conversation\":\"Bro\",\"messageContextInfo\":{\"deviceListMetadata\":{\"senderKeyHash\":\"SdTKfEq6uX4Okw==\",\"senderTimestamp\":\"1632797493\",\"recipientKeyHash\":\"kKjan9v6O452rw==\",\"recipientTimestamp\":\"1632718047\"},\"deviceListMetadataVersion\":2}}'),
(7, '856DE50F446A7E50C5E2641E5067C323', 'xOmO52xkbZ67', '2021-09-28 09:09:21', 'Whatsva', '6285156345912', 'chat-text', '!salam', 'received', '{\"externalId\":\"856DE50F446A7E50C5E2641E5067C323\",\"ts\":\"1632794961\",\"edit\":-1,\"isHsm\":false,\"count\":null,\"pushname\":\"Whatsva\",\"category\":null,\"offline\":null,\"type\":\"chat\",\"chat\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"author\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"conversation\":\"!salam\",\"messageContextInfo\":{\"deviceListMetadata\":{\"senderKeyHash\":\"SdTKfEq6uX4Okw==\",\"senderTimestamp\":\"1631501174\",\"recipientKeyHash\":\"kKjan9v6O452rw==\",\"recipientTimestamp\":\"1632718047\"},\"deviceListMetadataVersion\":2}}'),
(8, '239DE014DCA3EBD65C04DFBE655F61C9', 'd2DzVLTuL5k9', '2021-09-28 09:09:45', 'Whatsva', '6285156345912', 'chat-text', 'Jos', 'received', '{\"externalId\":\"239DE014DCA3EBD65C04DFBE655F61C9\",\"ts\":\"1632797685\",\"edit\":-1,\"isHsm\":false,\"count\":null,\"pushname\":\"Whatsva\",\"category\":null,\"offline\":null,\"type\":\"chat\",\"chat\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"author\":{\"type\":\"wapJid\",\"jid\":{\"type\":0,\"user\":\"6285156345912\",\"server\":\"s.whatsapp.net\"}},\"conversation\":\"Jos\",\"messageContextInfo\":{\"deviceListMetadata\":{\"senderKeyHash\":\"SdTKfEq6uX4Okw==\",\"senderTimestamp\":\"1632797493\",\"recipientKeyHash\":\"kKjan9v6O452rw==\",\"recipientTimestamp\":\"1632718047\"},\"deviceListMetadataVersion\":2}}');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

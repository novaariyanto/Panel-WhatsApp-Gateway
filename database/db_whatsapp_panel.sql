-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 29, 2021 at 03:11 AM
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

--
-- Dumping data for table `tb_autoreply`
--

INSERT INTO `tb_autoreply` (`id`, `instance_key`, `receive`, `reply`, `type`, `status`) VALUES
(2, 'xOmO52xkbZ67', '!detail', 'detail information \r\nname : hello\r\nkelas : IV IPA', '1', 0);

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

--
-- Dumping data for table `tb_device`
--

INSERT INTO `tb_device` (`id`, `device_name`, `api_key`, `qr_code`, `id_user`, `status`, `reg_date`, `data`) VALUES
(1, 'device barug', 'F7ZdxS7EyIDG', NULL, 1, 1, '2021-09-16', NULL),
(2, 'adf', 'Vh4Qjkt67b12', NULL, 1, 1, '2021-09-18', NULL),
(3, 'SDSAD', 'KHslK8Ax0wXN', NULL, 1, 1, '2021-09-18', NULL),
(4, 'ASDF', 'Fwvve31rsN2Z', NULL, 1, 1, '2021-09-18', NULL),
(5, 'ASFAS', 'MEE9jdqvAIdR', NULL, 1, 1, '2021-09-18', NULL),
(6, 'ADFAF', 'x0hYWp6QSeWX', NULL, 1, 1, '2021-09-18', NULL),
(7, 'AFDS', 'LJlFi06nbmn9', NULL, 1, 1, '2021-09-18', NULL),
(8, 'AAS', 'VqOr3gkGZxH0', NULL, 1, 1, '2021-09-18', NULL),
(9, 'SDD', '5RSjBRsZFNWl', NULL, 1, 1, '2021-09-18', NULL),
(10, 'SAS', 'Mnm9zkiZjsaR', NULL, 1, 1, '2021-09-18', NULL),
(11, 'DSD', 'LCm0JCGv8SN4', NULL, 1, 1, '2021-09-18', NULL),
(12, 'Device q', 'wDOV2eE4yPGL', NULL, 9, 1, '2021-09-20', NULL),
(13, 'client10_client10_', 'LmFonRXPcoWo', NULL, 9, 1, '2021-09-20', NULL),
(14, 'client10_Device hello', 'E8EYtKrHdSgj', NULL, 9, 1, '2021-09-20', NULL),
(15, 'client10_Device B', 'izPYCnxY9BRV', NULL, 9, 1, '2021-09-20', NULL),
(16, 'client12_Device B', 'wWP0csqriOVm', NULL, 11, 1, '2021-09-20', NULL),
(17, 'client10_Device Baru', 'SRBa85oo9vGy', NULL, 9, 1, '2021-09-20', NULL),
(18, 'client10_Device 2', 'WDalrUHm5Xx2', NULL, 9, 1, '2021-09-20', NULL),
(19, 'client10_Devuce', 'GXjLhnzrzBry', NULL, 9, 1, '2021-09-21', NULL),
(20, 'client10_Devica', 'LqL5mhSYPZmT', NULL, 9, 1, '2021-09-22', NULL),
(21, 'client10_Device Chak', '1POu0YEltpts', NULL, 9, 1, '2021-09-22', NULL),
(22, 'cro_Device A', 'xOmO52xkbZ67', NULL, 13, 2, '2021-09-23', NULL),
(24, 'cro_Device B', 'tWl09u3YKZ33', NULL, 13, 1, '2021-09-27', NULL);

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

--
-- Dumping data for table `tb_message`
--

INSERT INTO `tb_message` (`id`, `instance_key`, `message`, `recipient`, `type`, `status`, `date_time`, `data_message`) VALUES
(1, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 18:09:55', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(2, 'HmW1WUnR3gC7', '{\"contactMessage\":{\"vcard\":\"BEGIN:VCARD\\nVERSION:3.0\\nFN:Nova Ariyanto\\nORG:whatsva;\\nTEL;type=CELL;type=VOICE;waid=62895361034833:+62895361034833\\nEND:VCARD\"}}', '', 'chat-vcard', 'received', '2021-09-14 18:09:13', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"contactMessage\":{\"vcard\":\"BEGIN:VCARD\\nVERSION:3.0\\nFN:Nova Ariyanto\\nORG:whatsva;\\nTEL;type=CELL;type=VOICE;waid=62895361034833:+62895361034833\\nEND:VCARD\"}}}'),
(3, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 19:09:06', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(4, 'HmW1WUnR3gC7', 'https://www.greenscene.co.id/wp-content/uploads/2021/09/One-Piece-11-696x497.jpg', '', 'chat-image', 'received', '2021-09-14 19:09:12', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"imageMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/Aq40kaCvig7w-Bt0o0bXixIndN3jz9OmVmpABWGwW02q.enc\",\"mimetype\":\"image\\/jpeg\",\"caption\":\"hello mas apa kabs\",\"fileSha256\":\"tkTGXNPkOoP6uCudglTgbXLqlR+W8lxdeIJsG1KklF4=\",\"fileLength\":\"54197\",\"mediaKey\":\"VM73GrJv4ozLwmhULl7XWHegrMCjNzIBhTqS+Zpyvow=\",\"fileEncSha256\":\"3sPpUR4Afbj0YtaUKe1KzKpq64GrXg2W4416bXed2wM=\",\"jpegThumbnail\":\"\\/9j\\/2wBDABALDA4MChAODQ4SERATGCgaGBYWGDEjJR0oOjM9PDkzODdASFxOQERXRTc4UG1RV19iZ2hnPk1xeXBkeFxlZ2P\\/2wBDARESEhgVGC8aGi9jQjhCY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2P\\/wgARCAAwADADASIAAhEBAxEB\\/8QAGQAAAwEBAQAAAAAAAAAAAAAAAwQFAgEA\\/8QAGAEAAwEBAAAAAAAAAAAAAAAAAAECAwT\\/2gAMAwEAAhADEAAAASlMHm2EvXnlo0Jp98mVjT40tZm7JbXyWlhWqFsHe0yJHnOC\\/8QAHhAAAgMAAgMBAAAAAAAAAAAAAQIAAxESIgQhMRP\\/2gAIAQEAAQUCVFjVgjjxDWPo+q9YC5h8itJwlgyEZFtZIj5LWUlL9Bn5kxqXhOi1uy\\/ORgYqe9k4y4d1TqU9YYAQ2gR15LXoJHTiNHpv\\/8QAGREBAQADAQAAAAAAAAAAAAAAAQAQETEh\\/9oACAEDAQE\\/AfYdzduTGwnH\\/8QAGhEBAAEFAAAAAAAAAAAAAAAAAQACECAhYf\\/aAAgBAgEBPwHbDtgjTDD\\/xAAhEAACAgIBBAMAAAAAAAAAAAAAARARITEyAhJCYSJBof\\/aAAgBAQAGPwLcfBlRiKcU9R6hPtyV5HUc\\/wAPoawUsIvyNlnOlF0KbPZZT0YMJx\\/\\/xAAgEAEAAwABBQADAAAAAAAAAAABABEhQRAxUWGRgbHB\\/9oACAEBAAE\\/IQlC\\/MulfIImr+xlmQGla5lbv8ltgiGtr8iEs0ZcTvgw1VwgMfCKNohAD5Mr0AMSK1Ypyzgh8xU7\\/EXnB3joxTIhtNb3lmNPUopYK0H1S6RXIHqclcRkArv0YbJBzZCv6zIizxFMj09D\\/9oADAMBAAIAAwAAABDeKhKmmhP\\/AP\\/EABgRAAMBAQAAAAAAAAAAAAAAAAABETEh\\/9oACAEDAQE\\/EE6ojlDxwxS9w6x0ah4M6WYf\\/8QAGREAAwEBAQAAAAAAAAAAAAAAAAERIRBB\\/9oACAECAQE\\/EE2YXcCV01oxvBIe9\\/\\/EACIQAQACAgMAAQUBAAAAAAAAAAEAESFBMVFhgXGRscHR4f\\/aAAgBAQABPxDHAvmOU4bwZkwMo8fCVxb7jxcHbJ3MaJtVbGhF9DAPHDiwdyjAPGdQDlsBmn03FDQPXEJNDaq+OpSToziFmDYVj76fyN1+DpgsWNARpJF6MRHK5awr7bjAyQMMPcZyjAfmCi8pw1X6hbR9KoESQy7fK6g2iM1pvc5+6RlMPABtRWZyAVdSoJia4dMAAXq4bhpyJggsNbT2IXaPL\\/iHxCyXCeQFXpcRQcmjqf\\/Z\"}}}'),
(5, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 19:09:15', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(6, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 19:09:17', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(7, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 19:09:20', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(8, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 19:09:22', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(9, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 19:09:24', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(10, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 19:09:26', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(11, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 19:09:28', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(12, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 19:09:38', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(13, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 19:09:40', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(14, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 21:09:00', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(15, 'HmW1WUnR3gC7', 'https://www.greenscene.co.id/wp-content/uploads/2021/09/One-Piece-11-696x497.jpg', '', 'chat-image', 'received', '2021-09-14 21:09:14', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"imageMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/Am3hMQLokciOsYxM0EQ1YfneXKMqn27BvKK_eDEINt3d.enc\",\"mimetype\":\"image\\/jpeg\",\"caption\":\"hello mas apa kabs\",\"fileSha256\":\"tkTGXNPkOoP6uCudglTgbXLqlR+W8lxdeIJsG1KklF4=\",\"fileLength\":\"54197\",\"mediaKey\":\"Jmzr95gR2GJ9QIFIQDslJvPmAn2YyR9Nt9UgOUMhVbI=\",\"fileEncSha256\":\"ajopQPe93mvMRmFz\\/1FY1qZ+HPdeXfJ8N\\/EHN2mLeSI=\",\"jpegThumbnail\":\"\\/9j\\/2wBDABALDA4MChAODQ4SERATGCgaGBYWGDEjJR0oOjM9PDkzODdASFxOQERXRTc4UG1RV19iZ2hnPk1xeXBkeFxlZ2P\\/2wBDARESEhgVGC8aGi9jQjhCY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2P\\/wgARCAAwADADASIAAhEBAxEB\\/8QAGQAAAwEBAQAAAAAAAAAAAAAAAwQFAgEA\\/8QAGAEAAwEBAAAAAAAAAAAAAAAAAAECAwT\\/2gAMAwEAAhADEAAAASlMHm2EvXnlo0Jp98mVjT40tZm7JbXyWlhWqFsHe0yJHnOC\\/8QAHhAAAgMAAgMBAAAAAAAAAAAAAQIAAxESIgQhMRP\\/2gAIAQEAAQUCVFjVgjjxDWPo+q9YC5h8itJwlgyEZFtZIj5LWUlL9Bn5kxqXhOi1uy\\/ORgYqe9k4y4d1TqU9YYAQ2gR15LXoJHTiNHpv\\/8QAGREBAQADAQAAAAAAAAAAAAAAAQAQETEh\\/9oACAEDAQE\\/AfYdzduTGwnH\\/8QAGhEBAAEFAAAAAAAAAAAAAAAAAQACECAhYf\\/aAAgBAgEBPwHbDtgjTDD\\/xAAhEAACAgIBBAMAAAAAAAAAAAAAARARITEyAhJCYSJBof\\/aAAgBAQAGPwLcfBlRiKcU9R6hPtyV5HUc\\/wAPoawUsIvyNlnOlF0KbPZZT0YMJx\\/\\/xAAgEAEAAwABBQADAAAAAAAAAAABABEhQRAxUWGRgbHB\\/9oACAEBAAE\\/IQlC\\/MulfIImr+xlmQGla5lbv8ltgiGtr8iEs0ZcTvgw1VwgMfCKNohAD5Mr0AMSK1Ypyzgh8xU7\\/EXnB3joxTIhtNb3lmNPUopYK0H1S6RXIHqclcRkArv0YbJBzZCv6zIizxFMj09D\\/9oADAMBAAIAAwAAABDeKhKmmhP\\/AP\\/EABgRAAMBAQAAAAAAAAAAAAAAAAABETEh\\/9oACAEDAQE\\/EE6ojlDxwxS9w6x0ah4M6WYf\\/8QAGREAAwEBAQAAAAAAAAAAAAAAAAERIRBB\\/9oACAECAQE\\/EE2YXcCV01oxvBIe9\\/\\/EACIQAQACAgMAAQUBAAAAAAAAAAEAESFBMVFhgXGRscHR4f\\/aAAgBAQABPxDHAvmOU4bwZkwMo8fCVxb7jxcHbJ3MaJtVbGhF9DAPHDiwdyjAPGdQDlsBmn03FDQPXEJNDaq+OpSToziFmDYVj76fyN1+DpgsWNARpJF6MRHK5awr7bjAyQMMPcZyjAfmCi8pw1X6hbR9KoESQy7fK6g2iM1pvc5+6RlMPABtRWZyAVdSoJia4dMAAXq4bhpyJggsNbT2IXaPL\\/iHxCyXCeQFXpcRQcmjqf\\/Z\"}}}'),
(16, 'HmW1WUnR3gC7', 'http://pustaka.unp.ac.id/file/abstrak_kki/EBOOKS/23%20kiat%20hidup%20bahagia.pdf', '', 'chat-document', 'received', '2021-09-14 21:09:19', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"documentMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/Ah34hLmpQIoXKmab49htBy160EuFBusBjps5VMq7ZOkd.enc\",\"mimetype\":\"application\\/pdf\",\"fileSha256\":\"dJMdYxibDftF+V82a3uI4PE0cB61OoFr252C8mKDZxU=\",\"fileLength\":\"233206\",\"mediaKey\":\"RzTh53+s15CZoPgbsEKYZ93h5hw+shbFQgjwdKocFIw=\",\"fileName\":\"23%20kiat%20hidup%20bahagia.pdf\",\"fileEncSha256\":\"k5RAWS2Dce3ukMAT0Q4PkeYyeNyHyu8p3VmsfaGeo\\/4=\"}}}'),
(17, 'HmW1WUnR3gC7', 'https://www.onirikal.com/videos/mp4/nestlegold.mp4', '', 'chat-video', 'received', '2021-09-14 21:09:41', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"videoMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/Ai41c11VjJcRYiakUVRrMfpsBTYJpY6rDFj22kFm8wCm.enc\",\"mimetype\":\"video\\/mp4\",\"fileSha256\":\"1qU2e\\/Z8Pxcj7+QLFUAgrj2vnIhHa\\/rJ9XMt4x5f\\/F8=\",\"fileLength\":\"1454520\",\"mediaKey\":\"kHZBeLltf6sJTG4gIbggo+UMg+CYERgBvJyPDcx4vf4=\",\"caption\":\"hello mas apa kabs\",\"fileEncSha256\":\"ZBrmX4Km7maYvAYBCeFriMWAIXsf2ZVEhL0hpPpW9Ds=\"}}}'),
(18, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 21:09:58', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(19, 'HmW1WUnR3gC7', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-14 22:09:16', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(20, 'F7ZdxS7EyIDG', '6285156345912', '', 'chat-text', 'received', '2021-09-15 23:09:31', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"6285156345912\"}}}'),
(21, 'F7ZdxS7EyIDG', '6285156345912', '', 'chat-text', 'received', '2021-09-15 23:09:07', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"6285156345912\"}}}'),
(22, 'F7ZdxS7EyIDG', '6285156345912', '', 'chat-text', 'received', '2021-09-15 23:09:10', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"6285156345912\"}}}'),
(23, 'F7ZdxS7EyIDG', '6285156345912', '', 'chat-text', 'received', '2021-09-15 23:09:32', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"6285156345912\"}}}'),
(24, 'F7ZdxS7EyIDG', '6285156345912', '', 'chat-text', 'received', '2021-09-15 23:09:35', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"6285156345912\"}}}'),
(25, 'F7ZdxS7EyIDG', '6285156345912', '', 'chat-text', 'received', '2021-09-15 23:09:38', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"6285156345912\"}}}'),
(26, 'F7ZdxS7EyIDG', ' complete: callback', '', 'chat-text', 'received', '2021-09-15 23:09:19', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\" complete: callback\"}}}'),
(27, 'F7ZdxS7EyIDG', ' complete: callback', '', 'chat-text', 'received', '2021-09-15 23:09:24', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\" complete: callback\"}}}'),
(28, 'F7ZdxS7EyIDG', '6285156345912', '', 'chat-text', 'received', '2021-09-15 23:09:26', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"6285156345912\"}}}'),
(29, 'F7ZdxS7EyIDG', 'fasd', '', 'chat-text', 'received', '2021-09-15 23:09:56', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"fasd\"}}}'),
(30, 'F7ZdxS7EyIDG', 'asdasd', '', 'chat-text', 'received', '2021-09-15 23:09:37', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"asdasd\"}}}'),
(31, 'F7ZdxS7EyIDG', 'hello', '', 'chat-text', 'received', '2021-09-15 23:09:40', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello\"}}}'),
(32, 'F7ZdxS7EyIDG', 'helo', '', 'chat-text', 'received', '2021-09-15 23:09:27', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"helo\"}}}'),
(33, 'F7ZdxS7EyIDG', 'geki', '', 'chat-text', 'received', '2021-09-15 23:09:39', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"geki\"}}}'),
(34, 'F7ZdxS7EyIDG', 'hello', '', 'chat-text', 'received', '2021-09-15 23:09:08', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello\"}}}'),
(35, 'F7ZdxS7EyIDG', 'hello', '', 'chat-text', 'received', '2021-09-15 23:09:25', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello\"}}}'),
(36, 'F7ZdxS7EyIDG', 'helo', '', 'chat-text', 'received', '2021-09-15 23:09:32', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"helo\"}}}'),
(37, 'F7ZdxS7EyIDG', 'hry', '', 'chat-text', 'received', '2021-09-15 23:09:33', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hry\"}}}'),
(38, 'F7ZdxS7EyIDG', 'hry', '', 'chat-text', 'received', '2021-09-15 23:09:44', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hry\"}}}'),
(39, 'F7ZdxS7EyIDG', 'helo', '', 'chat-text', 'received', '2021-09-15 23:09:58', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"helo\"}}}'),
(40, 'F7ZdxS7EyIDG', 'heki', '', 'chat-text', 'received', '2021-09-15 23:09:16', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"heki\"}}}'),
(41, 'F7ZdxS7EyIDG', 'asfd', '', 'chat-text', 'received', '2021-09-15 23:09:52', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"asfd\"}}}'),
(42, 'F7ZdxS7EyIDG', 'sdad', '', 'chat-text', 'received', '2021-09-15 23:09:14', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"sdad\"}}}'),
(43, 'F7ZdxS7EyIDG', 'asdsa', '', 'chat-text', 'received', '2021-09-15 23:09:40', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"asdsa\"}}}'),
(44, 'F7ZdxS7EyIDG', 'hello gaes', '', 'chat-text', 'received', '2021-09-15 23:09:28', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello gaes\"}}}'),
(45, 'F7ZdxS7EyIDG', 'hello gaes', '', 'chat-text', 'received', '2021-09-15 23:09:51', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello gaes\"}}}'),
(46, 'F7ZdxS7EyIDG', 'hello', '', 'chat-text', 'received', '2021-09-15 23:09:04', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello\"}}}'),
(47, 'F7ZdxS7EyIDG', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-16 19:09:59', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(48, 'F7ZdxS7EyIDG', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-16 21:09:08', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(49, 'F7ZdxS7EyIDG', 'hello mas apa kabs', '', 'chat-text', 'received', '2021-09-16 21:09:41', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(50, 'LCm0JCGv8SN4', 'hello', '', 'chat-text', 'received', '2021-09-17 20:09:28', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello\"}}}'),
(51, 'izPYCnxY9BRV', 'hello', '6285156345912', 'chat-text', 'received', '2021-09-19 21:09:37', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello\"}}}'),
(52, 'izPYCnxY9BRV', 'hello gaes', '6285156345912', 'chat-text', 'received', '2021-09-19 21:09:17', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello gaes\"}}}'),
(53, 'izPYCnxY9BRV', 'hello 3', '6285156345912', 'chat-text', 'received', '2021-09-19 21:09:55', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello 3\"}}}'),
(54, 'izPYCnxY9BRV', 'hello', '6285156345912', 'chat-text', 'received', '2021-09-19 20:09:16', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello\"}}}'),
(55, 'GXjLhnzrzBry', 'hello', '62895361034833', 'chat-text', 'received', '2021-09-20 18:09:59', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB05CE8741EF2D09481\",\"message\":{\"extendedTextMessage\":{\"text\":\"hello\"}}}}'),
(56, 'LqL5mhSYPZmT', 'hello', '6285156345912', 'chat-text', 'received', '2021-09-21 19:09:53', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB01C5AF651194FED7A\",\"message\":{\"extendedTextMessage\":{\"text\":\"hello\"}}}}'),
(57, 'LqL5mhSYPZmT', '[{\"label\":\"Google\",\"url\":\"https:\\/\\/google.com\"},{\"label\":\"Facebook\",\"url\":\"https:\\/\\/facebook.com\"}]', '6285156345912', 'chat-button-link-mes', 'received', '2021-09-21 19:09:41', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB03AAC23DEB073AD59\",\"message\":{\"templateMessage\":{\"hydratedTemplate\":{\"hydratedContentText\":\"Kemana kamu mau pergi ?\",\"hydratedButtons\":[{\"urlButton\":{\"displayText\":\"Google\",\"url\":\"https:\\/\\/google.com\"},\"index\":0},{\"urlButton\":{\"displayText\":\"Facebook\",\"url\":\"https:\\/\\/facebook.com\"},\"index\":1}]}}}}}'),
(58, 'LqL5mhSYPZmT', '[{\"label\":\"Google\",\"url\":\"https:\\/\\/google.com\"},{\"label\":\"Facebook\",\"url\":\"https:\\/\\/facebook.com\"}]', '6285156345912', 'chat-button-link-mes', 'received', '2021-09-21 19:09:14', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB07C5751666E76BE4C\",\"message\":{\"templateMessage\":{\"hydratedTemplate\":{\"hydratedContentText\":\"Kemana kamu mau pergi ?\",\"hydratedButtons\":[{\"urlButton\":{\"displayText\":\"Google\",\"url\":\"https:\\/\\/google.com\"},\"index\":0},{\"urlButton\":{\"displayText\":\"Facebook\",\"url\":\"https:\\/\\/facebook.com\"},\"index\":1}]}}}}}'),
(59, 'LqL5mhSYPZmT', '[{\"label\":\"Google\",\"url\":\"https:\\/\\/google.com\"},{\"label\":\"Facebook\",\"url\":\"https:\\/\\/facebook.com\"}]', '6285156345912', 'chat-button-link-mes', 'received', '2021-09-21 19:09:10', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB0EB7F2BE72F8A4C46\",\"message\":{\"templateMessage\":{\"hydratedTemplate\":{\"hydratedContentText\":\"Kemana kamu mau pergi ?\",\"hydratedButtons\":[{\"urlButton\":{\"displayText\":\"Google\",\"url\":\"https:\\/\\/google.com\"},\"index\":0},{\"urlButton\":{\"displayText\":\"Facebook\",\"url\":\"https:\\/\\/facebook.com\"},\"index\":1}]}}}}}'),
(60, 'LqL5mhSYPZmT', 'hello mas apa kabs', '62851563459122-1631023555@g.us', 'chat-text', 'received', '2021-09-21 20:09:25', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB001DCF709B9F85712\",\"message\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}}'),
(61, 'LqL5mhSYPZmT', 'https://www.greenscene.co.id/wp-content/uploads/2021/09/One-Piece-11-696x497.jpg', '62851563459122-1631023555@g.us', 'chat-image', 'received', '2021-09-21 20:09:57', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB0D2ECA7F90BFD5150\",\"message\":{\"imageMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/AqPB5lRgK5vdf97RmsTAAU-_UE2PbJZpWQM74Ep8KTeb.enc\",\"mimetype\":\"image\\/jpeg\",\"caption\":\"hello mas apa kabs\",\"fileSha256\":\"tkTGXNPkOoP6uCudglTgbXLqlR+W8lxdeIJsG1KklF4=\",\"fileLength\":\"54197\",\"mediaKey\":\"CfKuxsqy8FiVJRqd7F1I\\/4LGoPl2aCv\\/llsOfWgh4BI=\",\"fileEncSha256\":\"nR96lAHszYSSCO9hGzyZj06BUy4bA6\\/JYNuPPHllObQ=\",\"jpegThumbnail\":\"\\/9j\\/2wBDABALDA4MChAODQ4SERATGCgaGBYWGDEjJR0oOjM9PDkzODdASFxOQERXRTc4UG1RV19iZ2hnPk1xeXBkeFxlZ2P\\/2wBDARESEhgVGC8aGi9jQjhCY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2P\\/wgARCAAwADADASIAAhEBAxEB\\/8QAGQAAAwEBAQAAAAAAAAAAAAAAAwQFAgEA\\/8QAGAEAAwEBAAAAAAAAAAAAAAAAAAECAwT\\/2gAMAwEAAhADEAAAASlMHm2EvXnlo0Jp98mVjT40tZm7JbXyWlhWqFsHe0yJHnOC\\/8QAHhAAAgMAAgMBAAAAAAAAAAAAAQIAAxESIgQhMRP\\/2gAIAQEAAQUCVFjVgjjxDWPo+q9YC5h8itJwlgyEZFtZIj5LWUlL9Bn5kxqXhOi1uy\\/ORgYqe9k4y4d1TqU9YYAQ2gR15LXoJHTiNHpv\\/8QAGREBAQADAQAAAAAAAAAAAAAAAQAQETEh\\/9oACAEDAQE\\/AfYdzduTGwnH\\/8QAGhEBAAEFAAAAAAAAAAAAAAAAAQACECAhYf\\/aAAgBAgEBPwHbDtgjTDD\\/xAAhEAACAgIBBAMAAAAAAAAAAAAAARARITEyAhJCYSJBof\\/aAAgBAQAGPwLcfBlRiKcU9R6hPtyV5HUc\\/wAPoawUsIvyNlnOlF0KbPZZT0YMJx\\/\\/xAAgEAEAAwABBQADAAAAAAAAAAABABEhQRAxUWGRgbHB\\/9oACAEBAAE\\/IQlC\\/MulfIImr+xlmQGla5lbv8ltgiGtr8iEs0ZcTvgw1VwgMfCKNohAD5Mr0AMSK1Ypyzgh8xU7\\/EXnB3joxTIhtNb3lmNPUopYK0H1S6RXIHqclcRkArv0YbJBzZCv6zIizxFMj09D\\/9oADAMBAAIAAwAAABDeKhKmmhP\\/AP\\/EABgRAAMBAQAAAAAAAAAAAAAAAAABETEh\\/9oACAEDAQE\\/EE6ojlDxwxS9w6x0ah4M6WYf\\/8QAGREAAwEBAQAAAAAAAAAAAAAAAAERIRBB\\/9oACAECAQE\\/EE2YXcCV01oxvBIe9\\/\\/EACIQAQACAgMAAQUBAAAAAAAAAAEAESFBMVFhgXGRscHR4f\\/aAAgBAQABPxDHAvmOU4bwZkwMo8fCVxb7jxcHbJ3MaJtVbGhF9DAPHDiwdyjAPGdQDlsBmn03FDQPXEJNDaq+OpSToziFmDYVj76fyN1+DpgsWNARpJF6MRHK5awr7bjAyQMMPcZyjAfmCi8pw1X6hbR9KoESQy7fK6g2iM1pvc5+6RlMPABtRWZyAVdSoJia4dMAAXq4bhpyJggsNbT2IXaPL\\/iHxCyXCeQFXpcRQcmjqf\\/Z\"}}}}'),
(62, 'LqL5mhSYPZmT', 'https://www.greenscene.co.id/wp-content/uploads/2021/09/One-Piece-11-696x497.jpg', '62851563459122-1631023555@g.us', 'chat-image', 'received', '2021-09-21 20:09:22', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB0B6112C8C8E559D56\",\"message\":{\"imageMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/ArHOphYxCfJs0EJ_c8f2k6Ionuw1-bKF3LOXHASTM_Z6.enc\",\"mimetype\":\"image\\/jpeg\",\"caption\":\"hello mas apa kabs\",\"fileSha256\":\"tkTGXNPkOoP6uCudglTgbXLqlR+W8lxdeIJsG1KklF4=\",\"fileLength\":\"54197\",\"mediaKey\":\"5u4HAzmTsPZ8bpKbZAzdUxepsUjo6IL\\/StY\\/Q6t57zc=\",\"fileEncSha256\":\"E6u6pGWPTEfN0rl15O38v2oOIzGARX7Zd8dXBIs5Cv0=\",\"jpegThumbnail\":\"\\/9j\\/2wBDABALDA4MChAODQ4SERATGCgaGBYWGDEjJR0oOjM9PDkzODdASFxOQERXRTc4UG1RV19iZ2hnPk1xeXBkeFxlZ2P\\/2wBDARESEhgVGC8aGi9jQjhCY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2P\\/wgARCAAwADADASIAAhEBAxEB\\/8QAGQAAAwEBAQAAAAAAAAAAAAAAAwQFAgEA\\/8QAGAEAAwEBAAAAAAAAAAAAAAAAAAECAwT\\/2gAMAwEAAhADEAAAASlMHm2EvXnlo0Jp98mVjT40tZm7JbXyWlhWqFsHe0yJHnOC\\/8QAHhAAAgMAAgMBAAAAAAAAAAAAAQIAAxESIgQhMRP\\/2gAIAQEAAQUCVFjVgjjxDWPo+q9YC5h8itJwlgyEZFtZIj5LWUlL9Bn5kxqXhOi1uy\\/ORgYqe9k4y4d1TqU9YYAQ2gR15LXoJHTiNHpv\\/8QAGREBAQADAQAAAAAAAAAAAAAAAQAQETEh\\/9oACAEDAQE\\/AfYdzduTGwnH\\/8QAGhEBAAEFAAAAAAAAAAAAAAAAAQACECAhYf\\/aAAgBAgEBPwHbDtgjTDD\\/xAAhEAACAgIBBAMAAAAAAAAAAAAAARARITEyAhJCYSJBof\\/aAAgBAQAGPwLcfBlRiKcU9R6hPtyV5HUc\\/wAPoawUsIvyNlnOlF0KbPZZT0YMJx\\/\\/xAAgEAEAAwABBQADAAAAAAAAAAABABEhQRAxUWGRgbHB\\/9oACAEBAAE\\/IQlC\\/MulfIImr+xlmQGla5lbv8ltgiGtr8iEs0ZcTvgw1VwgMfCKNohAD5Mr0AMSK1Ypyzgh8xU7\\/EXnB3joxTIhtNb3lmNPUopYK0H1S6RXIHqclcRkArv0YbJBzZCv6zIizxFMj09D\\/9oADAMBAAIAAwAAABDeKhKmmhP\\/AP\\/EABgRAAMBAQAAAAAAAAAAAAAAAAABETEh\\/9oACAEDAQE\\/EE6ojlDxwxS9w6x0ah4M6WYf\\/8QAGREAAwEBAQAAAAAAAAAAAAAAAAERIRBB\\/9oACAECAQE\\/EE2YXcCV01oxvBIe9\\/\\/EACIQAQACAgMAAQUBAAAAAAAAAAEAESFBMVFhgXGRscHR4f\\/aAAgBAQABPxDHAvmOU4bwZkwMo8fCVxb7jxcHbJ3MaJtVbGhF9DAPHDiwdyjAPGdQDlsBmn03FDQPXEJNDaq+OpSToziFmDYVj76fyN1+DpgsWNARpJF6MRHK5awr7bjAyQMMPcZyjAfmCi8pw1X6hbR9KoESQy7fK6g2iM1pvc5+6RlMPABtRWZyAVdSoJia4dMAAXq4bhpyJggsNbT2IXaPL\\/iHxCyXCeQFXpcRQcmjqf\\/Z\"}}}}'),
(63, 'LqL5mhSYPZmT', 'http://pustaka.unp.ac.id/file/abstrak_kki/EBOOKS/23%20kiat%20hidup%20bahagia.pdf', '62851563459122-1631023555@g.us', 'chat-document', 'received', '2021-09-21 20:09:48', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB0FD387CADB3762E72\",\"message\":{\"documentMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/Aj2kMpJeGQPjcmaxzxTR14JN8jOfkkGzIQ_lxSQ0KxhS.enc\",\"mimetype\":\"application\\/pdf\",\"fileSha256\":\"dJMdYxibDftF+V82a3uI4PE0cB61OoFr252C8mKDZxU=\",\"fileLength\":\"233206\",\"mediaKey\":\"L\\/O1XhCbAsJF\\/VNzvywva9c6ohcWjiwoyZCRwRlO+r4=\",\"fileName\":\"23%20kiat%20hidup%20bahagia.pdf\",\"fileEncSha256\":\"0R8WXqT1GAen75VSUOyAx2P372i5+NXf8W9vdmh8rcU=\"}}}}'),
(64, 'LqL5mhSYPZmT', 'http://pustaka.unp.ac.id/file/abstrak_kki/EBOOKS/23%20kiat%20hidup%20bahagia.pdf', '62851563459122-1631023555@g.us', 'chat-document', 'received', '2021-09-21 20:09:13', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB0F810D90CE725C47C\",\"message\":{\"documentMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/AnUuNyb6zsPLIOBeK_CrDW0fQegmffRMMs19u8AAwZwT.enc\",\"mimetype\":\"application\\/pdf\",\"fileSha256\":\"dJMdYxibDftF+V82a3uI4PE0cB61OoFr252C8mKDZxU=\",\"fileLength\":\"233206\",\"mediaKey\":\"GiwS1JTkO8IfYnmITb69Az\\/Kia+HiH4pzbiaGFyUOs8=\",\"fileName\":\"t.pdf\",\"fileEncSha256\":\"QZyg5nY0nA68Kq1Itz16m3pIOsstbNq3p\\/K8oofNpb4=\"}}}}'),
(65, 'LqL5mhSYPZmT', 'http://pustaka.unp.ac.id/file/abstrak_kki/EBOOKS/23%20kiat%20hidup%20bahagia.pdf', '62851563459122-1631023555@g.us', 'chat-document', 'received', '2021-09-21 20:09:53', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB0C69675FD6C02AF69\",\"message\":{\"documentMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/AtBAiuX0YL6XDts8TZ5yA6n50FO_KaMKGE_OCcWz5O3W.enc\",\"mimetype\":\"application\\/pdf\",\"fileSha256\":\"dJMdYxibDftF+V82a3uI4PE0cB61OoFr252C8mKDZxU=\",\"fileLength\":\"233206\",\"mediaKey\":\"f4kpjhe5AIcAz1IqI3KP4OPggB5n1B6nZvVZ7rZRadA=\",\"fileName\":\"23%20kiat%20hidup%20bahagia.pdf\",\"fileEncSha256\":\"fCJVox8bJlN0XzpIuiKtNqeNu+Y+EO9Gha+Kr+CeVDs=\"}}}}'),
(66, 'LqL5mhSYPZmT', 'http://pustaka.unp.ac.id/file/abstrak_kki/EBOOKS/23%20kiat%20hidup%20bahagia.pdf', '62851563459122-1631023555@g.us', 'chat-document', 'received', '2021-09-21 20:09:54', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB0E47CC5FB4077106A\",\"message\":{\"documentMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/AkJCxQ4kxXvVTZkNqT2HYNbyct1d-6YQOZ_95YPLyq5S.enc\",\"mimetype\":\"application\\/pdf\",\"fileSha256\":\"dJMdYxibDftF+V82a3uI4PE0cB61OoFr252C8mKDZxU=\",\"fileLength\":\"233206\",\"mediaKey\":\"GXfm8zsniQPV59C10AeqqZfNMgdOYYCitTWJSiTL1BU=\",\"fileName\":\"23%20kiat%20hidup%20bahagia.pdf\",\"fileEncSha256\":\"pIdgH7KxM6\\/k9DVm7MGZ4pzO53adb4gm4MylAMA1fXE=\"}}}}'),
(67, 'LqL5mhSYPZmT', 'https://www.onirikal.com/videos/mp4/nestlegold.mp4', '62851563459122-1631023555@g.us', 'chat-video', 'received', '2021-09-21 20:09:11', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB036D83D2E1FE9A143\",\"message\":{\"videoMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/AnG75f7R4ptpB_3w2AnjuG4-vVPYzsz1SWTKtV5Fh7KK.enc\",\"mimetype\":\"video\\/mp4\",\"fileSha256\":\"1qU2e\\/Z8Pxcj7+QLFUAgrj2vnIhHa\\/rJ9XMt4x5f\\/F8=\",\"fileLength\":\"1454520\",\"mediaKey\":\"D\\/0Z++ZbtuYvEJ4g4m5Q\\/fcjvDMsH+4LsbhXATc4gDs=\",\"caption\":\"hello mas apa kabs\",\"fileEncSha256\":\"rTDw0cbmVnG3AXjBLuCP+mYvuetsVFLfqFUgiFSnUxQ=\"}}}}'),
(68, 'LqL5mhSYPZmT', 'null', '62851563459122-1631023555@g.us', 'chat-location', 'received', '2021-09-21 21:09:12', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB0BE624BA32A451FC6\",\"message\":{\"locationMessage\":{\"degreesLatitude\":24.121231,\"degreesLongitude\":55.1121221}}}}'),
(69, 'LqL5mhSYPZmT', 'null', '62851563459122-1631023555@g.us', 'chat-location', 'received', '2021-09-21 21:09:57', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB04A15F010723F96AD\",\"message\":{\"locationMessage\":{\"degreesLatitude\":24.121231,\"degreesLongitude\":55.1121221}}}}'),
(70, 'LqL5mhSYPZmT', '{\"lat\":24.121231,\"long\":55.1121221}', '62851563459122-1631023555@g.us', 'chat-location', 'received', '2021-09-21 21:09:39', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB024F72FAE6645D65F\",\"message\":{\"locationMessage\":{\"degreesLatitude\":24.121231,\"degreesLongitude\":55.1121221}}}}'),
(71, 'LqL5mhSYPZmT', '{\"instance_key\":\"LqL5mhSYPZmT\",\"jid_group\":\"62851563459122-1631023555@g.us\",\"fullname\":\"Nova Ariyanto\",\"organization\":\"whatsva\",\"phoneNumber\":\"62895361034833\"}', '62851563459122-1631023555@g.us', 'chat-vcard', 'received', '2021-09-21 21:09:53', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB00A91CE0B9284DB24\",\"message\":{\"contactMessage\":{\"vcard\":\"BEGIN:VCARD\\nVERSION:3.0\\nFN:Nova Ariyanto\\nORG:whatsva;\\nTEL;type=CELL;type=VOICE;waid=62895361034833:+62895361034833\\nEND:VCARD\"}}}}'),
(72, 'LqL5mhSYPZmT', '{\"title\":\"judul list\",\"rows\":[{\"title\":\"list 1\",\"description\":\"descript 1\",\"rowId\":\"1\"},{\"title\":\"list 2\",\"description\":\"descript 2\",\"rowId\":\"2\"}]}', '62851563459122-1631023555@g.us', 'chat-list-message', 'received', '2021-09-21 21:09:09', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB07289A5965E6544AF\",\"message\":{\"listMessage\":{\"description\":\"ini list message\",\"buttonText\":\"hello\",\"listType\":\"SINGLE_SELECT\",\"sections\":[{\"title\":\"judul list\",\"rows\":[{\"title\":\"list 1\",\"description\":\"descript 1\",\"rowId\":\"1\"},{\"title\":\"list 2\",\"description\":\"descript 2\",\"rowId\":\"2\"}]}]}}}}'),
(73, 'LqL5mhSYPZmT', '[{\"buttonId\":\"btn1\",\"buttonText\":{\"displayText\":\"Yes\"},\"type\":1},{\"buttonId\":\"btn2\",\"buttonText\":{\"displayText\":\"No\"},\"type\":1}]', '62851563459122-1631023555@g.us', 'chat-button-message', 'received', '2021-09-21 21:09:25', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB0605C21CC350B304A\",\"message\":{\"buttonsMessage\":{\"contentText\":\"Apakah kamu mempunyai uang ?\",\"footerText\":\"jawab dengan jujur\",\"buttons\":[{\"buttonId\":\"btn1\",\"buttonText\":{\"displayText\":\"Yes\"},\"type\":\"RESPONSE\"},{\"buttonId\":\"btn2\",\"buttonText\":{\"displayText\":\"No\"},\"type\":\"RESPONSE\"}],\"headerType\":\"EMPTY\"}}}}'),
(74, 'LqL5mhSYPZmT', '[{\"label\":\"Google\",\"url\":\"https:\\/\\/google.com\"},{\"label\":\"Facebook\",\"url\":\"https:\\/\\/facebook.com\"}]', '62851563459122-1631023555@g.us', 'chat-button-link-mes', 'received', '2021-09-21 21:09:00', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB09FCB1DC361D9882E\",\"message\":{\"templateMessage\":{\"hydratedTemplate\":{\"hydratedContentText\":\"Apa yang kamu cari ?\",\"hydratedButtons\":[{\"urlButton\":{\"displayText\":\"Google\",\"url\":\"https:\\/\\/google.com\"},\"index\":0},{\"urlButton\":{\"displayText\":\"Facebook\",\"url\":\"https:\\/\\/facebook.com\"},\"index\":1}]}}}}}'),
(75, 'xOmO52xkbZ67', 'hello', '62895361034833', 'chat-text', 'received', '2021-09-26 21:09:59', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"id\":\"3EB0F4F86C519D96739D\",\"message\":{\"extendedTextMessage\":{\"text\":\"hello\"}}}}');

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
(1, 'admin', 'admin@gmail.com', '$2y$10$hRi1qju2KOeEPcBZ0wYfhu/PN5e9Wl.ddWeDTds8Uokad764X9D1a', 2, 1, '2021-09-28 03:01:34'),
(2, 'client01', 'client01@gmail.com', '123456', 1, 1, '2021-09-20 03:11:40'),
(3, 'client02', 'client02@gmail.com', 'nova123', 2, 1, '2021-09-20 03:14:12'),
(4, 'client03', 'client03@gmail.com', 'client03', 1, 1, '2021-09-20 03:17:30'),
(5, 'client04', 'client04@gmail.com', '12345', 1, 0, '2021-09-20 03:24:10'),
(6, 'client05', 'client03@gmail.com', 'client04', 1, 0, '2021-09-20 03:24:55'),
(7, 'client06', 'client06@gmail.com', '123456', 1, 1, '2021-09-20 03:33:03'),
(8, 'client09', 'client09@gmail.com', '$2y$10$7LxfVz2UKTszTc/U7vHx.eOCu1noD8YRATOKDOsdVrMGGiijosnlW', 1, 1, '2021-09-20 03:40:30'),
(9, 'client10', 'client10@gmail.com', '$2y$10$xysHnkP9yGj5KTDpc9omUOcn9dOAQ1BKBKKBuTAZpngT0oogyyusC', 1, 1, '2021-09-28 08:41:04'),
(10, 'client11', 'client11@gmail.com', '$2y$10$kGKt95M.IWejYJSEEx/xyuAnyfwt9EQVYB.aJJQwA2Wv38c6jbdei', 1, 0, '2021-09-20 05:03:43'),
(11, 'client12', 'client12@gmail.com', '$2y$10$k0le/1W4zTvGXMiyJ1rixuD5mbMOOPcsD0WPz0tznD9YZhlsAZZRC', 1, 0, '2021-09-20 08:40:27'),
(12, 'client17', 'client17@gmail.com', '$2y$10$5ObZ7DK/msH/uXUWUpcIQOTrNZSCIGlz8ICDRaj945V/v7OxKeXYS', 1, 0, '2021-09-20 05:28:31'),
(13, 'cro', 'cro@gmail.com', '$2y$10$qZZ8tYFgVdulmR/70EAvZ.hzD21aQ.8Q9hRd052mAnhfv8sHAw4pK', 1, 1, '2021-09-28 03:01:38');

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
-- Dumping data for table `tb_webhook`
--

INSERT INTO `tb_webhook` (`id`, `instance_key`, `url`, `status`) VALUES
(2, 'xOmO52xkbZ67', 'https://webhook.site/6af831de-ef2a-4d41-a160-b1e6a397e892', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_device`
--
ALTER TABLE `tb_device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tb_message`
--
ALTER TABLE `tb_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tb_message_in`
--
ALTER TABLE `tb_message_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

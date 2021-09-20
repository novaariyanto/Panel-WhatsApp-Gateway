-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 20, 2021 at 04:25 AM
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
(15, 'client10_Device B', 'izPYCnxY9BRV', NULL, 9, 2, '2021-09-20', NULL);

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
(53, 'izPYCnxY9BRV', 'hello 3', '6285156345912', 'chat-text', 'received', '2021-09-19 21:09:55', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello 3\"}}}');

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
(1, 'admin', 'admin@gmail.com', '$2y$10$hRi1qju2KOeEPcBZ0wYfhu/PN5e9Wl.ddWeDTds8Uokad764X9D1a', 2, 1, '2021-09-19 20:43:59'),
(2, 'client01', 'client01@gmail.com', '123456', 1, 1, '2021-09-20 03:11:40'),
(3, 'client02', 'client02@gmail.com', 'nova123', 2, 1, '2021-09-20 03:14:12'),
(4, 'client03', 'client03@gmail.com', 'client03', 1, 1, '2021-09-20 03:17:30'),
(5, 'client04', 'client04@gmail.com', '12345', 1, 0, '2021-09-20 03:24:10'),
(6, 'client05', 'client03@gmail.com', 'client04', 1, 0, '2021-09-20 03:24:55'),
(7, 'client06', 'client06@gmail.com', '123456', 1, 1, '2021-09-20 03:33:03'),
(8, 'client09', 'client09@gmail.com', '$2y$10$7LxfVz2UKTszTc/U7vHx.eOCu1noD8YRATOKDOsdVrMGGiijosnlW', 1, 1, '2021-09-20 03:40:30'),
(9, 'client10', 'client10@gmail.com', '$2y$10$xysHnkP9yGj5KTDpc9omUOcn9dOAQ1BKBKKBuTAZpngT0oogyyusC', 1, 1, '2021-09-19 20:46:37');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_device`
--
ALTER TABLE `tb_device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_message`
--
ALTER TABLE `tb_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tb_setting`
--
ALTER TABLE `tb_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

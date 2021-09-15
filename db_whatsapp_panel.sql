-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2021 at 04:44 PM
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
(2, 'device 1', 'HmW1WUnR3gC7', NULL, 1, 2, '2021-09-15', NULL),
(3, 'Device B', 'x1VSZuuanCsb', NULL, 1, 1, '2021-09-14', NULL),
(4, 'Device A', '6xfFWERb6xEE', NULL, 1, 1, '2021-09-14', NULL),
(5, 'device baru', 'g1Y18Ifu8txz', NULL, 1, 1, '2021-09-14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_message`
--

CREATE TABLE `tb_message` (
  `id` int(11) NOT NULL,
  `instance_key` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL,
  `data_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_message`
--

INSERT INTO `tb_message` (`id`, `instance_key`, `message`, `type`, `status`, `date_time`, `data_message`) VALUES
(1, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 18:09:55', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(2, 'HmW1WUnR3gC7', '{\"contactMessage\":{\"vcard\":\"BEGIN:VCARD\\nVERSION:3.0\\nFN:Nova Ariyanto\\nORG:whatsva;\\nTEL;type=CELL;type=VOICE;waid=62895361034833:+62895361034833\\nEND:VCARD\"}}', 'chat-vcard', 'received', '2021-09-14 18:09:13', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"contactMessage\":{\"vcard\":\"BEGIN:VCARD\\nVERSION:3.0\\nFN:Nova Ariyanto\\nORG:whatsva;\\nTEL;type=CELL;type=VOICE;waid=62895361034833:+62895361034833\\nEND:VCARD\"}}}'),
(3, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 19:09:06', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(4, 'HmW1WUnR3gC7', 'https://www.greenscene.co.id/wp-content/uploads/2021/09/One-Piece-11-696x497.jpg', 'chat-image', 'received', '2021-09-14 19:09:12', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"imageMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/Aq40kaCvig7w-Bt0o0bXixIndN3jz9OmVmpABWGwW02q.enc\",\"mimetype\":\"image\\/jpeg\",\"caption\":\"hello mas apa kabs\",\"fileSha256\":\"tkTGXNPkOoP6uCudglTgbXLqlR+W8lxdeIJsG1KklF4=\",\"fileLength\":\"54197\",\"mediaKey\":\"VM73GrJv4ozLwmhULl7XWHegrMCjNzIBhTqS+Zpyvow=\",\"fileEncSha256\":\"3sPpUR4Afbj0YtaUKe1KzKpq64GrXg2W4416bXed2wM=\",\"jpegThumbnail\":\"\\/9j\\/2wBDABALDA4MChAODQ4SERATGCgaGBYWGDEjJR0oOjM9PDkzODdASFxOQERXRTc4UG1RV19iZ2hnPk1xeXBkeFxlZ2P\\/2wBDARESEhgVGC8aGi9jQjhCY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2P\\/wgARCAAwADADASIAAhEBAxEB\\/8QAGQAAAwEBAQAAAAAAAAAAAAAAAwQFAgEA\\/8QAGAEAAwEBAAAAAAAAAAAAAAAAAAECAwT\\/2gAMAwEAAhADEAAAASlMHm2EvXnlo0Jp98mVjT40tZm7JbXyWlhWqFsHe0yJHnOC\\/8QAHhAAAgMAAgMBAAAAAAAAAAAAAQIAAxESIgQhMRP\\/2gAIAQEAAQUCVFjVgjjxDWPo+q9YC5h8itJwlgyEZFtZIj5LWUlL9Bn5kxqXhOi1uy\\/ORgYqe9k4y4d1TqU9YYAQ2gR15LXoJHTiNHpv\\/8QAGREBAQADAQAAAAAAAAAAAAAAAQAQETEh\\/9oACAEDAQE\\/AfYdzduTGwnH\\/8QAGhEBAAEFAAAAAAAAAAAAAAAAAQACECAhYf\\/aAAgBAgEBPwHbDtgjTDD\\/xAAhEAACAgIBBAMAAAAAAAAAAAAAARARITEyAhJCYSJBof\\/aAAgBAQAGPwLcfBlRiKcU9R6hPtyV5HUc\\/wAPoawUsIvyNlnOlF0KbPZZT0YMJx\\/\\/xAAgEAEAAwABBQADAAAAAAAAAAABABEhQRAxUWGRgbHB\\/9oACAEBAAE\\/IQlC\\/MulfIImr+xlmQGla5lbv8ltgiGtr8iEs0ZcTvgw1VwgMfCKNohAD5Mr0AMSK1Ypyzgh8xU7\\/EXnB3joxTIhtNb3lmNPUopYK0H1S6RXIHqclcRkArv0YbJBzZCv6zIizxFMj09D\\/9oADAMBAAIAAwAAABDeKhKmmhP\\/AP\\/EABgRAAMBAQAAAAAAAAAAAAAAAAABETEh\\/9oACAEDAQE\\/EE6ojlDxwxS9w6x0ah4M6WYf\\/8QAGREAAwEBAQAAAAAAAAAAAAAAAAERIRBB\\/9oACAECAQE\\/EE2YXcCV01oxvBIe9\\/\\/EACIQAQACAgMAAQUBAAAAAAAAAAEAESFBMVFhgXGRscHR4f\\/aAAgBAQABPxDHAvmOU4bwZkwMo8fCVxb7jxcHbJ3MaJtVbGhF9DAPHDiwdyjAPGdQDlsBmn03FDQPXEJNDaq+OpSToziFmDYVj76fyN1+DpgsWNARpJF6MRHK5awr7bjAyQMMPcZyjAfmCi8pw1X6hbR9KoESQy7fK6g2iM1pvc5+6RlMPABtRWZyAVdSoJia4dMAAXq4bhpyJggsNbT2IXaPL\\/iHxCyXCeQFXpcRQcmjqf\\/Z\"}}}'),
(5, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 19:09:15', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(6, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 19:09:17', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(7, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 19:09:20', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(8, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 19:09:22', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(9, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 19:09:24', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(10, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 19:09:26', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(11, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 19:09:28', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(12, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 19:09:38', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(13, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 19:09:40', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(14, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 21:09:00', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}'),
(15, 'HmW1WUnR3gC7', 'https://www.greenscene.co.id/wp-content/uploads/2021/09/One-Piece-11-696x497.jpg', 'chat-image', 'received', '2021-09-14 21:09:14', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"imageMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/Am3hMQLokciOsYxM0EQ1YfneXKMqn27BvKK_eDEINt3d.enc\",\"mimetype\":\"image\\/jpeg\",\"caption\":\"hello mas apa kabs\",\"fileSha256\":\"tkTGXNPkOoP6uCudglTgbXLqlR+W8lxdeIJsG1KklF4=\",\"fileLength\":\"54197\",\"mediaKey\":\"Jmzr95gR2GJ9QIFIQDslJvPmAn2YyR9Nt9UgOUMhVbI=\",\"fileEncSha256\":\"ajopQPe93mvMRmFz\\/1FY1qZ+HPdeXfJ8N\\/EHN2mLeSI=\",\"jpegThumbnail\":\"\\/9j\\/2wBDABALDA4MChAODQ4SERATGCgaGBYWGDEjJR0oOjM9PDkzODdASFxOQERXRTc4UG1RV19iZ2hnPk1xeXBkeFxlZ2P\\/2wBDARESEhgVGC8aGi9jQjhCY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2NjY2P\\/wgARCAAwADADASIAAhEBAxEB\\/8QAGQAAAwEBAQAAAAAAAAAAAAAAAwQFAgEA\\/8QAGAEAAwEBAAAAAAAAAAAAAAAAAAECAwT\\/2gAMAwEAAhADEAAAASlMHm2EvXnlo0Jp98mVjT40tZm7JbXyWlhWqFsHe0yJHnOC\\/8QAHhAAAgMAAgMBAAAAAAAAAAAAAQIAAxESIgQhMRP\\/2gAIAQEAAQUCVFjVgjjxDWPo+q9YC5h8itJwlgyEZFtZIj5LWUlL9Bn5kxqXhOi1uy\\/ORgYqe9k4y4d1TqU9YYAQ2gR15LXoJHTiNHpv\\/8QAGREBAQADAQAAAAAAAAAAAAAAAQAQETEh\\/9oACAEDAQE\\/AfYdzduTGwnH\\/8QAGhEBAAEFAAAAAAAAAAAAAAAAAQACECAhYf\\/aAAgBAgEBPwHbDtgjTDD\\/xAAhEAACAgIBBAMAAAAAAAAAAAAAARARITEyAhJCYSJBof\\/aAAgBAQAGPwLcfBlRiKcU9R6hPtyV5HUc\\/wAPoawUsIvyNlnOlF0KbPZZT0YMJx\\/\\/xAAgEAEAAwABBQADAAAAAAAAAAABABEhQRAxUWGRgbHB\\/9oACAEBAAE\\/IQlC\\/MulfIImr+xlmQGla5lbv8ltgiGtr8iEs0ZcTvgw1VwgMfCKNohAD5Mr0AMSK1Ypyzgh8xU7\\/EXnB3joxTIhtNb3lmNPUopYK0H1S6RXIHqclcRkArv0YbJBzZCv6zIizxFMj09D\\/9oADAMBAAIAAwAAABDeKhKmmhP\\/AP\\/EABgRAAMBAQAAAAAAAAAAAAAAAAABETEh\\/9oACAEDAQE\\/EE6ojlDxwxS9w6x0ah4M6WYf\\/8QAGREAAwEBAQAAAAAAAAAAAAAAAAERIRBB\\/9oACAECAQE\\/EE2YXcCV01oxvBIe9\\/\\/EACIQAQACAgMAAQUBAAAAAAAAAAEAESFBMVFhgXGRscHR4f\\/aAAgBAQABPxDHAvmOU4bwZkwMo8fCVxb7jxcHbJ3MaJtVbGhF9DAPHDiwdyjAPGdQDlsBmn03FDQPXEJNDaq+OpSToziFmDYVj76fyN1+DpgsWNARpJF6MRHK5awr7bjAyQMMPcZyjAfmCi8pw1X6hbR9KoESQy7fK6g2iM1pvc5+6RlMPABtRWZyAVdSoJia4dMAAXq4bhpyJggsNbT2IXaPL\\/iHxCyXCeQFXpcRQcmjqf\\/Z\"}}}'),
(16, 'HmW1WUnR3gC7', 'http://pustaka.unp.ac.id/file/abstrak_kki/EBOOKS/23%20kiat%20hidup%20bahagia.pdf', 'chat-document', 'received', '2021-09-14 21:09:19', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"documentMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/Ah34hLmpQIoXKmab49htBy160EuFBusBjps5VMq7ZOkd.enc\",\"mimetype\":\"application\\/pdf\",\"fileSha256\":\"dJMdYxibDftF+V82a3uI4PE0cB61OoFr252C8mKDZxU=\",\"fileLength\":\"233206\",\"mediaKey\":\"RzTh53+s15CZoPgbsEKYZ93h5hw+shbFQgjwdKocFIw=\",\"fileName\":\"23%20kiat%20hidup%20bahagia.pdf\",\"fileEncSha256\":\"k5RAWS2Dce3ukMAT0Q4PkeYyeNyHyu8p3VmsfaGeo\\/4=\"}}}'),
(17, 'HmW1WUnR3gC7', 'https://www.onirikal.com/videos/mp4/nestlegold.mp4', 'chat-video', 'received', '2021-09-14 21:09:41', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"videoMessage\":{\"url\":\"https:\\/\\/mmg.whatsapp.net\\/d\\/f\\/Ai41c11VjJcRYiakUVRrMfpsBTYJpY6rDFj22kFm8wCm.enc\",\"mimetype\":\"video\\/mp4\",\"fileSha256\":\"1qU2e\\/Z8Pxcj7+QLFUAgrj2vnIhHa\\/rJ9XMt4x5f\\/F8=\",\"fileLength\":\"1454520\",\"mediaKey\":\"kHZBeLltf6sJTG4gIbggo+UMg+CYERgBvJyPDcx4vf4=\",\"caption\":\"hello mas apa kabs\",\"fileEncSha256\":\"ZBrmX4Km7maYvAYBCeFriMWAIXsf2ZVEhL0hpPpW9Ds=\"}}}'),
(18, 'HmW1WUnR3gC7', 'hello mas apa kabs', 'chat-text', 'received', '2021-09-14 21:09:58', '{\"success\":true,\"message\":\"Sending Message\",\"data\":{\"extendedTextMessage\":{\"text\":\"hello mas apa kabs\"}}}');

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
(1, 'admin', 'admin@gmail.com', '$2y$10$hRi1qju2KOeEPcBZ0wYfhu/PN5e9Wl.ddWeDTds8Uokad764X9D1a', 1, 1, '2021-09-15 09:25:24');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_message`
--
ALTER TABLE `tb_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_setting`
--
ALTER TABLE `tb_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

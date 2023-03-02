-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2022 at 02:30 AM
-- Server version: 5.7.40
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoappstore_smm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(225) NOT NULL,
  `bank_sube` varchar(225) NOT NULL,
  `bank_hesap` varchar(225) NOT NULL,
  `bank_iban` text,
  `bank_alici` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `bank_name`, `bank_sube`, `bank_hesap`, `bank_iban`, `bank_alici`) VALUES
(1, 'test', 'test', 'test', '545', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `blog_title` text COLLATE utf8mb4_bin,
  `blog_image` text CHARACTER SET utf8,
  `blog_content` text COLLATE utf8mb4_bin,
  `blog_created` text CHARACTER SET utf8 NOT NULL,
  `url` varchar(225) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text COLLATE utf8mb4_bin NOT NULL,
  `name_lang` text COLLATE utf8mb4_bin NOT NULL,
  `category_line` double NOT NULL,
  `category_type` enum('1','2') CHARACTER SET utf8 NOT NULL DEFAULT '2',
  `category_secret` enum('1','2') COLLATE utf8mb4_bin NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `name_lang`, `category_line`, `category_type`, `category_secret`) VALUES
(2, 'Radmdan Services (عروض رمضان)', '', 1, '2', '2'),
(3, 'tete', '', 2, '2', '2'),
(4, 'aio', '', 3, '2', '2'),
(7, 'RAMADAN YEHIA', '', 4, '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `child_panels`
--

CREATE TABLE `child_panels` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `panel_domain` text,
  `panel_currency` text,
  `panel_status` varchar(225) NOT NULL DEFAULT 'pending',
  `panel_price` text,
  `panel_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `child_panels`
--

INSERT INTO `child_panels` (`id`, `client_id`, `panel_domain`, `panel_currency`, `panel_status`, `panel_price`, `panel_created`) VALUES
(1, 18, 'dfsdfsdfsdf', 'USD', 'pending', '1', '2022-05-23 21:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `first_name` varchar(225) DEFAULT NULL,
  `last_name` varchar(225) DEFAULT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` text NOT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `balance` double NOT NULL DEFAULT '0',
  `balance_type` enum('1','2') NOT NULL DEFAULT '2',
  `debit_limit` double NOT NULL,
  `spent` double NOT NULL DEFAULT '0',
  `register_date` datetime NOT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) NOT NULL,
  `register_ip` varchar(225) NOT NULL,
  `apikey` text NOT NULL,
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` text,
  `lang` varchar(255) NOT NULL DEFAULT 'tr',
  `timezone` double NOT NULL DEFAULT '0',
  `admin_theme` enum('1','2') NOT NULL DEFAULT '1',
  `referral` varchar(225) DEFAULT NULL,
  `referral_code` varchar(225) NOT NULL,
  `refchar` varchar(225) NOT NULL DEFAULT '0',
  `reforder` varchar(225) NOT NULL DEFAULT '0',
  `total_click` varchar(225) NOT NULL DEFAULT '0',
  `sms_verify` int(11) NOT NULL DEFAULT '1',
  `mail_verify` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `first_name`, `last_name`, `email`, `username`, `password`, `telephone`, `balance`, `balance_type`, `debit_limit`, `spent`, `register_date`, `login_date`, `login_ip`, `register_ip`, `apikey`, `client_type`, `access`, `lang`, `timezone`, `admin_theme`, `referral`, `referral_code`, `refchar`, `reforder`, `total_click`, `sms_verify`, `mail_verify`) VALUES
(29, '', '', 'heshamsaad05@gmail.com', 'heshamsaad', 'd2da1e9f79c6ca6d5d60c7a2b8673c5a', '', 0, '2', 0, 0, '2022-11-12 02:43:19', '2022-11-12 02:43:26', '197.62.133.50', '', '133c403111a7bf1aec15f531bcf3c07f', '2', '{\"admin_access\":\"1\",\"users\":\"1\",\"orders\":\"1\",\"subscriptions\":\"1\",\"dripfeed\":\"1\",\"tasks\":\"1\",\"services\":\"1\",\"payments\":\"1\",\"tickets\":\"1\",\"reports\":\"1\",\"general_settings\":\"1\",\"pages\":\"1\",\"blog\":\"1\",\"seo\":\"1\",\"menu\":\"1\",\"subject\":\"1\",\"child_panels\":\"1\",\"payments_settings\":\"1\",\"bank_accounts\":\"1\",\"payments_bonus\":\"1\",\"alert_settings\":\"1\",\"providers\":\"1\",\"modules\":\"1\",\"themes\":\"1\",\"language\":\"1\",\"logs\":\"1\",\"update-prices\":\"1\",\"crons\":\"1\",\"provider_logs\":\"1\",\"guard_logs\":\"1\",\"admins\":\"1\",\"kuponlar\":\"1\",\"currency_settings\":\"1\"}', 'en', 0, '1', NULL, '74e07', '0', '0', '0', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `clients_category`
--

CREATE TABLE `clients_category` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clients_price`
--

CREATE TABLE `clients_price` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `clients_service`
--

CREATE TABLE `clients_service` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `client_report`
--

CREATE TABLE `client_report` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `action` text NOT NULL,
  `report_ip` varchar(225) NOT NULL,
  `report_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client_report`
--

INSERT INTO `client_report` (`id`, `client_id`, `action`, `report_ip`, `report_date`) VALUES
(161, 1, 'Üye girişi yapıldı.', '88.240.179.236', '2022-04-18 07:01:38'),
(162, 1, '#14 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-18 07:10:36'),
(164, 1, 'Admin girişi yapıldı.', '88.240.179.236', '2022-04-18 07:16:58'),
(165, 1, '0.1 TL tutarında yeni sipariş geçildi #15.', '88.240.179.236', '2022-04-18 07:33:50'),
(166, 1, '#15 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-18 07:51:52'),
(169, 1, 'Admin girişi yapıldı.', '88.240.179.236', '2022-04-18 08:02:10'),
(170, 1, '0.01 TL tutarında yeni sipariş geçildi #16.', '88.240.179.236', '2022-04-18 08:05:58'),
(172, 1, '#16 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-18 08:25:06'),
(173, 1, '0.1 TL tutarında yeni sipariş geçildi #17.', '88.240.179.236', '2022-04-18 09:04:27'),
(177, 1, 'Admin girişi yapıldı.', '88.240.179.236', '2022-04-18 22:34:47'),
(178, 1, 'Üye girişi yapıldı.', '88.240.179.236', '2022-04-18 23:00:47'),
(203, 1, 'Üye girişi yapıldı.', '88.240.179.236', '2022-04-19 01:45:13'),
(204, 1, '#39 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 05:00:11'),
(205, 17, 'User registration made.', '37.238.160.22', '2022-04-19 07:28:50'),
(206, 17, 'Üye girişi yapıldı.', '37.238.160.22', '2022-04-19 07:29:16'),
(207, 17, 'Yeni destek talebi oluşturuldu #2', '37.238.160.22', '2022-04-19 07:31:26'),
(208, 1, '#18 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:20:05'),
(209, 1, '#19 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:20:05'),
(210, 1, '#20 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:06'),
(211, 1, '#21 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:06'),
(212, 1, '#22 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:06'),
(213, 1, '#23 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:06'),
(214, 1, '#24 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:06'),
(215, 1, '#25 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:06'),
(216, 1, '#26 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:06'),
(217, 1, '#27 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:06'),
(218, 1, '#28 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:06'),
(219, 1, '#29 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:07'),
(220, 1, '#30 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:07'),
(221, 1, '#31 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:07'),
(222, 1, '#32 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:07'),
(223, 1, '#33 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:07'),
(224, 1, '#34 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:07'),
(225, 1, '#35 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:07'),
(226, 1, '#36 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:07'),
(227, 1, '#37 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:07'),
(228, 1, '#38 numaralı sipariş tamamlandı.', '127.0.0.1', '2022-04-19 09:25:07'),
(229, 1, 'Admin girişi yapıldı.', '::1', '2022-04-19 09:34:07'),
(230, 1, 'Üye girişi yapıldı.', '::1', '2022-04-19 10:08:14'),
(231, 18, 'User registration made.', '105.196.30.214', '2022-05-10 13:39:16'),
(232, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 13:39:22'),
(233, 18, 'Admin girişi yapıldı.', '105.196.30.214', '2022-05-10 13:44:16'),
(234, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 15:04:21'),
(235, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 15:04:34'),
(236, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 15:38:16'),
(237, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 16:03:56'),
(238, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 16:12:45'),
(239, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 16:18:53'),
(240, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 16:19:04'),
(241, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 16:29:20'),
(242, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 17:09:31'),
(243, 18, 'Admin girişi yapıldı.', '105.196.30.214', '2022-05-10 17:14:29'),
(244, 18, '0.1 TL tutarında yeni sipariş geçildi #40.', '105.196.30.214', '2022-05-10 17:39:38'),
(245, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 17:59:06'),
(246, 19, 'User registration made.', '105.196.30.214', '2022-05-10 18:12:45'),
(247, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 18:12:53'),
(248, 18, 'Yeni destek talebi oluşturuldu #3', '105.196.30.214', '2022-05-10 19:01:26'),
(249, 18, 'Admin girişi yapıldı.', '105.196.30.214', '2022-05-10 19:02:16'),
(250, 18, 'Yeni destek talebi oluşturuldu #4', '105.196.30.214', '2022-05-10 19:05:49'),
(251, 18, 'Support request responded #4', '105.196.30.214', '2022-05-10 19:15:15'),
(252, 18, 'API Key değiştirildi', '105.196.30.214', '2022-05-10 19:27:00'),
(253, 18, 'API Key değiştirildi', '105.196.30.214', '2022-05-10 19:27:06'),
(254, 18, 'API Key değiştirildi', '105.196.30.214', '2022-05-10 19:27:45'),
(255, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 20:13:12'),
(256, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 20:15:50'),
(257, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 20:16:21'),
(258, 18, 'Üye girişi yapıldı.', '105.196.30.214', '2022-05-10 20:41:16'),
(259, 18, 'Üye girişi yapıldı.', '156.178.234.17', '2022-05-10 21:09:49'),
(260, 18, 'Üye girişi yapıldı.', '156.211.14.173', '2022-05-10 21:11:46'),
(261, 18, 'API Key değiştirildi', '156.211.14.173', '2022-05-10 21:12:17'),
(262, 18, 'Üye girişi yapıldı.', '196.129.71.133', '2022-05-11 16:55:20'),
(263, 18, 'Üye girişi yapıldı.', '105.196.149.126', '2022-05-11 16:55:35'),
(264, 18, 'Admin girişi yapıldı.', '105.196.149.126', '2022-05-11 16:57:21'),
(265, 18, 'Admin girişi yapıldı.', '41.236.251.171', '2022-05-11 17:26:35'),
(266, 18, 'Admin girişi yapıldı.', '105.196.149.126', '2022-05-11 23:08:17'),
(267, 18, 'Admin girişi yapıldı.', '156.223.83.128', '2022-05-11 23:08:46'),
(268, 18, 'Admin girişi yapıldı.', '105.196.149.126', '2022-05-11 23:42:35'),
(269, 20, 'User registration made.', '41.40.35.38', '2022-05-11 23:44:10'),
(270, 20, 'Üye girişi yapıldı.', '41.40.35.38', '2022-05-11 23:44:25'),
(271, 18, 'Admin girişi yapıldı.', '41.40.35.38', '2022-05-11 23:59:53'),
(272, 21, 'User registration made.', '41.46.237.14', '2022-05-12 00:29:01'),
(273, 21, 'Üye girişi yapıldı.', '41.46.237.14', '2022-05-12 00:29:18'),
(274, 18, 'Admin girişi yapıldı.', '156.223.32.12', '2022-05-12 07:23:27'),
(275, 22, 'User registration made.', '156.223.32.12', '2022-05-12 07:24:35'),
(276, 22, 'Üye girişi yapıldı.', '156.223.32.12', '2022-05-12 07:24:42'),
(277, 18, 'Admin girişi yapıldı.', '156.223.32.12', '2022-05-12 07:25:37'),
(278, 18, 'Admin girişi yapıldı.', '102.191.154.116', '2022-05-12 14:12:24'),
(279, 18, 'Admin girişi yapıldı.', '109.107.226.69', '2022-05-12 14:13:50'),
(280, 18, 'Üye girişi yapıldı.', '109.107.226.69', '2022-05-12 14:42:52'),
(281, 18, 'Admin girişi yapıldı.', '109.107.226.69', '2022-05-12 16:28:16'),
(282, 18, 'Admin girişi yapıldı.', '102.191.248.116', '2022-05-14 01:50:26'),
(283, 18, 'Admin girişi yapıldı.', '201.158.103.239', '2022-05-14 01:51:50'),
(284, 18, 'Admin girişi yapıldı.', '102.191.248.116', '2022-05-14 09:26:38'),
(285, 18, 'Üye girişi yapıldı.', '102.191.248.116', '2022-05-14 19:07:15'),
(286, 18, 'Üye girişi yapıldı.', '105.196.231.154', '2022-05-19 18:52:53'),
(287, 18, 'Üye girişi yapıldı.', '105.196.231.154', '2022-05-19 18:53:42'),
(288, 18, 'Admin girişi yapıldı.', '58.145.186.239', '2022-05-19 18:53:53'),
(289, 18, 'Admin girişi yapıldı.', '105.196.231.154', '2022-05-19 18:57:07'),
(290, 18, 'Admin girişi yapıldı.', '58.145.186.239', '2022-05-19 18:57:49'),
(291, 18, 'Admin girişi yapıldı.', '105.196.231.154', '2022-05-19 19:04:08'),
(292, 23, 'User registration made.', '103.157.249.91', '2022-05-20 10:01:40'),
(293, 23, 'Üye girişi yapıldı.', '103.157.249.91', '2022-05-20 10:02:18'),
(294, 18, 'Üye girişi yapıldı.', '102.191.228.127', '2022-05-23 17:18:55'),
(295, 18, 'Üye girişi yapıldı.', '102.191.228.127', '2022-05-23 19:18:39'),
(296, 18, 'Admin girişi yapıldı.', '102.191.228.127', '2022-05-23 19:32:47'),
(297, 18, '0.1 TL tutarında yeni sipariş geçildi #1654346.', '102.191.228.127', '2022-05-23 19:34:01'),
(298, 18, 'Üye girişi yapıldı.', '102.191.228.127', '2022-05-23 19:38:45'),
(299, 18, 'Üye girişi yapıldı.', '102.191.228.127', '2022-05-23 19:58:54'),
(300, 18, 'Üye girişi yapıldı.', '102.191.228.127', '2022-05-23 20:01:39'),
(301, 18, '0.1 TL tutarında yeni sipariş geçildi #1654347.', '102.191.228.127', '2022-05-23 20:25:59'),
(302, 18, 'Yeni destek talebi oluşturuldu #5', '102.191.228.127', '2022-05-23 20:55:46'),
(303, 18, 'Admin girişi yapıldı.', '102.191.228.127', '2022-05-23 20:56:27'),
(304, 18, '1 TL tutarında yeni child panel sipariş geçildi #.', '102.191.228.127', '2022-05-23 21:09:31'),
(305, 18, 'Üye girişi yapıldı.', '102.191.228.127', '2022-05-23 21:18:18'),
(306, 18, 'API Key değiştirildi', '102.191.228.127', '2022-05-23 21:30:00'),
(307, 18, 'API Key değiştirildi', '102.191.228.127', '2022-05-23 21:30:33'),
(308, 18, 'API Key değiştirildi', '102.191.228.127', '2022-05-23 21:31:06'),
(309, 18, 'Üye girişi yapıldı.', '102.191.228.127', '2022-05-23 21:32:47'),
(310, 18, 'Üye girişi yapıldı.', '102.191.228.127', '2022-05-23 21:33:44'),
(311, 18, 'Admin girişi yapıldı.', '102.191.228.127', '2022-05-24 09:26:20'),
(312, 18, 'Admin girişi yapıldı.', '102.63.151.38', '2022-05-24 09:27:55'),
(313, 18, 'Admin girişi yapıldı.', '102.191.228.127', '2022-05-24 09:38:23'),
(314, 18, 'Üye girişi yapıldı.', '102.191.228.127', '2022-05-24 09:46:37'),
(315, 18, 'Admin girişi yapıldı.', '102.191.228.127', '2022-05-24 14:11:04'),
(316, 24, 'User registration made.', '196.152.16.124', '2022-05-24 14:13:10'),
(317, 24, 'Üye girişi yapıldı.', '196.152.16.124', '2022-05-24 14:13:28'),
(318, 18, 'Admin girişi yapıldı.', '102.191.228.127', '2022-05-24 15:54:32'),
(319, 18, 'Üye girişi yapıldı.', '156.211.79.217', '2022-05-25 02:06:23'),
(320, 18, 'Admin girişi yapıldı.', '156.211.79.217', '2022-05-25 02:10:33'),
(321, 18, 'Admin girişi yapıldı.', '105.196.80.104', '2022-05-25 17:13:52'),
(322, 18, 'Admin girişi yapıldı.', '41.68.59.231', '2022-05-25 17:16:40'),
(323, 18, 'Admin girişi yapıldı.', '41.68.228.183', '2022-05-26 21:03:59'),
(324, 25, 'User registration made.', '41.68.228.183', '2022-05-26 21:33:24'),
(325, 25, 'Üye girişi yapıldı.', '41.68.228.183', '2022-05-26 21:33:48'),
(326, 18, 'Admin girişi yapıldı.', '41.68.228.183', '2022-05-26 21:39:47'),
(327, 25, 'Üye girişi yapıldı.', '41.68.228.183', '2022-05-26 22:32:33'),
(328, 25, 'Üye girişi yapıldı.', '41.68.228.183', '2022-05-26 22:34:36'),
(329, 18, 'Admin girişi yapıldı.', '41.68.228.183', '2022-05-26 22:37:03'),
(330, 25, 'Üye girişi yapıldı.', '41.68.228.183', '2022-05-26 22:38:19'),
(331, 18, 'Admin girişi yapıldı.', '41.68.228.183', '2022-05-26 22:39:03'),
(332, 18, 'Üye girişi yapıldı.', '102.46.101.31', '2022-05-26 22:47:07'),
(333, 18, 'Admin girişi yapıldı.', '41.68.228.183', '2022-05-26 22:49:18'),
(334, 18, 'Admin girişi yapıldı.', '105.196.182.240', '2022-05-27 09:12:09'),
(335, 18, 'Admin girişi yapıldı.', '41.68.228.183', '2022-05-28 02:16:57'),
(336, 25, 'Üye girişi yapıldı.', '41.68.228.183', '2022-05-28 02:28:03'),
(337, 18, 'Admin girişi yapıldı.', '41.68.228.183', '2022-05-28 02:34:37'),
(338, 18, 'Admin girişi yapıldı.', '105.196.48.154', '2022-05-29 23:42:28'),
(339, 18, 'Admin girişi yapıldı.', '105.196.48.154', '2022-05-30 11:16:49'),
(340, 26, 'User registration made.', '196.159.10.97', '2022-05-30 11:19:03'),
(341, 26, 'Üye girişi yapıldı.', '196.159.10.97', '2022-05-30 11:19:17'),
(342, 27, 'User registration made.', '196.157.98.20', '2022-05-30 14:57:26'),
(343, 28, 'User registration made.', '196.157.98.20', '2022-05-30 14:58:30'),
(344, 28, 'Üye girişi yapıldı.', '196.157.98.20', '2022-05-30 14:58:54'),
(345, 29, 'User registration made.', '197.62.133.50', '2022-11-12 02:43:19'),
(346, 29, 'Üye girişi yapıldı.', '197.62.133.50', '2022-11-12 02:43:26');

-- --------------------------------------------------------

--
-- Table structure for table `crons`
--

CREATE TABLE `crons` (
  `cron_id` int(11) NOT NULL,
  `cron_name` varchar(50) NOT NULL,
  `cron_operation` varchar(200) NOT NULL,
  `cron_updefault` int(11) NOT NULL DEFAULT '1',
  `cron_endup` int(11) NOT NULL,
  `cron_date_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cron_status` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crons`
--

INSERT INTO `crons` (`cron_id`, `cron_name`, `cron_operation`, `cron_updefault`, `cron_endup`, `cron_date_update`, `cron_status`) VALUES
(1, 'Api Orders', 'API Order', 1, 1, '2022-04-19 13:30:32', 1),
(2, 'Site Orders', 'Dripfeed Control', 2, 2, '2022-04-19 13:30:32', 1),
(3, 'DripFeed', 'Order Control', 1, 1, '2022-04-19 13:30:32', 1),
(4, 'Sync', 'API Provider Control', 1, 1, '2022-04-19 13:30:33', 1),
(5, 'Providers', 'Provider', 1, 1, '2022-04-19 13:30:33', 1),
(6, 'Send Task', 'Posting a Task', 1, 1, '2022-04-19 13:30:33', 1),
(7, 'Balance Alert', 'Balance alert', 15, 15, '2022-04-19 13:20:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crons_report`
--

CREATE TABLE `crons_report` (
  `crons_id` int(11) NOT NULL,
  `crons_service_name` varchar(255) NOT NULL,
  `crons_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `crons_detail` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `link` text,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guard_log`
--

CREATE TABLE `guard_log` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `action` varchar(225) NOT NULL,
  `date` varchar(225) NOT NULL,
  `ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `integrations`
--

CREATE TABLE `integrations` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `description` varchar(225) NOT NULL,
  `icon_url` varchar(225) NOT NULL,
  `code` text NOT NULL,
  `visibility` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `integrations`
--

INSERT INTO `integrations` (`id`, `name`, `description`, `icon_url`, `code`, `visibility`, `status`) VALUES
(1, 'Beamer', 'Announce updates and get feedback with in-app notification center, widgets and changelog', '/img/integrations/Beamer.svg', '', 1, 1),
(2, 'Getsitecontrol', 'It helps you prevent website visitors from leaving your website without taking any action.', '/img/integrations/Getsitecontrol.svg', '', 1, 1),
(3, 'Google Analytics', 'Statistics and basic analytical tools for search engine optimization (SEO) and marketing purposes', '/img/integrations/Google%20Analytics.svg', '', 1, 1),
(4, 'Google Tag manager', 'Manage all your website tags without editing the code using simple tag management solutions', '/img/integrations/Google%20Tag%20manager.svg', '', 1, 1),
(5, 'JivoChat', 'All-in-one business messenger to talk to customers: live chat, phone, email and social', '/img/integrations/JivoChat.svg', '', 1, 1),
(6, 'Onesignal', 'Leader in customer engagement, empowers mobile push, web push, email, in-app messages', '/img/integrations/Onesignal.svg', '', 1, 1),
(7, 'Push alert', 'Increase reach, revenue, retarget users with Push Notifications on desktop and mobile', '/img/integrations/Push%20alert.svg', '', 1, 1),
(8, 'Smartsupp', 'Live chat, email inbox and Facebook Messenger in one customer messaging platform', '/img/integrations/Smartsupp.svg', '', 1, 1),
(9, 'Tawk.to', 'Track and chat with visitors on your website, mobile app or a free customizable page', '/img/integrations/Tawk.to.svg', '', 1, 1),
(10, 'Tidio', 'Communicator for businesses that keep live chat, chatbots, Messenger and email in one place', '/img/integrations/Tidio.svg', '', 1, 1),
(11, 'Zendesk Chat', 'Helps respond quickly to customer questions, reduce wait times and increase sales', '/img/integrations/Zendesk%20Chat.svg', '', 1, 1),
(12, 'Getbutton.io', 'Chat with website visitors through popular messaging apps. Whatsapp, messenger etc. contact button.', '/img/integrations/Getbutton.svg', '', 1, 2),
(13, 'Google reCAPTCHA v2', 'It uses an advanced risk analysis engine and adaptive challenges to prevent malware from engaging in abusive activities on your website.', '/img/integrations/reCAPTCHA.svg', '', 1, 2),
(14, 'SEO Adjustments', 'Search Engine Optimization (SEO) is the name given to all the work done to make websites perform better in search engines.', '/img/integrations/Seo settings.png', '', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language_name` varchar(225) NOT NULL,
  `language_code` varchar(225) NOT NULL,
  `language_type` enum('2','1') NOT NULL DEFAULT '2',
  `default_language` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language_name`, `language_code`, `language_type`, `default_language`) VALUES
(1, 'Arabic (SA)', 'ar', '2', '0'),
(11, 'English (US)', 'en', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(225) CHARACTER SET utf8 NOT NULL,
  `tag` varchar(225) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL,
  `public` int(11) NOT NULL,
  `edit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `tag`, `status`, `public`, `edit`) VALUES
(2, 'API', 'api', 1, 1, 0),
(3, 'User Agreement', 'terms', 1, 1, 0),
(4, 'Frequently Asked Questions', 'faq', 1, 1, 0),
(5, 'Blog <span class=\"fa fa-info-circle\" data-toggle=\"tooltip\" data-placement=\"top\"></span>', 'blog', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `ajax_name` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `mod_sec` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `description`, `ajax_name`, `status`, `mod_sec`) VALUES
(1, 'Reference System', 'Existing users invite new users and receive commissions on all their payments. Users can request payment when they reach the minimum payment.', 'module_ref', 2, 1),
(2, 'Child panel', 'A panel with limited features that can only pull APIs from you. Users can order child panels from your panel.', 'module_child', 2, 1),
(3, 'Free Balance', 'One-time free automatic balance for newly registered members.', 'module_balance', 1, 1),
(4, 'Support System', 'The canned answers you enter in the headings you add are automatically sent to customers who create new support requests.', '', 2, 1),
(6, 'Guard', '24/7 Maximum security, limit all activities! 100% protection against attacks.', 'module_guard', 1, 2),
(7, 'Cache ', 'It is aimed to create a more efficient system that increases the site speed by reducing the resource consumption of the site.', 'module_cache', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news_icon` varchar(225) NOT NULL,
  `news_title` varchar(225) NOT NULL,
  `news_content` varchar(225) NOT NULL,
  `news_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `api_orderid` int(11) NOT NULL DEFAULT '0',
  `order_error` text NOT NULL,
  `order_detail` text NOT NULL,
  `order_api` int(11) NOT NULL DEFAULT '0',
  `api_serviceid` int(11) NOT NULL DEFAULT '0',
  `api_charge` double DEFAULT NULL,
  `api_currencycharge` double NOT NULL DEFAULT '1',
  `order_profit` double NOT NULL,
  `order_quantity` double NOT NULL,
  `order_extras` text NOT NULL,
  `order_charge` double DEFAULT NULL,
  `dripfeed` enum('1','2','3') DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_id` double NOT NULL DEFAULT '0',
  `subscriptions_id` double NOT NULL DEFAULT '0',
  `subscriptions_type` enum('1','2') NOT NULL DEFAULT '1' COMMENT '2 -> ON, 1 -> OFF',
  `dripfeed_totalcharges` double DEFAULT NULL,
  `dripfeed_runs` double DEFAULT NULL,
  `dripfeed_delivery` double NOT NULL DEFAULT '0',
  `dripfeed_interval` double DEFAULT NULL,
  `dripfeed_totalquantity` double DEFAULT NULL,
  `dripfeed_status` enum('active','completed','canceled') NOT NULL DEFAULT 'active',
  `order_url` text NOT NULL,
  `order_start` double NOT NULL DEFAULT '0',
  `order_finish` double NOT NULL DEFAULT '0',
  `order_remains` double NOT NULL DEFAULT '0',
  `order_create` datetime NOT NULL,
  `order_status` enum('pending','inprogress','completed','partial','processing','canceled') NOT NULL DEFAULT 'pending',
  `subscriptions_status` enum('active','paused','completed','canceled','expired','limit') NOT NULL DEFAULT 'active',
  `subscriptions_username` text,
  `subscriptions_posts` double DEFAULT NULL,
  `subscriptions_delivery` double NOT NULL DEFAULT '0',
  `subscriptions_delay` double DEFAULT NULL,
  `subscriptions_min` double DEFAULT NULL,
  `subscriptions_max` double DEFAULT NULL,
  `subscriptions_expiry` date DEFAULT NULL,
  `last_check` datetime NOT NULL,
  `order_where` enum('site','api') NOT NULL DEFAULT 'site'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `client_id`, `service_id`, `api_orderid`, `order_error`, `order_detail`, `order_api`, `api_serviceid`, `api_charge`, `api_currencycharge`, `order_profit`, `order_quantity`, `order_extras`, `order_charge`, `dripfeed`, `dripfeed_id`, `subscriptions_id`, `subscriptions_type`, `dripfeed_totalcharges`, `dripfeed_runs`, `dripfeed_delivery`, `dripfeed_interval`, `dripfeed_totalquantity`, `dripfeed_status`, `order_url`, `order_start`, `order_finish`, `order_remains`, `order_create`, `order_status`, `subscriptions_status`, `subscriptions_username`, `subscriptions_posts`, `subscriptions_delivery`, `subscriptions_delay`, `subscriptions_min`, `subscriptions_max`, `subscriptions_expiry`, `last_check`, `order_where`) VALUES
(14, 1, 2, 3876158, '-', '{\"charge\":\"0.05875\",\"start_count\":\"330716\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 330716, 0, 0, '2022-04-18 06:18:23', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-18 07:10:36', 'site'),
(15, 1, 2, 3876338, '-', '{\"charge\":\"0.05875\",\"start_count\":\"330813\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 330813, 0, 0, '2022-04-18 07:33:50', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-18 07:51:52', 'site'),
(16, 1, 2, 3876397, '-', '{\"charge\":\"0.005875\",\"start_count\":\"330894\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.005875, 1, 0.005875, 10, '', 0.01, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 330894, 0, 0, '2022-04-18 08:05:58', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-18 08:25:06', 'site'),
(17, 1, 2, 3876556, '-', '{\"order\":3876556}', 3, 4641, 0, 1, 0, 0, '', 0, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 0, 0, 100, '2022-04-18 09:04:27', 'canceled', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-18 09:04:27', 'site'),
(18, 1, 2, 3879868, '-', '{\"charge\":\"0.05875\",\"start_count\":\"332316\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332316, 0, 0, '2022-04-18 23:38:44', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:20:05', 'site'),
(19, 1, 2, 3879870, '-', '{\"charge\":\"0.05875\",\"start_count\":\"332330\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332330, 0, 0, '2022-04-18 23:38:57', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:20:05', 'site'),
(20, 1, 2, 3879873, '-', '{\"charge\":\"0.05875\",\"start_count\":\"332330\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332330, 0, 0, '2022-04-18 23:39:10', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:06', 'site'),
(21, 1, 2, 3879877, '-', '{\"charge\":\"0.005875\",\"start_count\":\"332539\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.005875, 1, 0.005875, 10, '', 0.01, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332539, 0, 0, '2022-04-18 23:39:26', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:06', 'site'),
(22, 1, 2, 3879882, '-', '{\"charge\":\"0.05875\",\"start_count\":\"332330\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332330, 0, 0, '2022-04-18 23:39:57', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:06', 'site'),
(23, 1, 2, 3879884, '-', '{\"charge\":\"0.005875\",\"start_count\":\"332330\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.005875, 1, 0.005875, 10, '', 0.01, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332330, 0, 0, '2022-04-18 23:40:06', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:06', 'site'),
(24, 1, 2, 3879887, '-', '{\"charge\":\"0.005875\",\"start_count\":\"332316\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.005875, 1, 0.005875, 10, '', 0.01, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332316, 0, 0, '2022-04-18 23:40:16', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:06', 'site'),
(25, 1, 2, 3879889, '-', '{\"charge\":\"0.005875\",\"start_count\":\"332541\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.005875, 1, 0.005875, 10, '', 0.01, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332541, 0, 0, '2022-04-18 23:40:29', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:06', 'site'),
(26, 1, 2, 3879893, '-', '{\"charge\":\"0.005875\",\"start_count\":\"332330\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.005875, 1, 0.005875, 10, '', 0.01, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332330, 0, 0, '2022-04-18 23:40:39', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:06', 'site'),
(27, 1, 2, 3879894, '-', '{\"charge\":\"0.05875\",\"start_count\":\"332330\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332330, 0, 0, '2022-04-18 23:40:54', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:06', 'site'),
(28, 1, 2, 3880000, '-', '{\"charge\":\"0.05875\",\"start_count\":\"332927\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332927, 0, 0, '2022-04-18 23:52:15', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:06', 'site'),
(29, 1, 2, 3880001, '-', '{\"charge\":\"0.05875\",\"start_count\":\"332941\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332941, 0, 0, '2022-04-18 23:52:29', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:07', 'site'),
(30, 1, 2, 3880003, '-', '{\"charge\":\"0.05875\",\"start_count\":\"332941\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332941, 0, 0, '2022-04-18 23:52:38', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:07', 'site'),
(31, 1, 2, 3880005, '-', '{\"charge\":\"0.05875\",\"start_count\":\"332941\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332941, 0, 0, '2022-04-18 23:52:47', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:07', 'site'),
(32, 1, 2, 3880006, '-', '{\"charge\":\"0.05875\",\"start_count\":\"332941\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 332941, 0, 0, '2022-04-18 23:52:54', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:07', 'site'),
(33, 1, 2, 3880007, '-', '{\"charge\":\"0.05875\",\"start_count\":\"333467\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 333467, 0, 0, '2022-04-18 23:53:07', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:07', 'site'),
(34, 1, 2, 3880008, '-', '{\"charge\":\"0.05875\",\"start_count\":\"333551\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 333551, 0, 0, '2022-04-18 23:53:25', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:07', 'site'),
(35, 1, 2, 3880009, '-', '{\"charge\":\"0.05875\",\"start_count\":\"333453\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 333453, 0, 0, '2022-04-18 23:53:39', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:07', 'site'),
(36, 1, 2, 3880011, '-', '{\"charge\":\"0.05875\",\"start_count\":\"333450\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 333450, 0, 0, '2022-04-18 23:53:53', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:07', 'site'),
(37, 1, 2, 3880013, '-', '{\"charge\":\"0.05875\",\"start_count\":\"333806\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 333806, 0, 0, '2022-04-18 23:54:01', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:07', 'site'),
(39, 1, 2, 3880020, '-', '{\"charge\":\"0.05875\",\"start_count\":\"333812\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 333812, 0, 0, '2022-04-18 23:54:55', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 05:00:11', 'site'),
(40, 18, 3, 0, '-', '', 0, 0, NULL, 1, 0.1, 1000, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'fdfdsf', 0, 0, 0, '2022-05-10 17:39:38', 'pending', 'active', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-05-10 17:39:38', 'site'),
(1654345, 1, 2, 3880017, '-', '{\"charge\":\"0.05875\",\"start_count\":\"333759\",\"status\":\"Completed\",\"remains\":\"0\",\"currency\":\"USD\"}', 3, 4641, 0.05875, 1, 0.05875, 100, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'https://www.instagram.com/3bs', 333759, 0, 0, '2022-04-18 23:54:25', 'completed', 'active', '', 0, 0, 0, 0, 0, '1970-01-01', '2022-04-19 09:25:07', 'site'),
(1654346, 18, 42, 0, '-', '', 0, 0, NULL, 1, 0.1, 1000, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'assdasdsadsds', 0, 0, 0, '2022-05-23 19:34:01', 'pending', 'active', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-05-23 19:34:01', 'site'),
(1654347, 18, 42, 0, '-', '', 0, 0, NULL, 1, 0.1, 1000, '', 0.1, '1', 0, 0, '1', NULL, NULL, 0, NULL, NULL, 'active', 'assdasdsadsds', 0, 0, 0, '2022-05-23 20:25:59', 'pending', 'active', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2022-05-23 20:25:59', 'site');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `page_get` varchar(225) NOT NULL,
  `page_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `page_get`, `page_content`) VALUES
(1, 'Login', 'auth', ''),
(2, 'Services', 'services', ''),
(3, 'Frequently Asked Questions', 'faq', ''),
(4, 'Contracts', 'terms', ''),
(5, 'New order', 'neworder', ''),
(6, 'Add Balance', 'addfunds', ''),
(7, 'Child panels', 'child-panels', ''),
(8, 'Support', 'tickets', ''),
(9, 'Invite Earn', 'affiliates', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_balance` double NOT NULL DEFAULT '0',
  `payment_amount` double NOT NULL,
  `papara_amount` double DEFAULT NULL,
  `payment_privatecode` double DEFAULT NULL,
  `payment_method` int(11) NOT NULL,
  `payment_status` enum('1','2','3') NOT NULL DEFAULT '1',
  `payment_delivery` enum('1','2') NOT NULL DEFAULT '1',
  `payment_note` text NOT NULL,
  `payment_mode` enum('Manuel','Otomatik') NOT NULL DEFAULT 'Otomatik',
  `payment_create_date` datetime NOT NULL,
  `payment_update_date` datetime NOT NULL,
  `payment_ip` varchar(225) NOT NULL,
  `payment_extra` text NOT NULL,
  `payment_bank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `client_id`, `client_balance`, `payment_amount`, `papara_amount`, `payment_privatecode`, `payment_method`, `payment_status`, `payment_delivery`, `payment_note`, `payment_mode`, `payment_create_date`, `payment_update_date`, `payment_ip`, `payment_extra`, `payment_bank`) VALUES
(59, 1, 0, 5, NULL, 1650252323, 4, '1', '1', '', 'Otomatik', '2022-04-18 06:25:23', '0000-00-00 00:00:00', '156.211.29.94', '', 0),
(60, 1, 0, 1, 1, 1650255485, 16, '1', '1', '', 'Otomatik', '2022-04-18 07:18:05', '0000-00-00 00:00:00', '156.211.29.94', '', 0),
(61, 2, 26, -1, NULL, NULL, 17, '3', '1', 'Transfered funds to cook', 'Manuel', '2022-04-18 08:16:06', '2022-04-18 08:39:23', '', '', 0),
(62, 7, 656, 0.97, NULL, NULL, 17, '3', '1', 'Transfered funds from yonetici2', 'Manuel', '2022-04-18 08:16:06', '2022-04-18 08:16:06', '', '', 0),
(63, 7, 656.97, -0.97, NULL, NULL, 1, '3', '2', '', 'Manuel', '2022-04-18 08:17:21', '2022-04-18 08:17:21', '', '', 0),
(64, 1, 535.12, -1, NULL, NULL, 17, '3', '1', 'Transfer funds to Yonetici2', 'Manuel', '2022-04-18 09:07:11', '2022-04-18 09:07:11', '', '', 0),
(65, 2, 25, 0.97, NULL, NULL, 17, '3', '1', 'Transfered funds from 3bs', 'Manuel', '2022-04-18 09:07:11', '2022-04-18 09:07:11', '', '', 0),
(66, 1, 534.12, -1, NULL, NULL, 17, '3', '1', 'Transfer funds to Yonetici2', 'Manuel', '2022-04-18 09:07:39', '2022-04-18 09:07:39', '', '', 0),
(67, 2, 25.97, 0.97, NULL, NULL, 17, '3', '1', 'Transfered funds from 3bs', 'Manuel', '2022-04-18 09:07:39', '2022-04-18 09:07:39', '', '', 0),
(68, 1, 533.12, -1, NULL, NULL, 17, '3', '1', 'Transfer funds to Yonetici2', 'Manuel', '2022-04-18 09:07:41', '2022-04-18 09:07:41', '', '', 0),
(69, 2, 26.939999999999998, 0.97, NULL, NULL, 17, '3', '1', 'Transfered funds from 3bs', 'Manuel', '2022-04-18 09:07:41', '2022-04-18 09:07:41', '', '', 0),
(70, 1, 532.12, -1, NULL, NULL, 17, '3', '1', 'Transfer funds to Yonetici2', 'Manuel', '2022-04-18 09:10:16', '2022-04-18 09:10:16', '', '', 0),
(71, 2, 27.909999999999997, 0.97, NULL, NULL, 17, '3', '1', 'Transfered funds from 3bs', 'Manuel', '2022-04-18 09:10:16', '2022-04-18 09:10:16', '', '', 0),
(72, 1, 531.12, -1, NULL, NULL, 17, '3', '1', 'Transfer funds to Yonetici2', 'Manuel', '2022-04-18 09:10:18', '2022-04-18 09:10:18', '', '', 0),
(73, 2, 28.879999999999995, 0.97, NULL, NULL, 17, '3', '1', 'Transfered funds from 3bs', 'Manuel', '2022-04-18 09:10:18', '2022-04-18 09:10:18', '', '', 0),
(74, 1, 530.12, -1, NULL, NULL, 17, '3', '1', 'Transfer funds to Yonetici2', 'Manuel', '2022-04-18 09:10:44', '2022-04-18 09:10:44', '', '', 0),
(75, 2, 29.849999999999994, 0.97, NULL, NULL, 17, '3', '1', 'Transfered funds from 3bs', 'Manuel', '2022-04-18 09:10:44', '2022-04-18 09:10:44', '', '', 0),
(76, 1, 529.12, -1, NULL, NULL, 17, '3', '1', 'Transfer funds to Yonetici2', 'Manuel', '2022-04-18 09:10:46', '2022-04-18 09:10:46', '', '', 0),
(77, 2, 30.819999999999993, 0.97, NULL, NULL, 17, '3', '1', 'Transfered funds from 3bs', 'Manuel', '2022-04-18 09:10:46', '2022-04-18 09:10:46', '', '', 0),
(78, 1, 528.12, -1, NULL, NULL, 17, '3', '1', 'Transfer funds to Yonetici2', 'Manuel', '2022-04-18 09:11:11', '2022-04-18 09:11:11', '', '', 0),
(79, 2, 31.789999999999992, 0.97, NULL, NULL, 17, '3', '1', 'Transfered funds from 3bs', 'Manuel', '2022-04-18 09:11:11', '2022-04-18 09:11:11', '', '', 0),
(80, 1, 527.12, -1, NULL, NULL, 17, '3', '1', 'Transfer funds to Yonetici2', 'Manuel', '2022-04-18 09:11:12', '2022-04-18 09:11:12', '', '', 0),
(81, 2, 32.75999999999999, 0.97, NULL, NULL, 17, '3', '1', 'Transfered funds from 3bs', 'Manuel', '2022-04-18 09:11:12', '2022-04-18 09:11:12', '', '', 0),
(82, 1, 526.12, -1, NULL, NULL, 17, '3', '1', 'Transfer funds to Yonetici2', 'Manuel', '2022-04-18 09:16:38', '2022-04-18 09:16:38', '', '', 0),
(83, 2, 33.72999999999999, 0.97, NULL, NULL, 17, '3', '1', 'Transfered funds from 3bs', 'Manuel', '2022-04-18 09:16:38', '2022-04-18 09:16:38', '', '', 0),
(84, 2, 0, 5, 5, 1650263107, 16, '1', '1', '', 'Otomatik', '2022-04-18 09:25:07', '0000-00-00 00:00:00', '156.211.29.94', '', 0),
(85, 2, 0, 1, 1, 1650327001, 16, '1', '1', '', 'Otomatik', '2022-04-19 03:10:01', '0000-00-00 00:00:00', '156.211.83.4', '', 0),
(86, 18, 0, 50, NULL, NULL, 1, '3', '2', '', 'Manuel', '2022-05-10 17:38:00', '2022-05-10 17:38:00', '', '', 0),
(87, 18, 49.9, 100, NULL, NULL, 1, '3', '2', '', 'Manuel', '2022-05-23 19:33:17', '2022-05-23 19:33:17', '', '', 0),
(88, 25, 0, 100, NULL, 1653694256, 19, '1', '1', '', '', '2022-05-28 02:30:56', '0000-00-00 00:00:00', '41.68.228.183', 'de1fc107a152ef9a4ae92c32397654b7', 0),
(89, 25, 0, 100, NULL, 1653694283, 18, '1', '1', '', 'Otomatik', '2022-05-28 02:31:23', '0000-00-00 00:00:00', '41.68.228.183', '1653694283', 0),
(90, 25, 0, 100, 100, 1653694304, 16, '1', '1', '', 'Otomatik', '2022-05-28 02:31:44', '0000-00-00 00:00:00', '41.68.228.183', '', 0),
(91, 25, 0, 100, NULL, 1653694323, 12, '1', '1', '', 'Otomatik', '2022-05-28 02:32:03', '0000-00-00 00:00:00', '41.68.228.183', 'e7a06d1f728e34107655b478cffa2caf', 0),
(92, 25, 0, 100, NULL, 1653694339, 10, '1', '1', '', '', '2022-05-28 02:32:19', '0000-00-00 00:00:00', '41.68.228.183', '1653694339', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payments_bonus`
--

CREATE TABLE `payments_bonus` (
  `bonus_id` int(11) NOT NULL,
  `bonus_method` int(11) NOT NULL,
  `bonus_from` double NOT NULL,
  `bonus_amount` double NOT NULL,
  `bonus_type` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `method_name` varchar(225) NOT NULL,
  `method_get` varchar(225) NOT NULL,
  `method_min` double NOT NULL,
  `method_max` double NOT NULL,
  `method_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF	',
  `method_extras` text NOT NULL,
  `method_line` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `method_name`, `method_get`, `method_min`, `method_max`, `method_type`, `method_extras`, `method_line`) VALUES
(1, 'Paytr', 'paytr', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"Paytr\",\"min\":\"1\",\"max\":\"0\",\"merchant_id\":\"\",\"merchant_key\":\"\",\"merchant_salt\":\"\",\"fee\":\"0\"}', 3),
(2, 'Paytrhavale', 'paytr_havale', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"Paytrhavale\",\"min\":\"1\",\"max\":\"0\",\"merchant_id\":\"\",\"merchant_key\":\"\",\"merchant_salt\":\"\",\"fee\":\"0\"}', 4),
(3, 'Paywant', 'paywant', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"Paywant\",\"min\":\"1\",\"max\":\"0\",\"apiKey\":\"\",\"apiSecret\":\"\",\"fee\":\"0\",\"commissionType\":\"2\",\"payment_type\":[\"1\",\"2\",\"3\"]}', 5),
(4, 'Shopier', 'shopier', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"Credit Card (Turkey)\",\"min\":\"1\",\"max\":\"0\",\"apiKey\":\"bae6993a1afa477d8329ffb0c2ca9385\",\"apiSecret\":\"76aca9729205bd2231bf0098476c3e23\",\"website_index\":\"1\",\"processing_fee\":\"1\",\"fee\":\"0\"}', 6),
(5, 'Shoplemo', 'shoplemo', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"Shoplemo\",\"min\":\"1\",\"max\":\"0\",\"apiKey\":\"\",\"apiSecret\":\"\",\"fee\":\"0\"}', 7),
(6, 'CoinPayments', 'coinpayments', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"Coinpayments\",\"min\":\"1\",\"max\":\"0\",\"coinpayments_public_key\":\"\",\"coinpayments_private_key\":\"\",\"coinpayments_currency\":\"\",\"merchant_id\":\"\",\"ipn_secret\":\"\",\"fee\":\"\"}', 9),
(7, 'Banka Ödemeleri', 'havale-eft', 0, 0, '2', '{\"method_type\":\"2\",\"name\":\"Banka Ödemeleri\"}', 12),
(9, '2checkout', '2checkout', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"2checkout\",\"min\":\"1\",\"max\":\"0\",\"seller_id\":\"\",\"private_key\":\"\",\"currency\":\"\",\"fee\":\"\"}', 10),
(10, 'CardLink', 'cardlink', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"Card link\",\"min\":\"1\",\"max\":\"0\",\"shop_id\":\"oa2QqqX2Al\",\"private_key\":\"17538|P8t5gcN4OJENEQVlC89MfVFGNLWbdntBKUPv3Ll2\",\"currency\":\"$\",\"fee\":\"0\"}', 13),
(11, 'Paypal', 'paypal', 1, 0, '2', '{\"method_type\":\"2\",\"mode\":\"test\",\"name\":\"Paypal\",\"min\":\"1\",\"max\":\"0\",\"clientId\":\"AZhbdZAoXm69Yw7T1XBbeAnNMMNmVC9QWjnobZgoMO_Tqiw0ZclMMTZ3R7CX0A7lC_IK2Sbuh_mkchN5\",\"clientSecret\":\"ELNO4uSeyp5KNlMybFfENkLM-OJ3KiXo5ITGImGfT8fRJ0cpMxJYANKps5zKRFeUfwZ_JL_U5e_gI06e\",\"currency\":\"$\",\"fee\":\"5\"}', 2),
(12, 'PayTM', 'paytm', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"Paytm\",\"min\":\"1\",\"max\":\"0\",\"merchant_key\":\"\",\"merchant_mid\":\"\",\"merchant_website\":\"\",\"currency\":\"INR\",\"fee\":\"\"}', 11),
(13, 'Weepay', 'weepay', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"Weepay\",\"min\":\"1\",\"max\":\"0\",\"bayi_id\":\"\",\"api_key\":\"\",\"secret_key\":\"\",\"currency\":\"USD\",\"fee\":\"0\"}', 8),
(16, 'LemonSqueezy', 'lemon', 1, 0, '2', '{\"method_type\":\"2\",\"name\":\"Credit Card & Paypal\",\"min\":\"1\",\"max\":\"0\",\"merchant_id\":\"\",\"merchant_key\":\"\",\"merchant_salt\":\"\",\"fee\":\"0\"}', 1),
(17, '<b>FundsSystem</b>', 'funds', 1, 0, '2', '{}', 999),
(18, 'Perfect Money', 'perfectmoney', 1, 10000, '2', '{\"method_type\":\"2\",\"name\":\"Perfect Money USD || Auto Bonus 2% from $50 || Min $1\",\"min\":\"1\",\"max\":\"10000\",\"passphrase\":\"C870tt8LMu5lGCSaAtGbupCyg\",\"usd\":\"U33977610\",\"merchant_website\":\"wixout\",\"fee\":\"1\"}', 5),
(19, 'Payeer', 'payeer', 1, 10000, '2', '{\"method_type\":\"2\",\"name\":\"Payeer [ Crypto - USD ] || Auto Bonus %2 From $50 || Min $1\",\"min\":\"1\",\"max\":\"0\",\"account\":\"P1070554281\",\"client_secret\":\"M5T0KdVS8vX8ZFxR\",\"user_id\":\"1652318469\",\"user_pass\":\"73ulEUSqDeu1iqqB\",\"m_shop\":\"1651807285\"}', 4),
(21, 'Custom', 'custom', 0, 0, '2', '{\"method_type\":\"2\",\"name\":\"VODA - USDT - BUSD BONUS 5% FROM 200\",\"content\":\"<p><b>Hi<\\/b><\\/p>\"}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `proxy`
--

CREATE TABLE `proxy` (
  `id` int(11) NOT NULL,
  `user` varchar(225) CHARACTER SET utf8 NOT NULL,
  `pass` varchar(225) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(225) CHARACTER SET utf8 DEFAULT NULL,
  `port` varchar(225) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `refferal` int(11) NOT NULL,
  `action` text CHARACTER SET utf8 NOT NULL,
  `register_date` varchar(225) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reset_log`
--

CREATE TABLE `reset_log` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `token` varchar(225) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reset_log`
--

INSERT INTO `reset_log` (`id`, `client_id`, `token`, `type`) VALUES
(1, 2, 'fa491e75b08bfb6531529dc7f79e40e942376', 1),
(2, 2, '6a643aa0a6884fadb86ba932c05600c9f1fac', 1),
(3, 2, '145ed8a7f80d6a6232248d24f1f77b365e60e', 1),
(4, 2, '3cbd9cf39276500c840e6963730d7b05d5409', 1),
(5, 2, '472d972a62711a3da7ee6f49b5e1b80341845', 1),
(6, 1, '1e677c8cca95b4dbed9cd4008c9599c67eb7f', 1),
(7, 1, '5592ab40c3b940ba205f3b732498924964a95', 1),
(8, 1, '8e6b7df87deaaca974fc5afcec6b5ace47b0a', 1),
(9, 1, 'a7c73c3d75bba39d04875126e3004928c2378', 1),
(10, 1, '8190b82a6132c0292c76fa77589818c229e23', 1),
(11, 1, '20287c83f14d4e295dd1faa29b65f496b0f55', 1),
(12, 1, '64b07f693040e6e378b850a934fea577c07da', 1),
(13, 1, '14f96bc6dcb010c1bce84b9f6616081dcbebf', 1),
(14, 1, '1eea2bdd004aaa5661f3622dcf0550f7eeb63', 1),
(15, 1, '8eb08f11c93bec9bc50e6622f644e5b61ef76', 1),
(16, 1, '638f88675725a51a0a275cefa6d65fbb5927b', 1),
(17, 1, 'afc651ee0755e812de1fb484b8ca008c053ed', 1),
(18, 1, '370f58c3c63d89c15eb3ace60c31c42dc7802', 1),
(19, 1, 'df4d8a7d95af16e83558911da2cf4fdd9d963', 1),
(20, 1, '7f396b7fd848f2e8cd28d0e3315f6c422203a', 1),
(21, 1, 'a0594d86cbae168e895929cd7ad81fcc4677d', 1),
(22, 1, 'bccaf20debf95e1aacbe9e0eef67fcb0d94bf', 1),
(23, 1, '3e90214a1f9f90692a47c105d5a01f6f65129', 1);

-- --------------------------------------------------------

--
-- Table structure for table `serviceapi_alert`
--

CREATE TABLE `serviceapi_alert` (
  `id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `serviceapi_alert` text NOT NULL,
  `servicealert_extra` text NOT NULL,
  `servicealert_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_api` int(11) NOT NULL DEFAULT '0',
  `api_service` int(11) NOT NULL DEFAULT '0',
  `api_servicetype` enum('1','2') CHARACTER SET utf8 NOT NULL DEFAULT '2',
  `api_detail` text CHARACTER SET utf8 NOT NULL,
  `category_id` int(11) NOT NULL,
  `service_line` double NOT NULL,
  `service_type` enum('1','2') CHARACTER SET utf8 NOT NULL DEFAULT '2',
  `service_package` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17') CHARACTER SET utf8 NOT NULL,
  `service_name` text NOT NULL,
  `service_description` text NOT NULL,
  `service_price` double NOT NULL DEFAULT '0',
  `sync_price` int(11) NOT NULL,
  `sync_rate` int(11) NOT NULL,
  `service_min` double NOT NULL,
  `sync_min` int(11) NOT NULL,
  `service_max` double NOT NULL,
  `sync_max` int(11) NOT NULL,
  `service_dripfeed` enum('1','2') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `service_autotime` double NOT NULL DEFAULT '0',
  `service_autopost` double NOT NULL DEFAULT '0',
  `service_speed` enum('1','2','3','4') CHARACTER SET utf8 NOT NULL,
  `want_username` enum('1','2') CHARACTER SET utf8 NOT NULL DEFAULT '1',
  `service_secret` enum('1','2') CHARACTER SET utf8 NOT NULL DEFAULT '2',
  `price_type` enum('normal','percent','amount') CHARACTER SET utf8 NOT NULL DEFAULT 'normal',
  `price_cal` text CHARACTER SET utf8 NOT NULL,
  `start_count` enum('none','instagram_follower','instagram_photo','') CHARACTER SET utf8 NOT NULL,
  `instagram_private` enum('1','2') CHARACTER SET utf8 NOT NULL,
  `name_lang` text NOT NULL,
  `description_lang` text CHARACTER SET utf8 NOT NULL,
  `cancel_type` int(11) NOT NULL DEFAULT '1',
  `refill_type` int(11) NOT NULL DEFAULT '1',
  `refill_time` int(11) NOT NULL,
  `sync_lastcheck` varchar(225) DEFAULT NULL,
  `provider_lastcheck` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `service_api`
--

CREATE TABLE `service_api` (
  `id` int(11) NOT NULL,
  `api_name` varchar(225) NOT NULL,
  `api_url` text NOT NULL,
  `api_key` varchar(225) NOT NULL,
  `api_type` int(11) NOT NULL,
  `api_limit` double NOT NULL DEFAULT '0',
  `api_alert` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> Gönder, 1 -> Gönderildi'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_logo` text,
  `site_name` text,
  `site_title` text NOT NULL,
  `site_description` text NOT NULL,
  `site_keywords` text NOT NULL,
  `site_currency` text NOT NULL,
  `favicon` text,
  `site_language` varchar(225) NOT NULL DEFAULT 'tr',
  `site_theme` text NOT NULL,
  `site_timezone` int(11) NOT NULL,
  `max_ticket` int(11) NOT NULL DEFAULT '2',
  `skype_area` enum('1','2') NOT NULL DEFAULT '1',
  `name_secret` enum('1','2') NOT NULL DEFAULT '1',
  `recaptcha` enum('1','2') NOT NULL DEFAULT '1',
  `recaptcha_key` text,
  `recaptcha_secret` text,
  `custom_header` text,
  `custom_footer` text,
  `ticket_system` enum('1','2') NOT NULL DEFAULT '2',
  `register_page` enum('1','2') NOT NULL DEFAULT '2',
  `terms_checkbox` int(11) NOT NULL DEFAULT '1',
  `service_speed` enum('1','2') NOT NULL DEFAULT '2',
  `service_list` enum('1','2') NOT NULL DEFAULT '2',
  `dolar_charge` double NOT NULL,
  `euro_charge` double NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pass` text NOT NULL,
  `smtp_server` text NOT NULL,
  `smtp_port` varchar(225) NOT NULL,
  `smtp_protocol` enum('0','ssl','tls') NOT NULL,
  `alert_type` enum('1','2','3') NOT NULL,
  `alert_newmanuelservice` enum('1','2') NOT NULL,
  `alert_newticket` enum('1','2') NOT NULL,
  `alert_apibalance` enum('1','2') NOT NULL,
  `alert_newpayment` enum('1','2') NOT NULL,
  `alert_newbankpayment` enum('1','2') NOT NULL DEFAULT '1',
  `alert_serviceapialert` enum('1','2') NOT NULL,
  `alert_failorder` enum('1','2') NOT NULL,
  `admin_mail` varchar(225) NOT NULL,
  `resetpass_page` enum('1','2') NOT NULL,
  `resetpass_email` enum('1','2') NOT NULL,
  `site_maintenance` enum('1','2') NOT NULL DEFAULT '2',
  `site_frozen` int(11) NOT NULL DEFAULT '1',
  `sms_provider` varchar(225) NOT NULL,
  `sms_title` varchar(225) NOT NULL,
  `sms_user` varchar(225) NOT NULL,
  `sms_pass` varchar(225) NOT NULL,
  `admin_telephone` varchar(225) NOT NULL,
  `resetpass_sms` enum('1','2') NOT NULL,
  `panel_selling` int(11) NOT NULL,
  `panel_price` int(11) NOT NULL,
  `free_balance` int(11) NOT NULL,
  `free_amount` int(11) NOT NULL,
  `referral` enum('1','2') NOT NULL DEFAULT '1',
  `ref_bonus` int(11) NOT NULL,
  `ref_max` int(11) NOT NULL,
  `ref_type` enum('0','1') NOT NULL DEFAULT '0',
  `cache` int(11) NOT NULL,
  `cache_time` int(11) NOT NULL,
  `guard_system_status` int(11) NOT NULL,
  `guard_services_status` int(11) NOT NULL,
  `guard_services_type` int(11) NOT NULL,
  `guard_notify_status` int(11) NOT NULL,
  `guard_notify_type` int(11) NOT NULL,
  `guard_roles_status` int(11) NOT NULL,
  `guard_roles_type` int(11) NOT NULL,
  `guard_apikey_type` int(11) NOT NULL,
  `neworder_terms` int(11) NOT NULL,
  `guard_cron_system` int(11) NOT NULL DEFAULT '1',
  `secret_key` varchar(225) NOT NULL,
  `avarage` int(11) NOT NULL,
  `sms_verify` int(11) NOT NULL DEFAULT '1',
  `mail_verify` int(11) NOT NULL DEFAULT '1',
  `ser_sync` int(11) NOT NULL,
  `auto_refill` varchar(225) DEFAULT NULL,
  `fundstransfer_fees` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_logo`, `site_name`, `site_title`, `site_description`, `site_keywords`, `site_currency`, `favicon`, `site_language`, `site_theme`, `site_timezone`, `max_ticket`, `skype_area`, `name_secret`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `custom_header`, `custom_footer`, `ticket_system`, `register_page`, `terms_checkbox`, `service_speed`, `service_list`, `dolar_charge`, `euro_charge`, `smtp_user`, `smtp_pass`, `smtp_server`, `smtp_port`, `smtp_protocol`, `alert_type`, `alert_newmanuelservice`, `alert_newticket`, `alert_apibalance`, `alert_newpayment`, `alert_newbankpayment`, `alert_serviceapialert`, `alert_failorder`, `admin_mail`, `resetpass_page`, `resetpass_email`, `site_maintenance`, `site_frozen`, `sms_provider`, `sms_title`, `sms_user`, `sms_pass`, `admin_telephone`, `resetpass_sms`, `panel_selling`, `panel_price`, `free_balance`, `free_amount`, `referral`, `ref_bonus`, `ref_max`, `ref_type`, `cache`, `cache_time`, `guard_system_status`, `guard_services_status`, `guard_services_type`, `guard_notify_status`, `guard_notify_type`, `guard_roles_status`, `guard_roles_type`, `guard_apikey_type`, `neworder_terms`, `guard_cron_system`, `secret_key`, `avarage`, `sms_verify`, `mail_verify`, `ser_sync`, `auto_refill`, `fundstransfer_fees`) VALUES
(1, 'images/872488f88d1b2db54d55bc8bba2fad1b.png', 'ScarU ', 'ScarU', '', '', 'USD', 'images/329a970dfa7f977b158a7450f283716d1b46ac73.png', 'tr', 'smmspot', 0, 2, '1', '1', '1', '6Le866QcAAAAAO5BquPPc0YLLTiJ7CNaEDX2cL5y', '6Le866QcAAAAAEpSeHwn41-ayfWwmAAvtJD1YuqZ', '', '', '2', '2', 1, '1', '2', 1, 1, 'no-reply@scaru.co', 'As2017sabah###', 'mail.scaru.co', '587', 'tls', '2', '1', '1', '1', '1', '1', '1', '1', '', '2', '2', '2', 1, 'netgsm', '', '', '', '', '1', 2, 1, 1, 0, '2', 0, 0, '0', 1, 1, 1, 1, 1, 1, 2, 1, 1, 2, 1, 1, '', 1, 1, 1, 2, '2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `task_type` varchar(225) DEFAULT NULL,
  `task_status` varchar(225) DEFAULT 'pending',
  `task_date` datetime DEFAULT NULL,
  `refill_orderid` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_name` text NOT NULL,
  `theme_dirname` text NOT NULL,
  `theme_extras` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_name`, `theme_dirname`, `theme_extras`) VALUES
(26, 'SMM Spot', 'smmspot', '{\"stylesheets\":[\"css/panel/smmspot/bootstrap.css\",\"css/panel/smmspot/style.css\",\"js\\/datepicker\\/css\\/bootstrap-datepicker3.min.css\",\"https:\\/\\/cdn.mypanel.link\\/css\\/font-awesome\\/css\\/all.min.css\"],\"scripts\":[\"https:\\/\\/cdnjs.cloudflare.com\\/ajax\\/libs\\/jquery\\/1.12.4\\/jquery.min.js\",\"js/panel/smmspot/script.js\",\"js/main.js?n=545658\",\"js/panel/smmspot/bootstrap.js\",\"js\\/datepicker\\/js\\/bootstrap-datepicker.min.js\",\"js\\/datepicker\\/locales\\/bootstrap-datepicker.tr.min.js\"]}\r\n'),
(28, 'fast70', 'fast70', '');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `time` datetime NOT NULL,
  `lastupdate_time` datetime NOT NULL,
  `client_new` enum('1','2') NOT NULL DEFAULT '2',
  `status` enum('pending','answered','closed') NOT NULL DEFAULT 'pending',
  `support_new` enum('1','2') NOT NULL DEFAULT '1',
  `canmessage` enum('1','2') NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `support_team` varchar(225) NOT NULL,
  `time` datetime NOT NULL,
  `support` enum('1','2') NOT NULL DEFAULT '1',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket_reply`
--

INSERT INTO `ticket_reply` (`id`, `ticket_id`, `client_id`, `support_team`, `time`, `support`, `message`) VALUES
(3, 2, 0, '', '2022-04-19 07:31:26', '1', 'when start?\r\n'),
(4, 3, 0, '', '2022-05-10 19:01:26', '1', 'dfsdfsdfsdfsdf'),
(5, 4, 0, '', '2022-05-10 19:05:49', '1', 'hifgdfgdfgdfgdfgdfg'),
(6, 4, 0, '', '2022-05-10 19:07:55', '2', 'asdasdasd'),
(7, 3, 0, '', '2022-05-10 19:08:01', '2', 'asdasdasdasdsad'),
(8, 4, 0, '', '2022-05-10 19:15:15', '1', 'dfsdfsdfsdf'),
(9, 5, 0, '', '2022-05-23 20:55:46', '1', 'xdfsdfasdfsdfsdfsdf'),
(10, 5, 0, '', '2022-05-23 20:56:34', '2', 'fdfsdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_subjects`
--

CREATE TABLE `ticket_subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(225) NOT NULL,
  `content` text,
  `auto_reply` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ticket_subjects`
--

INSERT INTO `ticket_subjects` (`subject_id`, `subject`, `content`, `auto_reply`) VALUES
(1, 'Order Issues', '', '0'),
(2, 'Payment Issues', '', '0'),
(3, 'About the Dealership', '', '0'),
(4, 'Complaint & Suggestion', '', '0'),
(6, 'Other', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `verify_log`
--

CREATE TABLE `verify_log` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `token` varchar(225) NOT NULL,
  `type` int(11) NOT NULL,
  `verify` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `verify_log`
--

INSERT INTO `verify_log` (`id`, `client_id`, `token`, `type`, `verify`) VALUES
(1, 3, '924f3f72a3cd94ff0421c822ec3a06799b2ca', 1, 'mail'),
(2, 4, '05f33d9b4e1cbef79887c9e500a5441e984df', 2, 'mail'),
(3, 5, '0d8108b598a53d57c35289fa506beb61f535d', 1, 'mail'),
(4, 5, '9a1dc726ebe65c74ed414e7c0c41628a640c4', 2, 'mail'),
(5, 2, 'e7befcb054f89d145d74cbad2fa9ca97d8487', 1, 'mail'),
(6, 2, '8cfc290849dc3dd05e529aa0028305f93423d', 2, 'mail'),
(7, 6, '92f779f37af7c61cefb2a26e6ad19015b34f0', 1, 'mail'),
(8, 7, '500774e586d92d47a90b30db10b7fce960c37', 2, 'mail'),
(9, 7, '27f20f0f1af91065d4984296124177d839b99', 1, 'mail'),
(10, 7, 'b49a3cbb4d3b362e2a029504c890e6fe766b2', 1, 'mail'),
(11, 10, '52f0189672f4c18f20e94cc18504137a5070c', 2, 'mail'),
(12, 11, '78550a54299895aa5c2835b43fc1d07efb267', 1, 'mail'),
(13, 11, '3d74c5888c497d7407207b33f5a5648ba706b', 2, 'mail'),
(14, 12, '5ebd314181cf180e0172ceb1fed08e97a2b24', 2, 'mail'),
(15, 12, '3902c2d55e575c590601370b2ce40a57ce10c', 1, 'mail'),
(16, 15, '5fb676b8bf1febc511a91466b9576c57fce9e', 1, 'mail'),
(17, 15, '63669653944172a0b45ed1a0801075ee684bb', 2, 'mail'),
(18, 16, '07f8a85d1fd85065e190e9cab6dda0b2ea247', 1, 'mail'),
(19, 16, '5d398594298d9750cd2f0529f1d4ca3e811f2', 2, 'mail'),
(20, 16, '7787d3b3c60ac32c176b1a7304e2d9e45f54d', 1, 'mail'),
(21, 16, '98f9cb2ec5d6e38bcbfc480c145839c8a1edf', 1, 'mail'),
(22, 17, '4d3bc6c93c6a3a4132276433d76d3f03757e0', 2, 'mail');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `child_panels`
--
ALTER TABLE `child_panels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `clients_category`
--
ALTER TABLE `clients_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_price`
--
ALTER TABLE `clients_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients_service`
--
ALTER TABLE `clients_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_report`
--
ALTER TABLE `client_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crons`
--
ALTER TABLE `crons`
  ADD PRIMARY KEY (`cron_id`);

--
-- Indexes for table `crons_report`
--
ALTER TABLE `crons_report`
  ADD PRIMARY KEY (`crons_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guard_log`
--
ALTER TABLE `guard_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `integrations`
--
ALTER TABLE `integrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `api_orderid` (`api_orderid`),
  ADD KEY `order_api` (`order_api`),
  ADD KEY `api_serviceid` (`api_serviceid`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`),
  ADD UNIQUE KEY `page_id` (`page_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD UNIQUE KEY `payment_privatecode` (`payment_privatecode`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `client_balance` (`client_balance`),
  ADD KEY `payment_amount` (`payment_amount`),
  ADD KEY `payment_method` (`payment_method`),
  ADD KEY `payment_status` (`payment_status`);

--
-- Indexes for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  ADD PRIMARY KEY (`bonus_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proxy`
--
ALTER TABLE `proxy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset_log`
--
ALTER TABLE `reset_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `service_api`
--
ALTER TABLE `service_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `verify_log`
--
ALTER TABLE `verify_log`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `child_panels`
--
ALTER TABLE `child_panels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `clients_category`
--
ALTER TABLE `clients_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_price`
--
ALTER TABLE `clients_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients_service`
--
ALTER TABLE `clients_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_report`
--
ALTER TABLE `client_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=347;

--
-- AUTO_INCREMENT for table `crons`
--
ALTER TABLE `crons`
  MODIFY `cron_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `crons_report`
--
ALTER TABLE `crons_report`
  MODIFY `crons_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7032;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guard_log`
--
ALTER TABLE `guard_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `integrations`
--
ALTER TABLE `integrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1654348;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `payments_bonus`
--
ALTER TABLE `payments_bonus`
  MODIFY `bonus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `proxy`
--
ALTER TABLE `proxy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_log`
--
ALTER TABLE `reset_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `serviceapi_alert`
--
ALTER TABLE `serviceapi_alert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `service_api`
--
ALTER TABLE `service_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ticket_subjects`
--
ALTER TABLE `ticket_subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `verify_log`
--
ALTER TABLE `verify_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

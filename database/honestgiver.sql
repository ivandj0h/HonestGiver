-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2019 at 01:47 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `honestgiver`
--

-- --------------------------------------------------------

--
-- Table structure for table `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `batch` int(11) DEFAULT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(1, '1503248427885_user', 1, '2019-09-23 17:13:43'),
(2, '1503248427886_token', 1, '2019-09-23 17:13:45'),
(3, '1517537180329_password_reset_schema', 1, '2019-09-23 17:13:45'),
(4, '1569245779060_useraskers_schema', 2, '2019-09-23 17:16:19'),
(5, '1569245813167_usergivers_schema', 2, '2019-09-23 17:16:20'),
(6, '1569255310408_locales', 2, '2019-09-23 17:16:21'),
(7, '1569256945868_bantuan_givers_schema', 2, '2019-09-23 17:16:23');

-- --------------------------------------------------------

--
-- Table structure for table `bantuans`
--

CREATE TABLE `bantuans` (
  `id` int(10) UNSIGNED NOT NULL,
  `useraskers_id` int(10) UNSIGNED DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `judul` varchar(225) DEFAULT NULL,
  `jumlah_bantuan` decimal(17,8) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bantuans`
--

INSERT INTO `bantuans` (`id`, `useraskers_id`, `tanggal`, `judul`, `jumlah_bantuan`, `detail`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-09-24', 'Pengobatan anak sakit', '6500000.00000000', 'Pengobatan anak sakit', '2019-09-24 01:23:19', '2019-09-24 01:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `bantuan_givers`
--

CREATE TABLE `bantuan_givers` (
  `id` int(10) UNSIGNED NOT NULL,
  `bantuan_id` int(10) UNSIGNED DEFAULT NULL,
  `giver_user_id` int(10) UNSIGNED DEFAULT NULL,
  `tanggal_dibantu` date DEFAULT NULL,
  `nilai_bantuan` decimal(17,8) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bantuan_givers`
--

INSERT INTO `bantuan_givers` (`id`, `bantuan_id`, `giver_user_id`, `tanggal_dibantu`, `nilai_bantuan`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-09-24', '500000.00000000', '2019-09-24 01:23:19', '2019-09-24 01:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `locales`
--

CREATE TABLE `locales` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `text` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('wR7kRds2JJwSG0YuNVd6a82MQCSuETrQ', 1569368657, '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"httpOnly\":true,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `token` varchar(40) NOT NULL,
  `type` varchar(80) NOT NULL,
  `is_revoked` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `useraskers`
--

CREATE TABLE `useraskers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(60) NOT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraskers`
--

INSERT INTO `useraskers` (`id`, `name`, `email`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Anton', 'anton@honestmining.com', '$2a$10$zcLNq8Zkp6K9yJntekL4nOzggDFY64UYGYz24yV3qTXInBJ0F.eEC', 1, '2019-09-24 01:23:19', '2019-09-24 01:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `usergivers`
--

CREATE TABLE `usergivers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(60) NOT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usergivers`
--

INSERT INTO `usergivers` (`id`, `name`, `email`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Lina', 'l@honestmining.com', '$2a$10$zcLNq8Zkp6K9yJntekL4nOzggDFY64UYGYz24yV3qTXInBJ0F.eEC', 1, '2019-09-24 01:23:19', '2019-09-24 01:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(80) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(60) NOT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `confirmation_token`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2a$10$zcLNq8Zkp6K9yJntekL4nOzggDFY64UYGYz24yV3qTXInBJ0F.eEC', 'Wu5dI1MxE8i8nBVvILuuTaWUSereDns0fNbsYpso', 1, '2019-09-24 01:23:19', '2019-09-24 01:23:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bantuans`
--
ALTER TABLE `bantuans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `useraskers_id` (`useraskers_id`);

--
-- Indexes for table `bantuan_givers`
--
ALTER TABLE `bantuan_givers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bantuan_givers_bantuan_id_foreign` (`bantuan_id`),
  ADD KEY `bantuan_givers_giver_user_id_foreign` (`giver_user_id`);

--
-- Indexes for table `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tokens_token_unique` (`token`),
  ADD KEY `tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `useraskers`
--
ALTER TABLE `useraskers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `useraskers_name_unique` (`name`),
  ADD UNIQUE KEY `useraskers_email_unique` (`email`);

--
-- Indexes for table `usergivers`
--
ALTER TABLE `usergivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usergivers_name_unique` (`name`),
  ADD UNIQUE KEY `usergivers_email_unique` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bantuans`
--
ALTER TABLE `bantuans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bantuan_givers`
--
ALTER TABLE `bantuan_givers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `locales`
--
ALTER TABLE `locales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `useraskers`
--
ALTER TABLE `useraskers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `usergivers`
--
ALTER TABLE `usergivers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bantuans`
--
ALTER TABLE `bantuans`
  ADD CONSTRAINT `bantuans_ibfk_1` FOREIGN KEY (`useraskers_id`) REFERENCES `useraskers` (`id`);

--
-- Constraints for table `bantuan_givers`
--
ALTER TABLE `bantuan_givers`
  ADD CONSTRAINT `bantuan_givers_bantuan_id_foreign` FOREIGN KEY (`bantuan_id`) REFERENCES `bantuans` (`id`),
  ADD CONSTRAINT `bantuan_givers_giver_user_id_foreign` FOREIGN KEY (`giver_user_id`) REFERENCES `usergivers` (`id`);

--
-- Constraints for table `tokens`
--
ALTER TABLE `tokens`
  ADD CONSTRAINT `tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

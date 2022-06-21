-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 04:31 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_spk`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatives`
--

CREATE TABLE `alternatives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternatives`
--

INSERT INTO `alternatives` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dito Cahya Pratama', '2022-06-21 07:02:43', '2022-06-21 07:02:43'),
(2, 'Muhammad Syifa`ul Ikrom Almasyriqi', '2022-06-21 07:03:53', '2022-06-21 07:03:53'),
(3, 'Arin Kistia Nugraeni', '2022-06-21 07:05:57', '2022-06-21 07:05:57'),
(4, 'Brian Adam Bhagaskara', '2022-06-21 07:06:36', '2022-06-21 07:06:36'),
(5, 'Irsyada Alfyrdhousi Redhysyahputra', '2022-06-21 07:10:53', '2022-06-21 07:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `alternativescores`
--

CREATE TABLE `alternativescores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `alternative_id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `rating_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alternativescores`
--

INSERT INTO `alternativescores` (`id`, `alternative_id`, `criteria_id`, `rating_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2022-06-21 07:02:43', '2022-06-21 07:02:43'),
(2, 1, 2, 9, '2022-06-21 07:02:43', '2022-06-21 07:02:43'),
(3, 1, 3, 15, '2022-06-21 07:02:43', '2022-06-21 07:02:43'),
(4, 1, 4, 25, '2022-06-21 07:02:43', '2022-06-21 07:02:43'),
(5, 1, 5, 26, '2022-06-21 07:02:43', '2022-06-21 07:02:43'),
(6, 2, 1, 5, '2022-06-21 07:03:53', '2022-06-21 07:03:53'),
(7, 2, 2, 9, '2022-06-21 07:03:53', '2022-06-21 07:03:53'),
(8, 2, 3, 14, '2022-06-21 07:03:53', '2022-06-21 07:03:53'),
(9, 2, 4, 25, '2022-06-21 07:03:53', '2022-06-21 07:03:53'),
(10, 2, 5, 26, '2022-06-21 07:03:53', '2022-06-21 07:03:53'),
(11, 3, 1, 5, '2022-06-21 07:05:57', '2022-06-21 07:05:57'),
(12, 3, 2, 10, '2022-06-21 07:05:57', '2022-06-21 07:05:57'),
(13, 3, 3, 15, '2022-06-21 07:05:57', '2022-06-21 07:05:57'),
(14, 3, 4, 24, '2022-06-21 07:05:57', '2022-06-21 07:05:57'),
(15, 3, 5, 26, '2022-06-21 07:05:57', '2022-06-21 07:05:57'),
(16, 4, 1, 4, '2022-06-21 07:06:36', '2022-06-21 07:06:36'),
(17, 4, 2, 8, '2022-06-21 07:06:36', '2022-06-21 07:06:36'),
(18, 4, 3, 14, '2022-06-21 07:06:36', '2022-06-21 07:06:36'),
(19, 4, 4, 23, '2022-06-21 07:06:36', '2022-06-21 07:06:36'),
(20, 4, 5, 28, '2022-06-21 07:06:36', '2022-06-21 07:06:36'),
(21, 5, 1, 4, '2022-06-21 07:10:53', '2022-06-21 07:10:53'),
(22, 5, 2, 10, '2022-06-21 07:10:53', '2022-06-21 07:10:53'),
(23, 5, 3, 14, '2022-06-21 07:10:53', '2022-06-21 07:10:53'),
(24, 5, 4, 23, '2022-06-21 07:10:53', '2022-06-21 07:10:53'),
(25, 5, 5, 26, '2022-06-21 07:10:53', '2022-06-21 07:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `criteriaratings`
--

CREATE TABLE `criteriaratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `criteria_id` bigint(20) UNSIGNED NOT NULL,
  `rating` double(8,2) NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criteriaratings`
--

INSERT INTO `criteriaratings` (`id`, `criteria_id`, `rating`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1.00, 'Sangat Kurang', '2022-06-21 06:52:55', '2022-06-21 06:52:55'),
(2, 1, 2.00, 'Kurang', '2022-06-21 06:53:12', '2022-06-21 06:53:12'),
(3, 1, 3.00, 'Cukup', '2022-06-21 06:53:23', '2022-06-21 06:53:23'),
(4, 1, 4.00, 'Bagus', '2022-06-21 06:53:44', '2022-06-21 06:53:44'),
(5, 1, 5.00, 'Sangat Bagus', '2022-06-21 06:53:53', '2022-06-21 06:53:53'),
(6, 2, 1.00, 'Sangat Kurang', '2022-06-21 06:54:33', '2022-06-21 06:54:33'),
(7, 2, 2.00, 'Kurang', '2022-06-21 06:54:49', '2022-06-21 06:54:49'),
(8, 2, 3.00, 'Cukup', '2022-06-21 06:54:59', '2022-06-21 06:54:59'),
(9, 2, 4.00, 'Bagus', '2022-06-21 06:55:10', '2022-06-21 06:55:10'),
(10, 2, 5.00, 'Sangat Bagus', '2022-06-21 06:55:22', '2022-06-21 06:55:22'),
(11, 3, 1.00, 'Sangat Kurang', '2022-06-21 06:55:49', '2022-06-21 06:55:49'),
(12, 3, 2.00, 'Kurang', '2022-06-21 06:55:58', '2022-06-21 06:55:58'),
(13, 3, 3.00, 'Cukup', '2022-06-21 06:56:08', '2022-06-21 06:56:08'),
(14, 3, 4.00, 'Bagus', '2022-06-21 06:56:16', '2022-06-21 06:56:16'),
(15, 3, 5.00, 'Sangat Bagus', '2022-06-21 06:56:24', '2022-06-21 06:56:24'),
(21, 4, 1.00, 'Sangat Kurang', '2022-06-21 06:58:36', '2022-06-21 06:58:36'),
(22, 4, 2.00, 'Kurang', '2022-06-21 06:58:47', '2022-06-21 06:58:47'),
(23, 4, 3.00, 'Cukup', '2022-06-21 06:59:03', '2022-06-21 06:59:03'),
(24, 4, 4.00, 'Bagus', '2022-06-21 06:59:17', '2022-06-21 06:59:17'),
(25, 4, 5.00, 'Sangat Bagus', '2022-06-21 06:59:25', '2022-06-21 06:59:25'),
(26, 5, 1.00, 'Sangat Kurang', '2022-06-21 06:59:42', '2022-06-21 06:59:42'),
(27, 5, 2.00, 'Kurang', '2022-06-21 07:00:34', '2022-06-21 07:00:34'),
(28, 5, 3.00, 'Cukup', '2022-06-21 07:00:59', '2022-06-21 07:00:59'),
(29, 5, 4.00, 'Banyak', '2022-06-21 07:01:16', '2022-06-21 07:01:16'),
(30, 5, 5.00, 'Sangat Banyak', '2022-06-21 07:01:31', '2022-06-21 07:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `criteriaweights`
--

CREATE TABLE `criteriaweights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('benefit','cost') COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `criteriaweights`
--

INSERT INTO `criteriaweights` (`id`, `name`, `type`, `weight`, `description`, `created_at`, `updated_at`) VALUES
(1, 'IPK', 'benefit', 0.08, 'C1', '2022-06-21 06:49:24', '2022-06-21 06:49:24'),
(2, 'Pengalaman Organisasi', 'benefit', 0.25, 'C2', '2022-06-21 06:49:43', '2022-06-21 06:49:43'),
(3, 'Presensi Semester Berjalan', 'benefit', 0.25, 'C3', '2022-06-21 06:50:08', '2022-06-21 06:50:08'),
(4, 'Prestasi yang Diraih', 'benefit', 0.17, 'C4', '2022-06-21 06:50:25', '2022-06-21 06:50:25'),
(5, 'Sanksi', 'cost', 0.25, 'C5', '2022-06-21 06:51:07', '2022-06-21 06:51:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_10_11_082211_create_users_table', 1),
(2, '2020_10_11_082307_create_alternatives_table', 1),
(3, '2020_10_11_082343_create_criteriaweights_table', 1),
(4, '2020_10_11_082354_create_criteriaratings_table', 1),
(5, '2020_10_11_082442_create_alternativescores_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatives`
--
ALTER TABLE `alternatives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alternativescores`
--
ALTER TABLE `alternativescores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alternativescores_alternative_id_foreign` (`alternative_id`),
  ADD KEY `alternativescores_criteria_id_foreign` (`criteria_id`),
  ADD KEY `alternativescores_rating_id_foreign` (`rating_id`);

--
-- Indexes for table `criteriaratings`
--
ALTER TABLE `criteriaratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `criteriaratings_criteria_id_foreign` (`criteria_id`);

--
-- Indexes for table `criteriaweights`
--
ALTER TABLE `criteriaweights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatives`
--
ALTER TABLE `alternatives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `alternativescores`
--
ALTER TABLE `alternativescores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `criteriaratings`
--
ALTER TABLE `criteriaratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `criteriaweights`
--
ALTER TABLE `criteriaweights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alternativescores`
--
ALTER TABLE `alternativescores`
  ADD CONSTRAINT `alternativescores_alternative_id_foreign` FOREIGN KEY (`alternative_id`) REFERENCES `alternatives` (`id`),
  ADD CONSTRAINT `alternativescores_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criteriaweights` (`id`),
  ADD CONSTRAINT `alternativescores_rating_id_foreign` FOREIGN KEY (`rating_id`) REFERENCES `criteriaratings` (`id`);

--
-- Constraints for table `criteriaratings`
--
ALTER TABLE `criteriaratings`
  ADD CONSTRAINT `criteriaratings_criteria_id_foreign` FOREIGN KEY (`criteria_id`) REFERENCES `criteriaweights` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2022 at 04:14 PM
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
(1, 'Muhammad Fauzan', '2022-06-08 02:10:20', '2022-06-08 02:10:20'),
(2, 'Putri', '2022-06-08 02:17:51', '2022-06-08 02:17:51'),
(3, 'Dito', '2022-06-08 02:18:05', '2022-06-08 02:18:05'),
(4, 'Riqi', '2022-06-08 02:18:14', '2022-06-08 02:18:14'),
(5, 'Andre', '2022-06-08 02:18:50', '2022-06-08 02:18:50');

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
(1, 1, 1, 4, '2022-06-08 02:10:20', '2022-06-08 02:47:34'),
(2, 1, 2, 7, '2022-06-08 02:10:20', '2022-06-08 02:47:34'),
(3, 1, 3, 15, '2022-06-08 02:10:20', '2022-06-08 02:47:34'),
(4, 1, 4, 18, '2022-06-08 02:10:20', '2022-06-08 02:47:34'),
(5, 1, 5, 25, '2022-06-08 02:10:20', '2022-06-08 02:47:34'),
(6, 2, 1, 4, '2022-06-08 02:17:51', '2022-06-08 02:47:51'),
(7, 2, 2, 6, '2022-06-08 02:17:51', '2022-06-08 02:17:51'),
(8, 2, 3, 15, '2022-06-08 02:17:51', '2022-06-08 02:47:51'),
(9, 2, 4, 19, '2022-06-08 02:17:51', '2022-06-08 02:30:02'),
(10, 2, 5, 25, '2022-06-08 02:17:51', '2022-06-08 02:47:51'),
(11, 3, 1, 3, '2022-06-08 02:18:05', '2022-06-08 02:48:18'),
(12, 3, 2, 6, '2022-06-08 02:18:05', '2022-06-08 02:18:05'),
(13, 3, 3, 15, '2022-06-08 02:18:05', '2022-06-08 02:48:18'),
(14, 3, 4, 20, '2022-06-08 02:18:05', '2022-06-08 02:48:18'),
(15, 3, 5, 25, '2022-06-08 02:18:05', '2022-06-08 02:48:18'),
(16, 4, 1, 2, '2022-06-08 02:18:14', '2022-06-08 02:48:55'),
(17, 4, 2, 8, '2022-06-08 02:18:14', '2022-06-08 02:48:56'),
(18, 4, 3, 15, '2022-06-08 02:18:14', '2022-06-08 02:48:56'),
(19, 4, 4, 20, '2022-06-08 02:18:14', '2022-06-08 02:48:56'),
(20, 4, 5, 25, '2022-06-08 02:18:14', '2022-06-08 02:48:56'),
(21, 5, 1, 5, '2022-06-08 02:18:50', '2022-06-08 02:49:10'),
(22, 5, 2, 7, '2022-06-08 02:18:50', '2022-06-08 02:49:10'),
(23, 5, 3, 15, '2022-06-08 02:18:50', '2022-06-08 02:49:10'),
(24, 5, 4, 20, '2022-06-08 02:18:50', '2022-06-08 02:49:10'),
(25, 5, 5, 25, '2022-06-08 02:18:50', '2022-06-08 02:49:10');

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
(1, 1, 1.00, 'Kurang Sekali', '2022-06-08 01:59:32', '2022-06-08 02:39:15'),
(2, 1, 2.00, 'Kurang', '2022-06-08 02:00:13', '2022-06-08 02:39:40'),
(3, 1, 3.00, 'Cukup', '2022-06-08 02:01:22', '2022-06-08 02:16:13'),
(4, 1, 4.00, 'Bagus', '2022-06-08 02:01:54', '2022-06-08 02:39:52'),
(5, 1, 5.00, 'Sangat Bagus', '2022-06-08 02:02:17', '2022-06-08 02:16:41'),
(6, 2, 1.00, 'Kurang Sekali', '2022-06-08 02:02:39', '2022-06-08 02:40:36'),
(7, 2, 2.00, 'Kurang', '2022-06-08 02:02:57', '2022-06-08 02:40:48'),
(8, 2, 3.00, 'Cukup', '2022-06-08 02:03:10', '2022-06-08 02:40:59'),
(9, 2, 4.00, 'Bagus', '2022-06-08 02:03:26', '2022-06-08 02:42:30'),
(10, 2, 5.00, 'Sangat Bagus', '2022-06-08 02:03:40', '2022-06-08 02:42:39'),
(11, 3, 1.00, 'Kurang Sekali', '2022-06-08 02:04:30', '2022-06-08 02:43:01'),
(12, 3, 2.00, 'Kurang', '2022-06-08 02:04:50', '2022-06-08 02:43:20'),
(13, 3, 3.00, 'Cukup', '2022-06-08 02:05:13', '2022-06-08 02:43:34'),
(14, 3, 4.00, 'Bagus', '2022-06-08 02:05:25', '2022-06-08 02:43:44'),
(15, 3, 5.00, 'Sangat Bagus', '2022-06-08 02:06:01', '2022-06-08 02:22:06'),
(16, 4, 1.00, 'Kurang Sekali', '2022-06-08 02:06:38', '2022-06-08 02:44:03'),
(17, 4, 2.00, 'Kurang', '2022-06-08 02:06:51', '2022-06-08 02:44:28'),
(18, 4, 3.00, 'Cukup', '2022-06-08 02:07:04', '2022-06-08 02:45:12'),
(19, 4, 4.00, 'Bagus', '2022-06-08 02:07:17', '2022-06-08 02:45:29'),
(20, 4, 5.00, 'Sangat Bagus', '2022-06-08 02:07:27', '2022-06-08 02:45:36'),
(21, 5, 1.00, 'Kurang Sekali', '2022-06-08 02:07:58', '2022-06-08 02:46:20'),
(22, 5, 2.00, 'Kurang', '2022-06-08 02:08:05', '2022-06-08 02:46:32'),
(23, 5, 3.00, 'Cukup', '2022-06-08 02:08:33', '2022-06-08 02:46:41'),
(24, 5, 4.00, 'Bagus', '2022-06-08 02:08:42', '2022-06-08 02:46:54'),
(25, 5, 5.00, 'Sangat Bagus', '2022-06-08 02:08:54', '2022-06-08 02:47:06');

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
(1, 'IPK', 'benefit', 0.08, 'C1', '2022-06-08 01:56:18', '2022-06-08 02:11:31'),
(2, 'Pengalaman Organisasi', 'benefit', 0.25, 'C2', '2022-06-08 01:56:58', '2022-06-08 02:14:31'),
(3, 'Presensi Semester Berjalan', 'benefit', 0.25, 'C3', '2022-06-08 01:57:51', '2022-06-08 02:14:45'),
(4, 'Prestasi yang Diraih', 'benefit', 0.17, 'A4', '2022-06-08 01:58:24', '2022-06-08 02:14:56'),
(5, 'Sanksi', 'cost', 0.25, 'C5', '2022-06-08 01:58:45', '2022-06-08 02:15:09');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

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

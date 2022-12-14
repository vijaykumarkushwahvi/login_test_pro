-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 12:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_pro`
--

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
(1, '2022_12_13_112636_create_admins_table', 1),
(2, '2022_12_13_152646_create_registers_table', 2),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(4, '2022_12_13_182440_add_google_id_in_registers_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registers`
--

CREATE TABLE `registers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registers`
--

INSERT INTO `registers` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`, `google_id`) VALUES
(1, 'vijay', 'admin@gmail.com', '$2y$10$XC.YAf1X9SytKYdZnys.BOuPRGE5e76JkABjYegaQra3G3a0PDu.O', '2022-12-13 10:47:05', '2022-12-13 11:58:29', NULL),
(2, 'raj', 'raj@gmail.com', '123444', '2022-12-13 11:08:58', '2022-12-13 11:08:58', NULL),
(3, 'asd', 'admin@gmail.com', '$2y$10$TMdRwaOyVFcRLz1YniKKneJ1beHRALdkE3vIoo5pN.LbsMySTcQIi', '2022-12-13 11:56:42', '2022-12-13 12:04:48', NULL),
(4, 'ml', 'vi@gmail.com', '$2y$10$EgaW/1PIbwdfz5D0ms0C2.xr3erM5lGFJn7AzKLECwuruBLTRxU/i', '2022-12-13 12:04:05', '2022-12-13 12:06:02', NULL),
(5, 'vijay', 'kumar@gmail.com', '$2y$10$KF.fgoTKx8CSCjSMmapiZOQen4JeheHWe8nV0PydwG5nG3tnXQe42', '2022-12-13 12:36:24', '2022-12-13 12:36:24', NULL),
(6, 'ram', 'ram@gmail.com', '$2y$10$HzBmMx36xM4TiKeMkXo4remzZlSs7g7Upbmpj5WcCE11PK6hx9jaK', '2022-12-13 23:43:50', '2022-12-13 23:43:50', NULL),
(7, 'jai', 'jai@gmail.com', '$2y$10$EhdrK4JNe.jguIsXgHd.j.3cjPFIMEr3w1QINLS.TnezLY390oV6O', '2022-12-14 00:12:50', '2022-12-14 00:12:50', NULL),
(8, 'jayprakash', 'jayprakash@gmail.com', '$2y$10$6NxBTIxErbLD4JOPK/emT.2X0GKRzUDQm.BO4YECiDzoHTjZP94pC', '2022-12-14 00:15:02', '2022-12-14 00:15:02', NULL),
(9, 'ram', 'ramsita@gmail.com', '$2y$10$7fXcABRzg.OZIYM1CzCLPOrKkkGVM.yIWKqvTNgK5jK0Yty5larTG', '2022-12-14 02:43:00', '2022-12-14 02:43:00', NULL),
(11, 'Vijay Kushwah', 'vi07kushwah@gmail.com', 'eyJpdiI6Inc3RVg1M294d250Q2ZDRGc1SXVuMEE9PSIsInZhbHVlIjoiWmtTMGprNjFpcEdNTUpiUE1MWmVFa2htUVdiT2hselM5OTBCNkFSWGdmOD0iLCJtYWMiOiI3NTBiZDE3YTUxMDMwZTU0Y2MxMDA5ZDNiZWZhZWFhMGRmNGVjNTg5Y2MwNGM4MTc0NDNjMjk1NWYzMmY2ZDA1IiwidGFnIjoiIn0=', '2022-12-14 03:40:00', '2022-12-14 03:40:00', '115778957041232314804'),
(12, 'VIJAY KUMAR KUSHWAH', 'vijaykumarkushwahvi@gmail.com', 'eyJpdiI6Ilp5dlJnTm9YemVFcHRBVXJFdm9taVE9PSIsInZhbHVlIjoid0lNOWdDNThxRzRtY1BjUTNmRUR3bDJMcWF4K01ZaHlSd3lkNVg2R1NjYz0iLCJtYWMiOiIyY2ZjMWVhMDYyMTNjOWY5ODk3ZjA3Njg1NmRhMjY3NzRhOTAxZDM4NmZkMmNlYzI0ODE4MmUzOTE5MjgzZDYwIiwidGFnIjoiIn0=', '2022-12-14 05:05:35', '2022-12-14 05:05:35', '102222007938823553489'),
(15, 'vijay kushwah', 'vijaykumarkushwah77@gmail.com', '$2y$10$.HHQUyQU3/MA3lAKvZ1uJudnHRwE8ZYiJ3c/grYwODG/N2dHwu6W2', '2022-12-14 05:32:38', '2022-12-14 05:38:50', '102254757854830180982'),
(16, 'raj', 'rajkumar@gmail.com', '$2y$10$QnmuJG9qr/LVpk7uOzII/u98.Nyc0gkLUIOux.gWGfcog0RUJxRPe', '2022-12-14 06:10:08', '2022-12-14 06:10:08', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `registers`
--
ALTER TABLE `registers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registers`
--
ALTER TABLE `registers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

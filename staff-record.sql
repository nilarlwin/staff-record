-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2021 at 03:01 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `staff-record`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Company One', 'companyone@gmail.com', 'Yangon', '2021-11-15 06:55:17', '2021-11-15 10:59:08'),
(2, 'Company Two', 'companytwo@gmail.com', 'Yangon', '2021-11-15 07:13:57', '2021-11-15 10:59:58'),
(4, 'Company Three', 'companythree@gmail.com', 'Yangon', '2021-11-16 03:04:11', '2021-11-16 03:04:11'),
(5, 'Company Four', 'companyfour@gmail.com', 'Yangon', '2021-11-16 03:18:25', '2021-11-16 03:18:25'),
(6, 'Company Five', 'companyfive@gmail.com', 'Yangon', '2021-11-16 03:23:54', '2021-11-16 03:23:54'),
(7, 'Company Six', 'companysix@gmail.com', 'Yangon', '2021-11-18 07:05:47', '2021-11-18 07:05:47'),
(8, 'Company Seven', 'companyseven@gmail.com', 'Mandalay', '2021-11-18 07:11:44', '2021-11-18 07:11:44'),
(9, 'Company Eight', 'companyeight@gmail.com', 'LANMATAW', '2021-11-18 09:37:02', '2021-11-18 09:37:02'),
(10, 'Company Nine', 'companynine@gmail.com', 'Tamwe Township', '2021-11-18 09:39:41', '2021-11-18 09:39:41'),
(11, 'Company Ten', 'companyten@gmail.com', 'Bahan Township', '2021-11-18 09:42:37', '2021-11-18 09:42:37'),
(12, 'Company Eleven', 'companyeleven@gmail.com', 'Myanmar Plaza', '2021-11-18 09:47:29', '2021-11-18 09:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `staffID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `staffID`, `phone`, `company`, `department`, `password`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Staff One', 'staff1@gmail.com', 'ID-1', '09777777777', 'Company One', 'IT', '$2y$10$o.U3B465sbV1uLyQ1IcIXu7G3uet7tMdwNTI5pJTiGvMYmLCUFA6a', 'yangon', '2021-11-16 03:48:11', '2021-11-16 07:33:21'),
(2, 'Staff Two', 'staff2@gmail.com', 'ID-2', '09777777777', 'Company Two', 'IT', '$2y$10$wtt7ZtP3GOTaWlpCI.kZUesU5WGWe65WBace7RZNbbkKNjqoluVK2', 'Yangon', '2021-11-16 04:27:51', '2021-11-16 07:33:11'),
(3, 'Staff Three', 'staff3@gmail.com', 'ID-3', '09777777777', 'Company Three', 'IT', '$2y$10$MjMXqoxCZ/VTd2dyK64kqekCMkvgBD1yX88EKTtyk1zWLnB1KSHy6', 'Yangon', '2021-11-16 04:46:30', '2021-11-16 07:32:58'),
(5, 'Staff Four', 'staff4@gmail.com', 'ID-4', '09777777777', 'Company Four', 'IT', '$2y$10$N3bFicYA3WFK.VY2Waas/.MHuv43MYwaF6A7mLrqccFULjZbYyrjy', 'yangon', '2021-11-17 05:27:51', '2021-11-17 05:27:51'),
(6, 'Staff Five', 'staff5@gmail.com', 'ID-5', '09777777777', 'Company Five', 'IT', '$2y$10$tBaPxNzUsePQyhUuPo4M0eUUFAMBVQyqquFag.cElsToSB76ulf7K', 'Mandalay', '2021-11-17 07:57:45', '2021-11-17 07:57:45'),
(7, 'Staff Six', 'staff6@gmail.com', 'ID-6', '09777777777', 'Company Six', 'IT', '$2y$10$2Zqdsr4xCFC8giwvdA9jBO8uQBNXxVCH.ZZ3uHUWXCctbvlIEHb.y', 'Sagaing', '2021-11-18 07:07:05', '2021-11-18 07:07:05'),
(8, 'Staff Seven', 'staff7@gmail.com', 'ID-7', '09777777777', 'Company Seven', 'HR', '$2y$10$7abteLPdNKSOnwYLpkt4ZuaiigaK59JSFJmQxOEsuhubq7ghVn.uW', 'Pyin Oo Lwin', '2021-11-18 07:14:02', '2021-11-18 07:14:02'),
(9, 'Staff Eight', 'staff8@gmail.com', 'ID-8', '09777777777', 'Company Eight', 'Finance', '$2y$10$XMcN4c13iLRfRDE3WUnA0O2XGoG0PJXRTHV0SnvMHoBUc1yIE.abi', 'Loikaw', '2021-11-18 09:49:26', '2021-11-18 09:49:26'),
(10, 'Staff Nine', 'staff9@gmail.com', 'ID-9', '09777777777', 'Company One', 'HR', '$2y$10$Zo5I8Ou34AAR14lm11ELreFc362s.M3j3FK8bH1YDgG/Huuzq0fPC', 'Mandalay', '2021-11-18 09:50:30', '2021-11-18 09:50:30'),
(11, 'Staff Ten', 'staff10@gmail.com', 'ID-10', '09777777777', 'Company Two', 'HR', '$2y$10$1Pg4ug4yH24tlivGEGo6QeBZNtUTwqpo68OuImhfq6keUvl/eGxxC', 'Monya', '2021-11-18 09:55:27', '2021-11-18 09:55:27'),
(12, 'Staff Eleven', 'staff11@gmail.com', 'ID-11', '09777777777', 'Company Two', 'IT', '$2y$10$ikdztck0L69vt64VnUtKxuLmG8KuFRnPq6xc2EEVdivEq5wpqrkEC', 'Monya', '2021-11-18 09:56:17', '2021-11-18 09:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_14_215920_create_companies_table', 2),
(6, '2021_11_15_034344_create_employees_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$8HR5J7MAGlA5GqDQ4j5nXukZH52j/VjnqY7kGx.sPCF0t3KML8nj.', '288465843testimonials-2.jpg', NULL, '2021-11-13 12:10:31', '2021-11-18 07:10:47'),
(2, 'admin1', 'admin1@gmail.com', NULL, '$2y$10$z5jsdJn3T8qVPITBsu6/lerusfbKDMv.YqcTulhxxVb67SOyO9Wbi', '1084993785testimonials-3.jpg', NULL, '2021-11-16 11:46:24', '2021-11-18 02:33:27'),
(3, 'admin2', 'admin2@gmail.com', NULL, '$2y$10$vm.m24DTrLKAEesfeYHW3.DihfCGIAY0CDo3cDsZQcyStj4UU47ke', '230670074testimonials-4.jpg', NULL, '2021-11-17 04:23:10', '2021-11-18 02:35:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

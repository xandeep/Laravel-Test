-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2017 at 03:31 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `active` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `published_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `blogs`
--

TRUNCATE TABLE `blogs`;
--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `active`, `title`, `body`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '1', 'Blog Title', 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body', '1', '2017-06-21 19:33:36', '2017-06-21 19:51:46', '2017-06-21 09:51:25'),
(2, 1, '1', 'Blog Title', 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body', '1', '2017-06-21 19:33:36', '2017-06-21 19:51:49', '2017-06-21 09:51:23'),
(3, 1, '1', 'Blog Title', 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body', '1', '2017-06-21 19:33:36', '2017-06-21 19:51:50', '2017-06-21 09:51:21'),
(4, 1, '1', 'Blog Title', 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body', '1', '2017-06-21 19:33:36', '2017-06-21 19:51:52', '2017-06-21 09:51:19'),
(5, 1, '1', 'Blog Title', 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body', '1', '2017-06-21 19:33:36', '2017-06-21 19:51:53', '2017-06-21 09:51:18'),
(6, 1, '1', 'Blog Title123', 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body    111', '1', '2017-06-21 19:35:11', '2017-06-22 00:52:29', '2017-06-21 09:51:16'),
(7, 1, '1', 'Blog Title', 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body', '1', '2017-06-21 19:35:11', '2017-06-21 19:51:56', '2017-06-21 09:51:14'),
(8, 1, '1', 'Blog Title', 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body', '1', '2017-06-21 19:35:11', '2017-06-21 19:51:58', '2017-06-21 09:51:12'),
(9, 1, '1', 'Blog Title', 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body', '1', '2017-06-21 19:35:11', '2017-06-21 19:52:01', '2017-06-21 09:51:09'),
(10, 1, '0', 'Blog Title', 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body', '1', '2017-06-21 19:35:11', '2017-06-23 02:29:19', '2017-06-23 02:29:19'),
(11, 1, '0', 'test', 'asfsdfsfs', '1', '2017-06-21 09:37:38', '2017-06-21 09:37:42', '1'),
(12, 1, '0', 'asdf', 'asdf', '1', '2017-06-21 09:43:45', '2017-06-21 09:43:48', '2017-06-21 09:43:48'),
(13, 1, '0', 'adsf', 'adsf', '1', '2017-06-21 09:44:00', '2017-06-21 09:44:48', '2017-06-21 09:44:48'),
(14, 1, '0', 'asdf', 'asdf', '1', '2017-06-21 09:46:37', '2017-06-21 09:46:39', '2017-06-21 09:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `migrations`
--

TRUNCATE TABLE `migrations`;
--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_06_16_044656_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `password_resets`
--

TRUNCATE TABLE `password_resets`;
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'sandeep', 'ersandeepthapa@gmail.com', '$2y$10$EPkv9vOYpZ1w46MdE9i82evdL69Foo7NwKOOY1rMDqqsCFxOh4DYy', 'ebWjkHtLliF545BPlFgY4YPr6HpQ9DwnDzQNFFlCzGhnlCPbLwzxg1k4ItF2', '2017-06-21 19:31:58', '2017-06-23 12:29:03', '1'),
(2, 'bhWSisv7yg', 'Sjki2DzcFY@gmail.com', '$2y$10$yzTrdt46ZRpwl8WxhhkDCuBLecosWzFYvEZxzgVcmadxO99kFraIm', NULL, '2017-06-21 19:31:58', '2017-06-21 19:31:58', '1'),
(3, 'qPOiGRoO4Y', 'fs5jGasICf@gmail.com', '$2y$10$4BOmjUP4BC.zTAyoxBAtgOA5GP7w.6GVuVefJVm9xiKXEu5csvGnK', NULL, '2017-06-21 19:31:58', '2017-06-21 19:31:58', '1'),
(4, 'rmz4MK6Jcv', 'rQzOCnV4YK@gmail.com', '$2y$10$IruDGLPaDB5dTIyEMj.ugeUa8sZ624OodHZns3ATgzolC9vx/VeR6', NULL, '2017-06-21 19:31:58', '2017-06-21 19:31:58', '1'),
(5, 'test user', 'email@email.com', '$2y$10$G.VOeEzSqoteTcGrSSKRf.X86w50IDt4LaxQc9V4bN4PSy9k4N4aO', 'qyzkX3j8W0asl6ylaS7qgKuYQPcY7K55hI43mfNSz0djmPrc8uPPhTPZtDuz', '2017-06-22 01:00:18', '2017-06-22 11:01:26', '1'),
(6, 'test user', 'ersandeepthapa@gmail.com1', '$2y$10$Ggwmtz91aT0/8Hrap2tC7emkAqHtOpV.Dt9LGlWzo1pwVRA5wTFWO', NULL, '2017-06-22 01:01:38', '2017-06-22 01:01:38', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2024 at 06:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_laravel_db`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'main', 'e9384247d1c3c65f8cbb2f9ff3d6dc4c4835e43f6059b4842800e66717c9fda2', '[\"*\"]', NULL, NULL, '2024-05-17 00:52:41', '2024-05-17 00:52:41'),
(4, 'App\\Models\\User', 1, 'main', 'a260a0fbb6fe0e6a3ad1792076b74147a912bf8f3523c607ebd4a59df103255b', '[\"*\"]', '2024-05-18 05:02:46', NULL, '2024-05-17 06:01:56', '2024-05-18 05:02:46');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'a', 'a@gmail.com', NULL, '$2y$12$76Zx95q5U6I/1kK9iHdg1.CuYwLJHLyfWgTwN5aK4yuR85OMbGTMS', NULL, '2024-05-17 00:52:40', '2024-05-17 00:52:40'),
(2, 'Jermey Hintz III', 'kavon32@example.com', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'Xy5JLbVBQM', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(3, 'Mr. Kamron O\'Conner', 'rosamond.ondricka@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'wEKR13xlJ8', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(4, 'Dr. Elliott Flatley', 'adrien19@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '6BKc2wAeKU', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(5, 'Alyce Johnston II', 'xbreitenberg@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'NEMrZ496Hp', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(6, 'Dr. Leopoldo Pfannerstill V', 'johnson.stanton@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'ccVJenubKn', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(7, 'Mohamed Abernathy', 'eloise70@example.com', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '8IP94wPWU4', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(8, 'Carolina Howe', 'ygreenholt@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'xab2Dm609N', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(9, 'Gay Crist', 'ggreenfelder@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '17zxc69plq', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(10, 'Jayda Daugherty', 'braulio.mclaughlin@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'ac0beRypbp', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(11, 'Wanda Dibbert', 'crystel.prohaska@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'l7uxTWjLwP', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(12, 'Devin Borer PhD', 'eladio.jaskolski@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'iz41t12Cm0', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(13, 'Layne Spencer', 'walker.deangelo@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '2llX2B3uuh', '2024-05-17 06:07:15', '2024-05-17 06:07:15'),
(14, 'Dr. Sonya Stoltenberg', 'eugene28@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'kLVBFYmkzx', '2024-05-17 06:07:16', '2024-05-17 06:07:16'),
(15, 'Will Littel', 'elenor.sauer@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'H35ElaqTi7', '2024-05-17 06:07:16', '2024-05-17 06:07:16'),
(16, 'Justina Lockman', 'hirthe.erick@example.com', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'VkKkyHlUPD', '2024-05-17 06:07:16', '2024-05-17 06:07:16'),
(17, 'Osborne Reichel', 'omarks@example.com', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'S1SQT7x3mw', '2024-05-17 06:07:16', '2024-05-17 06:07:16'),
(18, 'Mrs. Otilia Bauch DVM', 'dkuhic@example.com', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'mxDO5NCsjK', '2024-05-17 06:07:16', '2024-05-17 06:07:16'),
(19, 'Prof. Jackeline Willms DDS', 'hailie.okon@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'bE1Wnb0cKf', '2024-05-17 06:07:16', '2024-05-17 06:07:16'),
(20, 'Raoul Kshlerin MD', 'laurianne.spinka@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'fKVBJ8YZxT', '2024-05-17 06:07:16', '2024-05-17 06:07:16'),
(21, 'Kaitlyn Christiansen', 'stark.pat@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '82GxPyZBRh', '2024-05-17 06:07:16', '2024-05-17 06:07:16'),
(22, 'Korbin Streich', 'salvatore23@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'LEqOlQuzNw', '2024-05-17 06:07:16', '2024-05-17 06:07:16'),
(23, 'Lenore Bashirian', 'wbreitenberg@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'pH8hOiLb4w', '2024-05-17 06:07:16', '2024-05-17 06:07:16'),
(24, 'Jaylen Sporer', 'simonis.kirk@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'zUu9ybFnFe', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(25, 'Collin Runolfsdottir', 'frami.adelle@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'AWbu9xoXuF', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(26, 'Misty Lakin MD', 'hwisozk@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '7jRziqDPyr', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(27, 'Roger Altenwerth', 'carolanne.marvin@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'gsYMMpnf0S', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(28, 'Mrs. Albertha Mills I', 'okon.lily@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'vA8yvlMjvk', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(29, 'Marcellus Sipes', 'ebba43@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'FVvQsls9VP', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(30, 'Mr. Jacinto McDermott IV', 'xmonahan@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'g7bldSpix6', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(31, 'Mrs. Arvilla Armstrong', 'schiller.zella@example.com', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'wTQ3dQtlg4', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(32, 'Joannie Bins', 'sydnee.bashirian@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'fPRpuLVVoL', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(33, 'Prof. Brycen Leannon', 'dcorwin@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'TZmxdK4ojW', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(34, 'Jackeline Wiza', 'dawson45@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '2DPU8hfp7j', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(35, 'Stephanie Krajcik', 'lkessler@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'jWERU3gUI3', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(36, 'Estel Langworth Sr.', 'tyreek.batz@example.com', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'GNg22onB6P', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(37, 'Eryn Lehner', 'roger.waelchi@example.com', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'v9qJSgwb0p', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(38, 'Natalie Douglas', 'wbecker@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '8ml2yVTwPj', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(39, 'Araceli Gibson', 'gerhold.marisol@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'kPgInPULeB', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(40, 'Gene Huels', 'marley.gibson@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'aakxzIYIeW', '2024-05-17 06:07:17', '2024-05-17 06:07:17'),
(41, 'Mr. Gabriel Zemlak', 'hintz.jace@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'Ch7lzHCqV9', '2024-05-17 06:07:18', '2024-05-17 06:07:18'),
(42, 'Prof. Cleo Littel', 'nelda.stokes@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '6YSBY1vx25', '2024-05-17 06:07:18', '2024-05-17 06:07:18'),
(43, 'Zechariah Pagac', 'nkovacek@example.com', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'I0PPJM8ME3', '2024-05-17 06:07:18', '2024-05-17 06:07:18'),
(44, 'Gladys Hackett', 'fgrady@example.com', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '5APGV0D2xH', '2024-05-17 06:07:18', '2024-05-17 06:07:18'),
(45, 'Doyle Robel', 'sanford.mack@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '9Xk7zuYaKC', '2024-05-17 06:07:18', '2024-05-17 06:07:18'),
(46, 'Paula Mueller', 'xveum@example.org', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', '9jfgnRoaj2', '2024-05-17 06:07:18', '2024-05-17 06:07:18'),
(47, 'Rosina Terry', 'crooks.bruce@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'hnxmle70Ot', '2024-05-17 06:07:18', '2024-05-17 06:07:18'),
(48, 'Gabriel Torp', 'prohaska.titus@example.net', '2024-05-17 06:07:14', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'zhQkZMTtPQ', '2024-05-17 06:07:18', '2024-05-17 06:07:18'),
(51, 'Fabiola Schuster', 'fbeer@example.org', '2024-05-17 06:07:15', '$2y$12$HefQfnN.JZ/fBkG9hVsNnOcSsxdD1l6DcuiozTusLDw3kzjyoZKD2', 'q7vL3uPTRE', '2024-05-17 06:07:18', '2024-05-18 02:50:26'),
(52, 'amila sampath1', 'am@gmail.com', NULL, '$2y$12$hlw0ZtSCBcO/ls5V.AjnUOPOxt91oY2PyTJ60R3E61rCSsQgaRQ9a', NULL, '2024-05-17 18:19:31', '2024-05-18 02:41:15');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 08:25 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iteh_d2`
--

-- --------------------------------------------------------

--
-- Table structure for table `barbies`
--

CREATE TABLE `barbies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hair_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `length` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint(20) NOT NULL,
  `price` double(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `eye_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barbies`
--

INSERT INTO `barbies` (`id`, `name`, `hair_color`, `length`, `country_id`, `price`, `created_at`, `updated_at`, `eye_color`) VALUES
(1, 'Minnie Feeney Jr.', 'Brown', '30cm', 9, 735.26, '2021-12-18 16:42:52', '2021-12-18 16:42:52', 'Brown'),
(2, 'Francisca Cassin', 'Blue', '33cm', 6, 503.36, '2021-12-18 16:42:52', '2021-12-18 16:42:52', 'Blue'),
(3, 'Hildegard Funk', 'Brown', '32cm', 5, 530.89, '2021-12-18 16:42:52', '2021-12-18 16:42:52', 'Brown'),
(4, 'Rosario Grimes', 'Green', '30cm', 4, 153.92, '2021-12-18 16:42:52', '2021-12-18 16:42:52', 'Brown'),
(5, 'Tyler Dietrich', 'Brown', '25cm', 2, 453.88, '2021-12-18 16:42:52', '2021-12-18 16:42:52', 'Green'),
(6, 'Ara Lemke DVM', 'Green', '30cm', 11, 924.05, '2021-12-18 16:42:52', '2021-12-18 16:42:52', 'Blue'),
(7, 'Dorian Armstrong V', 'Black', '28cm', 2, 904.86, '2021-12-18 16:42:52', '2021-12-18 16:42:52', 'Blue'),
(8, 'Mr. Sedrick Tremblay II', 'Blue', '29cm', 3, 234.48, '2021-12-18 16:42:52', '2021-12-18 16:42:52', 'Brown'),
(9, 'Sheldon Bahringer', 'Black', '40cm', 14, 864.73, '2021-12-18 16:42:52', '2021-12-18 16:42:52', 'Brown'),
(10, 'Dino Reichel Sr.', 'Blue', '22cm', 12, 724.85, '2021-12-18 16:42:52', '2021-12-18 16:42:52', 'Green'),
(11, 'Testt', 'Blue', '34cm', 1, 130.22, '2021-12-18 17:22:18', '2021-12-18 17:23:27', 'Brown');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Serbia', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(2, 'Brazil', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(3, 'Argentina', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(4, 'USA', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(5, 'Germany', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(6, 'Japan', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(7, 'China', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(8, 'Croatia', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(9, 'Netherlands', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(10, 'Sweeden', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(11, 'Canada', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(12, 'Mexico', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(13, 'France', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(14, 'Spain', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(15, 'India', '2021-12-18 16:42:52', '2021-12-18 16:42:52');

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
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `barbie_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `barbie_id`, `created_at`, `updated_at`) VALUES
(1, 31, 2, '2021-12-18 17:24:39', '2021-12-18 17:24:39'),
(3, 31, 3, '2021-12-18 17:24:48', '2021-12-18 17:24:48');

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
(5, '2021_12_18_181809_create_barbies_table', 1),
(6, '2021_12_18_181820_create_countries_table', 1),
(7, '2021_12_18_181836_create_favorites_table', 1),
(8, '2021_12_18_182509_update_barbie_table', 1),
(9, '2021_12_18_182921_update_favorites_table', 1);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 31, 'token', '04b88be2baa7f81442be9dfec83804d1e415fa80288a55c98ab23f4c7267ba77', '[\"*\"]', NULL, '2021-12-18 17:18:36', '2021-12-18 17:18:36'),
(3, 'App\\Models\\User', 31, 'token', 'a1fb166300f66fb199819287f99eab3bc6ab4627a9b5027b7b0be7a21776e112', '[\"*\"]', '2021-12-18 17:24:48', '2021-12-18 17:21:14', '2021-12-18 17:24:48');

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
(1, 'Raquel Kertzmann', 'jude.corkery@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g9ODndBagE', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(2, 'Dr. Bert Green I', 'dena26@example.com', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BPg52iezhI', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(3, 'Margarette Cassin', 'nstrosin@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mrQm25wtr5', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(4, 'Webster Wehner', 'melany.hilpert@example.net', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KbFCXhsfTy', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(5, 'Marcia Feeney', 'elmer50@example.net', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SkG3X1rBv4', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(6, 'Prof. Chance Trantow', 'christiana31@example.net', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YzRNvOYOSq', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(7, 'Elody Rodriguez DDS', 'evans33@example.com', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'C3xLj4WiOw', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(8, 'Sandy Zieme', 'orpha77@example.com', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jE1CdPit9N', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(9, 'Daniela Carroll', 'koelpin.sonny@example.net', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5koF2nz1Pl', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(10, 'Kari Grady', 'jake19@example.net', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JLVPw81zqJ', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(11, 'Zula Jacobson', 'xbeier@example.net', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c7UFd9tF7J', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(12, 'Carolanne Koelpin', 'catherine.bode@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Le23z27at1', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(13, 'Carmela Grady', 'bryana24@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wS7EXNrp97', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(14, 'Mr. Skylar Dietrich PhD', 'unolan@example.net', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oRh3mfXpk6', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(15, 'Prof. Marguerite Wisoky IV', 'arno.gorczany@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ypJCSaB8WM', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(16, 'Chelsey Von DVM', 'tina44@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'udotdnidIg', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(17, 'Demarco Labadie V', 'kquigley@example.com', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YJrJehzzhC', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(18, 'Carli Cremin', 'fharris@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xpQ1Rf4gwN', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(19, 'Bette Swift', 'fcormier@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TI2UKaR8CV', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(20, 'Prof. Chase Durgan V', 'savion.altenwerth@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wwojMz8Hzq', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(21, 'Mattie Bechtelar', 'daphne77@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd1c79SiCod', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(22, 'Gerda Gorczany', 'ethan.bradtke@example.com', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N84pl38cqe', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(23, 'Gilbert Satterfield', 'heaven.kreiger@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AKfY3V7NRw', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(24, 'Toby D\'Amore', 'aliyah.abernathy@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6ta2qJv4X0', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(25, 'Mr. Randi Schimmel DDS', 'bnitzsche@example.net', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZtvXVJk4my', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(26, 'Alexandra Keeling', 'tfarrell@example.com', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y8nJq7ZQJ8', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(27, 'Prof. Ansel Koch DVM', 'erdman.catalina@example.org', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bmaFl4RupA', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(28, 'Dr. Adrain Quigley', 'concepcion83@example.net', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RHqKrf5sCx', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(29, 'Miss Lavada Rice DVM', 'fwisoky@example.com', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vLtmLi61Ko', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(30, 'Myron Johnston', 'hudson.oren@example.com', '2021-12-18 16:42:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GudkdceOQJ', '2021-12-18 16:42:52', '2021-12-18 16:42:52'),
(31, 'Danica', 'danica@danica.com', NULL, '$2y$10$dseMRVeopAHFh8jLmW.RfeBRuSC6MdUC0U4tetAoA4GOk6HaRD0em', NULL, '2021-12-18 17:18:11', '2021-12-18 17:18:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barbies`
--
ALTER TABLE `barbies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorites_user_id_barbie_id_unique` (`user_id`,`barbie_id`);

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
-- AUTO_INCREMENT for table `barbies`
--
ALTER TABLE `barbies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

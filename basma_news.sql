-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2025 at 12:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basma_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `aggregates`
--

CREATE TABLE `aggregates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `navigation_clicks` int(11) NOT NULL,
  `hero_section_clicks` int(11) NOT NULL,
  `news_categories_clicks` int(11) NOT NULL,
  `most_read_clicks` int(11) NOT NULL,
  `footer_clicks` int(11) NOT NULL,
  `unique_navigation_clicks` int(11) NOT NULL,
  `unique_hero_section_clicks` int(11) NOT NULL,
  `unique_news_categories_clicks` int(11) NOT NULL,
  `unique_most_read_clicks` int(11) NOT NULL,
  `unique_footer_clicks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aggregates`
--

INSERT INTO `aggregates` (`id`, `navigation_clicks`, `hero_section_clicks`, `news_categories_clicks`, `most_read_clicks`, `footer_clicks`, `unique_navigation_clicks`, `unique_hero_section_clicks`, `unique_news_categories_clicks`, `unique_most_read_clicks`, `unique_footer_clicks`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, 0, 11, 0, 0, 0, 0, 2, '2025-01-27 16:06:22', '2025-01-27 14:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `body`, `image`, `clicks`, `created_at`, `updated_at`) VALUES
(1, 'رياضة', 'حقق فريق ليفربول فوزًا صعبًا على حساب برينتفورد بنتيجة 2-0 في المباراة التي أقيمت بينهما مساء اليوم، السبت على ملعب \"جريفين بارك\"، ضمن منافسات الجولة الثانية والعشرين من عمر مسابقة الدوري الإنجليزي للموسم الحالي 2024-25.', 'https://metro.co.uk/wp-content/uploads/2024/10/SEI_226918047-6aff.jpg?quality=90&strip=all&resize=600,450&zoom=1', 62, '2025-01-18 22:49:49', '2025-01-27 20:36:27'),
(2, 'اقتصاد', 'قالت مصادر مصرفية لـ\"لبنان24\" إنَّ إعلان حاكم مصرف لبنان بالإنابة وسيم منصوري عن ازدياد موجودات البنك المركزي من العملات الأجنبيّة يُعتبر تتويجاً لمسار خاضه مصرف لبنان لرفع الاحتياطيات من خلال ضبط السوق أولاً ووقف هدر الأموال على الدعم مثلما كان يجري سابق', 'https://st4.depositphotos.com/10325396/20155/i/450/depositphotos_201554746-stock-photo-double-exposure-image-stock-market.jpg', 14, '2025-01-18 22:54:09', '2025-01-27 11:31:41'),
(3, 'اخبار', 'توقعت مصادر رسمية رفيعة لصحيفة \"الأنباء\" الكويتية، \"تشكيل الحكومة في لبنان خلال ايام، وهذا أمر لم يحدث منذ 2008، حيث كانت رحلة التشكيل تستغرق أشهرا\".\r\n\r\nوأكدت مصادر مطلعة أن الحكومة لن تتأخر حتى تبصر النور. وتحدثت عن \"ضرورة الاستفادة من الأجواء الإيجابية ', 'https://previews.123rf.com/images/boordon/boordon2003/boordon200300098/142073663-military-man-in-white-camouflage-uniform-with-machinegun-soldier-in-the-winter-forest-territory.jpg', 28, '2025-01-18 22:57:47', '2025-01-27 11:31:53'),
(4, 'ثقافة', 'أيام قليلة تفصلنا عن انطلاق الدورة 56 لمعرض القاهرة الدولي للكتاب، الذي ينطلق في 23 يناير، في مركز مصر للمعارض والمؤتمرات الدولية.\r\n\r\n وبهذه المناسبة أعلن رئيس الهيئة المصرية العامة للكتاب د. أحمد بهي الدين، عن مشاركة 1345 دار نشر، واختيار سلطنة عمان ضيف ', 'https://ohanahc.org/wp-content/uploads/2023/10/4-Benefits-of-Embracing-and-Celebrating-Unique-Cultures-and-Customs.jpg', 63, '2025-01-18 22:58:38', '2025-01-27 20:19:52'),
(5, 'فيديو و صور', 'يعد معرض الصور الصحفية العالمية في مونتريال حدثًا رئيسيًا في التقويم الثقافي الخريفي لمدينة مونتريال، ويُقام سنويًا في سوق بونسيكور. ويحضر هذا المعرض الدولي الضخم، الذي تنظمه مؤسسة الصور الصحفية العالمية، ومقرها هولندا، منذ عام 1955، أكثر من 65 ألف شخص.', 'https://img.freepik.com/premium-photo/heart-hands-sunset-highquality-photo-infinite-love_976564-32758.jpg', 12, '2025-01-18 23:00:45', '2025-01-26 21:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `click_logs`
--

CREATE TABLE `click_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_18_103524_categories', 1),
(6, '2025_01_18_110637_aggregates', 1),
(7, '2025_01_18_140508_click_logs', 1),
(8, '2025_01_27_161251_create_footer_click_logs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aggregates`
--
ALTER TABLE `aggregates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `click_logs`
--
ALTER TABLE `click_logs`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `aggregates`
--
ALTER TABLE `aggregates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `click_logs`
--
ALTER TABLE `click_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 07, 2020 at 04:02 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apiProduct`
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_10_02_134710_create_products_table', 1),
(10, '2020_10_02_134756_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('5d04383b4600a124ce170aea37e8f8e6ef18b8bc93ee29ab826b14302bf203272e4304f28ee3ceda', 5, 2, NULL, '[]', 0, '2020-10-05 21:01:45', '2020-10-05 21:01:45', '2021-10-06 03:31:45'),
('65be7fedca54f4e8c778d23ce831518735a9a6eda46ec55691cb5f50d0e2daa454869341fb7cf3d8', 4, 2, NULL, '[]', 0, '2020-10-05 20:57:59', '2020-10-05 20:57:59', '2021-10-06 03:27:59'),
('8e972b3fe835eaa5f437637d945bfba7652623c117ed14d12d2cc6ec448e39e577b09757ce0dee86', 5, 2, NULL, '[]', 0, '2020-10-04 22:01:27', '2020-10-04 22:01:27', '2021-10-05 04:31:27'),
('94c25650a4677abee63a5251936aedfd14e789a8563a81cfc5501108f77bda9c452dffaa92b0a91b', 5, 2, NULL, '[]', 0, '2020-10-04 22:14:21', '2020-10-04 22:14:21', '2021-10-05 04:44:21'),
('a456788cdb760d8efbd85ba56e3305c00f37fc8e4929e2005936f31df2af508806723dfd6dd1b6f8', 4, 2, NULL, '[]', 0, '2020-10-04 22:11:47', '2020-10-04 22:11:47', '2021-10-05 04:41:47'),
('e4631c2247f7adabb70ff40b9d385cd4bbea6a02c8ec460814c36c8b3a826494b01253a385c5346a', 5, 2, NULL, '[]', 0, '2020-10-05 20:56:17', '2020-10-05 20:56:17', '2021-10-06 03:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'WzrYkFz6nt16DrnmGYhhjzBKB5BWUqfbRpMw7I88', NULL, 'http://localhost', 1, 0, 0, '2020-10-04 21:43:22', '2020-10-04 21:43:22'),
(2, NULL, 'Laravel Password Grant Client', 'hwKQfPQykb5fzxRAkzCwwFnnwRJGbCa6QG4Y3XW6', 'users', 'http://localhost', 0, 1, 0, '2020-10-04 21:43:22', '2020-10-04 21:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-04 21:43:22', '2020-10-04 21:43:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('3e766acd18a1ab7db578650c3549f9856cf7656e780fc87f442f7486ff75c52e7e37f747c2983328', '8e972b3fe835eaa5f437637d945bfba7652623c117ed14d12d2cc6ec448e39e577b09757ce0dee86', 0, '2021-10-05 04:31:27'),
('a55070b92e985ca8b9a6a3c7d48a4a622a629fb7e26bd43426bf131631d74cce30f828d996ad0db8', 'e4631c2247f7adabb70ff40b9d385cd4bbea6a02c8ec460814c36c8b3a826494b01253a385c5346a', 0, '2021-10-06 03:26:17'),
('d102bbe194f21e590be34382ab40656dd1b24b1ce6adcbf1002271574b8f0fed8c35c268152e679e', '65be7fedca54f4e8c778d23ce831518735a9a6eda46ec55691cb5f50d0e2daa454869341fb7cf3d8', 0, '2021-10-06 03:27:59'),
('d862006120a5744a0ad186d967c35edde67583aadaa3b02bc9d840e03bbe339590829dedb191c56d', 'a456788cdb760d8efbd85ba56e3305c00f37fc8e4929e2005936f31df2af508806723dfd6dd1b6f8', 0, '2021-10-05 04:41:48'),
('d86984a7022754351f5f02cab0ce131847afb42b5687cd4843169f50d34e730214dc1b5a48e7332d', '5d04383b4600a124ce170aea37e8f8e6ef18b8bc93ee29ab826b14302bf203272e4304f28ee3ceda', 0, '2021-10-06 03:31:46'),
('dcd7c5abade5de82a8558dc4552fb66142ba3b2619d040f8fddd19bde9e479bd60dae9613c596e51', '94c25650a4677abee63a5251936aedfd14e789a8563a81cfc5501108f77bda9c452dffaa92b0a91b', 0, '2021-10-05 04:44:21');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'velit', 'Voluptate et provident enim et eos omnis. Qui voluptatum veniam hic sunt eius error a. Omnis sapiente et pariatur iste velit suscipit voluptas.', 23500, 9, 15, 3, '2020-10-04 21:41:37', '2020-10-04 21:41:37'),
(2, 'sit', 'Dignissimos suscipit minima sit sed id. Quisquam consequuntur repudiandae voluptas quia ut. Ad iste possimus sed occaecati ut. Libero non itaque at incidunt.', 17434, 3, 21, 4, '2020-10-04 21:41:37', '2020-10-04 21:41:37'),
(3, 'i phone update', 'update', 33661, 0, 23, 5, '2020-10-04 21:41:37', '2020-10-06 07:47:21'),
(4, 'in', 'Velit provident perspiciatis saepe. Id laborum sit sit neque sed earum. Sequi ut perspiciatis dicta harum. Voluptatem voluptas doloremque qui a officiis hic.', 64836, 5, 28, 1, '2020-10-04 21:41:37', '2020-10-04 21:41:37'),
(5, 'quisquam', 'Et expedita maxime qui rerum at. Sit explicabo et voluptatem aperiam delectus. Voluptas sit vel laboriosam ab totam numquam qui. Pariatur officiis est facere totam quibusdam at atque.', 36599, 0, 24, 2, '2020-10-04 21:41:37', '2020-10-04 21:41:37'),
(6, 'quo', 'At reiciendis aut numquam quis. Consectetur ea quaerat est iste. Quas provident quis consequatur dolorum voluptatem explicabo dolor. Doloribus enim nostrum corrupti ipsa nihil occaecati.', 43351, 8, 11, 2, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(7, 'ut', 'Blanditiis incidunt deserunt ipsam ut exercitationem. Ratione magnam quis iusto quas ut ratione ut autem. Et minus impedit nostrum et.', 45659, 4, 29, 4, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(8, 'incidunt', 'Possimus corporis ex fuga magni ea. Esse amet corporis et eveniet enim quaerat nobis. Eos adipisci aut saepe qui est atque et error. Sed magnam provident sunt cupiditate nihil.', 82914, 1, 12, 4, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(9, 'non', 'Vel aut suscipit unde dolor voluptas nesciunt voluptates. Qui aspernatur placeat quibusdam doloremque. Sequi ipsam vitae velit deserunt impedit.', 76113, 5, 10, 3, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(10, 'repellat', 'Nisi quia dicta deleniti quia. Officia ipsa voluptas et vero. Et aut deserunt nam sint ut animi assumenda. Eum voluptate qui beatae aliquid voluptatibus aut reiciendis.', 25120, 7, 11, 4, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(11, 'libero', 'Incidunt ab quia dolore quia. Exercitationem autem iure dolores sunt tempora quia. Sunt qui tenetur sequi totam placeat numquam quidem commodi.', 15383, 5, 20, 5, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(12, 'officiis', 'Eveniet vitae dolorem accusamus. Libero doloremque ut minus voluptate. Occaecati eum maxime qui voluptatem sed.', 41968, 8, 30, 4, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(13, 'occaecati', 'Voluptas tempore vel id ut. Quisquam laboriosam eum nobis rerum tempora recusandae. Cupiditate quisquam commodi fugiat facere facere et est.', 68949, 6, 6, 4, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(14, 'dolore', 'Magnam rerum dolor et id aut quasi consequatur. Totam odit nesciunt nostrum. Ea dolore temporibus unde qui. Dolorum et et odit reiciendis excepturi est.', 80977, 1, 27, 1, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(17, 'autem', 'Hic qui voluptatem hic aut eum accusantium nisi. Exercitationem et et laborum a quis quo tempore. Sunt reprehenderit voluptatum quam vel.', 87867, 8, 7, 5, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(18, 'molestias', 'Perferendis id quo maiores nesciunt sunt enim reiciendis. Velit et ullam enim voluptates.', 52247, 6, 30, 3, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(19, 'non', 'Exercitationem laborum non a quam. Voluptas deserunt est esse quia nesciunt numquam. Sit et velit saepe dolor. Assumenda nam et et sint quod et non minus.', 17271, 5, 10, 3, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(20, 'qui', 'Placeat occaecati et quo id qui corrupti. Suscipit quisquam vitae eos explicabo. Exercitationem dicta consequuntur qui ducimus labore neque. Veniam eum vel aut eos eos alias pariatur.', 74225, 8, 10, 3, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(21, 'itaque', 'Quia sint pariatur quaerat est autem est commodi. Ratione porro sit error nobis totam. Quas ut eos totam architecto facere. Harum sapiente nulla neque voluptas aut.', 16146, 0, 10, 2, '2020-10-04 21:41:38', '2020-10-04 21:41:38'),
(22, 'eius', 'Eaque aperiam perferendis laborum sequi. Ipsa et autem deserunt quibusdam accusantium. Nobis at suscipit voluptatem natus. Reprehenderit accusantium quo eius recusandae quibusdam repellendus.', 72668, 1, 19, 2, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(23, 'voluptatem', 'Neque quas quibusdam rerum et assumenda quia. Vel possimus perspiciatis sequi corrupti itaque. Veniam illo et corrupti voluptate veritatis illo odio. Nam corporis ut nemo voluptas quo ratione asperiores molestias. Nulla laboriosam vitae consequatur labore provident ducimus.', 31392, 2, 22, 2, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(24, 'neque', 'Iure temporibus debitis voluptatem. Ab amet repellat est. Odit dolor ea eos minima temporibus et ut non. Quia ratione id voluptatem enim.', 41320, 5, 9, 2, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(25, 'reiciendis', 'Aut voluptatum a consectetur id ad. Beatae quibusdam a omnis delectus aspernatur. Repellendus dolores sapiente aut eligendi. Doloremque quaerat dolorem exercitationem fuga aut cumque nisi nobis.', 61555, 1, 9, 4, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(26, 'harum', 'Excepturi a voluptas animi possimus tempora. Doloremque natus dolores in. Occaecati id ea rem et sed assumenda voluptatem.', 75971, 5, 22, 3, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(27, 'iste', 'Pariatur est quae velit deserunt sint. Et iusto aliquid qui omnis aliquid rem.', 50134, 6, 22, 3, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(28, 'impedit', 'Consequatur atque minus modi architecto. Facilis voluptate provident excepturi rerum distinctio. Incidunt sit quia possimus sed autem. Aspernatur nostrum accusantium ut quos accusantium quaerat voluptatum.', 54631, 6, 24, 4, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(29, 'consectetur', 'Voluptatem nemo saepe nesciunt et odio. Error velit a consequatur earum voluptatum qui.', 25333, 1, 25, 1, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(30, 'quis', 'Magni fugit id pariatur cumque perferendis quia quas temporibus. Repellendus non velit omnis quis. Culpa et ut magni repellat sed deserunt ratione. Velit aut non sed enim ut animi et ipsa.', 51736, 5, 14, 4, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(31, 'cupiditate', 'Quia dignissimos temporibus consequatur reiciendis voluptas facilis sed. Delectus sunt sit in ad libero dolor voluptates. Voluptatem recusandae quam sapiente non aut fugit a. Ea nemo expedita aperiam qui vel in consequatur libero.', 55979, 3, 21, 1, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(32, 'minima', 'Vero libero explicabo nostrum ut deserunt totam est itaque. Nam facere sed enim vitae. Qui reprehenderit repellat cupiditate expedita occaecati rerum doloremque ut.', 45356, 9, 6, 5, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(33, 'iusto', 'Voluptatibus voluptatem ut qui ut est ut. Porro sit quaerat aut illo. Non fuga qui eos quibusdam veritatis. Voluptate sapiente magni dicta.', 20033, 3, 12, 2, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(34, 'enim', 'Tenetur libero consequuntur rerum unde commodi modi. Sit sit rerum similique voluptatem. Quia voluptatem quidem sed qui cum.', 22068, 5, 21, 3, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(35, 'incidunt', 'Quis et rerum quia at et totam rerum. Laboriosam id distinctio expedita ut nihil. Temporibus maxime repellat ullam ut dignissimos dolor nihil.', 66823, 7, 10, 3, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(36, 'soluta', 'Necessitatibus laborum laboriosam et aliquam maiores. Esse et libero est quia nihil. Mollitia deserunt dolorem ut impedit vitae occaecati maxime a. Qui earum et aliquid delectus ipsum nisi.', 56618, 9, 25, 1, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(37, 'quis', 'Aliquam laudantium facilis omnis architecto necessitatibus. Harum tenetur quasi beatae et corporis. Id eligendi dolores sit. Est modi nemo ea similique similique.', 65076, 6, 25, 3, '2020-10-04 21:41:39', '2020-10-04 21:41:39'),
(38, 'rerum', 'Dolores ut repellendus consequuntur esse corporis sapiente. Quia velit modi a id. Delectus eos culpa at sint. Consectetur velit ut et.', 52502, 6, 9, 5, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(39, 'eos', 'Non error nobis incidunt deserunt expedita. Minus id architecto esse sunt.', 20359, 1, 7, 1, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(40, 'facilis', 'Incidunt quia tenetur aliquid tempore quasi perferendis similique. Nobis in ea temporibus et qui.', 12054, 5, 14, 4, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(41, 'inventore', 'Est aspernatur voluptatem nesciunt mollitia minima est. Praesentium libero corporis nam est quos voluptas et. Accusamus earum dicta veritatis neque et quo sit. Ut ad voluptas eum assumenda voluptas. Deleniti sit incidunt sit consequatur et.', 31162, 5, 30, 3, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(42, 'vel', 'Non et natus libero quisquam commodi earum iure. Nam odio est quas voluptatibus ipsum quo est. Rerum repudiandae debitis qui repudiandae voluptatibus minima corporis ducimus. Inventore fugit dolorem est.', 62369, 9, 23, 3, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(43, 'est', 'Repudiandae maxime non quos quia deleniti dolores numquam quia. Ducimus eum porro excepturi qui repellendus sed. Nemo aut eligendi eos sit velit qui esse.', 75831, 9, 17, 3, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(44, 'numquam', 'Voluptates iusto ut sunt non nisi rerum. Maxime et facere consequatur dolorem consequatur ea. Quod distinctio enim doloribus eligendi adipisci quisquam enim. Error et voluptatibus nostrum aperiam.', 10883, 0, 12, 4, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(45, 'suscipit', 'Et accusantium nulla et nulla sunt molestiae qui. Vel omnis doloremque facere eveniet ex occaecati sit. Voluptatum harum dolor rerum debitis. Et facilis consectetur eveniet in.', 49161, 5, 11, 3, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(46, 'natus', 'Ab ut cumque possimus temporibus quia laboriosam. Rerum odit maiores est quod. Aliquid eos aut reiciendis. Cumque aut quos velit incidunt est ea. At error unde deleniti ipsum.', 73627, 1, 22, 1, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(47, 'ad', 'Quia quam eum et qui voluptas nemo. Iure quaerat similique aut quo reprehenderit ad. Totam et repellat maxime. Aliquam sequi saepe magnam impedit non voluptatem consequatur exercitationem.', 12892, 9, 7, 2, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(48, 'quaerat', 'Alias assumenda ut eligendi adipisci. Et laborum quas quo voluptatem animi minus. Occaecati eum consequatur praesentium quia cum omnis aperiam. Ratione aliquid earum rerum corrupti quas.', 89095, 0, 10, 2, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(49, 'officia', 'Nemo aut autem vel consectetur quam. Error aut aut atque voluptatem. Quasi voluptatibus quia voluptatem id aut.', 84233, 0, 28, 2, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(50, 'omnis', 'Sint exercitationem ut ut eum tenetur minima. Veritatis doloribus quos qui ipsam laudantium. Reiciendis distinctio repellendus omnis eos necessitatibus et.', 33034, 0, 24, 3, '2020-10-04 21:41:40', '2020-10-04 21:41:40'),
(51, 'i phone 5s', 'nice i phone', 800000, 3, 12, 4, '2020-10-04 22:21:03', '2020-10-04 22:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(4, 47, 'Giovanni Blick', 'Praesentium nesciunt in provident modi ut. Aut ut explicabo quis et ducimus qui libero. Excepturi voluptas ut alias et nulla ut adipisci.', 0, '2020-10-04 21:41:41', '2020-10-04 21:41:41'),
(5, 38, 'Sylvester Fisher', 'Qui eveniet nemo accusantium et assumenda dolore. Maiores sapiente quis pariatur laboriosam magnam voluptates. Sed deserunt et suscipit.', 2, '2020-10-04 21:41:41', '2020-10-04 21:41:41'),
(6, 2, 'Prof. Winfield Reichert', 'Consequatur est ut est et et. Aliquid consequatur molestiae vel facere est et.', 3, '2020-10-04 21:41:41', '2020-10-04 21:41:41'),
(7, 12, 'Prof. Josh Lubowitz Sr.', 'Magni facilis cumque quibusdam quis dolores velit voluptas qui. Quo sed qui eos qui eligendi. Blanditiis sed dolorem occaecati ut expedita. Quod est sunt rem. Tempore laboriosam est modi nihil minus repellat.', 4, '2020-10-04 21:41:41', '2020-10-04 21:41:41'),
(8, 5, 'Anderson Dach', 'Dolor dolores voluptatem et. Sint et sit nisi tempora eaque delectus animi. Deleniti corporis aspernatur et. Nihil eius eos rerum nam.', 1, '2020-10-04 21:41:41', '2020-10-04 21:41:41'),
(9, 26, 'Vivienne Zieme', 'Molestiae ullam consequatur neque repellendus et dolor. Quo et dolorum numquam delectus similique minus eum velit. Sit dolor numquam consectetur aperiam illum harum sunt. Ex iusto non recusandae neque quas doloremque.', 3, '2020-10-04 21:41:41', '2020-10-04 21:41:41'),
(10, 38, 'Ona White MD', 'Ex nam reprehenderit ad sit officiis expedita. Nesciunt quia dolorem velit id explicabo minus libero aperiam. Harum consequatur quis magnam.', 4, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(11, 14, 'Allen Considine', 'Voluptatem quidem magni qui iure aut rerum libero vitae. Tempora praesentium ea nihil nesciunt. Voluptate cupiditate quam officiis eligendi libero natus nihil.', 2, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(12, 4, 'Prof. Jean Boyer DVM', 'Et in voluptas cupiditate ea necessitatibus illum temporibus. Occaecati corporis voluptatum accusamus laboriosam quia. Sed velit reprehenderit et animi unde alias sint.', 0, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(13, 32, 'Madyson Cartwright III', 'Adipisci doloremque amet sunt maiores. Hic et hic adipisci voluptas non natus. Adipisci aperiam rerum occaecati minus.', 5, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(14, 45, 'Dr. Oswaldo Balistreri V', 'Ducimus sit iusto et aut labore neque culpa esse. Illum ea deserunt non vitae vel. Temporibus vel ut saepe corporis accusamus necessitatibus.', 5, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(15, 47, 'Dr. Easton Thiel', 'Amet nobis consectetur voluptatibus culpa. Quae in ab consequatur et sint pariatur. Facilis sint cupiditate rerum aut atque. Occaecati eligendi similique debitis.', 2, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(16, 46, 'Ocie Ullrich Jr.', 'Doloremque recusandae quae aut sint omnis quas nobis. Hic deserunt corporis esse quae dolore ratione. Id dolor consectetur aut similique soluta vel rerum atque. Tempore tempore explicabo voluptate vel eos aperiam eveniet.', 1, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(17, 19, 'Mr. Roel Lindgren', 'Qui non excepturi commodi minima nobis. Praesentium necessitatibus fuga nulla aut corporis. Dolorum velit quibusdam qui iusto voluptatem temporibus corporis. Eum placeat molestias dolore voluptatibus dolores velit autem. Magnam quam ut non nihil omnis aspernatur.', 5, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(18, 13, 'Demetrius Johnston', 'Voluptas autem necessitatibus dolores labore a tempore vel. Nulla earum est et sit aspernatur velit error sit. Voluptas tenetur iste et aut enim.', 0, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(19, 19, 'Prof. Anya Hodkiewicz', 'Sit ut voluptatem consequuntur. In sint deleniti qui cum neque. Asperiores alias repellendus sed veniam repudiandae dolorem.', 4, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(20, 9, 'Prof. Americo Strosin', 'Atque id fuga qui quis dignissimos molestias. Maxime alias occaecati incidunt quasi hic. Consequatur saepe sint qui.', 4, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(21, 35, 'Jade Johnston', 'Incidunt inventore vel beatae eum magni qui quod qui. Hic dolores quos incidunt quaerat officiis illo maiores. Aliquam vero similique labore asperiores aliquid itaque accusantium.', 3, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(22, 11, 'Delpha Marvin IV', 'Neque vero dolorem est fugiat et sint. Et ut qui consequuntur. Nam et voluptatem non qui consequatur. Quia inventore aut architecto quo minima.', 3, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(23, 23, 'Violet Gerhold', 'Qui quia iusto omnis vero et minus. Velit omnis cupiditate qui voluptas. Architecto architecto blanditiis rem distinctio velit ipsa perspiciatis libero.', 1, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(24, 41, 'June Kautzer', 'Esse repellat sed distinctio laboriosam molestias officiis non. Corrupti cumque repellendus quisquam. Nisi rerum id et debitis.', 5, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(25, 18, 'Dr. Chase Walter', 'Autem et doloremque saepe dicta. Aliquam commodi nulla nemo debitis reprehenderit odio. Ut aliquam voluptate exercitationem. Vel ut pariatur voluptas ipsam.', 5, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(26, 24, 'Joany Leuschke', 'Dolorem asperiores harum reiciendis ut veniam quo fugit. Dolores quia vel eos dolor rerum tempora excepturi ut. Ullam voluptatem laboriosam sed tenetur neque quas voluptatem minima.', 4, '2020-10-04 21:41:42', '2020-10-04 21:41:42'),
(27, 4, 'Ron Feil', 'Nemo qui sapiente accusamus enim exercitationem esse sint. Delectus dignissimos fuga laboriosam non qui dignissimos aut. Cumque qui voluptatibus voluptatem eveniet.', 4, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(28, 50, 'Una Tillman', 'Eveniet earum esse dolorum fuga. Vel saepe dolorum dolorum fugiat provident incidunt. Quo assumenda soluta qui voluptate minima. Delectus fugit voluptas temporibus nihil ipsam.', 0, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(29, 42, 'Georgianna Lindgren', 'Labore qui sequi ex autem doloremque. Laboriosam est blanditiis enim recusandae vero modi. Hic qui qui earum non sint qui at.', 4, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(30, 8, 'Miss Sarina Sporer IV', 'At sequi incidunt excepturi quae vero. Libero quasi dolores nesciunt repellat et. Eligendi facilis et vitae id. A autem vitae quia quis fugit.', 1, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(31, 7, 'Kaleb Nolan', 'Est quidem inventore omnis vel. Impedit recusandae quibusdam enim rerum aut autem amet qui.', 1, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(32, 29, 'Mr. Stanton Ritchie', 'Rem sed repellat repudiandae enim non esse. Est a ut voluptate voluptatem recusandae assumenda fuga.', 5, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(33, 48, 'Daron Johns', 'Aut accusamus accusantium qui in qui. Rem voluptatum blanditiis et explicabo commodi autem consequatur. Eos voluptas earum beatae. Minima accusantium corrupti aut voluptatem illo.', 5, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(34, 46, 'Joesph Klein', 'Quam officia temporibus molestias. Asperiores perspiciatis cum ea at non. Aliquam voluptate quia id quo.', 0, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(35, 47, 'Toni Barton', 'Molestiae error explicabo beatae aliquam qui cum qui quibusdam. Inventore distinctio temporibus atque esse sapiente libero earum consectetur. Quibusdam ut aspernatur aut officiis. Recusandae reiciendis ab modi quisquam molestiae aut qui.', 2, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(36, 33, 'Dr. Holly Mitchell I', 'Vero blanditiis magnam provident quo corporis aut. Id voluptas esse omnis quia. Omnis magni autem officia placeat quasi. Itaque ipsa et magnam repellat incidunt quod nisi. Voluptas illum sit quaerat ea.', 2, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(37, 50, 'Mrs. Christa Upton', 'Qui ipsam ex et odio laboriosam ad occaecati. Quo velit qui sequi odit debitis vitae id.', 1, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(38, 43, 'Eva Cartwright', 'Et a est et dolorem officiis odit incidunt. Rerum non incidunt eum totam aliquam beatae. Et quis corporis saepe dolorum.', 4, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(39, 21, 'Prof. Thea Flatley', 'Dolorem quibusdam illum quo cupiditate. Sint id placeat tempore quo deserunt magni. Est libero quod vitae praesentium.', 5, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(40, 39, 'Mr. Friedrich Bartoletti Sr.', 'Earum similique est architecto officiis autem facilis. Aut quia perspiciatis ut molestiae facilis expedita quo labore. At sunt voluptatum eos corporis harum vero. Veritatis aut provident quod voluptatum ut dolores laboriosam.', 4, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(41, 17, 'Emory Herman', 'Autem explicabo autem maxime labore maxime quia eum quis. Architecto amet incidunt molestias.', 3, '2020-10-04 21:41:43', '2020-10-04 21:41:43'),
(42, 28, 'Helen Mante III', 'Facere dolorem unde eos debitis quis architecto. Id provident ea neque impedit at. Alias perspiciatis id distinctio impedit rem molestias consectetur. Repudiandae vel quis eos alias sit nihil quis.', 4, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(43, 26, 'Brady Harris', 'Et cupiditate ducimus voluptatem sequi aut animi. Quod pariatur aliquid omnis et iusto.', 3, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(44, 47, 'Devante Quigley DVM', 'Adipisci aperiam accusamus quo. Enim similique quia accusantium commodi. Quisquam porro et eos sit nulla voluptates inventore.', 5, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(45, 8, 'Abbey Erdman', 'Sequi blanditiis fugit consectetur. Nihil molestias voluptatem sed distinctio. Libero nulla nihil explicabo atque dolorum veniam. Aperiam laboriosam itaque quae nihil.', 5, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(46, 36, 'Magnus Gulgowski', 'Et et reprehenderit cumque eligendi. Magnam voluptatem ut provident aut repudiandae dignissimos. Quidem non iste sunt aliquam. Ut ad voluptatum incidunt deserunt in rerum est.', 1, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(47, 24, 'Bianka Hills', 'Quae dolorem eos nisi enim sunt. Error enim iste ipsum facere non commodi qui.', 1, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(48, 20, 'Prof. Winnifred Schuster IV', 'Blanditiis minima consectetur debitis dolor reprehenderit. Est aliquam et dolorum vel et. Eius exercitationem ex repellendus est repellendus.', 1, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(49, 13, 'Cale Huel', 'Aliquid sunt ut voluptatem aut. Natus adipisci et ratione officia dolor. Perferendis quam velit laboriosam veniam nihil.', 5, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(50, 18, 'Era Stamm II', 'Molestiae occaecati nobis suscipit nam sed officiis ipsum. Rerum dolorum aliquid error molestiae sequi totam natus. Accusamus ullam cupiditate ab porro id. Velit qui facere doloremque autem dolorem ut nihil quia.', 0, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(51, 20, 'Raina Ondricka', 'Minima non est mollitia vel laudantium enim. Alias explicabo itaque eum consequuntur ab. Cumque et eum neque beatae.', 3, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(52, 36, 'Savion Olson', 'Quis tenetur asperiores sunt quod. Et sed ut ut maxime nostrum. Dolore occaecati sequi vero occaecati cumque. Delectus dolor hic eum veritatis eaque aut amet.', 0, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(53, 19, 'Valentine Hyatt', 'Reiciendis autem corrupti ex dolores numquam ipsam. Id aut voluptatum sint deserunt ad eum error. Ducimus omnis repellendus necessitatibus similique.', 4, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(54, 14, 'Ms. Viola Skiles III', 'Iusto magni ut doloremque odio sit rerum magnam. Ut sit ut minima molestias nostrum ad quidem. Voluptatibus maxime rerum voluptatibus ullam.', 3, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(55, 14, 'Osborne Brakus', 'Excepturi natus reprehenderit aut saepe rem. Voluptatem illo optio hic. Non dolores velit dolor quas dicta odit reprehenderit nesciunt. Accusamus nemo architecto nisi ratione sapiente voluptas necessitatibus.', 0, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(56, 34, 'Miss Bonita Robel II', 'Eaque rerum dolorem ab laudantium sunt. Quod dolores a maiores minima et molestias sit nisi. Ipsam ullam nobis ea id aliquid sed.', 0, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(57, 27, 'Dr. Giovanny Schoen Jr.', 'At debitis expedita in corrupti est aut. Iste debitis doloribus et. Quo laborum aut quas voluptatum aut ea rem. Tenetur nemo repellendus qui quae voluptas cumque assumenda.', 5, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(58, 43, 'Drake Watsica', 'Hic a ut aliquam est aut itaque repellendus. Magnam doloremque beatae odio.', 4, '2020-10-04 21:41:44', '2020-10-04 21:41:44'),
(59, 46, 'Deborah Runolfsson', 'Quisquam doloremque qui rerum. At et nihil laboriosam tempore accusamus quisquam. Eos consequatur hic quo optio consequuntur consequatur ea. In velit fugit vitae quia sint quisquam.', 4, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(60, 39, 'Eula Prohaska', 'Natus ipsa consequatur quibusdam consequatur. Incidunt et ut porro aperiam sequi. Ducimus quia quasi quod nesciunt et sit provident. Et corrupti porro repellendus ut.', 4, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(61, 20, 'Dr. Darion Feil Sr.', 'A voluptatem occaecati ea quaerat. Porro impedit et libero qui amet rem omnis ut. Illo quis beatae ab reprehenderit deleniti repellat eum tempore.', 5, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(62, 30, 'Willis Murazik', 'Culpa aut dignissimos et facilis repellat. Maxime voluptas magni harum voluptatem ex repudiandae et.', 3, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(63, 27, 'Marguerite Rau', 'Ut vero itaque corrupti rerum consequatur. Esse labore excepturi numquam officiis. Labore ullam blanditiis eos possimus atque non.', 1, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(64, 2, 'Mrs. Maybell Predovic III', 'Architecto repellat amet velit quia reiciendis enim quia nesciunt. Ut ut fugiat voluptatem delectus in non. Quasi consequuntur incidunt non ducimus qui dolorum ut. Amet dolor facere sunt sed.', 5, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(65, 29, 'Lulu Welch', 'Et et et quae pariatur porro maiores sunt. Quis aut consequatur a nemo nihil. Voluptatibus esse autem voluptas nisi repudiandae perspiciatis harum. Velit quia excepturi vel quas. Non eius cupiditate aut sunt molestiae sunt amet veniam.', 0, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(66, 49, 'Barry Blick MD', 'Fugit sequi voluptatum quo voluptas. Pariatur voluptatem dolores veritatis ut quia. Harum culpa iusto quo. Occaecati cupiditate iure numquam et ut voluptate.', 3, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(67, 43, 'Elbert Wintheiser', 'Exercitationem ullam qui omnis placeat nulla. Illo occaecati odio ratione et fuga soluta eius. Architecto repellat odit eos numquam molestias. Sequi numquam consequatur itaque necessitatibus distinctio ut temporibus.', 1, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(69, 25, 'Dixie Mosciski V', 'Sapiente nostrum non dolores tenetur. Quas quos quia facilis rerum. Ad natus facilis vero rerum harum eius fugiat. Officiis maxime quo vel magni et harum.', 2, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(70, 41, 'Antonia Reichel', 'Quia minima ut error ratione nihil nulla expedita. Quis aspernatur et quas omnis sed. Quas tempore necessitatibus necessitatibus doloremque deserunt quibusdam corporis. Cum molestiae voluptas cum natus ipsum natus inventore.', 0, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(71, 22, 'Janis Kihn', 'Ut quos sit minima est. Officia eos ut placeat modi officiis perferendis. Voluptas dignissimos quaerat sed. Atque est aut voluptate quasi rem libero.', 4, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(72, 24, 'Taya Johnson', 'Eius id maxime iste odio laboriosam ipsa. Quo nisi molestias et aperiam. Nihil perferendis quia quidem aliquid adipisci sit velit.', 4, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(73, 40, 'Eloisa Bartell', 'Veniam molestias quidem possimus placeat optio eligendi labore. Laudantium molestiae inventore ad fugit aliquam explicabo commodi quisquam. Ipsum et cupiditate neque voluptatem eaque dolore nulla. Vel et eum velit maiores earum quae corporis quis.', 2, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(74, 43, 'Lydia Will', 'Quia tempore recusandae eum autem. Veniam aut at nam nisi qui provident sit. Fugiat ad a amet qui est ipsum.', 0, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(75, 28, 'Sylvia Bechtelar', 'Eum soluta consequuntur dicta modi sapiente aut. Repellat natus in ut adipisci voluptas asperiores excepturi. Tempore atque nam provident deleniti.', 5, '2020-10-04 21:41:45', '2020-10-04 21:41:45'),
(77, 22, 'Simeon Powlowski', 'Aliquam accusamus quo magnam et et quis sunt. Quisquam neque placeat ut dolor dolores fugiat. Et voluptatem ipsa soluta autem a qui libero. Qui expedita neque deleniti necessitatibus. Architecto nisi et sed est ut at sint.', 0, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(78, 25, 'Prof. Brenden Weissnat IV', 'Nihil corporis aspernatur ut nobis pariatur. Reprehenderit consequatur laborum iste molestias tempore libero.', 1, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(79, 36, 'Prof. Dejuan Flatley Jr.', 'Ipsa aspernatur laudantium voluptatem quia. Et atque quae ut repellendus deleniti odit. Cumque corporis id repudiandae quia veritatis necessitatibus. Repudiandae minus ipsum tenetur minus.', 0, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(80, 33, 'Lavonne Abbott PhD', 'Doloremque est maxime ducimus ullam. Nisi et aut consectetur tenetur eligendi mollitia commodi et. Ullam quia quia quas iure eius incidunt.', 4, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(81, 30, 'Marquise Monahan', 'Aperiam nemo officiis qui veniam placeat. Consequuntur odit quia ut et aut a. Aliquam quia et aut. Perferendis tempore dignissimos consequatur harum recusandae ducimus iste.', 5, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(82, 29, 'Prof. Brooks Mueller', 'Ut labore animi vero accusantium. Quis optio reiciendis quibusdam quod. Tempore tenetur tempore vitae.', 5, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(83, 30, 'Rosina Reinger', 'Vel enim quisquam ullam quo. Expedita vitae labore sit quae accusantium doloribus.', 2, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(84, 23, 'Mireille Denesik', 'Dolore quos nihil laborum quia. Molestias voluptas aut accusamus ut qui rem id ad. Voluptatem dolore occaecati cum in quia. Est repudiandae sit amet similique voluptatem debitis.', 5, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(86, 33, 'Sister Casper', 'Nostrum voluptas in omnis pariatur illo quia architecto. Praesentium iste ducimus sit. Dignissimos a facere voluptas voluptatem. Et sit possimus laboriosam.', 4, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(87, 8, 'Clay Predovic', 'Odit vel neque possimus eaque. Quis aliquam sint ullam in est velit consequuntur. Sapiente autem commodi et sunt a magni ullam.', 3, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(89, 20, 'Dr. Kelley Mills', 'Vel eveniet iste iste autem impedit consequatur. Quisquam perspiciatis ut velit reiciendis. Dolores velit placeat qui dolorem.', 2, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(90, 30, 'Ara Dooley', 'Repellendus eos sed doloremque. Facilis sequi accusantium placeat iusto ea voluptatem. Voluptas minus omnis distinctio rerum eaque asperiores. Esse est illo atque autem ad.', 5, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(91, 34, 'Sonny Moore', 'Corrupti ad ipsum recusandae ea autem ut. Reiciendis ducimus sequi sint quidem cum ab repudiandae ut. Consequatur est accusantium beatae facilis placeat non saepe. Vel sint quisquam fugit ut.', 4, '2020-10-04 21:41:46', '2020-10-04 21:41:46'),
(92, 17, 'Ms. Alice Goodwin', 'Totam labore dolore quo est. Voluptatem distinctio esse laborum provident dolorum nulla. Sunt libero adipisci dicta quis aperiam. Ut aspernatur est adipisci sunt aut voluptate ut nobis.', 3, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(93, 40, 'Patrick Reichert', 'Laboriosam iure et atque sit. Quae eveniet est accusantium voluptas. Aut optio sed ullam autem accusamus repellat quibusdam. Consequatur animi sit pariatur a velit et adipisci.', 3, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(94, 32, 'Dr. Vinnie Cassin MD', 'Aliquid eum ad quas et molestiae amet. Sed eligendi debitis vel ut quas tempore molestias. Maxime dolor quia nihil quisquam aperiam.', 5, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(95, 25, 'Dr. Magdalena Terry IV', 'Vitae eius eos quaerat. Quis amet dolores asperiores. Neque numquam culpa dolor ratione culpa non hic.', 0, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(96, 50, 'Coralie Fahey', 'Ipsum molestias magnam error ut dolores. Eveniet molestiae neque velit nam eos. In beatae amet consectetur velit sed veniam commodi.', 3, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(97, 19, 'Valentine Marquardt', 'Doloribus fuga dicta vero voluptatem aut laborum nihil provident. Totam perferendis rerum accusantium voluptates qui cumque reiciendis aut. Doloremque sit impedit iste consequatur. Aliquam laudantium incidunt ratione et sequi.', 2, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(98, 50, 'Marco Altenwerth', 'Ipsum et magnam magni consequatur. Animi est omnis dolores voluptas debitis magni eos.', 3, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(99, 4, 'Ines Bins', 'Praesentium esse sequi perferendis deleniti ratione qui. Adipisci voluptatum est harum aspernatur culpa. Quo sit voluptatibus et dolorem quisquam rem. Velit ut laudantium rem. Ut nostrum est id facilis quo dolores.', 0, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(100, 43, 'Albina Gutkowski', 'Aliquid aut aut debitis dicta porro et quibusdam. Exercitationem et est iure aspernatur. Consequuntur iste voluptate alias eum. Dolores nihil incidunt eius.', 0, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(101, 4, 'Jesus Johnston', 'Est quia tempora ipsa nostrum. Aliquid accusamus beatae nihil. Alias qui recusandae et at. Dolore occaecati ratione voluptatem.', 4, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(102, 4, 'Amy Klein', 'Odit est sequi commodi beatae laudantium. Voluptates similique id praesentium adipisci exercitationem tenetur unde iusto. Eum sequi autem dignissimos similique excepturi eius quae placeat.', 0, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(103, 50, 'Theresa Hahn', 'Ipsum quisquam saepe deserunt sapiente aut nulla. Laborum culpa qui consequatur eum. Est facere adipisci voluptatibus saepe omnis. Accusantium sint voluptas et quam recusandae aut.', 4, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(104, 12, 'Mike Schuster II', 'Veniam qui soluta rerum et at neque. Non quis vel qui quia perferendis in quo.', 1, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(105, 23, 'Prof. Webster Frami', 'Fugit non sed ipsam fuga sint sunt occaecati. Ullam voluptas expedita soluta temporibus velit. Laborum autem ut molestiae rerum.', 0, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(106, 39, 'Freddie Thiel', 'Porro qui nemo voluptatem ea totam ut eaque. Omnis omnis quia alias quo facilis repudiandae. Dolorem ea ratione voluptatem doloremque aut voluptas voluptas ut.', 0, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(107, 39, 'Kim Gutmann', 'Quam est voluptas rem a. Occaecati non nostrum officia qui doloremque suscipit aut. Velit nisi iure corporis porro earum. Non dolorem sint aliquid et quaerat.', 4, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(108, 6, 'Jody Eichmann', 'Sequi placeat aspernatur temporibus. Consequatur praesentium voluptas id quaerat optio. Soluta et maiores sed id dignissimos. Iusto quam qui illum pariatur occaecati pariatur.', 4, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(109, 9, 'Rebeka Jacobson', 'Et voluptatibus doloribus quo quisquam voluptatum et aut occaecati. Fuga dignissimos consectetur doloribus voluptas laboriosam facere a. Eaque ducimus numquam ipsam doloribus.', 3, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(110, 43, 'Walter Boehm Jr.', 'Dolores sed ad provident consequatur est. Voluptates quam ipsa et numquam laudantium modi. Sunt expedita vero eum voluptas. Dolores molestiae eos nulla dolor vel quod. Tempora suscipit magnam delectus aut aut voluptatem.', 1, '2020-10-04 21:41:47', '2020-10-04 21:41:47'),
(111, 29, 'Khalil Abernathy', 'Perspiciatis rerum laudantium ea vel. Illo consectetur rerum et expedita ex. Est minus numquam doloribus iste similique. Eum qui nemo quis perferendis rem.', 0, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(112, 50, 'Dr. Lucinda Pfeffer Sr.', 'Dolores tenetur velit maiores rerum ea similique rerum. Omnis ut necessitatibus quas.', 1, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(113, 17, 'Royce Mitchell', 'Quia veritatis quod dolor sit architecto. Numquam voluptas fugit cupiditate rerum quo aspernatur dolorum. Et aliquid in ut. Dolores qui voluptas tempore ut delectus doloribus. Blanditiis iure et dicta qui.', 3, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(114, 50, 'Wilfredo Vandervort III', 'Eaque et iure quasi. Recusandae non nemo maxime incidunt quas voluptas et.', 4, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(115, 37, 'Jake Strosin', 'Nihil nihil occaecati quis ab magnam aliquid pariatur optio. Autem corrupti vel voluptatem velit magni molestias. Sit adipisci officia ipsum illum ipsum aspernatur.', 4, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(116, 23, 'Prof. Cordelia Rolfson DVM', 'Aliquid blanditiis unde repellendus perspiciatis. Nobis dignissimos quod esse voluptatem ipsum totam vel. Quibusdam id sit non. Illum nemo ducimus sed. Rerum accusantium voluptate minima mollitia minima temporibus repellat.', 0, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(117, 45, 'Graciela Corkery', 'Cumque qui et aliquid vel perferendis fugiat dolor et. Aut et cumque ut nisi. Perspiciatis nisi molestias sunt velit veniam animi. Architecto impedit veritatis ipsa fugiat occaecati nisi corrupti dolores.', 4, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(118, 21, 'Ryan Sawayn', 'Illum aspernatur aperiam nulla ad cum. Sed in dignissimos omnis quis et est. Aut officiis cumque qui esse.', 4, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(119, 27, 'Dr. Vern Lindgren', 'Numquam quis dolor voluptatem ab odio officia molestiae. Eligendi quas quo provident molestias voluptas. Eum expedita aut non vitae totam laudantium. Maiores soluta quia est minima magnam rem.', 4, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(120, 31, 'Lelia Walter', 'Non et et nulla accusantium. Dicta officiis aliquam nulla qui voluptatem et.', 4, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(121, 32, 'Prof. Brennan Prohaska Jr.', 'Repellat provident beatae error est laudantium soluta. Quia quos facere iusto itaque. Aliquam ea nemo hic et non. Accusamus alias nulla fuga rerum.', 2, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(122, 28, 'Joanie Daugherty', 'Eos distinctio quod et dolores molestiae. Veniam beatae quaerat magnam ratione dicta explicabo. Odit ut quisquam id odio repellendus aliquam at.', 4, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(123, 28, 'Demarco Funk', 'Neque quam modi laudantium voluptatum nesciunt eos velit. Eos omnis blanditiis id officiis. Aut nemo assumenda nesciunt soluta iste tenetur. Ullam quasi soluta excepturi aliquid pariatur quis.', 0, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(124, 40, 'Arvid Heathcote', 'Rerum est laborum sint adipisci voluptas. Id aliquam itaque qui molestiae. Vero occaecati explicabo sunt eligendi aut odio quo.', 3, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(125, 18, 'Lucienne Hahn V', 'Libero incidunt quo veritatis deleniti. Commodi magni aliquid sunt voluptatem illum.', 2, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(126, 3, 'Mr. Noah Prosacco DDS', 'Ipsum et quia et aut sunt quos commodi. Vel provident cumque distinctio est.', 0, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(127, 27, 'Miss Rosalinda Kerluke', 'Error ut temporibus reprehenderit quo enim est. Id quia fugiat rerum illum.', 2, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(128, 46, 'Theo Pollich', 'Id nostrum nostrum vel consequatur odit molestias sapiente. Sit corporis ut natus sunt quos modi reiciendis. Consequatur est occaecati et quidem.', 1, '2020-10-04 21:41:48', '2020-10-04 21:41:48'),
(129, 23, 'Syble Lubowitz', 'Eum nobis et necessitatibus. Quasi ut eos labore qui aut consequuntur qui. Est voluptatem occaecati saepe.', 2, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(130, 8, 'Dr. Misael Stamm DVM', 'Nam et dolorem molestiae fugit assumenda rerum eius qui. Quae nostrum ipsa nobis nobis ut. Dolores dolor deleniti fuga repudiandae ab et iste quaerat. Dignissimos iure dolore placeat. Nulla placeat voluptas accusantium ipsum laboriosam et qui.', 4, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(132, 49, 'Mohamed Schaden', 'Neque officiis consequatur dolorem fugit perferendis reiciendis tempore. Quis voluptatem porro vel itaque modi soluta libero. Velit debitis suscipit est inventore aperiam sunt. Cum nisi et non odio officiis voluptatem atque.', 0, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(133, 9, 'Candice Bins', 'Recusandae ut veritatis unde sunt quo. Dolore tempora non voluptatum sed ipsam. Quisquam quod dolorem quae aut consequatur architecto. Quia excepturi vel aspernatur aliquid laboriosam omnis.', 4, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(134, 18, 'Prof. Edd Halvorson V', 'Sapiente quis qui beatae et corrupti nihil. Sit in rerum praesentium. Ipsum commodi et id laborum.', 5, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(135, 50, 'Jessyca Padberg', 'Et optio libero rerum. Quis unde ea facere accusantium nihil voluptas. Perferendis quisquam nulla voluptatem id corporis et et rem. Maxime velit voluptas quae iusto eaque voluptates aut porro.', 5, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(136, 5, 'Cordelia Cruickshank', 'Accusantium et vel voluptates et voluptatem illum ut voluptas. Ab consequatur quibusdam aperiam aut omnis neque. Debitis quasi optio mollitia hic. Et nam tenetur officiis soluta illum non aut.', 2, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(137, 21, 'Lucienne Hammes', 'Veritatis aspernatur qui aut amet quia. Distinctio vel sapiente exercitationem. Dolorem alias eos impedit impedit. Deserunt molestiae error eum saepe.', 2, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(139, 48, 'Mrs. Katelynn Hermann', 'Totam magnam modi rerum natus omnis animi. Corrupti qui beatae debitis id quibusdam eaque. Excepturi a voluptatem labore ducimus. Ut rem accusantium sed cumque.', 0, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(140, 34, 'Sasha Bahringer', 'Nam nisi voluptas dolore eum reprehenderit. Totam molestias iure excepturi molestiae. Aspernatur eligendi nihil ut reiciendis facilis natus quia. Nesciunt velit ad sed maxime voluptates et minima. Quis ut dolorem aut nobis.', 2, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(141, 35, 'Miss Eula Cassin DDS', 'Qui repellendus aperiam nihil atque. Et est similique aut nisi. Nulla hic necessitatibus cum sit. Fuga numquam iste dicta illo qui.', 4, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(142, 39, 'Calista Walker', 'Beatae laborum et in quaerat omnis modi libero voluptate. Tenetur nulla qui qui eveniet error voluptatem eius voluptatum. Voluptatum qui a velit fuga pariatur officiis consequuntur.', 3, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(143, 30, 'Maureen Schowalter', 'Ratione aut quaerat dolorem et laboriosam aut. Ut alias fuga eveniet quae expedita. Cum quaerat repellat nostrum quo aut libero.', 1, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(144, 12, 'Prof. Gerard Williamson', 'Temporibus iusto delectus quidem impedit. Commodi fugiat eligendi iure et nesciunt autem debitis veniam. Iure ea voluptas autem voluptatem error. Amet ducimus sit unde ut occaecati eaque.', 1, '2020-10-04 21:41:49', '2020-10-04 21:41:49'),
(145, 25, 'Prof. Ismael Davis', 'Aut omnis delectus sequi aspernatur earum laboriosam omnis. Consequatur asperiores maiores est et. Rerum molestias placeat et tenetur commodi. Et dicta in tempore aut.', 4, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(146, 27, 'Kylee Bradtke', 'Sapiente explicabo corrupti doloremque accusantium error illo. Saepe consequatur omnis dolorum velit corporis aspernatur ducimus et. Labore cumque cum doloremque suscipit. Ea occaecati voluptatem enim.', 1, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(148, 21, 'Prof. Marta Kozey', 'Neque maiores est incidunt voluptatibus consequuntur. Cupiditate placeat ad odio. Ratione veniam reiciendis et quia ut nisi aut qui.', 2, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(149, 45, 'Cleora Cormier', 'Ratione dignissimos accusantium quidem. Aliquam vel ab sint. Doloribus et amet ea veniam voluptatem.', 0, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(150, 46, 'Amaya Mante', 'Repudiandae animi explicabo ut fuga culpa molestiae. Sapiente veniam qui pariatur enim aut.', 5, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(151, 12, 'Mr. Ryann Klein Sr.', 'Esse laboriosam officia sequi et dignissimos eos. Quis numquam aspernatur aut nobis.', 1, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(152, 12, 'Dr. Timmy Kutch', 'Deserunt dolor enim et quia animi inventore sed. Odio corrupti recusandae dolores iure. Facere asperiores impedit qui quo pariatur. Quo voluptatem ipsum ut iste voluptatem deleniti animi. Voluptatem quia et perspiciatis et.', 2, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(153, 1, 'Roselyn Mohr', 'Dolorem provident non perspiciatis qui qui ut dolores. Corrupti non consequatur quia. Est praesentium dicta omnis est quasi nisi earum.', 0, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(154, 41, 'Cordia Lueilwitz Sr.', 'Cum repellendus rem dolores qui impedit. Omnis ea odit quia voluptatum quisquam. Odio et id in esse nostrum optio. Laborum blanditiis repudiandae eum rerum autem pariatur sed.', 1, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(155, 5, 'Mrs. Ruthie Ernser DDS', 'Doloremque cumque eveniet tenetur debitis provident id quis odit. Omnis perferendis aut ut dolorem eius id. Reprehenderit facilis illo enim quidem amet quas et rerum.', 3, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(156, 24, 'Dr. Rod Lemke', 'Reprehenderit dolore sunt corporis nihil voluptatum sed. Omnis vel dolorum amet qui repellat aut ut. Voluptatum enim aut aliquid blanditiis.', 1, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(157, 32, 'Mrs. Nova Ferry', 'Ea tempore sed impedit facere omnis eius. Perferendis voluptatem quo maiores dicta. Quod recusandae aliquid autem maiores saepe.', 0, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(158, 34, 'Justen Block', 'Necessitatibus animi commodi vel. Nemo a tempora molestias soluta. Fugiat distinctio vero ut commodi. Et deserunt sed velit quisquam. Eos voluptatem quis laudantium et doloribus quas cum iusto.', 3, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(159, 38, 'Shana McGlynn', 'Incidunt animi iste enim quod. Dignissimos nemo non rerum quia aut odit in. At omnis est quis accusamus autem repellendus. Quam et rerum voluptatum ea.', 0, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(160, 4, 'Joshuah Toy', 'Et aut non rerum maxime quam ut. Et suscipit necessitatibus aliquam beatae odit. Consequatur sunt quo cumque exercitationem.', 2, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(161, 5, 'Arnulfo Crona', 'Voluptatibus laboriosam ut aliquid sed. Consequatur omnis veritatis provident consequatur velit. Ipsa doloremque inventore eaque velit dignissimos praesentium sit. Harum distinctio consequatur velit dolor nulla ducimus.', 5, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(162, 48, 'Mr. Jerome Schmidt', 'Aliquam ea distinctio harum sit aut. Doloribus ipsum necessitatibus voluptas beatae et nostrum dolorem. Esse voluptas iste ducimus non quis fugit. Ut officia cumque quia mollitia.', 4, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(163, 11, 'Maynard Stokes', 'Eos in harum aspernatur consequuntur est. Et officia qui maiores officia porro porro quis blanditiis. Tempore ad fugiat similique et error soluta a. Repellendus id aut et odit nihil expedita.', 0, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(164, 29, 'Floyd Kuphal', 'Modi error consequuntur enim repellendus. Sed laborum eius quia. Quisquam amet omnis neque.', 3, '2020-10-04 21:41:50', '2020-10-04 21:41:50'),
(165, 37, 'Ms. Liliana Baumbach', 'Dolorem voluptas dolorem esse mollitia voluptate. Corrupti eos vitae reprehenderit quia dicta omnis facere. Impedit non eaque quisquam molestiae aspernatur. Nihil voluptatem saepe molestias repudiandae magni.', 5, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(167, 50, 'Jaron Lemke', 'Velit at aperiam ducimus maiores harum impedit. Iste quis rem iusto dolor quod ut. Dolores voluptates consequatur nesciunt quidem quos. Nisi aut non aut commodi officiis dignissimos.', 1, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(168, 22, 'Mr. Salvador Auer DDS', 'Dignissimos aperiam aspernatur sed laborum cumque tenetur. Ratione veritatis perspiciatis autem quia omnis consequatur consequatur. Laborum fugit labore sunt laudantium amet neque perferendis. Ab nesciunt fugiat quasi sint inventore error non.', 0, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(170, 18, 'Ena Weissnat', 'Est unde necessitatibus ut et. Et repellendus excepturi et nihil occaecati expedita. Rem aliquid impedit deserunt est dignissimos. Voluptate alias fugit debitis id non pariatur non. Repudiandae quia nulla nostrum neque voluptatibus libero.', 3, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(171, 34, 'Lucile Jacobson', 'Optio ut iure maiores debitis. Blanditiis minus recusandae vero expedita ducimus perferendis. Consequuntur ipsa nam qui ut iure rerum nulla. Expedita a ab non perferendis.', 0, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(172, 5, 'Tiana Kassulke', 'Sit enim quasi ipsam quia. Unde fugiat odio aliquid. Repellat praesentium qui ea quo occaecati ut velit.', 3, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(173, 11, 'Brock Tromp', 'Repellendus eligendi omnis eius numquam. Omnis est autem aut. Tenetur praesentium voluptas aut quidem et explicabo minima.', 2, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(174, 12, 'Preston Mertz', 'Blanditiis similique sapiente aut et earum eius ut est. Sapiente autem mollitia deleniti ut cumque. Quia necessitatibus quam placeat facilis. Soluta asperiores odit dignissimos rem. Eaque recusandae quisquam voluptas natus sit.', 1, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(175, 6, 'Alexa Frami', 'Qui aliquid illo id similique inventore. Inventore asperiores qui voluptas aut.', 1, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(176, 32, 'Christy Nicolas', 'Veritatis autem id nulla eaque rerum amet amet. Doloremque quas error nulla dignissimos. Non impedit esse magnam atque. Eius quia cum odit qui assumenda quia rerum.', 0, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(177, 37, 'Lauren Bartell', 'Est amet est doloribus debitis rerum. Maxime consequatur aut sed. Voluptate amet minima delectus rerum enim odio est. Quia quae eum asperiores.', 0, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(178, 44, 'Unique Bailey DDS', 'Placeat rerum et maiores. Et explicabo culpa est. Qui esse et natus dolorem.', 0, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(179, 49, 'Mohammad Jacobson', 'Minus quo hic dolor. Assumenda velit eius eum omnis quae quis unde. A ullam velit autem qui praesentium.', 5, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(180, 45, 'Montana O\'Kon MD', 'Tempore error et aut omnis et. Sapiente aut at quod dolor rerum quam dolorem. Quisquam sequi possimus ducimus dignissimos.', 1, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(181, 47, 'Dr. Boris Gulgowski DDS', 'Optio quidem neque labore error est. Consectetur quia quasi nihil fugit.', 0, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(182, 50, 'Gene Mertz', 'Suscipit cum rerum facere voluptatibus explicabo sit. Id voluptas qui dignissimos esse quam omnis laborum. Et a et quos explicabo quia.', 2, '2020-10-04 21:41:51', '2020-10-04 21:41:51'),
(183, 1, 'Robbie Wehner', 'Enim laborum non voluptas omnis voluptas eveniet. Dolor nulla laudantium veritatis est rerum hic. Aut perspiciatis mollitia architecto et nam.', 4, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(184, 38, 'Shea Dicki', 'Doloremque quia ex rerum sunt ipsum temporibus. Aliquam illo maiores blanditiis eum possimus. Fugit quia nesciunt quo placeat.', 1, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(185, 27, 'Dr. Tabitha Frami', 'Dolor vel voluptas odio et. Ut voluptatum magni ipsam nobis quisquam possimus molestiae. Eos iste aut et error. Delectus ut et laborum accusantium omnis natus totam quos.', 0, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(186, 27, 'Ms. Annamarie Harvey Sr.', 'Reiciendis quae nemo et autem corrupti culpa. Expedita inventore distinctio nihil. Et recusandae alias excepturi sit. Suscipit impedit deleniti enim atque ut at.', 0, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(187, 13, 'Chauncey Frami', 'Autem fugiat voluptatum fugiat sit mollitia. Laboriosam vel possimus eveniet dignissimos. Est eos ad minus architecto.', 1, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(188, 13, 'Prof. Giovanni Runte MD', 'Sed fugiat aliquam voluptas. Vel vel eos repudiandae fugiat. Sunt ut dolorum voluptas deserunt rerum quaerat. Officia placeat quos id rerum.', 0, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(189, 27, 'Jaquelin Schultz IV', 'Excepturi pariatur ipsum quaerat occaecati eum. Voluptas voluptatem officiis consectetur debitis molestias. Illum quo iste et.', 2, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(190, 38, 'Marisol Kemmer', 'Veritatis ipsam quis explicabo qui. Qui dolore qui quia ut ipsam itaque nemo et. Qui pariatur veniam pariatur nisi est minima. Voluptatem laudantium iste reiciendis adipisci eum eos.', 3, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(191, 50, 'Godfrey Hettinger', 'Ut eligendi est doloribus earum. Aut odio est minima voluptate laudantium consequatur. Sint sint quasi veniam eius harum nisi.', 3, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(192, 23, 'Harmon Hintz PhD', 'Illo magnam aut delectus sed sunt pariatur laboriosam. Est ducimus vitae numquam id tempore quo est. Quos at aperiam qui velit reprehenderit ab incidunt.', 4, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(193, 39, 'Domenick Quitzon', 'Eos molestiae veritatis itaque. Animi doloribus minima voluptatibus expedita hic cupiditate. Earum maxime iste rerum et consectetur aspernatur. Atque dicta amet accusamus et nemo minima eum.', 1, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(194, 42, 'Dr. Lyla Fritsch', 'Et quas et ex dicta sint molestias qui aliquid. Quaerat ut quo officia optio sit dolor. Cupiditate qui reprehenderit in possimus eligendi illum velit. Vel voluptates et architecto cupiditate officia excepturi voluptas.', 4, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(195, 37, 'Meaghan Collier MD', 'Atque voluptatem quos dolorem id sit pariatur provident. Id magnam et officia ipsam velit minima commodi modi. Repudiandae rerum non nemo reiciendis. Dignissimos et quaerat facilis eius eum velit.', 3, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(196, 28, 'Narciso Klein', 'Est aspernatur id magnam blanditiis et voluptatum molestias. Ratione harum sed soluta amet excepturi dolorum. Qui laborum magni dolor quis molestiae. Facere aliquid voluptatem recusandae nemo facilis debitis error aliquid. Velit velit molestiae exercitationem placeat voluptatum qui sit nisi.', 4, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(197, 14, 'Prof. Nova Reichel', 'Sed autem deserunt aut aliquam. Qui rerum itaque veritatis voluptatem. Maxime repudiandae autem consequatur. Quis enim asperiores blanditiis doloribus explicabo at.', 0, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(198, 11, 'Ernest Bogan', 'Qui quis qui delectus magnam sed fuga. Excepturi enim architecto impedit. Atque voluptatem laudantium explicabo.', 2, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(199, 29, 'Twila Deckow DDS', 'Est ducimus ut quibusdam et sapiente. Quis ad laborum ducimus quidem pariatur est. Quia nesciunt inventore temporibus quibusdam consequatur voluptatum omnis.', 3, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(200, 25, 'Rhett Rogahn', 'Eius consequatur non quos qui voluptatem praesentium sed. Earum deserunt autem laborum qui ut. Possimus ipsum facere recusandae corporis. Sequi quis dignissimos ipsum.', 1, '2020-10-04 21:41:52', '2020-10-04 21:41:52'),
(201, 35, 'Dr. Bernie Predovic DDS', 'Eaque rerum perferendis repellat maxime quae recusandae quia. Ipsum atque maxime dicta voluptas dolores explicabo dolorem est. Doloribus et consequatur id nobis praesentium quia eum. Saepe voluptatem quos optio error est ut dolor.', 0, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(202, 50, 'Mr. Khalil Bauch', 'Quam accusamus quae in iste eaque est. Vitae reprehenderit dolores quidem earum. Ut voluptas rem minima.', 4, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(203, 33, 'Miguel DuBuque', 'Aliquid laborum ducimus cupiditate temporibus. Illum provident explicabo et explicabo. Nemo mollitia quas velit soluta dolore voluptas.', 4, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(204, 9, 'Zoey Friesen', 'Dicta atque voluptates voluptatibus totam optio. Magnam praesentium sit optio ab quidem illo aut. Earum ullam quis sint deleniti tempore aperiam. Molestiae expedita ut veniam libero.', 4, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(205, 49, 'Solon Klocko DVM', 'Vel vel et consequatur aliquid quisquam repellat ipsam. Sint ratione ea voluptas non ex accusamus at. At est qui id.', 3, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(206, 4, 'Rafaela Steuber', 'Similique eos et a beatae. Aperiam quidem voluptates ipsam voluptate veritatis soluta. Quaerat fugiat quia saepe dolorum maiores exercitationem rem eius. Fuga voluptatem totam architecto dolore quis.', 4, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(207, 9, 'Mossie Collier', 'Ipsa dolorem placeat aut pariatur explicabo rerum. Perspiciatis vitae voluptatem qui. Et aliquid minus eaque soluta. Eius et eaque quam quibusdam omnis mollitia et.', 2, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(208, 36, 'Angus Nikolaus PhD', 'Qui aperiam est aspernatur nulla non. Eos adipisci eaque dolore velit quia error eum. Non qui suscipit ab aut quo sapiente vel. Fugiat eveniet voluptates assumenda excepturi tenetur rerum assumenda.', 1, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(209, 35, 'Gideon Littel', 'Et et animi et sit illo et quis eligendi. Ullam quisquam consectetur nihil quia culpa. Ullam ipsum sint voluptatibus quasi ut vitae et natus.', 4, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(210, 24, 'Barton Waters', 'Perspiciatis fuga assumenda qui. Fuga voluptatibus nemo non. Quisquam neque et quia id consectetur ullam ipsa cum.', 5, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(211, 26, 'Kenyatta Tremblay IV', 'Maxime nisi ullam neque praesentium impedit reiciendis nam. Fuga vero est quasi praesentium. Non veniam voluptatem soluta aliquid similique cupiditate. Ea repellendus doloribus corporis voluptas molestias voluptatum. Quia iste officiis dolores tempore natus.', 1, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(212, 28, 'Ms. Susanna Cartwright Jr.', 'Et illum omnis doloremque. Natus ut reiciendis nihil qui velit natus. Ipsum qui asperiores cum fugit.', 0, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(213, 20, 'Miss Savanna Kuhlman', 'Culpa voluptatem optio odit vel a voluptatibus accusantium. Voluptatum sit sint facilis omnis voluptatum enim possimus culpa. Facilis eum error corrupti iure aliquid sint quia. Facere occaecati sed autem quo consequatur.', 0, '2020-10-04 21:41:53', '2020-10-04 21:41:53'),
(214, 28, 'Janice Hettinger', 'Aperiam voluptas ab consectetur animi magnam vel omnis quia. Non quia nihil molestiae mollitia enim. Repellat est dolorem minus vel ex.', 3, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(215, 29, 'Mr. Abe Turcotte', 'Est optio est nostrum ullam. Qui atque dicta consequatur ratione id. Nemo possimus temporibus sunt in. Voluptatum omnis praesentium sit consequatur dolor aliquam.', 4, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(216, 9, 'Prof. Jedediah Gerlach PhD', 'Nemo commodi amet blanditiis error. Dignissimos nemo reiciendis est quidem. Alias corporis minima et omnis dolorum.', 4, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(217, 44, 'Delphia Beer', 'Quod est ut cupiditate voluptatem sed excepturi repellat. Et fugiat labore quibusdam quis. Et est qui officiis vel.', 2, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(218, 3, 'Golda Morissette', 'Odit temporibus nisi et suscipit veritatis. Voluptas pariatur rerum qui eum. Voluptatibus excepturi ea ea voluptatum iste incidunt. Esse nam laboriosam perspiciatis illum enim.', 3, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(219, 20, 'Kelly Schuppe', 'Architecto ipsum laboriosam delectus quo. Illo saepe illum excepturi doloremque aut repudiandae. Molestias enim perferendis ut velit molestiae ipsum tempora. Eius est ratione odio voluptatem dicta.', 0, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(220, 11, 'Mr. Gonzalo Renner V', 'Non fugit quia omnis et dolor voluptate est. Optio porro vel dolores nemo. Corporis veritatis quo temporibus hic voluptate facilis nobis. Et suscipit perferendis a.', 4, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(221, 32, 'Cyrus Harvey', 'Qui optio excepturi iste tempora recusandae. Rerum ratione doloribus voluptatibus commodi maxime optio minima quasi. Expedita tenetur corporis aliquam autem.', 2, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(222, 6, 'Marcelo Prohaska', 'Autem numquam necessitatibus aut quia excepturi repellendus provident. Ab et rerum rerum molestiae et laborum dolores sequi. Nemo odio mollitia excepturi aut. Dolorem quod et sint excepturi quod saepe.', 4, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(223, 5, 'Nichole Swift DDS', 'Illum sed rem est ut. Laudantium autem qui a officiis. Aut ut fugiat ipsum nemo. Alias dignissimos vel quia natus eum et.', 4, '2020-10-04 21:41:54', '2020-10-04 21:41:54');
INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(224, 17, 'Gust Ortiz', 'Omnis culpa distinctio voluptatem incidunt eveniet. Deserunt et quas aliquam perferendis nostrum magni. Consequatur porro et et omnis.', 5, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(225, 48, 'Van Terry', 'Neque dolorem eligendi ut debitis. Earum et culpa qui rerum provident est ex similique. Dolor quasi nihil explicabo ipsa reiciendis. Exercitationem consequatur nisi aliquam eos est ut facere.', 2, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(226, 39, 'Mr. Noah Beatty', 'Perspiciatis aspernatur blanditiis nam ipsam voluptatem qui laudantium. Est commodi illo laudantium minus inventore saepe. Autem aliquid sint facilis cupiditate molestiae.', 2, '2020-10-04 21:41:54', '2020-10-04 21:41:54'),
(227, 40, 'Jordane Bartell', 'Ullam voluptas aperiam culpa consectetur sit ut. Reprehenderit deleniti et tempora voluptatem beatae accusantium dolorem. Dolore et architecto modi.', 5, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(228, 20, 'Elvera Kovacek III', 'Officiis sed aliquid voluptate sint. Nisi temporibus reprehenderit et aperiam.', 3, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(229, 20, 'Sallie Nienow', 'Quae et nihil numquam eveniet. Quos doloremque fuga sequi dolores fugit repellendus sunt dolorem. Facere iure mollitia et.', 5, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(230, 46, 'Evie Johnson', 'Dolorum dignissimos et dolores quis beatae. Adipisci quis doloremque eaque est debitis molestiae odio reprehenderit.', 0, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(231, 29, 'Adrain Wolff I', 'Eos quae qui doloribus fugit est omnis. Unde sed blanditiis tempora provident. Cum necessitatibus similique totam porro.', 4, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(232, 6, 'Kara Paucek', 'Et accusamus cupiditate recusandae et repellendus voluptatem. Reprehenderit voluptates eos facere doloremque recusandae consectetur quos nam. Excepturi natus sit velit id odio ut et.', 5, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(233, 50, 'Prof. Jack Stokes V', 'Alias earum ea dolore est. Velit incidunt ut voluptates vitae iure aperiam. In nihil quam harum quis quam.', 1, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(234, 5, 'Johnathon Balistreri Jr.', 'Eos eum sapiente id. Ab aliquid enim aut voluptas et voluptatem. Tempora deserunt ea harum eum eum consequuntur facere magnam. Iure in rerum modi ea aut qui ipsa.', 0, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(235, 9, 'Pearline Kautzer V', 'Ex debitis rerum sit velit. Eos modi ipsam repellendus minima vel ipsum. Illo est sunt at praesentium quasi quae quod.', 5, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(236, 10, 'Mrs. Elinor Streich II', 'Magni adipisci provident adipisci quia eius. Ad aut consequatur voluptatibus corporis esse fugiat corrupti. Sint est assumenda sed reiciendis ullam eligendi molestiae.', 3, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(237, 33, 'Marcella Hand', 'Repudiandae neque vel necessitatibus. Quisquam est autem nobis molestias. Qui occaecati tempore soluta pariatur architecto provident.', 2, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(238, 25, 'Luz Reichel', 'Eum enim aut et rerum fugiat quis. Corrupti cum voluptatem hic sed voluptatibus. Voluptatem quia qui quo sint qui.', 3, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(239, 36, 'Lucienne Goyette I', 'Doloremque rerum quaerat velit esse aut modi non. Quia tempore sequi eaque magni rerum quia. Omnis incidunt aperiam quod facere incidunt labore et error. Consectetur sunt libero neque quaerat.', 4, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(240, 12, 'Doug Reynolds', 'Voluptatibus rerum ullam facere labore qui dolorem molestias enim. Aliquid aut quia officiis impedit illum. Corrupti dolores et quidem soluta ut.', 0, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(241, 31, 'Prof. Joaquin O\'Connell MD', 'Hic cupiditate voluptatem ea quas occaecati. Perspiciatis perspiciatis dolorem non eligendi. Atque commodi nam consequatur mollitia dicta architecto molestiae quae. Delectus alias nulla rem doloremque.', 2, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(242, 29, 'Dr. Damon Gusikowski', 'Et labore dolores ducimus beatae ipsum ipsa. Quidem voluptatem qui laudantium minima cum optio vel. Blanditiis explicabo sed corrupti aut in et. Odio tempore quidem magni.', 0, '2020-10-04 21:41:55', '2020-10-04 21:41:55'),
(244, 25, 'Nella Connelly', 'Autem laudantium quis consequuntur modi quibusdam magni. Natus reiciendis aut deserunt laborum quia. Similique hic architecto voluptates autem perferendis odit magnam. Hic molestiae sint consequatur non voluptas animi doloremque. Qui et natus in quos voluptas beatae assumenda.', 0, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(245, 23, 'Mr. Kurtis Schiller III', 'Deleniti distinctio aut voluptate qui. Et ullam autem et ut dolorem non dolorum. Ut vel quidem sed rem et voluptas aliquid.', 2, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(246, 1, 'Ms. Anastasia Feeney', 'Nihil excepturi quos quibusdam ut illo laudantium expedita. Deserunt dolores alias aliquam.', 2, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(247, 19, 'Sean Bayer', 'Laborum reiciendis qui odit quo consequatur officiis. Quas corrupti consequuntur ea natus aut corporis.', 1, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(248, 21, 'Dr. Tyree Willms DDS', 'Dicta et vel praesentium inventore eos incidunt. Maiores quidem quia accusamus ullam aut architecto perspiciatis. Eos quia molestias laudantium est nulla sed aliquam.', 0, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(249, 33, 'Prof. Mikel Kiehn', 'Reiciendis optio nostrum hic repellat atque et. Delectus corrupti aperiam quo omnis. Unde assumenda atque voluptatem dicta.', 3, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(250, 17, 'Jaleel Murazik', 'Voluptas neque autem voluptatem laudantium deleniti magnam ipsam. Ut velit itaque voluptatum animi hic. Accusamus et iusto id aperiam explicabo aliquid consectetur. Quas quod debitis esse pariatur cumque tenetur.', 0, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(251, 33, 'Prof. Norberto Corwin', 'Aliquid voluptate ut autem rerum autem. Consectetur mollitia quo esse.', 3, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(252, 7, 'Elmer Ondricka', 'Ipsum eveniet dolorum ut voluptas. Aut non consectetur dolor nihil unde quasi. Iusto necessitatibus non cumque.', 3, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(253, 48, 'Karley Johnson', 'Minus iusto corrupti minus et facere. Corporis asperiores magni eos mollitia est. Autem molestiae sunt voluptatem harum.', 5, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(254, 30, 'Furman Gusikowski', 'Autem cupiditate accusantium rem perferendis voluptatem voluptas aut. Omnis est eum omnis laborum at et ratione. Laudantium tenetur non impedit autem quisquam eius molestiae. In nobis accusantium qui ipsa consequatur molestiae.', 1, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(255, 45, 'Gail Sauer', 'Ut voluptatem ut error repellendus voluptas totam. Nisi et est dolorem impedit velit id.', 4, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(256, 11, 'Hulda Blick PhD', 'Tenetur dolorum mollitia qui quos deleniti. Optio odio fugit ad magnam ut reprehenderit dolor et. Impedit nulla tenetur est et atque. Autem enim alias error ut.', 0, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(257, 47, 'Jadyn Schoen V', 'Exercitationem voluptatem dolores error aperiam quis. Non velit eum inventore libero.', 0, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(258, 6, 'Sanford Wyman DDS', 'Nihil qui reiciendis quia consequatur. Omnis impedit consequatur harum id suscipit odio. Aut nulla vel non. Nihil fugit consequatur harum et.', 5, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(259, 14, 'Maximo Huel', 'Eaque inventore eos et est officiis veniam. Nemo ad repellendus repellendus ad non fuga debitis explicabo. Voluptate alias ut nobis quaerat sequi.', 5, '2020-10-04 21:41:56', '2020-10-04 21:41:56'),
(260, 47, 'Wendy Rosenbaum DDS', 'Quisquam sit eligendi qui voluptatem similique sed. Deleniti veritatis earum similique sunt. Qui vel error libero voluptate molestiae dolorem soluta corrupti. Aliquam fuga repellendus repudiandae laboriosam tempora reprehenderit.', 0, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(261, 25, 'Hunter Veum', 'Voluptatem reiciendis est quidem aut. Reprehenderit maiores velit voluptates pariatur quis.', 1, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(262, 44, 'Moises Mann', 'Et blanditiis numquam quidem officiis eum. Qui non et est accusantium voluptatum aut voluptatum alias. Ut corporis voluptatem et molestias itaque mollitia. Possimus et voluptas est et.', 2, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(263, 49, 'Mrs. Lilly Beer MD', 'Et inventore aut porro tempore esse. Amet nam velit sit earum sint. Et excepturi perspiciatis vel atque sed et ratione aperiam.', 0, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(264, 33, 'Mr. Xander Quigley DDS', 'Praesentium molestiae quisquam quia accusamus quasi velit rem. Qui et ad mollitia qui architecto quis voluptate.', 4, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(265, 50, 'Adelbert Miller', 'Perspiciatis quis sint et magnam in. Nisi error voluptatem minima sed nihil velit incidunt. Eius incidunt velit dolores voluptatum omnis ullam. Libero asperiores aut voluptatibus delectus voluptate.', 1, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(266, 11, 'Delpha Kuhn', 'Sit non quas et recusandae dolorum. Qui itaque dolorum consequatur harum. Inventore consequuntur omnis nihil deserunt vero aut. Sed perferendis sit nulla et est et repudiandae sed.', 3, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(267, 26, 'Mina Kreiger MD', 'Repellendus accusantium provident doloribus neque. Placeat atque ad a blanditiis fugit est. Odio est inventore eaque reiciendis sequi quasi porro. Excepturi voluptatibus non repudiandae quis repellat.', 4, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(268, 1, 'Erica Rice', 'Ex deleniti sit voluptatem autem adipisci. Esse et sit in sit. Eum qui est delectus id voluptatum beatae.', 2, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(269, 39, 'Dr. Daphnee Hahn DVM', 'Repudiandae doloremque unde veritatis ratione dolor. Temporibus excepturi non et asperiores est. Sequi et maiores est ea.', 0, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(270, 20, 'Wyman D\'Amore', 'Provident explicabo et qui optio recusandae. Itaque hic corporis aut beatae. Praesentium sint facilis asperiores voluptatum ut.', 1, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(271, 44, 'Shyanne Schoen', 'Saepe cupiditate laboriosam eum in exercitationem ex repudiandae. Et officia necessitatibus ut repudiandae. Neque debitis odit similique consequatur. Sit totam doloremque eum quasi consequuntur soluta.', 3, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(272, 40, 'Harley Hermann', 'Ut labore eveniet numquam eius. Deserunt possimus et quasi qui est. Est temporibus dolorum ad aut qui.', 4, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(273, 21, 'Regan Dickens', 'In voluptatem aut exercitationem est cum. Vel et consectetur quo sit vel recusandae nisi. Ea quod repellendus consequatur voluptates magnam ducimus voluptate voluptatem.', 5, '2020-10-04 21:41:57', '2020-10-04 21:41:57'),
(274, 50, 'Ernest Lebsack', 'Omnis et enim est earum et. Quo aliquam tenetur facilis cum fugit amet esse quis. Ipsum tenetur est quasi tempora ratione laboriosam tempore labore.', 4, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(275, 21, 'Antonetta Doyle V', 'Accusantium consequatur quis reiciendis velit repudiandae mollitia possimus minima. Excepturi nam accusantium et rerum quis. Aut aut in nisi nisi magni asperiores et. Explicabo ea repellat at laboriosam modi blanditiis quam.', 5, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(277, 22, 'Zachariah Effertz', 'Ut possimus dolorum vitae nihil. Laboriosam itaque eveniet ducimus itaque velit. Illum ut sit dolorem sint consectetur quae iusto.', 5, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(278, 8, 'Kale Tillman', 'Qui illum eligendi deleniti laudantium. Quo molestias est soluta ut alias et et. Est aut ut molestiae eligendi qui. Quas repellendus sunt facere quos aut.', 3, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(279, 27, 'Carmella Price', 'Illo illum voluptatum eos. Ut neque repudiandae explicabo est provident accusantium aperiam. Doloremque eveniet quia est iusto atque aut quo ipsa. Saepe molestias et nihil asperiores dolor quaerat deleniti id.', 0, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(280, 1, 'Afton Block', 'Sit sit et ad rerum consequatur asperiores labore. Autem fugiat magni quam aperiam non. Animi voluptatum cumque id expedita ea quaerat et perferendis. Sit cumque dolorem nisi ab architecto necessitatibus.', 5, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(281, 8, 'Ms. Tamara Hudson', 'Autem velit numquam ut eos neque. Reiciendis nihil natus doloribus eligendi fugiat qui fugit. Ab nobis in molestias et. Dolore odio beatae delectus amet ut numquam tempora.', 0, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(282, 18, 'Ms. Josie Hills III', 'Adipisci nobis voluptas rem rem id omnis autem. Nihil aliquid et ex recusandae fugiat eveniet.', 5, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(283, 20, 'Prof. Maggie Jaskolski I', 'Quia ea rem officiis praesentium explicabo. Nobis quia id ab qui totam ratione. Voluptas laborum et est illum. Autem nihil placeat et labore.', 2, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(284, 45, 'Roberta Lakin', 'Et laboriosam nihil velit itaque. Recusandae non occaecati tenetur aut qui hic. Laboriosam voluptas suscipit fuga debitis.', 4, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(285, 14, 'Dr. Cleveland Hickle DDS', 'Eveniet reprehenderit ea fuga et dolores velit. Quibusdam aut distinctio ad architecto. Accusamus ut natus necessitatibus facere voluptatem.', 1, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(286, 12, 'Prof. Zachary O\'Keefe', 'Consectetur in deserunt nobis sit eum velit ut. Delectus reiciendis earum et amet odio magni non nam. Sint eos ut tenetur blanditiis temporibus.', 4, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(287, 48, 'Dee Torp', 'Vero minus deserunt omnis fuga voluptates fuga modi provident. Beatae sint consequatur ut nobis aperiam fugit. Laboriosam voluptas et et. Id repellendus illum iste facilis numquam odio.', 2, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(288, 46, 'Prof. Adelbert Kozey III', 'Quae quidem sit animi consequatur sed vel rerum. Rem dolorum similique officia sed incidunt aut. Libero error quo magni eos ipsum. Cupiditate non autem sed voluptatem natus aut aut.', 2, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(289, 47, 'Cielo Gaylord PhD', 'Sapiente iure ullam sit ut eum omnis dolorem nesciunt. Natus nemo et nesciunt vel ut vel doloribus. Voluptas omnis distinctio minima amet iste iste accusantium.', 5, '2020-10-04 21:41:58', '2020-10-04 21:41:58'),
(290, 35, 'Sage Kling', 'Illum recusandae voluptatem dicta aperiam iure numquam quo. Reprehenderit dolor hic eum neque. Maiores qui omnis quisquam qui repudiandae repellat quisquam.', 0, '2020-10-04 21:41:59', '2020-10-04 21:41:59'),
(291, 35, 'Louvenia McClure', 'Doloribus maiores ut quibusdam optio corrupti. Odit qui ducimus vitae quisquam. Non ducimus accusantium voluptas voluptates. Quis veniam sit iusto eos optio.', 2, '2020-10-04 21:41:59', '2020-10-04 21:41:59'),
(292, 13, 'Arvid Johns', 'Ea dolor voluptatibus voluptas suscipit aut et. Eligendi error suscipit labore nesciunt. Est libero non aperiam dolores distinctio asperiores impedit. Enim reprehenderit vero ut.', 3, '2020-10-04 21:41:59', '2020-10-04 21:41:59'),
(293, 50, 'Theodora Oberbrunner', 'Aut quia possimus fugit quae. Quae beatae quis ut tenetur voluptas ut a. Sit quaerat odit minima sit autem inventore. Et accusantium et perspiciatis ut a.', 2, '2020-10-04 21:41:59', '2020-10-04 21:41:59'),
(294, 29, 'Geovany Kiehn', 'Neque aspernatur quia placeat et qui nesciunt. Laborum quisquam dolorem sed voluptatem et. Aut aliquam sint ipsam dolore. Quas consectetur voluptate molestias illum.', 0, '2020-10-04 21:41:59', '2020-10-04 21:41:59'),
(295, 49, 'Cielo Fahey', 'Mollitia voluptas optio et suscipit quasi aspernatur necessitatibus. Qui et quas et quos accusamus nihil. Voluptate et a nihil. Et quo nulla reiciendis in esse.', 1, '2020-10-04 21:41:59', '2020-10-04 21:41:59'),
(296, 4, 'Juvenal Rohan', 'Aut dolores est voluptatem corrupti et. Expedita voluptates quis amet eum nostrum odit. Sit aliquid qui commodi laudantium totam.', 1, '2020-10-04 21:41:59', '2020-10-04 21:41:59'),
(297, 37, 'Dr. Jaiden Torp DVM', 'Omnis placeat nihil eos explicabo. Et consequatur impedit error saepe sapiente quo. Odit perspiciatis qui maxime corporis omnis mollitia.', 5, '2020-10-04 21:41:59', '2020-10-04 21:41:59'),
(298, 17, 'Joanny Cruickshank', 'Dolores veritatis sed molestiae in dicta aut similique. Possimus laudantium et eveniet sequi. Ducimus ut voluptatum cumque totam ipsa nesciunt consequuntur.', 3, '2020-10-04 21:41:59', '2020-10-04 21:41:59'),
(299, 45, 'Kristin Beier', 'Et qui iure et est similique. Veniam id animi id voluptas. Sunt velit exercitationem fugiat qui fugit ad dignissimos. Inventore reprehenderit quis minus.', 1, '2020-10-04 21:41:59', '2020-10-04 21:41:59'),
(300, 28, 'Ryan Fadel II', 'Beatae eius illo debitis quasi a rem. Libero et fuga quo molestiae dolorem. Aliquam voluptatem qui a quos. Et distinctio qui suscipit dicta non nostrum culpa.', 0, '2020-10-04 21:41:59', '2020-10-04 21:41:59'),
(301, 3, 'nay paing soe', 'nice one', 4, '2020-10-06 08:39:55', '2020-10-06 08:39:55');

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
(1, 'Kattie Smith II', 'bstracke@example.com', '2020-10-04 21:41:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fNCWK0kWWL', '2020-10-04 21:41:37', '2020-10-04 21:41:37'),
(2, 'Benton Stokes', 'lhammes@example.com', '2020-10-04 21:41:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cKLe1Xdv5o', '2020-10-04 21:41:37', '2020-10-04 21:41:37'),
(3, 'Miss Roxane Bailey DDS', 'effertz.walton@example.org', '2020-10-04 21:41:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BhccS45dcp', '2020-10-04 21:41:37', '2020-10-04 21:41:37'),
(4, 'Ms. Maryam Bergstrom II', 'nps1@gmail.com', '2020-10-04 21:41:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YN1uzfhKXh', '2020-10-04 21:41:37', '2020-10-04 21:41:37'),
(5, 'Dr. Gerson Mitchell', 'nps@gmail.com', '2020-10-04 21:41:37', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ccy7JcpPkO', '2020-10-04 21:41:37', '2020-10-04 21:41:37');

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 06:45 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_07_01_031518_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `nameProduct` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typeProduct` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `promotion_price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `describe` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `nameProduct`, `typeProduct`, `unit_price`, `promotion_price`, `image`, `describe`, `created_at`, `updated_at`) VALUES
(1, 'Presley Rosenbaum', 'thực phẩm khô', 31817.32, 188894.62, 'cam.jpg', 'Inventore eos a eos est saepe ratione. Ea dolorem cupiditate aut. Sit aliquam id est similique odit dolorem. Eos fugiat porro rem animi exercitationem beatae unde.', NULL, NULL),
(2, 'Malcolm Langosh', 'Hoa quả', 86093.53, 98480.24, 'dua.jpg', 'Facilis dolor maiores aliquid facere. Amet unde quis molestias quam nisi aut. Quaerat ipsam soluta in aut ea recusandae.', NULL, NULL),
(3, 'Dr. Rachel Stoltenberg Sr.', 'thực phẩm khô', 25685.99, 156095.61, 'hat3.jpg', 'Est animi aut ut hic aliquid iure. Sit voluptatibus atque eveniet eum soluta. Iure ut nemo ex dolor cupiditate quia et. Commodi repudiandae est voluptatum aperiam.', NULL, NULL),
(4, 'Prof. Anna Hane IV', 'rau hữu cơ', 5459.01, 50948.03, 'mungtoi.jpg', 'Rem qui consequatur accusamus ea corrupti. Sed qui nemo debitis non sunt explicabo est et. Commodi officia molestiae occaecati qui enim ipsa. Laboriosam et est provident eum accusamus molestiae numquam.', NULL, NULL),
(5, 'Enrico Kerluke', 'thực phẩm khô', 75531.05, 66477.08, 'hat1.jpg', 'Possimus ea numquam eos eum. Minus a ex voluptas non. Numquam earum aliquam iusto ipsum eveniet.', NULL, NULL),
(6, 'Ms. Miracle Swift DDS', 'rau hữu cơ', 75468.18, 38946.97, 'raumuong.jpg', 'Eveniet velit quod est delectus. Est veniam iure ratione dolor omnis. Voluptas qui repellendus quia doloribus rem. Sunt sit animi voluptatem pariatur aut nisi et.', NULL, NULL),
(7, 'Jodie Champlin', 'thực phẩm khô', 20933.87, 142334.21, 'hat2.jpg', 'Alias officia nisi quas quaerat unde omnis. Ut rerum voluptatem ut. Vel quas ipsum est autem. Magni et voluptatem blanditiis reprehenderit quo ratione.', NULL, NULL),
(8, 'Zora Boehm IV', 'Hoa quả', 48228.46, 156436.72, 'nho.jpg', 'Illo dolor distinctio reprehenderit impedit architecto quis. In est veritatis nihil. Sint optio quia exercitationem sed.', NULL, NULL),
(9, 'Waylon Larkin', 'rau hữu cơ', 43244.81, 15266.51, 'raucai.jpg', 'Aspernatur placeat odit ex quidem atque expedita reiciendis unde. Quia et expedita dolor et accusantium ipsam voluptas. Unde iste laudantium eum maiores ex repellendus. A quibusdam non hic sed.', NULL, NULL),
(10, 'Rahul Kuhn Sr.', 'rau hữu cơ', 60448.05, 151177.96, 'raungot.jpg', 'Sed minima culpa qui. Consequatur ducimus debitis odio labore corporis repellendus. Architecto et consequatur reprehenderit fugiat. Perferendis quos minus nobis et velit libero. Ut culpa autem nam quo animi voluptas.', NULL, NULL);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2020 a las 16:23:27
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dhdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `created_at`, `updated_at`, `name`, `src`, `deleted_at`) VALUES
(1, '2020-01-16 05:29:35', '2020-01-16 05:29:35', 'Doloribus occaecati.', 'App/public/photosBrands/images.png', NULL),
(2, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Aliquam qui.', 'App/public/photosBrands/images.png', NULL),
(3, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Ut sed mollitia.', 'App/public/photosBrands/images.png', NULL),
(4, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'At porro nobis.', 'App/public/photosBrands/images.png', NULL),
(5, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'In unde minus.', 'App/public/photosBrands/images.png', NULL),
(6, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Dolore sint et.', 'App/public/photosBrands/images.png', NULL),
(7, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Eveniet libero et.', 'App/public/photosBrands/images.png', NULL),
(8, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Ullam blanditiis.', 'App/public/photosBrands/images.png', NULL),
(9, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Nobis in.', 'App/public/photosBrands/images.png', NULL),
(10, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Repellat.', 'App/public/photosBrands/images.png', NULL),
(11, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Ut et distinctio.', 'App/public/photosBrands/images.png', NULL),
(12, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Laudantium ipsa.', 'App/public/photosBrands/images.png', NULL),
(13, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Sit debitis esse.', 'App/public/photosBrands/images.png', NULL),
(14, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Dolorem recusandae.', 'App/public/photosBrands/images.png', NULL),
(15, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Qui repudiandae ut.', 'App/public/photosBrands/images.png', NULL),
(16, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Sapiente eum quos.', 'App/public/photosBrands/images.png', NULL),
(17, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Ex velit.', 'App/public/photosBrands/images.png', NULL),
(18, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Consequatur.', 'App/public/photosBrands/images.png', NULL),
(19, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Molestiae modi id.', 'App/public/photosBrands/images.png', NULL),
(20, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Minima esse sed.', 'App/public/photosBrands/images.png', NULL),
(21, '2020-02-05 17:58:22', '2020-02-05 17:58:22', 'Yamaha', 'C:\\xampp\\tmp\\php1175.tmp', NULL),
(22, '2020-02-05 18:02:59', '2020-02-05 18:02:59', 'Zildijian', 'C:\\xampp\\tmp\\php4C59.tmp', NULL),
(23, '2020-02-05 18:16:25', '2020-02-05 18:16:25', 'Logan', 'public/imagesProducts/I8wLpcZXxPDLx5uH2ObU5Pd9V6MczHtVoZP8Haou.jpeg', NULL),
(24, '2020-02-05 18:18:20', '2020-02-05 18:30:40', 'Grestch2', 'public/imagesProducts/lSqegHYApBE8x3nngcuAXWsMNOAu6BjSpCefJweL.png', NULL),
(26, '2020-02-06 04:37:50', '2020-02-06 04:37:50', 'Stainway and Son', 'public/imagesProducts/Lmmo87S1W45hkBz8Tgke0KIReqDBxPzDgKdC9gg4.jpeg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `closed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `updated_at`, `closed_at`, `purchase_id`, `user_id`, `deleted_at`) VALUES
(1, '2020-02-01 16:12:38', '2020-02-01 16:12:38', '2020-02-01 13:12:38', NULL, NULL, NULL),
(2, '2020-02-01 19:22:42', '2020-02-01 19:22:42', '2020-02-01 16:22:42', NULL, NULL, NULL),
(3, '2020-02-01 22:55:50', '2020-02-01 22:55:50', '2020-02-01 19:55:50', NULL, NULL, NULL),
(4, '2020-02-01 22:58:34', '2020-02-01 22:58:34', '2020-02-01 19:58:34', NULL, NULL, NULL),
(5, '2020-02-02 05:07:25', '2020-02-02 05:07:25', '2020-02-02 02:07:25', NULL, NULL, NULL),
(6, '2020-02-03 15:13:33', '2020-02-03 15:13:33', '2020-02-03 12:13:34', NULL, NULL, NULL),
(7, '2020-02-03 15:28:38', '2020-02-03 15:28:38', '2020-02-03 12:28:38', NULL, NULL, NULL),
(8, '2020-02-03 15:31:56', '2020-02-03 15:31:56', '2020-02-03 12:31:56', NULL, NULL, NULL),
(9, '2020-02-03 22:07:07', '2020-02-03 22:07:07', '2020-02-03 19:07:07', NULL, NULL, NULL),
(10, '2020-02-03 22:10:20', '2020-02-03 22:10:20', '2020-02-03 19:10:20', NULL, NULL, NULL),
(11, '2020-02-03 22:36:22', '2020-02-03 22:36:22', '2020-02-03 19:36:22', NULL, NULL, NULL),
(12, '2020-02-03 22:58:51', '2020-02-03 22:58:51', '2020-02-03 19:58:51', NULL, NULL, NULL),
(13, '2020-02-03 23:00:56', '2020-02-03 23:00:56', '2020-02-03 20:00:56', NULL, NULL, NULL),
(14, '2020-02-03 23:12:45', '2020-02-03 23:12:45', '2020-02-03 20:12:45', NULL, NULL, NULL),
(15, '2020-02-03 23:14:33', '2020-02-03 23:14:33', '2020-02-03 20:14:33', NULL, NULL, NULL),
(16, '2020-02-03 23:50:29', '2020-02-03 23:50:29', '2020-02-03 20:50:29', NULL, NULL, NULL),
(17, '2020-02-03 23:51:43', '2020-02-03 23:51:43', '2020-02-03 20:51:43', NULL, NULL, NULL),
(18, '2020-02-03 23:53:11', '2020-02-03 23:53:11', '2020-02-03 20:53:11', NULL, NULL, NULL),
(19, '2020-02-03 23:53:50', '2020-02-03 23:53:50', '2020-02-03 20:53:50', NULL, NULL, NULL),
(20, '2020-02-04 00:36:26', '2020-02-04 00:36:26', '2020-02-03 21:36:26', NULL, NULL, NULL),
(21, '2020-02-04 00:41:07', '2020-02-04 00:41:07', '2020-02-03 21:41:07', NULL, NULL, NULL),
(22, '2020-02-04 00:42:02', '2020-02-04 00:42:02', '2020-02-03 21:42:02', NULL, NULL, NULL),
(23, '2020-02-04 00:45:40', '2020-02-05 00:45:47', '2020-02-03 21:45:40', NULL, 101, '2020-02-05 00:45:47'),
(24, '2020-02-04 02:45:13', '2020-02-04 02:45:13', '2020-02-03 23:45:13', NULL, NULL, NULL),
(25, '2020-02-04 02:52:13', '2020-02-04 02:52:13', '2020-02-03 23:52:13', NULL, NULL, NULL),
(26, '2020-02-04 02:55:14', '2020-02-04 02:55:14', '2020-02-03 23:55:14', NULL, NULL, NULL),
(27, '2020-02-04 02:56:41', '2020-02-04 02:56:41', '2020-02-03 23:56:41', NULL, NULL, NULL),
(28, '2020-02-04 02:59:22', '2020-02-04 02:59:22', '2020-02-03 23:59:22', NULL, NULL, NULL),
(29, '2020-02-04 03:01:05', '2020-02-04 03:01:05', '2020-02-04 00:01:05', NULL, NULL, NULL),
(30, '2020-02-04 03:02:16', '2020-02-04 03:02:16', '2020-02-04 00:02:16', NULL, NULL, NULL),
(31, '2020-02-04 03:07:03', '2020-02-04 03:07:03', '2020-02-04 00:07:03', NULL, NULL, NULL),
(32, '2020-02-04 03:07:48', '2020-02-04 03:07:48', '2020-02-04 00:07:48', NULL, NULL, NULL),
(33, '2020-02-04 03:08:57', '2020-02-04 03:08:57', '2020-02-04 00:08:57', NULL, NULL, NULL),
(34, '2020-02-04 03:11:36', '2020-02-04 03:11:36', '2020-02-04 00:11:36', NULL, NULL, NULL),
(35, '2020-02-04 03:13:15', '2020-02-05 15:25:04', '2020-02-04 00:13:15', NULL, 103, '2020-02-05 15:25:04'),
(36, '2020-02-04 03:14:45', '2020-02-04 03:14:45', '2020-02-04 00:14:45', NULL, NULL, NULL),
(37, '2020-02-04 03:15:39', '2020-02-04 03:15:39', '2020-02-04 00:15:39', NULL, NULL, NULL),
(38, '2020-02-04 03:21:49', '2020-02-04 03:21:49', '2020-02-04 00:21:49', NULL, NULL, NULL),
(39, '2020-02-04 03:24:05', '2020-02-04 03:24:05', '2020-02-04 00:24:05', NULL, NULL, NULL),
(40, '2020-02-04 05:59:42', '2020-02-04 05:59:42', '2020-02-04 02:59:42', NULL, NULL, NULL),
(41, '2020-02-04 15:27:14', '2020-02-04 15:27:49', '2020-02-04 12:27:14', NULL, 104, NULL),
(42, '2020-02-04 15:29:53', '2020-02-04 15:29:53', '2020-02-04 12:29:53', NULL, NULL, NULL),
(43, '2020-02-04 15:36:57', '2020-02-04 15:36:57', '2020-02-04 12:36:57', NULL, NULL, NULL),
(44, '2020-02-04 15:37:44', '2020-02-04 15:37:44', '2020-02-04 12:37:45', NULL, NULL, NULL),
(45, '2020-02-04 15:49:55', '2020-02-04 15:49:55', '2020-02-04 12:49:55', NULL, NULL, NULL),
(46, '2020-02-04 16:03:25', '2020-02-04 16:03:25', '2020-02-04 13:03:25', NULL, NULL, NULL),
(47, '2020-02-04 16:05:13', '2020-02-04 16:05:13', '2020-02-04 13:05:13', NULL, NULL, NULL),
(48, '2020-02-04 16:06:42', '2020-02-04 16:06:42', '2020-02-04 13:06:42', NULL, NULL, NULL),
(49, '2020-02-04 16:47:49', '2020-02-04 16:47:49', '2020-02-04 13:47:49', NULL, NULL, NULL),
(50, '2020-02-04 16:50:03', '2020-02-04 16:50:03', '2020-02-04 13:50:03', NULL, NULL, NULL),
(51, '2020-02-04 16:53:35', '2020-02-05 23:30:50', '2020-02-04 13:53:35', NULL, 110, '2020-02-05 23:30:50'),
(52, '2020-02-04 16:56:40', '2020-02-04 16:56:40', '2020-02-04 13:56:40', NULL, NULL, NULL),
(53, '2020-02-04 23:50:19', '2020-02-04 23:50:19', '2020-02-04 20:50:19', NULL, NULL, NULL),
(54, '2020-02-04 23:50:21', '2020-02-04 23:50:21', '2020-02-04 20:50:21', NULL, NULL, NULL),
(55, '2020-02-05 00:39:08', '2020-02-05 00:40:31', '2020-02-04 21:39:08', NULL, 105, '2020-02-05 00:40:31'),
(56, '2020-02-05 00:44:54', '2020-02-05 00:44:54', '2020-02-04 21:44:54', NULL, NULL, NULL),
(57, '2020-02-05 00:45:48', '2020-02-05 00:45:48', '2020-02-04 21:45:48', NULL, NULL, NULL),
(58, '2020-02-05 00:58:35', '2020-02-05 00:59:07', '2020-02-04 21:58:35', NULL, 101, '2020-02-05 00:59:07'),
(59, '2020-02-05 00:59:08', '2020-02-05 01:00:36', '2020-02-04 21:59:08', NULL, 101, '2020-02-05 01:00:36'),
(60, '2020-02-05 01:00:37', '2020-02-05 14:54:57', '2020-02-04 22:00:37', NULL, 101, '2020-02-05 14:54:57'),
(61, '2020-02-05 14:53:48', '2020-02-05 14:53:48', '2020-02-05 11:53:48', NULL, NULL, NULL),
(62, '2020-02-05 14:54:57', '2020-02-05 15:02:34', '2020-02-05 11:54:57', NULL, 101, '2020-02-05 15:02:34'),
(63, '2020-02-05 15:02:34', '2020-02-05 15:10:19', '2020-02-05 12:02:34', NULL, 101, '2020-02-05 15:10:19'),
(64, '2020-02-05 15:10:20', '2020-02-05 15:11:01', '2020-02-05 12:10:20', NULL, 101, '2020-02-05 15:11:01'),
(65, '2020-02-05 15:11:01', '2020-02-05 15:14:40', '2020-02-05 12:11:01', NULL, 101, '2020-02-05 15:14:40'),
(66, '2020-02-05 15:14:40', '2020-02-05 15:31:08', '2020-02-05 12:14:40', NULL, 101, '2020-02-05 15:31:08'),
(67, '2020-02-05 15:17:17', '2020-02-05 15:17:17', '2020-02-05 12:17:17', NULL, NULL, NULL),
(68, '2020-02-05 15:25:04', '2020-02-05 15:25:04', '2020-02-05 12:25:04', NULL, 103, NULL),
(69, '2020-02-05 15:29:54', '2020-02-05 15:29:54', '2020-02-05 12:29:54', NULL, NULL, NULL),
(70, '2020-02-05 15:31:09', '2020-02-05 15:32:06', '2020-02-05 12:31:09', NULL, 101, '2020-02-05 15:32:06'),
(71, '2020-02-05 15:32:06', '2020-02-06 03:59:13', '2020-02-05 12:32:06', NULL, 101, '2020-02-06 03:59:13'),
(72, '2020-02-05 22:11:05', '2020-02-05 22:11:05', '2020-02-05 19:11:09', NULL, NULL, NULL),
(73, '2020-02-05 23:29:49', '2020-02-05 23:29:49', '2020-02-05 20:29:49', NULL, NULL, NULL),
(74, '2020-02-05 23:30:50', '2020-02-05 23:30:50', '2020-02-05 20:30:50', NULL, 110, NULL),
(75, '2020-02-06 02:17:13', '2020-02-06 02:17:13', '2020-02-05 23:17:13', NULL, NULL, NULL),
(76, '2020-02-06 03:59:13', '2020-02-06 04:02:56', '2020-02-06 00:59:13', NULL, 101, '2020-02-06 04:02:56'),
(77, '2020-02-06 04:02:56', '2020-02-06 04:05:00', '2020-02-06 01:02:56', NULL, 101, '2020-02-06 04:05:00'),
(78, '2020-02-06 04:05:00', '2020-02-06 04:11:11', '2020-02-06 01:05:00', NULL, 101, '2020-02-06 04:11:11'),
(79, '2020-02-06 04:11:11', '2020-02-06 04:16:54', '2020-02-06 01:11:11', NULL, 101, '2020-02-06 04:16:54'),
(80, '2020-02-06 04:16:54', '2020-02-06 04:17:18', '2020-02-06 01:16:54', NULL, 101, '2020-02-06 04:17:18'),
(81, '2020-02-06 04:17:19', '2020-02-06 04:21:46', '2020-02-06 01:17:19', NULL, 101, '2020-02-06 04:21:46'),
(82, '2020-02-06 04:21:46', '2020-02-06 04:22:54', '2020-02-06 01:21:46', NULL, 101, '2020-02-06 04:22:54'),
(83, '2020-02-06 04:22:54', '2020-02-06 04:24:46', '2020-02-06 01:22:54', NULL, 101, '2020-02-06 04:24:46'),
(84, '2020-02-06 04:24:46', '2020-02-06 04:25:33', '2020-02-06 01:24:46', NULL, 101, '2020-02-06 04:25:33'),
(85, '2020-02-06 04:25:34', '2020-02-06 04:26:42', '2020-02-06 01:25:34', NULL, 101, '2020-02-06 04:26:42'),
(86, '2020-02-06 04:26:42', '2020-02-06 04:28:50', '2020-02-06 01:26:42', NULL, 101, '2020-02-06 04:28:50'),
(87, '2020-02-06 04:28:50', '2020-02-06 04:28:50', '2020-02-06 01:28:50', NULL, 101, NULL),
(88, '2020-02-06 14:28:41', '2020-02-06 14:28:41', '2020-02-06 11:28:42', NULL, NULL, NULL),
(89, '2020-02-06 16:10:18', '2020-02-06 16:10:18', '2020-02-06 13:10:18', NULL, NULL, NULL),
(90, '2020-02-06 16:12:06', '2020-02-06 16:12:06', '2020-02-06 13:12:06', NULL, NULL, NULL),
(91, '2020-02-06 16:23:54', '2020-02-06 16:23:54', '2020-02-06 13:23:54', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart_product`
--

CREATE TABLE `cart_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cart_product`
--

INSERT INTO `cart_product` (`id`, `created_at`, `updated_at`, `product_id`, `cart_id`, `deleted_at`, `qty`) VALUES
(2, NULL, NULL, 100, 4, NULL, 2),
(3, NULL, NULL, 2, 5, NULL, 3),
(4, NULL, NULL, 1, 8, NULL, 1),
(5, NULL, NULL, 39, 11, NULL, 2),
(6, NULL, NULL, 2, 23, NULL, 2),
(9, NULL, NULL, 3, 23, NULL, 1),
(10, NULL, NULL, 5, 34, NULL, 2),
(11, NULL, NULL, 99, 34, NULL, 1),
(14, NULL, NULL, 55, 35, NULL, 3),
(17, NULL, NULL, 20, 40, NULL, 1),
(19, NULL, NULL, 3, 41, NULL, 4),
(20, NULL, NULL, 39, 41, NULL, 1),
(21, NULL, NULL, 1, 45, NULL, 2),
(22, NULL, NULL, 3, 45, NULL, 1),
(23, NULL, NULL, 3, 51, NULL, 6),
(24, NULL, NULL, 2, 55, NULL, 1),
(25, NULL, NULL, 1, 55, NULL, 1),
(26, NULL, NULL, 8, 58, NULL, 1),
(27, NULL, NULL, 2, 60, NULL, 1),
(28, NULL, NULL, 2, 63, NULL, 1),
(29, NULL, NULL, 99, 63, NULL, 1),
(30, NULL, NULL, 8, 66, NULL, 1),
(31, NULL, NULL, 2, 70, NULL, 1),
(32, NULL, NULL, 100, 70, NULL, 1),
(33, NULL, NULL, 5, 51, NULL, 2),
(34, NULL, NULL, 2, 71, NULL, 1),
(35, NULL, NULL, 99, 81, NULL, 2),
(36, NULL, NULL, 5, 89, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `created_at`, `updated_at`, `name`, `category_id`, `deleted_at`) VALUES
(1, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Audio', NULL, NULL),
(2, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Instrumentos', NULL, NULL),
(3, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Discos', NULL, NULL),
(4, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Guitarra 1', 2, NULL),
(5, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Pianos', 2, NULL),
(6, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Auriculares', 1, NULL),
(7, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Parlantes', 1, NULL),
(8, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Metalica', 3, NULL),
(9, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Rolling stones', 3, NULL),
(11, '2020-02-05 16:54:22', '2020-02-05 16:54:22', 'Accesorios', NULL, NULL),
(12, '2020-02-05 16:54:44', '2020-02-05 16:54:44', 'Puas', 11, NULL),
(13, '2020-02-05 16:59:40', '2020-02-05 16:59:40', 'los tucu tucu', 3, NULL),
(14, '2020-02-05 17:06:26', '2020-02-05 17:06:26', 'Lerner', 3, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2019_12_29_201901_create_offers_table', 1),
(33, '2019_12_29_201902_create_paymentmethods_table', 1),
(34, '2019_12_29_201903_create_brands_table', 1),
(35, '2019_12_29_201904_create_categories_table', 1),
(36, '2019_12_29_201905_create_products_table', 1),
(37, '2019_12_29_201906_create_product_photos_table', 1),
(38, '2019_12_29_201907_create_recommended_table', 1),
(39, '2019_12_29_201908_create_offer__product_table', 1),
(40, '2019_12_29_201909_create_purchases_table', 1),
(41, '2019_12_29_201910_create_carts_table', 1),
(42, '2019_12_29_201911_create_cart_product_table', 1),
(43, '2020_01_16_200114_create_productpictures_table', 2),
(44, '2020_01_21_141504_alter_users_table', 2),
(45, '2020_02_04_141015_create_purchasesproductslist_table', 3),
(46, '2020_02_04_183931_alter_purchases_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `start_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `finish_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `factor` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `offers`
--

INSERT INTO `offers` (`id`, `name`, `user_id`, `start_at`, `finish_at`, `factor`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '50%', 1, '2020-01-16 02:32:30', '2020-01-16 02:32:30', 0.50, NULL, NULL, NULL),
(2, '25% de descuento', 5, '2020-01-16 02:33:02', '2020-01-16 02:33:02', 0.25, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paymentmethods`
--

CREATE TABLE `paymentmethods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paymentmethods`
--

INSERT INTO `paymentmethods` (`id`, `created_at`, `updated_at`, `name`, `deleted_at`) VALUES
(1, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Visa', NULL),
(2, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Debito', NULL),
(3, '2020-01-12 03:00:00', '2020-01-12 03:00:00', 'Efectivo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productpictures`
--

CREATE TABLE `productpictures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `src` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productpictures`
--

INSERT INTO `productpictures` (`id`, `created_at`, `updated_at`, `product_id`, `src`, `title`, `deleted_at`) VALUES
(1, '2020-02-01 23:21:19', '2020-02-02 00:06:44', 100, 'public/imagesProducts/8Y8sqzD0yrCNCLSdRqNnRiyjNygdl1PjWOg6rfpY.jpeg', NULL, NULL),
(2, '2020-02-01 23:21:19', '2020-02-01 23:21:19', 100, 'public/imagesProducts/87KZKfXbCubTGu2uc9F00ChnNp9rYdmkWDSHN07E.jpeg', NULL, NULL),
(3, '2020-02-01 23:21:20', '2020-02-02 00:03:29', 100, 'public/imagesProducts/8FSI6DGy1eceOxxOk3QLw1wRFtxEwuAVkEsIi9aY.png', NULL, NULL),
(4, '2020-02-02 00:05:59', '2020-02-02 00:05:59', 100, 'public/imagesProducts/TwYiH16XzLlzGi2SgiN46UbLtIGTIybEIxTDeRMe.jpeg', NULL, NULL),
(5, '2020-02-03 17:09:25', '2020-02-03 17:09:25', 11, 'public/imagesProducts/tWG2b1HaFYPMIWM5bBUcM46UmH6SrlmlYdo5z2jq.jpeg', NULL, NULL),
(6, '2020-02-03 17:09:25', '2020-02-03 17:09:25', 11, 'public/imagesProducts/hgIPh962U6M1gyZhBwW1M2Yj7bpipRVKQLoE82Ys.jpeg', NULL, NULL),
(7, '2020-02-03 17:09:25', '2020-02-03 17:09:25', 11, 'public/imagesProducts/k5eA28fgHo1U3QtOPQNWCg9ad6ykFCet9sHiA9he.jpeg', NULL, NULL),
(8, '2020-02-03 17:09:26', '2020-02-03 17:09:26', 11, 'public/imagesProducts/auTB40XIomNCnSJiijRBLMFGZ0bWMNFvC7XlH5Lq.jpeg', NULL, NULL),
(9, '2020-02-03 17:11:29', '2020-02-03 17:11:29', 14, 'public/imagesProducts/89yCGcbxuHCbHGDTxM1hfIe3yG0q0feL9Zg4Mi5f.png', NULL, NULL),
(10, '2020-02-03 17:11:29', '2020-02-03 17:11:29', 14, 'public/imagesProducts/X7rdsolXlQ1zJouUxxt0s4gE6AW4QreV9syHR8bN.png', NULL, NULL),
(11, '2020-02-03 17:11:29', '2020-02-03 17:11:29', 14, 'public/imagesProducts/APIqtorT1vxEH2M0aZdB9YmR7PRlqYJvmT6AnXSo.png', NULL, NULL),
(12, '2020-02-03 17:11:29', '2020-02-03 17:11:29', 14, 'public/imagesProducts/dVCTxzaSMFIzOVKhWIpSS2EuAhjLu1LE7DgD9lsR.jpeg', NULL, NULL),
(13, '2020-02-06 05:02:54', '2020-02-06 05:02:54', 39, 'public/imagesProducts/HrsMDruj1BxbafqDneP9bwjQzj4BydTSUmuprztR.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specifications` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `brand_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `offer_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `created_at`, `updated_at`, `name`, `description`, `specifications`, `price`, `category_id`, `brand_id`, `deleted_at`, `stock`, `offer_id`) VALUES
(1, '2020-01-16 05:29:36', '2020-01-16 05:29:36', 'Laborum.', 'Reprehenderit dolores repellendus corporis et error facilis. Quia aut qui ipsa quam pariatur.', 'Iste tempora dolores non eligendi adipisci est. Quod reprehenderit vitae nobis nisi. Laborum ad et rerum error.', 177502.75, 7, 1, NULL, 30, 2),
(2, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Voluptas placeat.', 'Consectetur velit est maxime. Reiciendis et voluptatibus quisquam.', 'Voluptas et officia quidem eveniet pariatur hic. Eveniet voluptas corporis id sunt cum neque minus. Molestias blanditiis ea quaerat vel pariatur quaerat.', 120263.46, 7, 1, NULL, 54, 1),
(3, '2020-01-16 05:29:37', '2020-02-05 00:29:32', 'Alias soluta vero.', 'Quos nesciunt incidunt magni quibusdam eaque. Eum laudantium itaque sint ea. Et ducimus at adipisci corporis enim fugiat ratione.', 'Distinctio voluptatem totam asperiores optio ipsum ut quia magnam. Unde quia aut quaerat. Praesentium tempora aut voluptas labore quo necessitatibus. Illo dolore dicta recusandae repellat repudiandae est ab. Corrupti atque sapiente doloribus id ab est.', 127547.23, 7, 1, '2020-02-05 00:29:32', 52, 2),
(4, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Molestiae ut.', 'Non veniam et molestiae magni. Consequuntur cupiditate ea pariatur atque temporibus perferendis natus.', 'Aliquid eligendi aliquid quae amet occaecati. Ad natus eum et sit mollitia asperiores fuga. Distinctio officia ducimus rerum.', 35010.33, 5, 1, NULL, 7, NULL),
(5, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Non omnis neque.', 'Animi voluptas fugiat eum voluptatum debitis rem. Dolores minus perspiciatis sint provident.', 'Illum earum neque error et. Voluptatem sint doloremque modi repudiandae. Velit ut eveniet assumenda vel reprehenderit maxime nulla. Veniam voluptatem voluptas placeat eligendi.', 75281.12, 5, 1, NULL, 97, 2),
(6, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Harum quasi qui.', 'Molestiae quia quaerat aut perferendis qui rerum. Autem in rerum aut fugiat molestias laudantium qui provident.', 'Nesciunt ipsam illo sit fuga consequatur. Aperiam ullam voluptate error est nulla iure est. Qui esse et reiciendis minus omnis. Eum eius nobis aliquam aut in.', 391047.74, 5, 1, NULL, 43, NULL),
(7, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Quia perspiciatis.', 'Labore soluta distinctio sunt. Maiores quae error temporibus perferendis hic. Excepturi sint praesentium ut architecto eaque.', 'Aut blanditiis soluta voluptatibus suscipit. Fuga ut quia eum id quibusdam sint impedit. Nemo autem minima minima veniam quod.', 825497.00, 5, 1, NULL, 3, NULL),
(8, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Cupiditate id.', 'Sint magni pariatur aperiam fugit. Et corporis vero unde. Quam eligendi eum sapiente perferendis voluptatibus vel qui. Commodi est dolorem non aperiam.', 'Laudantium at vel et. Autem non dolorum deleniti quo non voluptatibus laborum. Est omnis officiis deleniti veniam sed tenetur. Sint quisquam ut tempora repudiandae earum dolor dolor.', 596772.53, 6, 1, NULL, 22, NULL),
(9, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Facilis totam.', 'Tempora eos occaecati odit. Vero illo praesentium veritatis iure repellendus blanditiis reprehenderit libero. Aut placeat voluptatem optio. Voluptatibus enim esse dignissimos qui hic.', 'Inventore consequatur at assumenda voluptates ducimus optio. Sunt delectus minima est sit. Sunt et doloribus corrupti cum. Vel quia eum nisi qui enim commodi.', 774824.60, 5, 1, NULL, 71, NULL),
(10, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Eos ex ducimus.', 'Et laudantium dolorem voluptas aut porro. Fugiat sunt vero libero ea impedit. Ullam rerum voluptatem expedita excepturi.', 'Omnis et est iure. Reprehenderit quis temporibus sapiente cumque corporis rerum et. Rerum alias in qui mollitia dignissimos necessitatibus consectetur.', 810384.14, 7, 1, NULL, 23, NULL),
(11, '2020-01-16 05:29:37', '2020-02-03 18:52:29', 'Eos et fuga.', 'Aut dolorem ex autem rerum. Sapiente sunt quibusdam incidunt dolorem. Rem ut quidem sit et nam praesentium architecto dolore. Minima autem magnam asperiores.', 'Expedita totam ipsum non corrupti dolores. Quia sit eveniet reiciendis nulla. Perspiciatis culpa et ullam rem quo laborum quia aliquam. Modi adipisci animi voluptas beatae aut et deleniti in.', 920137.93, 4, 1, '2020-02-03 18:52:29', 99, NULL),
(12, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Soluta inventore.', 'Nemo dicta sed enim natus quis. Et quaerat laborum facere omnis enim. Blanditiis eveniet molestiae doloribus ullam molestiae.', 'Veniam deserunt magni sunt consequatur necessitatibus nemo. Ut et aperiam sapiente saepe minima iusto dolorem. Consectetur vitae quia omnis dignissimos voluptatum est. Qui nemo distinctio dignissimos in.', 650727.27, 6, 1, NULL, 54, NULL),
(13, '2020-01-16 05:29:37', '2020-02-03 19:03:32', 'Corporis.', 'Dolor officia perferendis est accusantium quibusdam in omnis tempore. Eius iusto beatae autem. Dolores odit maxime eius aut quia debitis maiores. Laudantium quaerat maxime aut reiciendis iure eos.', 'Et dolorem maxime nam est rerum aut nihil. Id at animi est accusantium vel. Velit neque modi commodi.', 811068.39, 4, 1, '2020-02-03 19:03:32', 66, NULL),
(14, '2020-01-16 05:29:37', '2020-02-03 19:24:55', 'Exercitationem.', 'Quam cumque voluptatem nostrum in totam iure dolor. Officiis ut commodi temporibus cumque nihil. Voluptatibus est unde rerum consequatur quia ullam et.', 'Cumque exercitationem ut quam et quam molestiae. Dolores tempore aut et reiciendis. Consectetur ducimus veniam voluptatem adipisci velit ipsa itaque. Suscipit quod culpa sit magni dolor voluptates sed animi.', 986311.19, 4, 1, '2020-02-03 19:24:55', 79, NULL),
(15, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Fugiat ut qui qui.', 'Ex voluptatem sapiente vero quia assumenda adipisci. Molestias similique in ipsum omnis autem ducimus perspiciatis. Sed esse accusamus corrupti ut architecto praesentium. Asperiores sunt voluptatibus accusantium molestias cum est.', 'Iste esse beatae eos sunt quis aperiam. Fugiat et blanditiis placeat est et inventore voluptatem. Laboriosam officia exercitationem vero odio tempora. Ipsam voluptatem et amet illum.', 281867.93, 6, 1, NULL, 80, NULL),
(16, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Quia.', 'Eum fugit pariatur recusandae. Veniam quia reiciendis voluptate sed voluptate. Facere officiis voluptas ut consequatur inventore inventore temporibus eveniet.', 'Quidem quia sed est qui atque. Eum expedita quas facere occaecati. Quo quia consequatur consequatur dolorem.', 916014.13, 7, 1, NULL, 0, NULL),
(17, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Enim recusandae.', 'Tenetur neque sunt non debitis dolore fugit. Doloribus molestias eum totam incidunt. Similique eum non illum.', 'Consequatur et sunt sed in. Quibusdam optio ab suscipit eligendi.', 294648.14, 7, 1, NULL, 97, NULL),
(18, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Officiis qui vel.', 'Inventore eveniet aut voluptatibus. Quae placeat vitae suscipit qui excepturi non et et. Iste quo ex incidunt. Quasi deleniti nesciunt autem architecto non.', 'Ipsa suscipit ut soluta nostrum. Debitis eum aut blanditiis cupiditate dicta ut modi. Laudantium non id magni laudantium maxime delectus. Numquam aut culpa quis quo sed consequatur.', 562475.89, 5, 1, NULL, 11, NULL),
(19, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Omnis accusamus.', 'Illo et placeat qui temporibus sit et at. Alias nihil culpa mollitia quo. Doloribus consequatur animi et ad velit omnis consequatur.', 'Repellat maxime repellat in nemo. Et nihil nulla quis dolores. Ipsam quasi non sit aut perspiciatis sed quia.', 814882.55, 5, 1, NULL, 3, NULL),
(20, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Consequatur.', 'Occaecati nobis quaerat nisi qui dolores. Fugiat quod ut dolores aspernatur cum harum minima et. Rerum recusandae dolore totam nihil asperiores necessitatibus.', 'Ad molestiae libero porro sunt nihil. Eum quod et quas nihil modi pariatur. Rerum nisi est sapiente perspiciatis minima velit nam. Eveniet nobis deleniti architecto qui.', 17814.47, 6, 1, NULL, 87, NULL),
(21, '2020-01-16 05:29:37', '2020-02-03 19:25:50', 'Aut voluptatem.', 'Dicta et dolorem quis quia dolores ea. Occaecati ipsa est amet maiores modi at. Officia eligendi est placeat repellat aut et minus. Ab earum dignissimos cum aut.', 'Consequatur necessitatibus rerum veritatis earum a. Mollitia sunt et ratione id delectus qui autem iure. Dolorem et fuga qui. Occaecati est ullam optio ad neque eveniet. Id voluptates et asperiores sapiente odio doloribus molestiae occaecati.', 642655.93, 4, 1, '2020-02-03 19:25:50', 72, NULL),
(22, '2020-01-16 05:29:37', '2020-02-03 19:26:20', 'Architecto saepe.', 'Expedita velit et vel dicta. Neque nisi corporis tenetur voluptatem ut corrupti dolorem et. Atque ipsa earum necessitatibus molestiae.', 'Reprehenderit quibusdam quis iste qui officiis. Doloremque inventore qui qui. Sequi perferendis sunt quibusdam commodi quibusdam debitis accusantium. Temporibus nihil quisquam est atque omnis consequatur quisquam id.', 710203.45, 4, 1, '2020-02-03 19:26:20', 24, NULL),
(23, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Sint dolores illo.', 'Sint perspiciatis eum aut omnis nihil nihil. Accusantium earum pariatur qui impedit unde sunt dolore. Iste delectus odit ea omnis explicabo dolorem exercitationem. Voluptatibus unde atque quia.', 'At aperiam recusandae consequuntur sunt dolores. Dolorem velit cupiditate quia est necessitatibus et. Voluptatibus ut consectetur officiis architecto ut. Et possimus sed iusto fugit dolorem neque culpa consequatur.', 789089.07, 7, 1, NULL, 83, NULL),
(24, '2020-01-16 05:29:37', '2020-02-03 19:27:21', 'Dolores ullam non.', 'Dicta totam vel vel quia. Et dolore consequatur consequatur repudiandae. Recusandae possimus quos eos quia dignissimos molestias esse. Suscipit sit quo distinctio placeat temporibus fugiat.', 'Et necessitatibus et rerum sapiente. Aut vitae vel ea ipsum ratione iste.', 354950.64, 4, 1, '2020-02-03 19:27:21', 86, NULL),
(25, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Qui itaque vero.', 'Molestiae amet cumque deleniti vel et blanditiis. Optio corporis explicabo numquam.', 'In harum numquam autem eos iusto quae. Dolorum ut molestiae incidunt modi nam facilis iste. Quasi architecto nihil nihil cupiditate commodi.', 636557.62, 5, 1, NULL, 92, NULL),
(26, '2020-01-16 05:29:37', '2020-01-16 05:29:37', 'Eum illum.', 'Veritatis amet deleniti distinctio deserunt recusandae temporibus architecto. Architecto libero optio sit aut. Iste sapiente aut laboriosam occaecati hic. Rerum autem assumenda quos repellendus voluptas ut.', 'Quis ratione autem sed temporibus saepe aut voluptas. Nam deleniti sint beatae. Quidem libero est architecto nulla numquam cum.', 664393.34, 6, 1, NULL, 18, NULL),
(27, '2020-01-16 05:29:37', '2020-02-03 19:28:42', 'Animi et.', 'Velit ea odio quam sunt corrupti. Sed fugit ut eveniet dolorum deleniti corporis. Culpa est consequatur et quis modi sint voluptatum. Cumque tempore sint ab pariatur qui.', 'Quidem enim ea ipsam qui numquam dolor mollitia porro. Voluptas omnis quis minima aut corrupti. Qui aut magnam qui harum ratione eum. Beatae pariatur et fugit harum iure.', 999722.54, 4, 1, '2020-02-03 19:28:42', 3, NULL),
(28, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Et ut dolor.', 'Facilis temporibus dolores aperiam qui voluptates a. Quia reiciendis tempora voluptatem aliquam quia facere. Ipsam sunt quos nam alias aperiam assumenda. Enim sit id est.', 'Exercitationem impedit provident est corporis corrupti laboriosam. Similique est modi nulla aliquid. Expedita recusandae officia iste optio nemo molestiae. Est corporis et est odit temporibus officia. Et dolorem velit aliquam excepturi atque.', 72997.29, 5, 1, NULL, 85, NULL),
(29, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Error est iste.', 'Quam voluptatem alias vero cumque. Est accusamus et saepe voluptatem cum voluptates esse.', 'Architecto delectus reiciendis ut cumque non repudiandae delectus. Iste quia tenetur voluptatem consectetur est autem corporis dolor. Dignissimos praesentium ipsam autem vel nobis.', 967110.35, 7, 1, NULL, 60, NULL),
(30, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Sed praesentium.', 'Rerum ut distinctio et est mollitia ex quia perspiciatis. Cupiditate reprehenderit deleniti qui expedita nostrum. Delectus rerum fugit doloribus est expedita et. Repudiandae doloremque est ullam optio blanditiis.', 'Harum ut et totam voluptatum. Minima dolore laborum omnis sit inventore iste. Et saepe in ipsum quidem nostrum. Fugit non reiciendis enim repellat non omnis. Quo molestiae possimus unde commodi molestiae.', 672354.37, 6, 1, NULL, 18, NULL),
(31, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Quod quis et quis.', 'Culpa consectetur ad nostrum sed pariatur suscipit sit. Fugit impedit fuga eveniet nobis eligendi aliquam qui. Et animi a occaecati blanditiis.', 'Suscipit iure et modi. Porro expedita occaecati neque quos harum eum. Eveniet quod et atque aperiam molestias id.', 847871.59, 7, 1, NULL, 11, NULL),
(32, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Vitae eaque ut.', 'Sit corrupti nihil velit ut id voluptatem. Ducimus non voluptas aperiam voluptas. Praesentium voluptates neque occaecati et sit. Praesentium laborum et consequatur minima omnis eligendi.', 'Necessitatibus autem et voluptatem iure animi reprehenderit voluptas architecto. Debitis delectus adipisci qui quo corrupti aut explicabo. Corrupti dolor saepe nemo.', 508616.83, 5, 1, NULL, 85, NULL),
(33, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Tenetur nemo.', 'Quo sint aliquam beatae quia cumque id. Et fugit suscipit cum dolorum quae in eum.', 'Accusamus repellendus temporibus consequuntur omnis at earum est non. Alias facilis repudiandae nostrum nobis sunt laudantium fugit rerum. Est sed molestiae qui nobis. Quibusdam ut natus in ea.', 762895.70, 7, 1, NULL, 29, NULL),
(34, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Reprehenderit et.', 'Et sed error laudantium eligendi earum laboriosam corporis. Ut hic voluptatem aliquid consequatur veritatis magni. Officiis magnam quaerat id alias qui exercitationem. Maiores qui rem omnis excepturi et. Necessitatibus nihil atque suscipit est.', 'Quia porro corrupti id. Similique doloremque vel incidunt dolore ut. Aut assumenda at molestias et quis magni.', 826968.32, 7, 1, NULL, 75, NULL),
(35, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Vitae vel.', 'Deleniti ipsam adipisci illum reiciendis rerum. Sapiente perspiciatis fugiat quis enim vel qui sit. Nobis est ea doloribus ratione.', 'Quas reprehenderit asperiores soluta facere at adipisci. Recusandae non voluptas eius expedita deserunt.', 770949.42, 7, 1, NULL, 47, NULL),
(36, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Velit asperiores.', 'Consequatur laudantium beatae aut eum et voluptatibus qui provident. Officiis quasi eveniet quod. Illo soluta dolores ut nulla quis amet et. Laudantium vel deserunt incidunt voluptatem. Eligendi rerum ex omnis ex amet et.', 'Architecto aliquid ab laudantium adipisci eos. Ratione qui ratione quaerat laboriosam quia saepe id a. Magnam sit possimus ad aut esse dicta provident qui. Blanditiis sunt id tenetur temporibus ipsa in. Praesentium impedit optio mollitia similique placeat dolores consequatur.', 120441.48, 6, 1, NULL, 72, NULL),
(37, '2020-01-16 05:29:38', '2020-02-03 19:29:28', 'Fuga odit et hic.', 'Quod quibusdam ea voluptate facilis ut ex fugit. Omnis dolorem est aut iure itaque sunt deleniti. Delectus nesciunt iusto laboriosam pariatur aliquam consectetur.', 'Iure iste ut placeat culpa officia. Omnis fugiat voluptate vel sed modi qui repellat eum. Vel distinctio adipisci dolores consequuntur facere.', 124404.73, 4, 1, '2020-02-03 19:29:28', 78, NULL),
(38, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Rerum repellendus.', 'Vitae quo delectus animi beatae fugiat. Quia sed aperiam aut. Iste nemo necessitatibus possimus dolore impedit natus at. Corrupti ipsa culpa dolorum ut vel velit.', 'Quia dolorem voluptatem consequatur est dicta et praesentium unde. Enim perspiciatis dolorem enim eos ut ullam. Sed labore iste aut nihil perspiciatis et ratione.', 430035.29, 7, 1, NULL, 49, NULL),
(39, '2020-01-16 05:29:38', '2020-02-06 05:02:54', 'Aut praesentium.', 'Velit rem repellendus fuga voluptas possimus aut. Facilis omnis maiores officiis tempora sapiente nisi aut voluptatum. Odit itaque exercitationem facere recusandae molestiae. Quis quo eum qui laboriosam repudiandae eos totam possimus.', 'Blanditiis voluptatem et saepe maiores architecto et. Et quam illum totam. Quia amet illo iure quia. Et voluptatem ipsum voluptas nostrum.', 874666.62, 4, 1, NULL, 73, NULL),
(40, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Est sint cumque.', 'Assumenda itaque non illum. Fugiat reprehenderit est voluptatem facere consequatur facere quis. Doloribus sunt nihil sed quia.', 'Odio ipsam iste temporibus expedita voluptatem repellat. Ipsum magni veniam quod beatae. Aut sint quo dolorem tempora nemo. Consequatur est architecto incidunt consequatur maiores.', 731228.40, 7, 1, NULL, 24, NULL),
(41, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Ipsa aliquam ut.', 'Illo est delectus et dolor aut incidunt. Omnis veniam excepturi expedita temporibus et omnis. Rerum qui ipsam aliquam asperiores.', 'Eligendi facere tempora et est ut nam quia enim. Aperiam quia sequi doloremque voluptatem animi repudiandae id. Consequatur numquam cumque quidem aut dolorem earum.', 994156.55, 6, 1, NULL, 1, NULL),
(42, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Deserunt rerum.', 'Tenetur perspiciatis autem iusto eveniet ut quis similique. Occaecati non dolores quia asperiores quia. Consequuntur et cum ad eum placeat tenetur. Nihil beatae necessitatibus corporis autem et quo doloremque.', 'Corporis porro odio officia labore harum ad. In architecto laboriosam possimus ipsam et. Aut molestiae omnis ab quia et omnis nulla. Tempora rem laudantium facere.', 773246.18, 6, 1, NULL, 7, NULL),
(43, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Eum fugit ea.', 'Amet laborum quis et fuga ducimus totam repudiandae. Eligendi non sapiente dolorum. Sapiente aut et ab officia et.', 'Non consectetur delectus in repellendus vel nesciunt tempore aut. Exercitationem neque aliquam nemo iusto illum excepturi.', 109263.24, 6, 1, NULL, 50, NULL),
(44, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Blanditiis est.', 'Aut sit consequatur voluptas magnam. Neque dolores reprehenderit deleniti. Quae omnis distinctio cum aut officia ut fugit adipisci. Placeat ab recusandae ea qui. Ut dolor perspiciatis ut impedit a.', 'Soluta earum et repellendus quo. Commodi adipisci earum officiis nisi fugit et. Recusandae non voluptatem laudantium.', 51914.45, 5, 1, NULL, 71, NULL),
(45, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Dolore sed.', 'Sit alias et omnis omnis provident quia. Ea nisi omnis deserunt accusantium velit accusantium. Velit rerum aut sed ab nihil ex.', 'Officiis ut atque non inventore rerum vel. Veniam eligendi a ipsum porro dolor eaque.', 512375.45, 7, 1, NULL, 2, NULL),
(46, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Quisquam quasi et.', 'In alias sunt et rem sit qui laboriosam quia. Voluptatem vel laudantium accusantium neque at quae autem.', 'Maiores nobis impedit ut sapiente. Consequatur quia assumenda praesentium odit voluptatem ab. Aliquid dolorum unde sunt consequuntur voluptatem natus aut. Laboriosam possimus ad praesentium vel quod ut ut.', 696020.69, 7, 1, NULL, 47, NULL),
(47, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Mollitia sed.', 'Totam tempora ut ut alias maiores et voluptatem. Veniam quia dolores vitae quis. Aliquid et laborum tenetur veniam commodi veniam quia. Aut assumenda reiciendis accusamus ut reprehenderit et.', 'Dolor sunt quasi sit sed pariatur qui. Aut sit fuga voluptatem enim. Exercitationem hic occaecati voluptas ut est dolore mollitia.', 23152.54, 7, 1, NULL, 99, NULL),
(48, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Eveniet quo a.', 'Aut tempore iusto neque a. Illum illum vel consequatur impedit atque neque. Dicta minima voluptatum architecto nesciunt nulla enim. Voluptatem adipisci aperiam ut.', 'Sint cupiditate sunt nam. Eveniet omnis quia iusto dolor expedita et. Neque alias iure sed. Commodi ut eaque suscipit dolorem.', 384510.52, 6, 1, NULL, 0, NULL),
(49, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Laudantium quae.', 'In quia voluptatum ab maiores repudiandae praesentium recusandae. Omnis itaque quas labore quos. Illum soluta dicta sit ipsa incidunt adipisci corporis. Similique ad laborum quis quidem corrupti dolorum quia ullam.', 'Aut similique placeat cupiditate voluptas laudantium quia. Ea velit aut amet quaerat porro cum. Sed aut vel ab enim qui hic excepturi.', 624629.83, 4, 1, NULL, 85, NULL),
(50, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Voluptatem vitae.', 'Tenetur voluptas et nobis suscipit adipisci beatae. Sed quas quia sunt. Qui delectus ab voluptates blanditiis dolorem dolor inventore. Eveniet et beatae et vel explicabo molestias. Quidem blanditiis animi quia veritatis quo dolorum.', 'Adipisci non repellendus est dolorem reiciendis aspernatur. Pariatur vel impedit rerum sequi officiis cumque. Ut qui et tempore voluptate. Neque officia sequi quae temporibus ea id tempora.', 991908.00, 5, 1, NULL, 82, NULL),
(51, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Nihil temporibus.', 'Temporibus aut voluptatem totam. Quis illum harum doloremque. Nemo et eligendi nihil nisi et corporis est qui.', 'Laboriosam porro qui illum consequuntur. Deserunt laborum iure unde quas rerum rem. Similique aut repudiandae hic aspernatur. Explicabo perferendis molestias ut fugiat nam necessitatibus voluptas. Itaque repudiandae quis omnis.', 23735.20, 5, 1, NULL, 28, NULL),
(52, '2020-01-16 05:29:38', '2020-01-16 05:29:38', 'Omnis quaerat.', 'Facilis facilis accusantium mollitia et quam. Sint repudiandae ullam quae recusandae error. Delectus necessitatibus eos nemo rerum exercitationem deserunt animi aperiam.', 'Molestias et quibusdam sunt qui eos cupiditate. Modi consequuntur autem molestias temporibus ut odio. Sunt consequatur rerum ullam rerum ducimus rerum. Tenetur quas minus non est architecto ad porro.', 566410.64, 5, 1, NULL, 6, NULL),
(53, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Omnis soluta.', 'Non dolores repellendus aut nemo nulla. Et consequatur laudantium esse ut. Dolor totam officia suscipit minima. Deleniti culpa ipsam iste quis.', 'Repudiandae porro repellat eaque est ut corrupti eos. Qui aut quis qui vel id. Beatae beatae voluptatem sunt autem ex culpa.', 771943.48, 5, 1, NULL, 64, NULL),
(54, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Quibusdam id qui.', 'Accusamus quia hic eligendi aliquam nostrum ducimus voluptatem. Sint optio nulla voluptatem eum et sunt. In enim voluptatem ipsa aut quia saepe.', 'Veritatis dolorem asperiores et sit vel quasi repellendus. Rem laboriosam et quis eaque tempora ut.', 795978.17, 4, 1, NULL, 99, NULL),
(55, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Id voluptas.', 'Ipsam ipsam saepe molestias accusamus quae voluptatem nihil. Accusamus sed ut et impedit. Quo eos fugit harum doloremque blanditiis. Dolore et quaerat nesciunt.', 'Porro aliquam at totam. Dolores eos alias quis ex. Voluptatum dolores quia numquam maxime blanditiis.', 947201.65, 4, 1, NULL, 66, NULL),
(56, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Dolor non.', 'Est illo molestiae molestiae. Consequatur qui delectus illo ratione. Veniam quia saepe velit maiores architecto est. Dolorum amet quae quia deleniti voluptatibus et ipsam fugiat.', 'Dolorum sit blanditiis ipsum sequi. Veritatis accusamus velit sequi et aut. Et facilis ut atque quas debitis. Illo iusto eum officiis quia.', 28176.30, 6, 1, NULL, 1, NULL),
(57, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'In maiores.', 'Vitae hic harum unde voluptatibus debitis. Et et ut error qui aut facilis numquam. Eos alias aspernatur velit cumque sunt eum. Quisquam nesciunt numquam tempore sed.', 'Aperiam nemo aperiam necessitatibus deserunt consectetur. Pariatur neque earum quis eum aut est voluptatem. Et et consequatur numquam molestiae adipisci. Quod nihil dolore voluptates dolores facilis. Qui quod in architecto ea.', 473463.42, 5, 1, NULL, 97, NULL),
(58, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Voluptatem et.', 'Totam voluptatum nostrum eos laudantium et. Beatae quas explicabo exercitationem ipsam totam accusantium consectetur. Exercitationem a ratione laboriosam aspernatur labore totam qui.', 'Aliquid ut odit ad dicta qui quis labore. Amet at quia id laboriosam. Laudantium culpa voluptatem eum nobis sapiente.', 495298.02, 6, 1, NULL, 5, NULL),
(59, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Molestias neque.', 'Nulla ratione culpa rem voluptate laborum vel ipsa. Et tempore velit voluptas dolorum. Ea sapiente sunt labore corrupti nihil soluta dolorem. Magni animi est modi ea.', 'Sed accusamus rerum ex. Recusandae rerum quia deserunt id rem qui error aliquid. Voluptatibus ut ex at eaque molestiae. Quos corporis soluta distinctio tempora laudantium.', 500358.61, 6, 1, NULL, 4, NULL),
(60, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Doloribus nostrum.', 'Laudantium in maiores est vero molestias. Amet in ab consequatur dignissimos consectetur velit dolorem. Quidem voluptatibus totam reiciendis totam.', 'Quas aliquam sed adipisci ipsam. Eum nihil voluptatem incidunt voluptatibus culpa non incidunt. Porro culpa labore et quia qui nulla.', 130696.66, 5, 1, NULL, 83, NULL),
(61, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Provident odio.', 'Incidunt ut perferendis id dicta possimus alias. Ut facere molestias omnis deleniti cumque libero ut. Consequatur asperiores debitis atque dignissimos. Ipsam sint autem assumenda illo laudantium in quia.', 'Ex est facere praesentium maxime in temporibus qui. Qui doloribus ad molestiae et qui dignissimos similique. Nesciunt natus aut repellendus voluptatem doloremque vel corporis officiis. Et voluptatum officia itaque ratione.', 56541.56, 7, 1, NULL, 3, NULL),
(62, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Aperiam soluta.', 'Non error quae assumenda. Officia unde blanditiis dolores illum rerum quas.', 'Reprehenderit quidem vitae aspernatur aspernatur quaerat dolorum doloribus. Mollitia vero cum nesciunt adipisci nostrum magni adipisci. Corrupti dolor ducimus architecto laborum suscipit.', 172301.04, 4, 1, NULL, 61, NULL),
(63, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Sequi quia at.', 'Praesentium inventore voluptas accusantium totam reiciendis. Velit beatae ipsam quasi voluptatem aut nesciunt assumenda est. Natus rerum impedit tenetur molestias beatae sequi quasi.', 'Eius provident deleniti est eos. Eum rerum quia deleniti rerum eligendi. Molestias odit esse occaecati ad.', 234832.93, 5, 1, NULL, 36, NULL),
(64, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Nam recusandae.', 'Molestias omnis qui et optio. Consequatur soluta aut rerum molestiae ipsa est.', 'Reiciendis aut asperiores rerum omnis aut. Ex quod at accusamus aut. Voluptas incidunt a sed in eveniet. Aut nihil nihil est enim velit.', 153723.85, 7, 1, NULL, 37, NULL),
(65, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Quam qui ut non.', 'Sapiente laboriosam deleniti quidem qui consequuntur sunt. Dicta dolor id rerum laborum voluptates voluptatem laborum fuga. Unde blanditiis voluptatibus totam maxime ut omnis.', 'Error earum magni magnam ut alias cum. Excepturi explicabo velit sint nam.', 764040.11, 6, 1, NULL, 10, NULL),
(66, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Id est repellat.', 'Amet facere vel dicta. Illum debitis asperiores fugit numquam. Similique consequatur veniam molestiae dignissimos et. Ipsa natus tempore id blanditiis repellat laudantium. Labore delectus quod rem.', 'Omnis illum cum voluptas et. Dolores dolorum tenetur dolorem et aut in dolorem. Officia doloremque voluptatum facilis ut maiores eum excepturi.', 580643.41, 4, 1, NULL, 22, NULL),
(67, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Maiores nulla aut.', 'Voluptas sed quasi voluptas minus dolorem earum aperiam. Exercitationem provident pariatur aut eum. Veniam quasi quo rerum aperiam ut quia molestiae dolorum. Molestias necessitatibus placeat facilis iste.', 'Minus voluptatem quo consequuntur nihil molestiae. Totam quia recusandae temporibus tenetur sed. Deserunt ut culpa cumque in.', 721181.86, 7, 1, NULL, 91, NULL),
(68, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Beatae et neque.', 'Qui ut tenetur accusantium odio cum facere. Suscipit amet ut nam possimus sunt neque quis nam.', 'Aut iste similique voluptatibus. Quia soluta eos sit deserunt unde natus assumenda in. Voluptate alias saepe perferendis ipsum. Optio accusamus et et sequi omnis veniam.', 339485.27, 4, 1, NULL, 94, NULL),
(69, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Veritatis sint.', 'Id dolor eum temporibus nobis nulla. Vel porro animi fugiat itaque.', 'Repellendus pariatur voluptatibus numquam ut quia. Mollitia omnis ut pariatur et. Consequatur praesentium rerum ex in atque.', 207809.42, 5, 1, NULL, 25, NULL),
(70, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Porro voluptatem.', 'Laboriosam nam esse voluptates accusamus sapiente. Dolorem tenetur voluptas pariatur deserunt ut laborum natus. Aliquid molestias est doloremque minima vero qui. Optio et sed commodi aut. Sint qui non adipisci cumque facere.', 'Quis quidem cum provident a. Magni et tempora et quos fuga rerum similique. Ipsam rem accusantium ducimus eos autem veritatis. Odio tempore omnis eum ut ipsa occaecati nam.', 695307.41, 4, 1, NULL, 50, NULL),
(71, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Incidunt fugiat.', 'Soluta nemo quae delectus non veritatis. Facilis veritatis deleniti impedit ipsa. Rerum velit eius velit voluptates et.', 'Deserunt veniam sit perspiciatis et in eaque. Reprehenderit quae ut labore repellendus harum in sed numquam. Dolor suscipit fugit quas enim voluptatum sit.', 475139.01, 6, 1, NULL, 80, NULL),
(72, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Aspernatur.', 'Et dicta labore quod eos rerum. Qui iusto porro aliquid rerum natus aut. Quo quis asperiores non aliquam commodi blanditiis. Nemo et excepturi vitae.', 'Ut non non fuga molestiae. Distinctio perferendis vel similique dicta. Minima sit perferendis et consequatur fugit vel placeat. Officiis aut non quas rerum doloremque.', 817647.20, 7, 1, NULL, 6, NULL),
(73, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Eos sint commodi.', 'Deserunt et provident architecto quaerat est laborum. Commodi quaerat laborum libero tempore quaerat sit illum. Fuga et non aut ratione adipisci voluptatem.', 'Aperiam ex voluptates similique et autem fuga quos. Et dignissimos qui maiores quis vel nesciunt ullam.', 779790.09, 5, 1, NULL, 72, NULL),
(74, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Facilis enim enim.', 'Et quidem similique magni autem sequi. Et praesentium esse vero velit architecto et. Occaecati ea et minus et.', 'Quod et quasi sint debitis. Nobis maiores enim error non pariatur autem sunt. Sunt saepe minima commodi. Distinctio voluptatem tempore voluptate voluptatem.', 610235.85, 6, 1, NULL, 80, NULL),
(75, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Quis tenetur.', 'Quis officia officia est sunt. Accusantium architecto in similique nesciunt quo. Omnis nisi non culpa similique.', 'Vitae est vero perferendis distinctio quibusdam totam. Et distinctio eius repellendus vero laboriosam. Similique et error placeat quia quam eum architecto.', 540661.58, 7, 1, NULL, 85, NULL),
(76, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Modi nihil.', 'Nobis aut eos quia voluptatem voluptas. Repudiandae mollitia deserunt qui explicabo expedita numquam. Laudantium asperiores sed aspernatur praesentium blanditiis. Quos amet dolorum voluptas iusto dolorem corrupti.', 'Saepe debitis ut aut ducimus voluptatem illo neque. Laudantium illum accusamus mollitia odio unde debitis ipsa nisi. Nihil itaque rerum at nihil quia.', 662910.16, 5, 1, NULL, 58, NULL),
(77, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Assumenda et.', 'Et aut temporibus ex sapiente ipsum magni. Numquam sunt ad fugit omnis distinctio qui.', 'Recusandae omnis commodi voluptatem architecto magnam expedita. Minus amet et pariatur sed ex. Ipsam ut voluptates porro aut ea.', 315370.38, 5, 1, NULL, 100, NULL),
(78, '2020-01-16 05:29:39', '2020-01-16 05:29:39', 'Ut voluptas amet.', 'Velit repudiandae incidunt quia voluptatem necessitatibus et qui incidunt. Aut atque adipisci sint ipsum. Excepturi qui esse sed adipisci.', 'Sapiente ullam et consectetur tempora delectus. Maxime sed deleniti asperiores nobis et sed. Tenetur aspernatur atque expedita eligendi dolores totam.', 415239.70, 7, 1, NULL, 70, NULL),
(79, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Tempora pariatur.', 'Accusantium reiciendis et facilis consequuntur quaerat fugit. Et ullam et sunt voluptates eum. Natus error deserunt ut. Porro optio ut omnis repudiandae eligendi a id.', 'Odio sint quia quasi fugiat repellat consequuntur sed. Corrupti aut id aut libero praesentium facilis. Repudiandae necessitatibus et nulla itaque et.', 239367.25, 4, 1, NULL, 44, NULL),
(80, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Adipisci corporis.', 'Dolore odio architecto temporibus. Qui dolorem error iure voluptatem sed sequi. Quia nisi reprehenderit temporibus voluptatem modi animi ut. Nihil molestiae dolores est mollitia ab.', 'Necessitatibus qui velit et rerum. Perspiciatis nam qui voluptatibus aliquam. Voluptate ut omnis necessitatibus rerum pariatur.', 276078.30, 6, 1, NULL, 53, NULL),
(81, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Sunt ut quasi.', 'Maiores voluptates et ex est dolorem exercitationem. Ducimus suscipit placeat qui qui cupiditate. Quos magni accusantium consequatur expedita mollitia distinctio consequatur enim.', 'Nulla alias est itaque est consectetur dolor. Qui aut nisi consequatur. Eum dolorum rerum tempora sed eum molestiae quo. Eaque occaecati esse nulla aut rem accusantium voluptatem.', 853474.23, 7, 1, NULL, 15, NULL),
(82, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Ipsum quis quidem.', 'Facilis optio ut neque ut. Et voluptatibus illum porro non. Reprehenderit atque eos repudiandae fuga voluptas.', 'Delectus minima quibusdam officiis est quia. Molestiae minima repellendus maiores accusantium accusamus ratione.', 519308.80, 5, 1, NULL, 71, NULL),
(83, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Odio dolores et.', 'Veritatis enim est exercitationem eum voluptate. Nemo enim quis beatae velit. Voluptatem aut molestias deleniti corporis. Ad quibusdam quae facilis voluptatibus.', 'Sit est suscipit ullam sint qui quasi. Quos id iste voluptatem iure molestias porro officiis dignissimos. Consequatur eaque reprehenderit aut dolor quae. Odit aperiam ab sunt atque ratione impedit est.', 944620.03, 5, 1, NULL, 83, NULL),
(84, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Non molestiae rem.', 'Asperiores sunt mollitia deserunt praesentium ullam iusto et. Maiores quia sunt suscipit sit quisquam et temporibus ut. Sunt quam optio ducimus.', 'Voluptatem facere aut in assumenda. Quia consequatur eos velit eligendi necessitatibus consequatur. Enim error tenetur molestias quibusdam qui iusto veritatis quae. Officia officiis ab exercitationem neque.', 904755.57, 7, 1, NULL, 43, NULL),
(85, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Iusto incidunt.', 'Unde qui qui non cupiditate. Sed sequi perspiciatis ducimus assumenda ipsum deleniti. Vitae quis commodi aut fuga beatae.', 'Tenetur nemo non laudantium qui qui qui sed. Rerum labore ullam quo eligendi. Consequatur non quae dolorem et quis et ullam.', 189818.91, 4, 1, NULL, 43, NULL),
(86, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Alias quaerat non.', 'Atque quam aut qui. Temporibus minus aliquid eligendi laudantium neque deserunt rerum vel.', 'Excepturi non fuga totam est quo saepe velit. Commodi omnis magni vel temporibus. Enim deleniti omnis vero id. Aperiam maxime et aspernatur error.', 211700.80, 6, 1, NULL, 63, NULL),
(87, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Aut voluptatem.', 'Et quas blanditiis nobis et hic dolore ipsum. Et debitis rem eos. Et velit quidem veniam possimus voluptatem. Iure voluptatem inventore possimus odit quibusdam labore maiores.', 'Quod laboriosam et molestias ut et nisi consectetur. Minima distinctio quisquam rerum ipsam officiis ipsum quam. Qui rerum vitae unde molestiae quasi laboriosam. Est velit magni rerum vero nisi molestias.', 200642.29, 6, 1, NULL, 92, NULL),
(88, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Sapiente.', 'Non sunt rem eum. Sed doloremque ratione quidem sit. Veritatis cupiditate et nihil hic doloribus aspernatur harum. Debitis ipsam et nihil suscipit dolor dolores.', 'Quia ea consequatur quisquam eligendi non. Optio exercitationem quasi ut repellat. Sit quia expedita quos ex quam repellat.', 95916.88, 6, 1, NULL, 28, NULL),
(89, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Suscipit rerum.', 'Ut suscipit aspernatur vel ex omnis enim dolorum. Optio doloribus quia tempore ea sit. Qui sed quasi quam consequatur quas ea cumque.', 'Quos consequatur veniam ea assumenda voluptas magni eos dolor. Animi velit voluptas hic est aperiam aut enim eos. Nesciunt sit quia ipsa. Aut sint aut mollitia deserunt voluptas molestiae.', 49026.23, 5, 1, NULL, 46, NULL),
(90, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Ea maxime eius.', 'Velit suscipit non quas aspernatur. Suscipit magnam ipsam excepturi harum delectus consequatur. Iure voluptas optio dicta autem eveniet commodi aspernatur. Ullam eum eos quo.', 'Voluptatem totam aut adipisci autem. Iusto impedit eos temporibus voluptas. Vero porro repellendus impedit dolores. Consequatur ad praesentium minus. Accusamus enim molestias omnis nihil est.', 173665.26, 6, 1, NULL, 28, NULL),
(91, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Exercitationem.', 'Nemo voluptatem cum dolorum repellendus molestiae repellendus. Error omnis debitis doloribus sint assumenda earum alias. Omnis optio ad explicabo ipsum rerum id quia. Minima voluptate quam voluptatum occaecati ipsam consequatur et.', 'Maxime est porro fugiat pariatur similique. Repellendus voluptatem quidem dignissimos et ea aut est. Corrupti perferendis nihil possimus. Voluptate inventore enim qui tenetur.', 36841.71, 4, 1, NULL, 76, NULL),
(92, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Quisquam laborum.', 'Et enim eius quia eveniet. Eveniet ut placeat asperiores. Nam impedit qui et eaque reprehenderit in et.', 'Sed id reiciendis eligendi voluptas adipisci neque. Veniam cupiditate qui voluptas amet animi error laboriosam. Totam quia architecto id quia dolorem libero.', 124579.91, 7, 1, NULL, 3, NULL),
(93, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Nihil ut repellat.', 'Sint quibusdam nihil non. Culpa cum voluptate dolores quos eos. Quas sint itaque labore aliquam dolore minus autem. Quae eos dolorem possimus et omnis.', 'Modi expedita consequatur accusantium nihil architecto sed neque. Odio harum et et velit dolor. Odit deleniti et earum. Eaque at velit error commodi corporis natus cumque.', 671285.78, 4, 1, NULL, 12, NULL),
(94, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Id atque corrupti.', 'Quam est velit nihil reiciendis. Nisi et ut nam perspiciatis. Non iure sed rem eligendi. Est ipsum totam voluptas hic sed non.', 'Autem est quos eveniet veniam. Eligendi saepe quaerat sed expedita. Mollitia reiciendis unde rerum ut architecto quia. Vel alias iste sint impedit commodi. Aliquam rem repellendus ut similique totam qui.', 652758.91, 4, 1, NULL, 59, NULL),
(95, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Quia harum.', 'Quae consequatur modi officia in quia corrupti sapiente. Ipsum quo accusamus repudiandae quidem. Provident facere inventore sit rerum quis.', 'Quidem excepturi molestiae et quo minima. Nostrum non aut culpa in veniam eos nostrum quia. Ex autem vitae numquam recusandae nam. Alias sint ea nihil distinctio tenetur cupiditate accusamus id. Sint maxime modi sapiente odio.', 217222.04, 7, 1, NULL, 18, NULL),
(96, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Qui eveniet.', 'Qui numquam fugiat nulla similique quas a. Similique rerum molestiae eius.', 'Velit est iste qui ea excepturi magni. Inventore incidunt a tempore. Cupiditate modi itaque omnis est velit. Sunt praesentium et recusandae.', 76247.87, 7, 1, NULL, 28, NULL),
(97, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Nostrum placeat.', 'Quia saepe ratione voluptatibus. Architecto rerum laboriosam blanditiis necessitatibus vitae. Est eos iure exercitationem minus.', 'Repellendus eveniet atque libero voluptatem. Voluptatibus recusandae aliquam odit quia. Quod doloremque maiores ut rerum dolor. Recusandae est vel ex accusantium et commodi.', 781982.64, 4, 1, NULL, 94, NULL),
(98, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Voluptatibus.', 'Architecto voluptatem veritatis est quaerat et eum. Placeat iusto sint odio unde aut porro debitis incidunt. In blanditiis reprehenderit veniam quas consequatur aut in error.', 'Dignissimos nesciunt adipisci praesentium culpa sit. Commodi hic labore in pariatur et impedit. Labore vel vero vel explicabo eaque et aut. Incidunt quos nihil quod eius.', 903662.38, 5, 1, NULL, 75, NULL),
(99, '2020-01-16 05:29:40', '2020-01-16 05:29:40', 'Sint recusandae.', 'Quasi asperiores ut ut recusandae est et similique. Explicabo reiciendis sed asperiores commodi. Qui aut error exercitationem nihil enim repudiandae. Et eos sed sint aut sequi deleniti occaecati tempore.', 'Praesentium dolore aliquid enim cum optio aut quo. Qui adipisci minus rerum ratione veniam non quo eos. Maiores quo repudiandae ad totam soluta enim explicabo ut.', 686869.24, 4, 1, NULL, 100, 2),
(100, '2020-01-16 05:29:40', '2020-02-02 00:06:44', 'Architecto illo.', 'Aut earum et aut exercitationem. Molestiae fugit tempore dolor eum ut earum. Ut quae rerum et fugiat.', 'Illo iure animi rerum sit dicta quod. Sit amet architecto aperiam officiis cumque aut voluptate voluptatum. Temporibus autem qui qui vel. Et sint nostrum animi est sed.', 51646.17, 6, 1, NULL, 71, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `paymentmethod_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `purchases`
--

INSERT INTO `purchases` (`id`, `total_price`, `paymentmethod_id`, `user_id`, `created_at`, `updated_at`, `deleted_at`, `cart_id`) VALUES
(1, 765283.38, 2, 110, '2020-02-05 00:10:22', '2020-02-05 00:10:22', NULL, 51),
(2, 765283.38, 3, 110, '2020-02-05 00:20:23', '2020-02-05 00:20:23', NULL, 51),
(3, 765283.38, 1, 110, '2020-02-05 00:27:25', '2020-02-05 00:27:25', NULL, 51),
(4, 765283.38, 1, 110, '2020-02-05 00:29:32', '2020-02-05 00:29:32', NULL, 51),
(5, 297766.22, 1, 105, '2020-02-05 00:40:31', '2020-02-05 00:40:31', NULL, 55),
(6, 240526.92, 1, 101, '2020-02-05 00:45:47', '2020-02-05 00:45:47', NULL, 23),
(7, 596772.50, 1, 101, '2020-02-05 00:59:07', '2020-02-05 00:59:07', NULL, 58),
(8, 0.00, 1, 101, '2020-02-05 01:00:36', '2020-02-05 01:00:36', NULL, 59),
(9, 120263.46, 1, 101, '2020-02-05 14:54:57', '2020-02-05 14:54:57', NULL, 60),
(10, 0.00, 1, 101, '2020-02-05 15:02:34', '2020-02-05 15:02:34', NULL, 62),
(11, 575283.69, 2, 101, '2020-02-05 15:10:19', '2020-02-05 15:10:19', NULL, 63),
(12, 0.00, 2, 101, '2020-02-05 15:11:01', '2020-02-05 15:11:01', NULL, 64),
(13, 0.00, 2, 101, '2020-02-05 15:14:40', '2020-02-05 15:14:40', NULL, 65),
(14, 2841.60, 1, 103, '2020-02-05 15:25:04', '2020-02-05 15:25:04', NULL, 35),
(15, 596.77, 1, 101, '2020-02-05 15:31:08', '2020-02-05 15:31:08', NULL, 66),
(16, 85.95, 1, 101, '2020-02-05 15:32:06', '2020-02-05 15:32:06', NULL, 70),
(17, 112.92, 2, 110, '2020-02-05 23:30:50', '2020-02-05 23:30:50', NULL, 51),
(18, 60.13, 1, 101, '2020-02-06 03:59:13', '2020-02-06 03:59:13', NULL, 71),
(19, 0.00, 1, 101, '2020-02-06 04:02:56', '2020-02-06 04:02:56', NULL, 76),
(20, 0.00, 1, 101, '2020-02-06 04:05:00', '2020-02-06 04:05:00', NULL, 77),
(21, 0.00, 1, 101, '2020-02-06 04:11:11', '2020-02-06 04:11:11', NULL, 78),
(22, 0.00, 1, 101, '2020-02-06 04:16:53', '2020-02-06 04:16:53', NULL, 79),
(23, 0.00, 1, 101, '2020-02-06 04:17:18', '2020-02-06 04:17:18', NULL, 80),
(24, 1030.30, 1, 101, '2020-02-06 04:21:46', '2020-02-06 04:21:46', NULL, 81),
(25, 0.00, 1, 101, '2020-02-06 04:22:54', '2020-02-06 04:22:54', NULL, 82),
(26, 0.00, 1, 101, '2020-02-06 04:24:46', '2020-02-06 04:24:46', NULL, 83),
(27, 0.00, 1, 101, '2020-02-06 04:25:33', '2020-02-06 04:25:33', NULL, 84),
(28, 0.00, 1, 101, '2020-02-06 04:26:41', '2020-02-06 04:26:41', NULL, 85),
(29, 0.00, 1, 101, '2020-02-06 04:28:50', '2020-02-06 04:28:50', NULL, 86);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchasesproductslist`
--

CREATE TABLE `purchasesproductslist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recommended`
--

CREATE TABLE `recommended` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `surname`, `email`, `birthdate`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'Kiara Harris', NULL, 'qmccullough@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2WWlvkZbXC', '2020-01-16 05:26:09', '2020-01-16 05:26:09', NULL),
(2, 0, 'Melyssa Wilkinson', NULL, 'ofeil@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uQYe2u7rPh', '2020-01-16 05:26:09', '2020-01-16 05:26:09', NULL),
(3, 0, 'Prof. Alessandro Leffler PhD', NULL, 'tavares60@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '95nLsq4WJZ', '2020-01-16 05:26:09', '2020-01-16 05:26:09', NULL),
(4, 0, 'Mrs. Daniela Harber', NULL, 'chelsey25@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'herRvo3CJi', '2020-01-16 05:26:09', '2020-01-16 05:26:09', NULL),
(5, 0, 'Dr. Will Bosco', NULL, 'mills.lavina@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AdqrlLc8HO', '2020-01-16 05:26:09', '2020-01-16 05:26:09', NULL),
(6, 0, 'Prof. Gregorio Senger', NULL, 'bdubuque@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't4dTJncyIA', '2020-01-16 05:26:09', '2020-01-16 05:26:09', NULL),
(7, 0, 'Janiya Koelpin', NULL, 'remington87@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PtKJ24zgx6', '2020-01-16 05:26:09', '2020-01-16 05:26:09', NULL),
(8, 0, 'Bertha Johnson', NULL, 'tcruickshank@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w3vKBYybF0', '2020-01-16 05:26:09', '2020-01-16 05:26:09', NULL),
(9, 0, 'Horace Kuhic', NULL, 'angie.lang@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zMnuJg02Jc', '2020-01-16 05:26:09', '2020-01-16 05:26:09', NULL),
(10, 0, 'Dr. Peggie Veum V', NULL, 'sydnie32@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nuLYCy6qvB', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(11, 0, 'Kyler Graham', NULL, 'mertz.wava@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7lAxGdA4a4', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(12, 0, 'Holden Cormier', NULL, 'deon37@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L4j8jhDE6J', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(13, 0, 'Rolando Doyle', NULL, 'tdouglas@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rCF3x0AK9V', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(14, 0, 'Annabell Marks', NULL, 'elda.simonis@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QKqAHIhihd', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(15, 0, 'Alexie Borer', NULL, 'moriah35@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IV6anj6Lcn', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(16, 0, 'Florine Hyatt', NULL, 'karlie.kautzer@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OFvgUvAhXx', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(17, 0, 'Edmond Harvey', NULL, 'wilderman.aiyana@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mq0jRFIKuL', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(18, 0, 'Bradley Carroll', NULL, 'keegan58@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i0XHSoZwt9', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(19, 0, 'Dr. Olga Simonis', NULL, 'libby.davis@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u5iYWUGWb4', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(20, 0, 'Dr. Faye Denesik', NULL, 'hubert.stiedemann@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EK6tjRrgel', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(21, 0, 'Benny Bailey', NULL, 'jaeden.lehner@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dGCttHXmXv', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(22, 0, 'Berry Stroman', NULL, 'mae78@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cvEfErXclx', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(23, 0, 'Mr. Zion Leannon', NULL, 'hodkiewicz.ben@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '54zsMKbnbC', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(24, 0, 'Dr. Ed Crooks I', NULL, 'kayley.stark@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1GvVVa9UTO', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(25, 0, 'Mr. Dewitt Schaden', NULL, 'hauck.carlee@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Sdoa5G86vp', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(26, 0, 'Albert Fadel', NULL, 'schaden.ian@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wkKbY24Kig', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(27, 0, 'Dejuan Hackett V', NULL, 'katelyn.cremin@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '61RfnTFeh4', '2020-01-16 05:26:10', '2020-01-16 05:26:10', NULL),
(28, 0, 'Domenic Moen Sr.', NULL, 'lura.schuster@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E7pBS9lYuv', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(29, 0, 'Randall Marquardt', NULL, 'petra29@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UmZvUqvyAq', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(30, 0, 'Jace Funk', NULL, 'porter.okeefe@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZlVgvIYz2x', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(31, 0, 'Marianna Parisian', NULL, 'domingo02@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4YUxvx6iLR', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(32, 0, 'Dovie Bartoletti', NULL, 'mbartoletti@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'McWSda1RDz', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(33, 0, 'Hosea VonRueden', NULL, 'walter.yasmeen@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yiVChcdp3r', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(34, 0, 'Kaela Ortiz', NULL, 'woodrow08@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TCRGEDeHQZ', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(35, 0, 'Mrs. Lulu Williamson', NULL, 'felicia36@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jcSn6rsQKS', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(36, 0, 'Waldo Bruen', NULL, 'rcorwin@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kq6yZWA1ll', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(37, 0, 'Daren Reichel', NULL, 'hailie.dickens@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'muuVOMLLpt', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(38, 0, 'Carson Ward', NULL, 'maryse.eichmann@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IiTc4ppcXP', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(39, 0, 'Mable Kohler', NULL, 'lenna51@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NsPmBbOJN8', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(40, 0, 'Arvid Rohan IV', NULL, 'zboncak.joseph@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vFqpCSugjq', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(41, 0, 'Earl D\'Amore', NULL, 'elton27@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CRqqoXNQlv', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(42, 0, 'Eloisa DuBuque', NULL, 'quitzon.fletcher@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QQzf30olaQ', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(43, 0, 'Ahmed McDermott', NULL, 'emory.schroeder@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7tI9bAEuRp', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(44, 0, 'Tyra Davis I', NULL, 'holson@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CwHD5MgdGH', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(45, 0, 'Maud Hermann Sr.', NULL, 'kennedy.crist@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GYDA0xJIJs', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(46, 0, 'Elenor Kunde DVM', NULL, 'nader.thaddeus@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'G44D42sDgx', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(47, 0, 'Sunny Herzog', NULL, 'arnulfo66@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nU4jMzIrfH', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(48, 0, 'Clotilde Sipes', NULL, 'kimberly58@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sx4jLa6CIV', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(49, 0, 'Hortense Feest Jr.', NULL, 'towne.erin@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BMdDLKnOZx', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(50, 0, 'Angeline Kshlerin', NULL, 'grover64@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mYk8kleiUW', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(51, 0, 'Otis McClure', NULL, 'mcollins@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ReYw2yOrnc', '2020-01-16 05:26:11', '2020-01-16 05:26:11', NULL),
(52, 0, 'Dr. Chester Cronin', NULL, 'nienow.greg@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dtLy5FD5xP', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(53, 0, 'Jermain Beer', NULL, 'cboyle@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JhxPMgm1nO', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(54, 0, 'Natasha Doyle', NULL, 'alexanne.cormier@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4lpXZ4L2zo', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(55, 0, 'Sabryna Feest', NULL, 'chance21@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E5VhNu9se7', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(56, 0, 'Ms. Daisy Streich IV', NULL, 'merle.bernhard@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KOScW1MryJ', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(57, 0, 'Audie Cummerata', NULL, 'schroeder.chauncey@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'anUizwn5sd', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(58, 0, 'Eryn Metz', NULL, 'devonte22@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9D4ucysC4d', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(59, 0, 'Brandyn Rempel I', NULL, 'virginie.schulist@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uVWp8h4ONj', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(60, 0, 'Ms. Haylee Dickinson', NULL, 'rippin.howard@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pxSzgOHHfX', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(61, 0, 'Zula Thompson DVM', NULL, 'merlin55@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JIBO8pcHHt', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(62, 0, 'Dr. Efrain Cassin DVM', NULL, 'mkertzmann@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OAOzUlHv3b', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(63, 0, 'Prof. Maribel Hessel', NULL, 'mayer.lucas@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VTqJ5rXfL3', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(64, 0, 'Twila Rath', NULL, 'nasir.hane@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wVVt3tDmCZ', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(65, 0, 'Dorris Becker', NULL, 'pstokes@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7PBfLrLF8v', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(66, 0, 'Mr. Xander D\'Amore DVM', NULL, 'fannie95@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hh3AJ9aRNe', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(67, 0, 'Jacky Bernhard', NULL, 'eleazar69@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1v3fOrkuFV', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(68, 0, 'Mr. Jermain Borer', NULL, 'zvandervort@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dLAVnyAEZ9', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(69, 0, 'Miss Kristy Wiza III', NULL, 'wblanda@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'I97o206Qqt', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(70, 0, 'Russ Denesik', NULL, 'julie43@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tBoZt523fI', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(71, 0, 'Erin Reichel', NULL, 'qlabadie@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Msr7diohz4', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(72, 0, 'Athena Walker', NULL, 'kschneider@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3TcaLQHEOz', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(73, 0, 'Kraig Kilback', NULL, 'swelch@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NQY80z6PtM', '2020-01-16 05:26:12', '2020-01-16 05:26:12', NULL),
(74, 0, 'Ulices Oberbrunner IV', NULL, 'rau.rowland@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CXTaUi59Dm', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(75, 0, 'Jacinthe Dach', NULL, 'prosacco.kameron@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PqQpBPQOMU', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(76, 0, 'Chelsea Wuckert', NULL, 'burnice90@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bs4E7h9FxB', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(77, 0, 'Isabel Gottlieb', NULL, 'madelyn99@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'teIo0sOQ2h', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(78, 0, 'Adella Kreiger', NULL, 'fausto86@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4V3lc6xkHa', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(79, 0, 'Madelyn Morissette', NULL, 'vlangworth@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6jkZxFjV7D', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(80, 0, 'Claud Welch', NULL, 'alexandrine46@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'na6ExaH6O2', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(81, 0, 'Nola Rau', NULL, 'smurazik@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BpTCfDrCp9', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(82, 0, 'Elenor Emmerich', NULL, 'stuart41@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jRXkfp9PBE', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(83, 0, 'Prof. Jayde Wilderman DDS', NULL, 'wconn@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'c8waKFjq4Y', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(84, 0, 'Mr. Fermin Hudson III', NULL, 'eloisa30@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WODzTdtJ8R', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(85, 0, 'Annetta Turner', NULL, 'kilback.henriette@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RC9ZpbUHuu', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(86, 0, 'Mireille Mosciski', NULL, 'maud.gusikowski@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jfsDTy4mTx', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(87, 0, 'Prof. Howard Reichel IV', NULL, 'weber.cecil@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9Y3DqUrA17', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(88, 0, 'Aidan Tillman', NULL, 'pmarks@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TKysiOJo0d', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(89, 0, 'Seth Labadie', NULL, 'psimonis@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TumnbXozg0', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(90, 0, 'Adell Sanford Sr.', NULL, 'gloria52@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M94KyamZ9T', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(91, 0, 'Miss Jany Ritchie', NULL, 'koconner@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's5wF3DZs54', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(92, 0, 'Ila Effertz', NULL, 'jermey02@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6mYTvEjUc4', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(93, 0, 'Leora Zieme', NULL, 'fbernhard@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'naoeptyYDH', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(94, 0, 'Ms. Mariam Crooks', NULL, 'jayme.luettgen@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7wUFEqUK4r', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(95, 0, 'Kamryn Trantow Jr.', NULL, 'crooks.eladio@example.net', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k8lr7dUQ2s', '2020-01-16 05:26:13', '2020-01-16 05:26:13', NULL),
(96, 0, 'Dr. Estevan Littel V', NULL, 'fabian53@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cJNnFYAyik', '2020-01-16 05:26:14', '2020-01-16 05:26:14', NULL),
(97, 0, 'Donnie Schmitt', NULL, 'okunze@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'O9siIdjPlo', '2020-01-16 05:26:14', '2020-01-16 05:26:14', NULL),
(98, 0, 'Francisco Cummings IV', NULL, 'talia.kub@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WbzIIC8Jz1', '2020-01-16 05:26:14', '2020-01-16 05:26:14', NULL),
(99, 0, 'Marta Cremin', NULL, 'bbaumbach@example.com', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lNQpbcJkCi', '2020-01-16 05:26:14', '2020-01-16 05:26:14', NULL),
(100, 0, 'Carroll Lockman', NULL, 'anthony.beer@example.org', NULL, '2020-01-16 05:26:09', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SyrzrExCQv', '2020-01-16 05:26:14', '2020-01-16 05:26:14', NULL),
(101, 1, 'Numa', NULL, 'contope@hotmail.com', NULL, NULL, '$2y$10$ES.QengH4xnB1X5dH3C5VusvU9/EDd/qN08uVFPLOJk8qcHL180eq', NULL, '2020-02-01 19:25:31', '2020-02-01 19:25:31', NULL),
(102, 0, 'Mati', NULL, 'mati@gsidj.com', NULL, NULL, '$2y$10$JCBMbYhTVwczVCMuL3KLkOIZEMjSy8SFdbXMKIXHBZ6ibPV3iWxpa', NULL, '2020-02-04 02:45:59', '2020-02-04 02:45:59', NULL),
(103, 0, 'Joaquin', NULL, 'Joaquin@Joaquin.com', NULL, NULL, '$2y$10$PoORjSNkL79NQx5Hj130TOxkHHJJinKbnFgZrPjj5yGYnIwQ7wYz.', NULL, '2020-02-04 03:12:31', '2020-02-04 03:12:31', NULL),
(104, 0, 'Mariangeles', NULL, 'mariangelesw@hotmail.com', NULL, NULL, '$2y$10$bo9alhZPQEY1FR2Dulv1pOEsTyXK7ucBpFIWqNxoBEPDe3xiHboFW', NULL, '2020-02-04 06:00:24', '2020-02-04 06:00:24', NULL),
(105, 0, 'Martin', NULL, 'Martin@hotmail.com', NULL, NULL, '$2y$10$zpAOjLPsjs8Qfm6HXUdSJ.7e9VXlFyLrk8UMwCIm.Zc09Bj3avtry', NULL, '2020-02-04 15:50:51', '2020-02-04 15:50:51', NULL),
(106, 0, 'Mariano', NULL, 'mariano@hotmail.com', NULL, NULL, '$2y$10$2UGLREw0BtnEPmmc6/QIg.2KQ9RFLrSAsOHT1LUCjCiF94YaTAzbG', NULL, '2020-02-04 16:04:15', '2020-02-04 16:04:15', NULL),
(107, 0, 'Veronica', NULL, 'veronica@hotmail.com', NULL, NULL, '$2y$10$vkwWT3iXzgc9m52O/GVBiuxHCNxpIQ2N0Y0QpCM0vurJxUwIuKtZi', NULL, '2020-02-04 16:06:03', '2020-02-04 16:06:03', NULL),
(108, 0, 'Felipe', NULL, 'Felipe@hotmail.com', NULL, NULL, '$2y$10$jrnKCJbL2hz/cZoWblRyyOTtRBpLwG27xEHz/nBiLqPJBQ9ISvFBy', NULL, '2020-02-04 16:48:28', '2020-02-04 16:48:28', NULL),
(109, 0, 'Julita', NULL, 'julita@hotmail.com', NULL, NULL, '$2y$10$S68rTksBQ0fa4OD/lExGseRIHxtuUaL8M1u0HnuNaGRw5FLOHmfru', NULL, '2020-02-04 16:50:38', '2020-02-04 16:50:38', NULL),
(110, 0, 'Vicente', NULL, 'vicente@hotmail.com', NULL, NULL, '$2y$10$6sb5s0F/w1DbezbNlW6Hp.eramzoSyuCQ.sytFnsHIyNV0nsgeaf2', NULL, '2020-02-04 16:55:20', '2020-02-04 16:55:20', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_purchase_id_foreign` (`purchase_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `cart_product`
--
ALTER TABLE `cart_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_product_product_id_foreign` (`product_id`),
  ADD KEY `cart_product_cart_id_foreign` (`cart_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `paymentmethods`
--
ALTER TABLE `paymentmethods`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productpictures`
--
ALTER TABLE `productpictures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productpictures_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_offer_id_foreign` (`offer_id`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_paymentmethod_id_foreign` (`paymentmethod_id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`),
  ADD KEY `purchases_cart_id_foreign` (`cart_id`);

--
-- Indices de la tabla `purchasesproductslist`
--
ALTER TABLE `purchasesproductslist`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recommended`
--
ALTER TABLE `recommended`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recommended_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productpictures`
--
ALTER TABLE `productpictures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `purchasesproductslist`
--
ALTER TABLE `purchasesproductslist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `recommended`
--
ALTER TABLE `recommended`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `cart_product`
--
ALTER TABLE `cart_product`
  ADD CONSTRAINT `cart_product_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `cart_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Filtros para la tabla `productpictures`
--
ALTER TABLE `productpictures`
  ADD CONSTRAINT `productpictures_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`);

--
-- Filtros para la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`),
  ADD CONSTRAINT `purchases_paymentmethod_id_foreign` FOREIGN KEY (`paymentmethod_id`) REFERENCES `paymentmethods` (`id`),
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `recommended`
--
ALTER TABLE `recommended`
  ADD CONSTRAINT `recommended_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

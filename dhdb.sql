-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-01-2020 a las 13:47:19
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

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
(1, '2020-01-16 15:02:29', '2020-01-16 15:02:29', 'A sint sint nemo.', 'App/public/photosBrands/images.png', NULL),
(2, '2020-01-16 15:02:29', '2020-01-16 15:02:29', 'Doloremque.', 'App/public/photosBrands/images.png', NULL),
(3, '2020-01-16 15:02:29', '2020-01-16 15:02:29', 'Magnam illo.', 'App/public/photosBrands/images.png', NULL),
(4, '2020-01-16 15:02:29', '2020-01-16 15:02:29', 'Et est vel ex.', 'App/public/photosBrands/images.png', NULL),
(5, '2020-01-16 15:02:29', '2020-01-16 15:02:29', 'Fugiat architecto.', 'App/public/photosBrands/images.png', NULL),
(6, '2020-01-16 15:02:29', '2020-01-16 15:02:29', 'Est et dignissimos.', 'App/public/photosBrands/images.png', NULL),
(7, '2020-01-16 15:02:29', '2020-01-16 15:02:29', 'Quisquam et totam.', 'App/public/photosBrands/images.png', NULL),
(8, '2020-01-16 15:02:29', '2020-01-16 15:02:29', 'Sint mollitia.', 'App/public/photosBrands/images.png', NULL),
(9, '2020-01-16 15:02:29', '2020-01-16 15:02:29', 'Molestias atque.', 'App/public/photosBrands/images.png', NULL),
(10, '2020-01-16 15:02:30', '2020-01-16 15:02:30', 'Nisi in ea dolor ut.', 'App/public/photosBrands/images.png', NULL),
(11, '2020-01-16 15:02:30', '2020-01-16 15:02:30', 'Quasi repudiandae.', 'App/public/photosBrands/images.png', NULL),
(12, '2020-01-16 15:02:30', '2020-01-16 15:02:30', 'Nam autem mollitia.', 'App/public/photosBrands/images.png', NULL),
(13, '2020-01-16 15:02:30', '2020-01-16 15:02:30', 'Doloribus aut neque.', 'App/public/photosBrands/images.png', NULL),
(14, '2020-01-16 15:02:30', '2020-01-16 15:02:30', 'Quasi dolorum.', 'App/public/photosBrands/images.png', NULL),
(15, '2020-01-16 15:02:30', '2020-01-16 15:02:30', 'Maxime maxime.', 'App/public/photosBrands/images.png', NULL),
(16, '2020-01-16 15:02:31', '2020-01-16 15:02:31', 'Asperiores quidem.', 'App/public/photosBrands/images.png', NULL),
(17, '2020-01-16 15:02:31', '2020-01-16 15:02:31', 'Tempora nihil nihil.', 'App/public/photosBrands/images.png', NULL),
(18, '2020-01-16 15:02:31', '2020-01-16 15:02:31', 'Repellat optio.', 'App/public/photosBrands/images.png', NULL),
(19, '2020-01-16 15:02:31', '2020-01-16 15:02:31', 'Porro rerum quasi.', 'App/public/photosBrands/images.png', NULL),
(20, '2020-01-16 15:02:31', '2020-01-16 15:02:31', 'Saepe optio.', 'App/public/photosBrands/images.png', NULL),
(21, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'In et totam.', 'App/public/photosBrands/images.png', NULL),
(22, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Incidunt numquam.', 'App/public/photosBrands/images.png', NULL),
(23, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Neque quos.', 'App/public/photosBrands/images.png', NULL),
(24, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Odio sint magnam.', 'App/public/photosBrands/images.png', NULL),
(25, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Labore occaecati.', 'App/public/photosBrands/images.png', NULL),
(26, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Quaerat odio et.', 'App/public/photosBrands/images.png', NULL),
(27, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Incidunt laboriosam.', 'App/public/photosBrands/images.png', NULL),
(28, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Ad quia vel hic.', 'App/public/photosBrands/images.png', NULL),
(29, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Totam praesentium.', 'App/public/photosBrands/images.png', NULL),
(30, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Provident minima.', 'App/public/photosBrands/images.png', NULL),
(31, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Perferendis.', 'App/public/photosBrands/images.png', NULL),
(32, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Laboriosam et vero.', 'App/public/photosBrands/images.png', NULL),
(33, '2020-01-16 15:04:34', '2020-01-16 15:04:34', 'Nihil qui placeat.', 'App/public/photosBrands/images.png', NULL),
(34, '2020-01-16 15:04:35', '2020-01-16 15:04:35', 'Odit ducimus.', 'App/public/photosBrands/images.png', NULL),
(35, '2020-01-16 15:04:35', '2020-01-16 15:04:35', 'Esse aut nisi et.', 'App/public/photosBrands/images.png', NULL),
(36, '2020-01-16 15:04:35', '2020-01-16 15:04:35', 'Officia praesentium.', 'App/public/photosBrands/images.png', NULL),
(37, '2020-01-16 15:04:35', '2020-01-16 15:04:35', 'Magnam qui impedit.', 'App/public/photosBrands/images.png', NULL),
(38, '2020-01-16 15:04:35', '2020-01-16 15:04:35', 'Quo ipsum ut ipsa.', 'App/public/photosBrands/images.png', NULL),
(39, '2020-01-16 15:04:35', '2020-01-16 15:04:35', 'Nam laboriosam sit.', 'App/public/photosBrands/images.png', NULL),
(40, '2020-01-16 15:04:35', '2020-01-16 15:04:35', 'Omnis eius porro.', 'App/public/photosBrands/images.png', NULL);

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
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Instrumentos', NULL, NULL),
(2, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Discos', NULL, NULL),
(3, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Audio', NULL, NULL),
(4, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Guitarras', 1, NULL),
(5, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Rock & Roll', 2, NULL),
(6, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Pop', 2, NULL),
(7, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Ducimus adipisci.', 1, NULL),
(8, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Auriculares', 3, NULL),
(9, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Parlantes', 3, NULL),
(10, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Sit omnis et.', 1, NULL),
(11, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Clasicos', 2, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_29_201901_create_offers_table', 1),
(5, '2019_12_29_201902_create_paymentmethods_table', 1),
(6, '2019_12_29_201903_create_brands_table', 1),
(7, '2019_12_29_201904_create_categories_table', 1),
(8, '2019_12_29_201905_create_products_table', 1),
(9, '2019_12_29_201906_create_product_photos_table', 1),
(10, '2019_12_29_201907_create_recommended_table', 1),
(11, '2019_12_29_201908_create_offer__product_table', 1),
(12, '2019_12_29_201909_create_purchases_table', 1),
(13, '2019_12_29_201910_create_carts_table', 1),
(14, '2019_12_29_201911_create_cart_product_table', 1),
(15, '2020_01_16_200114_create_productpictures_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
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
(21, '30 % de Descuento', NULL, '2020-01-16 13:56:30', '2020-01-16 13:56:30', 0.30, '2020-01-16 16:56:30', '2020-01-16 16:56:30', NULL),
(22, '10 % de Descuento', NULL, '2020-01-16 13:56:30', '2020-01-16 13:56:30', 0.10, '2020-01-16 16:56:30', '2020-01-16 16:56:30', NULL),
(23, '40 % de Descuento', NULL, '2020-01-16 13:56:30', '2020-01-16 13:56:30', 0.40, '2020-01-16 16:56:30', '2020-01-16 16:56:30', NULL),
(24, '60 % de Descuento', NULL, '2020-01-16 13:56:30', '2020-01-16 13:56:30', 0.60, '2020-01-16 16:56:30', '2020-01-16 16:56:30', NULL),
(25, '30 % de Descuento', NULL, '2020-01-16 13:56:30', '2020-01-16 13:56:30', 0.30, '2020-01-16 16:56:30', '2020-01-16 16:56:30', NULL),
(26, '70 % de Descuento', NULL, '2020-01-16 13:56:30', '2020-01-16 13:56:30', 0.70, '2020-01-16 16:56:30', '2020-01-16 16:56:30', NULL),
(27, '10 % de Descuento', NULL, '2020-01-16 13:56:30', '2020-01-16 13:56:30', 0.10, '2020-01-16 16:56:30', '2020-01-16 16:56:30', NULL),
(28, '50 % de Descuento', NULL, '2020-01-16 13:56:30', '2020-01-16 13:56:30', 0.50, '2020-01-16 16:56:30', '2020-01-16 16:56:30', NULL),
(29, '10 % de Descuento', NULL, '2020-01-16 13:56:30', '2020-01-16 13:56:30', 0.10, '2020-01-16 16:56:30', '2020-01-16 16:56:30', NULL),
(30, '50 % de Descuento', NULL, '2020-01-16 13:56:30', '2020-01-16 13:56:30', 0.50, '2020-01-16 16:56:30', '2020-01-16 16:56:30', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `offer__product`
--

CREATE TABLE `offer__product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `offer_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2019-12-30 19:52:43', '2019-12-30 19:52:43', 9, 'criolla1.jpg', 'criolla', NULL),
(2, '2019-12-30 19:52:43', '2019-12-30 19:52:43', 9, 'criolla2.jpg', 'criolla2', NULL),
(3, '2019-12-30 19:52:43', '2019-12-30 19:52:43', 9, 'criolla3.jpg', NULL, NULL),
(4, '2019-12-30 19:52:43', '2019-12-30 19:52:43', 9, 'criolla4.jpg', NULL, NULL);

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
(2, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Mollitia quia sit.', 'Saepe ut quae delectus quia ullam dicta accusantium. Enim praesentium dicta quae atque dignissimos nihil numquam. Vero sunt nam blanditiis. Asperiores ut qui nesciunt corporis et occaecati quo facere.', 'Eos asperiores sapiente culpa tempora sunt unde. Aperiam autem et officia sint. Enim consectetur sit sed ipsum quia molestiae excepturi quaerat.', 326856.53, 7, 1, NULL, 16, 21),
(3, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Et est nesciunt.', 'Temporibus omnis suscipit rerum et repellat. Omnis labore minus corrupti mollitia ipsam ullam. Ad accusantium hic ipsam ut dolorum vel et. Ipsa est totam vitae qui porro est.', 'Quis voluptate quam enim a et cum temporibus. Quia quas nemo quaerat repudiandae ipsa rerum. Sed id facere non aut. Ea voluptate eos debitis et.', 843370.42, 7, 1, NULL, 3, 26),
(4, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Est repellendus.', 'Natus rerum a temporibus unde nobis accusamus dolorum reprehenderit. Sunt vel voluptate vel autem reprehenderit necessitatibus in. Dolorem dolorem odit sit magni est qui blanditiis neque. In laborum ea eum.', 'Praesentium voluptatem sit necessitatibus est repudiandae quod occaecati. Doloremque laudantium ut labore velit in et corrupti qui. Illo eligendi veritatis qui exercitationem voluptatem.', 160074.16, 6, 1, NULL, 27, 26),
(5, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Doloremque omnis.', 'Qui quas aut perferendis excepturi aliquam velit dolore. Dolor facere magnam quia libero quis et. Repudiandae qui omnis quis voluptatem. Sed animi cumque aut eos nobis.', 'Mollitia aut quo assumenda minus optio sint in. Atque et cumque occaecati quia inventore sit. Non omnis illum laboriosam fugit nihil. Voluptates natus eligendi natus commodi. Est saepe veritatis accusantium ab nihil similique ullam.', 500863.48, 7, 1, NULL, 74, 28),
(6, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Suscipit et qui.', 'Blanditiis saepe adipisci odit dolorem. Porro repellendus ex natus accusamus deleniti. Alias odit repudiandae dicta.', 'Nihil expedita quia quibusdam qui. Nobis et eligendi exercitationem ut esse quis. Consequatur quia asperiores eos voluptates perspiciatis atque.', 703436.71, 6, 1, NULL, 36, NULL),
(7, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Tempora excepturi.', 'Velit aspernatur rerum dicta excepturi. Molestiae modi velit illo dicta qui tenetur. Temporibus tempora iste at explicabo occaecati minima.', 'Officia ipsa autem ipsa ut enim. Quaerat corrupti quos ut dolores quia qui voluptas. Ut consequatur odit magni nesciunt alias et.', 905622.80, 5, 1, NULL, 69, NULL),
(8, '2020-01-16 15:05:16', '2020-01-16 15:05:16', 'Eius non quia ab.', 'Et et rerum maiores voluptatem voluptatem pariatur ut quasi. Nihil eligendi sit perferendis nostrum iusto. Cum aspernatur ut optio non ut vel repellendus. Rerum in nam ut provident.', 'Sit voluptatem temporibus repellendus quasi iusto. Repellendus adipisci deserunt ex qui maxime amet. Nihil necessitatibus ad qui aut repellendus aliquid quam. Perspiciatis aut quibusdam qui mollitia nihil laboriosam.', 63936.48, 6, 1, NULL, 31, NULL),
(9, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'guitarrita loca', 'Ducimus vel eos placeat quidem placeat illo officia. Quis et rem sapiente et. Dolores ullam labore est explicabo fugiat reiciendis deleniti.', 'Odio odit amet et officia sapiente. Maxime architecto earum et et iusto. Aut nemo id cumque est quo qui.', 339749.28, 4, 1, NULL, 96, 27),
(10, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Et cum provident.', 'Similique quia sunt odio quia. Quasi omnis explicabo qui consequatur repudiandae aperiam voluptatem dolores. Architecto qui et a consequatur sit.', 'Natus a blanditiis officia non neque consequuntur dolores. Iste doloribus ea incidunt hic exercitationem veniam. Ab veniam aut qui tenetur veniam eaque aut.', 826316.35, 4, 1, NULL, 0, NULL),
(11, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Itaque ipsum sunt.', 'Ipsa et nam consequatur alias dolorem. Culpa atque voluptas quis.', 'Voluptates soluta voluptas tempora et. Nesciunt voluptatum mollitia laboriosam dolore alias. Rem optio assumenda tempora dolor aut.', 387834.42, 5, 1, NULL, 60, NULL),
(12, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Similique et.', 'Ut sed consectetur voluptas et odio in cumque eligendi. Hic aut itaque aut nulla nisi dolor. Est aut qui explicabo itaque. Est quibusdam modi sapiente aperiam recusandae eos aut.', 'Voluptas rerum ducimus adipisci aut consectetur dolor. Ut perferendis dolores nulla aspernatur at non rem. Exercitationem corrupti ad cumque et quia consequatur consequatur beatae.', 867330.12, 4, 1, NULL, 81, 25),
(13, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Sunt est sunt.', 'Exercitationem vero ut exercitationem aspernatur et praesentium. Aliquid rerum reprehenderit enim id consequatur officia quibusdam.', 'Eius consequuntur quibusdam dignissimos aut voluptates suscipit. Sit in at iste labore assumenda dicta adipisci cum. Doloremque reiciendis praesentium hic a omnis. Corporis et dolorem quia.', 591308.98, 4, 1, NULL, 4, NULL),
(14, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Necessitatibus.', 'Iste rem velit explicabo aut ipsum. Exercitationem non sunt ipsam perferendis fugiat repellendus.', 'Eius minima asperiores sunt fugit praesentium mollitia autem. Voluptatem atque perferendis et ea. Ad et voluptate laudantium vero quos eaque.', 722512.49, 5, 1, NULL, 67, NULL),
(15, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Ducimus libero.', 'Voluptates est cumque explicabo ea mollitia. Ratione et aut cum maiores expedita placeat eum. Nostrum qui repudiandae et aut assumenda beatae. Quis voluptas temporibus illo rerum aut ut accusantium.', 'Cupiditate laboriosam ut nulla dolores deleniti. Dolorum non quam ullam consequatur veniam eum.', 576782.99, 5, 1, NULL, 99, NULL),
(16, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Omnis qui autem.', 'Quisquam numquam in aspernatur porro dolor et facere. Non dignissimos est velit perferendis. Voluptates quas reiciendis pariatur aliquam.', 'Natus expedita perferendis consequatur minus sint praesentium reiciendis. Quisquam qui dolores omnis esse unde facere. Consequatur doloremque quia odio non dignissimos.', 884569.77, 7, 1, NULL, 44, NULL),
(17, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Atque quas velit.', 'Molestiae aliquid nostrum nobis cupiditate doloremque ipsum. Maxime vitae ea possimus rerum et architecto esse. Aut sed nam quo aperiam quia sed omnis et.', 'Animi vero consequatur dolores incidunt dicta quas in repudiandae. Harum aut assumenda voluptas sed nihil aut iusto quae.', 232679.92, 5, 1, NULL, 89, NULL),
(18, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Sapiente.', 'Tenetur illum cumque cumque earum ab perferendis. Explicabo distinctio sequi ut est eos quia tenetur. Quia quos autem minus molestias qui velit in. Ex adipisci doloremque quaerat est numquam. Doloremque aut labore et atque sed quos eum sunt.', 'Perferendis illum quia nobis ab inventore sed. Eveniet accusantium itaque omnis et enim velit architecto. Itaque adipisci cupiditate eos eum culpa nobis.', 353003.01, 4, 1, NULL, 20, NULL),
(19, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Distinctio.', 'Vitae officia corrupti vitae pariatur voluptates aut. Ea omnis repellendus consequuntur quisquam. Autem molestiae vitae eum omnis reprehenderit.', 'Qui hic voluptas eveniet delectus. Voluptas autem harum quidem expedita mollitia blanditiis doloribus voluptatem. Molestiae nesciunt molestiae nihil sit eius pariatur ea.', 647345.74, 5, 1, NULL, 84, NULL),
(20, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Velit sed.', 'Ducimus quidem necessitatibus eum voluptas aut delectus maxime ipsa. Id quia quod sit. Aut reprehenderit pariatur debitis fuga quasi et officiis.', 'Sint quas commodi qui iste omnis rerum. Autem dolorem eos modi. Molestiae est tempore voluptatem non tenetur perspiciatis consequatur consequatur.', 908161.32, 7, 1, NULL, 55, NULL),
(21, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Et quos ratione.', 'Magni rerum quasi natus laboriosam dolor est. Repellendus molestiae quod eveniet ipsum nam qui. Modi voluptas maiores quia dolores.', 'Esse voluptas quia quasi ut necessitatibus aperiam. Aut sit voluptas voluptas neque repudiandae deserunt. Molestiae laborum qui et facilis.', 605529.86, 6, 1, NULL, 48, NULL),
(22, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Tempora.', 'Maiores minus dolore voluptas in doloremque quos beatae. At sint aut quis minus.', 'Eos labore qui et voluptatibus sint eligendi. Placeat molestiae nihil velit inventore praesentium sunt placeat. Dolorum veritatis adipisci sed omnis. Facere aut eligendi minus et repellendus et autem ipsum.', 444354.68, 6, 1, NULL, 64, NULL),
(23, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Et at impedit.', 'Fuga consequatur repellat et sed nisi porro et. Aut in ut voluptatem amet blanditiis ex. Itaque exercitationem eum quo accusamus distinctio.', 'Suscipit itaque unde ratione esse. Ullam velit quod veniam et earum corrupti. Eligendi cum et et est facere quis repudiandae.', 19613.86, 4, 1, NULL, 62, NULL),
(24, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Sunt et et.', 'Eos non sequi ex eum magni dolor sunt. Aut porro occaecati alias magni. Quod omnis consequatur exercitationem labore dignissimos ratione maxime.', 'Magnam rerum totam voluptas. Accusamus quam commodi fuga eum. Itaque ut fugiat autem ut sequi. Non architecto ducimus eaque corrupti molestiae velit.', 752291.58, 7, 1, NULL, 2, NULL),
(25, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Iure nobis.', 'Iusto tenetur dicta ea aut reprehenderit doloribus. Deleniti voluptatibus ut iste consequatur dolores. Dolorem consequatur dolorem magni quis. Voluptatibus aut in illum.', 'Et fugiat voluptas sint. Sed facere debitis facilis numquam cupiditate. Quae excepturi cupiditate blanditiis beatae nobis nemo. Est hic amet numquam doloremque dolorum.', 528428.24, 5, 1, NULL, 100, NULL),
(26, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Necessitatibus.', 'Non aut nemo nostrum vero quis. Architecto commodi totam aliquam consectetur a ipsa.', 'Nemo quaerat autem rerum magnam perferendis dolores. Magni ea vero facere officiis saepe non quaerat. Saepe quidem ratione occaecati vero. Illo quia sapiente qui et aspernatur.', 670414.35, 7, 1, NULL, 47, NULL),
(27, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Ad odit facere.', 'Ullam dolorem ipsum soluta. Quisquam illo perferendis aliquam minus provident. Et molestias est tempora vero voluptatibus temporibus.', 'Aliquam sed rerum aspernatur et aut aut occaecati adipisci. Est animi qui et beatae est earum. Porro voluptatem voluptas eos cum odio. Aliquid quis animi ea sed.', 343927.19, 7, 1, NULL, 9, NULL),
(28, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Quis aut sint et.', 'Labore eum incidunt corrupti vitae dolore. Cupiditate provident voluptatum ullam ratione sed. Id et et amet et at pariatur occaecati corrupti. Nemo tenetur impedit at expedita excepturi est.', 'Neque saepe nihil aut corrupti vero eligendi officiis autem. Necessitatibus atque accusamus ab ea est placeat totam qui. Perferendis molestiae nostrum voluptates non soluta.', 706759.02, 4, 1, NULL, 66, NULL),
(29, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Molestiae enim.', 'Quia sed modi enim nesciunt mollitia. Explicabo ad et molestiae earum et sed fugit. At sed quisquam sed magni maiores itaque itaque. Repudiandae ut perferendis perspiciatis.', 'Et fuga deserunt est occaecati. Adipisci possimus eum omnis explicabo iusto. Dolorem voluptates alias voluptatibus dolores autem error veniam itaque. Sit aut quisquam ut et similique ut et.', 769139.00, 5, 1, NULL, 68, NULL),
(30, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Sed adipisci.', 'Officiis id consectetur suscipit alias sed. Praesentium sit ea harum accusantium. Amet atque fugit fugit nisi.', 'Magnam unde quia libero libero nobis voluptas tempora aut. Numquam doloribus nemo ea quam ullam modi nihil. Blanditiis aut voluptatem ea laudantium. Laudantium deleniti architecto accusamus ut quod quod nostrum.', 629235.71, 6, 1, NULL, 30, NULL),
(31, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Ut quia.', 'Sed qui totam quia ea. Libero pariatur eum ex numquam quo necessitatibus. Molestiae illo expedita autem. Qui quo non illum saepe dolor cum itaque qui.', 'Beatae accusantium maiores quo et perspiciatis nulla soluta. Modi vel fugiat harum et vel et sed. Provident autem rem ex qui dolor et. Excepturi aut explicabo tempora temporibus.', 973236.33, 6, 1, NULL, 39, NULL),
(32, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Modi voluptatem.', 'A quaerat commodi alias sed. Blanditiis omnis fugit soluta eos minus et. At culpa doloribus et sapiente quis corrupti ea. Eos sapiente veniam velit veniam molestias atque aut.', 'Corporis laboriosam et saepe sint. Non cupiditate modi cupiditate tempora quae sit. Fugiat inventore omnis ipsam cum et. Iure debitis eos sunt et alias illum quia. Et sequi quo temporibus.', 576410.03, 7, 1, NULL, 4, NULL),
(33, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Odit voluptatibus.', 'Amet aut odio sint sed. Qui voluptate non earum voluptatum. At molestias eius et nesciunt odit est sapiente. Molestias qui sunt sit quam maxime.', 'Maiores deleniti aut exercitationem maiores aut. Modi alias aut neque neque repudiandae unde et. Adipisci ducimus perspiciatis voluptatem consequatur. Voluptatibus sunt similique eius voluptatem.', 541838.78, 4, 1, NULL, 58, NULL),
(34, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Quia id est ut.', 'Minima aut fugiat aut. Quod maiores natus libero. Illo pariatur omnis animi iure.', 'Eum saepe velit modi. Nemo porro et vitae est ullam ut et. Odit ipsam dignissimos saepe id laborum dolor labore. Qui voluptates sunt officiis. Tenetur atque non aliquam nisi.', 957207.05, 5, 1, NULL, 91, NULL),
(35, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Necessitatibus.', 'Iste quasi laboriosam necessitatibus ipsum. Qui magni est magnam et laborum facilis. Similique deleniti est mollitia et veritatis et. Debitis et similique et error.', 'Ratione fugit et sit delectus a neque quidem. Laudantium cumque quia molestiae error doloremque dolores. Harum est eos in sit. Quis sapiente animi accusantium vel sint.', 858881.52, 5, 1, NULL, 72, NULL),
(36, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Rerum et est.', 'Dolores minima totam qui libero et recusandae aut. Ab pariatur incidunt quae in sed impedit facere. Modi vitae vitae quis expedita at ullam optio et.', 'Aliquam recusandae accusantium optio nisi atque et laborum. Dignissimos sequi mollitia labore id aspernatur. Animi ab illum ullam iure repudiandae aut.', 753558.06, 6, 1, NULL, 23, NULL),
(37, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Molestiae.', 'Et quo vel delectus ea doloribus pariatur. Omnis tempore nostrum eum animi omnis similique. Sit quod quis doloribus sunt officia. Id quaerat ipsa laboriosam tenetur qui est.', 'Dolores consequatur quidem dolore reprehenderit. Ut blanditiis qui nisi sint. Aliquid maiores aut et voluptatem ut eum hic.', 589605.89, 4, 1, NULL, 44, NULL),
(38, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'At consectetur.', 'Suscipit id quos nostrum esse doloribus et. Omnis fugit labore sed animi. Fugit inventore quia quasi est corporis non id. Et nihil laboriosam aut ut molestiae debitis.', 'Ad perspiciatis aut sunt dolorem dolores. Culpa maiores et eligendi est quasi voluptatem omnis. Cumque maiores et voluptate inventore laborum.', 840778.68, 7, 1, NULL, 10, NULL),
(39, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Quisquam nostrum.', 'Beatae et voluptates aut quaerat aspernatur rerum placeat. Non cum aut reiciendis corrupti mollitia. Deleniti nulla molestiae sunt est.', 'Enim ipsa omnis quasi aliquid suscipit unde. Ad voluptatem ut delectus deleniti.', 249116.00, 6, 1, NULL, 82, NULL),
(40, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Soluta sit dolore.', 'Voluptates autem qui natus. Hic aut error rerum error veritatis eos maxime. Deleniti nihil quidem est ut sit architecto.', 'Ea nemo ut inventore nostrum. Voluptas soluta delectus id sed libero. Consequuntur et quos optio similique. Optio non et exercitationem quod et qui ipsa illo. Harum vitae sapiente nemo dolorum ea molestiae.', 365761.16, 6, 1, NULL, 26, NULL),
(41, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Quia optio.', 'Reiciendis vel assumenda numquam sunt laboriosam. Accusantium ut non repudiandae quo sed quis. Consequatur odit nihil aliquam.', 'Libero velit neque incidunt accusantium earum. Sunt et in consequatur ea quo perferendis id. Qui suscipit earum nam autem quos odio. Consectetur accusamus vel aliquam sunt dolores quia inventore.', 279337.82, 5, 1, NULL, 55, NULL),
(42, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Autem tempore.', 'Sint ut similique et perferendis quam. Nobis quo nemo provident inventore cum libero non. Itaque fugiat quibusdam omnis fugiat distinctio aspernatur tenetur.', 'Unde sapiente adipisci aut veniam natus assumenda. Iste sed at fugiat totam perferendis voluptatibus. Quod officiis architecto id sit. Asperiores velit corrupti rerum laudantium sed.', 389502.86, 7, 1, NULL, 30, NULL),
(43, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Qui voluptatum.', 'Atque reiciendis recusandae minima ab quia. Itaque distinctio non in excepturi tempora et eligendi et.', 'Qui incidunt et sit dolorem. Asperiores et tenetur quidem iusto repudiandae velit. Labore sint eos harum aperiam sit assumenda ut. Vitae optio ullam voluptatum excepturi totam dicta ea.', 812003.72, 5, 1, NULL, 70, NULL),
(44, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Totam sint nulla.', 'Quidem cupiditate quia omnis praesentium illo minus est. Officia qui culpa dignissimos dolor sit reprehenderit qui. Voluptatem dolore fuga neque iure vel exercitationem dolorem. Itaque sed iusto asperiores quae qui ut.', 'Praesentium optio ex sed natus quod velit. Sed molestiae quia qui temporibus reprehenderit.', 334492.34, 6, 1, NULL, 46, NULL),
(45, '2020-01-16 15:05:17', '2020-01-16 15:05:17', 'Ex harum voluptas.', 'Et quis fugiat et magni rem. Autem eos accusamus minima error sint et velit. Quos nesciunt error debitis. Sunt voluptatibus culpa at ut molestias.', 'Doloribus qui molestiae sunt aliquid et quam. Dolorem qui qui magni ab saepe voluptas eum. Tempora libero harum repudiandae nemo amet ea.', 413936.37, 7, 1, NULL, 54, NULL),
(46, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Assumenda fuga.', 'Repellat consequatur sint illum non molestiae hic quam. Ipsam non inventore sequi officia sint omnis qui deleniti. Incidunt debitis provident sunt veritatis non. Tenetur enim voluptate dolorem eum in sit dicta.', 'Magnam odio quo qui eum libero molestiae. Dolorum qui minus incidunt atque cupiditate. Iste qui sed ratione cupiditate et voluptas. Iste qui et a veritatis est.', 817372.12, 5, 1, NULL, 0, NULL),
(47, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Dolores dolore ut.', 'Excepturi error voluptatem animi eius quo totam amet. Et provident qui qui ea quibusdam. Quidem aspernatur doloremque molestias accusantium id.', 'At odit veniam facilis molestiae consequatur. Harum quia omnis id velit. Qui eaque molestiae reprehenderit.', 966916.60, 5, 1, NULL, 62, NULL),
(48, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Labore provident.', 'Libero ut impedit voluptatem aut laboriosam. Nisi ut nihil et rerum. Debitis illum in debitis error hic magnam et esse. Nihil autem et autem.', 'Ad vero sit nesciunt modi consequatur. Dolorem animi sed veritatis atque. Provident facilis ut aut illum. Autem fugiat quo ex voluptatem repudiandae beatae officiis.', 399433.20, 6, 1, NULL, 62, NULL),
(49, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Quis sit ut dolor.', 'In harum quasi harum animi. Quis autem veniam hic molestias. Quo distinctio sint ut ratione iure iste aliquam. Necessitatibus dolorum aut sed nobis non illum sint.', 'In voluptatem aperiam odio autem fugiat ut enim autem. Corrupti quia delectus vel et. Ea unde veniam dolores voluptas quis. Molestiae aut amet ipsa possimus eaque placeat beatae.', 897307.15, 4, 1, NULL, 11, NULL),
(50, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Adipisci.', 'Placeat eum est in voluptatem voluptas. Non inventore ut occaecati facilis dolores omnis quia molestiae.', 'Et quia voluptate earum ea asperiores veniam. Qui quod officia ut itaque aut provident. Architecto esse iste aut omnis omnis facilis autem.', 791153.16, 6, 1, NULL, 31, NULL),
(51, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Quo odio.', 'Dolores nihil illo iure magnam fugit. Laborum reprehenderit quis quos soluta. Enim error autem aliquam amet.', 'Voluptatem corrupti voluptatem aspernatur aperiam eos dicta asperiores. Ut explicabo vel labore excepturi inventore. Perspiciatis esse iusto et vitae.', 987895.25, 5, 1, NULL, 88, NULL),
(52, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Minus temporibus.', 'Repudiandae quo et corporis et quasi repudiandae. Debitis placeat consequatur excepturi quo. Totam possimus rerum corrupti libero.', 'Voluptatem minus excepturi nihil natus ullam. Voluptates consequatur incidunt ea quam. Et animi corporis eum quas consequuntur sint laudantium.', 901798.02, 6, 1, NULL, 53, NULL),
(53, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Quidem dolor.', 'Sequi aut ut ex assumenda quas eum voluptate. Cupiditate itaque amet ea molestiae. Necessitatibus quis a eius accusamus.', 'Numquam asperiores saepe optio eum iure. Vel minima pariatur maiores placeat repellendus esse et.', 792601.55, 5, 1, NULL, 33, NULL),
(54, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Ducimus corporis.', 'Aut beatae doloribus qui omnis vel veniam. Et illum hic libero. Mollitia facilis est dolores quas. Qui placeat rem omnis incidunt sit voluptate nesciunt.', 'Suscipit sequi quam praesentium aperiam. Quam repellendus temporibus saepe vel omnis est ut. Magni blanditiis deleniti aut rerum voluptas.', 282269.10, 4, 1, NULL, 90, NULL),
(55, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'In quae ratione.', 'Tempora dolores doloremque voluptas a eum quo et. Eum asperiores in distinctio aut voluptatem totam. Aut id voluptatem nemo beatae.', 'Sit aliquam perferendis illo qui quo impedit laboriosam. Quibusdam dolorem expedita explicabo. Non suscipit aliquam blanditiis est dolorum fugit minus. Deserunt perspiciatis sunt error eum dolores labore. Aut repellendus quasi ut recusandae sunt.', 238229.74, 6, 1, NULL, 72, NULL),
(56, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Qui libero sit.', 'Magni ipsum dolorem totam qui distinctio voluptas. Enim maiores hic saepe suscipit. Ut explicabo deserunt eum corporis. Commodi quia aut natus est et similique tempora.', 'Esse nemo cumque modi aliquam perferendis non atque a. Dolores molestiae itaque omnis quisquam consequuntur vero. Animi ab omnis nemo sint quas eos laboriosam. Saepe nobis commodi est dolor.', 279572.08, 6, 1, NULL, 100, NULL),
(57, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Dolorum non culpa.', 'Sunt et dolor sapiente perspiciatis incidunt in eius ea. Illo autem et laudantium placeat quidem et ea repellendus. Pariatur quos eum numquam est dignissimos. Sapiente enim aut quia. Dicta maxime unde nostrum cum ut qui.', 'Et non enim libero officia praesentium. Odit iure nobis nam natus. Totam beatae libero voluptas quis.', 86218.04, 7, 1, NULL, 78, NULL),
(58, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Id qui voluptate.', 'Quas consectetur distinctio fuga nihil consectetur blanditiis et. Id quis delectus dolores quibusdam non commodi ratione. Molestias corporis omnis ea qui et dicta voluptatem.', 'Et sit perspiciatis qui voluptas est soluta accusamus. Sunt assumenda laboriosam omnis ratione. Quasi quis iure in beatae. Repellat dolor et et magnam accusamus et ratione.', 115611.66, 6, 1, NULL, 99, NULL),
(59, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Quia optio.', 'In vel eos quaerat rerum nulla soluta vel vel. Dolores quibusdam ea fuga dolores repudiandae quibusdam voluptatum. Odit animi adipisci repellat aperiam vitae quibusdam.', 'A totam aut ipsa et voluptatum. Beatae sequi quod veritatis unde earum ipsa et.', 177636.13, 7, 1, NULL, 55, NULL),
(60, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Architecto.', 'Magnam natus possimus placeat. Magnam sed atque et ipsa reiciendis. Possimus autem ipsam earum sunt sunt repellat maiores aliquam. Accusantium quasi sit magni quia quae minus.', 'Qui rerum blanditiis saepe nemo tempore. Dolorem consequatur quae sequi dignissimos.', 774132.70, 4, 1, NULL, 32, NULL),
(61, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Sapiente eum eos.', 'Quidem aut aut molestias eum. Veritatis quasi laudantium rerum quos suscipit. Quia fugit laboriosam quo eum voluptatum eos magnam. Quos voluptas quos qui ea consequatur amet.', 'Beatae aut similique eum ullam maxime ea veniam et. Omnis laboriosam non nisi ut dolores. Modi architecto ut et consequatur.', 184135.71, 7, 1, NULL, 21, NULL),
(62, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Veritatis non.', 'Consectetur doloremque qui sapiente ut qui eveniet nulla. Tempora illum ut totam. Ad ea et ex magnam beatae. Non soluta quia porro aspernatur error eligendi itaque.', 'Eveniet aliquam perferendis fugiat voluptate quia consequatur. Doloremque quibusdam adipisci sed ea repellendus itaque est. Ut voluptas et rem consectetur quam. Consequatur voluptas asperiores sunt omnis adipisci et quia.', 360709.63, 7, 1, NULL, 45, NULL),
(63, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Rerum non.', 'Dignissimos non eveniet aliquid voluptas. Odit nostrum dolores minus totam non. Et illo vel sapiente illo quia. Voluptas error laudantium aliquid dolore.', 'Qui aut hic accusamus ipsam rerum rerum consequatur nesciunt. Velit ab est esse esse. Rerum et itaque nemo incidunt. Et totam assumenda et debitis sint.', 907788.50, 6, 1, NULL, 5, NULL),
(64, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Sit iure minima.', 'Earum architecto qui deleniti aliquam dolores blanditiis nostrum illum. Sequi eius cum non ex suscipit est. Voluptates eos enim consequatur aspernatur.', 'Ut ab in praesentium officiis quis nam. Quidem qui voluptas sint eius aut. Quo nostrum aut sint explicabo modi nihil porro fuga. Qui enim nisi accusamus quos omnis atque.', 652417.10, 6, 1, NULL, 66, NULL),
(65, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Sit labore modi.', 'Omnis sunt soluta est et animi aut deserunt. Aut quia accusamus molestias aut. Adipisci quia omnis ad beatae nihil.', 'Delectus ex aut officia laudantium enim. Dicta fugiat perspiciatis enim ipsa est rem quaerat iste. Veniam maiores distinctio reiciendis impedit laboriosam.', 342620.14, 5, 1, NULL, 76, NULL),
(66, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Id quasi enim.', 'Necessitatibus assumenda commodi doloremque illo. Ut et ea expedita consequatur. Sapiente dignissimos error minus et quaerat odio. Voluptatem ad saepe blanditiis provident eos magni suscipit.', 'Veritatis suscipit voluptatem libero nulla quod natus ut. Nam veniam iusto est qui temporibus delectus non. Quis minus non dignissimos non sint tempore.', 935342.38, 4, 1, NULL, 71, NULL),
(67, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Doloribus eos.', 'Cupiditate sapiente explicabo ut incidunt. Nesciunt sit aut impedit aut. Perferendis provident in sint voluptatem ut eligendi.', 'Placeat nulla sint repellendus nesciunt ea neque tempora. Eligendi omnis sunt sit perferendis officiis quod neque. Dolorum quod ipsum velit nam odio atque.', 827993.56, 4, 1, NULL, 90, NULL),
(68, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Qui laudantium.', 'Eveniet et quo vero tempore fugiat illo consequatur aut. Error autem autem tempore ea esse placeat recusandae. Quae aut temporibus et odit nulla. Excepturi rem quasi praesentium molestias est placeat.', 'Aut labore assumenda magni quis repellat cum. Dolorem itaque veniam maiores repudiandae a aut. Neque et veniam vero doloribus.', 628848.76, 6, 1, NULL, 50, NULL),
(69, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Quasi voluptas.', 'Quae impedit non quae et vel. Hic commodi deleniti iure eum consequuntur. Est facere et aliquam quaerat iste. Vel magni veritatis autem est quo tempora.', 'Ea sequi delectus dolorem atque porro. Ad nam ut praesentium atque sint ad repellendus. Unde est ut at.', 824617.29, 5, 1, NULL, 30, NULL),
(70, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Nemo est rerum.', 'Voluptatum rerum sint dolores. Sint laboriosam et at aut. Aut dolorem et sit dolores vero aut.', 'Dolores amet quia adipisci est harum mollitia laborum. Sapiente quia ut nobis repudiandae laudantium iusto quibusdam quia. Eum blanditiis possimus explicabo animi laborum.', 627352.67, 7, 1, NULL, 98, NULL),
(71, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Eos pariatur quod.', 'Reprehenderit et porro repellendus sint ea non necessitatibus. Pariatur ut quia rerum officia. Dignissimos dicta sed libero.', 'Reiciendis temporibus qui et sapiente. Dolores quae est qui impedit non nesciunt aut. Aut aliquid sed iste.', 285206.23, 7, 1, NULL, 64, NULL),
(72, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Vel quis soluta.', 'Pariatur aut velit iste nemo saepe. Ratione tenetur consequatur ea deserunt. Aut pariatur excepturi atque asperiores provident nihil in. In quos rerum iste dignissimos voluptatem dicta.', 'Illum consequatur quisquam voluptatem quos provident velit rem accusamus. Non tempore nisi rerum debitis. Inventore aperiam deleniti doloribus voluptatibus.', 607435.75, 4, 1, NULL, 57, NULL),
(73, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Praesentium quam.', 'Et voluptatem pariatur qui et nostrum sed illo. Eos et consequatur explicabo sed quaerat. Saepe dolores quos et quo iure et omnis. Doloribus voluptates natus reprehenderit incidunt iure.', 'Ut nisi ex qui. Assumenda vel ut et doloremque quo. Dolorum perferendis voluptas omnis vitae iusto.', 943874.65, 5, 1, NULL, 37, NULL),
(74, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Ea non et aut.', 'Ea expedita et quo. Eos possimus odio aut sint aut nemo aut. Neque sunt facilis rem facilis sit eum cum maiores. Eos cumque ut non asperiores at corporis dolorem.', 'Voluptas et eum quis molestiae et. Cumque ut iste neque ullam. Omnis quos alias laborum non a.', 875912.00, 6, 1, NULL, 11, NULL),
(75, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Quod et tempora.', 'Eos ipsam numquam quisquam harum. Culpa distinctio voluptas sed rerum deleniti voluptatum vel. Voluptatem enim repellendus voluptatibus.', 'Et dolorem temporibus eum harum corrupti dolor mollitia. Quos esse dolorem maxime. Doloremque repellendus aspernatur repudiandae a praesentium impedit. Qui quisquam autem voluptas qui praesentium.', 177865.05, 4, 1, NULL, 13, NULL),
(76, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Quia et.', 'Ullam consectetur explicabo eos quis animi ducimus. Earum alias animi a eos dolores similique sapiente quod. Accusamus totam animi eaque non asperiores quo.', 'Voluptas quo ad facilis itaque vitae. Ipsa neque ut veritatis. Veniam deleniti beatae quia. Earum voluptatum quod est facilis doloremque eaque est.', 460904.10, 6, 1, NULL, 78, NULL),
(77, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Odio similique et.', 'Vitae pariatur consectetur numquam quos assumenda magnam. Ipsum quod velit qui impedit sunt non ea. Nobis non voluptas aut expedita aspernatur neque eos. Vero et sed est aut.', 'Rem et molestiae facere sapiente neque temporibus. Dolor sint nostrum autem ipsa nihil error. Iusto libero sint fugit illum laboriosam fugit libero.', 857252.40, 6, 1, NULL, 65, NULL),
(78, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Debitis et facere.', 'Reiciendis voluptas omnis quo. Dolores optio similique dolorum sed. Labore nostrum rem dolores quo odio ab debitis. Repellat aliquid odit expedita id quia est facere.', 'Ea voluptatem enim fugit dolor quisquam culpa. Ratione maiores dignissimos iusto voluptate quod. Unde tempore beatae nihil explicabo et quia dicta reiciendis. Natus harum quam laborum non et at dolore at.', 595700.48, 5, 1, NULL, 14, NULL),
(79, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Facilis tenetur.', 'Est dolorum veniam neque et et ab omnis modi. Aut eos facere deserunt vitae. Inventore autem eius a omnis quia ut. Quas facilis numquam consequatur commodi. Ea omnis voluptas et et aut totam enim.', 'Rerum aut dignissimos et cumque. Voluptatem recusandae ipsa voluptates. Error incidunt non quibusdam animi. Qui aut quibusdam quidem aliquam.', 390025.62, 5, 1, NULL, 93, NULL),
(80, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Distinctio sint.', 'Et dolores et voluptatibus voluptatibus. Et nesciunt ducimus harum iusto. Iusto inventore doloribus similique fugiat adipisci asperiores iste. Molestiae ut ut quos hic.', 'Ratione incidunt sed totam quia. Rerum aperiam ipsum fuga eligendi ut. Dignissimos tempora esse numquam qui in impedit dicta. Quo possimus eaque esse porro et qui.', 512043.64, 6, 1, NULL, 2, NULL),
(81, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Et voluptas aut.', 'Eveniet rerum id culpa est voluptates nostrum sequi magnam. Beatae maxime sequi et sed neque. Ut ex placeat dolorum natus sit.', 'Explicabo neque et voluptatibus corrupti laboriosam eum dicta nihil. Aut et est esse aut ut. Natus qui qui quis qui molestiae nemo doloribus.', 863433.49, 4, 1, NULL, 6, NULL),
(82, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Harum nulla velit.', 'Ut eos debitis nam dolor voluptatem recusandae porro. Temporibus quo numquam accusantium asperiores dignissimos placeat. Debitis illum quibusdam ratione placeat aut vel. Debitis numquam quam incidunt optio.', 'In expedita asperiores est. Consectetur deleniti dolore blanditiis voluptatem quam. Et commodi occaecati soluta ea perferendis veritatis. Facilis illum distinctio facilis voluptatem blanditiis.', 521966.65, 5, 1, NULL, 62, NULL),
(83, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Voluptas rerum.', 'Expedita ratione voluptatem a. Aut quidem explicabo blanditiis voluptate distinctio. Quibusdam porro dolorem ut architecto ducimus cum rem.', 'Et explicabo quia doloremque incidunt magni. Veniam nihil cumque ut omnis praesentium reprehenderit at. Veniam illum fugiat dolore harum beatae autem corrupti.', 985877.04, 4, 1, NULL, 38, NULL),
(84, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Cumque autem.', 'Corporis aut eaque repudiandae eius odio. Consequatur suscipit quisquam ut eligendi aliquid et fugit eveniet. Error commodi officia corrupti omnis.', 'Veritatis est perferendis expedita iusto id. Quis aut sit atque tenetur aliquam minima. Neque repellendus enim qui repellendus incidunt.', 463255.76, 7, 1, NULL, 65, NULL),
(85, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Quia architecto.', 'Exercitationem vero natus iusto illo sint. Qui iste aut reprehenderit accusantium. Adipisci sint vel sint.', 'Ut eligendi error quam cum. Harum quia rem explicabo iste et. Ullam laudantium id dolorum voluptate dignissimos. Animi laudantium voluptate ex maxime ipsam consequatur architecto.', 21065.92, 7, 1, NULL, 27, NULL),
(86, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Dolorum sed omnis.', 'Totam debitis ut sed. Qui est consequatur amet qui rerum.', 'Rerum officiis rerum harum et doloribus est est ullam. Suscipit tenetur dolorum dignissimos reprehenderit. Voluptatem velit ipsum vitae ipsam id error impedit. Quam consequuntur ea laborum.', 594162.90, 5, 1, NULL, 14, NULL),
(87, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Accusantium omnis.', 'Nemo vitae maiores perspiciatis officia. Assumenda qui dolores totam et nisi. Vel earum unde molestiae et voluptates accusantium. Iure impedit cum ut voluptate et omnis. Repellat fugiat velit nisi non et corporis molestiae.', 'Nihil dicta exercitationem enim aspernatur omnis nesciunt voluptas doloribus. Molestiae et et qui hic. Ea libero dolore minima.', 848927.34, 4, 1, NULL, 52, NULL),
(88, '2020-01-16 15:05:18', '2020-01-16 15:05:18', 'Ut mollitia earum.', 'Numquam voluptas ea commodi quas voluptatibus explicabo. Enim officiis saepe ducimus est sed ex. Nihil quia dolorem quo illum.', 'Dolores autem quasi officia et. Temporibus earum pariatur dolor natus aliquid ea. Dolores sit deserunt eligendi. Laborum consectetur labore id corporis.', 139575.01, 6, 1, NULL, 41, NULL),
(89, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Quos commodi.', 'In quia eius quo alias tempore voluptas saepe aut. Fuga aut dignissimos similique mollitia officiis. Quis cum nemo molestias in quod. Repellat eveniet qui assumenda et autem et quis.', 'Sed tempora et sint dicta sapiente. Repellat accusamus repellendus dolor adipisci. Suscipit omnis earum quibusdam quia voluptate. Occaecati illo aspernatur quaerat ut dolorum.', 961705.24, 4, 1, NULL, 78, NULL),
(90, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'At et et nihil.', 'Excepturi excepturi ut ut non ea sed. Aut fuga repellendus in vel. Dignissimos in repellendus repellendus vel non voluptatum. Enim doloribus est et.', 'In itaque est consequatur aut temporibus ipsa voluptas possimus. Sunt quod rem sed natus rerum. Dolorum sit libero eaque architecto.', 596628.90, 4, 1, NULL, 99, NULL),
(91, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Qui.', 'A dignissimos ea ut rerum ab doloremque molestiae. Ea delectus facilis dolorem voluptatem velit in rerum mollitia. Eos ut adipisci ab at aspernatur.', 'Ea sit aliquam quas vel. Quasi dolorum porro ab aut rerum omnis. Magni ea et odit quos dolorem.', 671683.50, 5, 1, NULL, 49, NULL),
(92, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Rerum cum.', 'Minima maxime et iusto magni voluptatibus. Quidem fugit et perspiciatis ullam itaque soluta. Animi commodi perspiciatis aut aut quia sunt et. Pariatur ut voluptas odit aut qui id.', 'Quas quo blanditiis commodi libero ea labore qui sed. Ex voluptate est hic quia eum qui. Veniam facilis a doloribus deserunt iste non.', 517115.19, 7, 1, NULL, 34, NULL),
(93, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Minus hic numquam.', 'Natus unde autem cum accusamus. Vel illo eum consequatur esse possimus adipisci occaecati vitae. Odit odit officia qui aut quam.', 'Veniam expedita officiis reprehenderit eveniet. Ipsum illo aut aut. Reiciendis delectus autem itaque ullam adipisci aut qui. Fugit cum voluptatem eos provident.', 464187.40, 5, 1, NULL, 41, NULL),
(94, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Deserunt adipisci.', 'Repellendus autem error aliquid facilis aut quas sed. Ut minus libero ea incidunt ratione ut accusantium et. Ratione consequatur aut laudantium ut voluptatem perferendis possimus.', 'Voluptatum quisquam amet qui velit. Vel est dolorem quia quas quod atque. Debitis officiis nisi cupiditate cum hic. Doloribus asperiores sit voluptatem dolores sit ad.', 720679.00, 7, 1, NULL, 47, NULL),
(95, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Optio dignissimos.', 'Soluta quia quo sint vero autem. Ullam laboriosam et ipsa dolore. Consequuntur voluptas numquam non laborum.', 'Omnis omnis placeat consectetur consequatur accusamus iusto dolor ut. Officia nemo sed accusamus et corrupti vel. Distinctio perspiciatis magnam fugiat sit sequi laboriosam nesciunt.', 735430.65, 5, 1, NULL, 21, NULL),
(96, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Rerum vel omnis.', 'Officia natus perspiciatis aut maiores. Ut incidunt eius rerum molestiae quibusdam asperiores nihil. Et reprehenderit fugiat harum molestiae.', 'Iusto est culpa quam. Repellendus voluptatum neque et dicta. Quia officia maiores ipsa magnam reiciendis. Et necessitatibus aut molestias in.', 10008.33, 4, 1, NULL, 30, NULL),
(97, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Neque voluptatum.', 'Optio commodi deserunt optio rem. Rerum tenetur perspiciatis ut ea.', 'Quam neque ut porro a aut impedit ea. Placeat voluptatem reprehenderit voluptatem eius quia. Qui necessitatibus ad aperiam architecto soluta qui excepturi quia. Nostrum harum cumque ab alias debitis et. Architecto soluta quia saepe velit qui et.', 181454.71, 7, 1, NULL, 54, NULL),
(98, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Iure corrupti.', 'Laboriosam labore non aliquam quae hic. Consequatur necessitatibus dolorem dolor ipsa cumque. Distinctio unde corrupti ea officia unde. Quam sunt corporis quasi labore praesentium labore in ea.', 'Nesciunt eligendi facilis aliquam quas. Necessitatibus eaque ab commodi nobis eius explicabo nobis. Recusandae optio est tempora eius facere eos modi.', 368962.28, 6, 1, NULL, 81, NULL),
(99, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Debitis ea ullam.', 'Laboriosam ut voluptatibus consequuntur laborum amet quam. Corporis blanditiis officia aut sunt. Corrupti non et id est et occaecati.', 'Et id optio doloremque nulla. Omnis voluptatibus voluptatem impedit est qui id unde. Nemo corrupti temporibus ut cum ea neque facere odio. Non totam est et iusto hic voluptates.', 900483.44, 4, 1, NULL, 90, NULL),
(100, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Voluptatum illum.', 'Suscipit provident omnis culpa eos voluptatem. Voluptates quae officia non esse architecto cupiditate nisi. Tenetur eum aperiam eveniet ad numquam odit. Facilis porro nihil doloribus.', 'Dolor aliquid ut sunt ab porro sit libero alias. Fuga dolorum pariatur ex voluptas beatae pariatur. Corrupti esse est nam.', 894321.15, 7, 1, NULL, 28, NULL),
(101, '2020-01-16 15:05:19', '2020-01-16 15:05:19', 'Recusandae.', 'Aut assumenda omnis commodi non quia. Id quos commodi rerum est cum recusandae. Optio vel sunt voluptatibus saepe. Temporibus dolores sapiente velit eos consequatur vel velit doloremque. Sunt iure ex voluptas quis illo et ratione.', 'Voluptatem rem ut amet officia necessitatibus vel. Sunt possimus est iusto ducimus quibusdam omnis. Animi quaerat atque inventore qui officia rerum. Est et ut est ut inventore.', 887841.88, 4, 1, NULL, 16, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_photos`
--

CREATE TABLE `product_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `src` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_photos`
--

INSERT INTO `product_photos` (`id`, `created_at`, `updated_at`, `product_id`, `src`, `title`, `deleted_at`) VALUES
(1, '2019-12-30 19:52:43', '2019-12-30 19:52:43', 9, 'criolla1.jpg', NULL, NULL),
(2, '2019-12-30 19:52:43', '2019-12-30 19:52:43', 9, 'criolla2.jpg', NULL, NULL),
(3, '2019-12-30 19:52:43', '2019-12-30 19:52:43', 9, 'criolla3', NULL, NULL),
(4, '2019-12-30 19:52:43', '2019-12-30 19:52:43', 9, 'criolla4.jpg', NULL, NULL);

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
  `deleted_at` timestamp NULL DEFAULT NULL
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

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `birthdate`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Zion Langworth', NULL, 'beulah89@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KrSmsMmGqx', '2020-01-16 15:02:25', '2020-01-16 15:02:25', NULL),
(2, 'Cathy Runte PhD', NULL, 'samara85@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kvqFHSUWod', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(3, 'Kole Mohr', NULL, 'yolanda53@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QNIkW1SCQS', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(4, 'Heber D\'Amore', NULL, 'jarod66@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WBFEgUzDaU', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(5, 'Edwin Mueller', NULL, 'hannah.buckridge@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YstuRpYAYe', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(6, 'Mr. Junior Yundt PhD', NULL, 'erdman.hellen@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JCBplndSal', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(7, 'Joshuah Homenick', NULL, 'smith.sabina@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wMgj0x2WYz', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(8, 'Bella Johnson', NULL, 'kjohnston@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YBTFXNV0i8', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(9, 'Dr. Anibal Dach DDS', NULL, 'qwindler@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dfjtMTkoTW', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(10, 'Kiara Sporer', NULL, 'aditya90@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iOxfLM16PS', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(11, 'Marilou Dooley', NULL, 'hschowalter@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ug2P0nAdxJ', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(12, 'Alejandra Sawayn', NULL, 'fletcher13@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WXRWUDYRqu', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(13, 'Pablo Wiegand MD', NULL, 'dmurphy@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rPC7nICiS7', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(14, 'Cheyanne Hartmann', NULL, 'beier.nella@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L88z9jxRQW', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(15, 'Wilburn Dickens IV', NULL, 'alexie.larkin@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XmQ2RO9dbi', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(16, 'Elisa Labadie', NULL, 'witting.dedric@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'q4QtQOd0UM', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(17, 'Prof. Alfonzo Larson DDS', NULL, 'xreichel@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ToIbca1m1X', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(18, 'Miss Willow Thiel', NULL, 'noelia.kuhn@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RG7PNOZPV8', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(19, 'Prof. Leo Quitzon', NULL, 'ayla07@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4bMFPqwFvb', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(20, 'Pansy Bradtke', NULL, 'marcus11@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ucdJ9Eh98v', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(21, 'Oswald O\'Conner', NULL, 'dglover@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w1QPhshjvM', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(22, 'Kurt Mraz', NULL, 'konopelski.aaliyah@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EjgQweADmq', '2020-01-16 15:02:26', '2020-01-16 15:02:26', NULL),
(23, 'Prof. Twila Kassulke Jr.', NULL, 'cordie98@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ObzGyL9rbF', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(24, 'Earnestine Volkman', NULL, 'modesto.wisoky@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CR2QpdX4Dc', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(25, 'Marjorie Hill', NULL, 'ohara.stefanie@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jU5Netqo2k', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(26, 'Alexane Champlin', NULL, 'stehr.saul@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YF0MuHs1h6', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(27, 'Prof. Curt Bruen I', NULL, 'dante26@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dOxj9wKlEv', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(28, 'Imani Dickinson', NULL, 'tanner07@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0089NBYw17', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(29, 'Angelina Spencer I', NULL, 'rfahey@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YVwndJU0EM', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(30, 'Prof. Krista Ferry MD', NULL, 'howe.carrie@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hz06vgITWm', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(31, 'Prof. Eulalia Murray DVM', NULL, 'isaias.schaden@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'egR3sKKAzq', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(32, 'Prof. Jay Grant IV', NULL, 'herman.camille@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0fUIFUeXKs', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(33, 'Lucas Hettinger', NULL, 'jjaskolski@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sGE9wLxupq', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(34, 'Juliet Goldner I', NULL, 'vkessler@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VwjhpDBZwI', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(35, 'Elza Hamill', NULL, 'trent.purdy@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2JiD7wbR8d', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(36, 'Makenna Gutkowski', NULL, 'darryl09@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p7HlRbgtvT', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(37, 'Lurline Kling', NULL, 'istroman@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4AO7wK2GFp', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(38, 'Mr. Theo Huel', NULL, 'cyril25@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hexbWtCNCh', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(39, 'Amir Daniel', NULL, 'dolly71@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lcRgus75eM', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(40, 'Maryjane Moen', NULL, 'kailyn15@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iWqTRyTkFS', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(41, 'Vicky Schmidt', NULL, 'araceli47@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5YqZT7fIEm', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(42, 'Earline Reinger', NULL, 'bjaskolski@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1wK41fzLLN', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(43, 'Prof. Bo Turcotte', NULL, 'betty.rippin@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hdFqqDratc', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(44, 'Alfonso Ledner II', NULL, 'robel.christopher@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7eiG6thkMg', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(45, 'Prof. Deborah Weber DDS', NULL, 'ruecker.darian@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '89Azp7gp0x', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(46, 'Toni Olson', NULL, 'ucremin@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dzbYF23xKK', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(47, 'Aidan Jacobs', NULL, 'ernser.cathy@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H8W9S2hGMD', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(48, 'Christelle Johnson', NULL, 'sally30@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tqsnaQdjOc', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(49, 'Beaulah Swaniawski', NULL, 'stark.lavada@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X0rxJnAOHv', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(50, 'Mr. Stevie Stanton MD', NULL, 'madalyn.lueilwitz@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UfTdgdfGJU', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(51, 'Chadrick Aufderhar', NULL, 'qdicki@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kFqbEGdoDT', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(52, 'Hillard Cremin', NULL, 'hazel.braun@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AND18CkTxA', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(53, 'Prof. Chris McCullough II', NULL, 'zkonopelski@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wcpBorSS96', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(54, 'Sonya Morissette', NULL, 'ima.hudson@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6v2yxS0jfP', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(55, 'Carmine Russel', NULL, 'alberto.hammes@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OwzzO6Vfvz', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(56, 'Harley Becker', NULL, 'efisher@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QvU7coo4SG', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(57, 'Kane Wuckert', NULL, 'alessia57@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'r9vKObepDv', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(58, 'Prof. Jasper Schamberger MD', NULL, 'gluettgen@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'piJgCgoWWS', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(59, 'Rory Mohr', NULL, 'aisha.emmerich@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Be4LzPFcZU', '2020-01-16 15:02:27', '2020-01-16 15:02:27', NULL),
(60, 'Maia Dare', NULL, 'moore.maribel@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Hfscor87gO', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(61, 'Patricia Bernier', NULL, 'adah.ziemann@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iCoYrXyCJQ', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(62, 'Charlie Huels', NULL, 'mills.tabitha@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mSiMj3ihHg', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(63, 'Malcolm Connelly', NULL, 'oconn@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xie7H5wDtn', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(64, 'Tabitha Hartmann', NULL, 'gmorar@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pZN4YOV4cN', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(65, 'Ford Toy', NULL, 'ava75@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0RJxvoBSFJ', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(66, 'Erwin Kuvalis', NULL, 'jennyfer17@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N2RDxIdnMc', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(67, 'Monica Pollich', NULL, 'breitenberg.adriana@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hlgv8Uhf1n', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(68, 'Liam Schmidt', NULL, 'charlie32@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PXRQSodvcQ', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(69, 'Vladimir Denesik III', NULL, 'xfritsch@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TNbkMThkVF', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(70, 'Joel Hilpert', NULL, 'carson.brown@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DisimMO7KR', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(71, 'Dallin Tromp', NULL, 'gpacocha@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nqomviUarW', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(72, 'Shyann Keebler', NULL, 'jaylin28@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v7PRT4ViPe', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(73, 'Mr. Rylan Zboncak II', NULL, 'chris20@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U5t1tvropJ', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(74, 'Lisa Botsford', NULL, 'hickle.arely@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fuYuiBDamz', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(75, 'Francisco Rowe', NULL, 'egleason@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KXJ7OZyLI3', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(76, 'Newton Rau IV', NULL, 'connor98@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Tw3RMVB1zB', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(77, 'Dimitri Mohr Jr.', NULL, 'raheem.dietrich@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PASvFDgPtP', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(78, 'Jensen Harber', NULL, 'clifton.kreiger@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '70ir265UTZ', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(79, 'Easton Towne', NULL, 'igrimes@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1OsJCfYHjl', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(80, 'Mrs. Filomena Spencer I', NULL, 'jasmin67@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oqAjOXINTJ', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(81, 'Dr. Benny Klocko DDS', NULL, 'gkovacek@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'l75xMwsLQj', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(82, 'Mitchel Zemlak', NULL, 'kozey.jaleel@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uy9LXDDg9i', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(83, 'Leslie Nolan', NULL, 'theo94@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6E04J31arL', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(84, 'Ms. Aryanna Hand III', NULL, 'roscoe92@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WcyKs4LYQk', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(85, 'Hilton Kozey', NULL, 'eliseo.kassulke@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kvemj85WKS', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(86, 'Miss Tyra Fadel Jr.', NULL, 'garrison76@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zZk51bkrYN', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(87, 'Mr. Kristofer Klein DDS', NULL, 'cwalsh@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jSfVbTeYz6', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(88, 'Franco Kuhlman', NULL, 'ruthie.schumm@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HD00pEVqR2', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(89, 'Jocelyn Fay', NULL, 'tristin36@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IbSje3c3tK', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(90, 'Jackeline Stark', NULL, 'jgottlieb@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eEZkHkcHqu', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(91, 'Elinor Sawayn', NULL, 'cziemann@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8WKr5xgofD', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(92, 'Sienna Veum', NULL, 'champlin.bo@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nxPApqi6rM', '2020-01-16 15:02:28', '2020-01-16 15:02:28', NULL),
(93, 'Magdalen Stamm', NULL, 'waino66@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WUGPpPTNkc', '2020-01-16 15:02:29', '2020-01-16 15:02:29', NULL),
(94, 'Geovanni Durgan', NULL, 'efeest@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ylHw5Rlhje', '2020-01-16 15:02:29', '2020-01-16 15:02:29', NULL),
(95, 'Chesley Ruecker', NULL, 'felicita35@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PYnfDRb6PA', '2020-01-16 15:02:29', '2020-01-16 15:02:29', NULL),
(96, 'Sierra Armstrong', NULL, 'treutel.aaron@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ywZ7mnqBkH', '2020-01-16 15:02:29', '2020-01-16 15:02:29', NULL),
(97, 'Salma Dickinson', NULL, 'skiles.sharon@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RzuUhW7ApU', '2020-01-16 15:02:29', '2020-01-16 15:02:29', NULL),
(98, 'Prof. Pietro Towne', NULL, 'hmiller@example.net', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yUY7CkUZ1x', '2020-01-16 15:02:29', '2020-01-16 15:02:29', NULL),
(99, 'Adelia Prosacco I', NULL, 'dstracke@example.org', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uGtmJtmEbq', '2020-01-16 15:02:29', '2020-01-16 15:02:29', NULL),
(100, 'Myrl Abshire', NULL, 'leonora91@example.com', NULL, '2020-01-16 15:02:25', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9RHHJ1KqTR', '2020-01-16 15:02:29', '2020-01-16 15:02:29', NULL);

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
-- Indices de la tabla `offer__product`
--
ALTER TABLE `offer__product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offer__product_product_id_foreign` (`product_id`),
  ADD KEY `offer__product_offer_id_foreign` (`offer_id`);

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
-- Indices de la tabla `product_photos`
--
ALTER TABLE `product_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_photos_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_paymentmethod_id_foreign` (`paymentmethod_id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cart_product`
--
ALTER TABLE `cart_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `offer__product`
--
ALTER TABLE `offer__product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paymentmethods`
--
ALTER TABLE `paymentmethods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productpictures`
--
ALTER TABLE `productpictures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `product_photos`
--
ALTER TABLE `product_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

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
-- Filtros para la tabla `offer__product`
--
ALTER TABLE `offer__product`
  ADD CONSTRAINT `offer__product_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`),
  ADD CONSTRAINT `offer__product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

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
-- Filtros para la tabla `product_photos`
--
ALTER TABLE `product_photos`
  ADD CONSTRAINT `product_photos_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `purchases`
--
ALTER TABLE `purchases`
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

-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 19 oct. 2020 à 00:46
-- Version du serveur :  10.3.24-MariaDB-cll-lve
-- Version de PHP : 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `massarpx_p_backend`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'categorie',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Pizzas', 'Pizzas', NULL, NULL),
(6, 'Sandwicherie', 'Sandwicherie', NULL, NULL),
(7, 'Jus Frais', 'Jus Frais', NULL, NULL),
(8, 'Desserts', 'Desserts', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 0, 0, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'description1', 'text', 'Description 1', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'description2', 'text', 'Description2', 1, 0, 0, 0, 0, 0, '{}', 4),
(26, 4, 'description3', 'text', 'INGRÉDIENTS', 1, 1, 1, 1, 1, 1, '{}', 5),
(27, 4, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 6),
(28, 4, 'image1', 'image', 'Image1', 1, 1, 1, 1, 1, 1, '{}', 7),
(29, 4, 'image2', 'image', 'Image2', 1, 1, 1, 1, 1, 1, '{}', 8),
(30, 4, 'image3', 'image', 'Image3', 1, 1, 1, 1, 1, 1, '{}', 9),
(31, 4, 'is_added', 'text', 'Is Added', 1, 0, 0, 0, 0, 0, '{}', 10),
(32, 4, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 11),
(33, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 12),
(34, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(35, 4, 'plat_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(36, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(37, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(38, 5, 'slug', 'text', 'Slug', 1, 0, 0, 0, 0, 0, '{}', 3),
(39, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(40, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(41, 5, 'category_hasmany_plat_relationship', 'relationship', 'plats', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Plat\",\"table\":\"plats\",\"type\":\"hasMany\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(49, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(50, 1, 'user_hasmany_order_relationship', 'relationship', 'orders', 0, 1, 1, 0, 0, 0, '{\"model\":\"App\\\\Order\",\"table\":\"orders\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(51, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 7, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 0, '{}', 2),
(53, 7, 'order_name', 'text', 'Order Name', 1, 1, 1, 0, 0, 0, '{}', 3),
(54, 7, 'price', 'text', 'Price', 1, 1, 1, 0, 0, 0, '{}', 4),
(55, 7, 'imageURL', 'image', 'ImageURL', 1, 1, 1, 0, 0, 0, '{}', 5),
(56, 7, 'is_added', 'text', 'Is Added', 1, 0, 0, 0, 0, 0, '{}', 6),
(57, 7, 'order_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(58, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(59, 8, 'id_user', 'text', 'Id User', 1, 1, 1, 1, 1, 1, '{}', 2),
(60, 8, 'adresse', 'text', 'Adresse', 1, 1, 1, 1, 1, 1, '{}', 3),
(61, 8, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 4),
(62, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(63, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(64, 8, 'reservation_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"id_user\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":null}', 7),
(65, 7, 'cont', 'number', 'Cont', 0, 1, 1, 1, 1, 1, '{}', 4),
(66, 4, 'cont', 'text', 'Cont', 1, 1, 1, 1, 1, 1, '{}', 4);

-- --------------------------------------------------------

--
-- Structure de la table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-07-13 11:30:28', '2020-07-16 10:32:45'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-07-13 11:30:28', '2020-07-13 11:30:28'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-07-13 11:30:28', '2020-07-13 11:30:28'),
(4, 'plats', 'plats', 'Plat', 'Plats', NULL, 'App\\Plat', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-13 11:42:15', '2020-10-08 09:44:59'),
(5, 'categories', 'categories', 'Category', 'Categories', NULL, 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-13 11:46:43', '2020-09-12 11:40:50'),
(7, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-14 16:28:57', '2020-07-25 16:27:00'),
(8, 'reservations', 'reservations', 'Reservation', 'Reservations', NULL, 'App\\Reservation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-07-24 09:56:09', '2020-07-24 09:56:09');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-07-13 11:30:30', '2020-07-13 11:30:30');

-- --------------------------------------------------------

--
-- Structure de la table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-07-13 11:30:31', '2020-07-13 11:30:31', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2020-07-13 11:30:31', '2020-08-12 17:05:51', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2020-07-13 11:30:31', '2020-08-12 17:05:51', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2020-07-13 11:30:31', '2020-08-12 17:05:51', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2020-07-13 11:30:31', '2020-08-12 17:05:45', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-07-13 11:30:31', '2020-08-12 17:05:22', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-07-13 11:30:31', '2020-08-12 17:05:22', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-07-13 11:30:31', '2020-08-12 17:05:22', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-07-13 11:30:31', '2020-08-12 17:05:22', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2020-07-13 11:30:31', '2020-08-12 17:05:45', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-07-13 11:30:32', '2020-08-12 17:05:22', 'voyager.hooks', NULL),
(12, 1, 'Plats', '', '_self', 'voyager-pie-chart', '#000000', NULL, 2, '2020-07-13 11:42:15', '2020-08-12 17:07:10', 'voyager.plats.index', 'null'),
(13, 1, 'Categories', '', '_self', 'voyager-paper-plane', '#000000', NULL, 3, '2020-07-13 11:46:43', '2020-08-12 17:07:42', 'voyager.categories.index', 'null');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_23_022858_create_plats_table', 1),
(5, '2020_06_23_030111_create_reservations_table', 1),
(6, '2020_06_30_020010_create_user_clients_table', 1),
(7, '2020_07_07_191121_create_orders_table', 1),
(8, '2020_07_13_115317_create_categories_table', 1),
(9, '2016_01_01_000000_add_voyager_user_fields', 2),
(10, '2016_01_01_000000_create_data_types_table', 2),
(11, '2016_05_19_173453_create_menu_table', 2),
(12, '2016_10_21_190000_create_roles_table', 2),
(13, '2016_10_21_190000_create_settings_table', 2),
(14, '2016_11_30_135954_create_permission_table', 2),
(15, '2016_11_30_141208_create_permission_role_table', 2),
(16, '2016_12_26_201236_data_types__add__server_side', 2),
(17, '2017_01_13_000000_add_route_to_menu_items_table', 2),
(18, '2017_01_14_005015_create_translations_table', 2),
(19, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
(20, '2017_03_06_000000_add_controller_to_data_types_table', 2),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 2),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
(23, '2017_08_05_000000_add_group_to_settings_table', 2),
(24, '2017_11_26_013050_add_user_role_relationship', 2),
(25, '2017_11_26_015000_create_user_roles_table', 2),
(26, '2018_03_11_000000_add_user_settings', 2),
(27, '2018_03_14_000000_add_details_to_data_types_table', 2),
(28, '2018_03_16_000000_make_settings_value_nullable', 2),
(29, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(30, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(31, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(32, '2016_06_01_000004_create_oauth_clients_table', 3),
(33, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
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
-- Déchargement des données de la table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0030a46aa3a2791c092a111222768e25ec141d6c3ba498362d0b46706c6068162838a638d312b3bb', 5, 1, 'othmane@othmane.com-2020-07-20 17:15:05', '[]', 0, '2020-07-20 15:15:05', '2020-07-20 15:15:05', '2021-07-20 17:15:05'),
('01120b75cf86d308842a16511ddfdc4f489c1da392f939efea14ece0cce44209b4098b55fb75ab6f', 9, 1, 'sara@gmail.com-2020-07-30 11:27:23', '[]', 0, '2020-07-30 10:27:23', '2020-07-30 10:27:23', '2021-07-30 11:27:23'),
('011afeac59b3a1a0ecf49be273accd00472b036e3dd1390f6393e96623f7fc037c7de0abb55a3ea1', 1, 1, 'admin@gmail.com-2020-10-07 18:52:20', '[]', 0, '2020-10-07 17:52:20', '2020-10-07 17:52:20', '2021-10-07 18:52:20'),
('0183382d95f3c4cb69a9f0d5f6ffd7c2a953a9c2a9a4d97a888a571f7e8898bcd5ade746a1010eeb', 13, 1, 'jamal@gmail.com-2020-08-05 18:46:08', '[]', 0, '2020-08-05 17:46:08', '2020-08-05 17:46:08', '2021-08-05 18:46:08'),
('01baed13c616cdf2f5961fd086a66997a666a5d04c56193c374bbe7fef59b3e2859a1313bf60887e', 9, 1, 'sara@gmail.com-2020-07-29 15:58:09', '[]', 0, '2020-07-29 14:58:09', '2020-07-29 14:58:09', '2021-07-29 15:58:09'),
('01d6b37a91eab03c9ec91cb59dd3b0c70aff738bbaaeb5ac30a437a177eddc31bacc33ef20687f55', 5, 1, 'othmane@othmane.com-2020-09-12 23:38:27', '[]', 0, '2020-09-12 22:38:27', '2020-09-12 22:38:27', '2021-09-12 23:38:27'),
('020eea73d79989f51e6a5291670c615f6f2b865986de130a060f6407acfe59cb8d24d7e2675f83b2', 1, 1, 'lahcen@gmail.com-2020-08-06 18:16:58', '[]', 0, '2020-08-06 17:16:58', '2020-08-06 17:16:58', '2021-08-06 18:16:58'),
('02267513f786794b53fc83a27782eee637b589c4453b0813fe76bbde718b2ea80f6930487ef8d7cd', 13, 1, 'jamal@gmail.com-2020-08-05 19:24:46', '[]', 0, '2020-08-05 18:24:46', '2020-08-05 18:24:46', '2021-08-05 19:24:46'),
('032bcc21dbd7e964ff6c0c853db9f6791ab5796203426d9ecfb46cba578b4f8d826022d66ffe1cd1', 9, 1, 'sara@gmail.com-2020-08-04 11:52:55', '[]', 0, '2020-08-04 10:52:55', '2020-08-04 10:52:55', '2021-08-04 11:52:55'),
('03f308912b9db9929095f6c0a809d2c27e09cfc3f47b43ec3d749499145fa3c80476d66a3ad64edc', 9, 1, 'sara@gmail.com-2020-07-29 15:58:08', '[]', 0, '2020-07-29 14:58:08', '2020-07-29 14:58:08', '2021-07-29 15:58:08'),
('041fe61d1932a42edda2e0f68ce868b22983decca8527075fb02807b2685bdcb8a66223f2232b2da', 7, 1, 'kamal@gmail.com-2020-07-16 15:34:33', '[]', 0, '2020-07-16 13:34:33', '2020-07-16 13:34:33', '2021-07-16 15:34:33'),
('04b412a6884151c307bf19538fccaa9ca9900bac9726d78f3753553bdb95fb6f4752205ccea74943', 5, 1, 'othmane@othmane.com-2020-08-13 23:39:41', '[]', 0, '2020-08-13 22:39:41', '2020-08-13 22:39:41', '2021-08-13 23:39:41'),
('04f511f54adcc51d17166201bff574a3fb05e25a0aa90f6239cc280e3cf9a4275c2c0d714606fa86', 1, 1, 'admin@gmail.com-2020-10-07 17:24:18', '[]', 0, '2020-10-07 16:24:18', '2020-10-07 16:24:18', '2021-10-07 17:24:18'),
('0577544dcc7c37fd8e5ac69d44fffa6a2c95a4ab6aeb98f31b4b95deff40c48333ba1b33d89ec0f8', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:35', '[]', 0, '2020-09-13 20:49:35', '2020-09-13 20:49:35', '2021-09-13 21:49:35'),
('05dac0f7051ff8bed129d7177a4b2c44c8a4a41e97016afffc4d9484b5bf7115dc54915eaea39fec', 6, 1, 'issam@gmail.com-2020-07-16 16:40:18', '[]', 0, '2020-07-16 14:40:20', '2020-07-16 14:40:20', '2021-07-16 16:40:20'),
('060cc273566c030c7583bab8ea81ab511519ce8d8b3ec0747e699308bd24b657e3b9a884871d158d', 5, 1, 'othmane@othmane.com-2020-07-27 16:09:01', '[]', 0, '2020-07-27 15:09:01', '2020-07-27 15:09:01', '2021-07-27 16:09:01'),
('0628559eb200053f06719b87e7a63a3c5f2bc76557f556298249c93aff13b215084e85218cbf41e0', 6, 1, 'issam@gmail.com-2020-07-17 13:45:04', '[]', 0, '2020-07-17 11:45:05', '2020-07-17 11:45:05', '2021-07-17 13:45:05'),
('07a0033955854bb4c20b841cfb74d7e11d4b6e10872e2e358f4200cf42043d049b80f101fff603a7', 5, 1, 'othmane@othmane.com-2020-07-20 17:25:15', '[]', 0, '2020-07-20 15:25:15', '2020-07-20 15:25:15', '2021-07-20 17:25:15'),
('08da2f89aa88dbdbc15926f26da8b3ef2563e0e8d8611be7659d611f294825b3edbb37a967c68ffe', 5, 1, 'othmane@othmane.com-2020-07-25 16:35:54', '[]', 0, '2020-07-25 15:35:54', '2020-07-25 15:35:54', '2021-07-25 16:35:54'),
('08e74791d8124cfd67b317f514986806580b575fc4582fe0ff8530aa00b8d40ecf24b13b5ab359a1', 1, 1, 'lahcen@gmail.com-2020-08-06 14:17:11', '[]', 0, '2020-08-06 13:17:11', '2020-08-06 13:17:11', '2021-08-06 14:17:11'),
('095b7ec0d0c11794e5171b1cc8a01497eb2853cdbea654104370cbdeca8bb71b2b8a24eee842fdcb', 5, 1, 'othmane@othmane.com-2020-07-18 15:10:55', '[]', 0, '2020-07-18 13:10:56', '2020-07-18 13:10:56', '2021-07-18 15:10:56'),
('0a2da3d804ec2ab52f1195087f4e72fe3c997bdb877a64ef2ff39e9e68ecd009d33e7cc5d5afeb48', 1, 1, 'admin@gmail.com-2020-10-01 14:19:42', '[]', 0, '2020-10-01 13:19:43', '2020-10-01 13:19:43', '2021-10-01 14:19:43'),
('0b141adf09f122c3630c278ff950a1b9c15ded20b2ac9c0ca29e8e9ffa9000ae551ef629b764db80', 5, 1, 'othmane@othmane.com-2020-07-20 17:51:43', '[]', 0, '2020-07-20 15:51:43', '2020-07-20 15:51:43', '2021-07-20 17:51:43'),
('0bee758e80761b29094f5f0b5e564675951eb14a1dad6ae1f5fc8bc32a568e7c76272fb31bf4dc13', 34, 1, 'omar@gmail.com-2020-09-17 15:11:56', '[]', 0, '2020-09-17 14:11:56', '2020-09-17 14:11:56', '2021-09-17 15:11:56'),
('0beef856b65f5bc9d68abfd03efaa9d75afda115b3c668ef15b6468623e1b0d66aeb41429f73110e', 1, 1, 'lahcen@gmail.com-2020-08-05 16:42:34', '[]', 0, '2020-08-05 15:42:34', '2020-08-05 15:42:34', '2021-08-05 16:42:34'),
('0c4ac99c610280b314459873fd4ddc567fdf364904a0c542b8b5ff051bdd04a570f061d6574249ca', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:35', '[]', 0, '2020-09-13 20:49:35', '2020-09-13 20:49:35', '2021-09-13 21:49:35'),
('0d3c0607b045e530fdb74b232f617a296570f4b83c67aa4fb063d20b8cee043f261cb5856579aada', 1, 1, 'lahcen@gmail.com-2020-09-13 17:18:02', '[]', 0, '2020-09-13 16:18:04', '2020-09-13 16:18:04', '2021-09-13 17:18:04'),
('0da37606d70c34a96f077dc97e244d8cb66a3cd97bc507c9fdfbb61ebea1b1221f71820e73a1b92f', 10, 1, 'test@test.com-2020-08-05 11:24:45', '[]', 0, '2020-08-05 10:24:45', '2020-08-05 10:24:45', '2021-08-05 11:24:45'),
('0da6af8a17574bbb79afb4f67816e4f05d549ccf6ea2f407c36f9703e80c05f98c7e5ee475372e84', 10, 1, 'test@test.com-2020-08-05 10:59:56', '[]', 0, '2020-08-05 09:59:57', '2020-08-05 09:59:57', '2021-08-05 10:59:57'),
('0df24b8b651719779834f9b59ac2c079ea1bf2fb337982ca36ccd1a5575705091f9506e7c0b15615', 1, 1, 'lahcen@gmail.com-2020-08-05 12:03:29', '[]', 0, '2020-08-05 11:03:29', '2020-08-05 11:03:29', '2021-08-05 12:03:29'),
('0df727e30a19da0701a953bd8ed63858f84f7865a52c17a7469d8e5225e72299c1d6361894b37799', 6, 1, 'issam@gmail.com-2020-07-16 14:50:26', '[]', 0, '2020-07-16 12:50:26', '2020-07-16 12:50:26', '2021-07-16 14:50:26'),
('0eca3fc36604accebcecb38ec164653cbb9ac0e226fc0acda810086d07cee0abf69f9d7188078166', 9, 1, 'sara@gmail.com-2020-07-29 15:58:09', '[]', 0, '2020-07-29 14:58:09', '2020-07-29 14:58:09', '2021-07-29 15:58:09'),
('0f5e9be8f6dd637ac0aaa20806e742acc6ee87c1164a2b0150b979caf7f0b598949cc58beb7747f1', 1, 1, 'lahcen@gmail.com-2020-08-05 17:09:04', '[]', 0, '2020-08-05 16:09:04', '2020-08-05 16:09:04', '2021-08-05 17:09:04'),
('0f6e8c019ca3f508881d534e8952d59f8ac94c8bb5b68069f50c3763b05092e70851ee69313f237d', 9, 1, 'sara@gmail.com-2020-08-04 12:08:23', '[]', 0, '2020-08-04 11:08:23', '2020-08-04 11:08:23', '2021-08-04 12:08:23'),
('0f78b0de433388f637c64183a850cc2d6f6c53a2d82b77c5f1c0f348a49a86657ce2eedfa818586f', 17, 1, 'ikram@gmail.com-2020-08-12 10:43:50', '[]', 0, '2020-08-12 09:43:51', '2020-08-12 09:43:51', '2021-08-12 10:43:51'),
('0f7a8c0bee43dd4ebf3ef812a787b600a7caaf7b616e313026d72b5dab56ec379edcceb54e59107d', 1, 1, 'lahcen@gmail.com-2020-09-17 00:26:53', '[]', 0, '2020-09-16 23:26:53', '2020-09-16 23:26:53', '2021-09-17 00:26:53'),
('0f80206f9e5668339697a7a32c0ea2e515d19c94ef0de569a50b2f2368dfcc04b21fc1ca6d274e31', 6, 1, 'issam@gmail.com-2020-07-23 15:38:57', '[]', 0, '2020-07-23 14:38:57', '2020-07-23 14:38:57', '2021-07-23 15:38:57'),
('10027f4bb877e549724f829bcf00a8203c02b9988d0625f0c602d4e9271d054d8028023c7a4fce67', 1, 1, 'lahcen@gmail.com-2020-08-05 22:12:02', '[]', 0, '2020-08-05 21:12:02', '2020-08-05 21:12:02', '2021-08-05 22:12:02'),
('10718445996c53398dd102d5a497b3a55958ee85a058934ad64a081b64b181e6e8af52639c2a63ff', 13, 1, 'jamal@gmail.com-2020-08-05 15:41:32', '[]', 0, '2020-08-05 14:41:32', '2020-08-05 14:41:32', '2021-08-05 15:41:32'),
('10ad9b1352e455690612e4f9e76de0cf226602ff6acdfbb83e2224eaccac810aa8f0423de6aeb22e', 6, 1, 'issam@gmail.com-2020-07-16 15:45:31', '[]', 0, '2020-07-16 13:45:31', '2020-07-16 13:45:31', '2021-07-16 15:45:31'),
('10ae600e320ef70b5734b485c34e89c8bce435a2daa003315cf12ddbc0c5d92abc74e8f951475a12', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:35', '[]', 0, '2020-09-13 20:49:35', '2020-09-13 20:49:35', '2021-09-13 21:49:35'),
('114f3e02c579a363dfd050e5c6ad3a1b7a4636da0c919c85f2840a371a1e3b43851f47499a297c9e', 1, 1, 'lahcen@gmail.com-2020-07-28 16:27:35', '[]', 0, '2020-07-28 15:27:35', '2020-07-28 15:27:35', '2021-07-28 16:27:35'),
('12e7aced2af7ab9995f5be24709f0d3a258ae2bd337cd5905aba9f5071c4201e11e1d59aa08e6175', 1, 1, 'lahcen@gmail.com-2020-08-13 17:26:49', '[]', 0, '2020-08-13 16:26:49', '2020-08-13 16:26:49', '2021-08-13 17:26:49'),
('12f8fc285405fbddd61b7c2c600143426420daf5a31eeb37461bb75c2f1903f188862f4009e71017', 1, 1, 'lahcen@gmail.com-2020-09-16 17:21:11', '[]', 0, '2020-09-16 16:21:11', '2020-09-16 16:21:11', '2021-09-16 17:21:11'),
('144444c5dcdc96cd31e65887adcf59c1d0af68b8d05d9859433cc198ea94c6a94fba81ddb7865642', 1, 1, 'lahcen@gmail.com-2020-08-05 15:39:27', '[]', 0, '2020-08-05 14:39:27', '2020-08-05 14:39:27', '2021-08-05 15:39:27'),
('148bce2aebb6642c10fe1b4eb2e4200d57b0699ff2a8f8b49374984c347733c0260c2452556a2db7', 13, 1, 'jamal@gmail.com-2020-08-05 18:29:57', '[]', 0, '2020-08-05 17:29:57', '2020-08-05 17:29:57', '2021-08-05 18:29:57'),
('14de3e3078b384cbc1f3407058099ea841e9d358d2e82580d8ae82223d739af5fe14b09678294c79', 6, 1, 'issam@gmail.com-2020-07-17 15:30:17', '[]', 0, '2020-07-17 13:30:17', '2020-07-17 13:30:17', '2021-07-17 15:30:17'),
('160b8de82518acf273002f8b8d7e1146d3389afadfe2096871561978ad5c93578a4f7895e78a0f00', 1, 1, 'lahcen@gmail.com-2020-08-10 13:47:03', '[]', 0, '2020-08-10 12:47:03', '2020-08-10 12:47:03', '2021-08-10 13:47:03'),
('164a0ef12f08311724153f87942bd5c4676ecad2b9478a4d87a89a78384dcf33d7deb4fb25d8b3d8', 13, 1, 'jamal@gmail.com-2020-08-05 15:15:54', '[]', 0, '2020-08-05 14:15:54', '2020-08-05 14:15:54', '2021-08-05 15:15:54'),
('170e0a772e06957697aaffdb1a6da08f593aaaaa60f4623cf746485bcb1ff73f1cb4af2b0b21817a', 9, 1, 'sara@gmail.com-2020-07-30 11:26:29', '[]', 0, '2020-07-30 10:26:29', '2020-07-30 10:26:29', '2021-07-30 11:26:29'),
('18544d981f57135917b9a03f0a5ac16ea9622cce19478362da43d31abe656a2930f754f07ea9ee57', 1, 1, 'lahcen@gmail.com-2020-07-28 19:16:12', '[]', 0, '2020-07-28 18:16:12', '2020-07-28 18:16:12', '2021-07-28 19:16:12'),
('185df9db2a5dc2337ad0cd9364d04b399f5bc19f26e9cc59191fefcea1f5a3e8103e5a02e55cc7ad', 1, 1, 'lahcen@gmail.com-2020-07-28 18:09:54', '[]', 0, '2020-07-28 17:09:54', '2020-07-28 17:09:54', '2021-07-28 18:09:54'),
('18996260ee8c7c6a667bce48adf2713960ecee6bb4616d6e8d6327dc93a23f35cf745f50dd60954c', 1, 1, 'lahcen@gmail.com-2020-08-05 16:32:24', '[]', 0, '2020-08-05 15:32:24', '2020-08-05 15:32:24', '2021-08-05 16:32:24'),
('18a31dd3e05bee5e78beb485b26578866e1cf52133935490351399dca1c843421607a15e84bf4ef2', 9, 1, 'sara@gmail.com-2020-08-04 10:07:17', '[]', 0, '2020-08-04 09:07:17', '2020-08-04 09:07:17', '2021-08-04 10:07:17'),
('1927a4f5245cf88c0b39aeab861bb66c73e3ad10e9480cb61741542d2a26573a46c389e2ebbe3916', 4, 1, 'lahcen@gg.com-2020-07-15 23:52:23', '[]', 0, '2020-07-15 21:52:23', '2020-07-15 21:52:23', '2021-07-15 23:52:23'),
('19319ef1a39331e7619a033469f297884470daf0f6ed47828b35f576c1737c22c6948586abe410fe', 1, 1, 'admin@gmail.com-2020-10-04 16:41:12', '[]', 0, '2020-10-04 15:41:15', '2020-10-04 15:41:15', '2021-10-04 16:41:15'),
('1a1ac2a3db1b0571ce6cb7d5d8ee429b2079ca4bd4bc1aa016bcf640d72bb25fe801eb580136981e', 6, 1, 'issam@gmail.com-2020-07-18 14:18:47', '[]', 0, '2020-07-18 12:18:48', '2020-07-18 12:18:48', '2021-07-18 14:18:48'),
('1a32c9e22e2c80ab39463ece7e411e1ed36462e905343b3b439dc9f3d17680d4df664b5ee4397af7', 6, 1, 'issam@gmail.com-2020-07-20 16:29:11', '[]', 0, '2020-07-20 14:29:11', '2020-07-20 14:29:11', '2021-07-20 16:29:11'),
('1a3edebb3bf8b7fef405c75d6e971a43d85ada0fdaeb37a4c7726513f025ce465cac1e02d7da1b1d', 5, 1, 'othmane@othmane.com-2020-07-20 17:50:02', '[]', 0, '2020-07-20 15:50:02', '2020-07-20 15:50:02', '2021-07-20 17:50:02'),
('1ac09a4b1fe4496b900d02de72ccda94e423145ea0ee3a4a54005b95c366852399344561d6a7cf1b', 10, 1, 'test@test.com-2020-08-05 12:55:33', '[]', 0, '2020-08-05 11:55:33', '2020-08-05 11:55:33', '2021-08-05 12:55:33'),
('1b03ba27c5552b4ea993b4428da2c9b6f02e5c42dacaf1702ba6c7b260f3df795cd921ec6459c024', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:50', '[]', 0, '2020-09-13 20:49:50', '2020-09-13 20:49:50', '2021-09-13 21:49:50'),
('1b2a37331821e8b7f0cf55a838e1874c0adb15bde23cba66bc427da98a2fe96fd9d845e8a0abe7f4', 5, 1, 'othmane@othmane.com-2020-07-20 16:48:43', '[]', 0, '2020-07-20 14:48:43', '2020-07-20 14:48:43', '2021-07-20 16:48:43'),
('1bc5332880925fbbcec2d14fea546c4171fca6e2a0d79dc1f70ef6bbe27b9d6f38f5e4e15a310583', 9, 1, 'sara@gmail.com-2020-08-04 12:08:33', '[]', 0, '2020-08-04 11:08:33', '2020-08-04 11:08:33', '2021-08-04 12:08:33'),
('1c0cf96428f5665640a04e213756c04f51e453d0400c4d6501cfd77160ccda11781c53bfaa46802e', 1, 1, 'admin@gmail.com-2020-10-01 14:19:42', '[]', 0, '2020-10-01 13:19:43', '2020-10-01 13:19:43', '2021-10-01 14:19:43'),
('1c434026cdb22cab279a8b3cb8a18ec521cde78a4b1c43a34000c60f68cb49c795c4144cc3722ac8', 15, 1, 'hicham@gmail.com-2020-08-10 13:52:45', '[]', 0, '2020-08-10 12:52:45', '2020-08-10 12:52:45', '2021-08-10 13:52:45'),
('1c6ee705ec46f35341e4641b3a7cc2e21e603cdb4605c0b59a12b749e8bf6736de15aba492fd0029', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:22', '[]', 0, '2020-09-13 20:49:31', '2020-09-13 20:49:31', '2021-09-13 21:49:31'),
('1c8693a79209cd2104fb5b152446d74e98a3a100a5b65453ea5ca0b8d9b9b58f48ae442e5a3499b8', 1, 1, 'lahcen@gmail.com-2020-09-12 13:18:50', '[]', 0, '2020-09-12 12:18:50', '2020-09-12 12:18:50', '2021-09-12 13:18:50'),
('1c885cf917879d3b8db73c0f34220eb5e42913eb49cffad2c2cf020146514c3b1aaa15701af1bc15', 1, 1, 'lahcen@gmail.com-2020-08-05 17:00:14', '[]', 0, '2020-08-05 16:00:14', '2020-08-05 16:00:14', '2021-08-05 17:00:14'),
('1db98ea6e8aebcf41c78364098d5a0967ba1dc4b78b6e630b62312dee9076668ed5c15e6e23afad1', 1, 1, 'lahcen@gmail.com-2020-08-05 16:34:16', '[]', 0, '2020-08-05 15:34:16', '2020-08-05 15:34:16', '2021-08-05 16:34:16'),
('1ddadf5bafaa5e1d40320a1427449aab87bbfafa1b0318f8133dac3997803009b8b2e4f65b1e62d8', 1, 1, 'lahcen@gmail.com-2020-09-16 23:52:57', '[]', 0, '2020-09-16 22:52:57', '2020-09-16 22:52:57', '2021-09-16 23:52:57'),
('1ddb474a8ba37f78ab2fdcbdb1e7ba210f1931e55728ff016adf00d88a7592f7ce91e8a505277478', 6, 1, 'issam@gmail.com-2020-07-20 16:28:38', '[]', 0, '2020-07-20 14:28:38', '2020-07-20 14:28:38', '2021-07-20 16:28:38'),
('1de96c7964fbf8a0ab0d3a32ff4523615035e24c11c03e84c324b86f40b5d7371a8bce2b081415b9', 1, 1, 'lahcen@gmail.com-2020-08-05 18:11:15', '[]', 0, '2020-08-05 17:11:15', '2020-08-05 17:11:15', '2021-08-05 18:11:15'),
('1e0dcca10ff4d9b9f0b81f8250dc1ed41807e24244fa2a09be3104c6fd56e5667433520b1b5cc8ed', 1, 1, 'lahcen@gmail.com-2020-08-11 14:21:05', '[]', 0, '2020-08-11 13:21:06', '2020-08-11 13:21:06', '2021-08-11 14:21:06'),
('1fbcf656d8440de5bc64ef9649b7eec75fe443d01c2a2b68c57fca578bd162462557a0c712221f89', 1, 1, 'lahcen@gmail.com-2020-09-13 16:57:40', '[]', 0, '2020-09-13 15:57:45', '2020-09-13 15:57:45', '2021-09-13 16:57:45'),
('20a79ca478d37acd71743f447be38efa669fa6da3a2e82a93a5a849132bcb7fa7e880143b93e18b0', 5, 1, 'othmane@othmane.com-2020-09-13 16:35:23', '[]', 0, '2020-09-13 15:35:24', '2020-09-13 15:35:24', '2021-09-13 16:35:24'),
('20e95761effffb5d865995fbe8c033b193768d18e64e04a727f6dd733f1f2c236d04c5713e7a64fc', 6, 1, 'issam@gmail.com-2020-07-17 11:41:14', '[]', 0, '2020-07-17 09:41:14', '2020-07-17 09:41:14', '2021-07-17 11:41:14'),
('210586ae1403eebd26b53355a6fb777bd158fe1fb9ff15792ed1c370f4e9737196cf70babb44338b', 5, 1, 'othmane@othmane.com-2020-08-17 15:58:37', '[]', 0, '2020-08-17 14:58:37', '2020-08-17 14:58:37', '2021-08-17 15:58:37'),
('2175aceacf5caf648e4a31cafca64c61211955c771edd637894bc29842712ac8b72a51fc4afaa487', 18, 1, 'issam1@gmail.com-2020-08-12 18:29:45', '[]', 0, '2020-08-12 17:29:45', '2020-08-12 17:29:45', '2021-08-12 18:29:45'),
('21bc432d636f2e6e18191b9cf64ce3c726bf217e1aece503369ee1192dc65702bfc1a560ee50814e', 6, 1, 'issam@gmail.com-2020-07-18 14:10:53', '[]', 0, '2020-07-18 12:10:53', '2020-07-18 12:10:53', '2021-07-18 14:10:53'),
('21defaa0eb31a926669475c5205658714a09f20f42d16d2484f4a858510169347ad29ef8360fd656', 10, 1, 'test@test.com-2020-08-05 11:20:32', '[]', 0, '2020-08-05 10:20:32', '2020-08-05 10:20:32', '2021-08-05 11:20:32'),
('22b923875b318f35c597b74ba602b7a792f60627023f3a608271a68aded1d4c34586038ebc3aab4a', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:34', '[]', 0, '2020-09-13 20:49:34', '2020-09-13 20:49:34', '2021-09-13 21:49:34'),
('232d4b36afb3f7caf92cc84f63e4f45010ae29b4d9de820c5da43ccb9ef7df24f15f4b9ee0ff7b7f', 1, 1, 'lahcen@gmail.com-2020-08-10 13:28:34', '[]', 0, '2020-08-10 12:28:34', '2020-08-10 12:28:34', '2021-08-10 13:28:34'),
('241016a7cd29c25689edc52a2fb28b06ef6a51e34eac89d8457498c8539e3056f90d2962ff035521', 1, 1, 'lahcen@gmail.com-2020-08-05 16:54:24', '[]', 0, '2020-08-05 15:54:24', '2020-08-05 15:54:24', '2021-08-05 16:54:24'),
('246d17b27de530316bc6ecd485fbbbcb108a03b14c1a9271dabfc168317d1ba584b786c2d4557309', 6, 1, 'issam@gmail.com-2020-07-18 14:06:27', '[]', 0, '2020-07-18 12:06:27', '2020-07-18 12:06:27', '2021-07-18 14:06:27'),
('2490ebe1cb4dd2cccfc990bd5ef45ae95a686ceb02edb6e2dd52dca400030cd178989c2b0f9fc5bf', 10, 1, 'test@test.com-2020-08-05 11:20:46', '[]', 0, '2020-08-05 10:20:46', '2020-08-05 10:20:46', '2021-08-05 11:20:46'),
('24df63bbe56be5cb67fc7a3d20aace63f8ccf2301eb99bb4289f8bc183a2f42135720ddfca5211b4', 6, 1, 'issam@gmail.com-2020-07-20 16:13:48', '[]', 0, '2020-07-20 14:13:48', '2020-07-20 14:13:48', '2021-07-20 16:13:48'),
('250a12497d0e1f565355fe29c7fca9b5cd93e5ec547d69889916bc0356a3ff7ce658cd742e30db95', 10, 1, 'test@test.com-2020-08-05 11:22:17', '[]', 0, '2020-08-05 10:22:17', '2020-08-05 10:22:17', '2021-08-05 11:22:17'),
('25947344de09d2b29fe48eb49cdb304da659eb31c0e3bba90f1475acdf87dee0ba6a7b135031631a', 50, 1, 'test1@gmail.com-2020-10-07 16:50:06', '[]', 0, '2020-10-07 15:50:07', '2020-10-07 15:50:07', '2021-10-07 16:50:07'),
('2634c79d0896b8ea01728e6a19498fab36b18cc5f10fe927af0fef339bb42c0ccdcfcbec4edb8b9e', 1, 1, 'lahcen@gmail.com-2020-07-28 16:30:15', '[]', 0, '2020-07-28 15:30:15', '2020-07-28 15:30:15', '2021-07-28 16:30:15'),
('26517d86a5715159cd0025afa7a4e42e1fbff824352b5ad60164e149bbdb6b86d9f7f1119febcdd0', 13, 1, 'jamal@gmail.com-2020-08-05 18:45:51', '[]', 0, '2020-08-05 17:45:51', '2020-08-05 17:45:51', '2021-08-05 18:45:51'),
('2671a136a4a2d1ec9cdb430e81edef5f47ae9522a50c746ca5e99e04aa32f494a1471061c84bfe89', 5, 1, 'othmane@othmane.com-2020-07-16 18:33:45', '[]', 0, '2020-07-16 16:33:45', '2020-07-16 16:33:45', '2021-07-16 18:33:45'),
('26f4bde6cab1d8b2ce95738363165bca51e5d8c5a6461ab6839332c860f317cd40bc446386cc119a', 1, 1, 'lahcen@gmail.com-2020-08-10 10:35:50', '[]', 0, '2020-08-10 09:35:51', '2020-08-10 09:35:51', '2021-08-10 10:35:51'),
('27a07a04bfdf48af79f851b74e39a31a9840fdbbd6e230c407e3fd552e1188e8862a1c6f02eddf95', 13, 1, 'jamal@gmail.com-2020-08-05 19:31:57', '[]', 0, '2020-08-05 18:31:57', '2020-08-05 18:31:57', '2021-08-05 19:31:57'),
('27edaf252916a30d0b0a62cab9ece7b6b1dc8c91a7d91884c6f21bda2c7c11de703df8589ca5d26f', 5, 1, 'othmane@othmane.com-2020-07-22 10:41:00', '[]', 0, '2020-07-22 08:41:03', '2020-07-22 08:41:03', '2021-07-22 10:41:03'),
('28052785822a3fc259c4019c16bd020bfc8646a0f880ad96bbf853413269ddf3efb2e59869fd8567', 1, 1, 'admin@gmail.com-2020-10-04 16:41:16', '[]', 0, '2020-10-04 15:41:16', '2020-10-04 15:41:16', '2021-10-04 16:41:16'),
('28233790dd72a1f3d6cc2a18b3a3584b1dcccecbd902032aedaaead0f6c00380bf4999c37cf6265c', 1, 1, 'lahcen@gmail.com-2020-08-05 17:10:41', '[]', 0, '2020-08-05 16:10:41', '2020-08-05 16:10:41', '2021-08-05 17:10:41'),
('28ad95cd487ae97e27eece8c19545a186c95fad763ee86ac482bf7929e826f6474c8e6c519b2abfb', 22, 1, 'test00@gmail.com-2020-10-02 18:18:35', '[]', 0, '2020-10-02 17:18:36', '2020-10-02 17:18:36', '2021-10-02 18:18:36'),
('2911e35b467c784854a00d435a3d92ab81460acdde7b6e9ea2dafe511667f5f77371c0d6c20d5f10', 9, 1, 'sara@gmail.com-2020-07-29 15:58:07', '[]', 0, '2020-07-29 14:58:07', '2020-07-29 14:58:07', '2021-07-29 15:58:07'),
('2973978317b28b42a31ad48d164980773714a59071fa3896cc4eb7b90098b3f8bc3cf317f8f0c74c', 15, 1, 'hicham@gmail.com-2020-08-10 16:47:12', '[]', 0, '2020-08-10 15:47:12', '2020-08-10 15:47:12', '2021-08-10 16:47:12'),
('2a44bcc85c8db074a7046dbf2558a96f8d84b0ea273a9c04b35b3799a84843d79f30d116f559bc7b', 9, 1, 'sara@gmail.com-2020-07-29 15:58:06', '[]', 0, '2020-07-29 14:58:06', '2020-07-29 14:58:06', '2021-07-29 15:58:06'),
('2b7969ba60639161e68d13b3bda7d5f053c36f44b0a1b494d272379ffeaac44c371c93ed70da3746', 1, 1, 'lahcen@gmail.com-2020-07-28 19:14:30', '[]', 0, '2020-07-28 18:14:30', '2020-07-28 18:14:30', '2021-07-28 19:14:30'),
('2ba65584304b7bb08a142b191d71bfbc3f304bf60acf28c55e3b322c22899ddced05454964cc5575', 1, 1, 'admin@gmail.com-2020-09-30 20:45:21', '[]', 0, '2020-09-30 19:45:22', '2020-09-30 19:45:22', '2021-09-30 20:45:22'),
('2bdde2661ceba8603bb36bb38d3a883d73207cf18b3fbfb17028b4d164ded1282060d1143ca84e61', 5, 1, 'othmane@othmane.com-2020-08-13 19:19:43', '[]', 0, '2020-08-13 18:19:43', '2020-08-13 18:19:43', '2021-08-13 19:19:43'),
('2bfff3fc23d5d4861a21a55cddea45a6293a7fb20e9e6f5ef2db5de7f352dbe522a57acee91f19a7', 5, 1, 'othmane@othmane.com-2020-07-29 11:33:53', '[]', 0, '2020-07-29 10:33:53', '2020-07-29 10:33:53', '2021-07-29 11:33:53'),
('2c10f685cf5eda51629e3b233a55c1618fb1e21f986b40248decb6a6b5b65fe49f779dc4fc09eb79', 1, 1, 'lahcen@gmail.com-2020-07-28 21:44:05', '[]', 0, '2020-07-28 20:44:05', '2020-07-28 20:44:05', '2021-07-28 21:44:05'),
('2c383e6d58db8a88c6f40f293b7005d66b4326b7efd1c3ebd92efdf2293116ba3557e666e25b52e4', 5, 1, 'othmane@othmane.com-2020-07-20 16:50:08', '[]', 0, '2020-07-20 14:50:09', '2020-07-20 14:50:09', '2021-07-20 16:50:09'),
('2c9b8e047c21c2b5d1b020c72d9a0b26462b6608d816cf681ddfb8115c86a4f0d63acaf4a89617e8', 9, 1, 'sara@gmail.com-2020-07-29 16:06:18', '[]', 0, '2020-07-29 15:06:18', '2020-07-29 15:06:18', '2021-07-29 16:06:18'),
('2cd90a3b077c326bdd11e12892abfa76f05fc38274d9d2e75313febcb0fb7046987004e6df048740', 1, 1, 'lahcen@gmail.com-2020-08-05 16:25:57', '[]', 0, '2020-08-05 15:25:57', '2020-08-05 15:25:57', '2021-08-05 16:25:57'),
('2d1b47343063cee093603451991c640fc02d483fdf5bd9ecdfbb2c8051775117fd899066dc652d8d', 4, 1, 'lahcen@gg.com-2020-07-15 23:26:18', '[]', 0, '2020-07-15 21:26:19', '2020-07-15 21:26:19', '2021-07-15 23:26:19'),
('2d24ea6a70048215c82c5a657d3e5dfc6499cd0577d033e68d8479cb281df7105d1d9850582d86d7', 1, 1, 'lahcen@gmail.com-2020-08-11 10:35:34', '[]', 0, '2020-08-11 09:35:35', '2020-08-11 09:35:35', '2021-08-11 10:35:35'),
('2d84e643f0cd18168179b5428dc2baf1b040378ab760c956fd3654dc9ed78bf39ac7f8cd03fab7af', 9, 1, 'sara@gmail.com-2020-08-01 00:08:59', '[]', 0, '2020-07-31 23:08:59', '2020-07-31 23:08:59', '2021-08-01 00:08:59'),
('2d9b273f30f3c4318bfb4f5e8d83ff74c33dcba25365f51d2d55ea23831cfca83df9232b8558c069', 1, 1, 'admin@gmail.com-2020-09-20 14:46:33', '[]', 0, '2020-09-20 13:46:34', '2020-09-20 13:46:34', '2021-09-20 14:46:34'),
('2e10113b73896693aa6bd6a639de13f853791a5621a929cc934be3548d0ba8dbe243153b0f850e49', 5, 1, 'othmane@othmane.com-2020-07-20 16:49:26', '[]', 0, '2020-07-20 14:49:26', '2020-07-20 14:49:26', '2021-07-20 16:49:26'),
('2ef7c8a803daee32bcc8d7fd57d368abbbf5ff4bb045d33334f42ffcf492bedf2b165c7aa9157174', 1, 1, 'admin@gmail.com-2020-10-05 00:11:23', '[]', 0, '2020-10-04 23:11:23', '2020-10-04 23:11:23', '2021-10-05 00:11:23'),
('2f79c5d378394f3bb412dc7f66859f99f67cc97424ad84c0e88ca9151400d200eb6b70c035102115', 16, 1, 'sara@gmail.com-2020-08-11 14:19:30', '[]', 0, '2020-08-11 13:19:30', '2020-08-11 13:19:30', '2021-08-11 14:19:30'),
('30cb9492992e6577f99fdec7d65905b8a4624c81c2f9054185b5b6041215395401bcddd29df5e69e', 10, 1, 'test@test.com-2020-08-05 11:22:22', '[]', 0, '2020-08-05 10:22:22', '2020-08-05 10:22:22', '2021-08-05 11:22:22'),
('30fe74bf05ac0a2939fdfb5ed62b8e4af30522588b8f72cb6b47d1c3ac352fb10526a9d6360b9811', 1, 1, 'admin@gmail.com-2020-10-05 00:10:34', '[]', 0, '2020-10-04 23:10:35', '2020-10-04 23:10:35', '2021-10-05 00:10:35'),
('31457cbbfd0f1639ae5a1d475b733f3784949961472a525c2420b6efebf4cb16eee4f2cfaffc07fd', 1, 1, 'admin@gmail.com-2020-09-20 14:46:33', '[]', 0, '2020-09-20 13:46:34', '2020-09-20 13:46:34', '2021-09-20 14:46:34'),
('31a386e316d15800d23285da683dd63ea6899d44bf78b4226f3ce19cb9d3b0101346958bb6ebaf59', 6, 1, 'issam@gmail.com-2020-07-18 19:21:57', '[]', 0, '2020-07-18 17:21:57', '2020-07-18 17:21:57', '2021-07-18 19:21:57'),
('322d62bd023848bcea8fa9019a7075e7bbe87ac6a758a71a7e70dabd6d2aa67221fb0a9b7ef54ef5', 6, 1, 'issam@gmail.com-2020-07-24 16:57:05', '[]', 0, '2020-07-24 15:57:05', '2020-07-24 15:57:05', '2021-07-24 16:57:05'),
('3264b9bc52142c7196a510ef409180be587b5c18fadca193118fd385e9fe4e0b5b2272c08f471a06', 13, 1, 'jamal@gmail.com-2020-08-09 19:02:41', '[]', 0, '2020-08-09 18:02:41', '2020-08-09 18:02:41', '2021-08-09 19:02:41'),
('32c0cfe4a26dadfb70b03e4859b39db7d8a0b74cc94e256c0e93eedd81b2a0828a0209d6b3dd8920', 5, 1, 'othmane@othmane.com-2020-07-28 15:52:34', '[]', 0, '2020-07-28 14:52:34', '2020-07-28 14:52:34', '2021-07-28 15:52:34'),
('3312e9cd472d4df7a8d997c6f4290a1692c4eba7c2c0a21e8f3c3cc75a7136087d5eea81fc7a5151', 1, 1, 'lahcen@gmail.com-2020-08-11 12:18:43', '[]', 0, '2020-08-11 11:18:43', '2020-08-11 11:18:43', '2021-08-11 12:18:43'),
('33b44973f1a2408529bb2d04b3850b212c190980eb451af9d3b0161485b079e272668195b9d28368', 38, 1, 'test@gmail.com-2020-09-20 12:00:30', '[]', 0, '2020-09-20 11:00:32', '2020-09-20 11:00:32', '2021-09-20 12:00:32'),
('33bc20bce11aa46ecba1bd58a53953bea76eee7b7c71728079811338d20dd5247bb6e2c113d218a4', 1, 1, 'lahcen@gmail.com-2020-09-15 23:04:36', '[]', 0, '2020-09-15 22:04:37', '2020-09-15 22:04:37', '2021-09-15 23:04:37'),
('34a1f7a9b06edfd6ffbe67d2dfe2cb2791c642d4c01a76465e41f129eb76950d00ace4488ca6934d', 6, 1, 'issam@gmail.com-2020-07-18 14:56:03', '[]', 0, '2020-07-18 12:56:03', '2020-07-18 12:56:03', '2021-07-18 14:56:03'),
('3528eec8544120d9f21d6e63602916daaa871d8be42ffd0b11351c24324d50a5bd82afd55aa27132', 1, 1, 'lahcen@gmail.com-2020-09-13 16:57:47', '[]', 0, '2020-09-13 15:57:47', '2020-09-13 15:57:47', '2021-09-13 16:57:47'),
('35cf4aaa5c73215b2c4fa138023efc5c9c4c19c35becde19128e5b8b33368521971e880538e1d20a', 1, 1, 'admin@gmail.com-2020-10-01 14:19:42', '[]', 0, '2020-10-01 13:19:43', '2020-10-01 13:19:43', '2021-10-01 14:19:43'),
('3629cf13343bb05f39cbbc9279bc5185c8245620f72dec2e7f527b98e874842a55b6bd323a691ae6', 5, 1, 'othmane@othmane.com-2020-07-20 17:50:26', '[]', 0, '2020-07-20 15:50:26', '2020-07-20 15:50:26', '2021-07-20 17:50:26'),
('372077200503b64bc5a0077db6e3600f5843eea2945f3abf47f7b49e93ade386637c37850e34cd59', 10, 1, 'test@test.com-2020-08-05 11:05:06', '[]', 0, '2020-08-05 10:05:06', '2020-08-05 10:05:06', '2021-08-05 11:05:06'),
('375e77196d32948f185586b4cf9c3793c75c124e13585c4d707321ecb9bbd25748fe0c2b2d2d70a8', 9, 1, 'sara@gmail.com-2020-07-29 15:58:33', '[]', 0, '2020-07-29 14:58:33', '2020-07-29 14:58:33', '2021-07-29 15:58:33'),
('38338fe456ed236abac1019ef820139dbccb71e861b5fe3292eba56f8c1f1d816b08db0b69d46d82', 1, 1, 'admin@gmail.com-2020-10-01 14:19:43', '[]', 0, '2020-10-01 13:19:43', '2020-10-01 13:19:43', '2021-10-01 14:19:43'),
('38e746d449683d137b2049d7c6623932b5957c5c9531c635e91305c034c22478a4319d002aafd737', 1, 1, 'lahcen@gmail.com-2020-07-28 19:05:52', '[]', 0, '2020-07-28 18:05:52', '2020-07-28 18:05:52', '2021-07-28 19:05:52'),
('3934dd33eaeb44f97c08a646d70e502c12579cbdb105ae69e3c8e8ec2055cd9bc9edfdfa41697ec4', 1, 1, 'lahcen@gmail.com-2020-07-28 17:51:57', '[]', 0, '2020-07-28 16:51:57', '2020-07-28 16:51:57', '2021-07-28 17:51:57'),
('393a9e2d9bba7fa2d2f330447e9bf41bcc95ac7748a859cf23504fc28e17b5c4eb7aab0ed81ce788', 1, 1, 'lahcen@gmail.com-2020-09-13 16:57:40', '[]', 0, '2020-09-13 15:57:45', '2020-09-13 15:57:45', '2021-09-13 16:57:45'),
('3ad0eb59fc74dfbac7d91e14c7c9e1e6555850f04a1f1eaa2e4763ca85ee9b2f9326fd5674a01b7e', 31, 1, 'issam@issam.com-2020-09-15 14:59:18', '[]', 0, '2020-09-15 13:59:20', '2020-09-15 13:59:20', '2021-09-15 14:59:20'),
('3b059ad45b09c087d4eb6bed4ac66e8304fb1bfebfacf6941aabd3154d62d9c8fef479d6f2443c68', 33, 1, 'hind.rakoub99@gmail.com-2020-09-15 23:34:22', '[]', 0, '2020-09-15 22:34:22', '2020-09-15 22:34:22', '2021-09-15 23:34:22'),
('3bc1f396fe993289ce5508cd53e37a7b3980a2dd31bab974f47bc80ef75c6a849f04b91a83abca3f', 5, 1, 'othmane@othmane.com-2020-07-20 17:50:05', '[]', 0, '2020-07-20 15:50:05', '2020-07-20 15:50:05', '2021-07-20 17:50:05'),
('3c1c6b766b7ab21dc6bcdd3ab2a85a8d0b0fdd1edebece36d59a09db402cbf84795f847f9549b802', 1, 1, 'lahcen@gmail.com-2020-07-28 15:54:48', '[]', 0, '2020-07-28 14:54:49', '2020-07-28 14:54:49', '2021-07-28 15:54:49'),
('3cafed7d558945c445f8626c9a90c6a94388ea91d3aab51c1cb73d747b5a366390714e172bbbd738', 10, 1, 'test@test.com-2020-08-05 11:20:43', '[]', 0, '2020-08-05 10:20:43', '2020-08-05 10:20:43', '2021-08-05 11:20:43'),
('3de704fd4c03e5cd04fb5ea97dacc838b1bbdb8c28a969461ab86726b1e5a069b2a33ab482bf5e24', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:22', '[]', 0, '2020-09-13 20:49:31', '2020-09-13 20:49:31', '2021-09-13 21:49:31'),
('3e916387f39fc7879d6b3a449acdfbdf11fabd174089a59ef473b3da378a8f6cf0bbb31e4a1c6e6a', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:35', '[]', 0, '2020-09-13 20:49:35', '2020-09-13 20:49:35', '2021-09-13 21:49:35'),
('3f64143fb83fca1e67a470d8892787a2d9c1d39c6edd0a1bf2238468fb612ed88f0243e494b18fd3', 5, 1, 'othmane@othmane.com-2020-07-20 17:02:14', '[]', 0, '2020-07-20 15:02:14', '2020-07-20 15:02:14', '2021-07-20 17:02:14'),
('403d4dce5d7caee6f9dfa2fe6d6c31fc001ba9a734ca1d4c1a0fe5e6689b0633f9d83d68455e1e0a', 10, 1, 'test@test.com-2020-08-05 10:59:21', '[]', 0, '2020-08-05 09:59:21', '2020-08-05 09:59:21', '2021-08-05 10:59:21'),
('420f28fc7d91677dab6e039a7af0b0dc937fa3c80f5a4279326a9fccbab2b12c6de8da8f2d15112a', 1, 1, 'lahcen@gmail.com-2020-09-17 14:26:11', '[]', 0, '2020-09-17 13:26:12', '2020-09-17 13:26:12', '2021-09-17 14:26:12'),
('420fe10c85afa0a44e07755c2f9db36c6245c5d877ebf8e05ec92238f8fbad64610a8b5cb502a874', 1, 1, 'lahcen@gmail.com-2020-09-16 22:43:34', '[]', 0, '2020-09-16 21:43:35', '2020-09-16 21:43:35', '2021-09-16 22:43:35'),
('4220c9952212b2875a08833eb5de41774ace878dca6cad4aabe736fcfd3af406976cd0f8b8c7398b', 9, 1, 'sara@gmail.com-2020-07-31 21:46:12', '[]', 0, '2020-07-31 20:46:12', '2020-07-31 20:46:12', '2021-07-31 21:46:12'),
('42418b6a2617034655e11f6f895f89fa956424e95e70ee474ff936dd191b6fcae783bb007fbc542f', 9, 1, 'sara@gmail.com-2020-07-30 11:28:03', '[]', 0, '2020-07-30 10:28:03', '2020-07-30 10:28:03', '2021-07-30 11:28:03'),
('431c56ce6c0b5b50738dbbe09b1bac6debbfa152ac4b458ade5399c1d51264cf89687cd18c762cbc', 34, 1, 'omar@gmail.com-2020-09-17 15:32:45', '[]', 0, '2020-09-17 14:32:45', '2020-09-17 14:32:45', '2021-09-17 15:32:45'),
('43e76f61c7fd75929552823ea249147010637045713196c2a3f9241ac2cdc9d7e9c8f5d821b1c36c', 23, 1, 'test2@gmail.com-2020-09-12 22:17:32', '[]', 0, '2020-09-12 21:17:32', '2020-09-12 21:17:32', '2021-09-12 22:17:32'),
('447c88ce53560807cba56e4f46e553a7d4daf991d4e1c49bb897c76c2bea0da08ef1daf99af876f7', 1, 1, 'lahcen@gmail.com-2020-08-05 16:52:38', '[]', 0, '2020-08-05 15:52:38', '2020-08-05 15:52:38', '2021-08-05 16:52:38'),
('44b0d53f00b386a839f7af10b1cfc70e6483190b4b841561218c9f5e434a8081980498a050d1fa00', 1, 1, 'lahcen@gmail.com-2020-08-05 16:32:58', '[]', 0, '2020-08-05 15:32:58', '2020-08-05 15:32:58', '2021-08-05 16:32:58'),
('458a6e60c80d215e9d45ed932f11e91b507308a62c75bd12ca0859938aabb8cade7a44e3110d4795', 13, 1, 'jamal@gmail.com-2020-08-05 18:46:09', '[]', 0, '2020-08-05 17:46:09', '2020-08-05 17:46:09', '2021-08-05 18:46:09'),
('460577b30937fde53bf4445ea135d400d7a3bfc68ae8e6e9e6fe8ff24165662c4bbada2ddd50bb26', 13, 1, 'jamal@gmail.com-2020-08-05 19:24:38', '[]', 0, '2020-08-05 18:24:38', '2020-08-05 18:24:38', '2021-08-05 19:24:38'),
('4709a95e06b2900eebb0a43618051463a499e1955e485b3180eefd34c47caa3a4919945ea32310cc', 1, 1, 'lahcen@gmail.com-2020-08-05 12:53:31', '[]', 0, '2020-08-05 11:53:31', '2020-08-05 11:53:31', '2021-08-05 12:53:31'),
('4741ff64120e0a7503c84991000a61ba720f9d4c15137c8a632589dc85e4157abc651a8ef909c80c', 1, 1, 'lahcen@gmail.com-2020-07-28 16:13:01', '[]', 0, '2020-07-28 15:13:01', '2020-07-28 15:13:01', '2021-07-28 16:13:01'),
('475342dd1b724c40f9663c15b37b26cb6a21a190a022c05c747ed871fc6f4e169cedebedc22717a4', 12, 1, 'karim@gmail.com-2020-08-05 14:32:15', '[]', 0, '2020-08-05 13:32:15', '2020-08-05 13:32:15', '2021-08-05 14:32:15'),
('48fee385ba0ff67ba1abd86840530290272c01695c2c12cf1253e8efd73d705786e0643333f3c35d', 13, 1, 'jamal@gmail.com-2020-08-05 15:33:06', '[]', 0, '2020-08-05 14:33:06', '2020-08-05 14:33:06', '2021-08-05 15:33:06'),
('491eaa49388b7f323a924146a466eb3d2cc5c0e60b76676520a59b3a20e0b72e57d9f81e75247f04', 1, 1, 'lahcen@gmail.com-2020-08-05 17:23:37', '[]', 0, '2020-08-05 16:23:37', '2020-08-05 16:23:37', '2021-08-05 17:23:37'),
('4ac3332761c6205e09595623172470f44138cc02a16339a9b16568b442dc48778d4bf1fb095bb57e', 6, 1, 'issam@gmail.com-2020-07-18 14:52:57', '[]', 0, '2020-07-18 12:52:57', '2020-07-18 12:52:57', '2021-07-18 14:52:57'),
('4b87d7e8dc860bfa39e73949ad710ca8e9318c1b44986e5799b1fd99103a638c7a0b41e971c8f092', 1, 1, 'lahcen@gmail.com-2020-07-28 18:45:52', '[]', 0, '2020-07-28 17:45:52', '2020-07-28 17:45:52', '2021-07-28 18:45:52'),
('4baec62dd29385a72230d65d6d2d23ccaed6a5640beab1157ae2c8328618213314008585e0da868b', 1, 1, 'admin@gmail.com-2020-09-20 12:05:11', '[]', 0, '2020-09-20 11:05:11', '2020-09-20 11:05:11', '2021-09-20 12:05:11'),
('4c721d556610c24fcdf41c0d29082660644bee19b4ede9f44062a0dd8e207b940b57c33f5b64330a', 1, 1, 'lahcen@gmail.com-2020-08-04 10:11:16', '[]', 0, '2020-08-04 09:11:16', '2020-08-04 09:11:16', '2021-08-04 10:11:16'),
('4c96de941c521c09ae06331af3c07590a6dc0224cd33fa8fa208b23375a0bb8b96c752ea9182978a', 13, 1, 'jamal@gmail.com-2020-08-06 14:20:35', '[]', 0, '2020-08-06 13:20:35', '2020-08-06 13:20:35', '2021-08-06 14:20:35'),
('4cfa9200d5bd27a691085c6eed8bdb16fe164a516812169334383a0c6727cbfec0a52799841f0102', 5, 1, 'othmane@othmane.com-2020-08-14 01:43:49', '[]', 0, '2020-08-14 00:43:49', '2020-08-14 00:43:49', '2021-08-14 01:43:49'),
('4d9bc89580577654b5720c3d9acc7feb85a47d4d0ee6b299614b50d8e2b3c23f6c0355374f2a1f8a', 4, 1, 'lahcen@gg.com-2020-07-16 10:34:42', '[]', 0, '2020-07-16 08:34:44', '2020-07-16 08:34:44', '2021-07-16 10:34:44'),
('4e1291033a20868be591ad212dba65fa02c3870d37e40c8ac48049fe2387821f089dad9330f6c7b8', 14, 1, 'kamal@gmail.Com-2020-08-09 19:03:49', '[]', 0, '2020-08-09 18:03:49', '2020-08-09 18:03:49', '2021-08-09 19:03:49'),
('4e81a67f11b7b9b85515470e6afd3a777f4b6cddafacd21061e291783bc85071c9e9b3ffff79e489', 1, 1, 'lahcen@gmail.com-2020-09-15 23:08:55', '[]', 0, '2020-09-15 22:08:55', '2020-09-15 22:08:55', '2021-09-15 23:08:55'),
('4fc5ffdf973776b7e6b674ebd1c7cef70a28b2a847fef1b37dc15589490f491d95c33fae998ce95c', 1, 1, 'lahcen@gmail.com-2020-08-10 13:55:34', '[]', 0, '2020-08-10 12:55:34', '2020-08-10 12:55:34', '2021-08-10 13:55:34'),
('50ddd9e0182073e91526a8e19e1922837ef7af933482f525ed5c5e29cd5a4c5e8ec06e7fd06ebbe0', 1, 1, 'lahcen@gmail.com-2020-09-20 01:32:42', '[]', 0, '2020-09-20 00:32:42', '2020-09-20 00:32:42', '2021-09-20 01:32:42'),
('513958c4ad627f4b79de1b90ec9652aa4099f249d791705990b8b6b734d1990d56e32878423e3e25', 6, 1, 'issam@gmail.com-2020-07-16 16:42:47', '[]', 0, '2020-07-16 14:42:47', '2020-07-16 14:42:47', '2021-07-16 16:42:47'),
('515196468c9cfb960355fc97bebb0e782faa0d1b35ba1db4c69b81da471766a43f0cd534c788120d', 1, 1, 'lahcen@gmail.com-2020-09-18 10:17:51', '[]', 0, '2020-09-18 09:17:51', '2020-09-18 09:17:51', '2021-09-18 10:17:51'),
('51d1d32d6e309207255a38d57b2f7b5e5d54bc80e2a725bbe7d005c4aeb934699cedafce3df45a53', 1, 1, 'lahcen@gmail.com-2020-08-05 18:15:22', '[]', 0, '2020-08-05 17:15:22', '2020-08-05 17:15:22', '2021-08-05 18:15:22'),
('51f02173a3511344c8d853fe707db9ac6e200830b369542a694585a33b9d36e6439fc35d2c102c99', 5, 1, 'othmane@othmane.com-2020-07-16 14:42:42', '[]', 0, '2020-07-16 12:42:44', '2020-07-16 12:42:44', '2021-07-16 14:42:44'),
('52948a3c83e20e66b5fd4bcee133866b5bef97bb5ebbfee499d0221afed5ebb7af78d503217b4348', 9, 1, 'sara@gmail.com-2020-07-29 15:31:51', '[]', 0, '2020-07-29 14:31:51', '2020-07-29 14:31:51', '2021-07-29 15:31:51'),
('553d5cbaa3789d87aa830961c21f2f2a9e02f4535fa42d48c80e447d13348316b6afadd5a883102a', 6, 1, 'issam@gmail.com-2020-07-17 11:46:31', '[]', 0, '2020-07-17 09:46:31', '2020-07-17 09:46:31', '2021-07-17 11:46:31'),
('554af7360259125f7bc56b47e7df4faa2dde2479b2a24c486b18c95296d2f8bb93e3cc57e0e85a5d', 13, 1, 'jamal@gmail.com-2020-08-05 18:45:50', '[]', 0, '2020-08-05 17:45:50', '2020-08-05 17:45:50', '2021-08-05 18:45:50'),
('559cebdd618839ab0be8803362d32b348ed6a5192ce595eb8553e22a39c38942e1588b7bdf1ddded', 9, 1, 'sara@gmail.com-2020-07-29 15:58:04', '[]', 0, '2020-07-29 14:58:04', '2020-07-29 14:58:04', '2021-07-29 15:58:04'),
('5605a675200c8c6bea1b0ce06ab59dd579611358b0ac20f04e69954475aee8e1f7d766f8e9368ed1', 9, 1, 'sara@gmail.com-2020-07-31 21:46:05', '[]', 0, '2020-07-31 20:46:05', '2020-07-31 20:46:05', '2021-07-31 21:46:05'),
('576b197a703b7cedebad6e06eb48a0fd00c9e14ff8cd42eb8603d33b5dc95c384ce127bcf2caff34', 9, 1, 'sara@gmail.com-2020-08-04 10:33:50', '[]', 0, '2020-08-04 09:33:50', '2020-08-04 09:33:50', '2021-08-04 10:33:50'),
('5801152215caed9538b60ea4c8262d4b55bb1df92819392e8711999da89d4a3130bd9f0bdc9a54c6', 5, 1, 'othmane@othmane.com-2020-08-13 23:50:20', '[]', 0, '2020-08-13 22:50:20', '2020-08-13 22:50:20', '2021-08-13 23:50:20'),
('58a36128d37c46050034a3447db908cdead340dca47c4cd68416d4500870bda4366d9ce121a88f78', 1, 1, 'lahcen@gmail.com-2020-08-10 13:46:40', '[]', 0, '2020-08-10 12:46:40', '2020-08-10 12:46:40', '2021-08-10 13:46:40'),
('58ea2cca5f0c7021231b364f43eeebfd3e20905f52cbfd37ccf5787908ea4a4b02415d76704ab613', 1, 1, 'lahcen@gmail.com-2020-08-17 15:59:08', '[]', 0, '2020-08-17 14:59:08', '2020-08-17 14:59:08', '2021-08-17 15:59:08'),
('5a84791f6117b67bb9b936000f90c9255fea46714f3848451bd53f9b999952eb70aa5e392bd33545', 10, 1, 'test@test.com-2020-08-05 10:43:49', '[]', 0, '2020-08-05 09:43:49', '2020-08-05 09:43:49', '2021-08-05 10:43:49'),
('5c42d86f27a7c96470252ef11e8b785668d7f124ee88aca2aea13ab89c56a1db3b82c4086ec27b7d', 35, 1, 'kahlid2020@gmail.com-2020-09-17 15:40:09', '[]', 0, '2020-09-17 14:40:09', '2020-09-17 14:40:09', '2021-09-17 15:40:09'),
('5c717278cd7fa164941818083f550a6b036f6ffffd9889d0276b3ab6483dbf517cfbca73d2154efe', 13, 1, 'jamal@gmail.com-2020-08-05 17:20:03', '[]', 0, '2020-08-05 16:20:03', '2020-08-05 16:20:03', '2021-08-05 17:20:03'),
('5ccc5e3d27955c695436ee5453cbb4228145bff6f83785289dc86a5ff50d1c1bd8a592c4cd72f7b2', 10, 1, 'test@test.com-2020-08-05 12:11:12', '[]', 0, '2020-08-05 11:11:12', '2020-08-05 11:11:12', '2021-08-05 12:11:12'),
('5d7d653d820efc7707f7e0923696559c3c6599b20a8c8cddeee7577fee0ae49d13e9208f2d39f1ed', 13, 1, 'jamal@gmail.com-2020-08-06 18:15:48', '[]', 0, '2020-08-06 17:15:48', '2020-08-06 17:15:48', '2021-08-06 18:15:48'),
('5ea5e5a332b98490db690572a51f8418cf5c1e944a0225d9ddcda6e206aba0df68d5a3aa63eabe47', 1, 1, 'lahcen@gmail.com-2020-07-31 21:47:14', '[]', 0, '2020-07-31 20:47:14', '2020-07-31 20:47:14', '2021-07-31 21:47:14'),
('5ee93d8b52caa4a13822e329700cc115ae0a7cbc796d940ae3d5cdb63b36c1d0f89e3283167c52a7', 9, 1, 'sara@gmail.com-2020-07-29 15:58:09', '[]', 0, '2020-07-29 14:58:09', '2020-07-29 14:58:09', '2021-07-29 15:58:09'),
('5f4bcd0e98cf9eeb9a04288c0ec68fe4450a6d6cb93ca7a69736230f7a917a877fa21a3bf2d1be63', 5, 1, 'othmane@othmane.com-2020-07-18 14:50:13', '[]', 0, '2020-07-18 12:50:13', '2020-07-18 12:50:13', '2021-07-18 14:50:13'),
('5f85a4d411600d98c2cc78763bfed66f02c3ae2fd1001103273c421a7fcef1160ea028458cc23418', 1, 1, 'lahcen@gmail.com-2020-07-28 16:29:04', '[]', 0, '2020-07-28 15:29:04', '2020-07-28 15:29:04', '2021-07-28 16:29:04'),
('5fd11b9f43a8e5c5267f8c168c899d0d5c576db5db042dcb6b6f427d0d6651231a3d0d239db22892', 6, 1, 'issam@gmail.com-2020-07-17 13:42:19', '[]', 0, '2020-07-17 11:42:19', '2020-07-17 11:42:19', '2021-07-17 13:42:19'),
('6159a763a70d0f09fc3e917d8710411028c4ee866e4376bc4daf1068814b0f77e6ac1009d13bc45c', 13, 1, 'jamal@gmail.com-2020-08-05 18:45:54', '[]', 0, '2020-08-05 17:45:54', '2020-08-05 17:45:54', '2021-08-05 18:45:54'),
('620ee697fca994b6b4c6a1d54cdb789e1209b60557dd1926c8c0b6afc08970a97c2c267035c75e23', 6, 1, 'issam@gmail.com-2020-07-18 19:24:42', '[]', 0, '2020-07-18 17:24:42', '2020-07-18 17:24:42', '2021-07-18 19:24:42'),
('62a051944259dc8a74881bb4c09954aef1f9b883cf5dd0a97492d4ab70f410a70b42bbaf793c9402', 1, 1, 'lahcen@gmail.com-2020-08-05 16:54:11', '[]', 0, '2020-08-05 15:54:11', '2020-08-05 15:54:11', '2021-08-05 16:54:11'),
('62a61e13122dda62662825a6f3e135c8cd90bdf30e20f6206ad6e4c50c47f91d91fec89dab548bdf', 5, 1, 'othmane@othmane.com-2020-07-20 17:26:24', '[]', 0, '2020-07-20 15:26:24', '2020-07-20 15:26:24', '2021-07-20 17:26:24'),
('630fa3f152bf1ac7ae1629766828e24a5805dd39b0c470d2c2303742eae11e0bd806c6e1980a0edb', 32, 1, 'merouanehany@gmail.com-2020-09-15 15:28:37', '[]', 0, '2020-09-15 14:28:37', '2020-09-15 14:28:37', '2021-09-15 15:28:37'),
('6375302c461dfbe63057abde18c3d80ba308cbb81a0c6f65a928d488f3efc64830aa7b3343fd4a93', 1, 1, 'admin@gmail.com-2020-10-01 14:19:42', '[]', 0, '2020-10-01 13:19:43', '2020-10-01 13:19:43', '2021-10-01 14:19:43'),
('63a751bb68e662f84f40da5c324579130bce30eb56d890a23327cbf6c5a2d53c75abaf4813a0a558', 5, 1, 'othmane@othmane.com-2020-07-28 16:31:43', '[]', 0, '2020-07-28 15:31:43', '2020-07-28 15:31:43', '2021-07-28 16:31:43'),
('64050ffe58c6856fb1214da3f9de56362b83352cac4c39c84f1631fd8379845c010517dd7630872a', 1, 1, 'lahcen@gmail.com-2020-07-28 17:47:03', '[]', 0, '2020-07-28 16:47:03', '2020-07-28 16:47:03', '2021-07-28 17:47:03'),
('64bb7a182551c105539368c6e037f754d5cd23cefe0a9019fcb780515816d72cba8df68edc9a5880', 1, 1, 'lahcen@gmail.com-2020-07-28 19:20:00', '[]', 0, '2020-07-28 18:20:00', '2020-07-28 18:20:00', '2021-07-28 19:20:00'),
('6510929e9a1e57d8b1a78de8f2526f6db47b2f78119ecc2f1e16aff60a750a867488ba4cae54c772', 10, 1, 'test@test.com-2020-08-05 09:59:11', '[]', 0, '2020-08-05 08:59:12', '2020-08-05 08:59:12', '2021-08-05 09:59:12'),
('6593f78cbe94debd0eae5bad8043be3dcb08e107427d55dbe9ce885f5e1105b4e45430aced1cf738', 10, 1, 'test@test.com-2020-08-05 11:02:38', '[]', 0, '2020-08-05 10:02:38', '2020-08-05 10:02:38', '2021-08-05 11:02:38'),
('676df481efcd257a22d260eac3c1794bdace542586e1222e19d697760a59cfcaa5784eff31326513', 10, 1, 'test@test.com-2020-08-05 12:11:01', '[]', 0, '2020-08-05 11:11:01', '2020-08-05 11:11:01', '2021-08-05 12:11:01'),
('686d4553fed8eea66cbb684853e55eb54f305365a2af7c4d505f64455b594aeeb5d4f66e8ca7a2eb', 1, 1, 'lahcen@gmail.com-2020-08-05 12:52:38', '[]', 0, '2020-08-05 11:52:38', '2020-08-05 11:52:38', '2021-08-05 12:52:38'),
('68d261c3e257463d7f873c2182c2d99cdd0ded9d7ca3c3b933717d0d0c0712b7f49621572898d3a7', 9, 1, 'sara@gmail.com-2020-07-29 15:58:10', '[]', 0, '2020-07-29 14:58:10', '2020-07-29 14:58:10', '2021-07-29 15:58:10'),
('68fd0646dcb3ff168e05fa5c2d0de90d50098412a13ffdce956d26eae3017b4f8d84a9a4ffa90674', 1, 1, 'lahcen@gmail.com-2020-09-13 15:24:36', '[]', 0, '2020-09-13 14:24:37', '2020-09-13 14:24:37', '2021-09-13 15:24:37'),
('6950d65c9e3dedcf68181b685dca13b38de4d32dc85678f120f9ec5233b19e16331ebcab60d29d71', 10, 1, 'test@test.com-2020-08-05 11:26:47', '[]', 0, '2020-08-05 10:26:47', '2020-08-05 10:26:47', '2021-08-05 11:26:47'),
('69cfd3608adcd82c2b5576a7b59b57b57637814394912f076c1a256e4bb45fde5b97bade9a3c8486', 14, 1, 'kamal@gmail.Com-2020-08-09 21:53:42', '[]', 0, '2020-08-09 20:53:42', '2020-08-09 20:53:42', '2021-08-09 21:53:42'),
('69d54eca0ecece051dde4a189cd5a4e6b89174353a433f42b90980ec1b7cfbb745524ebf7c8cec1a', 1, 1, 'lahcen@gmail.com-2020-09-16 17:21:10', '[]', 0, '2020-09-16 16:21:11', '2020-09-16 16:21:11', '2021-09-16 17:21:11'),
('6a689679d73a4c30b79adb87f55ebc78af321a16a4295e2c1195016e9d59dba20545f1b3906d8f56', 5, 1, 'othmane@othmane.com-2020-07-16 18:44:43', '[]', 0, '2020-07-16 16:44:43', '2020-07-16 16:44:43', '2021-07-16 18:44:43'),
('6af16d230d634c859ef94539bf7bd0c5cb9a7ca37a92a877b89dcf316e2c751e7ddec9a39d9fade3', 1, 1, 'lahcen@gmail.com-2020-09-20 01:14:20', '[]', 0, '2020-09-20 00:14:23', '2020-09-20 00:14:23', '2021-09-20 01:14:23'),
('6b55783cab991c39bbdd3b6fd8ff5cac3be005832e2d401dd3275a1a059d52e2209725263abe0693', 1, 1, 'admin@gmail.com-2020-10-07 18:36:05', '[]', 0, '2020-10-07 17:36:05', '2020-10-07 17:36:05', '2021-10-07 18:36:05'),
('6c1eff81dc2ea96cb382b2d7ff97d05e85e0f1d59e57e6f382f3d8e45eb031fc0ed8df361160cafb', 6, 1, 'issam@gmail.com-2020-07-20 16:13:49', '[]', 0, '2020-07-20 14:13:49', '2020-07-20 14:13:49', '2021-07-20 16:13:49'),
('6d262bb74bfa0a50fdb8ea4ad8d3bd4173c95addc82b38b98137d3655ed5e20b70b3dd03d87cc070', 6, 1, 'issam@gmail.com-2020-07-17 11:40:16', '[]', 0, '2020-07-17 09:40:17', '2020-07-17 09:40:17', '2021-07-17 11:40:17'),
('6d97e41f9f8d497d1a58c86a0bbc2752a868fa47534506b8264840e86b718836c9d4b3304a493531', 9, 1, 'sara@gmail.com-2020-08-04 12:09:39', '[]', 0, '2020-08-04 11:09:39', '2020-08-04 11:09:39', '2021-08-04 12:09:39'),
('6ecb91ef0d7e119044b222ebb4fe5ab338f6c9d5e0922bcfae8c441f4f06657d542b54dabe7c8205', 9, 1, 'sara@gmail.com-2020-08-04 12:09:28', '[]', 0, '2020-08-04 11:09:28', '2020-08-04 11:09:28', '2021-08-04 12:09:28'),
('6f004f7b900e6a0dbc807e525a7b39f34f93eca714e17fcccb0cc800393253ddc7757856a14b1f89', 1, 1, 'lahcen@gmail.com-2020-07-30 00:32:45', '[]', 0, '2020-07-29 23:32:45', '2020-07-29 23:32:45', '2021-07-30 00:32:45'),
('6fbc4dd17aad35044e23ac96a97123c5286721d93ebbcb3211b34140f0cdebf18cd095d9359012c9', 48, 1, 'account@gmail.com-2020-10-04 23:39:36', '[]', 0, '2020-10-04 22:39:36', '2020-10-04 22:39:36', '2021-10-04 23:39:36'),
('713795eedc1099284d32df677f1e0e745c3c22ba6c2521648a223e53d131908d3051bb41a08fe061', 10, 1, 'test@test.com-2020-08-05 11:22:22', '[]', 0, '2020-08-05 10:22:22', '2020-08-05 10:22:22', '2021-08-05 11:22:22'),
('7166fee0b5d20db49d80a523d3cfc9f5692349994728b250966567c23fbe49223d8cdef3d6e93538', 1, 1, 'lahcen@gmail.com-2020-09-13 16:57:48', '[]', 0, '2020-09-13 15:57:48', '2020-09-13 15:57:48', '2021-09-13 16:57:48'),
('717abf99e49c9e98c86266b710f64a8d71f71249c024d7283749cf87e9c9c7de5e00901b611f3ff9', 1, 1, 'lahcen@gmail.com-2020-07-29 10:50:07', '[]', 0, '2020-07-29 09:50:07', '2020-07-29 09:50:07', '2021-07-29 10:50:07'),
('725aea12424f3a68992dd749e511881714159d14b0d555787d723f2a634cb8c9a9d91581876dc269', 1, 1, 'lahcen@gmail.com-2020-07-30 21:18:40', '[]', 0, '2020-07-30 20:18:40', '2020-07-30 20:18:40', '2021-07-30 21:18:40'),
('725c842316aa36008b80bbf87f96fac84041304e78c31a0d1982b35533689b90f43b60807630d403', 13, 1, 'jamal@gmail.com-2020-08-09 19:03:03', '[]', 0, '2020-08-09 18:03:03', '2020-08-09 18:03:03', '2021-08-09 19:03:03'),
('72fb524b944902afd8745558d4499714db9fb3f565bb305fad811b76d731832c05b6727718cafaf1', 5, 1, 'othmane@othmane.com-2020-07-20 16:57:45', '[]', 0, '2020-07-20 14:57:45', '2020-07-20 14:57:45', '2021-07-20 16:57:45'),
('733b6c20d21f10e0864a91d49e304832bd152a253065768922988bbd38e2ba387751ae2e0263f6c9', 5, 1, 'othmane@othmane.com-2020-07-20 17:09:28', '[]', 0, '2020-07-20 15:09:28', '2020-07-20 15:09:28', '2021-07-20 17:09:28'),
('73954d0f7d2635131330369709bbde6e2f0f20aaef50f50eab3e3897718c0acff25c2c88643bc4e8', 1, 1, 'lahcen@gmail.com-2020-08-05 17:00:07', '[]', 0, '2020-08-05 16:00:07', '2020-08-05 16:00:07', '2021-08-05 17:00:07'),
('748af3b7ba29233e49ca0767ebc12790a5a5a116cb4e5544438017f7a4a6ef9dd1b8a107a57f59c1', 1, 1, 'lahcen@gmail.com-2020-08-19 17:34:48', '[]', 0, '2020-08-19 16:34:48', '2020-08-19 16:34:48', '2021-08-19 17:34:48'),
('752a1ea97d31804c5a91c4759fe8f2677d29bf339a9e892d59d58e554f727eb8f8698d99621bb6a8', 1, 1, 'admin@gmail.com-2020-09-24 19:30:10', '[]', 0, '2020-09-24 18:30:12', '2020-09-24 18:30:12', '2021-09-24 19:30:12'),
('75f58a4bc71c64f1c5bac458c63e70cd4582d62236a8a3bc7bc3eae41afba40d8d87085742c1f239', 6, 1, 'issam@gmail.com-2020-07-17 15:02:17', '[]', 0, '2020-07-17 13:02:17', '2020-07-17 13:02:17', '2021-07-17 15:02:17'),
('76aef4c7d4c7b3b5fff7fe091c4c02e2533159acc9375de3b569f636b62f7f54c9ca0a58496b1d95', 13, 1, 'jamal@gmail.com-2020-08-06 13:41:54', '[]', 0, '2020-08-06 12:41:54', '2020-08-06 12:41:54', '2021-08-06 13:41:54'),
('76b62df97b622140f8ee97565b88dfbec0b905f696fa0c2b4985e01bfdb5444b0fbc3bc8b999e6ef', 1, 1, 'lahcen@gmail.com-2020-08-12 18:57:27', '[]', 0, '2020-08-12 17:57:27', '2020-08-12 17:57:27', '2021-08-12 18:57:27'),
('779936462b35875cc232ecc567e0d342b33f795fbe0c2ef504b9e58fe4da0b26395187fa4ec66caf', 5, 1, 'othmane@othmane.com-2020-07-16 14:46:55', '[]', 0, '2020-07-16 12:46:56', '2020-07-16 12:46:56', '2021-07-16 14:46:56'),
('78540edd0b190d32bd1b7cc0546792ae9527e4af1b4cf1357d6977d8a60acff8579116d078cb2a40', 23, 1, 'test2@gmail.com-2020-09-12 22:17:29', '[]', 0, '2020-09-12 21:17:31', '2020-09-12 21:17:31', '2021-09-12 22:17:31'),
('790c902a95b03cd36a2c6eecd7ab83033378c1771f6711ca3e0e66de5d8be2522320f9d6f06ad067', 1, 1, 'lahcen@gmail.com-2020-08-05 16:54:42', '[]', 0, '2020-08-05 15:54:42', '2020-08-05 15:54:42', '2021-08-05 16:54:42'),
('7a4dd97bff226ade990369c20f32d41a94dd81e2b2a54ad323d4ff05f728e6eaf9b95f70abf8dd32', 5, 1, 'othmane@othmane.com-2020-07-28 21:37:23', '[]', 0, '2020-07-28 20:37:23', '2020-07-28 20:37:23', '2021-07-28 21:37:23'),
('7a50e891ca1af40fe50fb8d849694654902e207000404c3f71d080317a763986f6a9b28c3f5ff020', 13, 1, 'jamal@gmail.com-2020-08-05 19:31:31', '[]', 0, '2020-08-05 18:31:31', '2020-08-05 18:31:31', '2021-08-05 19:31:31'),
('7acdb7fd572ed27a74855e22adc4b18c6d69a34c4acd597f367275e6ce1224ebf760de460c9d1712', 1, 1, 'lahcen@gmail.com-2020-08-05 16:38:59', '[]', 0, '2020-08-05 15:38:59', '2020-08-05 15:38:59', '2021-08-05 16:38:59');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7ad1611c3e5528b7aea6ba261534de2c877bd181f6f1f99d2af85b4c0cdaf62680313489fb0a0f41', 4, 1, 'lahcen@gg.com-2020-07-16 00:38:58', '[]', 0, '2020-07-15 22:39:00', '2020-07-15 22:39:00', '2021-07-16 00:39:00'),
('7b92a5a97ffe03338d7c36ecb5ba4565c585cb1c1e3339f91fd046456ae4829c3afbbfaaa9c8325b', 1, 1, 'lahcen@gmail.com-2020-09-15 23:09:43', '[]', 0, '2020-09-15 22:09:43', '2020-09-15 22:09:43', '2021-09-15 23:09:43'),
('7ba1c68db187e091f1ca3be40177a2f7f52b7ace0611d0535b6e3962125853bb4dfe2d9b64cb9c84', 13, 1, 'jamal@gmail.com-2020-08-09 11:25:45', '[]', 0, '2020-08-09 10:25:47', '2020-08-09 10:25:47', '2021-08-09 11:25:47'),
('7c05c752a20a72ac92d5f72b437d4dea4db887253d60af77d9d8e65e505465f8d7309341c90d6de6', 22, 1, 'test00@gmail.com-2020-10-07 16:59:46', '[]', 0, '2020-10-07 15:59:46', '2020-10-07 15:59:46', '2021-10-07 16:59:46'),
('7c46ab6ebd0422fd262b14bec4f2079adf660c1c786ebae478ed534269f07961a6d9a88aa301b54a', 9, 1, 'sara@gmail.com-2020-07-31 00:31:19', '[]', 0, '2020-07-30 23:31:19', '2020-07-30 23:31:19', '2021-07-31 00:31:19'),
('7cb8f60a3019b288f9d5d809da9c57a07e5009a21cf279fea227d61162bb416e5d50850d456ae36a', 1, 1, 'lahcen@gmail.com-2020-07-28 19:13:05', '[]', 0, '2020-07-28 18:13:05', '2020-07-28 18:13:05', '2021-07-28 19:13:05'),
('7cbc2cff3457a9df537f2361fce1be842dedc0695a676cb5ed991096191347c5a87505e0a9ac9329', 1, 1, 'lahcen@gmail.com-2020-08-05 16:39:51', '[]', 0, '2020-08-05 15:39:51', '2020-08-05 15:39:51', '2021-08-05 16:39:51'),
('7db2873029b7b1bc71a6bcf46ebb679db0ee5631d90830c965c0efdd037c67d5f811a1b378640a08', 1, 1, 'lahcen@gmail.com-2020-08-05 17:20:30', '[]', 0, '2020-08-05 16:20:30', '2020-08-05 16:20:30', '2021-08-05 17:20:30'),
('7e4f3b77646718d888f8ff68d93185db204288f373cc3779613e89d56e9fabf75dd24a26da2ecce3', 5, 1, 'othmane@othmane.com-2020-08-14 11:45:12', '[]', 0, '2020-08-14 10:45:12', '2020-08-14 10:45:12', '2021-08-14 11:45:12'),
('7f4225f3219174e880aa5fb1e0d0c073093eae81f9c1cafd2ad28cead763c99828be9be970be71bf', 1, 1, 'lahcen@gmail.com-2020-08-10 23:25:46', '[]', 0, '2020-08-10 22:25:46', '2020-08-10 22:25:46', '2021-08-10 23:25:46'),
('8014f096c6524d663efe6ddc3fef1c3593cd872fd368c13e9219c6e6184de76776c01d0725183de9', 5, 1, 'othmane@othmane.com-2020-07-16 18:34:55', '[]', 0, '2020-07-16 16:34:55', '2020-07-16 16:34:55', '2021-07-16 18:34:55'),
('803d5ffe8b43e2ec7528d5b3a3e117ba521acc2f54ee5a1451bd3af9a4a28f07760d3fdf90a5c7b9', 1, 1, 'lahcen@gmail.com-2020-09-13 16:57:48', '[]', 0, '2020-09-13 15:57:48', '2020-09-13 15:57:48', '2021-09-13 16:57:48'),
('809e885a4545fe6b4c79110863fdbc66b5588d1428d36b9958088f6cf5ae00046efb6d8b37b3dd2b', 2, 1, 'lahcen12@gmail.com-2020-07-15 19:49:54', '[]', 0, '2020-07-15 17:49:54', '2020-07-15 17:49:54', '2021-07-15 19:49:54'),
('81cc7ccc6bd3ff8ea3ca38c15c7ce71be06ba5af9d90d4ac889d792fc396df27dcd84c9dc54e9c16', 5, 1, 'othmane@othmane.com-2020-07-20 16:54:07', '[]', 0, '2020-07-20 14:54:07', '2020-07-20 14:54:07', '2021-07-20 16:54:07'),
('81d0c07da6c726c51c5f6f7f2c1cd691767488e1400f49d96f64952b5bbbda5ea42e85b4450c7800', 9, 1, 'sara@gmail.com-2020-07-30 11:29:28', '[]', 0, '2020-07-30 10:29:28', '2020-07-30 10:29:28', '2021-07-30 11:29:28'),
('82569da886faafad89a4c6ec157e4e9c236731a6b786152a9edc3825e3caec3b63db7b8ca1ae0de2', 28, 1, 'test000@gmail.com-2020-09-13 21:39:07', '[]', 0, '2020-09-13 20:39:10', '2020-09-13 20:39:10', '2021-09-13 21:39:10'),
('82b875d944997383c2ac1c6d96562622bd02dcef890fa8662b444b506302f1c584cde4d98d3cec62', 5, 1, 'othmane@othmane.com-2020-07-16 18:10:11', '[]', 0, '2020-07-16 16:10:12', '2020-07-16 16:10:12', '2021-07-16 18:10:12'),
('82e61c609474de6f8ed1a759e4965286c49a1fc7c7baa451187df92c6149ccd6b7b5ce49c6cb31e6', 6, 1, 'issam@gmail.com-2020-07-16 15:18:48', '[]', 0, '2020-07-16 13:18:48', '2020-07-16 13:18:48', '2021-07-16 15:18:48'),
('833d8445ecc3018b9f4115bcd4a74a86efcc9ce7d64d40e9b33f532c412e7769d87349bea20627db', 5, 1, 'othmane@othmane.com-2020-08-17 16:43:47', '[]', 0, '2020-08-17 15:43:47', '2020-08-17 15:43:47', '2021-08-17 16:43:47'),
('8481d1bda874898a95d4c9e8364a1efc815a7e438ae22cf57d72a74bcba06d837b2b6d259d5f186c', 13, 1, 'jamal@gmail.com-2020-08-05 18:45:44', '[]', 0, '2020-08-05 17:45:44', '2020-08-05 17:45:44', '2021-08-05 18:45:44'),
('84fc0d8ee99e150c90be47bf1d6f83b681d470705dd9f8ff7a77a536e0a532b965417f25a1d30f6b', 1, 1, 'admin@gmail.com-2020-09-20 12:04:08', '[]', 0, '2020-09-20 11:04:08', '2020-09-20 11:04:08', '2021-09-20 12:04:08'),
('854813ea76ccb848c2bd224dcf5b82cce0fc7b1773ed052a36f453bcecd0de80b7c9d1a60584bb67', 1, 1, 'lahcen@gmail.com-2020-07-29 10:49:23', '[]', 0, '2020-07-29 09:49:23', '2020-07-29 09:49:23', '2021-07-29 10:49:23'),
('8621db19b2445ee5d67dab7ed13921258886a23ca32a97dd5e1d7938947903f3fdbbd91a1c2f26a3', 1, 1, 'lahcen@gmail.com-2020-08-05 15:48:42', '[]', 0, '2020-08-05 14:48:42', '2020-08-05 14:48:42', '2021-08-05 15:48:42'),
('8637018056057428c9d777c941773a9edbb867f96b329ca49388b03a123c03ecbdf778f92cd3d399', 1, 1, 'lahcen@gmail.com-2020-08-05 16:52:32', '[]', 0, '2020-08-05 15:52:32', '2020-08-05 15:52:32', '2021-08-05 16:52:32'),
('86841a7071dcf073b60173e791544e6eb74d549f49b4975e81d762a31e5b7edca96b61a0a2a4f08e', 13, 1, 'jamal@gmail.com-2020-08-05 18:45:51', '[]', 0, '2020-08-05 17:45:51', '2020-08-05 17:45:51', '2021-08-05 18:45:51'),
('8707e9f24048ba723d079128b3f6ad944c340215fa7b22a89bc7bc50dd30a29f33b295c83b1c7155', 1, 1, 'lahcen@gmail.com-2020-09-15 16:16:10', '[]', 0, '2020-09-15 15:16:11', '2020-09-15 15:16:11', '2021-09-15 16:16:11'),
('872fa55974006e7ff5294b5d87c8b9ee0bdbf7511e23cec275062e9a5f21328d47f0ff595ece0f88', 5, 1, 'othmane@othmane.com-2020-07-28 15:47:27', '[]', 0, '2020-07-28 14:47:28', '2020-07-28 14:47:28', '2021-07-28 15:47:28'),
('88289c80411c427588578962c402dac34a711acfee88f4c8e813b130a6e30e7e3c4b5bdc7e2f51f6', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:22', '[]', 0, '2020-09-13 20:49:31', '2020-09-13 20:49:31', '2021-09-13 21:49:31'),
('8841f5073290d12bebf5b871cca15afc616de0ea609365e4fd24c4af229f172fafbd5b4f74c9bb65', 5, 1, 'othmane@othmane.com-2020-07-22 10:41:15', '[]', 0, '2020-07-22 08:41:15', '2020-07-22 08:41:15', '2021-07-22 10:41:15'),
('8a13a738352eee184f9216d42a5d0ba361c5a04807ea34bb29b31c2ea21c1bd9980b10f90cab35a0', 6, 1, 'issam@gmail.com-2020-07-17 15:00:07', '[]', 0, '2020-07-17 13:00:08', '2020-07-17 13:00:08', '2021-07-17 15:00:08'),
('8a3b7feeca2e8fddecc347919050a14f0886e70f2e8b954fa59ec4f48847f8e51449e6f34141755c', 51, 1, 'testz@gmail.com-2020-10-07 17:01:28', '[]', 0, '2020-10-07 16:01:28', '2020-10-07 16:01:28', '2021-10-07 17:01:28'),
('8a437c91f158dd886b0a01cf42c28cab10f84753e144a464413c74f5c24ada5867195fccfeb806f8', 1, 1, 'lahcen@gmail.com-2020-07-30 00:31:00', '[]', 0, '2020-07-29 23:31:00', '2020-07-29 23:31:00', '2021-07-30 00:31:00'),
('8ac4a3bfe004a5bc997a0ff4cd18a9805875781b891bc7b934851fa5bc898b27a87e4e60ef0df551', 6, 1, 'issam@gmail.com-2020-07-16 15:46:16', '[]', 0, '2020-07-16 13:46:16', '2020-07-16 13:46:16', '2021-07-16 15:46:16'),
('8b008be0f124429b69b93c76775497a275f37eb74288766018276d65794490e09d91a97f9a4eca91', 9, 1, 'sara@gmail.com-2020-07-29 15:31:58', '[]', 0, '2020-07-29 14:31:58', '2020-07-29 14:31:58', '2021-07-29 15:31:58'),
('8b48d3518140083417709fe03947bfad871fbf22dd97d86bdd3830213c90567931f5a4c852eb919f', 1, 1, 'lahcen@gmail.com-2020-07-30 11:17:00', '[]', 0, '2020-07-30 10:17:00', '2020-07-30 10:17:00', '2021-07-30 11:17:00'),
('8c21cf565a055f7f6dc302411b95315c171ac0da3134f5362fe95ad183442dc923e94ef76426beb4', 1, 1, 'lahcen@gmail.com-2020-07-30 11:20:26', '[]', 0, '2020-07-30 10:20:26', '2020-07-30 10:20:26', '2021-07-30 11:20:26'),
('8cc4f60a2c8630648c343b1ffa2539b6cb249a76166afdbe1d7088c7728f92576f7562f910631ba3', 6, 1, 'issam@gmail.com-2020-07-18 14:12:42', '[]', 0, '2020-07-18 12:12:42', '2020-07-18 12:12:42', '2021-07-18 14:12:42'),
('8cf44b98612a340b49d0d1460393d19b7fb56bc92d887442061dda3d79eb8d4f23a399a5210344ba', 19, 1, 'illias@gmail.com-2020-08-12 19:55:10', '[]', 0, '2020-08-12 18:55:10', '2020-08-12 18:55:10', '2021-08-12 19:55:10'),
('8d1390a91ff740fc7c1b4378e93832034e68bf380a8c7b091db911e619c18134bebd0e55ede015cb', 1, 1, 'lahcen@gmail.com-2020-09-12 13:15:05', '[]', 0, '2020-09-12 12:15:05', '2020-09-12 12:15:05', '2021-09-12 13:15:05'),
('8d328a9ac0237e4393429b9957e193de21b2b55dd3d9e67e8bb721f04f1f17a5886e5bca12e08e34', 12, 1, 'karim1@gmail.com-2020-08-05 14:33:30', '[]', 0, '2020-08-05 13:33:30', '2020-08-05 13:33:30', '2021-08-05 14:33:30'),
('8d807f542f41abbfb56aaed496bab186ba8ff92204b13ea03edb137a6d626b13055afd08f1b33941', 1, 1, 'lahcen@gmail.com-2020-09-13 21:50:06', '[]', 0, '2020-09-13 20:50:06', '2020-09-13 20:50:06', '2021-09-13 21:50:06'),
('8fcf84e33fa377b216063a6b7baa9c549ffdf4b0d2367a3f908e8e74e800b536d41ebafe9e381b1a', 5, 1, 'othmane@othmane.com-2020-07-20 17:51:08', '[]', 0, '2020-07-20 15:51:08', '2020-07-20 15:51:08', '2021-07-20 17:51:08'),
('8fe25464d1238b4d728ed1f0690fdd4335c2a43baa3f8d1f96ee57e4a66a938a57b9cc5031c3f477', 10, 1, 'test@test.com-2020-08-05 11:04:40', '[]', 0, '2020-08-05 10:04:40', '2020-08-05 10:04:40', '2021-08-05 11:04:40'),
('900dd614474b5aed3b0f6fd5ffbddac551df38613990e1878ca6aa90c6fe35b0a4996a949063d700', 10, 1, 'test@test.com-2020-08-05 11:20:40', '[]', 0, '2020-08-05 10:20:40', '2020-08-05 10:20:40', '2021-08-05 11:20:40'),
('902009b374aa99e1a794da8d4a20c853ac6cde9b30830d5dcf05079cb8cc311428faa924798b1624', 9, 1, 'sara@gmail.com-2020-07-30 11:26:38', '[]', 0, '2020-07-30 10:26:38', '2020-07-30 10:26:38', '2021-07-30 11:26:38'),
('902982f1e64ca9b7db5b9a18cee2c0dbf649d75dc796763ca14487d12d19d01bfd30cf00dbcf8277', 6, 1, 'issam@gmail.com-2020-07-16 14:54:19', '[]', 0, '2020-07-16 12:54:19', '2020-07-16 12:54:19', '2021-07-16 14:54:19'),
('9069dd11b2a33b6cd881f640ca6798f6b8d0cbbc8ac286ed3be0b99cebb83ed0558bc814a5381be9', 25, 1, 'test4@test4.com-2020-09-12 23:50:26', '[]', 0, '2020-09-12 22:50:26', '2020-09-12 22:50:26', '2021-09-12 23:50:26'),
('9164c4c837142a65ec96432a3f00c5d29093bc46422749785dc855e4c359ee94d79fa76e32763ce6', 5, 1, 'othmane@othmane.com-2020-08-13 19:20:07', '[]', 0, '2020-08-13 18:20:07', '2020-08-13 18:20:07', '2021-08-13 19:20:07'),
('91f46303cd39c2dd90c9431c6a450cdadb551b28db0833dea062168f8276125d250ed92136198edb', 1, 1, 'lahcen@gmail.com-2020-07-28 19:15:31', '[]', 0, '2020-07-28 18:15:31', '2020-07-28 18:15:31', '2021-07-28 19:15:31'),
('92be370a228afb5dd64a8adf8a31d43e68c8ff0557e8176ff130314a00a49a42e49c416577eb89aa', 9, 1, 'sara@gmail.com-2020-07-30 00:06:41', '[]', 0, '2020-07-29 23:06:41', '2020-07-29 23:06:41', '2021-07-30 00:06:41'),
('931da876e34cc9be9ba7f86f2ed63f5656ecdc1866295ebfe827811f96dfc7718eb41dc1a208de32', 1, 1, 'lahcen@gmail.com-2020-09-12 13:07:12', '[]', 0, '2020-09-12 12:07:12', '2020-09-12 12:07:12', '2021-09-12 13:07:12'),
('93977f58d91e8d18b46a9b0b74e4cb0cde1fd69725e09ba1b2674398312556e26c0328b03d66aed5', 11, 1, 'taha@gmail.com-2020-08-05 14:12:29', '[]', 0, '2020-08-05 13:12:29', '2020-08-05 13:12:29', '2021-08-05 14:12:29'),
('95d1fd94d5a8b6c7140828585ca865ca121a577ed8256abfc626580c6b80697ef534deca7c469de4', 5, 1, 'othmane@othmane.com-2020-07-20 17:19:15', '[]', 0, '2020-07-20 15:19:15', '2020-07-20 15:19:15', '2021-07-20 17:19:15'),
('96374359f576330d79b3b24562a8a98589dd7c87d5977beb52f384c7c021dee00deb5e38b8a98109', 13, 1, 'jamal@gmail.com-2020-08-05 14:49:09', '[]', 0, '2020-08-05 13:49:09', '2020-08-05 13:49:09', '2021-08-05 14:49:09'),
('96a3da5f4dc01fdb3009a2583e8bde3145df0dfd94512e6ad8ad43dffdddb3276648b7604b22325d', 6, 1, 'issam@gmail.com-2020-07-20 16:13:38', '[]', 0, '2020-07-20 14:13:43', '2020-07-20 14:13:43', '2021-07-20 16:13:43'),
('9773cb7db08d0ce4078dace3801f3226ff90ffa0393bcd9a82e53abe2f8d6f2942d632015c13f2dc', 1, 1, 'lahcen@gmail.com-2020-07-28 17:14:55', '[]', 0, '2020-07-28 16:14:55', '2020-07-28 16:14:55', '2021-07-28 17:14:55'),
('988f1df082576d41306e3709c9087d56298d981adb911a913902fcd829aed99ebd729e1474ecc1f5', 1, 1, 'lahcen@gmail.com-2020-09-13 18:21:03', '[]', 0, '2020-09-13 17:21:04', '2020-09-13 17:21:04', '2021-09-13 18:21:04'),
('98ebd0fc739536953609005572509318ef9f8dd15a2b4a218111cffea79e96025f95b10fd77e65a8', 5, 1, 'othmane@othmane.com-2020-07-20 17:49:58', '[]', 0, '2020-07-20 15:49:58', '2020-07-20 15:49:58', '2021-07-20 17:49:58'),
('98f7759a69d1dd211f21e64bee737fdac94804ed1b53853253131c59492b685fac5b4bcdde53a421', 1, 1, 'lahcen@gmail.com-2020-07-28 16:24:56', '[]', 0, '2020-07-28 15:24:56', '2020-07-28 15:24:56', '2021-07-28 16:24:56'),
('99094d1836810ac153a73e06e21e50b727ba90e229d0dfb813dcc3859e90b2aa5d5a2c7864a4376a', 6, 1, 'issam@gmail.com-2020-07-20 16:27:59', '[]', 0, '2020-07-20 14:27:59', '2020-07-20 14:27:59', '2021-07-20 16:27:59'),
('9938c09cbdee441a95a905b28e2202938fd55bdd283583d018a26018557cdf24cb728f26eafca2c7', 5, 1, 'othmane@othmane.com-2020-07-28 22:44:59', '[]', 0, '2020-07-28 21:44:59', '2020-07-28 21:44:59', '2021-07-28 22:44:59'),
('9940496b42e4c5249e5ca5c190b289cc940a470938ab817bf4861a7e4a907aa4530f04e19b49b13d', 6, 1, 'issam@gmail.com-2020-07-16 16:40:38', '[]', 0, '2020-07-16 14:40:38', '2020-07-16 14:40:38', '2021-07-16 16:40:38'),
('9a2810b2194c028ce9115d3a89a6ac7b904f3c7ad991ce34d78569890a35c376b952409c9c67b79e', 6, 1, 'issam@gmail.com-2020-07-16 18:20:18', '[]', 0, '2020-07-16 16:20:18', '2020-07-16 16:20:18', '2021-07-16 18:20:18'),
('9a68822ce794748fc83f38ebfaa61678f004227db8314fd79ab090e4df90255c731cd05675da2ea1', 13, 1, 'jamal@gmail.com-2020-08-09 19:02:51', '[]', 0, '2020-08-09 18:02:51', '2020-08-09 18:02:51', '2021-08-09 19:02:51'),
('9af6c6c029ed8ff60239d306d13391b0d72d3a4f28e3074dc03eed10c08a2e1cd2b98f09c6f60693', 1, 1, 'lahcen@gmail.com-2020-08-05 16:57:24', '[]', 0, '2020-08-05 15:57:24', '2020-08-05 15:57:24', '2021-08-05 16:57:24'),
('9afc8fceacfc16b1a1ddeecb54c742920fc6b22ba071ae90b2980da13f0c0825f795cde32a5e1e65', 5, 1, 'othmane@othmane.com-2020-07-20 16:50:02', '[]', 0, '2020-07-20 14:50:02', '2020-07-20 14:50:02', '2021-07-20 16:50:02'),
('9c2b32a5ccf14279864cbe25ed818accd3ead4e555717700589e97f86f81841ce5ba14ad05d48498', 13, 1, 'jamal@gmail.com-2020-08-09 18:54:32', '[]', 0, '2020-08-09 17:54:32', '2020-08-09 17:54:32', '2021-08-09 18:54:32'),
('9c885527fe0db6cba0649305f8cb50080146bfa1b59819b4ffd16403153fb09b33165e622d644162', 10, 1, 'test@test.com-2020-08-05 12:48:50', '[]', 0, '2020-08-05 11:48:50', '2020-08-05 11:48:50', '2021-08-05 12:48:50'),
('9d6a1f51c1d9c0eefc3a93218600bd1eb0b97851c926ad583687c13fd42ff65057ea281e4e8fd6ff', 1, 1, 'lahcen@gmail.com-2020-08-06 17:41:22', '[]', 0, '2020-08-06 16:41:22', '2020-08-06 16:41:22', '2021-08-06 17:41:22'),
('9d8f363361720d90844519a3212d5393fc2d8f6a8e86e4f74bf8c683fce2f323ab65dce87270bc22', 1, 1, 'lahcen@gmail.com-2020-09-15 17:59:48', '[]', 0, '2020-09-15 16:59:48', '2020-09-15 16:59:48', '2021-09-15 17:59:48'),
('9e0187fc48a40e5c97ab1dcd789a2cd21f73a650ef4d04b3c57cc3e53c6201cfc77687981aae1f36', 1, 1, 'lahcen@gmail.com-2020-07-29 11:35:13', '[]', 0, '2020-07-29 10:35:13', '2020-07-29 10:35:13', '2021-07-29 11:35:13'),
('9e07717d6f782c02188fa102eea59dd0ab015a23b4c3689a1c86212d66788d107c303ae46e631436', 9, 1, 'sara@gmail.com-2020-08-04 10:07:24', '[]', 0, '2020-08-04 09:07:24', '2020-08-04 09:07:24', '2021-08-04 10:07:24'),
('9e1682364e13031a7cfd5df868f8588303f9c42ce9d8004a8c92a8f3096144b51a27d4e526237427', 5, 1, 'othmane@othmane.com-2020-07-28 15:50:47', '[]', 0, '2020-07-28 14:50:47', '2020-07-28 14:50:47', '2021-07-28 15:50:47'),
('9e2822081299c15f7f85cf79dd66f252fce3b4cc77d6f30f98e19a92ea52368d0575d3ac14498cf6', 9, 1, 'sara@gmail.com-2020-07-31 23:46:02', '[]', 0, '2020-07-31 22:46:02', '2020-07-31 22:46:02', '2021-07-31 23:46:02'),
('9e2c6d38058a091e10932f1a712eae4eca6b278f2d9419286aae6020ac088136810053ca0a86f7e9', 6, 1, 'issam@gmail.com-2020-07-17 13:45:41', '[]', 0, '2020-07-17 11:45:41', '2020-07-17 11:45:41', '2021-07-17 13:45:41'),
('9f0667003c5df5d8a1426fd8035319e009102702b8842be7521e3c707d8d4acf2d0dd9f7211f19f8', 1, 1, 'lahcen@gmail.com-2020-07-29 15:31:18', '[]', 0, '2020-07-29 14:31:18', '2020-07-29 14:31:18', '2021-07-29 15:31:18'),
('9f855e7560c9d9bc5bd7728d3845958c37833e16a715ca585c4d142d3e341f91450ef24b34d358e2', 5, 1, 'othmane@othmane.com-2020-09-12 14:41:43', '[]', 0, '2020-09-12 13:41:43', '2020-09-12 13:41:43', '2021-09-12 14:41:43'),
('a032d9b2b251df97ac70aa8e7412682f172c247163ce5f47748f42df2d9cdc293886df0b40f08eb7', 1, 1, 'lahcen@gmail.com-2020-08-04 10:34:43', '[]', 0, '2020-08-04 09:34:43', '2020-08-04 09:34:43', '2021-08-04 10:34:43'),
('a1f9f36a4f26b11b26c9215f6dd438cfb2eacdeffdaf7306552ee3ef8f762097ea176faf0955c813', 13, 1, 'jamal@gmail.com-2020-08-05 17:21:45', '[]', 0, '2020-08-05 16:21:45', '2020-08-05 16:21:45', '2021-08-05 17:21:45'),
('a2c53d3ba0016af457f5d359ddc1417e3aee71da057b9697e0e292d2c6da6526d7960d0fd8ea07df', 1, 1, 'admin@gmail.com-2020-10-04 23:45:02', '[]', 0, '2020-10-04 22:45:02', '2020-10-04 22:45:02', '2021-10-04 23:45:02'),
('a3a1ba2f7a0cd3b3baaca4f040f570079cc2bebdc5d6944756e478338972b839e9631809d8b553ab', 9, 1, 'sara@gmail.com-2020-07-29 23:12:28', '[]', 0, '2020-07-29 22:12:28', '2020-07-29 22:12:28', '2021-07-29 23:12:28'),
('a422083f16a1bde4fb03be291bd2c35868f4089ffa97e1db62f64c5ae4d4e2ccea32f3ab20996673', 9, 1, 'sara@gmail.com-2020-08-04 10:33:38', '[]', 0, '2020-08-04 09:33:38', '2020-08-04 09:33:38', '2021-08-04 10:33:38'),
('a47136bea75e6325fbadfe8cd31696838c0067e74b9712880e8d3870f63d22d69ffbd142efc9a7ae', 5, 1, 'othmane@othmane.com-2020-07-18 14:11:14', '[]', 0, '2020-07-18 12:11:15', '2020-07-18 12:11:15', '2021-07-18 14:11:15'),
('a48771784386f2dfb4c930578411d1e863ecfdf4f2cff15c2ffc8b01364713d377fe70db688a9f98', 30, 1, 'meryem@gmail.com-2020-09-13 23:23:51', '[]', 0, '2020-09-13 22:23:56', '2020-09-13 22:23:56', '2021-09-13 23:23:56'),
('a547648eb64be3e4d8eacb3929e00ad6da00fee16d1dcddfb73363295bc79a908680f0ada605da7e', 6, 1, 'issam@gmail.com-2020-07-16 15:12:45', '[]', 0, '2020-07-16 13:12:45', '2020-07-16 13:12:45', '2021-07-16 15:12:45'),
('a5ac2cafb05e0fbc31cad36a8ecd44e8dd00860d67b1a1b4dff073144083f7c1d1537c0497485c2b', 13, 1, 'jamal@gmail.com-2020-08-05 18:46:07', '[]', 0, '2020-08-05 17:46:07', '2020-08-05 17:46:07', '2021-08-05 18:46:07'),
('a5be508ba8ed5539a5ade1781d6c48ad5ac42a8ae02af0e8739d6fd34711a48c7dad5ee17e4aa679', 5, 1, 'othmane@othmane.com-2020-07-21 18:49:57', '[]', 0, '2020-07-21 16:50:01', '2020-07-21 16:50:01', '2021-07-21 18:50:01'),
('a668fe31466ae0f637338bdb347d7ecd77485520cbc43e29853f5e3277f4c875975ae5febc88565a', 1, 1, 'lahcen@gmail.com-2020-08-05 16:31:50', '[]', 0, '2020-08-05 15:31:50', '2020-08-05 15:31:50', '2021-08-05 16:31:50'),
('a6d840df8abc139805d055a577394a576cf6bd96e01f85abf81ae97c3b2a4412eff763dd95cc7a0e', 15, 1, 'hicham@gmail.com-2020-08-10 01:09:14', '[]', 0, '2020-08-10 00:09:14', '2020-08-10 00:09:14', '2021-08-10 01:09:14'),
('a8a457999bd1fe9512590ef5fa9bc9a8bd91f87f80c45b5af984429f820ecd97c41a6585d96fb6af', 1, 1, 'lahcen@gmail.com-2020-07-31 23:54:08', '[]', 0, '2020-07-31 22:54:08', '2020-07-31 22:54:08', '2021-07-31 23:54:08'),
('a9e6f0baf81bcf2a9ccba1850a912937505174bd080fae9945ab972cdf1f4eaa1a89da1d18051a11', 6, 1, 'issam@gmail.com-2020-07-16 16:18:52', '[]', 0, '2020-07-16 14:18:53', '2020-07-16 14:18:53', '2021-07-16 16:18:53'),
('a9f0c023188a039f2b97651d9b9e5d3627c46f5d29470116f1ddbe5ff3153cfa5824a5cda58958bb', 1, 1, 'lahcen@gmail.com-2020-07-28 19:17:12', '[]', 0, '2020-07-28 18:17:12', '2020-07-28 18:17:12', '2021-07-28 19:17:12'),
('aa917e353061b4303efbc55f3654dfec46327bf7bce4e577f7d86d67c3e6be370e7ff4a6f42c80c4', 13, 1, 'jamal@gmail.com-2020-08-05 15:04:22', '[]', 0, '2020-08-05 14:04:22', '2020-08-05 14:04:22', '2021-08-05 15:04:22'),
('aab48aa250fc1fd017dc1991936509e8111c9d9ecb3c4ce3d2a2d720a87f6dd13d796b87ed74be20', 1, 1, 'lahcen@gmail.com-2020-09-15 15:01:33', '[]', 0, '2020-09-15 14:01:33', '2020-09-15 14:01:33', '2021-09-15 15:01:33'),
('ab45a4ce50387202091b2684e4b10c4208b4d6017c25be9fdc2ecb238cd7b4be29dddfb1d20a9034', 9, 1, 'sara@gmail.com-2020-08-04 11:52:47', '[]', 0, '2020-08-04 10:52:47', '2020-08-04 10:52:47', '2021-08-04 11:52:47'),
('ab6dd7e8ab83c0c688215c843c04d8386f181e4379962f5f2c8500c252d1a374bd3347f22ebce2d8', 5, 1, 'othmane@othmane.com-2020-08-13 17:15:22', '[]', 0, '2020-08-13 16:15:22', '2020-08-13 16:15:22', '2021-08-13 17:15:22'),
('ab82e0c5e89b3afa003cef48e004f0a82a0efa1b4b885ac33e4b4433374f7003dd7dbf64560347df', 5, 1, 'othmane@othmane.com-2020-07-28 16:39:48', '[]', 0, '2020-07-28 15:39:49', '2020-07-28 15:39:49', '2021-07-28 16:39:49'),
('ab8ebcd9bf2b14c9df8eb6ea9a51219ffef5538e58e13c4090f9d970efdd20b0261ad7de2c571755', 26, 1, 'ayoub@gmail.com-2020-09-13 15:53:27', '[]', 0, '2020-09-13 14:53:27', '2020-09-13 14:53:27', '2021-09-13 15:53:27'),
('ac3e1d7d740dbab3ecbdcbcfd48d6b0a15503bdab39ddaaa4f613effd47ef31866fd2b0edc40e8a1', 1, 1, 'lahcen@gmail.com-2020-07-28 17:10:27', '[]', 0, '2020-07-28 16:10:27', '2020-07-28 16:10:27', '2021-07-28 17:10:27'),
('ac9d4f571bd043cb12b4fdab4c6668cadd4233ad4523ddf8a79d81c6fc8374d5a127fd8bbfc100d8', 9, 1, 'sara@gmail.com-2020-07-29 15:29:13', '[]', 0, '2020-07-29 14:29:13', '2020-07-29 14:29:13', '2021-07-29 15:29:13'),
('acbf98c36caead8e0dd249a25c88dce27ebfb94254da61444d28a28ff0a11e381b6b7cefa31928c9', 1, 1, 'lahcen@gmail.com-2020-08-05 18:44:29', '[]', 0, '2020-08-05 17:44:29', '2020-08-05 17:44:29', '2021-08-05 18:44:29'),
('add9aa6b5146956b06d0613a68f48824bcd275db6aab9da62f1566671cef5e42907d58326e1174fc', 1, 1, 'lahcen@gmail.com-2020-07-28 16:20:42', '[]', 0, '2020-07-28 15:20:42', '2020-07-28 15:20:42', '2021-07-28 16:20:42'),
('ade908b2d39e072d19961e1185c9fe4deec3a08983a2b361eb64c92523119d13d1353728ad3306aa', 1, 1, 'lahcen@gmail.com-2020-07-30 11:16:51', '[]', 0, '2020-07-30 10:16:51', '2020-07-30 10:16:51', '2021-07-30 11:16:51'),
('aede946842e8a5fb0034428fd65f9c4b3a7f2180316e51a327a6b9114cfda444bd7b6b9998d196d8', 1, 1, 'lahcen@gmail.com-2020-08-06 17:51:14', '[]', 0, '2020-08-06 16:51:14', '2020-08-06 16:51:14', '2021-08-06 17:51:14'),
('aeeed73bb8581167775a79b6515624723633a837eb6345a85508db7b7e21bc68f51a0ac49303f2b4', 5, 1, 'othmane@othmane.com-2020-09-12 13:36:53', '[]', 0, '2020-09-12 12:36:53', '2020-09-12 12:36:53', '2021-09-12 13:36:53'),
('afc942f831cd49d8997840b1f6d54604e3d12a7fb9a0c5e47428dc5d9cfee48e3ff97e87c3927a27', 13, 1, 'jamal@gmail.com-2020-08-06 17:44:20', '[]', 0, '2020-08-06 16:44:20', '2020-08-06 16:44:20', '2021-08-06 17:44:20'),
('b01a44a821928ebc568d2c947ef2850bf1a8a5d6e406b422fa6114f9875f97017aaaae8f44c08f2d', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:35', '[]', 0, '2020-09-13 20:49:35', '2020-09-13 20:49:35', '2021-09-13 21:49:35'),
('b053fc584148dd9d0065a8c8f1fb485f68c7f18746fc2c0619c80dab6867728fa2cec1d9e0b0d54f', 15, 1, 'hicham@gmail.com-2020-08-11 12:20:23', '[]', 0, '2020-08-11 11:20:23', '2020-08-11 11:20:23', '2021-08-11 12:20:23'),
('b05589f40db7984792f02355b443bca985c6c42abe04349484f669758aa2a13b828d94dfc1289be2', 1, 1, 'lahcen@gmail.com-2020-08-05 18:18:31', '[]', 0, '2020-08-05 17:18:31', '2020-08-05 17:18:31', '2021-08-05 18:18:31'),
('b082b89599ab7dc861b4e0af069dc51763dd2d41c7deb697507fa2f672e8853e3a09f14dc6844a63', 1, 1, 'lahcen@gmail.com-2020-07-28 18:25:48', '[]', 0, '2020-07-28 17:25:48', '2020-07-28 17:25:48', '2021-07-28 18:25:48'),
('b12174095769e1153f508d868fcbeee99989f0058bb390c18b3be12143e193b9a8b6ab41473f2979', 5, 1, 'othmane@othmane.com-2020-07-28 21:43:39', '[]', 0, '2020-07-28 20:43:39', '2020-07-28 20:43:39', '2021-07-28 21:43:39'),
('b2839460e27d7cacf4a20bccf3e00caecd70c5f7cff6cbe2acc150cf207e368d7a5212cf203f5510', 5, 1, 'othmane@othmane.com-2020-07-28 15:47:49', '[]', 0, '2020-07-28 14:47:49', '2020-07-28 14:47:49', '2021-07-28 15:47:49'),
('b37b4de3271bb8bc2609de5705fe338abf552cddd18a678c00ebf9169179acd0e5a7f2ee5f42b33f', 22, 1, 'test00@gmail.com-2020-09-12 20:55:34', '[]', 0, '2020-09-12 19:55:34', '2020-09-12 19:55:34', '2021-09-12 20:55:34'),
('b4363dddf724cad875186061970d53a95835ced70839713d6e858d593e74384f5e084fef8bba6f6d', 1, 1, 'lahcen@gmail.com-2020-08-05 16:42:10', '[]', 0, '2020-08-05 15:42:10', '2020-08-05 15:42:10', '2021-08-05 16:42:10'),
('b463f5258726e928d7180291a2f03b662aa9e01349af7e15e5be8448d909bc5b2aa0a3c18f1ab1e6', 1, 1, 'admin@gmail.com-2020-09-30 22:01:41', '[]', 0, '2020-09-30 21:01:41', '2020-09-30 21:01:41', '2021-09-30 22:01:41'),
('b4baa25708e9bfa0cade9b9ee280425bb5f86769ed2b698792a89c614589394c0c88299a89a7636a', 2, 1, 'lahcen12@gmail.com-2020-07-15 19:48:09', '[]', 0, '2020-07-15 17:48:09', '2020-07-15 17:48:09', '2021-07-15 19:48:09'),
('b524406fe6bd3f2bf6b5c851f396dba9860cf8d9d00ff9b218436ad16cdd3af52b138bb2775c6ae9', 5, 1, 'othmane@othmane.com-2020-07-20 18:47:43', '[]', 0, '2020-07-20 16:47:43', '2020-07-20 16:47:43', '2021-07-20 18:47:43'),
('b524fe1115f584a67c76a56370f711bb5e486d31ab77cbb02172ad9a329ad878a3fe2603f99a5b57', 6, 1, 'issam@gmail.com-2020-07-20 16:14:25', '[]', 0, '2020-07-20 14:14:25', '2020-07-20 14:14:25', '2021-07-20 16:14:25'),
('b52f337d8b996f47772f41a9c7d65c772df1c5797de29177f02423d383dcca42f5c2736cae4422fc', 15, 1, 'hicham@gmail.com-2020-08-10 13:57:06', '[]', 0, '2020-08-10 12:57:06', '2020-08-10 12:57:06', '2021-08-10 13:57:06'),
('b5fbc745e60fd8c715a72dd99bed4de751f81f18a8d6c5c977d0ec56d14698894945b0bded065f65', 9, 1, 'sara@gmail.com-2020-07-29 16:06:24', '[]', 0, '2020-07-29 15:06:24', '2020-07-29 15:06:24', '2021-07-29 16:06:24'),
('b6ae1545702dc8a76f902b091e0a3caf86e9675ff0c6d41a3d160c7a3909bf49a7fceb3cc60f2448', 5, 1, 'othmane@othmane.com-2020-07-20 16:51:36', '[]', 0, '2020-07-20 14:51:36', '2020-07-20 14:51:36', '2021-07-20 16:51:36'),
('b714aebbff501c52df02b2cae5cbd2e0337f288608608a484e961ce22dc274302027cedbb102cd86', 5, 1, 'othmane@othmane.com-2020-08-19 17:31:24', '[]', 0, '2020-08-19 16:31:25', '2020-08-19 16:31:25', '2021-08-19 17:31:25'),
('b73424bc709eec3e3ccdd108f5f36d992025a8122bc55aff93a5f5b2519d9bfaf74024bba3a0cc4c', 30, 1, 'meryem@gmail.com-2020-09-13 23:23:54', '[]', 0, '2020-09-13 22:23:56', '2020-09-13 22:23:56', '2021-09-13 23:23:56'),
('b746d6335a911167ecfa5b7c6e1a6a45d5d2bdf3735d65170e5e2e59ad53f879c0d00dabf8ab3a35', 1, 1, 'lahcen@gmail.com-2020-07-28 19:04:53', '[]', 0, '2020-07-28 18:04:53', '2020-07-28 18:04:53', '2021-07-28 19:04:53'),
('b82f4ccb2c1c4016a0ca37c7c810fcc05450fc4b6c0680f7981cc41c477bdaf58ebdfed67ef7292e', 5, 1, 'othmane@othmane.com-2020-08-13 23:49:56', '[]', 0, '2020-08-13 22:49:56', '2020-08-13 22:49:56', '2021-08-13 23:49:56'),
('b8901cf9c5d7b184ccf208d82c6b038ac6fd0c463e49c11011f6cd830e7785639afc5981a44e6976', 1, 1, 'lahcen@gmail.com-2020-08-05 14:58:04', '[]', 0, '2020-08-05 13:58:04', '2020-08-05 13:58:04', '2021-08-05 14:58:04'),
('b9c458e78b0315ab273c922006ad890c4e95d562664cac6710abf24cfec03b44bb5511f917a15acb', 5, 1, 'othmane@othmane.com-2020-07-27 21:39:54', '[]', 0, '2020-07-27 20:39:54', '2020-07-27 20:39:54', '2021-07-27 21:39:54'),
('b9c74e3ba60cae095f47c06a3f3df9b0eb7a3b7807d220adbad527988e7a61a46ca40e42d6d4d517', 5, 1, 'othmane@othmane.com-2020-07-20 16:49:30', '[]', 0, '2020-07-20 14:49:30', '2020-07-20 14:49:30', '2021-07-20 16:49:30'),
('ba1aced1e182639968797412562097760acb6c828f4fb3e7f88f310ca234f90813fc7d5475661295', 27, 1, 'test10@gmail.com-2020-10-07 18:36:40', '[]', 0, '2020-10-07 17:36:40', '2020-10-07 17:36:40', '2021-10-07 18:36:40'),
('bb47e06a910b4882df4e3ebc910a45cbfbd32b6d214dfe8076e70e2eae9b2247f115f5c74ae95dae', 9, 1, 'sara@gmail.com-2020-07-31 00:31:11', '[]', 0, '2020-07-30 23:31:11', '2020-07-30 23:31:11', '2021-07-31 00:31:11'),
('bb5f32b399d80fe78a29edf711c820bbb358e076d268d92ad1b27c5f6c2c537014676bdd221456c4', 1, 1, 'lahcen@gmail.com-2020-07-28 16:10:06', '[]', 0, '2020-07-28 15:10:06', '2020-07-28 15:10:06', '2021-07-28 16:10:06'),
('bc1f29482628418884ec13254bae65ef1994a1ba27af4bd5f3a97bcbb615be667afd742b440fd0b2', 13, 1, 'jamal@gmail.com-2020-08-05 18:45:47', '[]', 0, '2020-08-05 17:45:47', '2020-08-05 17:45:47', '2021-08-05 18:45:47'),
('bca2efce19bfccc08c97bc4768c02efd0c2516302c2904b929356ad1a5b315ec25b9a0294139c7e0', 10, 1, 'test@test.com-2020-08-05 13:32:08', '[]', 0, '2020-08-05 12:32:08', '2020-08-05 12:32:08', '2021-08-05 13:32:08'),
('bd2ee026c0891febba8500158ddfb6f09e3ae9f50738442e61a07ba4bf4ec04c2bc7f2f9fff752f4', 4, 1, 'lahcen@gg.com-2020-07-16 10:34:46', '[]', 0, '2020-07-16 08:34:46', '2020-07-16 08:34:46', '2021-07-16 10:34:46'),
('bd47f0dae95dfa4256b12970d5c924059222d472f126189fedabfa42ca467ca1064bb8b68d510c6f', 1, 1, 'lahcen@gmail.com-2020-09-13 14:26:13', '[]', 0, '2020-09-13 13:26:17', '2020-09-13 13:26:17', '2021-09-13 14:26:17'),
('bd5619f81782b5ae8d9b27e8a2e847ddcc43c5e4d54d2e6c27ad5d1eec6581d1a198dbef0b6ec1e5', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:22', '[]', 0, '2020-09-13 20:49:31', '2020-09-13 20:49:31', '2021-09-13 21:49:31'),
('bdb2702b0ece44cad47029ce1b7ce1eb82010746bf1cf65e176d82353281827332d071464d445a91', 5, 1, 'othmane@othmane.com-2020-07-20 17:13:45', '[]', 0, '2020-07-20 15:13:45', '2020-07-20 15:13:45', '2021-07-20 17:13:45'),
('be8718d6efe045711db30e89521956a9694dd0f90ade31b00285fb006548618d3c5e11baa632989c', 27, 1, 'test10@gmail.com-2020-09-13 17:25:43', '[]', 0, '2020-09-13 16:25:44', '2020-09-13 16:25:44', '2021-09-13 17:25:44'),
('be9b8c2939db55d2bfa6e88f0adff6f000ba007786e5b11561f9bbee332dfd0eb8c592b892e5b957', 1, 1, 'lahcen@gmail.com-2020-09-17 16:01:31', '[]', 0, '2020-09-17 15:01:32', '2020-09-17 15:01:32', '2021-09-17 16:01:32'),
('bea7d7821a8ae6e74bc85d641854a3dcb0e16ad36d978c385e61d42b1242d6b45b4df1a336e233f5', 5, 1, 'othmane@othmane.com-2020-07-20 17:50:55', '[]', 0, '2020-07-20 15:50:55', '2020-07-20 15:50:55', '2021-07-20 17:50:55'),
('c11bbf10b2101e6c8666484ca69909c688c67313d6eb6cc42a3814cb99a6526bb7018aaef551b356', 7, 1, 'kamal@gmail.com-2020-07-16 15:33:18', '[]', 0, '2020-07-16 13:33:18', '2020-07-16 13:33:18', '2021-07-16 15:33:18'),
('c16be94f75fd1521f1a37c0fbed0a475fcf210c944bd1c0373a4ff9b2da5c03e158e4fe854ac4078', 5, 1, 'othmane@othmane.com-2020-07-23 14:25:07', '[]', 0, '2020-07-23 13:25:07', '2020-07-23 13:25:07', '2021-07-23 14:25:07'),
('c1d7be56836b8c1bc391d287fedbfef027b1e9c6a6670142b0f9fc0e894059a152cbd927c7810f9b', 5, 1, 'othmane@othmane.com-2020-08-13 19:22:22', '[]', 0, '2020-08-13 18:22:22', '2020-08-13 18:22:22', '2021-08-13 19:22:22'),
('c1ff267941c85c8561c6ef1fd65188113e30068196f01bd9595b96c85ccb1b23442b5db89cec206b', 1, 1, 'lahcen@gmail.com-2020-08-04 18:11:28', '[]', 0, '2020-08-04 17:11:28', '2020-08-04 17:11:28', '2021-08-04 18:11:28'),
('c2d76ee8cb8a31d82d181a15078194693592ff0bb0f27fcee9e8d17f386ead2304538c4e4c02607f', 1, 1, 'admin@gmail.com-2020-10-07 18:38:27', '[]', 0, '2020-10-07 17:38:27', '2020-10-07 17:38:27', '2021-10-07 18:38:27'),
('c30ff30360ee24df9092eccd3c4d7fa947254a9a826aa3d8d98064062e1e68800b7218a2333d3faf', 5, 1, 'othmane@othmane.com-2020-07-19 12:16:16', '[]', 0, '2020-07-19 10:16:16', '2020-07-19 10:16:16', '2021-07-19 12:16:16'),
('c571792f39c06f81731bb107180b652246d08205f9f17167bbcb0f2e2c4361dd8c1e3e4904264ad1', 13, 1, 'jamal@gmail.com-2020-08-05 19:24:43', '[]', 0, '2020-08-05 18:24:43', '2020-08-05 18:24:43', '2021-08-05 19:24:43'),
('c5eca6339c2f1b016a10fd344e587ecc80b421ce042e047794ee62fc94172011c2c615d6dc4de677', 1, 1, 'lahcen@gmail.com-2020-08-06 17:26:18', '[]', 0, '2020-08-06 16:26:18', '2020-08-06 16:26:18', '2021-08-06 17:26:18'),
('c61539b11010b9b397058a1ecdfefc50332cafb121715355934a96096e6f3d8285c6ab01f39e24c1', 1, 1, 'lahcen@gmail.com-2020-07-28 16:21:05', '[]', 0, '2020-07-28 15:21:05', '2020-07-28 15:21:05', '2021-07-28 16:21:05'),
('c6967e09c86a99d06c1d4c33f14d0120820ad1572b299bfb069f0295bb29eba9aa07ffdc496aec58', 5, 1, 'othmane@othmane.com-2020-07-20 16:25:51', '[]', 0, '2020-07-20 14:25:51', '2020-07-20 14:25:51', '2021-07-20 16:25:51'),
('c6d80e007db0e64b1f9d63369b4fe1252ee939771a90b0e5b60e418483806acd211ba88f05a6b492', 1, 1, 'lahcen@gmail.com-2020-08-13 12:44:22', '[]', 0, '2020-08-13 11:44:23', '2020-08-13 11:44:23', '2021-08-13 12:44:23'),
('c731d45a16e105f32e95ddfe1927ddb7b6d9c6c6ead64a288458bb16dc464d2d2288f1a277319c52', 5, 1, 'othmane@othmane.com-2020-07-20 17:51:48', '[]', 0, '2020-07-20 15:51:48', '2020-07-20 15:51:48', '2021-07-20 17:51:48'),
('c803ff18cbcce005bcc20fb0f88552093347089549f1abdbdb88eb76de0ba0b1b9ebfb342a47a76d', 20, 1, 'test1@gmail.com-2020-09-12 14:58:01', '[]', 0, '2020-09-12 13:58:02', '2020-09-12 13:58:02', '2021-09-12 14:58:02'),
('c86ae0de0050a5595199a612d828874da0db642620438153f89e84dbbb319c8a92cf69d8d5d3acc3', 1, 1, 'admin@gmail.com-2020-10-07 17:25:54', '[]', 0, '2020-10-07 16:25:54', '2020-10-07 16:25:54', '2021-10-07 17:25:54'),
('c8ae43b75f78015b53ec4295f7dd7fe193cedd9a5613cea63f8f1e0b8253071f20d972a39c85af39', 6, 1, 'issam@gmail.com-2020-07-18 14:59:43', '[]', 0, '2020-07-18 12:59:43', '2020-07-18 12:59:43', '2021-07-18 14:59:43'),
('c8ca69c8d6722e843333f03cc5d8cddbd346f72b267ada95269809af01407fada7bf858e6353a696', 5, 1, 'othmane@othmane.com-2020-08-13 17:12:34', '[]', 0, '2020-08-13 16:12:34', '2020-08-13 16:12:34', '2021-08-13 17:12:34'),
('c8fc09e7011cb28024c378343539757c73c6ac7c0c3390b007b19fae615bf1d82ca8443945720fce', 5, 1, 'othmane@othmane.com-2020-07-24 01:54:05', '[]', 0, '2020-07-24 00:54:05', '2020-07-24 00:54:05', '2021-07-24 01:54:05'),
('c999480e0c8d863970c772c7c42e6e0637da00f34a0e2e4d58f91fe46cfbb6dcc4407b2d5f3a7f17', 1, 1, 'lahcen@gmail.com-2020-08-05 15:47:43', '[]', 0, '2020-08-05 14:47:43', '2020-08-05 14:47:43', '2021-08-05 15:47:43'),
('c9fa34ecbcb9e82dac1d6d2f0d1a93babb3959ee83b2d1cc38b41feb22ddea267a14437c2dd500fb', 22, 1, 'test00@gmail.com-2020-10-02 15:16:33', '[]', 0, '2020-10-02 14:16:33', '2020-10-02 14:16:33', '2021-10-02 15:16:33'),
('ca0ce67a9cee98988afc5000fb78bb1c89db42dee8c4ad6fbf3710d4120409a652517dcc0cff3b0d', 27, 1, 'test10@gmail.com-2020-10-07 18:37:56', '[]', 0, '2020-10-07 17:37:56', '2020-10-07 17:37:56', '2021-10-07 18:37:56'),
('ca66c4caebaabeb831ffff871a5633763616cf25d552fa7789209e49e2fd7176e6f5cca29278ba70', 8, 1, 'khalid@khalid.com-2020-07-16 16:48:06', '[]', 0, '2020-07-16 14:48:06', '2020-07-16 14:48:06', '2021-07-16 16:48:06'),
('cb8d45b5da2a0558ba98ec0a425bd4ae67d4ae99e56188c319dae204af5942ca1b531d1039871bbb', 9, 1, 'sara@gmail.com-2020-07-30 11:29:17', '[]', 0, '2020-07-30 10:29:17', '2020-07-30 10:29:17', '2021-07-30 11:29:17'),
('cbd6ca6908c739dd7baa06baab77dc28cca399d9107257d18a09fd3134d02b5ccc9a90dc2fe71d40', 9, 1, 'sara@gmail.com-2020-07-29 15:58:26', '[]', 0, '2020-07-29 14:58:26', '2020-07-29 14:58:26', '2021-07-29 15:58:26'),
('cd12690cb3be0bbe3a3cf94d923b4201d446780be8087c1fe8de8ed97a99222dc020abb277ed944c', 9, 1, 'sara@gmail.com-2020-07-30 11:27:31', '[]', 0, '2020-07-30 10:27:31', '2020-07-30 10:27:31', '2021-07-30 11:27:31'),
('cd67e7e8c8f29ec3eeac41453ff9d4df8feb6e2ea1bfcabe95e15636850741f7a060e8333ea875b4', 1, 1, 'lahcen@gmail.com-2020-08-05 17:49:31', '[]', 0, '2020-08-05 16:49:31', '2020-08-05 16:49:31', '2021-08-05 17:49:31'),
('cd77b13e6b15e81fa68be6405cbea05a6d016a10746af6355a7a9f85b757e13d822a88ec57259743', 1, 1, 'admin@gmail.com-2020-09-20 14:46:33', '[]', 0, '2020-09-20 13:46:34', '2020-09-20 13:46:34', '2021-09-20 14:46:34'),
('cdb032d620a1bbf151409c283437f3214e16096f3bad5305c8a1d1c0c0baf08a15b3d97591ef58d7', 1, 1, 'lahcen@gmail.com-2020-07-28 16:04:55', '[]', 0, '2020-07-28 15:04:55', '2020-07-28 15:04:55', '2021-07-28 16:04:55'),
('cde560f23acbddad6faaeb3f135f0a264ccfd0cc2e6363dc6278520bcf279047685d1460291cec27', 10, 1, 'test@test.com-2020-08-05 10:48:47', '[]', 0, '2020-08-05 09:48:47', '2020-08-05 09:48:47', '2021-08-05 10:48:47'),
('ce510ed21a96391ba80dce55dd53139641009c5a9c6b4caeac4c9421c6571085de3421a5c1386abd', 1, 1, 'lahcen@gmail.com-2020-07-31 21:44:34', '[]', 0, '2020-07-31 20:44:34', '2020-07-31 20:44:34', '2021-07-31 21:44:34'),
('ce6582ddfad881bee7580cef48e15973f61257e7680a853e0b1686fcab9865082ade68c7184d0d25', 1, 1, 'lahcen@gmail.com-2020-08-05 15:10:08', '[]', 0, '2020-08-05 14:10:08', '2020-08-05 14:10:08', '2021-08-05 15:10:08'),
('cf088b9ca1aaa7a36959b5cd35e9951a35bf6ab743cc68927d40fc0b7472ca4ff4a2f7898dca4d37', 5, 1, 'othmane@othmane.com-2020-08-17 16:22:03', '[]', 0, '2020-08-17 15:22:03', '2020-08-17 15:22:03', '2021-08-17 16:22:03'),
('cf9d9ad6662555d6fb48b305ce3fa1cf3c71afcfc911f381a9297c3e74ad961eb08b85ea9522a838', 6, 1, 'issam@gmail.com-2020-07-20 16:13:50', '[]', 0, '2020-07-20 14:13:50', '2020-07-20 14:13:50', '2021-07-20 16:13:50'),
('d0c3efa9bcb9b20bbb8cf37c3156118330d6b5a58bd604ba6c38c4ee2bc1a6f82f909d7c3ac97d32', 1, 1, 'lahcen@gmail.com-2020-08-04 10:02:23', '[]', 0, '2020-08-04 09:02:23', '2020-08-04 09:02:23', '2021-08-04 10:02:23'),
('d2b994649463b57a9b82e90fed69c29dad255d84aa42196e8ba246226d9cd371c693398c9da43024', 5, 1, 'othmane@othmane.com-2020-07-18 12:30:59', '[]', 0, '2020-07-18 10:30:59', '2020-07-18 10:30:59', '2021-07-18 12:30:59'),
('d2cfb24e4e35bd60c0586e4534de8014aea6fc51a5120ff107b72f3543183641ed27548518bbabe4', 1, 1, 'lahcen@gmail.com-2020-08-11 12:11:03', '[]', 0, '2020-08-11 11:11:03', '2020-08-11 11:11:03', '2021-08-11 12:11:03'),
('d3254eac1559cade006e334ffb0ec023daf5f8c442fce7029341f92bddace6af8ddb2b9dc8c90478', 9, 1, 'sara@gmail.com-2020-07-29 15:58:07', '[]', 0, '2020-07-29 14:58:07', '2020-07-29 14:58:07', '2021-07-29 15:58:07'),
('d4a29b02f16273b8b938af620c34f4fa96d53f2e4e7206ec8ad611fb0b646a8c4f903be02198a71d', 1, 1, 'lahcen@gmail.com-2020-08-05 19:12:52', '[]', 0, '2020-08-05 18:12:52', '2020-08-05 18:12:52', '2021-08-05 19:12:52'),
('d591dd44b1be02decb0f6a757cdccc8fcfe2439a6f2ae01cbd04c0bc7d94e355656fe199a5c82079', 39, 1, 'user@gmail.com-2020-09-30 21:37:15', '[]', 0, '2020-09-30 20:37:15', '2020-09-30 20:37:15', '2021-09-30 21:37:15'),
('d643585b60d74a87646ca03c388a08219e5eee5482ed4599998a1211907a31f9acf5c1c4c697457c', 1, 1, 'lahcen@gmail.com-2020-08-04 12:08:47', '[]', 0, '2020-08-04 11:08:47', '2020-08-04 11:08:47', '2021-08-04 12:08:47'),
('d7043d2452f6e1075fb2aca54f5b972891e591bb8eb2f6e80e00fb835d6f84757334ebe379e97ec2', 6, 1, 'issam@gmail.com-2020-07-16 16:45:05', '[]', 0, '2020-07-16 14:45:05', '2020-07-16 14:45:05', '2021-07-16 16:45:05'),
('d719398f39dd61ba0c4ec112348978377f7158d10210658e9be4646bfe85f983714741cb16ecbaca', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:22', '[]', 0, '2020-09-13 20:49:31', '2020-09-13 20:49:31', '2021-09-13 21:49:31'),
('d8343259bf26c708d753a56756cc10dcb5e3d7a13c16f42239c5d526dfd96739f55f47c533f31205', 13, 1, 'jamal@gmail.com-2020-08-05 18:19:39', '[]', 0, '2020-08-05 17:19:39', '2020-08-05 17:19:39', '2021-08-05 18:19:39'),
('d8d7a44fbbddd4e91af181b3ba4770e7dab351f618f4fb72b28c1a1345e7ca8b787af401a64b4ca3', 6, 1, 'issam@gmail.com-2020-07-18 14:55:28', '[]', 0, '2020-07-18 12:55:28', '2020-07-18 12:55:28', '2021-07-18 14:55:28'),
('d9272dd8874a56fede475a8f0ca660315ec9c1382ce923fbf39a8efe6c10cec906b2da94eb422bb9', 1, 1, 'lahcen@gmail.com-2020-09-16 22:45:17', '[]', 0, '2020-09-16 21:45:17', '2020-09-16 21:45:17', '2021-09-16 22:45:17'),
('d9560e53eb5c2dce96a7f0ef7eee1fb1350a2edf9f50197699225c759f6cc2dcadf8228d9d74ad09', 13, 1, 'jamal@gmail.com-2020-08-05 22:03:39', '[]', 0, '2020-08-05 21:03:39', '2020-08-05 21:03:39', '2021-08-05 22:03:39'),
('da95202bb4606f9f0f3566a86e22280e1f60bf0650466c51d5bf79f4cacf7a756cd800d47675a6ec', 1, 1, 'lahcen@gmail.com-2020-08-05 16:52:42', '[]', 0, '2020-08-05 15:52:42', '2020-08-05 15:52:42', '2021-08-05 16:52:42'),
('da96cc933f784ca9b42a56f2bb638d4eeee0229a00ab1b4d5dc90896bee9c58619c51a403be27dc3', 1, 1, 'admin@gmail.com-2020-10-07 18:36:58', '[]', 0, '2020-10-07 17:36:58', '2020-10-07 17:36:58', '2021-10-07 18:36:58'),
('da9d6569046e967c01efcacc846b1ebfe30e51bbf3bf43eccc64cdace44dab133983b370d62516a8', 1, 1, 'lahcen@gmail.com-2020-08-05 19:07:07', '[]', 0, '2020-08-05 18:07:07', '2020-08-05 18:07:07', '2021-08-05 19:07:07'),
('dcb5c19436936c246465d682ed987d3745b4378a8fd387c6ef612020d398277230c2442c3b8f2244', 1, 1, 'admin@gmail.com-2020-10-04 23:23:50', '[]', 0, '2020-10-04 22:23:50', '2020-10-04 22:23:50', '2021-10-04 23:23:50'),
('dcd677cfd693d995731d198bef5d5530d940979f9e7e3a597f0479ba6dc7e172e9ba7e7e8bd2b3cc', 1, 1, 'lahcen@gmail.com-2020-09-17 00:51:15', '[]', 0, '2020-09-16 23:51:15', '2020-09-16 23:51:15', '2021-09-17 00:51:15'),
('dd3398d055beae9f8157f57fab90f7829752eb2eb73a1c00082661be841066c30a88646b4f865fb7', 1, 1, 'lahcen@gmail.com-2020-08-12 19:57:51', '[]', 0, '2020-08-12 18:57:51', '2020-08-12 18:57:51', '2021-08-12 19:57:51'),
('ddb5de7ee906ba02b1f4bdea582c98347793f78a0717cad62a1ea4467107553636f2080f92f22690', 6, 1, 'issam@gmail.com-2020-07-17 11:50:14', '[]', 0, '2020-07-17 09:50:14', '2020-07-17 09:50:14', '2021-07-17 11:50:14'),
('ddf8a519377d3e4ac858d42aed5cba3e78a88e1f6a99f576f33e38051d43e18119895e7c6f53ab97', 6, 1, 'issam@gmail.com-2020-07-20 16:13:47', '[]', 0, '2020-07-20 14:13:47', '2020-07-20 14:13:47', '2021-07-20 16:13:47'),
('de351ca7ba389a02dcde289cee35c8cffd412e50bac7f403ea9ab857cd6a8011396b2557cd3fc7cc', 1, 1, 'admin@gmail.com-2020-10-01 11:54:19', '[]', 0, '2020-10-01 10:54:19', '2020-10-01 10:54:19', '2021-10-01 11:54:19'),
('dee6d9ca30a830da1ce30f80c784852cd25bfb4f82bfcb81245041f4cc6c2c3474a38f375121b496', 5, 1, 'othmane@othmane.com-2020-07-18 12:03:40', '[]', 0, '2020-07-18 10:03:40', '2020-07-18 10:03:40', '2021-07-18 12:03:40'),
('dfe147b0552462e578dad5f9544349cc56659676bebf55c65595d165fe1d23cc948bc5ca5331fe97', 1, 1, 'lahcen@gmail.com-2020-07-28 17:55:16', '[]', 0, '2020-07-28 16:55:16', '2020-07-28 16:55:16', '2021-07-28 17:55:16'),
('dfe253f35388198c2e97aab56e9d4647e653a8582713c048aa78d0d2e24ae654f3333153165a3955', 37, 1, 'test66@gmail.com-2020-09-17 15:57:52', '[]', 0, '2020-09-17 14:57:52', '2020-09-17 14:57:52', '2021-09-17 15:57:52'),
('dff2c8ee266e7196bf785d382b8a6babfde157050dd44ea5d2c178d4effa568cbf4f97eb7cccf788', 2, 1, 'lahcen12@gmail.com-2020-07-15 19:41:57', '[]', 0, '2020-07-15 17:42:02', '2020-07-15 17:42:02', '2021-07-15 19:42:02'),
('e005232dc722a1b673e245468e7e7b27061f6f778fae6986872c4e4d68f63d87e3addb75edf0bf66', 13, 1, 'jamal@gmail.com-2020-08-05 18:45:54', '[]', 0, '2020-08-05 17:45:54', '2020-08-05 17:45:54', '2021-08-05 18:45:54'),
('e0608005255b073577033099460f21567c7453ea34176d0aae8347023b3c90d74a27b3aa3c0b0e8d', 1, 1, 'lahcen@gmail.com-2020-08-05 18:15:01', '[]', 0, '2020-08-05 17:15:01', '2020-08-05 17:15:01', '2021-08-05 18:15:01'),
('e09fbe2a8e7e2749a1ed5473d9319bb1945616ab3e2acdffbce222dc3d20ffb05c3208e973b54952', 5, 1, 'othmane@othmane.com-2020-07-26 16:44:03', '[]', 0, '2020-07-26 15:44:05', '2020-07-26 15:44:05', '2021-07-26 16:44:05'),
('e2923b407014e221780e4f765e0d827da6f803844faa122d478e85e8117091b8047d8746aa8212bb', 5, 1, 'othmane@othmane.com-2020-07-20 17:16:38', '[]', 0, '2020-07-20 15:16:38', '2020-07-20 15:16:38', '2021-07-20 17:16:38'),
('e2a12422c0f1529dac47a9a5eacc32b98aaf9567a5f7569703e9091e04b6ab9af8ff1f7a7f4ae333', 1, 1, 'lahcen@gmail.com-2020-08-06 17:50:36', '[]', 0, '2020-08-06 16:50:36', '2020-08-06 16:50:36', '2021-08-06 17:50:36'),
('e310d54b41631978ffe5d7a13168fb58d8b3cb303b14d92412b64946e56089564123d532a2b1b30c', 1, 1, 'lahcen@gmail.com-2020-08-10 13:53:19', '[]', 0, '2020-08-10 12:53:19', '2020-08-10 12:53:19', '2021-08-10 13:53:19'),
('e31e3dd7fdf57aaae6e8468bbfc910b133032107c4f2cfb7bdd93172860a907a0f43dcd4b3a458c3', 22, 1, 'test00@gmail.com-2020-10-02 14:55:17', '[]', 0, '2020-10-02 13:55:18', '2020-10-02 13:55:18', '2021-10-02 14:55:18'),
('e4106e458a29532c01945c8bb7c8aef5dfce56cca7a8c6d4e67ebbc0068458a180e3ea5a10c1191b', 1, 1, 'lahcen@gmail.com-2020-09-15 21:16:08', '[]', 0, '2020-09-15 20:16:08', '2020-09-15 20:16:08', '2021-09-15 21:16:08'),
('e41c4e17a15bfc6bb9f62da34c3d2f2ef2a35a3fc295d1a8ba784db2c36a5409e724d7ce5185e764', 9, 1, 'sara@gmail.com-2020-07-30 11:27:51', '[]', 0, '2020-07-30 10:27:51', '2020-07-30 10:27:51', '2021-07-30 11:27:51'),
('e48bfc8d8b3d244d340f1fd7be09303f562ed5f2554509580d5eb5d296da78f1606187443f639ef6', 1, 1, 'lahcen@gmail.com-2020-07-28 17:16:20', '[]', 0, '2020-07-28 16:16:20', '2020-07-28 16:16:20', '2021-07-28 17:16:20'),
('e524e89d15da01609e2ada6321927e7c8fcb5ffbf6ef3a590be3061c8a6f600e50533e8023988d85', 27, 1, 'test10@gmail.com-2020-10-07 18:30:04', '[]', 0, '2020-10-07 17:30:04', '2020-10-07 17:30:04', '2021-10-07 18:30:04'),
('e5c130a318baa6016c4cb9c3aaf2d3dae4ac18d4222ebef4ac709fd52bc91b4c1b944c8ebfceec48', 6, 1, 'issam@gmail.com-2020-07-18 14:36:43', '[]', 0, '2020-07-18 12:36:43', '2020-07-18 12:36:43', '2021-07-18 14:36:43'),
('e61e0dfc3e4334584016e1746526642d3672693bd23c92b31073afbd9b2a9e782fc78b5681162c35', 5, 1, 'othmane@othmane.com-2020-09-13 14:06:49', '[]', 0, '2020-09-13 13:06:50', '2020-09-13 13:06:50', '2021-09-13 14:06:50'),
('e7d9d0c941fde35a5e0295827da1a5f1d687d877ac9faa3b2d67cabf929ef2301a2f352866b0604e', 5, 1, 'othmane@othmane.com-2020-07-18 15:22:58', '[]', 0, '2020-07-18 13:22:58', '2020-07-18 13:22:58', '2021-07-18 15:22:58'),
('e84fff66955a3c3a93ea9d1fb51010acefa380dadbf908188627c1dfaff32fe2e00386b3da0d861d', 6, 1, 'issam@gmail.com-2020-07-20 16:13:46', '[]', 0, '2020-07-20 14:13:46', '2020-07-20 14:13:46', '2021-07-20 16:13:46'),
('e8e2cecf7e4d003e44dd0cc2016e42a5dd81b07d06b95b992db163ef7bf56cd27a956cddfb57ce43', 26, 1, 'ayoub@gmail.com-2020-09-13 15:53:23', '[]', 0, '2020-09-13 14:53:26', '2020-09-13 14:53:26', '2021-09-13 15:53:26'),
('e9f2f54d0d504de449577a480eb4bbd17d662aa25d14e495825e4726f0bd42029ea60b0838d8a039', 22, 1, 'test00@gmail.com-2020-10-16 14:23:28', '[]', 0, '2020-10-16 13:23:29', '2020-10-16 13:23:29', '2021-10-16 14:23:29'),
('ea21e7a425aedea86f2176ec60b82770fd1d3a09fab7be5b1bee228fc22dba045df66f77e197611a', 10, 1, 'test@test.com-2020-08-05 09:59:37', '[]', 0, '2020-08-05 08:59:37', '2020-08-05 08:59:37', '2021-08-05 09:59:37'),
('eb095da3d2206f7c67269e63aaa3d6c8ec765fb9dc18a02b956f54dd034b1680721384c1a410bc16', 6, 1, 'issam@gmail.com-2020-07-16 15:48:30', '[]', 0, '2020-07-16 13:48:30', '2020-07-16 13:48:30', '2021-07-16 15:48:30'),
('eb4630bd30f02674e959d816ca82a0778c09963f7cc48022e2eccaf7378e1209a2f1d74780d8a161', 1, 1, 'lahcen@gmail.com-2020-07-30 21:18:40', '[]', 0, '2020-07-30 20:18:40', '2020-07-30 20:18:40', '2021-07-30 21:18:40'),
('eb5a939733f83f3559a1676ae629601422616cac4c5b6310c4f3df44ac2224d771aebffce30223b4', 9, 1, 'sara@gmail.com-2020-07-29 15:29:00', '[]', 0, '2020-07-29 14:29:00', '2020-07-29 14:29:00', '2021-07-29 15:29:00'),
('eb7ff1df0a2487c821d9926eaad39b6b94afe4b15f05b59365cc2627f2d5dae318ffe4817b98429c', 9, 1, 'sara@gmail.com-2020-08-01 00:09:08', '[]', 0, '2020-07-31 23:09:08', '2020-07-31 23:09:08', '2021-08-01 00:09:08'),
('eb8a2e90f46eb49b1c672e842499a944cbd3cf9eacf2be179387808875272d543d014fe9e497704a', 21, 1, 'test0@gmail.com-2020-09-12 16:01:09', '[]', 0, '2020-09-12 15:01:09', '2020-09-12 15:01:09', '2021-09-12 16:01:09'),
('ebee2301d174876d259c0a2935febcb074c283dfab4f008c1e8340bcbedec943d6d3962ef4d9a467', 1, 1, 'lahcen@gmail.com-2020-08-05 17:49:36', '[]', 0, '2020-08-05 16:49:36', '2020-08-05 16:49:36', '2021-08-05 17:49:36'),
('ec977cb3643fb6b6d6b039163ec7f781e135d3218d247c1edaaab077ce09ef02e1e78ffd01717efe', 5, 1, 'othmane@othmane.com-2020-07-25 11:54:59', '[]', 0, '2020-07-25 10:55:00', '2020-07-25 10:55:00', '2021-07-25 11:55:00'),
('ed12752a67cc9bd73193eaef68f22c5af98e3bd921c5948f56117eda133abf06659995775ea8695e', 9, 1, 'sara@gmail.com-2020-07-30 00:06:59', '[]', 0, '2020-07-29 23:06:59', '2020-07-29 23:06:59', '2021-07-30 00:06:59'),
('ed7c308ddd0b8035431d2932e8937a23dae66819598fcba923fb82b304f7a757cc775cce5d6dda96', 15, 1, 'hicham@gmail.com-2020-08-10 13:55:02', '[]', 0, '2020-08-10 12:55:02', '2020-08-10 12:55:02', '2021-08-10 13:55:02'),
('ed9a51de3ad0405311c918180d772658d1d2e3dc8cb8929d0d0023583f7b8e87de05dafd24c857c4', 10, 1, 'test@test.com-2020-08-05 11:25:21', '[]', 0, '2020-08-05 10:25:21', '2020-08-05 10:25:21', '2021-08-05 11:25:21'),
('ee1c4fdfc8cf37f31898afb91617cb62aa8da4f26538225ba3bfb6da9c9e677e421e9375d8b324c2', 5, 1, 'othmane@othmane.com-2020-07-16 18:34:17', '[]', 0, '2020-07-16 16:34:17', '2020-07-16 16:34:17', '2021-07-16 18:34:17'),
('eefcd7b7315f87544e74e64dca1b67bda6d3be3a8f6b4668861d074fd4d4caffe05c009316f6a45d', 1, 1, 'lahcen@gmail.com-2020-07-28 19:19:45', '[]', 0, '2020-07-28 18:19:45', '2020-07-28 18:19:45', '2021-07-28 19:19:45'),
('ef593cac0acda2832dde3c55baed2d8290957eb9fe4743ef7303c45225fd79b506aa85f63bdc8243', 1, 1, 'lahcen@gmail.com-2020-08-12 18:42:40', '[]', 0, '2020-08-12 17:42:40', '2020-08-12 17:42:40', '2021-08-12 18:42:40'),
('ef9c3c91d85052ca898c34ee419566919723029605031c0dc2502bbccdad645443b6a642306d7699', 9, 1, 'sara@gmail.com-2020-07-29 15:58:08', '[]', 0, '2020-07-29 14:58:09', '2020-07-29 14:58:09', '2021-07-29 15:58:09'),
('f005a59f29755cd3bb3247c8358f6478bc674c53afb486f3f47e9748e124f29109d4126aeddafc78', 5, 1, 'othmane@othmane.com-2020-07-28 22:44:56', '[]', 0, '2020-07-28 21:44:56', '2020-07-28 21:44:56', '2021-07-28 22:44:56'),
('f0158cde2e737074c3e6446ba02ecb3d520c0a11e74878a33003c312c243caf4855a705f9a0c495a', 1, 1, 'lahcen@gmail.com-2020-08-19 17:29:23', '[]', 0, '2020-08-19 16:29:24', '2020-08-19 16:29:24', '2021-08-19 17:29:24'),
('f0539e7c3335bbd603c5b63c48a377694f724b616b1d3d2c438880ca5ff9e2e27402b26f520ebf77', 1, 1, 'lahcen@gmail.com-2020-07-28 16:18:18', '[]', 0, '2020-07-28 15:18:18', '2020-07-28 15:18:18', '2021-07-28 16:18:18'),
('f07ca8da8d724358b9548ba047b65f040a12c2a9cf1a7df9ad9bb88702d43454358d4638fe849e94', 1, 1, 'lahcen@gmail.com-2020-08-05 22:06:17', '[]', 0, '2020-08-05 21:06:17', '2020-08-05 21:06:17', '2021-08-05 22:06:17'),
('f091a4c41df77a6302d3491b38bddd7cd354b1da297da922e78b363881649157c85c280b924c5d22', 13, 1, 'jamal@gmail.com-2020-08-05 18:17:37', '[]', 0, '2020-08-05 17:17:37', '2020-08-05 17:17:37', '2021-08-05 18:17:37'),
('f09727ce92eb90992cac39569c534b3fd4b0cefcd1825b672f3309797e5affde6baeaadd8accffd8', 5, 1, 'othmane@othmane.com-2020-08-17 15:34:50', '[]', 0, '2020-08-17 14:34:50', '2020-08-17 14:34:50', '2021-08-17 15:34:50'),
('f1ac393d0a6a03963b6ca7eefbe24d5a70a958cb2a2c29a8d94b60445274f043b36528c641595eb7', 5, 1, 'othmane@othmane.com-2020-07-29 11:37:13', '[]', 0, '2020-07-29 10:37:13', '2020-07-29 10:37:13', '2021-07-29 11:37:13'),
('f1d77d28cfc8355b166988c10b8aad5b170f9317cdd9098f1d281a3fc1a431abde204775adf24fac', 1, 1, 'lahcen@gmail.com-2020-09-17 14:30:31', '[]', 0, '2020-09-17 13:30:31', '2020-09-17 13:30:31', '2021-09-17 14:30:31'),
('f23ef661a8b7b3e8b9b0c9ac9002617c5e77fc34172e5453a6c481995c9369f5215e02ee19501102', 1, 1, 'lahcen@gmail.com-2020-09-13 15:54:15', '[]', 0, '2020-09-13 14:54:15', '2020-09-13 14:54:15', '2021-09-13 15:54:15');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('f2518ec7e31c5f0a580cb849f70c74fe6dacc6723e8b58aa27197922dde6a2a3d0054f5962cdcd43', 24, 1, 'test3@test3.com-2020-09-12 22:27:09', '[]', 0, '2020-09-12 21:27:09', '2020-09-12 21:27:09', '2021-09-12 22:27:09'),
('f2860df7eaf05d3ef3055bc6031502fdba8c8dbadcffba9c75d1b396883c3a14548ebc50f1175389', 1, 1, 'lahcen@gmail.com-2020-08-05 16:54:32', '[]', 0, '2020-08-05 15:54:32', '2020-08-05 15:54:32', '2021-08-05 16:54:32'),
('f39eca9a811a4120c0d3d4446363e1e20e11c06a1a7cc34f4bb92bca6afedc5aeb0a506c6cefcb14', 1, 1, 'lahcen@gmail.com-2020-09-12 23:30:21', '[]', 0, '2020-09-12 22:30:22', '2020-09-12 22:30:22', '2021-09-12 23:30:22'),
('f4147ead61bf1a8cc242e03ab276ef6c9e8ba4d0152e9d3417207db069826c7a87dfea4ff26fe177', 5, 1, 'othmane@othmane.com-2020-07-23 13:42:56', '[]', 0, '2020-07-23 12:42:56', '2020-07-23 12:42:56', '2021-07-23 13:42:56'),
('f432d91351899020dd9c3ffee67ddbaf7ba3c52325d4af8eddc1b9bc4bd171e1bf34270a57ebdc8d', 47, 1, 'test9@test.com-2020-10-04 23:02:35', '[]', 0, '2020-10-04 22:02:37', '2020-10-04 22:02:37', '2021-10-04 23:02:37'),
('f4476b0d54d899c7aed5dd7219dcbfef86823eb998b3f9519159af748777a4a2a0a841846ffd09c8', 5, 1, 'othmane@othmane.com-2020-07-29 11:33:48', '[]', 0, '2020-07-29 10:33:48', '2020-07-29 10:33:48', '2021-07-29 11:33:48'),
('f51d35a385f1c38535888f0f16af6bc5bb312564ac65484fbe8a5eb0c129e24776337e49426fbae9', 5, 1, 'othmane@othmane.com-2020-08-14 11:57:43', '[]', 0, '2020-08-14 10:57:43', '2020-08-14 10:57:43', '2021-08-14 11:57:43'),
('f591dd208351b36224581643b2b219f473886fd45b34b524887fcf38150adf7f8e3831ac91fefcc5', 1, 1, 'lahcen@gmail.com-2020-09-17 00:17:36', '[]', 0, '2020-09-16 23:17:36', '2020-09-16 23:17:36', '2021-09-17 00:17:36'),
('f5a8985a981459eb0ac13e8f70fa9769db3ecd58ff697eb241c40253f3c207a3edd8383d3ca52e98', 1, 1, 'lahcen@gmail.com-2020-08-04 11:55:16', '[]', 0, '2020-08-04 10:55:16', '2020-08-04 10:55:16', '2021-08-04 11:55:16'),
('f5bbaa39de24a0d4f6ce66a802ab659d15613b05c357920641f174caea0ae727f15f827889ffe0d5', 1, 1, 'lahcen@gmail.com-2020-08-12 18:31:46', '[]', 0, '2020-08-12 17:31:46', '2020-08-12 17:31:46', '2021-08-12 18:31:46'),
('f5bcd2aad81935615c0a729f63eaa51ba97e8910779be8709f00559011acedcdcabe7d465be9fa16', 5, 1, 'othmane@othmane.com-2020-07-20 16:51:23', '[]', 0, '2020-07-20 14:51:23', '2020-07-20 14:51:23', '2021-07-20 16:51:23'),
('f60e9fc8cf10712e1cf5c37c971e3ae876a704dfd38e9f1d90964228383886fca4383e126d3c3051', 15, 1, 'hicham@gmail.com-2020-08-11 11:25:27', '[]', 0, '2020-08-11 10:25:27', '2020-08-11 10:25:27', '2021-08-11 11:25:27'),
('f613148d9d689992427e82f31a04b1a6fc4ebf46ca453cc48f3f3ff01049f4412b52f32f71d12667', 1, 1, 'lahcen@gmail.com-2020-08-17 15:08:07', '[]', 0, '2020-08-17 14:08:07', '2020-08-17 14:08:07', '2021-08-17 15:08:07'),
('f6edef107f44162fae35eeaef0d40187c483efa68520f44fa90901381bc35254ddca9c90d488175c', 5, 1, 'othmane@othmane.com-2020-08-19 17:44:05', '[]', 0, '2020-08-19 16:44:05', '2020-08-19 16:44:05', '2021-08-19 17:44:05'),
('f781b8cdfb10922ab199db64acce9be1580c183c6134d31e8fab237226861ad01451de1e9ac74f0d', 5, 1, 'othmane@othmane.com-2020-07-18 14:58:58', '[]', 0, '2020-07-18 12:58:58', '2020-07-18 12:58:58', '2021-07-18 14:58:58'),
('f7ad3d5773dc28ea14401001e4b329ec7171c7d6351c7897a6dd6502c62b3e94c61e5d7c8a70f650', 1, 1, 'lahcen@gmail.com-2020-08-05 19:34:24', '[]', 0, '2020-08-05 18:34:24', '2020-08-05 18:34:24', '2021-08-05 19:34:24'),
('f7cab1f3cba9b85f84f91324a562c2cb6f70245c95e57c4d1c188afad7a31e5cc569ff4956a25a63', 12, 1, 'karim1@gmail.com-2020-08-05 14:34:58', '[]', 0, '2020-08-05 13:34:58', '2020-08-05 13:34:58', '2021-08-05 14:34:58'),
('f87b7fd6dd0a711b2b11b890ef99d7153c3acf1c9853eca0f62273f97fecb5707a33948b8bdbab5b', 1, 1, 'lahcen@gmail.com-2020-08-11 11:09:04', '[]', 0, '2020-08-11 10:09:04', '2020-08-11 10:09:04', '2021-08-11 11:09:04'),
('f89c768af9acc027ac602773ccead38833e0881b6f0468c6c52f791cf7bd11767f6dcb160535aa24', 5, 1, 'othmane@othmane.com-2020-08-17 16:26:58', '[]', 0, '2020-08-17 15:26:58', '2020-08-17 15:26:58', '2021-08-17 16:26:58'),
('f963aa9c6626f34c9579adbb499a48caa97b82776e08e393d2a4a2fcba2bd26b37337fc5b572bfab', 10, 1, 'test@test.com-2020-08-05 12:11:41', '[]', 0, '2020-08-05 11:11:41', '2020-08-05 11:11:41', '2021-08-05 12:11:41'),
('fb6c2680a6b2e807807fb5f17e3517c332e88f521ec65a37f9e1e94b25e44075f58e3a9c785c2b7e', 1, 1, 'lahcen@gmail.com-2020-07-30 11:21:56', '[]', 0, '2020-07-30 10:21:56', '2020-07-30 10:21:56', '2021-07-30 11:21:56'),
('fc97085121048426a37f98f485880368ea4b8565c74d54dc0a95e2e08e8e4a7e8adb3b8d1ae9df92', 9, 1, 'sara@gmail.com-2020-07-29 15:42:30', '[]', 0, '2020-07-29 14:42:30', '2020-07-29 14:42:30', '2021-07-29 15:42:30'),
('fccbdfe43eea6ec300ccab581c8149eedf48233dc8b90cee1b6a5d7b94ef12c93ea633f3cc832e4e', 48, 1, 'account@gmail.com-2020-10-04 23:47:25', '[]', 0, '2020-10-04 22:47:25', '2020-10-04 22:47:25', '2021-10-04 23:47:25'),
('fd796ac5d9a6a6808573a0ae921dc97b4ec5586d06a46a7c7e6626e9f09c87231e286fde8b51c40e', 1, 1, 'lahcen@gmail.com-2020-08-05 17:18:33', '[]', 0, '2020-08-05 16:18:33', '2020-08-05 16:18:33', '2021-08-05 17:18:33'),
('fdd1cf27d88bbc2d6264101373c6a85fb1d4634b3783f31f9a28b4306248943bfac2b7c7cf270ab4', 10, 1, 'test@test.com-2020-08-05 12:11:25', '[]', 0, '2020-08-05 11:11:25', '2020-08-05 11:11:25', '2021-08-05 12:11:25'),
('fe2cc44f11da0552954593a787623bd2a72dd39f7138879b54f42fd28a0c076e7cc78cd780d0dc95', 9, 1, 'sara@gmail.com-2020-07-29 15:58:05', '[]', 0, '2020-07-29 14:58:05', '2020-07-29 14:58:05', '2021-07-29 15:58:05'),
('fe52994138095052ac0567fb91915fc2f80ed638c90aa027d8f3ac0be8a2bb3cf831c10bd946c378', 1, 1, 'lahcen@gmail.com-2020-07-28 17:47:17', '[]', 0, '2020-07-28 16:47:17', '2020-07-28 16:47:17', '2021-07-28 17:47:17'),
('ff362cdaca4caacb1c27d7bc76f1a5f6377c344f6372c0d877dcda8902d688bfecb97100ff68cf0e', 1, 1, 'lahcen@gmail.com-2020-09-13 21:49:22', '[]', 0, '2020-09-13 20:49:31', '2020-09-13 20:49:31', '2021-09-13 21:49:31'),
('ff3b4b67aea47fc27994e6b650157f5ba789a9426c9744a3f0f9d053e042a7baa74e24cf19c7b48b', 5, 1, 'othmane@othmane.com-2020-07-20 16:50:16', '[]', 0, '2020-07-20 14:50:16', '2020-07-20 14:50:16', '2021-07-20 16:50:16');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
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
-- Structure de la table `oauth_clients`
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
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'ya0PEpLf3uFB0vCRnhrvwdBmoZ6KsRoZ8bKUGzwi', NULL, 'http://localhost', 1, 0, 0, '2020-07-15 14:47:25', '2020-07-15 14:47:25'),
(2, NULL, 'Laravel Password Grant Client', 'DTSEeL99LbuvzHVWMWRR3gvq1hUJhhGdgccCnj2U', 'users', 'http://localhost', 0, 1, 0, '2020-07-15 14:47:25', '2020-07-15 14:47:25');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-15 14:47:25', '2020-07-15 14:47:25');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont` int(100) DEFAULT NULL,
  `accept` tinyint(1) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  `price` double(8,2) NOT NULL,
  `imageURL` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_added` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_name`, `cont`, `accept`, `exp`, `price`, `imageURL`, `date`, `is_added`) VALUES
(456, 15, 'Pizza Margherita', 1, 1, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '11/08/2020 à 12:35:58', 0),
(457, 15, 'Chicken Sandwich', 1, 1, NULL, 30.00, 'plats/July2020/XsQTuUeKubvPrsDEYPNp.jpg', '11/08/2020 à 12:35:58', 1),
(458, 15, 'Pizza Margherita', 1, 1, 1, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '11/08/2020 à 13:25:27', 1),
(459, 16, 'Pizza Margherita', 1, NULL, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '11/08/2020 à 16:19:57', 0),
(460, 16, 'American burger', 1, NULL, NULL, 45.00, 'plats/July2020/NJ1zIoNZ6EJK1EpjGayj.jpg', '11/08/2020 à 16:19:57', 0),
(461, 16, 'Pizza Végétarienne', 1, NULL, NULL, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '11/08/2020 à 16:19:57', 0),
(462, 16, 'Pizza Fruits de Mer', 1, NULL, NULL, 70.00, 'plats/July2020/d3rEngd3pBH7uDwv6Xz6.jpg', '11/08/2020 à 16:19:57', 1),
(463, 17, 'Pizza Fruits de Mer', 1, NULL, NULL, 70.00, 'plats/July2020/d3rEngd3pBH7uDwv6Xz6.jpg', '12/08/2020 à 12:43:50', 0),
(464, 17, 'Pizza Végétarienne', 1, NULL, NULL, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '12/08/2020 à 12:43:50', 0),
(465, 17, 'Jus Citron', 6, NULL, NULL, 12.00, 'plats/July2020/kKUS75t29Bsl1QNTXRrn.jpg', '12/08/2020 à 12:43:50', 0),
(466, 18, 'Pizza Végétarienne', 1, 1, NULL, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '12/08/2020 à 20:29:58', 0),
(467, 18, 'Pizza Margherita', 5, 1, 1, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '12/08/2020 à 20:29:58', 1),
(468, 18, 'Pizza Margherita', 1, NULL, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '12/08/2020 à 20:43:06', 0),
(469, 19, 'American burger', 4, 1, NULL, 45.00, 'plats/July2020/NJ1zIoNZ6EJK1EpjGayj.jpg', '12/08/2020 à 21:55:10', 0),
(470, 19, 'Pizza Margherita', 6, 1, 1, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '12/08/2020 à 21:55:10', 1),
(471, 19, 'Pizza Végétarienne', 1, 1, NULL, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '12/08/2020 à 21:55:10', 0),
(472, 19, 'Jus de carotte', 8, 1, 1, 13.00, 'plats/July2020/WtCooTSyeyuasEmT3VoV.jpg', '13/08/2020 à 14:42:51', 1),
(473, 19, 'Pizza Margherita', 6, 1, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '13/08/2020 à 14:42:51', 0),
(474, 5, 'Pizza Fruits de Mer', 7, 1, NULL, 70.00, 'plats/July2020/d3rEngd3pBH7uDwv6Xz6.jpg', '13/08/2020 à 19:15:25', 0),
(475, 5, 'Chicken Sandwich', 5, NULL, NULL, 30.00, 'plats/July2020/XsQTuUeKubvPrsDEYPNp.jpg', '13/08/2020 à 19:15:25', 0),
(476, 5, 'Pizza Végétarienne', 7, NULL, NULL, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '13/08/2020 à 19:15:25', 0),
(477, 5, 'Pizza Margherita', 1, NULL, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '13/08/2020 à 20:45:38', 0),
(478, 5, 'Pizza Végétarienne', 1, NULL, NULL, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '13/08/2020 à 20:45:38', 0),
(479, 5, 'Pizza Végétarienne', 4, NULL, NULL, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '13/08/2020 à 20:51:58', 0),
(480, 5, 'Pizza Fruits de Mer', 1, NULL, NULL, 70.00, 'plats/July2020/d3rEngd3pBH7uDwv6Xz6.jpg', '13/08/2020 à 20:51:58', 0),
(481, 5, 'Chicken Sandwich', 1, NULL, NULL, 30.00, 'plats/July2020/XsQTuUeKubvPrsDEYPNp.jpg', '13/08/2020 à 20:51:58', 0),
(482, 5, 'Jus Citron', 6, NULL, NULL, 12.00, 'plats/July2020/kKUS75t29Bsl1QNTXRrn.jpg', '14/08/2020 à 03:52:29', 0),
(483, 5, 'Pizza Végétarienne', 4, NULL, NULL, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '14/08/2020 à 03:52:29', 1),
(498, 5, 'Pizza Margherita', 4, NULL, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '13/09/2020 à 01:38:27', 0),
(499, 5, 'Pizza Kebab', 3, NULL, NULL, 70.00, 'plats/September2020/AWlzEoPinQSds25gBvyU.jpg', '13/09/2020 à 01:38:27', 0),
(500, 25, 'Jus de carotte', 3, NULL, NULL, 13.00, 'plats/July2020/WtCooTSyeyuasEmT3VoV.jpg', '13/09/2020 à 01:50:25', 0),
(501, 25, 'American burger', 5, NULL, NULL, 45.00, 'plats/September2020/nt9ff4VsayoO9fZbrXH6.jpg', '13/09/2020 à 01:50:25', 0),
(502, 25, 'Cheesecake fraise', 1, NULL, NULL, 39.00, 'plats/September2020/0mCIydQgxFcL4zY2Gew7.jpg', '13/09/2020 à 01:50:25', 0),
(503, 25, 'Chicken Sandwich', 5, NULL, NULL, 30.00, 'plats/July2020/XsQTuUeKubvPrsDEYPNp.jpg', '13/09/2020 à 01:50:25', 0),
(504, 5, 'Chicken Sandwich', 5, NULL, NULL, 30.00, 'plats/July2020/XsQTuUeKubvPrsDEYPNp.jpg', '13/09/2020 à 16:06:49', 0),
(505, 5, 'Jus de carotte', 3, NULL, NULL, 13.00, 'plats/July2020/WtCooTSyeyuasEmT3VoV.jpg', '13/09/2020 à 16:06:49', 0),
(506, 5, 'Cheesecake fraise', 5, NULL, NULL, 39.00, 'plats/September2020/0mCIydQgxFcL4zY2Gew7.jpg', '13/09/2020 à 16:06:49', 0),
(507, 5, 'Pizza Végétarienne', 1, NULL, NULL, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '13/09/2020 à 16:17:37', 0),
(508, 5, 'Pizza Margherita', 1, NULL, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '13/09/2020 à 16:17:37', 0),
(509, 5, 'Pizza Kebab', 1, NULL, NULL, 70.00, 'plats/September2020/AWlzEoPinQSds25gBvyU.jpg', '13/09/2020 à 16:17:37', 0),
(510, 26, 'Pizza Kebab', 1, NULL, NULL, 70.00, 'plats/September2020/AWlzEoPinQSds25gBvyU.jpg', '9/13/2020, 4:53:26 PM', 0),
(511, 26, 'Pizza Végétarienne', 1, NULL, NULL, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '9/13/2020, 4:56:15 PM', 0),
(512, 26, 'Chicken Sandwich', 1, NULL, NULL, 30.00, 'plats/July2020/XsQTuUeKubvPrsDEYPNp.jpg', '9/13/2020, 4:56:15 PM', 0),
(513, 26, 'American burger', 1, NULL, NULL, 45.00, 'plats/September2020/nt9ff4VsayoO9fZbrXH6.jpg', '9/13/2020, 4:58:08 PM', 0),
(518, 28, 'American burger', 4, NULL, NULL, 45.00, 'plats/September2020/nt9ff4VsayoO9fZbrXH6.jpg', '13/09/2020 à 23:45:36', 0),
(519, 28, 'Pizza Margherita', 4, NULL, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '13/09/2020 à 23:45:36', 0),
(520, 28, 'Cheesecake fraise', 4, 1, NULL, 39.00, 'plats/September2020/0mCIydQgxFcL4zY2Gew7.jpg', '13/09/2020 à 23:45:36', 0),
(521, 28, 'Jus de carotte', 4, NULL, 1, 13.00, 'plats/July2020/WtCooTSyeyuasEmT3VoV.jpg', '13/09/2020 à 23:45:36', 1),
(522, 31, 'Pizza Kebab', 1, 1, NULL, 70.00, 'plats/September2020/AWlzEoPinQSds25gBvyU.jpg', '15/09/2020 à 15:59:26', 0),
(523, 31, 'Pizza Margherita', 4, NULL, 1, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '15/09/2020 à 15:59:26', 1),
(524, 31, 'Jus d\'orange', 4, NULL, 1, 13.00, 'plats/July2020/UxJckWxzn1XtBhWxM0K2.jpg', '15/09/2020 à 16:13:38', 1),
(525, 32, 'American burger', 1, NULL, 1, 45.00, 'plats/September2020/nt9ff4VsayoO9fZbrXH6.jpg', '15/09/2020 à 16:28:45', 1),
(526, 32, 'Pizza Margherita', 1, 1, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '15/09/2020 à 16:31:44', 0),
(527, 33, 'Pizza Margherita', 1, NULL, 1, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '16/09/2020 à 01:34:23', 1),
(528, 33, 'Pizza Végétarienne', 1, NULL, 1, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '16/09/2020 à 01:34:23', 1),
(529, 33, 'Pizza Kebab', 2, NULL, 1, 70.00, 'plats/September2020/AWlzEoPinQSds25gBvyU.jpg', '16/09/2020 à 01:34:23', 1),
(530, 31, 'Pizza Végétarienne', 4, NULL, NULL, 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', '16/09/2020 à 18:19:58', 0),
(531, 31, 'Pizza Margherita', 1, NULL, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '16/09/2020 à 18:19:58', 0),
(532, 31, 'Pizza Kebab', 5, NULL, 1, 70.00, 'plats/September2020/AWlzEoPinQSds25gBvyU.jpg', '16/09/2020 à 18:19:58', 1),
(533, 34, 'Chicken Sandwich', 1, NULL, NULL, 30.00, 'plats/July2020/XsQTuUeKubvPrsDEYPNp.jpg', '17/09/2020 à 17:11:55', 0),
(534, 34, 'Pizza Margherita', 1, NULL, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '17/09/2020 à 17:11:55', 0),
(535, 34, 'Sandwich Italien', 3, NULL, NULL, 30.00, 'plats/July2020/rXzADebrSdPz6iRbDUd5.jpg', '17/09/2020 à 17:11:55', 0),
(536, 34, 'Pizza Kebab', 4, NULL, NULL, 70.00, 'plats/September2020/AWlzEoPinQSds25gBvyU.jpg', '17/09/2020 à 17:11:55', 0),
(537, 35, 'Pizza Margherita', 5, 1, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '17/09/2020 à 17:40:06', 0),
(538, 35, 'Jus Citron', 2, NULL, NULL, 12.00, 'plats/July2020/kKUS75t29Bsl1QNTXRrn.jpg', '17/09/2020 à 17:40:06', 0),
(539, 35, 'American burger', 4, NULL, NULL, 45.00, 'plats/September2020/nt9ff4VsayoO9fZbrXH6.jpg', '17/09/2020 à 17:40:06', 1),
(549, 47, 'Jus d\'orange', 6, NULL, NULL, 13.00, 'plats/July2020/UxJckWxzn1XtBhWxM0K2.jpg', '05/10/2020 à 01:03:05', 0),
(550, 47, 'Sandwich Italien', 6, NULL, NULL, 30.00, 'plats/July2020/rXzADebrSdPz6iRbDUd5.jpg', '05/10/2020 à 01:03:05', 0),
(555, 48, 'Pizza Kebab', 6, 1, NULL, 70.00, 'plats/September2020/AWlzEoPinQSds25gBvyU.jpg', '05/10/2020 à 01:49:04', 0),
(556, 50, 'Pizza Margherita', 4, NULL, NULL, 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', '07/10/2020 à 03:15:45', 0),
(557, 50, 'Pizza Kebab', 6, NULL, NULL, 70.00, 'plats/September2020/AWlzEoPinQSds25gBvyU.jpg', '07/10/2020 à 03:15:45', 0),
(558, 50, 'Sandwich Italien', 5, NULL, NULL, 30.00, 'plats/July2020/rXzADebrSdPz6iRbDUd5.jpg', '07/10/2020 à 03:15:45', 0),
(559, 51, 'Jus Citron', 1, NULL, 1, 12.00, 'plats/July2020/kKUS75t29Bsl1QNTXRrn.jpg', '07/10/2020 à 03:29:09', 1),
(560, 51, 'American burger', 1, 1, NULL, 45.00, 'plats/September2020/nt9ff4VsayoO9fZbrXH6.jpg', '07/10/2020 à 03:29:09', 0),
(561, 51, 'Jus de carotte', 1, NULL, 1, 13.00, 'plats/July2020/WtCooTSyeyuasEmT3VoV.jpg', '07/10/2020 à 03:29:09', 1),
(562, 27, 'Chicken Sandwich', 1, NULL, NULL, 30.00, 'plats/July2020/XsQTuUeKubvPrsDEYPNp.jpg', '07/10/2020 à 05:00:13', 1),
(563, 27, 'Sandwich Italien', 1, 1, NULL, 30.00, 'plats/July2020/rXzADebrSdPz6iRbDUd5.jpg', '07/10/2020 à 05:00:13', 0),
(564, 27, 'American burger', 1, NULL, 1, 45.00, 'plats/September2020/nt9ff4VsayoO9fZbrXH6.jpg', '07/10/2020 à 05:00:13', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(2, 'browse_bread', NULL, '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(3, 'browse_database', NULL, '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(4, 'browse_media', NULL, '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(5, 'browse_compass', NULL, '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(6, 'browse_menus', 'menus', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(7, 'read_menus', 'menus', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(8, 'edit_menus', 'menus', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(9, 'add_menus', 'menus', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(10, 'delete_menus', 'menus', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(11, 'browse_roles', 'roles', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(12, 'read_roles', 'roles', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(13, 'edit_roles', 'roles', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(14, 'add_roles', 'roles', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(15, 'delete_roles', 'roles', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(16, 'browse_users', 'users', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(17, 'read_users', 'users', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(18, 'edit_users', 'users', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(19, 'add_users', 'users', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(20, 'delete_users', 'users', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(21, 'browse_settings', 'settings', '2020-07-13 11:30:32', '2020-07-13 11:30:32'),
(22, 'read_settings', 'settings', '2020-07-13 11:30:32', '2020-07-13 11:30:32'),
(23, 'edit_settings', 'settings', '2020-07-13 11:30:32', '2020-07-13 11:30:32'),
(24, 'add_settings', 'settings', '2020-07-13 11:30:32', '2020-07-13 11:30:32'),
(25, 'delete_settings', 'settings', '2020-07-13 11:30:32', '2020-07-13 11:30:32'),
(26, 'browse_hooks', NULL, '2020-07-13 11:30:32', '2020-07-13 11:30:32'),
(27, 'browse_plats', 'plats', '2020-07-13 11:42:15', '2020-07-13 11:42:15'),
(28, 'read_plats', 'plats', '2020-07-13 11:42:15', '2020-07-13 11:42:15'),
(29, 'edit_plats', 'plats', '2020-07-13 11:42:15', '2020-07-13 11:42:15'),
(30, 'add_plats', 'plats', '2020-07-13 11:42:15', '2020-07-13 11:42:15'),
(31, 'delete_plats', 'plats', '2020-07-13 11:42:15', '2020-07-13 11:42:15'),
(32, 'browse_categories', 'categories', '2020-07-13 11:46:43', '2020-07-13 11:46:43'),
(33, 'read_categories', 'categories', '2020-07-13 11:46:43', '2020-07-13 11:46:43'),
(34, 'edit_categories', 'categories', '2020-07-13 11:46:43', '2020-07-13 11:46:43'),
(35, 'add_categories', 'categories', '2020-07-13 11:46:43', '2020-07-13 11:46:43'),
(36, 'delete_categories', 'categories', '2020-07-13 11:46:43', '2020-07-13 11:46:43'),
(42, 'browse_orders', 'orders', '2020-07-14 16:28:57', '2020-07-14 16:28:57'),
(43, 'read_orders', 'orders', '2020-07-14 16:28:57', '2020-07-14 16:28:57'),
(44, 'edit_orders', 'orders', '2020-07-14 16:28:57', '2020-07-14 16:28:57'),
(45, 'add_orders', 'orders', '2020-07-14 16:28:57', '2020-07-14 16:28:57'),
(46, 'delete_orders', 'orders', '2020-07-14 16:28:57', '2020-07-14 16:28:57'),
(47, 'browse_reservations', 'reservations', '2020-07-24 09:56:09', '2020-07-24 09:56:09'),
(48, 'read_reservations', 'reservations', '2020-07-24 09:56:09', '2020-07-24 09:56:09'),
(49, 'edit_reservations', 'reservations', '2020-07-24 09:56:09', '2020-07-24 09:56:09'),
(50, 'add_reservations', 'reservations', '2020-07-24 09:56:09', '2020-07-24 09:56:09'),
(51, 'delete_reservations', 'reservations', '2020-07-24 09:56:09', '2020-07-24 09:56:09');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1);

-- --------------------------------------------------------

--
-- Structure de la table `plats`
--

CREATE TABLE `plats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cont` int(11) NOT NULL DEFAULT 1,
  `description1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_added` tinyint(1) NOT NULL DEFAULT 0,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `plats`
--

INSERT INTO `plats` (`id`, `name`, `cont`, `description1`, `description2`, `description3`, `price`, `image1`, `image2`, `image3`, `is_added`, `category_id`, `created_at`, `updated_at`) VALUES
(17, 'Pizza Margherita', 1, 'La pizza Margherita est le nom d\'une spécialité culinaire traditionnelle de la ville de Naples en Italie. Très populaire, cette pizza napoletana est garnie de tomates, de mozzarella', ',de basilic frais, de sel et d\'huile d\'olive. Cette pizza est aux couleurs du drapeau italien.', 'Mozzarella rappé', 39.00, 'plats/July2020/c5Eco687nMbya9QBjQ99.jpg', 'plats/July2020/m136NS8NXyG4o7Nmadx5.jpg', 'plats/July2020/r5fk3BCefqba78ggebJw.jpg', 0, 2, NULL, NULL),
(18, 'Pizza Végétarienne', 1, 'Une pizza végétarienne composée de légumes de la saison avec de la mozarella rapée.', '----', 'Mozzarella rappé, Légumes', 45.00, 'plats/July2020/HhXBJJ8Rotxs9Eoupd2F.jpg', 'plats/July2020/Joukc1hRJADR8OrDEkK2.jpg', 'plats/July2020/kktn88Q5yjIqAY1tLAqX.jpg', 0, 2, NULL, NULL),
(19, 'Pizza Kebab', 1, 'Les délices de la mer sur une pizza croustillante.', '-', 'Poulet, Mozzarella rappé', 70.00, 'plats/September2020/AWlzEoPinQSds25gBvyU.jpg', 'plats/July2020/iw72NSWdT0GzAUJeWPfF.jpg', 'plats/July2020/doZ9XMIyfZUFuZEAUzSM.jpg', 0, 2, NULL, NULL),
(20, 'Chicken Sandwich', 1, 'Sandwich avec un mélange d\'épices riche en saveurs et en caractère, du poulet et une protion frites.', '----', 'Sauce, Poulet, Légumes, PAIN SANDWICH, Portion Frites', 30.00, 'plats/July2020/XsQTuUeKubvPrsDEYPNp.jpg', 'plats/July2020/Bg1Gv6FJvo24YUGMewg5.jpg', 'plats/July2020/E9Xa0Zgmyo9i8NVuj3Xp.JPG', 1, 6, NULL, NULL),
(21, 'Sandwich Italien', 1, 'Sandwich poulet à l\'italienne.', '----', 'Sauce, Poulet, Légumes, PAIN SANDWICH, Portion Frites', 30.00, 'plats/July2020/rXzADebrSdPz6iRbDUd5.jpg', 'plats/July2020/m3P6tIKDS5QWDHLUj8fu.jpeg', 'plats/July2020/xxqy1eo9x1KSqNJ7tESS.jpg', 0, 6, NULL, NULL),
(22, 'American burger', 1, 'Voilà à quoi ressemble un burger made in USA ! Régalez-vous en commandant l\'americain burger par excellence.', '----', 'Pain burger, Viande hachée, Légumes, Portion Frites, Cheddar', 45.00, 'plats/September2020/nt9ff4VsayoO9fZbrXH6.jpg', 'plats/July2020/csWHGa52x0OdEVwE9H6L.jpg', 'plats/July2020/YtfpEAv5DfXafF0luWRI.jpg', 0, 6, NULL, NULL),
(23, 'Jus Citron', 1, 'Le citron possède une haute teneur en vitamine C, de 52 mg par 100 g. Cette teneur en vitamine C reste égale pour un jus de citron fraîchement pressé. Mais la vitamine C, qui s\'oxyde au contact de l\'air, perd rapidement ses propriétés.', 'Le jus de citron est une boisson préparée à partir de citrons.', 'Jus Citron', 12.00, 'plats/July2020/kKUS75t29Bsl1QNTXRrn.jpg', 'plats/July2020/p6mE47pcK3k7UxHpIUOj.jpeg', 'plats/July2020/4WRl4goHs2lSXe1TMFsi.jpg', 0, 7, NULL, NULL),
(24, 'Jus de carotte', 1, 'Le jus de carotte est un jus produit à partir de carottes, souvent commercialisé comme boisson diététique. Une livre (450 g) de carottes donne environ une tasse (235 ml) de jus, ce qui est nettement moins que des fruits tels la pomme et l\'orange : la pulpe de carotte est assez dure et la principale difficulté pour produire du jus de carottes est de séparer la pulpe du jus.', 'Jus de carotte aux oranges ( sans sucre )', 'Jus de carotte', 13.00, 'plats/July2020/WtCooTSyeyuasEmT3VoV.jpg', 'plats/July2020/Q7IzIfMV7cDYegWtEmRk.jpeg', 'plats/July2020/Mf2RBFz0KagsVXcaKbDL.png', 0, 7, NULL, NULL),
(25, 'Jus d\'orange', 1, 'Le jus d\'orange est une boisson préparée à partir d\'oranges pressées. Il faut 2 à 3 kg d\'oranges pour faire 1 litre de jus d\'orange « 100 % pur jus', 'Jus d\'orange frais pressé ( sans sucre )', 'JUS D\'orange', 13.00, 'plats/July2020/UxJckWxzn1XtBhWxM0K2.jpg', 'plats/July2020/bXpIfnLH9Ky0UQ8zPkPp.jpg', 'plats/July2020/KOVjg5YxkQE2kxZhEyZE.jpeg', 0, 7, NULL, NULL),
(26, 'Salade de fruits', 1, 'US D\'orange, pomme, mangue, banane', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 29.00, 'plats/September2020/KlW4QWThloYmVO1K5Pdw.jpg', 'plats/September2020/wlDZePrw6YQnZGuIXSOk.png', 'plats/September2020/NLJt5usdrXS5IYG3spZn.jpg', 0, 8, NULL, NULL),
(27, 'Carrot cake', 1, 'Cannelle, Crème cheese, Sucre cassonade', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 35.00, 'plats/September2020/BXKmIWQPW5dHrMzhaAWa.jpg', 'plats/September2020/Qw5CHsAn1ohqAPefReDg.jpg', 'plats/September2020/eZyQcTm2Bs3nmRPqxrAt.jpeg', 1, 8, NULL, NULL),
(28, 'Cheesecake fraise', 1, 'Fraises', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 39.00, 'plats/September2020/0mCIydQgxFcL4zY2Gew7.jpg', 'plats/September2020/rHv7YkhyYeocAVqHZ6zL.jpg', 'plats/September2020/DSzn8yUYDARk3gSutoZj.jpg', 0, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `adresse` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `id_user`, `adresse`, `ville`, `phone`, `updated_at`, `created_at`) VALUES
(38, 9, 'hjjeferg', 'Casablanca', '0622110116', '2020-08-05 15:12:50', '2020-08-05 15:12:50'),
(39, 13, 'LAHCEN', 'Casablanca', '0622110116', '2020-08-05 14:33:28', '2020-08-05 14:33:28'),
(40, 13, 'DFFSDF', 'Casablanca', '0622110116', '2020-08-05 14:37:20', '2020-08-05 14:37:20'),
(41, 13, 'DFFSDF', 'Casablanca', '0622110116', '2020-08-05 14:37:24', '2020-08-05 14:37:24'),
(42, 13, 'jamal', 'Casablanca', '0622110116', '2020-08-05 14:42:05', '2020-08-05 14:42:05'),
(43, 13, 'sdsd', 'Casablanca', '0622110116', '2020-08-05 17:18:22', '2020-08-05 17:18:22'),
(44, 13, 'fsfdf', 'Casablanca', '0622110116', '2020-08-06 16:54:17', '2020-08-06 16:54:17');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-07-13 11:30:31', '2020-07-13 11:30:31'),
(2, 'user', 'Normal User', '2020-07-13 11:30:31', '2020-07-13 11:30:31');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Structure de la table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ville` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `phone`, `adresse`, `ville`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@gmail.com', 'users/July2020/E3Q76JcMLYeh1pcPGcOV.jpg', NULL, NULL, NULL, NULL, '$2y$10$aFLciK2X3KHdb9vnvlDepOVzllvVlNRMqSZuAiS1qZLguuTRSka3q', 'S60VJrN5vcnPpUkyHSs6DQeHI6rUdGh7wdujZqKNDxaSuCm4W18BP68FEsmQ', '{\"locale\":\"fr\"}', '2020-07-13 11:33:46', '2020-09-20 10:52:42'),
(2, 2, 'lahcen', 'lahcen12@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$mUqfYBkq/EMzqpaHNyGOs.AQM3uBBu23FJO1G6qtRYkJYqg0shoLq', NULL, NULL, '2020-07-15 17:05:01', '2020-07-15 17:05:10'),
(4, 2, 'lahcen LH', 'lahcen@gg.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$u1wFocdEtiKUnM1sBZPRsOrhm1UBBn5ikE7VOF4ZkVhk0yd1opAj.', NULL, NULL, '2020-07-15 21:23:46', '2020-07-15 21:23:48'),
(5, 2, 'kamal', 'othmane@othmane.com', 'users/default.png', '0662747457', 'casa', 'Casablanca', NULL, '$2y$10$G9vXc7VeGavH7Q2v6l4bgeMIvCPhQP4e6aA1zfTYR7SxJ.Y4HUHwu', NULL, NULL, '2020-07-16 12:42:34', '2020-09-12 12:37:30'),
(9, 2, 'kamal4', 'kamal4@gmail.com', 'users/default.png', '112', 'SDS0434D', 'casa', NULL, '123456', NULL, NULL, '2020-07-29 14:28:48', '2020-08-09 23:30:42'),
(10, 2, 'kamal16', 'kamal16@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '12345678', NULL, NULL, '2020-08-05 08:58:58', '2020-08-05 12:51:59'),
(11, 2, 'taha', 'taha@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '123456', NULL, NULL, '2020-08-05 13:12:19', '2020-08-05 13:19:34'),
(12, 2, 'karim karim1', 'karim1@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$z/9wPg5FjtLuhGBUCgBY0eHwFwxKoE7jUB5IbkjRkv6lFd.BQE2ry', NULL, NULL, '2020-08-05 13:32:08', '2020-08-05 13:37:48'),
(13, 2, 'jamal jamal', 'jamal@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$CrywGSEI2aQk2gHCET.bDOH/VvLHvZVHf3VPaw//bVFwScyCmbvue', NULL, NULL, '2020-08-05 13:49:02', '2020-08-05 13:49:02'),
(14, 2, 'kamal', 'kamal@gmail.Co', 'users/default.png', '112', 'SDS0434D', 'casa', NULL, '$2y$10$crZNfhogfgRLJPlx3adXbuAhtq9PZpPP9IPDUmnUAKPVJCbpIQMua', NULL, NULL, '2020-08-09 18:03:39', '2020-08-10 00:03:06'),
(15, 2, 'hicham hicham', 'hicham@gmail.com', 'users/default.png', '0622110115', 'rue mohamed smiha 114 etage 3 numero 12', 'Casablanca', NULL, '$2y$10$wc0D02FwTMfzbqXZKLt99O2Mx4JYAHJa1gsz4ETJs0DKw4ptwrYoa', NULL, NULL, '2020-08-10 00:09:05', '2020-08-11 12:52:36'),
(16, 2, 'sara ol', 'sara@gmail.com', 'users/default.png', '0634334353', 'rue sara 123 CASA MAROC', 'Casablanca', NULL, '$2y$10$5k3DxUg7eG6ZjsipiT1xtuiZI0J6F2TZu2QuqjbABnlE6Cb5QyfOO', NULL, NULL, '2020-08-11 13:19:23', '2020-08-11 13:20:31'),
(17, 2, 'ikram el maachi', 'ikram@gmail.com', 'users/default.png', '056343434', 'rue el masira 1234', 'Casablanca', NULL, '$2y$10$eDC6KlsMI/OxNjSQD.UfQONihabQmuZ2vKO/iP.eRRQgCY.FCfISa', NULL, NULL, '2020-08-12 09:43:35', '2020-08-12 09:44:19'),
(18, 2, 'issam1 GG', 'issam1@gmail.com', 'users/default.png', '0662747457', 'RUE 1243', 'Casablanca', NULL, '$2y$10$p9TzNIYBQ99qwRrdqB3kL.QrsbYeeESb306KbhzJR8eXDA3TYo2ru', NULL, NULL, '2020-08-12 17:29:36', '2020-08-12 17:30:38'),
(19, 2, 'illias illia', 'illias@gmail.com', 'users/default.png', '0000000sdsfd', 'Rue 000dfd', 'Casablanca', NULL, '$2y$10$pE7RdR0l2Y5/Euue0XIDheuDTJ7twoxHzxCZq/rAhthidzHixxED6', NULL, NULL, '2020-08-12 18:54:47', '2020-08-13 11:43:18'),
(22, 2, 'test00 test00', 'test00@gmail.com', 'users/default.png', '00000', 'RUE 1 oulfa 122', 'Casablanca', NULL, '$2y$10$eoVVJUEp7LGJa7ZN365PW.86uZLhFiSytwvRUm00v990vNzLUOY/q', NULL, NULL, '2020-09-12 19:55:19', '2020-09-12 19:58:54'),
(25, 2, 'test4 test4', 'test4@test4.com', 'users/default.png', '04323323232324', 'rue 1 derb omar 114', 'Casablanca', NULL, '$2y$10$dYGB1wzYOd3gkxVQ9jYATef3ewJChtCD4/rxArvxKIPRQrOm.rKiO', NULL, NULL, '2020-09-12 22:50:09', '2020-09-12 22:52:18'),
(26, 2, 'ayoub ar', 'ayoub@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$XXcrLSnVJdcP3fXYiDOPVuk9YN68YYfrthN4HZcdfw9sQzlILbSoi', NULL, NULL, '2020-09-13 14:53:17', '2020-09-13 14:56:20'),
(27, 2, 'test10 test10', 'test10@gmail.com', 'users/default.png', '011111111112', '1er étage, Avenue des FAR, Tour des Habous', 'Casablanca', NULL, '$2y$10$UHhbFQBB9Ff4pmohqoCQ5excw0hXRwNrkXKHjWF2LB74z.JNa2Tki', NULL, NULL, '2020-09-13 16:25:29', '2020-10-07 17:49:25'),
(28, 2, 'hassan', 'test000@gmail.com', 'users/default.png', '0111111', 'er étage, Avenue des FAR, Tour des habous', 'Casablanca', NULL, '$2y$10$Rm3rf973G.4F1xjh54t0jeDrd/DpORTm3nQqzc4XvlYbsLm.dFa/.', NULL, NULL, '2020-09-13 20:38:55', '2020-09-13 20:55:50'),
(30, 2, 'meryem meryem', 'meryem@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$CFrKmizhA5dIDLNv2FbXG.LM51ToSwCP6Hc8olm8D6RoZv7sIG6sS', NULL, NULL, '2020-09-13 22:23:36', '2020-09-13 22:23:36'),
(31, 2, 'dd is', 'issam@issam.com', 'users/default.png', '0617428270', '212 zen9at lawdaya, dawar lhaj,F', 'Casablanca', NULL, '$2y$10$zZgK1PLrpO7CFcl2Vpm6ou/MEnM7JZ5zdT4vzKu1XaoUrd.QrTlsq', NULL, NULL, '2020-09-15 13:59:11', '2020-09-16 16:22:06'),
(32, 2, 'merouane hany', 'merouanehany@gmail.com', 'users/default.png', '07 44 33 44 55', 'bourgogne anfa', 'Casablanca', NULL, '$2y$10$wB0R/tWlH1yfrOEH9.jgyegdml6DEHe1Kw8.B76yIP8CjI20FCXdi', NULL, NULL, '2020-09-15 14:28:31', '2020-09-15 14:29:12'),
(33, 2, 'Hind Rakoub', 'hind.rakoub99@gmail.com', 'users/default.png', '0618838740', 'Casablanca', 'Casablanca', NULL, '$2y$10$oPTYhwHJgytJqrd8IjF9Gu8VvZi1a55od51Uxrp6/VKvDuOUFbpqK', NULL, NULL, '2020-09-15 22:34:11', '2020-09-15 22:34:56'),
(34, 2, 'omar ol', 'omar@gmail.com', 'users/default.png', '08888888', 'BD zerktouni MAARIF 2000', 'Casablanca', NULL, '$2y$10$7JhiOaNd2D.apTwoLOU1De7hRR7ldpqjonXs9pcgUkAmpONE500Yy', NULL, NULL, '2020-09-17 14:11:43', '2020-09-17 14:12:56'),
(35, 2, 'khalid on', 'kahlid2020@gmail.com', 'users/default.png', '099999333', '100 Boulevard Zerktouni, Maârif , 20000', 'Casablanca', NULL, '$2y$10$fMpe135zPUJ68weZUdfTN.PWgBy7MNZjLQSc5gklTRDeqf3MOcJaC', NULL, NULL, '2020-09-17 14:39:58', '2020-09-17 14:40:58'),
(36, 1, 'khalid ul', 'khalid2@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$YlZET5xC.M5QuNocp0n9j.VHBVK4G/0McNdAOmVRZqyCfjhbN0UPy', NULL, '{\"locale\":\"fr\"}', '2020-09-17 14:50:52', '2020-09-20 11:35:02'),
(37, 2, 'hassan', 'test66@gmail.com', 'users/default.png', '0662747457', 'BD zerktouni , maarif 2000', 'Casablanca', NULL, '$2y$10$NJvj7j4hG5S7mUNyKpgMBeMni74gapfPgHcQfKAUsax2zVK/jm1FK', NULL, NULL, '2020-09-17 14:57:36', '2020-09-17 14:59:51'),
(38, 2, 'lahcen', 'test@gmail.com', 'users/default.png', '0662747457', '100 Boulevard Zerktouni, Maârif , 20000', 'Casablanca', NULL, '$2y$10$0jBjn0Dkh4yq2Tl3Ol4rmuCgbkae4Q1tYuNnfE7hbnJL7ZxKzy.qu', NULL, NULL, '2020-09-20 11:00:25', '2020-09-20 11:02:34'),
(39, 2, 'user user1', 'user@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$GXf6EV.oONC6Gy1Tuy6TRe0EIcWOGussyp6CUUF.GyMcaHEZLFeXC', NULL, NULL, '2020-09-30 20:37:06', '2020-10-01 10:41:49'),
(47, 2, 'test9 test9', 'test9@test.com', 'users/default.png', '0662747457', '100 Boulevard Zerktouni, Maârif , 20000 Casablanca', 'Casablanca', NULL, '$2y$10$BCWVc33L/udNVALelPIg/eVCgc69yy3hvqvD8/xX9sIlc/JAF6Dvi', NULL, NULL, '2020-10-04 22:02:15', '2020-10-04 22:07:18'),
(48, 2, 'account account test', 'account@gmail.com', 'users/default.png', '0662747457', '100 Boulevard Zerktouni, Maârif , 20000 Casablanca', 'Casablanca', NULL, '$2y$10$vXzCq6WO5XeS/NaXUQcdKunctpiZET4Z6iOAdXn5LxvRZfl8.Idwi', NULL, NULL, '2020-10-04 22:39:27', '2020-10-04 22:50:30'),
(49, 2, 'test00 test0', 'zzn@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$6WTaMfGjbb2ZNqNiSSu6l.SXA0bx4XANdX1KpIsDtXXg6qRbx/PPW', NULL, NULL, '2020-10-07 15:49:34', '2020-10-07 15:49:34'),
(50, 2, 'test1 test1', 'test1@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$Z11laCCzvm84llmJJttaXurhjvu/TYBw3qArFiACzmGNcUq3EGBau', NULL, NULL, '2020-10-07 15:49:56', '2020-10-07 15:49:56'),
(51, 2, 'testz testzzez', 'testz@gmail.com', 'users/default.png', '0662747457', '100 Boulevard Zerktouni, Maârif , 20000 Casablanca', 'casablanca', NULL, '$2y$10$W3EMCiQwrxz9y1NWyevdOOf.TQ.3ugjxBLbz3vumy7bFP54HlobIC', NULL, NULL, '2020-10-07 16:01:18', '2020-10-07 16:18:30');

-- --------------------------------------------------------

--
-- Structure de la table `user_clients`
--

CREATE TABLE `user_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_id_unique` (`id`);

--
-- Index pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Index pour la table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Index pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user` (`user_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Index pour la table `plats`
--
ALTER TABLE `plats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_plat` (`category_id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rser_client_user` (`id_user`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Index pour la table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_clients`
--
ALTER TABLE `user_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_clients_email_unique` (`email`),
  ADD UNIQUE KEY `user_clients_phone_unique` (`Phone`);

--
-- Index pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `plats`
--
ALTER TABLE `plats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `user_clients`
--
ALTER TABLE `user_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `plats`
--
ALTER TABLE `plats`
  ADD CONSTRAINT `category_plat` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `rser_client_user` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Contraintes pour la table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

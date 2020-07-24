-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 24-Jul-2020 às 12:51
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-06-24 10:44:47', '2020-06-24 13:44:47', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=461 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/projeto', 'yes'),
(2, 'home', 'http://localhost/projeto', 'yes'),
(3, 'blogname', 'Sua Presenca', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'henrique172@hotmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:159:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"bemVindo/?$\";s:28:\"index.php?post_type=bemvindo\";s:41:\"bemVindo/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=bemvindo&feed=$matches[1]\";s:36:\"bemVindo/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=bemvindo&feed=$matches[1]\";s:28:\"bemVindo/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=bemvindo&paged=$matches[1]\";s:13:\"background/?$\";s:30:\"index.php?post_type=background\";s:43:\"background/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=background&feed=$matches[1]\";s:38:\"background/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=background&feed=$matches[1]\";s:30:\"background/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=background&paged=$matches[1]\";s:10:\"banners/?$\";s:26:\"index.php?post_type=banner\";s:40:\"banners/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:35:\"banners/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=banner&feed=$matches[1]\";s:27:\"banners/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=banner&paged=$matches[1]\";s:9:\"titulo/?$\";s:26:\"index.php?post_type=titulo\";s:39:\"titulo/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=titulo&feed=$matches[1]\";s:34:\"titulo/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=titulo&feed=$matches[1]\";s:26:\"titulo/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=titulo&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:50:\"favoritos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?favoritos=$matches[1]&feed=$matches[2]\";s:45:\"favoritos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?favoritos=$matches[1]&feed=$matches[2]\";s:26:\"favoritos/([^/]+)/embed/?$\";s:42:\"index.php?favoritos=$matches[1]&embed=true\";s:38:\"favoritos/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?favoritos=$matches[1]&paged=$matches[2]\";s:20:\"favoritos/([^/]+)/?$\";s:31:\"index.php?favoritos=$matches[1]\";s:34:\"bemVindo/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"bemVindo/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"bemVindo/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"bemVindo/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"bemVindo/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"bemVindo/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"bemVindo/(.+?)/embed/?$\";s:41:\"index.php?bemvindo=$matches[1]&embed=true\";s:27:\"bemVindo/(.+?)/trackback/?$\";s:35:\"index.php?bemvindo=$matches[1]&tb=1\";s:47:\"bemVindo/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?bemvindo=$matches[1]&feed=$matches[2]\";s:42:\"bemVindo/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?bemvindo=$matches[1]&feed=$matches[2]\";s:35:\"bemVindo/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?bemvindo=$matches[1]&paged=$matches[2]\";s:42:\"bemVindo/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?bemvindo=$matches[1]&cpage=$matches[2]\";s:31:\"bemVindo/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?bemvindo=$matches[1]&page=$matches[2]\";s:36:\"background/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"background/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"background/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"background/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"background/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"background/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"background/(.+?)/embed/?$\";s:43:\"index.php?background=$matches[1]&embed=true\";s:29:\"background/(.+?)/trackback/?$\";s:37:\"index.php?background=$matches[1]&tb=1\";s:49:\"background/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?background=$matches[1]&feed=$matches[2]\";s:44:\"background/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?background=$matches[1]&feed=$matches[2]\";s:37:\"background/(.+?)/page/?([0-9]{1,})/?$\";s:50:\"index.php?background=$matches[1]&paged=$matches[2]\";s:44:\"background/(.+?)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?background=$matches[1]&cpage=$matches[2]\";s:33:\"background/(.+?)(?:/([0-9]+))?/?$\";s:49:\"index.php?background=$matches[1]&page=$matches[2]\";s:33:\"banners/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"banners/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"banners/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"banners/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"banners/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"banners/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"banners/(.+?)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:26:\"banners/(.+?)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:46:\"banners/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:41:\"banners/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?banner=$matches[1]&feed=$matches[2]\";s:34:\"banners/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:41:\"banners/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:30:\"banners/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:32:\"titulo/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"titulo/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"titulo/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"titulo/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"titulo/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"titulo/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"titulo/(.+?)/embed/?$\";s:39:\"index.php?titulo=$matches[1]&embed=true\";s:25:\"titulo/(.+?)/trackback/?$\";s:33:\"index.php?titulo=$matches[1]&tb=1\";s:45:\"titulo/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?titulo=$matches[1]&feed=$matches[2]\";s:40:\"titulo/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?titulo=$matches[1]&feed=$matches[2]\";s:33:\"titulo/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?titulo=$matches[1]&paged=$matches[2]\";s:40:\"titulo/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?titulo=$matches[1]&cpage=$matches[2]\";s:29:\"titulo/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?titulo=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp-esqueleto-master', 'yes'),
(41, 'stylesheet', 'wp-esqueleto-master', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1608558286', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:76:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:9:\"read_post\";b:1;s:24:\"read_private_sgpb_popups\";b:1;s:15:\"edit_sgpb_popup\";b:1;s:16:\"edit_sgpb_popups\";b:1;s:23:\"edit_others_sgpb_popups\";b:1;s:26:\"edit_published_sgpb_popups\";b:1;s:19:\"publish_sgpb_popups\";b:1;s:18:\"delete_sgpb_popups\";b:1;s:25:\"delete_others_sgpb_popups\";b:1;s:26:\"delete_private_sgpb_popups\";b:1;s:25:\"delete_private_sgpb_popup\";b:1;s:28:\"delete_published_sgpb_popups\";b:1;s:19:\"sgpb_manage_options\";b:1;s:18:\"manage_popup_terms\";b:1;s:29:\"manage_popup_categories_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:9:\"read_post\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:9:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'pt_BR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(139, 'recently_activated', 'a:1:{s:31:\"popup-builder/popup-builder.php\";i:1593531450;}', 'yes'),
(140, 'acf_version', '5.8.7', 'yes'),
(150, 'category_children', 'a:0:{}', 'yes'),
(104, 'cron', 'a:7:{i:1595594688;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1595598287;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595598288;a:3:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1595598298;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1595598299;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1596116688;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(121, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1593006334;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(455, '_site_transient_timeout_theme_roots', '1595589684', 'no'),
(456, '_site_transient_theme_roots', 'a:5:{s:7:\"BizPage\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:19:\"wp-esqueleto-master\";s:7:\"/themes\";}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(131, 'theme_mods_BizPage', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1593006495;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(127, 'current_theme', 'EU AndréFauzeMarcelino', 'yes'),
(128, 'theme_mods_wp-esqueleto-master', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:13:\"menu-primario\";i:0;s:14:\"menu_principal\";i:8;s:11:\"footer_menu\";i:9;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1593006482;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(129, 'theme_switched', '', 'yes'),
(347, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(458, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1595587890;s:7:\"checked\";a:5:{s:7:\"BizPage\";s:3:\"2.0\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";s:19:\"wp-esqueleto-master\";s:3:\"2.0\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(459, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1595587891;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:9:\"hello.php\";s:5:\"1.7.2\";s:31:\"popup-builder/popup-builder.php\";s:6:\"3.68.1\";s:27:\"popup-maker/popup-maker.php\";s:6:\"1.11.0\";}s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:31:\"popup-builder/popup-builder.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/popup-builder\";s:4:\"slug\";s:13:\"popup-builder\";s:6:\"plugin\";s:31:\"popup-builder/popup-builder.php\";s:11:\"new_version\";s:6:\"3.68.2\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/popup-builder/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/popup-builder.3.68.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/popup-builder/assets/icon-128x128.gif?rev=2289412\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/popup-builder/assets/banner-772x250.jpg?rev=1908745\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";s:5:\"5.3.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"popup-maker/popup-maker.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/popup-maker\";s:4:\"slug\";s:11:\"popup-maker\";s:6:\"plugin\";s:27:\"popup-maker/popup-maker.php\";s:11:\"new_version\";s:6:\"1.11.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/popup-maker/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/popup-maker.1.11.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/popup-maker/assets/icon-256x256.jpg?rev=2045655\";s:2:\"1x\";s:64:\"https://ps.w.org/popup-maker/assets/icon-128x128.jpg?rev=2045655\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/popup-maker/assets/banner-1544x500.jpg?rev=2045655\";s:2:\"1x\";s:66:\"https://ps.w.org/popup-maker/assets/banner-772x250.jpg?rev=2045655\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(187, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"henrique172@hotmail.com\";s:7:\"version\";s:5:\"5.4.2\";s:9:\"timestamp\";i:1593389614;}', 'no'),
(175, '_transient_health-check-site-status-result', '{\"good\":7,\"recommended\":10,\"critical\":0}', 'yes'),
(369, 'recovery_mode_email_last_sent', '1594666108', 'yes'),
(235, 'sgpb-dont-delete-data', '1', 'yes'),
(236, 'sgpbUnsubscribeColumnFixed', '1', 'yes'),
(237, 'SGPBUsageDays', '0', 'yes'),
(238, 'SGPBInstallDate', '1593530968', 'yes'),
(239, 'SGPBOpenNextTime', '1596122968', 'yes'),
(240, 'SGPBMaxOpenCount', '80', 'yes'),
(241, 'SG_POPUP_BUILDER_REGISTERED_PLUGINS', '[]', 'yes'),
(242, 'SGPB_INACTIVE_EXTENSIONS', 'inactive', 'yes'),
(253, 'sgpb-unnecessary-scripts-removed-1', '1', 'yes'),
(246, 'sgpbModifiedRegisteredPluginsPaths1', '1', 'yes'),
(301, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1595587888;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(247, 'sgpb-all-notifications-data', '[{\"id\":\"pb-notif-02-05-2020\",\"type\":2,\"priority\":3,\"hideFor\":\"pro\",\"message\":\"<label><b>Stay safe and healthy with us.<\\/b><\\/label> <h4>In these COVID times, we know how hard it can be for you to lose the profit. We wish to let you know that we are here for you. However, we know that you still wish to continue your business as you did before. In Popup Builder, we care about you and are willing to provide a <a href=\'https:\\/\\/popup-builder.com\\/bundle\\/\'>20% discount<\\/a> for all the bundles.<\\/h4>\"},{\"id\":\"sgpbMainSupportBanner\",\"priority\":1,\"type\":1,\"message\":\"<div class=\\\"sgpb-support-notification-wrapper sgpb-wrapper\\\"><h4 class=\\\"sgpb-support-notification-title\\\">Need some help?<\\/h4><h4 class=\\\"sgpb-support-notification-title\\\">Let us know what you think.<\\/h4><a class=\\\"btn btn-info\\\" target=\\\"_blank\\\" href=\\\"http:\\/\\/bit.ly\\/sgpbPluginSource\\\"><span class=\\\"dashicons sgpb-dashicons-heart sgpb-info-text-white\\\"><\\/span><span class=\\\"sg-info-text\\\">Rate Us<\\/span><\\/a><a class=\\\"btn btn-info\\\" target=\\\"_blank\\\" href=\\\"https:\\/\\/help.popup-builder.com\\\"><span class=\\\"dashicons sgpb-dashicons-megaphone sgpb-info-text-white\\\"><\\/span>Support Potal<\\/a><a class=\\\"btn btn-info\\\" target=\\\"_blank\\\" href=\\\"https:\\/\\/wordpress.org\\/support\\/plugin\\/popup-builder\\\"><span class=\\\"dashicons sgpb-dashicons-admin-plugins sgpb-info-text-white\\\"><\\/span>Support Forum<\\/a><a class=\\\"btn btn-info\\\" target=\\\"_blank\\\" href=\\\"https:\\/\\/popup-builder.com\\/\\\"><span class=\\\"dashicons sgpb-dashicons-editor-help sgpb-info-text-white\\\"><\\/span>LIVE chat<\\/a><a class=\\\"btn btn-info\\\" target=\\\"_blank\\\" href=\\\"mailto:support@popup-builder.com?subject=Hello\\\"><span class=\\\"dashicons sgpb-dashicons-email-alt sgpb-info-text-white\\\"><\\/span>Email<\\/a><\\/div><div class=\\\"sgpb-support-notification-dont-show\\\">Bored of this?<a class=\\\"sgpb-dont-show-again-support-notification\\\" href=\\\"javascript:void(0)\\\"> Press here <\\/a>and we will not show it again!<\\/div>\"}]', 'yes'),
(249, 'sgpb-metabox-banner-remote-get', '<div class=\"sgpb-right-banner-wrapper\"><div class=\"sgpb-first-row\" style=\"background-image: url(https://popup-builder.com/wp-content/uploads/2018/12/subsciption-plus-banner-wordpress.jpg);\"></div><div class=\"sgpb-second-row\"></div></div>\nCustomize Your Subscription Fields and Mail Templates with our new <a target=\"_blank\" href=\"https://popup-builder.com/downloads/mailchimp-popup/\">Subscription Plus </a> extension.\n<style>.sgpb-first-row{background-size: 100%;min-height: 310px;background-repeat: no-repeat;}</style>', 'yes'),
(252, 'sgpb-user-roles', 'a:1:{i:0;s:6:\"editor\";}', 'yes'),
(270, 'SgpbCounter', 'a:1:{i:56;i:3;}', 'yes'),
(443, '_site_transient_timeout_php_check_03bb19de23a7f39f237dfd15fa323af5', '1596116703', 'no'),
(444, '_site_transient_php_check_03bb19de23a7f39f237dfd15fa323af5', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=446 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1594642391:1'),
(4, 7, '_wp_attached_file', '2020/06/unnamed.jpg'),
(5, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:384;s:4:\"file\";s:19:\"2020/06/unnamed.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"unnamed-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"unnamed-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 5, '_thumbnail_id', '7'),
(7, 9, '_edit_last', '1'),
(8, 9, '_edit_lock', '1594639104:1'),
(9, 12, '_edit_last', '1'),
(10, 12, '_edit_lock', '1593007580:1'),
(11, 12, 'titulo', 'Imagem Teste'),
(12, 12, '_titulo', 'field_5ef35cad44a5b'),
(13, 12, 'imagem', '7'),
(14, 12, '_imagem', 'field_5ef35cc144a5c'),
(110, 69, '_edit_last', '1'),
(16, 3, '_wp_trash_meta_status', 'draft'),
(17, 3, '_wp_trash_meta_time', '1593007953'),
(18, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(19, 2, '_wp_trash_meta_status', 'publish'),
(20, 2, '_wp_trash_meta_time', '1593007955'),
(21, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(22, 16, '_edit_lock', '1593017410:1'),
(23, 5, '_edit_last', '1'),
(24, 16, '_edit_last', '1'),
(25, 19, '_edit_lock', '1593037639:1'),
(26, 19, '_edit_last', '1'),
(27, 22, '_edit_last', '1'),
(28, 22, '_edit_lock', '1593024575:1'),
(29, 25, '_edit_last', '1'),
(30, 25, '_edit_lock', '1593024476:1'),
(31, 25, 'background', '7'),
(32, 25, '_background', 'field_5ef385813149c'),
(33, 25, '_', 'field_5ef385933149d'),
(34, 22, '_wp_trash_meta_status', 'publish'),
(35, 22, '_wp_trash_meta_time', '1593024724'),
(36, 22, '_wp_desired_post_slug', 'group_5ef385795cb83'),
(37, 23, '_wp_trash_meta_status', 'publish'),
(38, 23, '_wp_trash_meta_time', '1593024724'),
(39, 23, '_wp_desired_post_slug', 'field_5ef385813149c'),
(40, 24, '_wp_trash_meta_status', 'publish'),
(41, 24, '_wp_trash_meta_time', '1593024724'),
(42, 24, '_wp_desired_post_slug', 'field_5ef385933149d'),
(43, 26, '_wp_trash_meta_status', 'publish'),
(44, 26, '_wp_trash_meta_time', '1593024724'),
(45, 26, '_wp_desired_post_slug', 'field_5ef3a0851674c'),
(46, 27, '_edit_last', '1'),
(47, 27, '_edit_lock', '1593024758:1'),
(48, 25, '_wp_trash_meta_status', 'publish'),
(49, 25, '_wp_trash_meta_time', '1593024776'),
(50, 25, '_wp_desired_post_slug', 'background'),
(51, 30, '_edit_last', '1'),
(52, 30, '_edit_lock', '1593024666:1'),
(53, 30, 'imagem', '7'),
(54, 30, '_imagem', 'field_5ef3a0e13470e'),
(55, 27, '_wp_trash_meta_status', 'publish'),
(56, 27, '_wp_trash_meta_time', '1593024907'),
(57, 27, '_wp_desired_post_slug', 'group_5ef3a0d777b4c'),
(58, 28, '_wp_trash_meta_status', 'publish'),
(59, 28, '_wp_trash_meta_time', '1593024907'),
(60, 28, '_wp_desired_post_slug', 'field_5ef3a0e13470e'),
(61, 31, '_edit_last', '1'),
(62, 31, '_edit_lock', '1593024792:1'),
(63, 31, '_wp_trash_meta_status', 'publish'),
(64, 31, '_wp_trash_meta_time', '1593025414'),
(65, 31, '_wp_desired_post_slug', 'group_5ef3a18e244a5'),
(66, 32, '_wp_trash_meta_status', 'publish'),
(67, 32, '_wp_trash_meta_time', '1593025414'),
(68, 32, '_wp_desired_post_slug', 'field_5ef3a195d5cab'),
(69, 33, '_edit_last', '1'),
(70, 33, '_edit_lock', '1594923746:1'),
(71, 30, '_wp_trash_meta_status', 'publish'),
(72, 30, '_wp_trash_meta_time', '1593025470'),
(73, 30, '_wp_desired_post_slug', 'fundo'),
(74, 35, '_edit_last', '1'),
(75, 35, '_edit_lock', '1594923166:1'),
(76, 35, 'imagem', '7'),
(77, 35, '_imagem', 'field_5ef3a38d549ff'),
(78, 36, '_edit_lock', '1593026454:1'),
(81, 1, '_wp_trash_meta_status', 'publish'),
(82, 1, '_wp_trash_meta_time', '1593026583'),
(83, 1, '_wp_desired_post_slug', 'ola-mundo'),
(84, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(85, 39, '_edit_lock', '1593027164:1'),
(91, 19, '_oembed_5d9cdd815d17921aa0d0a3510a082933', '{{unknown}}'),
(88, 41, '_edit_lock', '1593027554:1'),
(92, 19, '_oembed_97397aae9e3645a83c7ed693cc02cc89', '<iframe title=\"ENCONTREI UM LUGAR SEGURO PARA GUARDAR A SCANIA 😱 EVITAR ROUBO!\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/UTOZJcCtqGU?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(93, 19, '_oembed_time_97397aae9e3645a83c7ed693cc02cc89', '1593035095'),
(94, 19, '_oembed_48615a285fe62352620592a2e02a5880', '<iframe title=\"AUMENTAMOS A POTENCIA DA MINHA SCANIA 400CV 😍 PROJETO 112\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/1c8S_IHhSnA?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(95, 19, '_oembed_time_48615a285fe62352620592a2e02a5880', '1593035461'),
(96, 19, '_oembed_c37054db5798017bd2b5661ffcb0e754', '<iframe title=\"CULTO 25/05/2020\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/_kO4HvqF-R0?start=346&feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(97, 19, '_oembed_time_c37054db5798017bd2b5661ffcb0e754', '1593036160'),
(98, 19, '_oembed_308c11b3bcb96afc9c4dd8a6b70db37f', '<iframe title=\"TESTE\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/qwFwVmRn6rs?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(99, 19, '_oembed_time_308c11b3bcb96afc9c4dd8a6b70db37f', '1593036190'),
(100, 54, '_wp_attached_file', '2020/06/maxresdefault.jpg'),
(101, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:25:\"2020/06/maxresdefault.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"maxresdefault-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"maxresdefault-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"maxresdefault-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"maxresdefault-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"post-thumb-euam\";a:4:{s:4:\"file\";s:26:\"maxresdefault-1024x720.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 55, '_wp_attached_file', '2020/06/wallpaper-cristao-hd-darei-gracas-ao-Senhor_1366x768.jpg'),
(103, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:768;s:4:\"file\";s:64:\"2020/06/wallpaper-cristao-hd-darei-gracas-ao-Senhor_1366x768.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"wallpaper-cristao-hd-darei-gracas-ao-Senhor_1366x768-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:65:\"wallpaper-cristao-hd-darei-gracas-ao-Senhor_1366x768-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"wallpaper-cristao-hd-darei-gracas-ao-Senhor_1366x768-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"wallpaper-cristao-hd-darei-gracas-ao-Senhor_1366x768-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"post-thumb-euam\";a:4:{s:4:\"file\";s:65:\"wallpaper-cristao-hd-darei-gracas-ao-Senhor_1366x768-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"4.5\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:356:\"Middle aged caucasian woman standing in the sunlit field with open arms, embracing natureMiddle aged caucasian woman standing in the sunlit field with open arms, embracing natureMiddle aged caucasian woman standing in the sunlit field with open arms, embracing natureMiddle aged caucasian woman standing in the sunlit field with open arms, embracing nature\";s:17:\"created_timestamp\";s:10:\"1497125123\";s:9:\"copyright\";s:37:\"This content is subject to copyright.\";s:12:\"focal_length\";s:3:\"135\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:7:\"0.00025\";s:5:\"title\";s:89:\"Middle aged caucasian woman standing in the sunlit field with open arms, embracing nature\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:2:{i:0;s:9:\"686998399\";i:1;s:20:\"creativecontentbrief\";}}}'),
(104, 56, '_edit_lock', '1593531283:1'),
(105, 56, '_edit_last', '1'),
(106, 56, 'sg_popup_scripts', 'a:2:{s:2:\"js\";a:0:{}s:3:\"css\";s:0:\"\";}'),
(107, 56, 'sg_popup_target', 'a:2:{s:11:\"sgpb-target\";a:1:{i:0;a:1:{i:0;a:1:{s:5:\"param\";s:10:\"everywhere\";}}}s:15:\"sgpb-conditions\";N;}'),
(108, 56, 'sg_popup_events', 'a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"load\";s:5:\"value\";s:1:\"1\";s:12:\"hiddenOption\";a:0:{}}}}'),
(109, 56, 'sg_popup_options', 'a:48:{s:9:\"sgpb-type\";s:4:\"html\";s:15:\"sgpb-is-preview\";s:1:\"0\";s:14:\"sgpb-is-active\";s:7:\"checked\";s:34:\"sgpb-behavior-after-special-events\";a:1:{i:0;a:1:{i:0;a:1:{s:5:\"param\";s:12:\"select_event\";}}}s:20:\"sgpb-content-padding\";s:1:\"7\";s:18:\"sgpb-popup-z-index\";s:4:\"9999\";s:17:\"sgpb-popup-themes\";s:12:\"sgpb-theme-1\";s:25:\"sgpb-overlay-custom-class\";s:18:\"sgpb-popup-overlay\";s:18:\"sgpb-overlay-color\";s:0:\"\";s:20:\"sgpb-overlay-opacity\";s:3:\"0.8\";s:25:\"sgpb-content-custom-class\";s:16:\"sg-popup-content\";s:26:\"sgpb-background-image-mode\";s:9:\"no-repeat\";s:12:\"sgpb-esc-key\";s:2:\"on\";s:24:\"sgpb-enable-close-button\";s:2:\"on\";s:23:\"sgpb-close-button-delay\";s:1:\"0\";s:26:\"sgpb-close-button-position\";s:11:\"bottomRight\";s:24:\"sgpb-button-position-top\";s:0:\"\";s:26:\"sgpb-button-position-right\";s:1:\"9\";s:27:\"sgpb-button-position-bottom\";s:1:\"9\";s:25:\"sgpb-button-position-left\";s:0:\"\";s:17:\"sgpb-button-image\";s:0:\"\";s:23:\"sgpb-button-image-width\";s:2:\"21\";s:24:\"sgpb-button-image-height\";s:2:\"21\";s:17:\"sgpb-border-color\";s:7:\"#000000\";s:18:\"sgpb-border-radius\";s:1:\"0\";s:23:\"sgpb-border-radius-type\";s:1:\"%\";s:16:\"sgpb-button-text\";s:5:\"Close\";s:18:\"sgpb-overlay-click\";s:2:\"on\";s:25:\"sgpb-popup-dimension-mode\";s:14:\"responsiveMode\";s:33:\"sgpb-responsive-dimension-measure\";s:4:\"auto\";s:10:\"sgpb-width\";s:5:\"640px\";s:11:\"sgpb-height\";s:5:\"480px\";s:14:\"sgpb-max-width\";s:0:\"\";s:15:\"sgpb-max-height\";s:0:\"\";s:14:\"sgpb-min-width\";s:3:\"120\";s:15:\"sgpb-min-height\";s:0:\"\";s:30:\"sgpb-copy-to-clipboard-message\";s:20:\"Copied to Clipboard!\";s:26:\"sgpb-open-animation-effect\";s:9:\"No effect\";s:27:\"sgpb-close-animation-effect\";s:9:\"No effect\";s:29:\"sgpb-enable-content-scrolling\";s:2:\"on\";s:16:\"sgpb-popup-order\";s:1:\"0\";s:16:\"sgpb-popup-delay\";s:1:\"0\";s:7:\"sgpb-js\";s:2:\"JS\";s:8:\"sgpb-css\";s:3:\"CSS\";s:12:\"sgpb-post-id\";s:2:\"56\";s:25:\"sgpb-enable-popup-overlay\";s:2:\"on\";s:22:\"sgpb-button-image-data\";s:0:\"\";s:26:\"sgpb-background-image-data\";s:0:\"\";}'),
(111, 69, '_edit_lock', '1594639090:1'),
(112, 69, '_wp_trash_meta_status', 'publish'),
(113, 69, '_wp_trash_meta_time', '1594639239'),
(114, 69, '_wp_desired_post_slug', 'group_5f0c4361198dc'),
(115, 70, '_wp_trash_meta_status', 'publish'),
(116, 70, '_wp_trash_meta_time', '1594639239'),
(117, 70, '_wp_desired_post_slug', 'field_5f0c436a6dccd'),
(118, 71, '_edit_last', '1'),
(119, 71, '_edit_lock', '1594639481:1'),
(120, 73, '_edit_last', '1'),
(121, 73, '_edit_lock', '1594642379:1'),
(122, 73, 'imagem', '74'),
(123, 73, '_imagem', 'field_5f0c439bbfee7'),
(124, 74, '_wp_attached_file', '2020/07/Vencedor.jpg'),
(125, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:20:\"2020/07/Vencedor.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Vencedor-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"Vencedor-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Vencedor-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"Vencedor-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"Vencedor-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"post-thumb-euam\";a:4:{s:4:\"file\";s:21:\"Vencedor-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 75, '_edit_lock', '1594661761:1'),
(127, 75, '_edit_last', '1'),
(343, 109, '_wp_trash_meta_status', 'publish'),
(344, 109, '_wp_trash_meta_time', '1594669183'),
(434, 124, '_edit_last', '1'),
(131, 79, '_edit_lock', '1594645810:1'),
(132, 79, '_edit_last', '1'),
(222, 92, '_menu_item_menu_item_parent', '0'),
(221, 92, '_menu_item_type', 'post_type'),
(433, 122, '_edit_lock', '1594923788:1'),
(141, 81, '_wp_trash_meta_status', 'publish'),
(142, 81, '_wp_trash_meta_time', '1594645552'),
(223, 92, '_menu_item_object_id', '75'),
(432, 122, '_edit_last', '1'),
(151, 79, '_wp_trash_meta_status', 'publish'),
(152, 79, '_wp_trash_meta_time', '1594647140'),
(153, 79, '_wp_desired_post_slug', 'santamaria'),
(430, 120, 'imagem', '131'),
(431, 120, '_imagem', 'field_5ef3a38d549ff'),
(429, 120, '_edit_lock', '1594950328:1'),
(428, 120, '_edit_last', '1'),
(169, 87, '_menu_item_object_id', '75'),
(168, 87, '_menu_item_menu_item_parent', '0'),
(167, 87, '_menu_item_type', 'post_type'),
(170, 87, '_menu_item_object', 'page'),
(171, 87, '_menu_item_target', ''),
(172, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(173, 87, '_menu_item_xfn', ''),
(174, 87, '_menu_item_url', ''),
(175, 87, '_menu_item_orphaned', '1594664570'),
(176, 88, '_menu_item_type', 'post_type'),
(177, 88, '_menu_item_menu_item_parent', '0'),
(178, 88, '_menu_item_object_id', '19'),
(179, 88, '_menu_item_object', 'page'),
(180, 88, '_menu_item_target', ''),
(181, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(182, 88, '_menu_item_xfn', ''),
(183, 88, '_menu_item_url', ''),
(184, 88, '_menu_item_orphaned', '1594664570'),
(185, 89, '_menu_item_type', 'post_type'),
(186, 89, '_menu_item_menu_item_parent', '0'),
(187, 89, '_menu_item_object_id', '16'),
(188, 89, '_menu_item_object', 'page'),
(189, 89, '_menu_item_target', ''),
(190, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(191, 89, '_menu_item_xfn', ''),
(192, 89, '_menu_item_url', ''),
(193, 89, '_menu_item_orphaned', '1594664571'),
(194, 90, '_menu_item_type', 'post_type'),
(195, 90, '_menu_item_menu_item_parent', '0'),
(196, 90, '_menu_item_object_id', '5'),
(197, 90, '_menu_item_object', 'page'),
(198, 90, '_menu_item_target', ''),
(199, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 90, '_menu_item_xfn', ''),
(201, 90, '_menu_item_url', ''),
(202, 90, '_menu_item_orphaned', '1594664571'),
(203, 41, '_wp_trash_meta_status', 'publish'),
(204, 41, '_wp_trash_meta_time', '1594664758'),
(205, 41, '_wp_desired_post_slug', 'terca'),
(206, 39, '_wp_trash_meta_status', 'publish'),
(207, 39, '_wp_trash_meta_time', '1594664760'),
(208, 39, '_wp_desired_post_slug', 'domingo'),
(209, 36, '_wp_trash_meta_status', 'publish'),
(210, 36, '_wp_trash_meta_time', '1594664762'),
(211, 36, '_wp_desired_post_slug', 'post-de-eventos'),
(224, 92, '_menu_item_object', 'page'),
(225, 92, '_menu_item_target', ''),
(226, 92, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(227, 92, '_menu_item_xfn', ''),
(228, 92, '_menu_item_url', ''),
(229, 92, '_menu_item_orphaned', '1594664834'),
(403, 117, '_menu_item_target', ''),
(404, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(405, 117, '_menu_item_xfn', ''),
(406, 117, '_menu_item_url', ''),
(408, 118, '_menu_item_type', 'post_type'),
(409, 118, '_menu_item_menu_item_parent', '0'),
(410, 118, '_menu_item_object_id', '107'),
(411, 118, '_menu_item_object', 'page'),
(426, 103, '_edit_last', '1'),
(424, 119, '_menu_item_url', ''),
(423, 119, '_menu_item_xfn', ''),
(422, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(421, 119, '_menu_item_target', ''),
(420, 119, '_menu_item_object', 'page'),
(419, 119, '_menu_item_object_id', '103'),
(417, 119, '_menu_item_type', 'post_type'),
(418, 119, '_menu_item_menu_item_parent', '0'),
(427, 107, '_edit_last', '1'),
(415, 118, '_menu_item_url', ''),
(412, 118, '_menu_item_target', ''),
(413, 118, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(414, 118, '_menu_item_xfn', ''),
(334, 107, '_edit_lock', '1594739183:1'),
(333, 105, '_wp_trash_meta_time', '1594669073'),
(332, 105, '_wp_trash_meta_status', 'publish'),
(322, 75, '_wp_desired_post_slug', 'santamaria'),
(320, 75, '_wp_trash_meta_status', 'publish'),
(321, 75, '_wp_trash_meta_time', '1594668892'),
(438, 128, '_wp_attached_file', '2020/07/formacao_a-nossa-vida-pode-ser-transformada-pela-fe.jpg'),
(439, 128, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1200;s:4:\"file\";s:63:\"2020/07/formacao_a-nossa-vida-pode-ser-transformada-pela-fe.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"formacao_a-nossa-vida-pode-ser-transformada-pela-fe-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:64:\"formacao_a-nossa-vida-pode-ser-transformada-pela-fe-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"formacao_a-nossa-vida-pode-ser-transformada-pela-fe-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:63:\"formacao_a-nossa-vida-pode-ser-transformada-pela-fe-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:65:\"formacao_a-nossa-vida-pode-ser-transformada-pela-fe-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"post-thumb-euam\";a:4:{s:4:\"file\";s:64:\"formacao_a-nossa-vida-pode-ser-transformada-pela-fe-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(437, 124, '_imagem', 'field_5f109b8655e7e'),
(436, 124, 'imagem', '55'),
(435, 124, '_edit_lock', '1594923930:1'),
(323, 103, '_edit_lock', '1594672618:1'),
(402, 117, '_menu_item_object', 'page'),
(401, 117, '_menu_item_object_id', '16'),
(400, 117, '_menu_item_menu_item_parent', '0'),
(399, 117, '_menu_item_type', 'post_type'),
(397, 116, '_menu_item_url', ''),
(396, 116, '_menu_item_xfn', ''),
(395, 116, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(394, 116, '_menu_item_target', ''),
(393, 116, '_menu_item_object', 'page'),
(392, 116, '_menu_item_object_id', '19'),
(391, 116, '_menu_item_menu_item_parent', '0'),
(390, 116, '_menu_item_type', 'post_type'),
(381, 115, '_menu_item_type', 'post_type'),
(382, 115, '_menu_item_menu_item_parent', '0'),
(383, 115, '_menu_item_object_id', '5'),
(384, 115, '_menu_item_object', 'page'),
(385, 115, '_menu_item_target', ''),
(386, 115, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(387, 115, '_menu_item_xfn', ''),
(388, 115, '_menu_item_url', ''),
(444, 131, '_wp_attached_file', '2020/07/preto.jpeg'),
(445, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1871;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2020/07/preto.jpeg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"preto-300x192.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"preto-1024x657.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:657;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"preto-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"preto-768x493.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:493;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"preto-1536x985.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:985;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"post-thumb-euam\";a:4:{s:4:\"file\";s:19:\"preto-1024x800.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-06-24 10:44:47', '2020-06-24 13:44:47', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2020-06-24 16:23:03', '2020-06-24 19:23:03', '', 0, 'http://localhost/projeto/?p=1', 0, 'post', '', 1),
(2, 1, '2020-06-24 10:44:47', '2020-06-24 13:44:47', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/projeto/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2020-06-24 11:12:35', '2020-06-24 14:12:35', '', 0, 'http://localhost/projeto/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-06-24 10:44:47', '2020-06-24 13:44:47', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost/projeto.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2020-06-24 11:12:33', '2020-06-24 14:12:33', '', 0, 'http://localhost/projeto/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-06-24 10:49:54', '2020-06-24 13:49:54', '', 'Home', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2020-06-24 13:29:00', '2020-06-24 16:29:00', '', 0, 'http://localhost/projeto/?page_id=5', 1, 'page', '', 0),
(6, 1, '2020-06-24 10:49:54', '2020-06-24 13:49:54', '<!-- wp:paragraph -->\n<p>jfalknckjadshnjdajahfjh f jh jihijghpih giahgia hig ha</p>\n<!-- /wp:paragraph -->', 'inicio', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-24 10:49:54', '2020-06-24 13:49:54', '', 5, 'http://localhost/projeto/2020/06/24/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-06-24 10:53:21', '2020-06-24 13:53:21', '', 'unnamed', '', 'inherit', 'open', 'closed', '', 'unnamed', '', '', '2020-06-24 10:53:21', '2020-06-24 13:53:21', '', 5, 'http://localhost/projeto/wp-content/uploads/2020/06/unnamed.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2020-06-24 11:02:42', '2020-06-24 14:02:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"banner\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'group_5ef35c9de6e9c', '', '', '2020-06-24 11:02:42', '2020-06-24 14:02:42', '', 0, 'http://localhost/projeto/?post_type=acf-field-group&#038;p=9', 0, 'acf-field-group', '', 0),
(10, 1, '2020-06-24 11:02:42', '2020-06-24 14:02:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'titulo', 'publish', 'closed', 'closed', '', 'field_5ef35cad44a5b', '', '', '2020-06-24 11:02:42', '2020-06-24 14:02:42', '', 9, 'http://localhost/projeto/?post_type=acf-field&p=10', 0, 'acf-field', '', 0),
(11, 1, '2020-06-24 11:02:42', '2020-06-24 14:02:42', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_5ef35cc144a5c', '', '', '2020-06-24 11:02:42', '2020-06-24 14:02:42', '', 9, 'http://localhost/projeto/?post_type=acf-field&p=11', 1, 'acf-field', '', 0),
(12, 1, '2020-06-24 11:03:13', '2020-06-24 14:03:13', '', 'Banner', '', 'publish', 'closed', 'closed', '', 'banner', '', '', '2020-06-24 11:03:13', '2020-06-24 14:03:13', '', 0, 'http://localhost/projeto/?post_type=banner&#038;p=12', 0, 'banner', '', 0),
(14, 1, '2020-06-24 11:12:33', '2020-06-24 14:12:33', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>O endereço do nosso site é: http://localhost/projeto.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais dados pessoais coletamos e porque</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentários</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulários de contato</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Mídia incorporada de outros sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Análises</h3><!-- /wp:heading --><!-- wp:heading --><h2>Com quem partilhamos seus dados</h2><!-- /wp:heading --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Suas informações de contato</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informações adicionais</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Como protegemos seus dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais são nossos procedimentos contra violação de dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De quais terceiros nós recebemos dados</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3><!-- /wp:heading -->', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-06-24 11:12:33', '2020-06-24 14:12:33', '', 3, 'http://localhost/projeto/3-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-06-24 11:12:35', '2020-06-24 14:12:35', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/projeto/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-06-24 11:12:35', '2020-06-24 14:12:35', '', 2, 'http://localhost/projeto/2-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2020-06-24 11:49:29', '2020-06-24 14:49:29', '', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2020-06-24 13:50:10', '2020-06-24 16:50:10', '', 0, 'http://localhost/projeto/?page_id=16', 3, 'page', '', 0),
(17, 1, '2020-06-24 11:49:29', '2020-06-24 14:49:29', '', 'Contato', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-06-24 11:49:29', '2020-06-24 14:49:29', '', 16, 'http://localhost/projeto/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-06-24 13:29:00', '2020-06-24 16:29:00', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-06-24 13:29:00', '2020-06-24 16:29:00', '', 5, 'http://localhost/projeto/5-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-06-24 13:49:39', '2020-06-24 16:49:39', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=_kO4HvqF-R0\\u0026t=346s\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"align\":\"left\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube alignleft wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=_kO4HvqF-R0&amp;t=346s\n</div></figure>\n<!-- /wp:core-embed/youtube --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=qwFwVmRn6rs\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"align\":\"right\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube alignright wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=qwFwVmRn6rs\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'Cultos', '', 'publish', 'closed', 'closed', '', 'evento', '', '', '2020-06-24 19:05:54', '2020-06-24 22:05:54', '', 0, 'http://localhost/projeto/?page_id=19', 2, 'page', '', 0),
(20, 1, '2020-06-24 13:49:39', '2020-06-24 16:49:39', '', 'Evento', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 13:49:39', '2020-06-24 16:49:39', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-06-24 13:50:33', '2020-06-24 16:50:33', '', 'Eventos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 13:50:33', '2020-06-24 16:50:33', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-06-24 13:56:04', '2020-06-24 16:56:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"background\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Background', 'background', 'trash', 'closed', 'closed', '', 'group_5ef385795cb83__trashed', '', '', '2020-06-24 15:52:04', '2020-06-24 18:52:04', '', 0, 'http://localhost/projeto/?post_type=acf-field-group&#038;p=22', 0, 'acf-field-group', '', 0),
(23, 1, '2020-06-24 13:56:04', '2020-06-24 16:56:04', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagem', 'imagem', 'trash', 'closed', 'closed', '', 'field_5ef385813149c__trashed', '', '', '2020-06-24 15:52:04', '2020-06-24 18:52:04', '', 22, 'http://localhost/projeto/?post_type=acf-field&#038;p=23', 0, 'acf-field', '', 0),
(24, 1, '2020-06-24 13:56:04', '2020-06-24 16:56:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', 'field_5ef385933149d__trashed', '', '', '2020-06-24 15:52:04', '2020-06-24 18:52:04', '', 22, 'http://localhost/projeto/?post_type=acf-field&#038;p=24', 1, 'acf-field', '', 0),
(25, 1, '2020-06-24 13:56:30', '2020-06-24 16:56:30', '', 'background', '', 'trash', 'closed', 'closed', '', 'background__trashed', '', '', '2020-06-24 15:52:56', '2020-06-24 18:52:56', '', 0, 'http://localhost/projeto/?post_type=background&#038;p=25', 0, 'background', '', 0),
(26, 1, '2020-06-24 15:50:52', '2020-06-24 18:50:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', 'field_5ef3a0851674c__trashed', '', '', '2020-06-24 15:52:04', '2020-06-24 18:52:04', '', 22, 'http://localhost/projeto/?post_type=acf-field&#038;p=26', 2, 'acf-field', '', 0),
(27, 1, '2020-06-24 15:52:38', '2020-06-24 18:52:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"background\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Background', 'background', 'trash', 'closed', 'closed', '', 'group_5ef3a0d777b4c__trashed', '', '', '2020-06-24 15:55:07', '2020-06-24 18:55:07', '', 0, 'http://localhost/projeto/?post_type=acf-field-group&#038;p=27', 0, 'acf-field-group', '', 0),
(28, 1, '2020-06-24 15:52:38', '2020-06-24 18:52:38', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagem', 'imagem', 'trash', 'closed', 'closed', '', 'field_5ef3a0e13470e__trashed', '', '', '2020-06-24 15:55:07', '2020-06-24 18:55:07', '', 27, 'http://localhost/projeto/?post_type=acf-field&#038;p=28', 0, 'acf-field', '', 0),
(30, 1, '2020-06-24 15:53:13', '2020-06-24 18:53:13', '', 'fundo', '', 'trash', 'closed', 'closed', '', 'fundo__trashed', '', '', '2020-06-24 16:04:30', '2020-06-24 19:04:30', '', 0, 'http://localhost/projeto/?post_type=background&#038;p=30', 0, 'background', '', 0),
(31, 1, '2020-06-24 15:55:31', '2020-06-24 18:55:31', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"background\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Imagem', 'imagem', 'trash', 'closed', 'closed', '', 'group_5ef3a18e244a5__trashed', '', '', '2020-06-24 16:03:34', '2020-06-24 19:03:34', '', 0, 'http://localhost/projeto/?post_type=acf-field-group&#038;p=31', 0, 'acf-field-group', '', 0),
(32, 1, '2020-06-24 15:55:31', '2020-06-24 18:55:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'background', 'background', 'trash', 'closed', 'closed', '', 'field_5ef3a195d5cab__trashed', '', '', '2020-06-24 16:03:34', '2020-06-24 19:03:34', '', 31, 'http://localhost/projeto/?post_type=acf-field&#038;p=32', 0, 'acf-field', '', 0),
(33, 1, '2020-06-24 16:04:23', '2020-06-24 19:04:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"backgroundstm\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'backgroundStm', 'backgroundstm', 'publish', 'closed', 'closed', '', 'group_5ef3a388e03cb', '', '', '2020-07-16 15:18:00', '2020-07-16 18:18:00', '', 0, 'http://localhost/projeto/?post_type=acf-field-group&#038;p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2020-06-24 16:04:23', '2020-06-24 19:04:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_5ef3a38d549ff', '', '', '2020-06-24 16:04:23', '2020-06-24 19:04:23', '', 33, 'http://localhost/projeto/?post_type=acf-field&p=34', 0, 'acf-field', '', 0),
(35, 1, '2020-06-24 16:05:47', '2020-06-24 19:05:47', '', 'fundo', '', 'publish', 'closed', 'closed', '', 'fundo', '', '', '2020-07-16 15:14:51', '2020-07-16 18:14:51', '', 0, 'http://localhost/projeto/?post_type=background&#038;p=35', 0, 'background', '', 0),
(36, 1, '2020-06-24 16:09:35', '2020-06-24 19:09:35', '', 'Post De eventos', '', 'trash', 'open', 'open', '', 'post-de-eventos__trashed', '', '', '2020-07-13 15:26:02', '2020-07-13 18:26:02', '', 0, 'http://localhost/projeto/?p=36', 0, 'post', '', 0),
(37, 1, '2020-06-24 16:09:35', '2020-06-24 19:09:35', '', 'Post De eventos', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-06-24 16:09:35', '2020-06-24 19:09:35', '', 36, 'http://localhost/projeto/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-06-24 16:23:03', '2020-06-24 19:23:03', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-06-24 16:23:03', '2020-06-24 19:23:03', '', 1, 'http://localhost/projeto/1-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-06-24 16:34:16', '2020-06-24 19:34:16', '', 'domingo', '', 'trash', 'open', 'open', '', 'domingo__trashed', '', '', '2020-07-13 15:26:00', '2020-07-13 18:26:00', '', 0, 'http://localhost/projeto/?p=39', 0, 'post', '', 0),
(40, 1, '2020-06-24 16:34:16', '2020-06-24 19:34:16', '', 'domingo', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2020-06-24 16:34:16', '2020-06-24 19:34:16', '', 39, 'http://localhost/projeto/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-06-24 16:36:16', '2020-06-24 19:36:16', '', 'terca', '', 'trash', 'open', 'open', '', 'terca__trashed', '', '', '2020-07-13 15:25:58', '2020-07-13 18:25:58', '', 0, 'http://localhost/projeto/?p=41', 0, 'post', '', 0),
(42, 1, '2020-06-24 16:36:16', '2020-06-24 19:36:16', '', 'terca', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2020-06-24 16:36:16', '2020-06-24 19:36:16', '', 41, 'http://localhost/projeto/41-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-06-24 16:52:32', '2020-06-24 19:52:32', '<!-- wp:core-embed/youtube /-->', 'Eventos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 16:52:32', '2020-06-24 19:52:32', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-06-24 16:42:59', '2020-06-24 19:42:59', '<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"https://wordpress.org\",\"service\":\"wordpress\"} /-->\n\n<!-- wp:social-link {\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"service\":\"instagram\"} /-->\n\n<!-- wp:social-link {\"service\":\"linkedin\"} /-->\n\n<!-- wp:social-link {\"service\":\"youtube\"} /--></ul>\n<!-- /wp:social-links -->', 'Eventos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 16:42:59', '2020-06-24 19:42:59', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-06-24 16:49:43', '2020-06-24 19:49:43', '<!-- wp:archives {\"align\":\"center\",\"displayAsDropdown\":true,\"showPostCounts\":true} /-->', 'Eventos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 16:49:43', '2020-06-24 19:49:43', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-06-24 16:47:42', '2020-06-24 19:47:42', '<!-- wp:social-links -->\n<ul class=\"wp-block-social-links\"><!-- wp:social-link {\"url\":\"https://wordpress.org\",\"service\":\"wordpress\"} /-->\n\n<!-- wp:social-link {\"service\":\"facebook\"} /-->\n\n<!-- wp:social-link {\"service\":\"twitter\"} /-->\n\n<!-- wp:social-link {\"service\":\"instagram\"} /-->\n\n<!-- wp:social-link {\"service\":\"linkedin\"} /-->\n\n<!-- wp:social-link {\"service\":\"youtube\"} /--></ul>\n<!-- /wp:social-links -->\n\n<!-- wp:categories /-->', 'Eventos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 16:47:42', '2020-06-24 19:47:42', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-06-24 16:53:42', '2020-06-24 19:53:42', '<!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=W3_SWgKS7zQ\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=W3_SWgKS7zQ\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Eventos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 16:53:42', '2020-06-24 19:53:42', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-06-24 18:43:33', '2020-06-24 21:43:33', '<!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=W3_SWgKS7zQ\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-4-3 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-4-3 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=W3_SWgKS7zQ\n</div></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Eventos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 18:43:33', '2020-06-24 21:43:33', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2020-06-24 18:44:54', '2020-06-24 21:44:54', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=UTOZJcCtqGU\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"align\":\"center\",\"className\":\"wp-embed-aspect-4-3 wp-has-aspect-ratio wp-embed-aspect-16-9\"} -->\n<figure class=\"wp-block-embed-youtube aligncenter wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-4-3 wp-has-aspect-ratio wp-embed-aspect-16-9\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=UTOZJcCtqGU\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'Eventos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 18:44:54', '2020-06-24 21:44:54', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2020-06-24 19:02:40', '2020-06-24 22:02:40', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=_kO4HvqF-R0\\u0026t=346s\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=_kO4HvqF-R0&amp;t=346s\n</div></figure>\n<!-- /wp:core-embed/youtube --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Cultos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 19:02:40', '2020-06-24 22:02:40', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2020-06-24 18:51:00', '2020-06-24 21:51:00', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=UTOZJcCtqGU\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"align\":\"center\",\"className\":\"wp-embed-aspect-4-3 wp-has-aspect-ratio wp-embed-aspect-16-9\"} -->\n<figure class=\"wp-block-embed-youtube aligncenter wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-4-3 wp-has-aspect-ratio wp-embed-aspect-16-9\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=UTOZJcCtqGU\n</div><figcaption>Teste</figcaption></figure>\n<!-- /wp:core-embed/youtube -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=1c8S_IHhSnA\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=1c8S_IHhSnA\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'Eventos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 18:51:00', '2020-06-24 21:51:00', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2020-06-24 19:03:10', '2020-06-24 22:03:10', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=_kO4HvqF-R0\\u0026t=346s\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=_kO4HvqF-R0&amp;t=346s\n</div></figure>\n<!-- /wp:core-embed/youtube --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=qwFwVmRn6rs\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=qwFwVmRn6rs\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'Cultos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 19:03:10', '2020-06-24 22:03:10', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-06-24 19:05:01', '2020-06-24 22:05:01', '<!-- wp:group -->\n<div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=_kO4HvqF-R0\\u0026t=346s\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"align\":\"left\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube alignleft wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=_kO4HvqF-R0&amp;t=346s\n</div></figure>\n<!-- /wp:core-embed/youtube --></div></div>\n<!-- /wp:group -->\n\n<!-- wp:core-embed/youtube {\"url\":\"https://www.youtube.com/watch?v=qwFwVmRn6rs\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"align\":\"right\",\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed-youtube alignright wp-block-embed is-type-video is-provider-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=qwFwVmRn6rs\n</div></figure>\n<!-- /wp:core-embed/youtube -->', 'Cultos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-06-24 19:05:01', '2020-06-24 22:05:01', '', 19, 'http://localhost/projeto/19-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-06-28 21:12:33', '2020-06-29 00:12:33', '', 'maxresdefault', '', 'inherit', 'open', 'closed', '', 'maxresdefault', '', '', '2020-06-28 21:12:33', '2020-06-29 00:12:33', '', 35, 'http://localhost/projeto/wp-content/uploads/2020/06/maxresdefault.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2020-06-28 21:35:29', '2020-06-29 00:35:29', '', 'Middle aged caucasian woman standing in the sunlit field with open arms, embracing nature', 'Middle aged caucasian woman standing in the sunlit field with open arms, embracing natureMiddle aged caucasian woman standing in the sunlit field with open arms, embracing natureMiddle aged caucasian woman standing in the sunlit field with open arms, embracing natureMiddle aged caucasian woman standing in the sunlit field with open arms, embracing nature', 'inherit', 'open', 'closed', '', 'middle-aged-caucasian-woman-standing-in-the-sunlit-field-with-open-arms-embracing-nature', '', '', '2020-06-28 21:35:29', '2020-06-29 00:35:29', '', 35, 'http://localhost/projeto/wp-content/uploads/2020/06/wallpaper-cristao-hd-darei-gracas-ao-Senhor_1366x768.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2020-06-30 12:32:11', '2020-06-30 15:32:11', '<!-- wp:paragraph {\"textColor\":\"vivid-red\",\"fontSize\":\"normal\"} -->\n<p class=\"has-text-color has-normal-font-size has-vivid-red-color\">jadjalkdjalksdjklas</p>\n<!-- /wp:paragraph -->', 'Palavra do dia', '', 'publish', 'closed', 'closed', '', 'palavra-do-dia', '', '', '2020-06-30 12:32:11', '2020-06-30 15:32:11', '', 0, 'http://localhost/projeto/?post_type=popupbuilder&#038;p=56', 0, 'popupbuilder', '', 0),
(57, 1, '2020-06-30 12:36:51', '2020-06-30 15:36:51', '', 'Palavra do dia', '', 'inherit', 'closed', 'closed', '', '56-autosave-v1', '', '', '2020-06-30 12:36:51', '2020-06-30 15:36:51', '', 56, 'http://localhost/projeto/56-autosave-v1/', 0, 'revision', '', 0),
(69, 1, '2020-07-13 08:20:22', '2020-07-13 11:20:22', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Bem Vindo', 'bem-vindo', 'trash', 'closed', 'closed', '', 'group_5f0c4361198dc__trashed', '', '', '2020-07-13 08:20:39', '2020-07-13 11:20:39', '', 0, 'http://localhost/projeto/?post_type=acf-field-group&#038;p=69', 0, 'acf-field-group', '', 0),
(70, 1, '2020-07-13 08:20:22', '2020-07-13 11:20:22', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', 'field_5f0c436a6dccd__trashed', '', '', '2020-07-13 08:20:39', '2020-07-13 11:20:39', '', 69, 'http://localhost/projeto/?post_type=acf-field&#038;p=70', 0, 'acf-field', '', 0),
(71, 1, '2020-07-13 08:21:34', '2020-07-13 11:21:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"bemvindo\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Bem Vindo', 'bem-vindo', 'publish', 'closed', 'closed', '', 'group_5f0c4391692a7', '', '', '2020-07-13 08:25:59', '2020-07-13 11:25:59', '', 0, 'http://localhost/projeto/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2020-07-13 08:21:34', '2020-07-13 11:21:34', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_5f0c439bbfee7', '', '', '2020-07-13 08:21:34', '2020-07-13 11:21:34', '', 71, 'http://localhost/projeto/?post_type=acf-field&p=72', 0, 'acf-field', '', 0),
(73, 1, '2020-07-13 08:27:20', '2020-07-13 11:27:20', '', 'imagem', '', 'publish', 'closed', 'closed', '', 'imagem', '', '', '2020-07-13 08:36:16', '2020-07-13 11:36:16', '', 0, 'http://localhost/projeto/?post_type=bemvindo&#038;p=73', 0, 'bemvindo', '', 0),
(74, 1, '2020-07-13 08:36:12', '2020-07-13 11:36:12', '', 'Vencedor', '', 'inherit', 'open', 'closed', '', 'vencedor', '', '', '2020-07-13 08:36:12', '2020-07-13 11:36:12', '', 73, 'http://localhost/projeto/wp-content/uploads/2020/07/Vencedor.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2020-07-13 09:16:05', '2020-07-13 12:16:05', '<!-- wp:paragraph -->\n<p>`sdadalsdladj kajf aklaskdsdsd</p>\n<!-- /wp:paragraph -->', 'Santa Maria', '', 'trash', 'closed', 'closed', '', 'santamaria__trashed', '', '', '2020-07-13 16:34:52', '2020-07-13 19:34:52', '', 0, 'http://localhost/projeto/?page_id=75', 0, 'page', '', 0),
(76, 1, '2020-07-13 09:16:05', '2020-07-13 12:16:05', '', 'Santa Maria', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-07-13 09:16:05', '2020-07-13 12:16:05', '', 75, 'http://localhost/projeto/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-07-13 09:17:50', '2020-07-13 12:17:50', '<!-- wp:paragraph -->\n<p>`sdadalsdladj kajf aklask</p>\n<!-- /wp:paragraph -->', 'Santa Maria', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-07-13 09:17:50', '2020-07-13 12:17:50', '', 75, 'http://localhost/projeto/75-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-07-13 09:17:55', '2020-07-13 12:17:55', '<!-- wp:paragraph -->\n<p>`sdadalsdladj kajf aklaskdsdsd</p>\n<!-- /wp:paragraph -->', 'Santa Maria', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2020-07-13 09:17:55', '2020-07-13 12:17:55', '', 75, 'http://localhost/projeto/75-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2020-07-13 09:37:47', '2020-07-13 12:37:47', '', 'Santa Maria', '', 'trash', 'closed', 'closed', '', 'santamaria__trashed-2', '', '', '2020-07-13 10:32:20', '2020-07-13 13:32:20', '', 0, 'http://localhost/projeto/?page_id=79', 0, 'page', '', 0),
(80, 1, '2020-07-13 09:37:36', '2020-07-13 12:37:36', '', 'Santa Maria', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2020-07-13 09:37:36', '2020-07-13 12:37:36', '', 79, 'http://localhost/projeto/79-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-07-13 10:05:52', '2020-07-13 13:05:52', '{\n    \"blogname\": {\n        \"value\": \"Sua Presenca\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 13:05:52\"\n    },\n    \"wp-esqueleto-master::nav_menu_locations[menu-primario]\": {\n        \"value\": -669845901307910100,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 13:05:52\"\n    },\n    \"nav_menu[-669845901307910100]\": {\n        \"value\": {\n            \"name\": \"Menu teste\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 13:05:52\"\n    },\n    \"nav_menu_item[-4894921636704037000]\": {\n        \"value\": {\n            \"object_id\": 79,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Santa Maria\",\n            \"url\": \"http://localhost/projeto/santamaria/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Santa Maria\",\n            \"nav_menu_term_id\": -669845901307910100,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 13:05:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9cc46e90-10de-4855-b2d6-7129582f194c', '', '', '2020-07-13 10:05:52', '2020-07-13 13:05:52', '', 0, 'http://localhost/projeto/9cc46e90-10de-4855-b2d6-7129582f194c/', 0, 'customize_changeset', '', 0),
(103, 1, '2020-07-13 16:36:32', '2020-07-13 19:36:32', '', 'Santa Maria', '', 'publish', 'closed', 'closed', '', 'santamaria', '', '', '2020-07-13 17:36:58', '2020-07-13 20:36:58', '', 0, 'http://localhost/projeto/?page_id=103', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(92, 1, '2020-07-13 15:27:14', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-07-13 15:27:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto/?p=92', 1, 'nav_menu_item', '', 0),
(87, 1, '2020-07-13 15:22:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-07-13 15:22:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2020-07-13 15:22:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-07-13 15:22:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto/?p=88', 1, 'nav_menu_item', '', 0),
(89, 1, '2020-07-13 15:22:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-07-13 15:22:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto/?p=89', 1, 'nav_menu_item', '', 0),
(90, 1, '2020-07-13 15:22:51', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-07-13 15:22:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto/?p=90', 1, 'nav_menu_item', '', 0),
(105, 1, '2020-07-13 16:37:53', '2020-07-13 19:37:53', '{\n    \"wp-esqueleto-master::nav_menu_locations[menu_principal]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:37:53\"\n    },\n    \"wp-esqueleto-master::nav_menu_locations[footer_menu]\": {\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:37:53\"\n    },\n    \"nav_menu_item[-3029355879358146600]\": {\n        \"value\": {\n            \"object_id\": 103,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Santa Maria\",\n            \"url\": \"http://localhost/projeto/santa-maria/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Santa Maria\",\n            \"nav_menu_term_id\": 8,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:37:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a4e3eee5-7a97-4edf-8be3-6f8b56641826', '', '', '2020-07-13 16:37:53', '2020-07-13 19:37:53', '', 0, 'http://localhost/projeto/a4e3eee5-7a97-4edf-8be3-6f8b56641826/', 0, 'customize_changeset', '', 0),
(104, 1, '2020-07-13 16:36:32', '2020-07-13 19:36:32', '', 'Santa Maria', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2020-07-13 16:36:32', '2020-07-13 19:36:32', '', 103, 'http://localhost/projeto/103-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2020-07-13 16:38:41', '2020-07-13 19:38:41', '', 'Riacho Fundo II', '', 'publish', 'closed', 'closed', '', 'riacho', '', '', '2020-07-14 12:06:23', '2020-07-14 15:06:23', '', 0, 'http://localhost/projeto/?page_id=107', 0, 'page', '', 0),
(108, 1, '2020-07-13 16:38:41', '2020-07-13 19:38:41', '', 'Riacho Fundo II', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2020-07-13 16:38:41', '2020-07-13 19:38:41', '', 107, 'http://localhost/projeto/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2020-07-13 16:39:42', '2020-07-13 19:39:42', '{\n    \"nav_menu_item[-5007460893643651000]\": {\n        \"value\": {\n            \"object_id\": 107,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Riacho Fundo II\",\n            \"url\": \"http://localhost/projeto/riacho-fundo-ii/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Riacho Fundo II\",\n            \"nav_menu_term_id\": 8,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1gina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-13 19:39:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e83fa41-a4f5-4753-bf48-99d02f1aeffb', '', '', '2020-07-13 16:39:42', '2020-07-13 19:39:42', '', 0, 'http://localhost/projeto/1e83fa41-a4f5-4753-bf48-99d02f1aeffb/', 0, 'customize_changeset', '', 0),
(121, 1, '2020-07-16 15:17:18', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-16 15:17:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto/?post_type=backgroundstm&p=121', 0, 'backgroundstm', '', 0),
(120, 1, '2020-07-16 15:18:10', '2020-07-16 18:18:10', '', 'imagem', '', 'publish', 'closed', 'closed', '', 'backgroundstm', '', '', '2020-07-16 22:42:28', '2020-07-17 01:42:28', '', 0, 'http://localhost/projeto/?post_type=backgroundstm&#038;p=120', 0, 'backgroundstm', '', 0),
(117, 1, '2020-07-13 17:32:46', '2020-07-13 20:32:46', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2020-07-13 17:32:46', '2020-07-13 20:32:46', '', 0, 'http://localhost/projeto/?p=117', 3, 'nav_menu_item', '', 0),
(115, 1, '2020-07-13 17:12:37', '2020-07-13 20:12:37', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2020-07-13 17:32:46', '2020-07-13 20:32:46', '', 0, 'http://localhost/projeto/?p=115', 1, 'nav_menu_item', '', 0),
(119, 1, '2020-07-13 17:33:32', '2020-07-13 20:33:32', ' ', '', '', 'publish', 'closed', 'closed', '', '119', '', '', '2020-07-13 17:33:32', '2020-07-13 20:33:32', '', 0, 'http://localhost/projeto/?p=119', 2, 'nav_menu_item', '', 0),
(118, 1, '2020-07-13 17:33:32', '2020-07-13 20:33:32', ' ', '', '', 'publish', 'closed', 'closed', '', '118', '', '', '2020-07-13 17:33:32', '2020-07-13 20:33:32', '', 0, 'http://localhost/projeto/?p=118', 1, 'nav_menu_item', '', 0),
(116, 1, '2020-07-13 17:31:54', '2020-07-13 20:31:54', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2020-07-13 17:32:46', '2020-07-13 20:32:46', '', 0, 'http://localhost/projeto/?p=116', 2, 'nav_menu_item', '', 0),
(128, 1, '2020-07-16 21:05:24', '2020-07-17 00:05:24', '', 'formacao_a-nossa-vida-pode-ser-transformada-pela-fe', '', 'inherit', 'open', 'closed', '', 'formacao_a-nossa-vida-pode-ser-transformada-pela-fe', '', '', '2020-07-16 21:05:24', '2020-07-17 00:05:24', '', 120, 'http://localhost/projeto/wp-content/uploads/2020/07/formacao_a-nossa-vida-pode-ser-transformada-pela-fe.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2020-07-16 15:25:30', '2020-07-16 18:25:30', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"backgroundriacho\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'BackgroundRiacho', 'backgroundriacho', 'publish', 'closed', 'closed', '', 'group_5f109b7561ddf', '', '', '2020-07-16 15:25:30', '2020-07-16 18:25:30', '', 0, 'http://localhost/projeto/?post_type=acf-field-group&#038;p=122', 0, 'acf-field-group', '', 0),
(123, 1, '2020-07-16 15:25:30', '2020-07-16 18:25:30', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_5f109b8655e7e', '', '', '2020-07-16 15:25:30', '2020-07-16 18:25:30', '', 122, 'http://localhost/projeto/?post_type=acf-field&p=123', 0, 'acf-field', '', 0),
(124, 1, '2020-07-16 15:25:44', '2020-07-16 18:25:44', '', 'imagem', '', 'publish', 'closed', 'closed', '', 'imagem', '', '', '2020-07-16 15:26:12', '2020-07-16 18:26:12', '', 0, 'http://localhost/projeto/?post_type=backgroundriacho&#038;p=124', 0, 'backgroundriacho', '', 0),
(125, 1, '2020-07-16 15:26:49', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-16 15:26:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto/?post_type=backgroundriacho&p=125', 0, 'backgroundriacho', '', 0),
(126, 1, '2020-07-16 15:27:00', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-16 15:27:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto/?post_type=backgroundriacho&p=126', 0, 'backgroundriacho', '', 0),
(127, 1, '2020-07-16 15:27:27', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-07-16 15:27:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/projeto/?post_type=backgroundriacho&p=127', 0, 'backgroundriacho', '', 0),
(131, 1, '2020-07-16 22:40:01', '2020-07-17 01:40:01', '', 'preto', '', 'inherit', 'open', 'closed', '', 'preto', '', '', '2020-07-16 22:40:01', '2020-07-17 01:40:01', '', 120, 'http://localhost/projeto/wp-content/uploads/2020/07/preto.jpeg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_sgpb_subscribers`
--

DROP TABLE IF EXISTS `wp_sgpb_subscribers`;
CREATE TABLE IF NOT EXISTS `wp_sgpb_subscribers` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subscriptionType` int(12) DEFAULT NULL,
  `cDate` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `unsubscribed` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_sgpb_subscription_error_log`
--

DROP TABLE IF EXISTS `wp_sgpb_subscription_error_log`;
CREATE TABLE IF NOT EXISTS `wp_sgpb_subscription_error_log` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) DEFAULT NULL,
  `popupType` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Cultos', 'cultos-evangelicos', 0),
(3, 'teste', 'teste', 0),
(8, 'Principal', 'principal', 0),
(9, 'footer', 'footer', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(119, 9, 0),
(36, 2, 0),
(39, 2, 0),
(41, 3, 0),
(118, 9, 0),
(117, 8, 0),
(116, 8, 0),
(115, 8, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 0),
(8, 8, 'nav_menu', '', 0, 3),
(9, 9, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Henrique'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"539ef2a294c786379e680c134d85a3d469625ed7925a0dfa706475b90e5b1533\";a:4:{s:10:\"expiration\";i:1595093843;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0\";s:5:\"login\";i:1594921043;}s:64:\"a8060bc42423d320375fe7fd75c341850ed86b3c66c3cce6ad110efe0ff3a6d8\";a:4:{s:10:\"expiration\";i:1595117036;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0\";s:5:\"login\";i:1594944236;}s:64:\"5bc34411548113730010148d0e838ae930657c6cc16a66b86361d31118c57a1d\";a:4:{s:10:\"expiration\";i:1595122497;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101 Firefox/78.0\";s:5:\"login\";i:1594949697;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '58'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1593006832'),
(22, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(24, 1, 'nav_menu_recently_edited', '9'),
(23, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:6:{i:0;s:22:\"add-post-type-bemvindo\";i:1;s:24:\"add-post-type-background\";i:2;s:20:\"add-post-type-banner\";i:3;s:20:\"add-post-type-titulo\";i:4;s:12:\"add-post_tag\";i:5;s:13:\"add-favoritos\";}'),
(20, 1, 'closedpostboxes_popupbuilder', 'a:2:{i:0;s:17:\"eventsMetaboxView\";i:1;s:21:\"conditionsMetaboxView\";}'),
(21, 1, 'metaboxhidden_popupbuilder', 'a:0:{}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Henrique', '$P$B9BMycYTUQ8TfNcWqAQRlVL2LEMm4P1', 'henrique', 'henrique172@hotmail.com', 'http://localhost/projeto', '2020-06-24 13:44:47', '', 0, 'Henrique');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

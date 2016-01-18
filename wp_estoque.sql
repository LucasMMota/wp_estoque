-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18-Jan-2016 às 03:46
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wp_estoque`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=196 ;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wp_estoque.localhost', 'yes'),
(2, 'home', 'http://wp_estoque.localhost', 'yes'),
(3, 'blogname', 'Controle de Estoque', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lucas.lmmf@gmail.com', 'yes'),
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
(28, 'permalink_structure', '', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:1:{i:0;s:14:"types/wpcf.php";}', 'yes'),
(33, 'category_base', '', 'yes'),
(34, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(35, 'comment_max_links', '2', 'yes'),
(36, 'gmt_offset', '0', 'yes'),
(37, 'default_email_category', '1', 'yes'),
(38, 'recently_edited', '', 'no'),
(39, 'template', 'estoqueTheme', 'yes'),
(40, 'stylesheet', 'estoqueTheme', 'yes'),
(41, 'comment_whitelist', '1', 'yes'),
(42, 'blacklist_keys', '', 'no'),
(43, 'comment_registration', '0', 'yes'),
(44, 'html_type', 'text/html', 'yes'),
(45, 'use_trackback', '0', 'yes'),
(46, 'default_role', 'subscriber', 'yes'),
(47, 'db_version', '35700', 'yes'),
(48, 'uploads_use_yearmonth_folders', '1', 'yes'),
(49, 'upload_path', '', 'yes'),
(50, 'blog_public', '1', 'yes'),
(51, 'default_link_category', '2', 'yes'),
(52, 'show_on_front', 'posts', 'yes'),
(53, 'tag_base', '', 'yes'),
(54, 'show_avatars', '1', 'yes'),
(55, 'avatar_rating', 'G', 'yes'),
(56, 'upload_url_path', '', 'yes'),
(57, 'thumbnail_size_w', '150', 'yes'),
(58, 'thumbnail_size_h', '150', 'yes'),
(59, 'thumbnail_crop', '1', 'yes'),
(60, 'medium_size_w', '300', 'yes'),
(61, 'medium_size_h', '300', 'yes'),
(62, 'avatar_default', 'mystery', 'yes'),
(63, 'large_size_w', '1024', 'yes'),
(64, 'large_size_h', '1024', 'yes'),
(65, 'image_default_link_type', 'none', 'yes'),
(66, 'image_default_size', '', 'yes'),
(67, 'image_default_align', '', 'yes'),
(68, 'close_comments_for_old_posts', '0', 'yes'),
(69, 'close_comments_days_old', '14', 'yes'),
(70, 'thread_comments', '1', 'yes'),
(71, 'thread_comments_depth', '5', 'yes'),
(72, 'page_comments', '0', 'yes'),
(73, 'comments_per_page', '50', 'yes'),
(74, 'default_comments_page', 'newest', 'yes'),
(75, 'comment_order', 'asc', 'yes'),
(76, 'sticky_posts', 'a:0:{}', 'yes'),
(77, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'uninstall_plugins', 'a:0:{}', 'no'),
(81, 'timezone_string', '', 'yes'),
(82, 'page_for_posts', '0', 'yes'),
(83, 'page_on_front', '0', 'yes'),
(84, 'default_post_format', '0', 'yes'),
(85, 'link_manager_enabled', '0', 'yes'),
(86, 'finished_splitting_shared_terms', '1', 'yes'),
(87, 'site_icon', '0', 'yes'),
(88, 'medium_large_size_w', '768', 'yes'),
(89, 'medium_large_size_h', '0', 'yes'),
(90, 'initial_db_version', '35700', 'yes'),
(91, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:73:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:26:"wpcf_custom_post_type_view";b:1;s:26:"wpcf_custom_post_type_edit";b:1;s:33:"wpcf_custom_post_type_edit_others";b:1;s:25:"wpcf_custom_taxonomy_view";b:1;s:25:"wpcf_custom_taxonomy_edit";b:1;s:32:"wpcf_custom_taxonomy_edit_others";b:1;s:22:"wpcf_custom_field_view";b:1;s:22:"wpcf_custom_field_edit";b:1;s:29:"wpcf_custom_field_edit_others";b:1;s:25:"wpcf_user_meta_field_view";b:1;s:25:"wpcf_user_meta_field_edit";b:1;s:32:"wpcf_user_meta_field_edit_others";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(92, 'WPLANG', 'pt_BR', 'yes'),
(93, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:4:{i:1453118164;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1453118205;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1453120063;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-4.4.1.zip";s:6:"locale";s:5:"pt_BR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/pt_BR/wordpress-4.4.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.4.1";s:7:"version";s:5:"4.4.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1453084864;s:15:"version_checked";s:5:"4.4.1";s:12:"translations";a:0:{}}', 'yes'),
(110, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1453084889;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:14:"types/wpcf.php";O:8:"stdClass":6:{s:2:"id";s:5:"24557";s:4:"slug";s:5:"types";s:6:"plugin";s:14:"types/wpcf.php";s:11:"new_version";s:6:"1.8.11";s:3:"url";s:36:"https://wordpress.org/plugins/types/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/types.1.8.11.zip";}}}', 'yes'),
(113, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1453084896;s:7:"checked";a:1:{s:12:"estoqueTheme";s:0:"";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(119, 'can_compress_scripts', '1', 'yes'),
(121, '_transient_twentysixteen_categories', '1', 'yes'),
(122, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1452945780;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(123, 'current_theme', 'Estoque Theme', 'yes'),
(124, 'theme_mods_twentyfifteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1452946831;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:0:{}}}}', 'yes'),
(125, 'theme_switched', '', 'yes'),
(135, 'theme_mods_estoqueTheme', 'a:1:{i:0;b:0;}', 'yes'),
(136, 'theme_switched_via_customizer', '', 'yes'),
(139, 'recently_activated', 'a:0:{}', 'yes'),
(141, 'WPCF_VERSION', '1.8.11', 'no'),
(142, 'wpcf-version', '1.8.11', 'yes'),
(143, 'wp_installer_settings', 'eJxNzEsKhTAMRuG9ZAWN9QF/FhNyNYOCaGnqSNz7dej4fBxDxh3gAdS8nlH62YoHiSHhfgLDCNotun6zXnWz7iQFPE45TTznJO9mAWltrqxJ193teCXJDyzPH29/IvM=', 'yes'),
(144, 'wpcf-messages', 'a:1:{i:1;a:0:{}}', 'yes'),
(145, 'wpcf_users_options', '1', 'yes'),
(146, 'wpcf-fields', 'a:7:{s:4:"nome";a:8:{s:2:"id";s:4:"nome";s:4:"slug";s:4:"nome";s:4:"type";s:9:"textfield";s:4:"name";s:4:"Nome";s:11:"description";s:0:"";s:4:"data";a:7:{s:11:"placeholder";s:0:"";s:18:"user_default_value";s:0:"";s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:15:"Campo requerido";}}s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:10:"submit-key";s:4:"nome";s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:9:"wpcf-nome";s:9:"meta_type";s:8:"postmeta";}s:9:"descricao";a:8:{s:2:"id";s:9:"descricao";s:4:"slug";s:9:"descricao";s:4:"type";s:8:"textarea";s:4:"name";s:11:"Descrição";s:11:"description";s:0:"";s:4:"data";a:7:{s:11:"placeholder";s:0:"";s:18:"user_default_value";s:0:"";s:10:"repetitive";s:1:"0";s:6:"is_new";s:1:"1";s:19:"conditional_display";a:0:{}s:10:"submit-key";s:14:"textarea-19216";s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:14:"wpcf-descricao";s:9:"meta_type";s:8:"postmeta";}s:5:"preco";a:8:{s:2:"id";s:5:"preco";s:4:"slug";s:5:"preco";s:4:"type";s:7:"numeric";s:4:"name";s:6:"Preço";s:11:"description";s:0:"";s:4:"data";a:8:{s:11:"placeholder";s:0:"";s:18:"user_default_value";s:0:"";s:10:"repetitive";s:1:"0";s:8:"validate";a:2:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:15:"Campo requerido";}s:6:"number";a:2:{s:6:"active";s:1:"1";s:7:"message";s:25:"Apenas valores numéricos";}}s:6:"is_new";s:1:"1";s:19:"conditional_display";a:0:{}s:10:"submit-key";s:11:"numeric-742";s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:10:"wpcf-preco";s:9:"meta_type";s:8:"postmeta";}s:5:"email";a:8:{s:2:"id";s:5:"email";s:4:"slug";s:5:"email";s:4:"type";s:5:"email";s:4:"name";s:5:"Email";s:11:"description";s:0:"";s:4:"data";a:7:{s:11:"placeholder";s:0:"";s:18:"user_default_value";s:0:"";s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:15:"Campo Requerido";}}s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:10:"submit-key";s:5:"email";s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:10:"wpcf-email";s:9:"meta_type";s:8:"postmeta";}s:8:"telefone";a:8:{s:2:"id";s:8:"telefone";s:4:"slug";s:8:"telefone";s:4:"type";s:5:"phone";s:4:"name";s:8:"Telefone";s:11:"description";s:0:"";s:4:"data";a:6:{s:11:"placeholder";s:0:"";s:18:"user_default_value";s:0:"";s:10:"repetitive";s:1:"0";s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:10:"submit-key";s:8:"telefone";s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:13:"wpcf-telefone";s:9:"meta_type";s:8:"postmeta";}s:10:"id_produto";a:8:{s:2:"id";s:10:"id_produto";s:4:"slug";s:10:"id_produto";s:4:"type";s:9:"textfield";s:4:"name";s:10:"ID_Produto";s:11:"description";s:0:"";s:4:"data";a:7:{s:11:"placeholder";s:0:"";s:18:"user_default_value";s:0:"";s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:15:"Campo requerido";}}s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:10:"submit-key";s:10:"id_produto";s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:15:"wpcf-id_produto";s:9:"meta_type";s:8:"postmeta";}s:10:"id_cliente";a:8:{s:2:"id";s:10:"id_cliente";s:4:"slug";s:10:"id_cliente";s:4:"type";s:9:"textfield";s:4:"name";s:10:"ID_cliente";s:11:"description";s:0:"";s:4:"data";a:7:{s:11:"placeholder";s:0:"";s:18:"user_default_value";s:0:"";s:10:"repetitive";s:1:"0";s:8:"validate";a:1:{s:8:"required";a:3:{s:6:"active";s:1:"1";s:5:"value";s:4:"true";s:7:"message";s:15:"Campo requerido";}}s:19:"conditional_display";a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}s:10:"submit-key";s:10:"id_cliente";s:16:"disabled_by_type";i:0;}s:8:"meta_key";s:15:"wpcf-id_cliente";s:9:"meta_type";s:8:"postmeta";}}', 'yes'),
(147, '_wpcf_promo_tabs', 'a:2:{s:8:"selected";i:3;s:4:"time";i:1453052916;}', 'yes'),
(154, '_transient_timeout_plugin_slugs', '1453138046', 'no'),
(155, '_transient_plugin_slugs', 'a:1:{i:0;s:14:"types/wpcf.php";}', 'no'),
(156, '_transient_timeout_dash_01e18dead815ce736e3b9cccfbd773a5', '1453094846', 'no'),
(157, '_transient_dash_01e18dead815ce736e3b9cccfbd773a5', '<div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>Erro de RSS</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(194, '_site_transient_timeout_theme_roots', '1453086684', 'yes'),
(195, '_site_transient_theme_roots', 'a:1:{s:12:"estoqueTheme";s:7:"/themes";}', 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=95 ;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(7, 6, '_edit_last', '1'),
(8, 6, '_edit_lock', '1453052305:1'),
(9, 7, '_edit_last', '1'),
(10, 7, '_edit_lock', '1453052788:1'),
(11, 9, '_edit_last', '1'),
(12, 9, '_edit_lock', '1453052486:1'),
(13, 10, '_edit_last', '1'),
(14, 10, '_edit_lock', '1453052854:1'),
(15, 11, '_edit_last', '1'),
(16, 11, '_edit_lock', '1453053074:1'),
(17, 12, '_edit_last', '1'),
(18, 12, '_edit_lock', '1453052849:1'),
(19, 15, '_edit_last', '1'),
(20, 15, '_edit_lock', '1453007563:1'),
(21, 17, '_edit_last', '1'),
(22, 17, '_edit_lock', '1452947504:1'),
(23, 19, '_edit_last', '1'),
(24, 19, '_edit_lock', '1452947837:1'),
(25, 21, '_wp_types_group_filters_association', 'any'),
(26, 21, '_wp_types_group_fields', ',nome,descricao,preco,'),
(27, 21, '_wp_types_group_post_types', ',produtos,'),
(28, 21, '_wp_types_group_terms', 'all'),
(29, 21, '_wp_types_group_templates', 'all'),
(30, 21, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(31, 22, '_wp_types_group_filters_association', 'any'),
(32, 22, '_wp_types_group_fields', ',nome,email,telefone,'),
(33, 22, '_wp_types_group_post_types', ',clientes,'),
(34, 22, '_wp_types_group_terms', 'all'),
(35, 22, '_wp_types_group_templates', 'all'),
(36, 22, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(37, 22, '_toolset_edit_last', '1453052946'),
(38, 23, '_wp_types_group_filters_association', 'any'),
(39, 23, '_wp_types_group_fields', ',id_produto,id_cliente,'),
(40, 23, '_wp_types_group_post_types', ',pedidos,'),
(41, 23, '_wp_types_group_terms', 'all'),
(42, 23, '_wp_types_group_templates', 'all'),
(43, 23, '_wpcf_conditional_display', 'a:3:{s:10:"custom_use";s:1:"0";s:8:"relation";s:3:"AND";s:6:"custom";s:0:"";}'),
(44, 6, 'wpcf-nome', 'Produto 1'),
(45, 6, 'wpcf-descricao', 'Descrição...'),
(46, 6, 'wpcf-preco', '12.25'),
(47, 7, 'wpcf-nome', 'P2'),
(48, 7, 'wpcf-descricao', 'descricao.......'),
(49, 7, 'wpcf-preco', '65.90'),
(50, 9, 'wpcf-nome', 'p3'),
(51, 9, 'wpcf-preco', '100'),
(76, 12, 'wpcf-nome', 'C3'),
(77, 12, 'wpcf-email', 'c3@gmail.com'),
(78, 12, 'wpcf-telefone', '123456'),
(79, 10, 'wpcf-nome', 'C1'),
(80, 10, 'wpcf-email', 'c1@gmail.com'),
(81, 10, 'wpcf-telefone', '123456798'),
(82, 11, 'wpcf-nome', 'C2'),
(83, 11, 'wpcf-email', 'c2@gmail.com'),
(84, 11, 'wpcf-telefone', '123456'),
(85, 23, '_wp_old_slug', 'campos-customizados'),
(86, 23, '_toolset_edit_last', '1453053873');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=31 ;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2016-01-16 11:56:47', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-01-16 11:56:47', '0000-00-00 00:00:00', '', 0, 'http://wp_estoque.localhost/?p=3', 0, 'post', '', 0),
(6, 1, '2016-01-16 12:27:59', '2016-01-16 12:27:59', '', 'Produto 1', '', 'publish', 'closed', 'closed', '', 'produto-1', '', '', '2016-01-17 05:16:11', '2016-01-17 05:16:11', '', 0, 'http://wp_estoque.localhost/?post_type=produtos&#038;p=6', 0, 'produtos', '', 0),
(7, 1, '2016-01-16 12:28:17', '2016-01-16 12:28:17', '', 'Produto 2', '', 'publish', 'closed', 'closed', '', 'produto-2', '', '', '2016-01-17 17:42:17', '2016-01-17 17:42:17', '', 0, 'http://wp_estoque.localhost/?post_type=produtos&#038;p=7', 0, 'produtos', '', 0),
(8, 1, '2016-01-16 12:28:23', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-16 12:28:23', '0000-00-00 00:00:00', '', 0, 'http://wp_estoque.localhost/?post_type=produtos&p=8', 0, 'produtos', '', 0),
(9, 1, '2016-01-16 12:28:32', '2016-01-16 12:28:32', '', 'Produto 3', '', 'publish', 'closed', 'closed', '', 'produto-3', '', '', '2016-01-17 17:42:46', '2016-01-17 17:42:46', '', 0, 'http://wp_estoque.localhost/?post_type=produtos&#038;p=9', 0, 'produtos', '', 0),
(10, 1, '2016-01-16 12:28:54', '2016-01-16 12:28:54', '', 'Cliente 1', '', 'publish', 'closed', 'closed', '', 'cliente-1', '', '', '2016-01-17 17:49:44', '2016-01-17 17:49:44', '', 0, 'http://wp_estoque.localhost/?post_type=clientes&#038;p=10', 0, 'clientes', '', 0),
(11, 1, '2016-01-16 12:29:09', '2016-01-16 12:29:09', '', 'Cliente 2', '', 'publish', 'closed', 'closed', '', 'cliente-2', '', '', '2016-01-17 17:49:52', '2016-01-17 17:49:52', '', 0, 'http://wp_estoque.localhost/?post_type=clientes&#038;p=11', 0, 'clientes', '', 0),
(12, 1, '2016-01-16 12:29:23', '2016-01-16 12:29:23', '', 'Cliente 3', '', 'publish', 'closed', 'closed', '', 'cliente-3', '', '', '2016-01-17 17:49:34', '2016-01-17 17:49:34', '', 0, 'http://wp_estoque.localhost/?post_type=clientes&#038;p=12', 0, 'clientes', '', 0),
(13, 1, '2016-01-16 12:30:46', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-16 12:30:46', '0000-00-00 00:00:00', '', 0, 'http://wp_estoque.localhost/?post_type=pedidos&p=13', 0, 'pedidos', '', 0),
(15, 1, '2016-01-16 12:33:41', '2016-01-16 12:33:41', '', 'Produtos', '', 'publish', 'closed', 'closed', '', 'produtos', '', '', '2016-01-16 12:33:41', '2016-01-16 12:33:41', '', 0, 'http://wp_estoque.localhost/?page_id=15', 0, 'page', '', 0),
(16, 1, '2016-01-16 12:33:41', '2016-01-16 12:33:41', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2016-01-16 12:33:41', '2016-01-16 12:33:41', '', 15, 'http://wp_estoque.localhost/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2016-01-16 12:33:59', '2016-01-16 12:33:59', '', 'Clientes', '', 'publish', 'closed', 'closed', '', 'clientes', '', '', '2016-01-16 12:33:59', '2016-01-16 12:33:59', '', 0, 'http://wp_estoque.localhost/?page_id=17', 0, 'page', '', 0),
(18, 1, '2016-01-16 12:33:59', '2016-01-16 12:33:59', '', 'Clientes', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2016-01-16 12:33:59', '2016-01-16 12:33:59', '', 17, 'http://wp_estoque.localhost/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-01-16 12:34:19', '2016-01-16 12:34:19', '', 'Pedidos', '', 'publish', 'closed', 'closed', '', 'pedidos', '', '', '2016-01-16 12:34:19', '2016-01-16 12:34:19', '', 0, 'http://wp_estoque.localhost/?page_id=19', 0, 'page', '', 0),
(20, 1, '2016-01-16 12:34:19', '2016-01-16 12:34:19', '', 'Pedidos', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2016-01-16 12:34:19', '2016-01-16 12:34:19', '', 19, 'http://wp_estoque.localhost/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2016-01-16 12:44:03', '2016-01-16 12:44:03', '', 'Campos Customizados Produtos', '', 'publish', 'closed', 'closed', '', 'campos-customizados-produtos', '', '', '2016-01-16 12:44:03', '2016-01-16 12:44:03', '', 0, 'http://wp_estoque.localhost/wp-types-group/campos-customizados-produtos/', 0, 'wp-types-group', '', 0),
(22, 1, '2016-01-16 12:47:14', '2016-01-16 12:47:14', '', 'Campos Customizados Cliente', '', 'publish', 'closed', 'closed', '', 'campos-customizados-cliente', '', '', '2016-01-17 17:49:05', '2016-01-17 17:49:05', '', 0, 'http://wp_estoque.localhost/wp-types-group/campos-customizados-cliente/', 0, 'wp-types-group', '', 0),
(23, 1, '2016-01-17 04:50:55', '2016-01-17 04:50:55', '', 'Campos Customizados Pedidos', '', 'publish', 'closed', 'closed', '', 'campos-customizados-pedidos', '', '', '2016-01-17 18:04:33', '2016-01-17 18:04:33', '', 0, 'http://wp_estoque.localhost/wp-types-group/campos-customizados/', 0, 'wp-types-group', '', 0),
(25, 1, '2016-01-17 17:49:56', '2016-01-17 17:49:56', '', 'Cliente 1', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2016-01-17 17:49:56', '2016-01-17 17:49:56', '', 10, 'http://wp_estoque.localhost/10-autosave-v1/', 0, 'revision', '', 0),
(26, 1, '2016-01-17 17:53:45', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-17 17:53:45', '0000-00-00 00:00:00', '', 0, 'http://wp_estoque.localhost/?post_type=pedidos&p=26', 0, 'pedidos', '', 0),
(27, 1, '2016-01-17 22:27:20', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-17 22:27:20', '0000-00-00 00:00:00', '', 0, 'http://wp_estoque.localhost/?page_id=27', 0, 'page', '', 0),
(28, 1, '2016-01-17 22:27:22', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2016-01-17 22:27:22', '0000-00-00 00:00:00', '', 0, 'http://wp_estoque.localhost/?page_id=28', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=20 ;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'administrador'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:13:{s:13:"administrator";b:1;s:26:"wpcf_custom_post_type_view";b:1;s:26:"wpcf_custom_post_type_edit";b:1;s:33:"wpcf_custom_post_type_edit_others";b:1;s:25:"wpcf_custom_taxonomy_view";b:1;s:25:"wpcf_custom_taxonomy_edit";b:1;s:32:"wpcf_custom_taxonomy_edit_others";b:1;s:22:"wpcf_custom_field_view";b:1;s:22:"wpcf_custom_field_edit";b:1;s:29:"wpcf_custom_field_edit_others";b:1;s:25:"wpcf_user_meta_field_view";b:1;s:25:"wpcf_user_meta_field_edit";b:1;s:32:"wpcf_user_meta_field_edit_others";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"b0497df4ec2240fb2eacef0f6edb0ad3f62f33322ac97af84b9d98b30153211c";a:4:{s:10:"expiration";i:1453118203;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.106 Safari/537.36";s:5:"login";i:1452945403;}s:64:"2442feb2442edac76b75eb589e7312921519f4f633003e34693cc89a4cfa4eb4";a:4:{s:10:"expiration";i:1453224429;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2526.111 Safari/537.36";s:5:"login";i:1453051629;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'editor=html'),
(17, 1, 'wp_user-settings-time', '1452947555'),
(18, 1, 'wp_types-modal', '0'),
(19, 1, 'wpcf-group-form-toggle', 'a:2:{i:22;a:1:{s:14:"fieldset-email";i:1;}i:23;a:2:{s:19:"fieldset-id_produto";i:1;s:19:"fieldset-id_cliente";i:1;}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'administrador', '$P$BNWVK1D0KgnbTkRbV6qlCB/P9Zm0FK/', 'administrador', 'lucas.lmmf@gmail.com', '', '2016-01-16 11:56:00', '', 0, 'administrador');
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

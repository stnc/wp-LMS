-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.32-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table english2.wp_helix_grammer
CREATE TABLE IF NOT EXISTS `wp_helix_grammer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ranking_number` int(11) NOT NULL,
  `word` varchar(255) NOT NULL,
  `alternatives` longtext DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `link` text DEFAULT NULL,
  `type` char(50) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `shortcode` char(50) NOT NULL,
  `encrypt_word` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table english2.wp_helix_grammer: ~109 rows (approximately)
DELETE FROM `wp_helix_grammer`;
INSERT INTO `wp_helix_grammer` (`id`, `ranking_number`, `word`, `alternatives`, `comment`, `link`, `type`, `status`, `shortcode`, `encrypt_word`) VALUES
	(1, 1, 'can', NULL, NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(4, 2, 'can\'t', 'cannot,can not', NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(5, 3, 'couldn\'t', 'could\'not,could not , could\' not ', NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(6, 4, 'could', NULL, NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(8, 5, 'will not', 'will\'not,will\' not', NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(9, 6, 'will', NULL, NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(10, 7, 'won\'t', NULL, NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(11, 8, 'would', NULL, NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(13, 9, 'wouldn\'t', 'would not,would \'not', NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(14, 10, 'shall not', 'shan\'t,shall \'not,shall \'not,shall \' not,shall \' not,shall \' not,shall \' not', 'wp-admin/post.php?post=34381&action=edit', NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(15, 11, 'shall', NULL, NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(17, 12, 'may not', NULL, '/wp-admin/post.php?post=34377&action=edit', NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(18, 13, 'may', '', NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(19, 14, 'might not', NULL, '/wp-admin/post.php?post=34379&action=edit', NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(20, 15, 'might', '', NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(21, 16, 'must', NULL, NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(22, 17, 'must not', NULL, NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(23, 18, 'ought', NULL, NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(24, 19, 'ought not', NULL, NULL, NULL, 'modal verbs', 1, 'modalVerbs_sc', NULL),
	(25, 20, 'about', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(26, 21, 'like', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(27, 22, 'above', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(28, 23, 'near', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(29, 24, 'of', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(30, 25, 'with', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(31, 26, 'within', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(32, 27, 'without', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(33, 28, 'into', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(34, 29, 'inside', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(35, 30, 'from', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(36, 31, 'for', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(37, 32, 'upon', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(38, 33, 'except', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(39, 34, 'up', NULL, NULL, NULL, 'prepositions', 0, 'preposition_sc', NULL),
	(40, 35, 'except', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(41, 36, 'down', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(42, 37, 'underneath', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(43, 38, 'despite', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(44, 39, 'by', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(45, 40, 'under', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(46, 41, 'towards', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(47, 42, 'beyond', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(48, 43, 'towards', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(49, 44, 'between', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(50, 45, 'to', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(51, 46, 'through', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(52, 47, 'beneath', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(53, 48, 'than', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(54, 49, 'below', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(55, 50, 'round', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(56, 51, 'behind', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(57, 52, 'before', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(58, 53, 'over', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(59, 54, 'outside', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(60, 55, 'as', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(61, 56, 'out', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(62, 57, 'around', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(63, 58, 'opposite', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(64, 59, 'among', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(65, 60, 'onto', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(66, 61, 'along', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(67, 62, 'against', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(68, 63, 'off', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(69, 64, 'after', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(70, 65, 'of', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(71, 66, 'across', NULL, NULL, NULL, 'prepositions', 1, 'preposition_sc', NULL),
	(72, 67, 'ahead of', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(73, 68, 'inside of', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(74, 69, 'apart from', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(75, 70, 'instead of', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(76, 71, 'as for', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(77, 72, 'near to', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(78, 73, 'as well as', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(79, 74, 'on account of', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(80, 75, 'because of', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(81, 76, 'on top of', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(82, 77, 'due to', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(83, 78, 'out of', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(84, 79, 'except for', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(85, 80, 'outside of', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(86, 81, 'in addition to', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(87, 82, 'owing to', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(88, 83, 'in front of', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(89, 84, 'such as', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(90, 85, 'in place of', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(91, 86, 'thanks to', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(92, 87, 'in spite of', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(93, 88, 'up to', NULL, NULL, NULL, 'complex prepositions', 1, 'complexPreposition_sc', NULL),
	(94, 89, 'at', NULL, NULL, NULL, 'prepositions of time', 1, 'prepositionsOfTime_sc', NULL),
	(95, 90, 'during', NULL, NULL, NULL, 'prepositions of time', 1, 'prepositionsOfTime_sc', NULL),
	(96, 91, 'for', NULL, NULL, NULL, 'prepositions of time', 1, 'prepositionsOfTime_sc', NULL),
	(97, 92, 'in', NULL, NULL, NULL, 'prepositions of time', 1, 'prepositionsOfTime_sc', NULL),
	(98, 93, 'on', NULL, NULL, NULL, 'prepositions of time', 1, 'prepositionsOfTime_sc', NULL),
	(99, 94, 'until', NULL, NULL, NULL, 'prepositions of time', 1, 'prepositionsOfTime_sc', NULL),
	(100, 95, 'after', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(101, 96, 'before', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(102, 97, 'since', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(103, 98, 'than', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(104, 99, 'that', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(105, 100, 'though', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(106, 101, 'unless', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(107, 102, 'when', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(108, 103, 'until', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(109, 104, 'where', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(110, 105, 'while', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(111, 106, 'yet', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(112, 107, 'both', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(113, 108, 'either', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL),
	(114, 109, 'neither', NULL, NULL, NULL, 'conjunctions', 1, 'conjunction_sc', NULL);

-- Dumping structure for table english2.wp_helix_level_categories
CREATE TABLE IF NOT EXISTS `wp_helix_level_categories` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table english2.wp_helix_level_categories: ~4 rows (approximately)
DELETE FROM `wp_helix_level_categories`;
INSERT INTO `wp_helix_level_categories` (`level_id`, `name`, `status`) VALUES
	(1, 'Basit', 1),
	(2, 'Orta', 1),
	(3, 'Zor', 1),
	(4, 'kompleks', 1);

-- Dumping structure for table english2.wp_helix_level_categories_record
CREATE TABLE IF NOT EXISTS `wp_helix_level_categories_record` (
  `record_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `word_id` bigint(20) DEFAULT NULL,
  `level_id` bigint(20) DEFAULT 0,
  PRIMARY KEY (`record_id`) USING BTREE,
  KEY `level_id` (`level_id`) USING BTREE,
  KEY `categories_record_id` (`record_id`) USING BTREE,
  KEY `level_id_idx` (`level_id`),
  KEY `categories_record_id_idx` (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=474 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table english2.wp_helix_level_categories_record: ~71 rows (approximately)
DELETE FROM `wp_helix_level_categories_record`;
INSERT INTO `wp_helix_level_categories_record` (`record_id`, `word_id`, `level_id`) VALUES
	(167, 0, 2),
	(168, 0, 3),
	(169, 0, 5),
	(170, 0, 6),
	(173, 92, 3),
	(174, 92, 4),
	(248, 87, 1),
	(249, 87, 2),
	(250, 87, 3),
	(251, 87, 4),
	(311, 93, 1),
	(312, 93, 2),
	(313, 93, 3),
	(314, 94, 1),
	(318, 72, 1),
	(320, 96, 1),
	(323, 101, 1),
	(324, 102, 1),
	(325, 103, 8),
	(328, 104, 1),
	(329, 104, 2),
	(330, 105, 1),
	(331, 105, 2),
	(333, 106, 1),
	(335, 107, 6),
	(337, 109, 1),
	(339, 110, 6),
	(341, 108, 1),
	(342, 111, 1),
	(343, 112, 1),
	(344, 100, 2),
	(345, 113, 1),
	(347, 73, 1),
	(348, 114, 2),
	(350, 115, 2),
	(351, 116, 1),
	(356, 117, 2),
	(357, 118, 1),
	(358, 118, 4),
	(359, 118, 5),
	(360, 95, 1),
	(361, 95, 2),
	(374, 122, 9),
	(375, 122, 10),
	(378, 119, 9),
	(379, 119, 10),
	(380, 121, 9),
	(381, 121, 10),
	(382, 120, 9),
	(383, 120, 10),
	(384, 123, 9),
	(385, 123, 10),
	(386, 124, 9),
	(387, 124, 10),
	(388, 125, 9),
	(389, 125, 10),
	(390, 126, 9),
	(391, 126, 10),
	(392, 128, 9),
	(393, 128, 10),
	(394, 127, 9),
	(395, 127, 10),
	(396, 129, 1),
	(404, 131, 1),
	(425, 130, 1),
	(427, 97, 1),
	(428, 97, 4),
	(450, 133, 3),
	(451, 133, 4),
	(461, 132, 5),
	(463, 135, 1),
	(464, 137, 11),
	(465, 138, 11),
	(466, 139, 11),
	(468, 140, 11),
	(469, 141, 12),
	(472, 142, 12),
	(473, 143, 12);

-- Dumping structure for table english2.wp_helix_speak_level_categories
CREATE TABLE IF NOT EXISTS `wp_helix_speak_level_categories` (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table english2.wp_helix_speak_level_categories: ~12 rows (approximately)
DELETE FROM `wp_helix_speak_level_categories`;
INSERT INTO `wp_helix_speak_level_categories` (`level_id`, `name`, `status`) VALUES
	(1, 'Gunluk Konusma', 1),
	(2, 'Zaman Iceren Konusma ', 1),
	(3, 'Seyahat', 1),
	(4, 'Alisveris', 1),
	(5, 'is Hayati', 1),
	(6, 'Kitap', 1),
	(7, 'Ilk 5000', 1),
	(8, 'doğru bilinen yanlışlar ', 1),
	(9, 'Ders 1', 1),
	(10, '3 kelimelik basit ', 1),
	(11, 'ders 1 - gunluk isler', 1),
	(12, 'ders formati ', 1);

-- Dumping structure for table english2.wp_helix_tense
CREATE TABLE IF NOT EXISTS `wp_helix_tense` (
  `tense_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_eng` varchar(255) NOT NULL,
  `name_tr` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`tense_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table english2.wp_helix_tense: ~12 rows (approximately)
DELETE FROM `wp_helix_tense`;
INSERT INTO `wp_helix_tense` (`tense_id`, `name_eng`, `name_tr`, `status`) VALUES
	(1, 'simple present tense', '', 1),
	(2, 'past progressive tense', '', 1),
	(3, 'past complete tense', '', 1),
	(4, 'past complete progressive tense', '', 1),
	(5, 'simple past tense', '', 1),
	(6, 'present progressive tense', '', 1),
	(7, 'present complete tense', '', 1),
	(8, 'present complete progressive tense', '', 1),
	(9, 'simple future tense', '', 1),
	(10, 'future progressive tense', '', 1),
	(11, 'future complete tense', '', 1),
	(12, 'future complete progressive tense', '', 1);

-- Dumping structure for table english2.wp_helix_vocable_level
CREATE TABLE IF NOT EXISTS `wp_helix_vocable_level` (
  `vocable_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`vocable_level_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- Dumping data for table english2.wp_helix_vocable_level: ~4 rows (approximately)
DELETE FROM `wp_helix_vocable_level`;
INSERT INTO `wp_helix_vocable_level` (`vocable_level_id`, `name`, `status`) VALUES
	(1, 'olumlu', 1),
	(2, 'olumsuz', 1),
	(3, 'olumlu soru ', 1),
	(4, 'olumsuz soru', 1);

-- Dumping structure for table english2.wp_helix_words
CREATE TABLE IF NOT EXISTS `wp_helix_words` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `vocable_level_id` bigint(20) DEFAULT NULL,
  `level_cat_id` int(11) DEFAULT NULL,
  `tense_id` bigint(20) DEFAULT NULL,
  `main_language` longtext DEFAULT NULL,
  `main_language_json` longtext DEFAULT NULL,
  `translate` longtext DEFAULT NULL,
  `translate_json` longtext DEFAULT NULL,
  `is_json` tinyint(4) DEFAULT 0,
  `main_language_orginal` longtext DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `source` text DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `tr` (`main_language`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Dumping data for table english2.wp_helix_words: ~43 rows (approximately)
DELETE FROM `wp_helix_words`;
INSERT INTO `wp_helix_words` (`id`, `vocable_level_id`, `level_cat_id`, `tense_id`, `main_language`, `main_language_json`, `translate`, `translate_json`, `is_json`, `main_language_orginal`, `comment`, `source`, `status`) VALUES
	(72, 2, 2, 1, 'Would you mind if I borrow your book for a few days?', '[\n    "[helix_modalVerbs_sc value=\\u0027would\\u0027]",\n    "you",\n    "mind",\n    "if",\n    "i",\n    "borrow",\n    "your",\n    "book",\n    "[helix_preposition_sc value=\\u0027for\\u0027]",\n    "a",\n    "few",\n    "days?",\n    "a",\n    "b",\n    "c",\n    "d",\n    "e"\n]', 'Kitabınızı birkaç günlüğüne ödünç almamda bir sakınca var mı?', '[\n    "kitabınızı",\n    "birkaç",\n    "günlüğüne",\n    "ödünç",\n    "almamda",\n    "var",\n    "bir",\n    "sakınca",\n    "mı?"\n]', 1, NULL, '', NULL, 1),
	(73, 3, 2, 5, 'Where are the kids?', '[\n    "[helix_conjunction_sc value=\\u0027where\\u0027]",\n    "are",\n    "the",\n    "kids?"\n]', 'Çocuklar nerede?', '[\n    "nerede?",\n    "çocuklar"\n]', 1, NULL, '', 'test 4', 1),
	(94, 1, 2, 10, 'After I finish my homework, I’ll go for a walk.', '[\n    "[helix_conjunction_sc value=\\u0027after\\u0027]",\n    "i",\n    "finish",\n    "my",\n    "homework,",\n    "i ",\n    "will",\n    "go",\n    "[helix_preposition_sc value=\\u0027for\\u0027]",\n    "a",\n    "walk."\n]', 'Ödevimi bitirdikten sonra yürüyüşe çıkacağım.', '[\n    "sonra",\n    "ben",\n    "bitirdikten",\n    "benim",\n    "ödevimi",\n    "yapacagim",\n    "çıkacağım \\/gidecegim ",\n    "icin",\n    "bir",\n    "yürüyüşe"\n]', 1, NULL, '', NULL, 1),
	(95, 1, 2, 5, 'Before we go out, we need to get changed.', '[\n    "[helix_conjunction_sc value=\\u0027before\\u0027]",\n    "we",\n    "go",\n    "out,",\n    "we",\n    "need",\n    "[helix_preposition_sc value=\\u0027to\\u0027]",\n    "get",\n    "changed."\n]', 'Dışarı çıkmadan önce üstümüzü değiştirmemiz gerekiyor.', '[\n    "dışarı",\n    "çıkmadan",\n    "önce",\n    "üstümüzü",\n    "değiştirmemiz",\n    "gerekiyor."\n]', 1, NULL, '', '', 1),
	(96, 1, 2, 3, 'She did her homework before dinner.', '[\n    "she",\n    "did",\n    "her",\n    "homework",\n    "[helix_conjunction_sc value=\\u0027before\\u0027]",\n    "dinner."\n]', 'Akşam yemeğinden önce ödevini yaptı.', '[\n    "akşam",\n    "yemeğinden",\n    "önce",\n    "ödevini",\n    "yaptı."\n]', 1, NULL, '', NULL, 1),
	(97, 1, 1, 5, 'plastiklerin %5\\\'i geri dönüştürülebilir', '[\n    "plastiklerin",\n    "%5\\u0027i",\n    "geri",\n    "dönüştürülebilir"\n]', '5% of plastics are recyclables', '[\n    "5%",\n    "of",\n    "plastics",\n    "are",\n    "recyclables"\n]', 0, NULL, '', '', 1),
	(98, 1, 1, 1, 'By the time', NULL, '', NULL, 0, NULL, NULL, NULL, 1),
	(99, 1, 1, 1, 'Not yet', NULL, '', NULL, 0, NULL, NULL, NULL, 1),
	(100, 1, 1, 1, 'From the time she was thirteen', '[\n    "[helix_preposition value=\\u0027from\\u0027]",\n    "the",\n    "time",\n    "she",\n    "was",\n    "thirteen"\n]', 'On üç yaşından beri', '[\n    "from - dan anlami verir",\n    "beri - yada - itibaren",\n    "o - |kiz|",\n    "was - oldugundan",\n    "on üç",\n    "yaşından"\n]', 0, NULL, '', NULL, 1),
	(101, 1, 1, 1, 'İf I was you', NULL, '', NULL, 0, NULL, NULL, NULL, 1),
	(102, 1, 1, 1, 'It happens when I do it with my hand', '[\n    "it",\n    "happens",\n    "[helix_conjunction value=\\u0027when\\u0027]",\n    "i",\n    "do",\n    "it",\n    "[helix_preposition value=\\u0027with\\u0027]",\n    "my",\n    "hand"\n]', 'elim ile yapınca oluyor', '[\n    "o ",\n    "oluyor ",\n    "ne zaman ",\n    "ben",\n    "yaparam",\n    "onu ",\n    "ile",\n    "benim",\n    "elimle "\n]', 0, NULL, '', NULL, 1),
	(103, 1, 1, 1, 'I\\\'m sleepy', NULL, 'Bundan emin değilim feeling konusu arastir', NULL, 0, NULL, NULL, NULL, 1),
	(104, 1, 3, 1, 'Poly wrote me a letter saying that you were coming in the evening', '[\n    "poly",\n    "wrote",\n    "me",\n    "a",\n    "letter",\n    "saying",\n    "[helix_conjunction_sc value=\\u0027that\\u0027]",\n    "you",\n    "were",\n    "coming",\n    "[helix_prepositionsOfTime_sc value=\\u0027in\\u0027]",\n    "the",\n    "evening"\n]', 'poly mektup yazıp senin akşam geleceğini söylemişti', '[\n    "poly",\n    "mektup",\n    "yazıp",\n    "senin",\n    "akşam",\n    "geleceğini",\n    "söylemişti"\n]', 1, NULL, 'Hayır, bu ifade “simple present” tense’e ait değil. “Poly wrote me a letter saying that you were coming in the evening” cümlesinde kullanılan zamanlar **simple past tense** (“wrote”) ve **past continuous tense** (“were coming”). \r\n\r\nBu cümle geçmişte gerçekleşen bir olaydan bahsediyor: Poly’nin bir mektup yazdığı an ve o sırada birinin akşam geleceğini söylediği durum. Daha fazla zamanla ilgili soruların varsa, sormaktan çekinme! 😊\r\n', NULL, 1),
	(105, 1, 2, 3, 'pop kidnapped me because of he wanted my money', NULL, 'babam beni kaçırdı çünkü paramı istiyordu', NULL, 0, NULL, NULL, NULL, 1),
	(106, 1, 1, 3, 'pop wanted my money so he kidnapped me', '[\n    "pop",\n    "wanted",\n    "my",\n    "money",\n    "so",\n    "he",\n    "kidnapped",\n    "me"\n]', 'Pop paramı istiyordu bu yüzden beni kaçırdı', '[\n    "pop",\n    "istiyordu ",\n    "benim ",\n    "paramı ",\n    "bu yüzden -so-",\n    "o",\n    "kaçırdı ",\n    "beni"\n]', 0, NULL, '', NULL, 1),
	(107, 1, 3, 3, 'I jumped out of the trees between the prisoners and two wild men', '[\n    "i",\n    "jumped",\n    "[helix_preposition value=\\u0027out\\u0027]",\n    "[helix_preposition value=\\u0027of\\u0027]",\n    "the",\n    "trees",\n    "[helix_preposition value=\\u0027between\\u0027]",\n    "the",\n    "prisoners",\n    "and",\n    "two",\n    "wild",\n    "men"\n]', 'Esir ile iki vahşi adam arasındaki ağaçların arasından önlerine atladım', '[\n    "ben",\n    "atladım ",\n    "dışarı ",\n    "of ---",\n    "ağaçların ",\n    "arasından",\n    "mahkumlarin",\n    "ve",\n    "iki",\n    "vahşi ",\n    "adamın "\n]', 0, NULL, 'Bu cümlede kullanılan İngilizce zaman **\\\\\\"Past Simple Tense\\\\\\"**dir. Cümlede geçmişte gerçekleşmiş ve tamamlanmış bir eylem ifade edilmektedir, örnek olarak \\\\\\"I jumped\\\\\\" (atladım) fiili kullanılmış. Bu zaman genellikle geçmişte yapılan bir şeyden bahsederken tercih edilir. Başka bir soru varsa yardımcı olmaktan memnuniyet duyarım! 😊', NULL, 1),
	(108, 1, 3, 5, 'The places I applied to wanted me to be fluent in English, so I was demoralized.', '[\n    "the",\n    "places",\n    "i",\n    "applied",\n    "[helix_preposition value=\\u0027to\\u0027]",\n    "wanted",\n    "me",\n    "[helix_preposition value=\\u0027to\\u0027]",\n    "be",\n    "fluent",\n    "[helix_prepositionsOfTime value=\\u0027in\\u0027]",\n    "english,",\n    "so",\n    "i",\n    "was",\n    "demoralized."\n]', 'iş başvuru yaptığım yerler benden akıcı İngilizce istediler, bu yüzden moralim bozuldu', '[\n    "yerler",\n    "ben",\n    "basvurdugum",\n    "to",\n    "istediler",\n    "benden",\n    "olmasini",\n    "akici",\n    "ingilizce",\n    "bu yüzden",\n    "oldu - olmus",\n    "moralim bozuldu"\n]', 0, NULL, '', NULL, 1),
	(109, 1, 1, 1, 'artificial intelligence consists of 5 stages', '[\n    "artificial",\n    "intelligence",\n    "consists",\n    "[helix_preposition value=\\u0027of\\u0027]",\n    "5",\n    "stages"\n]', 'yapay zeka 5 aşamadan oluşur', '[\n    "yapay",\n    "zeka",\n    "olusur",\n    "of -| baglac",\n    "5",\n    "asamadan"\n]', 0, NULL, '', NULL, 1),
	(110, 1, 2, 5, 'a woman woke up during the night and found that her husband was not bed', '[\n    "a",\n    "woman",\n    "woke",\n    "[helix_preposition value=\\u0027up\\u0027]",\n    "[helix_prepositionsOfTime value=\\u0027during\\u0027]",\n    "the",\n    "night",\n    "and",\n    "found",\n    "[helix_conjunction value=\\u0027that\\u0027]",\n    "her",\n    "husband",\n    "was",\n    "not",\n    "bed"\n]', 'bir kadın gece uyandığında kocasının yatakta olmadığını gördü', '[\n    "bir",\n    "kadın",\n    "uyandığında - during sirasinda anlami verir",\n    "gece -ve-",\n    "gordu -found - saw ayni anlama gelir",\n    "bunu",\n    "onun",\n    "esi",\n    "yoktu",\n    "yatakta"\n]', 0, NULL, '', NULL, 1),
	(111, 1, 1, 1, 'how many user there are', NULL, 'kac kullanici var ?', NULL, 0, NULL, NULL, NULL, 1),
	(112, 1, 1, 1, 'I have ticket number', '[\n    "i",\n    "have",\n    "ticket",\n    "number"\n]', 'sira numaram var', '[\n    "sira",\n    "numaram",\n    "var"\n]', 0, NULL, '', NULL, 1),
	(113, 1, 3, 3, 'Massive fire sends plume of smoke across San Diego', '[\n    "massive",\n    "fire",\n    "sends",\n    "plume",\n    "[helix_preposition value=\\u0027of\\u0027]",\n    "smoke",\n    "[helix_preposition value=\\u0027across\\u0027]",\n    "san",\n    "diego"\n]', 'Büyük yangın San Diego ya duman bulutu gönderdi', '[\n    "büyük",\n    "yangın",\n    "gönderdi",\n    "bulutu",\n    "duman",\n    "san diego  ya"\n]', 0, NULL, '', NULL, 1),
	(115, 2, 2, 2, 'can you make my car fix ?', '[\n    "[helix_modalVerbs_sc value=\\u0027can\\u0027]",\n    "you",\n    "make",\n    "my",\n    "car",\n    "fix",\n    "?"\n]', 'arabamı tamir edebilir misin?', '[\n    "yapabilir misin ",\n    "sen",\n    "yapmak",\n    "benim ",\n    "arabamı",\n    "tamir"\n]', 0, NULL, '', '', 1),
	(119, 1, 1, 1, 'Open the window', '[\n    "open",\n    "the",\n    "window"\n]', 'Pencereyi aç', '[\n    "aç",\n    "pencereyi"\n]', 1, NULL, '', 'copilot,ai', 1),
	(120, 1, 1, 1, 'Wash your hands', '[\n    "wash",\n    "your",\n    "hands"\n]', 'Ellerini yıka', '[\n    "yıka",\n    "senin",\n    "ellerini"\n]', 1, NULL, '', 'copilot,ai', 1),
	(121, 1, 1, 1, 'Start the engine', '[\n    "start",\n    "the",\n    "engine"\n]', 'Motoru çalıştır', '[\n    "çalıştır",\n    "motoru"\n]', 1, NULL, '', 'copilot,ai', 1),
	(122, 1, 1, 1, 'Read this book', '[\n    "read",\n    "this",\n    "book"\n]', 'Bu kitabı oku', '[\n    "oku",\n    "bu",\n    "kitabı"\n]', 1, NULL, '', 'copilot,ai', 1),
	(123, 1, 1, 1, 'Close the door', '[\n    "close",\n    "the",\n    "door"\n]', 'Kapıyı kapat', '[\n    "kapat",\n    "kapıyı"\n]', 1, NULL, '', 'copilot,ai', 1),
	(124, 1, 1, 1, 'Dogs chase cars', '[\n    "dogs",\n    "chase",\n    "cars"\n]', 'Köpekler arabaları kovalar', '[\n    "köpekler",\n    "kovalar",\n    "arabaları"\n]', 1, NULL, '', 'copilot,ai', 1),
	(125, 1, 1, 1, 'Birds build nests', '[\n    "birds",\n    "build",\n    "nests"\n]', 'Kuşlar yuva yapar', '[\n    "kuşlar",\n    "yapar",\n    "yuva"\n]', 1, NULL, '', 'copilot,ai', 1),
	(126, 1, 1, 1, 'People love music', '[\n    "people",\n    "love",\n    "music"\n]', 'İnsanlar müziği sever', '[\n    "i̇nsanlar",\n    "sever",\n    "müziği"\n]', 1, NULL, '', 'copilot,ai', 1),
	(127, 1, 1, 1, 'Children read books', '[\n    "children",\n    "read",\n    "books"\n]', 'Çocuklar kitap okur', '[\n    "çocuklar",\n    "okur",\n    "kitap"\n]', 1, NULL, '', 'copilot,ai', 1),
	(128, 1, 1, 1, 'Cats catch mice', '[\n    "cats",\n    "catch",\n    "mice"\n]', 'Kediler fareleri yakalar', '[\n    "kediler",\n    "yakalar",\n    "fareleri"\n]', 1, NULL, '', 'copilot,ai', 1),
	(130, 1, 2, 1, 'Bu \\"örnek\\" bir shan\\\'t, shall \\\'not, metin ve içinde \\\'tırnak\\\' var. shall \\\' not The shall \\\'not Ukrainian will\\\'not , could Att shall \\\'not acks That could\\\' not Are will not Forcing will\\\' not Russia to will Ration Its Fuel shan\\\'t be shall \\\' not', '[\n    "the",\n    "ukrainian",\n    "attacks",\n    "[helix_conjunction_sc value=\\u0027that\\u0027]",\n    "are",\n    "forcing",\n    "russia",\n    "[helix_preposition_sc value=\\u0027to\\u0027]",\n    "ration",\n    "its",\n    "fuel",\n    "[helix_modalVerbs_sc value=\\u0027can\\u0027]",\n    "be"\n]', 'Bu \\"örnek\\" bir shan\\\'t, shall \\\'not,t metin ve içinde \\\'tırnak\\\' var. shall \\\' no The shall \\\'not Ukrainian will\\\'not , could Att shall \\\'not acks That could\\\' not Are will not Forcing will\\\' not Russia to will Ration Its shan\\\'t Fuel can be shall \\\' not', '[\n    "ukrayna\\u0027nın",\n    "rusya\\u0027yı",\n    "yakıt",\n    "tasarrufuna",\n    "zorlayan",\n    "saldırıları"\n]', 1, NULL, '', '', 1),
	(131, 1, 1, 1, 'Bu \\"örnek\\" bir metin ve içinde \\\\\\\'tırnak\\\\\\\' var.', NULL, 'Bu \\"örnek\\" bir metin ve içinde \\\\\\\'tırnak\\\\\\\' var.', NULL, 0, NULL, NULL, '', 1),
	(132, 1, 1, 1, 'Although you may try your best, you may not succeed immediately; you shall \\\' not,shall \\\' not and shan\\\'t give up, even if you couldn\\\'t solve the problem before because you can learn, and you will not stop improving.', '', 'Ne kadar çabalarsanız çabalayın, hemen başarılı olamayabilirsiniz; daha önce çözemediğiniz bir sorunu bile olsa, pes etmeyin; çünkü öğrenebilirsiniz ve gelişmeyi bırakmazsınız.', '', 0, NULL, '', '', 1),
	(134, 1, 1, 1, 'test data -- Although you may try your best, you may not succeed immediately; you shall not give up, even if you couldn\'t solve the problem before because you can learn, and you will not stop improving.', '', 'Ne kadar çabalarsanız çabalayın, hemen başarılı olamayabilirsiniz; daha önce çözemediğiniz bir sorunu bile olsa, pes etmeyin; çünkü öğrenebilirsiniz ve gelişmeyi bırakmazsınız.', '', 0, NULL, '', '', 1),
	(135, 1, 4, 1, 'Although you may try your best, you may not succeed immediately; you shall not, shall not and shall not give up, even if you couldn\'t solve the problem before because you can learn, and you will not stop improving.', '[\n    "Although",\n    "you",\n    "[helix_modalVerbs_sc id=\\u002718\\u0027  value=\\u0027may\\u0027]",\n    "try",\n    "your",\n    "best,",\n    "you",\n    "[helix_modalVerbs_sc id=\\u002717\\u0027  value=\\u0027may not\\u0027]",\n    "succeed",\n    "immediately;",\n    "you",\n    "[helix_modalVerbs_sc id=\\u002714\\u0027  value=\\u0027shall not\\u0027]",\n    "[helix_modalVerbs_sc id=\\u002714\\u0027  value=\\u0027shall not\\u0027]",\n    "and",\n    "[helix_modalVerbs_sc id=\\u002714\\u0027  value=\\u0027shall not\\u0027]",\n    "give",\n    "up,",\n    "even",\n    "if",\n    "you",\n    "[helix_modalVerbs_sc id=\\u00275\\u0027  value=\\u0027couldn\\u0027t\\u0027]",\n    "solve",\n    "the",\n    "problem",\n    "[helix_preposition_sc id=\\u002757\\u0027  value=\\u0027before\\u0027]",\n    "because",\n    "you",\n    "[helix_modalVerbs_sc id=\\u00271\\u0027  value=\\u0027can\\u0027]",\n    "learn,",\n    "and",\n    "you",\n    "[helix_modalVerbs_sc id=\\u00278\\u0027  value=\\u0027will not\\u0027]",\n    "stop",\n    "improving."\n]', 'Ne kadar çabalarsanız çabalayın, hemen başarılı olamayabilirsiniz; daha önce çözemediğiniz bir sorunu bile olsa, pes etmeyin; çünkü öğrenebilirsiniz ve gelişmeyi bırakmazsınız.', '[\n    "olamayabilirsiniz;",\n    "kadar",\n    "ne",\n    "çabalayın,",\n    "hemen",\n    "başarılı",\n    "çabalarsanız",\n    "daha",\n    "önce",\n    "çözemediğiniz",\n    "bir",\n    "sorunu",\n    "bile",\n    "olsa,",\n    "pes",\n    "etmeyin;",\n    "çünkü",\n    "öğrenebilirsiniz",\n    "ve",\n    "gelişmeyi",\n    "bırakmazsınız."\n]', 1, 'Although you may try your best, you may not succeed immediately; you shall not, shall not and shall not give up, even if you couldn\'t solve the problem before because you can learn, and you will not stop improving.', '', '', 1),
	(136, 1, 1, 1, 'couldn\\\'t solve the problem', '[\n    "[helix_modalVerbs_sc id=\\u00275\\u0027  value=\\u0027couldn\\u0027t\\u0027]",\n    "solve",\n    "the",\n    "problem"\n]', 'problem cozulemedi', '[\n    "ben",\n    "cozemedim",\n    "problemi"\n]', 1, 'couldn\\\'t solve the problem', '', '', 1),
	(137, 1, 1, 1, 'The alarm went off and I woke up', '[\n    "The",\n    "alarm",\n    "went",\n    "[helix_preposition_sc id=\\u002768\\u0027  value=\\u0027off\\u0027]",\n    "and",\n    "I",\n    "woke",\n    "up"\n]', 'Alarm çaldı ve uyandım', '[\n    "alarm",\n    "çaldı",\n    "ve",\n    "uyandım"\n]', 1, 'The alarm went off and I woke up', '', '', 1),
	(138, 1, 1, 5, 'I brushed my teeth', '[\n    "I",\n    "brushed",\n    "my",\n    "teeth"\n]', 'Dişlerimi fırçaladım', '[\n    "ben",\n    "fırçaladım",\n    "benim",\n    "dişlerimi"\n]', 1, 'I brushed my teeth', '', '', 1),
	(139, 1, 1, 1, 'I brush my teeth every morning', NULL, 'Her sabah dişlerimi fırçalarım', NULL, 0, 'I brush my teeth every morning', NULL, '', 1),
	(140, 1, 1, 5, 'I brushed my teeth a moment ago.', NULL, 'Az önce dişlerimi fırçaladım.', NULL, 0, 'I brushed my teeth a moment ago.', NULL, '', 1),
	(142, 1, 3, 5, 'He previously knew that a lot of trucks in London used to carry soldiers from Charles Square to the coast.', '[\n    "He",\n    "previously",\n    "knew",\n    "[helix_conjunction_sc id=\\u0027104\\u0027  value=\\u0027that\\u0027]",\n    "a",\n    "lot",\n    "[helix_preposition_sc id=\\u002729\\u0027  value=\\u0027of\\u0027]",\n    "trucks",\n    "[helix_prepositionsOfTime_sc id=\\u002797\\u0027  value=\\u0027in\\u0027]",\n    "London",\n    "carry",\n    "soldiers",\n    "[helix_preposition_sc id=\\u002735\\u0027  value=\\u0027from\\u0027]",\n    "Charles",\n    "Square",\n    "[helix_preposition_sc id=\\u002750\\u0027  value=\\u0027to\\u0027]",\n    "the",\n    "coast."\n]', 'Londra\\\'da Charles Meydanı\\\'ndan sahile asker taşıyan çok sayıda kamyonun olduğunu daha önceden biliyordu.', '[\n    "o ",\n    "biliyordu.",\n    "daha onceden",\n    "bunu {neyi biliyordu onu that baglacina soracagiz}",\n    "çok sayıda",\n    "kamyonun",\n    "londra {yi bulmak icin nerede diye soracagiz , zaman mekan hep sonda olur} IN ",\n    "londra\\\\\\\\\\\\\\\\\\u0027da",\n    "olduğunu - used to ",\n    "taşıyan",\n    "asker",\n    "nereden diye soracagiz  {from nereden nereye anlami verir} bunu fromdan seklinde ezberleyin yer - from dan anlami verir",\n    "charles",\n    "meydanı\\\\\\\\\\\\\\\\\\u0027ndan",\n    "sahile"\n]', 1, 'He already knew that a lot of trucks in London carry soldiers from Charles Square to the coast.', '', '', 1),
	(143, 1, 3, 5, 'I did develop rest API project that get data from accounting module and it pdf generate specialy usa and india', '[\n    "I",\n    "did",\n    "develop",\n    "rest",\n    "API",\n    "project",\n    "[helix_conjunction_sc id=\\u0027104\\u0027  value=\\u0027that\\u0027]",\n    "get",\n    "data",\n    "[helix_preposition_sc id=\\u002735\\u0027  value=\\u0027from\\u0027]",\n    "accounting",\n    "module",\n    "and",\n    "it",\n    "pdf",\n    "generate",\n    "specialy",\n    "usa",\n    "and",\n    "india"\n]', 'Muhasebe modülünden veri alan ve özellikle ABD ve Hindistan için PDF üreten bir REST API projesi geliştirdim.', '[\n    "ben",\n    "yaptim (did gecmis zamani var )",\n    "geliştirdim.",\n    "{neyi gelistirdim - bu soruyu sor hemen aklindan}",\n    "rest api",\n    "projesi",\n    "get - bu alir -alan { ne alir diye soruyoruz}",\n    "that baglaci - bu ne geldigini baglamak icin var ",\n    "veri",\n    "muhasebe",\n    "modülünden",\n    "ve",\n    "üreten -uretir ",\n    "özellikle",\n    "hindistan",\n    "ve",\n    "abd",\n    "için",\n    "pdf"\n]', 1, 'I did develop rest API project that get data from accounting module and it pdf generate specialy usa and india', '', 'bu mukemmle bir ornek,', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

-- Adminer 5.4.2 MySQL 8.0.45 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `wp_helix_grammer`;
CREATE TABLE `wp_helix_grammer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ranking_number` int NOT NULL,
  `word` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `encrypt_word` longtext COLLATE utf8mb4_unicode_520_ci,
  `alternatives` longtext COLLATE utf8mb4_unicode_520_ci,
  `comment` longtext COLLATE utf8mb4_unicode_520_ci,
  `link` text COLLATE utf8mb4_unicode_520_ci,
  `type` char(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `shortcode` char(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


DROP TABLE IF EXISTS `wp_helix_level_categories`;
CREATE TABLE `wp_helix_level_categories` (
  `level_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `wp_helix_level_categories` (`level_id`, `name`, `status`) VALUES
(1,	'Basit',	1),
(2,	'Orta',	1),
(3,	'Zor',	1),
(4,	'kompleks',	1);

DROP TABLE IF EXISTS `wp_helix_level_categories_record`;
CREATE TABLE `wp_helix_level_categories_record` (
  `record_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `word_id` bigint DEFAULT NULL,
  `level_id` bigint DEFAULT '0',
  PRIMARY KEY (`record_id`) USING BTREE,
  KEY `level_id` (`level_id`) USING BTREE,
  KEY `categories_record_id` (`record_id`) USING BTREE,
  KEY `level_id_idx` (`level_id`),
  KEY `categories_record_id_idx` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_helix_level_categories_record` (`record_id`, `word_id`, `level_id`) VALUES
(167,	0,	2),
(168,	0,	3),
(169,	0,	5),
(170,	0,	6),
(173,	92,	3),
(174,	92,	4),
(248,	87,	1),
(249,	87,	2),
(250,	87,	3),
(251,	87,	4),
(311,	93,	1),
(312,	93,	2),
(313,	93,	3),
(314,	94,	1),
(318,	72,	1),
(320,	96,	1),
(321,	97,	4),
(323,	101,	1),
(324,	102,	1),
(325,	103,	8),
(328,	104,	1),
(329,	104,	2),
(330,	105,	1),
(331,	105,	2),
(333,	106,	1),
(335,	107,	6),
(337,	109,	1),
(339,	110,	6),
(341,	108,	1),
(342,	111,	1),
(343,	112,	1),
(344,	100,	2),
(345,	113,	1),
(347,	73,	1),
(348,	114,	2),
(350,	115,	2),
(351,	116,	1),
(356,	117,	2),
(357,	118,	1),
(358,	118,	4),
(359,	118,	5),
(360,	95,	1),
(361,	95,	2),
(374,	122,	9),
(375,	122,	10),
(378,	119,	9),
(379,	119,	10),
(380,	121,	9),
(381,	121,	10),
(382,	120,	9),
(383,	120,	10),
(384,	123,	9),
(385,	123,	10),
(386,	124,	9),
(387,	124,	10),
(388,	125,	9),
(389,	125,	10),
(390,	126,	9),
(391,	126,	10),
(392,	128,	9),
(393,	128,	10),
(394,	127,	9),
(395,	127,	10);

DROP TABLE IF EXISTS `wp_helix_speak_level_categories`;
CREATE TABLE `wp_helix_speak_level_categories` (
  `level_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `wp_helix_speak_level_categories` (`level_id`, `name`, `status`) VALUES
(1,	'Gunluk Konusma',	1),
(2,	'Zaman Iceren Konusma ',	1),
(3,	'Seyahat',	1),
(4,	'Alisveris',	1),
(5,	'is Hayati',	1),
(6,	'Kitap',	1),
(7,	'Ilk 5000',	1),
(8,	'doğru bilinen yanlışlar ',	1),
(9,	'Ders 1',	1),
(10,	'3 kelimelik basit ',	1);

DROP TABLE IF EXISTS `wp_helix_tense`;
CREATE TABLE `wp_helix_tense` (
  `tense_id` int NOT NULL AUTO_INCREMENT,
  `name_eng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name_tr` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`tense_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `wp_helix_tense` (`tense_id`, `name_eng`, `name_tr`, `status`) VALUES
(1,	'simple present tense',	'',	1),
(2,	'past progressive tense',	'',	1),
(3,	'past complete tense',	'',	1),
(4,	'past complete progressive tense',	'',	1),
(5,	'simple past tense',	'',	1),
(6,	'present progressive tense',	'',	1),
(7,	'present complete tense',	'',	1),
(8,	'present complete progressive tense',	'',	1),
(9,	'simple future tense',	'',	1),
(10,	'future progressive tense',	'',	1),
(11,	'future complete tense',	'',	1),
(12,	'future complete progressive tense',	'',	1);

DROP TABLE IF EXISTS `wp_helix_vocable_level`;
CREATE TABLE `wp_helix_vocable_level` (
  `vocable_level_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`vocable_level_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `wp_helix_vocable_level` (`vocable_level_id`, `name`, `status`) VALUES
(1,	'olumlu',	1),
(2,	'olumsuz',	1),
(3,	'olumlu soru ',	1),
(4,	'olumsuz soru',	1);

DROP TABLE IF EXISTS `wp_helix_words`;
CREATE TABLE `wp_helix_words` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `vocable_level_id` bigint DEFAULT NULL,
  `level_cat_id` int DEFAULT NULL,
  `tense_id` bigint DEFAULT NULL,
  `main_language` longtext COLLATE utf8mb4_unicode_520_ci,
  `main_language_json` longtext COLLATE utf8mb4_unicode_520_ci,
  `translate` longtext COLLATE utf8mb4_unicode_520_ci,
  `translate_json` longtext COLLATE utf8mb4_unicode_520_ci,
  `is_json` tinyint DEFAULT '0',
  `comment` longtext COLLATE utf8mb4_unicode_520_ci,
  `source` text COLLATE utf8mb4_unicode_520_ci,
  `main_language_orginal` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `tr` (`main_language`(191)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_helix_words` (`id`, `vocable_level_id`, `level_cat_id`, `tense_id`, `main_language`, `main_language_json`, `translate`, `translate_json`, `is_json`, `comment`, `source`, `main_language_orginal`, `status`) VALUES
(72,	2,	2,	1,	'Would you mind if I borrow your book for a few days?',	'[\n    \"[helix_modalVerbs_sc value=\\u0027would\\u0027]\",\n    \"you\",\n    \"mind\",\n    \"if\",\n    \"i\",\n    \"borrow\",\n    \"your\",\n    \"book\",\n    \"[helix_preposition_sc value=\\u0027for\\u0027]\",\n    \"a\",\n    \"few\",\n    \"days?\"\n]',	'Kitabınızı birkaç günlüğüne ödünç almamda bir sakınca var mı?',	'[\n    \"kitabınızı\",\n    \"birkaç\",\n    \"günlüğüne\",\n    \"ödünç\",\n    \"almamda\",\n    \"bir\",\n    \"sakınca\",\n    \"var\",\n    \"mı?\"\n]',	1,	'',	NULL,	NULL,	1),
(73,	3,	2,	5,	'Where are the kids?',	'[\n    \"[helix_conjunction_sc value=\\u0027where\\u0027]\",\n    \"are\",\n    \"the\",\n    \"kids?\"\n]',	'Çocuklar nerede?',	'[\n    \"nerede?\",\n    \"çocuklar\"\n]',	1,	'',	'test 4',	NULL,	1),
(94,	1,	2,	10,	'After I finish my homework, I’ll go for a walk.',	'[\n    \"[helix_conjunction value=\\u0027after\\u0027]\",\n    \"i\",\n    \"finish\",\n    \"my\",\n    \"homework,\",\n    \" I \",\n    \"will \",\n    \"go \",\n    \" [helix_preposition value=\\u0027for\\u0027]\",\n    \"a \",\n    \"walk.\"\n]',	'Ödevimi bitirdikten sonra yürüyüşe çıkacağım.',	'[\n    \"sonra \",\n    \"ben\",\n    \"bitirdikten \",\n    \"benim\",\n    \"odevimi\",\n    \"ben\",\n    \"yapacagim\",\n    \"gitmek\",\n    \"icin\",\n    \"bir\",\n    \"yuruyuse\"\n]',	0,	'',	NULL,	NULL,	1),
(95,	1,	2,	5,	'Before we go out, we need to get changed.',	'[\n    \"[helix_conjunction_sc value=\\u0027before\\u0027]\",\n    \"we\",\n    \"go\",\n    \"out,\",\n    \"we\",\n    \"need\",\n    \"[helix_preposition_sc value=\\u0027to\\u0027]\",\n    \"get\",\n    \"changed.\"\n]',	'Dışarı çıkmadan önce üstümüzü değiştirmemiz gerekiyor.',	'[\n    \"dışarı\",\n    \"çıkmadan\",\n    \"önce\",\n    \"üstümüzü\",\n    \"değiştirmemiz\",\n    \"gerekiyor.\"\n]',	1,	'',	'',	NULL,	1),
(96,	1,	2,	3,	'She did her homework before dinner.',	'[\n    \"she\",\n    \"did\",\n    \"her\",\n    \"homework\",\n    \"[helix_conjunction_sc value=\\u0027before\\u0027]\",\n    \"dinner.\"\n]',	'Akşam yemeğinden önce ödevini yaptı.',	'[\n    \"akşam\",\n    \"yemeğinden\",\n    \"önce\",\n    \"ödevini\",\n    \"yaptı.\"\n]',	1,	'',	NULL,	NULL,	1),
(97,	1,	1,	5,	'plastiklerin %5\\\'i geri dönüştürülebilir',	'[\n    \"plastiklerin\",\n    \"%5\\u0027i\",\n    \"geri\",\n    \"dönüştürülebilir\"\n]',	'5% of plastics are recyclables',	'[\n    \"5%\",\n    \"of\",\n    \"plastics\",\n    \"are\",\n    \"recyclables\"\n]',	0,	'',	NULL,	NULL,	1),
(98,	1,	1,	1,	'By the time',	NULL,	'',	NULL,	0,	NULL,	NULL,	NULL,	1),
(99,	1,	1,	1,	'Not yet',	NULL,	'',	NULL,	0,	NULL,	NULL,	NULL,	1),
(100,	1,	1,	1,	'From the time she was thirteen',	'[\n    \"[helix_preposition value=\\u0027from\\u0027]\",\n    \"the\",\n    \"time\",\n    \"she\",\n    \"was\",\n    \"thirteen\"\n]',	'On üç yaşından beri',	'[\n    \"from - dan anlami verir\",\n    \"beri - yada - itibaren\",\n    \"o - |kiz|\",\n    \"was - oldugundan\",\n    \"on üç\",\n    \"yaşından\"\n]',	0,	'',	NULL,	NULL,	1),
(101,	1,	1,	1,	'İf I was you',	NULL,	'',	NULL,	0,	NULL,	NULL,	NULL,	1),
(102,	1,	1,	1,	'It happens when I do it with my hand',	'[\n    \"it\",\n    \"happens\",\n    \"[helix_conjunction value=\\u0027when\\u0027]\",\n    \"i\",\n    \"do\",\n    \"it\",\n    \"[helix_preposition value=\\u0027with\\u0027]\",\n    \"my\",\n    \"hand\"\n]',	'elim ile yapınca oluyor',	'[\n    \"o \",\n    \"oluyor \",\n    \"ne zaman \",\n    \"ben\",\n    \"yaparam\",\n    \"onu \",\n    \"ile\",\n    \"benim\",\n    \"elimle \"\n]',	0,	'',	NULL,	NULL,	1),
(103,	1,	1,	1,	'I\\\'m sleepy',	NULL,	'Bundan emin değilim feeling konusu arastir',	NULL,	0,	NULL,	NULL,	NULL,	1),
(104,	1,	3,	1,	'Poly wrote me a letter saying that you were coming in the evening',	'[\n    \"poly\",\n    \"wrote\",\n    \"me\",\n    \"a\",\n    \"letter\",\n    \"saying\",\n    \"[helix_conjunction_sc value=\\u0027that\\u0027]\",\n    \"you\",\n    \"were\",\n    \"coming\",\n    \"[helix_prepositionsOfTime_sc value=\\u0027in\\u0027]\",\n    \"the\",\n    \"evening\"\n]',	'poly mektup yazıp senin akşam geleceğini söylemişti',	'[\n    \"poly\",\n    \"mektup\",\n    \"yazıp\",\n    \"senin\",\n    \"akşam\",\n    \"geleceğini\",\n    \"söylemişti\"\n]',	1,	'Hayır, bu ifade “simple present” tense’e ait değil. “Poly wrote me a letter saying that you were coming in the evening” cümlesinde kullanılan zamanlar **simple past tense** (“wrote”) ve **past continuous tense** (“were coming”). \r\n\r\nBu cümle geçmişte gerçekleşen bir olaydan bahsediyor: Poly’nin bir mektup yazdığı an ve o sırada birinin akşam geleceğini söylediği durum. Daha fazla zamanla ilgili soruların varsa, sormaktan çekinme! 😊\r\n',	NULL,	NULL,	1),
(105,	1,	2,	3,	'pop kidnapped me because of he wanted my money',	NULL,	'babam beni kaçırdı çünkü paramı istiyordu',	NULL,	0,	NULL,	NULL,	NULL,	1),
(106,	1,	1,	3,	'pop wanted my money so he kidnapped me',	'[\n    \"pop\",\n    \"wanted\",\n    \"my\",\n    \"money\",\n    \"so\",\n    \"he\",\n    \"kidnapped\",\n    \"me\"\n]',	'Pop paramı istiyordu bu yüzden beni kaçırdı',	'[\n    \"pop\",\n    \"istiyordu \",\n    \"benim \",\n    \"paramı \",\n    \"bu yüzden -so-\",\n    \"o\",\n    \"kaçırdı \",\n    \"beni\"\n]',	0,	'',	NULL,	NULL,	1),
(107,	1,	3,	3,	'I jumped out of the trees between the prisoners and two wild men',	'[\n    \"i\",\n    \"jumped\",\n    \"[helix_preposition value=\\u0027out\\u0027]\",\n    \"[helix_preposition value=\\u0027of\\u0027]\",\n    \"the\",\n    \"trees\",\n    \"[helix_preposition value=\\u0027between\\u0027]\",\n    \"the\",\n    \"prisoners\",\n    \"and\",\n    \"two\",\n    \"wild\",\n    \"men\"\n]',	'Esir ile iki vahşi adam arasındaki ağaçların arasından önlerine atladım',	'[\n    \"ben\",\n    \"atladım \",\n    \"dışarı \",\n    \"of ---\",\n    \"ağaçların \",\n    \"arasından\",\n    \"mahkumlarin\",\n    \"ve\",\n    \"iki\",\n    \"vahşi \",\n    \"adamın \"\n]',	0,	'Bu cümlede kullanılan İngilizce zaman **\\\\\\\"Past Simple Tense\\\\\\\"**dir. Cümlede geçmişte gerçekleşmiş ve tamamlanmış bir eylem ifade edilmektedir, örnek olarak \\\\\\\"I jumped\\\\\\\" (atladım) fiili kullanılmış. Bu zaman genellikle geçmişte yapılan bir şeyden bahsederken tercih edilir. Başka bir soru varsa yardımcı olmaktan memnuniyet duyarım! 😊',	NULL,	NULL,	1),
(108,	1,	3,	5,	'The places I applied to wanted me to be fluent in English, so I was demoralized.',	'[\n    \"the\",\n    \"places\",\n    \"i\",\n    \"applied\",\n    \"[helix_preposition value=\\u0027to\\u0027]\",\n    \"wanted\",\n    \"me\",\n    \"[helix_preposition value=\\u0027to\\u0027]\",\n    \"be\",\n    \"fluent\",\n    \"[helix_prepositionsOfTime value=\\u0027in\\u0027]\",\n    \"english,\",\n    \"so\",\n    \"i\",\n    \"was\",\n    \"demoralized.\"\n]',	'iş başvuru yaptığım yerler benden akıcı İngilizce istediler, bu yüzden moralim bozuldu',	'[\n    \"yerler\",\n    \"ben\",\n    \"basvurdugum\",\n    \"to\",\n    \"istediler\",\n    \"benden\",\n    \"olmasini\",\n    \"akici\",\n    \"ingilizce\",\n    \"bu yüzden\",\n    \"oldu - olmus\",\n    \"moralim bozuldu\"\n]',	0,	'',	NULL,	NULL,	1),
(109,	1,	1,	1,	'artificial intelligence consists of 5 stages',	'[\n    \"artificial\",\n    \"intelligence\",\n    \"consists\",\n    \"[helix_preposition value=\\u0027of\\u0027]\",\n    \"5\",\n    \"stages\"\n]',	'yapay zeka 5 aşamadan oluşur',	'[\n    \"yapay\",\n    \"zeka\",\n    \"olusur\",\n    \"of -| baglac\",\n    \"5\",\n    \"asamadan\"\n]',	0,	'',	NULL,	NULL,	1),
(110,	1,	2,	5,	'a woman woke up during the night and found that her husband was not bed',	'[\n    \"a\",\n    \"woman\",\n    \"woke\",\n    \"[helix_preposition value=\\u0027up\\u0027]\",\n    \"[helix_prepositionsOfTime value=\\u0027during\\u0027]\",\n    \"the\",\n    \"night\",\n    \"and\",\n    \"found\",\n    \"[helix_conjunction value=\\u0027that\\u0027]\",\n    \"her\",\n    \"husband\",\n    \"was\",\n    \"not\",\n    \"bed\"\n]',	'bir kadın gece uyandığında kocasının yatakta olmadığını gördü',	'[\n    \"bir\",\n    \"kadın\",\n    \"uyandığında - during sirasinda anlami verir\",\n    \"gece -ve-\",\n    \"gordu -found - saw ayni anlama gelir\",\n    \"bunu\",\n    \"onun\",\n    \"esi\",\n    \"yoktu\",\n    \"yatakta\"\n]',	0,	'',	NULL,	NULL,	1),
(111,	1,	1,	1,	'how many user there are',	NULL,	'kac kullanici var ?',	NULL,	0,	NULL,	NULL,	NULL,	1),
(112,	1,	1,	1,	'I have ticket number',	'[\n    \"i\",\n    \"have\",\n    \"ticket\",\n    \"number\"\n]',	'sira numaram var',	'[\n    \"sira\",\n    \"numaram\",\n    \"var\"\n]',	0,	'',	NULL,	NULL,	1),
(113,	1,	3,	3,	'Massive fire sends plume of smoke across San Diego',	'[\n    \"massive\",\n    \"fire\",\n    \"sends\",\n    \"plume\",\n    \"[helix_preposition value=\\u0027of\\u0027]\",\n    \"smoke\",\n    \"[helix_preposition value=\\u0027across\\u0027]\",\n    \"san\",\n    \"diego\"\n]',	'Büyük yangın San Diego ya duman bulutu gönderdi',	'[\n    \"büyük\",\n    \"yangın\",\n    \"gönderdi\",\n    \"bulutu\",\n    \"duman\",\n    \"san diego  ya\"\n]',	0,	'',	NULL,	NULL,	1),
(115,	2,	2,	2,	'can you make my car fix ?',	'[\n    \"[helix_modalVerbs_sc value=\\u0027can\\u0027]\",\n    \"you\",\n    \"make\",\n    \"my\",\n    \"car\",\n    \"fix\",\n    \"?\"\n]',	'arabamı tamir edebilir misin?',	'[\n    \"yapabilir misin \",\n    \"sen\",\n    \"yapmak\",\n    \"benim \",\n    \"arabamı\",\n    \"tamir\"\n]',	0,	'',	'',	NULL,	1),
(119,	1,	1,	1,	'Open the window',	'[\n    \"open\",\n    \"the\",\n    \"window\"\n]',	'Pencereyi aç',	'[\n    \"aç\",\n    \"pencereyi\"\n]',	1,	'',	'copilot,ai',	NULL,	1),
(120,	1,	1,	1,	'Wash your hands',	'[\n    \"wash\",\n    \"your\",\n    \"hands\"\n]',	'Ellerini yıka',	'[\n    \"yıka\",\n    \"senin\",\n    \"ellerini\"\n]',	1,	'',	'copilot,ai',	NULL,	1),
(121,	1,	1,	1,	'Start the engine',	'[\n    \"start\",\n    \"the\",\n    \"engine\"\n]',	'Motoru çalıştır',	'[\n    \"çalıştır\",\n    \"motoru\"\n]',	1,	'',	'copilot,ai',	NULL,	1),
(122,	1,	1,	1,	'Read this book',	'[\n    \"read\",\n    \"this\",\n    \"book\"\n]',	'Bu kitabı oku',	'[\n    \"oku\",\n    \"bu\",\n    \"kitabı\"\n]',	1,	'',	'copilot,ai',	NULL,	1),
(123,	1,	1,	1,	'Close the door',	'[\n    \"close\",\n    \"the\",\n    \"door\"\n]',	'Kapıyı kapat',	'[\n    \"kapat\",\n    \"kapıyı\"\n]',	1,	'',	'copilot,ai',	NULL,	1),
(124,	1,	1,	1,	'Dogs chase cars',	'[\n    \"dogs\",\n    \"chase\",\n    \"cars\"\n]',	'Köpekler arabaları kovalar',	'[\n    \"köpekler\",\n    \"kovalar\",\n    \"arabaları\"\n]',	1,	'',	'copilot,ai',	NULL,	1),
(125,	1,	1,	1,	'Birds build nests',	'[\n    \"birds\",\n    \"build\",\n    \"nests\"\n]',	'Kuşlar yuva yapar',	'[\n    \"kuşlar\",\n    \"yapar\",\n    \"yuva\"\n]',	1,	'',	'copilot,ai',	NULL,	1),
(126,	1,	1,	1,	'People love music',	'[\n    \"people\",\n    \"love\",\n    \"music\"\n]',	'İnsanlar müziği sever',	'[\n    \"i̇nsanlar\",\n    \"sever\",\n    \"müziği\"\n]',	1,	'',	'copilot,ai',	NULL,	1),
(127,	1,	1,	1,	'Children read books',	'[\n    \"children\",\n    \"read\",\n    \"books\"\n]',	'Çocuklar kitap okur',	'[\n    \"çocuklar\",\n    \"okur\",\n    \"kitap\"\n]',	1,	'',	'copilot,ai',	NULL,	1),
(128,	1,	1,	1,	'Cats catch mice',	'[\n    \"cats\",\n    \"catch\",\n    \"mice\"\n]',	'Kediler fareleri yakalar',	'[\n    \"kediler\",\n    \"yakalar\",\n    \"fareleri\"\n]',	1,	'',	'copilot,ai',	NULL,	1);

-- 2026-03-18 05:56:06 UTC

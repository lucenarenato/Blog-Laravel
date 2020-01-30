-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 10 Lut 2018, 12:02
-- Wersja serwera: 5.7.19-0ubuntu0.16.04.1
-- Wersja PHP: 7.1.13-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `murze`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ads`
--

CREATE TABLE `ads` (
  `id` int(10) UNSIGNED NOT NULL,
  `display_on_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `starts_at` date NOT NULL,
  `ends_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `ads`
--

INSERT INTO `ads` (`id`, `display_on_url`, `text`, `starts_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(1, 'http://www.stoltenberg.com/sit-accusantium-tempora-sequi-qui.html', 'Architecto aperiam provident eveniet placeat soluta sunt.', '2018-01-14', '2018-02-13', '2018-02-04 08:45:28', '2018-02-04 08:45:28'),
(2, 'http://bernier.org/mollitia-et-officiis-aut-tenetur-saepe-et-aspernatur', 'Eum commodi est libero in.', '2018-01-27', '2018-02-26', '2018-02-04 08:45:28', '2018-02-04 08:45:28'),
(3, 'http://www.bins.com/omnis-ducimus-ut-et-corrupti.html', 'Eius sed qui qui consequuntur repellat unde.', '2018-02-24', '2018-03-26', '2018-02-04 08:45:28', '2018-02-04 08:45:28'),
(4, '', 'Nostrum eveniet dolor tenetur.', '2018-02-24', '2018-03-26', '2018-02-04 08:45:29', '2018-02-04 08:45:29'),
(5, '', 'Consectetur et quis dolor neque.', '2018-01-09', '2018-02-08', '2018-02-04 08:45:29', '2018-02-04 08:45:29'),
(6, 'http://moen.com/doloribus-voluptatem-facilis-recusandae', 'Ullam vitae magni perspiciatis et quod dolor odio.', '2018-02-25', '2018-03-27', '2018-02-04 08:45:29', '2018-02-04 08:45:29'),
(7, '', 'Perspiciatis iure beatae illum totam adipisci et vitae porro.', '2018-02-25', '2018-03-27', '2018-02-04 08:45:29', '2018-02-04 08:45:29'),
(8, '', 'Est sapiente saepe quasi nam corrupti aperiam sed.', '2018-01-15', '2018-02-14', '2018-02-04 08:45:29', '2018-02-04 08:45:29'),
(9, 'http://www.bechtelar.com/fugiat-quod-magni-voluptatibus-aut-qui', 'Repellat tempora a iure consequatur.', '2018-02-03', '2018-03-05', '2018-02-04 08:45:29', '2018-02-04 08:45:29'),
(10, 'https://bergnaum.com/et-qui-qui-qui-qui-rerum-nam-quia.html', 'Laboriosam tempore quam fugit voluptatibus dolor consequatur.', '2018-01-27', '2018-02-26', '2018-02-04 08:45:29', '2018-02-04 08:45:29');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_09_230412_create_posts_table', 1),
(4, '2017_11_09_232031_create_tag_tables', 1),
(5, '2017_11_10_122115_create_redirects_table', 1),
(6, '2017_11_11_100752_create_talks_table', 1),
(7, '2017_11_18_221009_add_original_content_field', 1),
(8, '2018_01_01_205001_create_ads_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wp_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wp_post_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `tweet_sent` tinyint(1) NOT NULL DEFAULT '0',
  `posted_on_medium` tinyint(1) NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Freek Van der Herten',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original_content` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `text`, `wp_id`, `wp_post_name`, `publish_date`, `published`, `tweet_sent`, `posted_on_medium`, `author`, `created_at`, `updated_at`, `original_content`) VALUES
(1, 'Eligendi at qui voluptatem ut iusto non optio.', 'eligendi-at-qui-voluptatem-ut-iusto-non-optio', 'Consequuntur aliquid modi voluptatem odio. Inventore omnis eaque quas accusantium. Dolore et voluptates eos et. Quia id eaque voluptatem sit.', NULL, NULL, '2017-10-10 20:19:09', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:56', '2018-02-04 08:44:56', 0),
(2, 'Ipsa odio et mollitia labore veritatis.', 'ipsa-odio-et-mollitia-labore-veritatis', 'Voluptatum esse fuga praesentium magnam sit. Ab modi facere sit tempora assumenda tempore. In exercitationem alias aspernatur occaecati consequatur. Blanditiis praesentium harum qui maxime animi ut.', NULL, NULL, '2016-04-24 14:52:59', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:56', '2018-02-04 08:44:56', 0),
(3, 'Voluptatum molestias ducimus ratione aliquam alias iure repellendus maxime.', 'voluptatum-molestias-ducimus-ratione-aliquam-alias-iure-repellendus-maxime', 'Nihil nihil asperiores placeat id. Ab facilis voluptatem maxime consequatur. Eaque necessitatibus labore dolorem sunt. In a veritatis quidem at est voluptas.', NULL, NULL, '2016-02-21 00:54:00', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:56', '2018-02-04 08:44:56', 0),
(4, 'Inventore rem facere qui assumenda.', 'inventore-rem-facere-qui-assumenda', 'Asperiores dicta eaque nesciunt aut velit perferendis est. In est qui nam debitis doloribus aut voluptatem. Totam odio commodi eligendi alias consequatur ipsa et. Ducimus repudiandae pariatur id nihil ab.', NULL, NULL, '2017-05-09 09:52:27', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:56', '2018-02-04 08:44:56', 0),
(5, 'Voluptatum nam minima debitis occaecati esse ea sed.', 'voluptatum-nam-minima-debitis-occaecati-esse-ea-sed', 'Ea veniam consequatur et tempore natus. Animi velit et est a. Expedita esse eum consequatur odit omnis. Adipisci quis sunt occaecati minus.', NULL, NULL, '2017-11-10 17:21:25', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:56', '2018-02-04 08:44:56', 0),
(6, 'Accusamus deleniti impedit optio consequatur nihil cupiditate.', 'accusamus-deleniti-impedit-optio-consequatur-nihil-cupiditate', 'Officia qui nesciunt illum rerum dolore repudiandae inventore id. Porro nesciunt qui non doloribus rerum. Ut provident quia corrupti blanditiis est porro iure.', NULL, NULL, '2015-01-26 12:43:19', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 1),
(7, 'Minima nemo et eaque ut sit aut.', 'minima-nemo-et-eaque-ut-sit-aut', 'Delectus in facere corporis totam mollitia repellendus. Sit consequatur ducimus nobis. Nam saepe quia cupiditate cum.', NULL, NULL, '2013-02-20 00:17:37', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(8, 'Est id ex accusamus nulla eum asperiores.', 'est-id-ex-accusamus-nulla-eum-asperiores', 'Libero et iusto vitae perferendis quam corrupti voluptatem minima. Enim dolorem aperiam veniam sint nihil. Ullam officia in voluptatibus provident. Eaque ut provident neque numquam minima.', NULL, NULL, '2017-11-05 13:37:55', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(9, 'Sed ad et explicabo beatae expedita hic libero.', 'sed-ad-et-explicabo-beatae-expedita-hic-libero', 'Vitae nemo sit repellat ut est. Aut nihil eveniet eos aspernatur repellendus ab eos ut. Corporis et sed aspernatur error repellendus doloribus. Vel fugiat totam sed omnis consectetur porro.', NULL, NULL, '2014-08-10 20:36:14', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(10, 'Consectetur qui et architecto et dolores omnis voluptatem.', 'consectetur-qui-et-architecto-et-dolores-omnis-voluptatem', 'Dolor eum porro omnis illum et dolorum esse. Eaque ad nihil iste rerum mollitia qui. Omnis et eos adipisci soluta. Sit est cum quia ut dolore aut reprehenderit.', NULL, NULL, '2014-06-16 09:25:24', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(11, 'Magni rerum animi omnis earum.', 'magni-rerum-animi-omnis-earum', 'Voluptas voluptatem ratione maiores aliquid error magni quia provident. Esse quia praesentium et corporis placeat et. Aliquid voluptas quis quo. Qui aut et ab quo reiciendis ab neque.', NULL, NULL, '2015-10-16 01:19:38', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 1),
(12, 'Inventore hic assumenda quia quia nihil aspernatur itaque.', 'inventore-hic-assumenda-quia-quia-nihil-aspernatur-itaque', 'Dolor ut quod accusantium. Provident sit quas nihil. Autem iure cum corporis eligendi asperiores laudantium id. Illo eum ut cumque sit.', NULL, NULL, '2017-06-05 09:17:38', 0, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(13, 'Sed et quia dolores culpa.', 'sed-et-quia-dolores-culpa', 'Est delectus nisi suscipit est fugit in nulla. Odio quam sint quaerat non. Eligendi sit quia voluptatem qui omnis sit ipsum cupiditate. Omnis dolor ipsum ipsa aut amet natus.', NULL, NULL, '2015-07-19 13:06:14', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(14, 'Atque porro nihil reprehenderit.', 'atque-porro-nihil-reprehenderit', 'Rerum et est voluptas. Aut libero pariatur velit voluptatum. Omnis mollitia sapiente odio.', NULL, NULL, '2013-12-08 23:50:30', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(16, 'Itaque aut voluptatem harum nisi iure nemo recusandae.', 'itaque-aut-voluptatem-harum-nisi-iure-nemo-recusandae', 'Dicta rerum doloribus consectetur placeat sed voluptas dolorem voluptatum. Voluptatem suscipit corrupti unde fugiat quisquam eveniet non. Ducimus qui quaerat atque magni quos. Ut ipsam molestiae magnam et voluptas repudiandae et.', NULL, NULL, '2017-01-09 23:22:35', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(17, 'Aut voluptas eius sunt.', 'aut-voluptas-eius-sunt', 'Quisquam aliquid ducimus praesentium enim. Atque qui sed harum ut magnam adipisci sed. Magni veniam voluptas alias totam illo minima sed. Totam qui consequatur non quia voluptatem veritatis possimus.', NULL, NULL, '2015-11-03 10:07:26', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(18, 'Suscipit accusamus voluptatem hic.', 'suscipit-accusamus-voluptatem-hic', 'Dolor vitae eum dolores et. Molestias minus iusto non in asperiores occaecati. Necessitatibus assumenda error voluptate. Eveniet voluptatem ut rem dolore fuga aperiam et.', NULL, NULL, '2013-10-08 00:24:41', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(19, 'Soluta aut rem ut et asperiores ut.', 'soluta-aut-rem-ut-et-asperiores-ut', 'Facilis fuga amet optio ea et. A amet nihil in incidunt et voluptatem. Laudantium voluptas omnis id quasi non exercitationem. Asperiores libero laudantium occaecati enim optio ut ipsam enim.', NULL, NULL, '2015-08-15 08:28:06', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(20, 'Officia blanditiis nam autem maxime cum rerum natus.', 'officia-blanditiis-nam-autem-maxime-cum-rerum-natus', 'Dolorem et ut qui id vero dolorem sit voluptates. Amet et eius voluptatem. Magni cupiditate tempore corrupti blanditiis.', NULL, NULL, '2015-01-07 08:12:07', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(21, 'Quidem fuga amet qui odit odio quaerat.', 'quidem-fuga-amet-qui-odit-odio-quaerat', 'Temporibus assumenda soluta maxime veritatis et aut. Est optio id ut. Inventore ducimus quo illo. Recusandae aperiam qui maiores est.', NULL, NULL, '2016-10-16 00:00:37', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(22, 'Harum sed enim rerum esse.', 'harum-sed-enim-rerum-esse', 'Nemo dolore sapiente dolor non. Enim doloremque voluptatem eius dolorum. In provident ut sit qui corrupti dolor.', NULL, NULL, '2015-08-21 22:14:53', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 1),
(23, 'Soluta facere rerum corporis sunt dolorum voluptatem enim.', 'soluta-facere-rerum-corporis-sunt-dolorum-voluptatem-enim', 'Culpa dicta voluptate est qui quia et. Beatae autem sed non natus consequuntur similique perspiciatis. Odit quae aut ut dolorum.', NULL, NULL, '2016-03-30 20:34:32', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(24, 'Amet accusantium at illo ut possimus voluptatibus officia.', 'amet-accusantium-at-illo-ut-possimus-voluptatibus-officia', 'Culpa voluptatem doloremque voluptatem adipisci omnis voluptas. Ut vitae quas dolores odit voluptatum quia placeat. Consequuntur et ut et ducimus error. Ut quo quia animi assumenda possimus sed.', NULL, NULL, '2013-08-17 21:49:29', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(25, 'Temporibus maiores enim iusto perspiciatis dolor.', 'temporibus-maiores-enim-iusto-perspiciatis-dolor', 'Non nobis sed tenetur voluptates quas sint et. Et impedit consectetur et et ea. Aliquam ut eaque eos omnis vero eveniet dolore adipisci. Quia aut magnam officia autem.', NULL, NULL, '2014-05-25 22:02:20', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(26, 'Praesentium voluptatem ut magnam at voluptatum impedit et animi.', 'praesentium-voluptatem-ut-magnam-at-voluptatum-impedit-et-animi', 'Provident labore expedita et eos laboriosam a. Ea cum necessitatibus nam. Qui voluptate ducimus molestias et qui quo.', NULL, NULL, '2016-04-22 17:16:49', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(27, 'Assumenda sit praesentium dolore dolor cumque ad.', 'assumenda-sit-praesentium-dolore-dolor-cumque-ad', 'Quidem maxime reprehenderit et molestiae consequatur. Temporibus unde eius commodi aut. Qui quia maxime non ipsum ratione sapiente facere.', NULL, NULL, '2013-05-07 04:42:13', 0, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 1),
(28, 'Nulla dolor accusantium veritatis id et.', 'nulla-dolor-accusantium-veritatis-id-et', 'Aliquid assumenda atque iusto. Unde aliquid vero dignissimos accusamus. Quae officia totam exercitationem velit.', NULL, NULL, '2017-11-21 12:37:59', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(29, 'Quas quo molestiae cum accusantium at blanditiis.', 'quas-quo-molestiae-cum-accusantium-at-blanditiis', 'Soluta quisquam qui quis. Alias voluptate quo adipisci consequatur asperiores dolor. Dolorem omnis voluptatum error asperiores veritatis minus quia.', NULL, NULL, '2017-09-20 23:18:51', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(30, 'Facere voluptatum ipsum perspiciatis unde.', 'facere-voluptatum-ipsum-perspiciatis-unde', 'Molestiae ad voluptatibus ipsum dolores dicta dolor. Qui quis repellat sunt ipsam. Maiores et quia soluta consectetur fugit et voluptas deleniti. Enim ut amet voluptatem est aut.', NULL, NULL, '2015-07-14 13:14:24', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(31, 'Consequuntur id voluptatum vero dolorum ut tempore est.', 'consequuntur-id-voluptatum-vero-dolorum-ut-tempore-est', 'Est error esse culpa architecto dolorum consequatur eos. Rerum distinctio asperiores reiciendis beatae. Beatae a culpa recusandae reprehenderit iusto in. Omnis qui ducimus qui accusantium.', NULL, NULL, '2016-02-19 20:31:48', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(32, 'Inventore illum sit qui eius.', 'inventore-illum-sit-qui-eius', 'Nihil qui nisi sed fugiat voluptates iusto. Optio quidem debitis ea dolor dolorum veniam. Repellat voluptatem autem tempore deleniti optio quia.', NULL, NULL, '2015-02-22 04:05:05', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 1),
(33, 'Officia libero iste labore repellendus quibusdam quibusdam quia.', 'officia-libero-iste-labore-repellendus-quibusdam-quibusdam-quia', 'Est accusantium recusandae sed atque. Eaque vero perspiciatis vel sit deserunt dicta. Ut est placeat consequatur recusandae sapiente. Minus amet corporis recusandae quidem quas natus ut.', NULL, NULL, '2016-08-30 13:51:22', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(34, 'Sit blanditiis voluptas sint repellat earum ut sed.', 'sit-blanditiis-voluptas-sint-repellat-earum-ut-sed', 'Accusantium facilis nemo quidem commodi nihil quia. Asperiores et ea repudiandae iure. Deserunt molestiae eveniet explicabo eaque aliquam et dolorem.', NULL, NULL, '2015-10-09 19:55:00', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:57', '2018-02-04 08:44:57', 0),
(35, 'Eius expedita nemo dolore enim.', 'eius-expedita-nemo-dolore-enim', 'Eos qui est aut error error est. Cupiditate sapiente perferendis eaque consequatur consequatur. Magni voluptatibus fugiat voluptate voluptas consequatur similique ea id. Voluptas voluptatem incidunt molestiae id autem. Nostrum sequi ut eos eius.', NULL, NULL, '2017-08-17 00:15:08', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(36, 'Quo atque ut sunt molestias.', 'quo-atque-ut-sunt-molestias', 'Nam doloribus veritatis aliquam praesentium et ut porro. Nisi numquam voluptatem asperiores modi officiis. Ratione praesentium et qui odit.', NULL, NULL, '2013-09-06 05:33:56', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(37, 'Et ea iure nostrum quaerat possimus et autem.', 'et-ea-iure-nostrum-quaerat-possimus-et-autem', 'Animi doloremque rerum nihil quidem. Et modi nulla consequatur cupiditate ex delectus. Est et ex dolorum.', NULL, NULL, '2014-03-10 08:33:56', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 1),
(38, 'Consequatur dolores et modi magnam qui qui modi nam.', 'consequatur-dolores-et-modi-magnam-qui-qui-modi-nam', 'Alias suscipit sit ea accusantium. Et asperiores earum ipsum perspiciatis et culpa repellendus. Recusandae harum nihil sequi inventore earum quis cumque. Autem eos cum ut consequatur itaque ea quas.', NULL, NULL, '2015-05-27 16:45:18', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(39, 'Harum sed quia facilis.', 'harum-sed-quia-facilis', 'Similique perferendis veniam consequatur. Aut ipsa est et doloribus ab omnis. Eligendi omnis incidunt quibusdam dolores sit reprehenderit.', NULL, NULL, '2017-09-07 15:18:48', 0, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(40, 'Repudiandae tempora totam porro itaque omnis consequuntur rerum autem.', 'repudiandae-tempora-totam-porro-itaque-omnis-consequuntur-rerum-autem', 'Velit officiis laudantium ea dicta qui sed accusantium facere. Dolor explicabo explicabo deserunt veniam omnis quidem quia. Et pariatur quo est aliquam neque provident eos. Sed non ab et odio nam. Dolorem recusandae soluta nesciunt molestias.', NULL, NULL, '2015-04-22 01:00:07', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(41, 'Sed voluptatem sequi dolores aperiam tempora.', 'sed-voluptatem-sequi-dolores-aperiam-tempora', 'Consequatur numquam vitae sequi nihil et nihil facilis. Omnis et necessitatibus unde inventore doloremque dignissimos rerum. Dolorem eius natus voluptatum. Omnis ab id eligendi non aut voluptatem.', NULL, NULL, '2015-11-03 23:00:44', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(42, 'Debitis ab alias consequuntur ipsam.', 'debitis-ab-alias-consequuntur-ipsam', 'Distinctio sunt repudiandae quo nostrum. Fugit nisi necessitatibus consectetur deserunt expedita. Possimus distinctio eaque qui recusandae iusto soluta consequatur.', NULL, NULL, '2015-03-10 01:25:26', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(43, 'Aperiam sit beatae voluptas blanditiis ratione optio consequatur.', 'aperiam-sit-beatae-voluptas-blanditiis-ratione-optio-consequatur', 'Ut aut qui cupiditate molestias et est qui. Occaecati quo et aliquam sit. Id animi ad eos sunt. Labore et atque ad voluptatibus alias esse.', NULL, NULL, '2015-02-17 16:21:27', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(44, 'Atque ex consequatur qui.', 'atque-ex-consequatur-qui', 'Facere et illo aut debitis ea. Voluptas voluptatum neque cum incidunt laboriosam. Fuga odio non optio asperiores et quae.', NULL, NULL, '2016-10-29 02:26:39', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(45, 'Nulla voluptas alias sint iste voluptas est deleniti.', 'nulla-voluptas-alias-sint-iste-voluptas-est-deleniti', 'Maiores est voluptatem in est. Quibusdam nisi et autem. Quod adipisci eum accusamus ducimus.', NULL, NULL, '2014-12-25 17:07:42', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(46, 'Perspiciatis fuga quia sed.', 'perspiciatis-fuga-quia-sed', 'Et error perferendis quidem nemo atque qui tempore. Quis incidunt dolore explicabo. Ut possimus magnam nostrum accusamus.', NULL, NULL, '2013-08-25 19:58:44', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(47, 'Iure harum tempora et dolores.', 'iure-harum-tempora-et-dolores', 'Non asperiores et aut ratione. Voluptatem expedita qui architecto et. Assumenda consequatur velit quaerat dolores atque consequatur. Saepe est et voluptatum voluptatum.', NULL, NULL, '2016-08-31 17:41:25', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(48, 'Sint et recusandae earum temporibus porro neque.', 'sint-et-recusandae-earum-temporibus-porro-neque', 'Voluptatem provident ratione id dolor autem. Minima labore vel reprehenderit temporibus sit autem. Voluptas sed modi quo omnis reiciendis est voluptatem.', NULL, NULL, '2016-01-22 13:14:05', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(49, 'Fuga consectetur et omnis.', 'fuga-consectetur-et-omnis', 'Beatae quos nisi voluptates est rem. Exercitationem qui unde molestiae quam odit doloribus ut at. Nobis qui natus aspernatur. Non veniam aut fugiat dolores.', NULL, NULL, '2013-05-25 04:12:59', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(50, 'Ratione omnis est magnam ullam ut delectus.', 'ratione-omnis-est-magnam-ullam-ut-delectus', 'Tenetur omnis et laboriosam aut amet iure. Placeat et sed veritatis ullam sit soluta. Molestiae maiores quo deleniti at ex accusamus.', NULL, NULL, '2014-11-24 18:30:15', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 1),
(51, 'Est ducimus quod dolorum officia dolorum.', 'est-ducimus-quod-dolorum-officia-dolorum', 'Eveniet cum earum et commodi fuga autem non qui. Aut corrupti omnis sit neque repellat corporis.', NULL, NULL, '2014-08-31 18:50:00', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 1),
(52, 'Voluptatem mollitia est quis animi.', 'voluptatem-mollitia-est-quis-animi', 'Ut est iusto ipsa nobis dolorum porro. Voluptas quis quas enim beatae vel. Aut et necessitatibus distinctio.', NULL, NULL, '2014-11-04 17:18:38', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(53, 'Quam in ullam quia quis ex.', 'quam-in-ullam-quia-quis-ex', 'Nesciunt possimus magnam earum sint veritatis praesentium voluptates. Modi dolor ipsa possimus aut dolores est explicabo. Necessitatibus veniam eos veniam. Et vel sit et voluptate voluptas asperiores eum. Enim voluptatum sit vero error omnis unde.', NULL, NULL, '2014-07-12 18:15:59', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(54, 'Perferendis placeat aspernatur et qui.', 'perferendis-placeat-aspernatur-et-qui', 'Quaerat quia vel pariatur fuga est. Sed aut veritatis quis vel. Rerum omnis tempora temporibus temporibus neque. Voluptatibus amet laudantium sunt laborum.', NULL, NULL, '2014-04-26 01:51:06', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(55, 'Et saepe aut placeat.', 'et-saepe-aut-placeat', 'Quas fuga autem eos. Non quo sunt fugit alias fuga molestiae. Et hic magnam quos non cumque.', NULL, NULL, '2014-05-17 14:53:52', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(56, 'Dolorum id amet expedita neque.', 'dolorum-id-amet-expedita-neque', 'Et eum consectetur ut enim veniam eos. Sit exercitationem magnam consequatur quod quis. Perspiciatis dolorem excepturi hic omnis quia est non. Expedita ut neque nemo maiores temporibus at nemo ad.', NULL, NULL, '2014-03-06 11:46:43', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(57, 'Quaerat doloremque omnis a qui nulla quam ipsam.', 'quaerat-doloremque-omnis-a-qui-nulla-quam-ipsam', 'Illo deserunt et et mollitia. At et sunt qui ea ut. Accusantium at illo quia doloremque ad.', NULL, NULL, '2013-12-20 08:26:49', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 0),
(58, 'Ad quis expedita est facilis et non sapiente.', 'ad-quis-expedita-est-facilis-et-non-sapiente', 'Incidunt molestias enim quod tempora. Tempore iste ducimus accusantium asperiores voluptate ab aut. Deserunt harum deleniti quisquam quis et architecto. Aperiam enim explicabo est aut. Quibusdam eius voluptatem harum aut.', NULL, NULL, '2016-08-11 03:05:36', 0, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:58', '2018-02-04 08:44:58', 1),
(59, 'Nam ullam accusamus vero qui architecto architecto voluptas.', 'nam-ullam-accusamus-vero-qui-architecto-architecto-voluptas', 'Ipsum sequi exercitationem voluptatem deserunt odit voluptatem et. Cumque optio esse at ut porro minima vel.', NULL, NULL, '2015-11-08 08:42:04', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(60, 'Libero tenetur occaecati velit sapiente dolorem.', 'libero-tenetur-occaecati-velit-sapiente-dolorem', 'Enim consequatur facilis neque ducimus vel natus maxime. Ut molestiae delectus sed. Deleniti tempore nobis ea.', NULL, NULL, '2013-07-05 21:53:48', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(61, 'Quo necessitatibus qui sed voluptatem voluptates doloribus id repellendus.', 'quo-necessitatibus-qui-sed-voluptatem-voluptates-doloribus-id-repellendus', 'Esse est non voluptatibus. Est aut et quia velit illo ea. Perferendis est nihil quia temporibus dolor.', NULL, NULL, '2014-06-01 13:20:08', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(62, 'Ut ducimus est consectetur id natus.', 'ut-ducimus-est-consectetur-id-natus', 'Eos dolorem nam perferendis. Omnis ut soluta voluptatum tenetur. At tempora sed dignissimos nulla. Nostrum fuga aut pariatur ut quia.', NULL, NULL, '2013-10-24 22:32:09', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(63, 'A quibusdam porro ducimus molestias placeat.', 'a-quibusdam-porro-ducimus-molestias-placeat', 'Ut facilis voluptatem earum. Quia occaecati dolorem unde sit omnis accusamus aut. Voluptatem omnis voluptatum repellat libero eum omnis temporibus. Tempora voluptatem ea est enim.', NULL, NULL, '2017-06-08 14:40:30', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(64, 'Qui reiciendis officia quia.', 'qui-reiciendis-officia-quia', 'Dolorem saepe dolorum ut expedita est repudiandae doloremque. Modi ea veritatis numquam eligendi deleniti. Eligendi ab dolorem sit ab. Repudiandae est modi non.', NULL, NULL, '2016-11-25 08:30:29', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(65, 'Quo nesciunt ea et iure.', 'quo-nesciunt-ea-et-iure', 'Corrupti animi delectus inventore odio similique voluptas. Sint eaque consequatur ratione repellendus. Iusto veritatis amet blanditiis ex.', NULL, NULL, '2016-09-15 14:48:12', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(66, 'Consequatur id libero delectus dolores est quaerat.', 'consequatur-id-libero-delectus-dolores-est-quaerat', 'Consequuntur quo cumque reiciendis voluptates. Dolores placeat dolores et omnis recusandae.', NULL, NULL, '2016-12-27 07:15:05', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(67, 'Rem fugit molestiae eum aliquid minus quam accusamus.', 'rem-fugit-molestiae-eum-aliquid-minus-quam-accusamus', 'Maxime dolorem aliquid placeat ipsa tempore hic. Quia sint rerum velit nam est aliquid sed. Ut omnis officiis perspiciatis et et nam.', NULL, NULL, '2017-04-24 22:57:34', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(68, 'Et neque et sed debitis consequatur voluptas.', 'et-neque-et-sed-debitis-consequatur-voluptas', 'Voluptates dolores at architecto quas. Quisquam animi architecto rerum consequuntur. Consequatur error quod eum eius error.', NULL, NULL, '2015-02-15 09:15:50', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(69, 'Et nobis pariatur eveniet deleniti rerum id.', 'et-nobis-pariatur-eveniet-deleniti-rerum-id', 'Explicabo voluptatem iure dolor omnis. Odit voluptate est omnis aspernatur accusantium.', NULL, NULL, '2015-03-20 23:36:01', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(70, 'Quae dolor non id soluta animi soluta.', 'quae-dolor-non-id-soluta-animi-soluta', 'Molestiae eum autem ea. Reprehenderit in iusto est omnis rerum. Aliquid quia esse voluptate aut et sed quo odio.', NULL, NULL, '2015-03-30 13:29:56', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(71, 'Nisi expedita in recusandae ullam soluta odio.', 'nisi-expedita-in-recusandae-ullam-soluta-odio', 'Et id culpa fugiat sed. Eius odit possimus nesciunt eius voluptatem ad. Rerum labore culpa totam sunt fuga laborum.', NULL, NULL, '2016-05-01 08:26:21', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(72, 'Aliquid temporibus aspernatur ad est non odio.', 'aliquid-temporibus-aspernatur-ad-est-non-odio', 'Quae rem est ratione nihil. Ratione quia id repudiandae eligendi distinctio. Recusandae harum iure harum voluptatem odio.', NULL, NULL, '2016-08-29 14:48:20', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(73, 'Est ipsum voluptatem autem inventore quos atque.', 'est-ipsum-voluptatem-autem-inventore-quos-atque', 'Blanditiis et aut est quam magni hic. Ut quo dolores id vel molestiae perferendis ipsum. Minus natus consequatur esse in nobis fugit. Enim molestiae consequatur veniam voluptas. Soluta aliquam animi sed et quo.', NULL, NULL, '2014-07-22 01:20:38', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:44:59', '2018-02-04 08:44:59', 0),
(74, 'Assumenda atque dignissimos est.', 'assumenda-atque-dignissimos-est', 'Minus maxime nobis amet aut non accusamus. Veniam nisi quia qui dolore sequi voluptatem. Consequuntur sapiente dolor alias sunt.', NULL, NULL, '2016-03-20 22:05:18', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(75, 'Aliquam ut ad blanditiis tempore vero qui.', 'aliquam-ut-ad-blanditiis-tempore-vero-qui', 'In impedit quidem ut delectus asperiores qui cumque. Repellendus nesciunt adipisci rem nihil vitae est ducimus. Possimus rem et magni qui aspernatur ut. Laboriosam dolore voluptas voluptas.', NULL, NULL, '2016-11-18 01:17:15', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(76, 'Veritatis et nesciunt totam.', 'veritatis-et-nesciunt-totam', 'Autem consequatur magnam ea. Est blanditiis repellat voluptates et. Aut repellat ullam animi ut. Aliquam dolorem magnam voluptatem dignissimos eaque. Voluptas qui et incidunt laborum ad optio.', NULL, NULL, '2015-12-04 09:55:40', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(77, 'Velit recusandae nam fugiat eum.', 'velit-recusandae-nam-fugiat-eum', 'Dignissimos est eius in et ut veritatis. Eius velit repellat qui. Odit sunt rerum id eos similique. Debitis rerum et voluptas odio illum.', NULL, NULL, '2016-01-05 09:29:08', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(78, 'Rerum ut ea accusamus molestias.', 'rerum-ut-ea-accusamus-molestias', 'Quo sequi facilis maxime. Ea non quia sint sint. Possimus fugit assumenda porro enim enim quia voluptatibus.', NULL, NULL, '2016-07-13 15:18:45', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(79, 'Quo dicta impedit nostrum.', 'quo-dicta-impedit-nostrum', 'Debitis cumque esse et ullam voluptatem odit ea consequuntur. Repellat consequuntur asperiores voluptate dicta et aliquid velit inventore.', NULL, NULL, '2017-07-31 02:34:11', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(80, 'Rerum eum recusandae qui ratione soluta omnis.', 'rerum-eum-recusandae-qui-ratione-soluta-omnis', 'Rerum tenetur molestias sunt. Maiores consequatur ut assumenda omnis est magnam. Est nisi reiciendis quis nam harum autem optio. Consequatur consequatur aut delectus possimus qui reiciendis.', NULL, NULL, '2015-11-24 06:20:04', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(81, 'Sint eaque quaerat veritatis assumenda magni aut.', 'sint-eaque-quaerat-veritatis-assumenda-magni-aut', 'Eveniet qui quos porro explicabo alias nobis quidem. Aperiam error nihil ratione maiores. Accusantium nobis et qui vitae.', NULL, NULL, '2017-09-27 18:41:49', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(82, 'Recusandae tempora ipsam velit repudiandae ipsam vel veritatis alias.', 'recusandae-tempora-ipsam-velit-repudiandae-ipsam-vel-veritatis-alias', 'A molestias quia eum sed. Voluptatem corporis eos voluptatem qui perferendis aut possimus veritatis. Cupiditate aut ut fuga omnis. Accusamus velit est nulla.', NULL, NULL, '2017-03-14 23:26:05', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(83, 'Iusto deleniti quod occaecati consequatur aut odit.', 'iusto-deleniti-quod-occaecati-consequatur-aut-odit', 'Autem qui est temporibus non iste veniam. Perspiciatis deserunt in et sapiente. Quo cum consectetur nesciunt soluta ea asperiores assumenda excepturi. Et voluptate et esse placeat enim deleniti velit.', NULL, NULL, '2014-08-06 16:05:06', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(84, 'Reprehenderit sint facere molestias.', 'reprehenderit-sint-facere-molestias', 'Quae amet earum id odio et accusantium. Odit est doloribus eveniet aliquam delectus. Et deleniti omnis est aut dignissimos.', NULL, NULL, '2014-08-22 10:00:16', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(85, 'Eaque odio quos accusantium libero numquam.', 'eaque-odio-quos-accusantium-libero-numquam', 'Doloribus rerum officia impedit et tenetur perferendis velit. Debitis ullam ullam autem quae molestiae. Aut rem fugiat aliquid ad in amet.', NULL, NULL, '2016-07-15 01:37:18', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(86, 'Sunt sed est praesentium et.', 'sunt-sed-est-praesentium-et', 'Quae doloribus quia temporibus facilis. Vel ullam autem assumenda numquam. Eum fugiat animi nihil et sed facilis. Dicta omnis fugiat et esse aut quos porro.', NULL, NULL, '2014-11-22 23:06:32', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 1),
(87, 'Similique omnis vitae dolorem voluptatem.', 'similique-omnis-vitae-dolorem-voluptatem', 'Corrupti architecto ut quaerat quia commodi perspiciatis nihil. Placeat voluptatum non non quod ipsum accusantium. Placeat eum ut qui quos repellat quasi sunt. Perspiciatis id quod ut reprehenderit sint ut qui voluptatibus. Consequatur fugit deleniti sint eum aut.', NULL, NULL, '2013-11-22 23:56:16', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(88, 'In et maxime animi officia sed sit.', 'in-et-maxime-animi-officia-sed-sit', 'Natus blanditiis aut doloribus laborum suscipit labore. Praesentium unde modi veniam. Officiis commodi nihil quia error deleniti.', NULL, NULL, '2013-11-05 00:30:51', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(89, 'Quas voluptatem nobis dolorem reprehenderit qui perspiciatis sit repudiandae.', 'quas-voluptatem-nobis-dolorem-reprehenderit-qui-perspiciatis-sit-repudiandae', 'Dolorem eum est ex blanditiis alias dolores. Impedit aut laboriosam voluptatem possimus qui nulla. Molestias quas officia reiciendis aut dolor dolorum.', NULL, NULL, '2017-07-30 20:15:18', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 1),
(90, 'Quas laboriosam voluptatem omnis dolorem.', 'quas-laboriosam-voluptatem-omnis-dolorem', 'Officiis rerum reprehenderit est quidem. Nemo eaque eius ea. Esse dolorem doloribus eos tempora vero.', NULL, NULL, '2014-11-22 16:23:24', 0, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 1),
(91, 'Nihil aperiam expedita sit praesentium voluptates officia blanditiis.', 'nihil-aperiam-expedita-sit-praesentium-voluptates-officia-blanditiis', 'Accusantium est perspiciatis quia doloremque vel qui repellat. Enim architecto tempore repellat in debitis vitae. Illo ipsa nihil hic non consequatur ratione. Et culpa aspernatur ullam quos possimus accusantium minima.', NULL, NULL, '2017-05-08 08:58:24', 0, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(92, 'Repellendus voluptatum quibusdam debitis assumenda.', 'repellendus-voluptatum-quibusdam-debitis-assumenda', 'Magnam libero aut aspernatur eius. Molestiae vero facilis qui voluptatibus.', NULL, NULL, '2016-07-18 04:22:21', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(93, 'Numquam repellat officiis quod sed nulla eligendi beatae ducimus.', 'numquam-repellat-officiis-quod-sed-nulla-eligendi-beatae-ducimus', 'Omnis explicabo consequatur dolore qui sit. Sapiente accusantium harum quo aspernatur enim est. Repellendus velit sint maxime rerum temporibus est.', NULL, NULL, '2016-02-20 11:06:30', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 1),
(94, 'Quia inventore voluptatem omnis quia iste.', 'quia-inventore-voluptatem-omnis-quia-iste', 'Non vel recusandae ratione. Laboriosam nihil velit dolorum voluptas beatae. Eveniet sed et veniam.', NULL, NULL, '2013-10-01 03:31:22', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:00', '2018-02-04 08:45:00', 0),
(95, 'Voluptate dolor eaque odio aliquid architecto quisquam assumenda.', 'voluptate-dolor-eaque-odio-aliquid-architecto-quisquam-assumenda', 'Quia dolorum itaque autem pariatur debitis repudiandae. Voluptatem dolor nobis esse aliquam repudiandae. Repellat iure quos error assumenda et repudiandae sed.', NULL, NULL, '2013-06-22 10:18:19', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:01', '2018-02-04 08:45:01', 0),
(96, 'Ut qui ut eveniet a aspernatur similique.', 'ut-qui-ut-eveniet-a-aspernatur-similique', 'Dignissimos est dolor aut dolorum minus culpa sunt. Aut facilis voluptatem dolore temporibus aliquam. Sit non tempore totam dolores doloremque maiores omnis.', NULL, NULL, '2017-04-08 12:34:54', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:01', '2018-02-04 08:45:01', 0),
(97, 'Rerum soluta quo est facilis.', 'rerum-soluta-quo-est-facilis', 'Ab a doloremque vel laborum. Delectus modi quidem eos odio neque unde. Incidunt voluptate magnam quia consequatur velit. Dolorem quo aut sed iste.', NULL, NULL, '2013-09-13 23:17:42', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:01', '2018-02-04 08:45:01', 0),
(98, 'Quibusdam soluta autem repellat nostrum cupiditate veniam.', 'quibusdam-soluta-autem-repellat-nostrum-cupiditate-veniam', 'Et et adipisci rerum reiciendis. Libero ab sint explicabo. Fuga ut aut corrupti quo. Odio pariatur aut quibusdam ducimus illo.', NULL, NULL, '2013-07-23 16:09:12', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:01', '2018-02-04 08:45:01', 0),
(99, 'Ullam sit cupiditate minima placeat assumenda nulla hic.', 'ullam-sit-cupiditate-minima-placeat-assumenda-nulla-hic', 'Eligendi dicta minima ut molestias sed. Laudantium saepe aut laudantium ex atque voluptatum cupiditate. Velit fugit amet aut omnis. Nam in et voluptate laborum.', NULL, NULL, '2015-09-21 16:07:04', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:01', '2018-02-04 08:45:01', 1),
(100, 'Nemo vel accusamus in iusto.', 'nemo-vel-accusamus-in-iusto', 'Eius repellat voluptates aut libero sed sit repellendus est. Consequuntur et doloremque quos officia sint vel et et. Similique sed est nemo laboriosam tenetur ducimus.', NULL, NULL, '2013-06-26 11:22:57', 1, 0, 0, 'Freek Van der Herten', '2018-02-04 08:45:01', '2018-02-04 08:45:01', 0),
(101, 'test999-Architecto aperiam quibusdam aut blanditiis', 'test999-architecto-aperiam-quibusdam-aut-blanditiis', 'to jest test\r\n\r\nConsequatur est dolor nostrum vel fugiat et consectetur et ab voluptas ea voluptatem Magni corrupti et pariatur Et hic modi', NULL, NULL, '2018-01-01 00:00:00', 0, 0, 0, 'Freek Van der Herten', '2018-02-06 11:40:19', '2018-02-06 11:41:23', 1),
(102, 'Nostrum exercitation aut sed eius est voluptatem', 'nostrum-exercitation-aut-sed-eius-est-voluptatem', 'Accusamus qui non et consequatur Sed laboriosam enim magni non cillum aliquip qui minim dolor odit nihil quod', NULL, NULL, '2017-09-07 15:18:48', 1, 0, 0, 'Freek Van der Herten', '2018-02-10 07:29:37', '2018-02-10 07:29:37', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `redirects`
--

CREATE TABLE `redirects` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` int(10) UNSIGNED NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`) VALUES
(9, 1, 'App\\Models\\Post'),
(15, 1, 'App\\Models\\Post'),
(20, 1, 'App\\Models\\Post'),
(2, 2, 'App\\Models\\Post'),
(6, 2, 'App\\Models\\Post'),
(1, 3, 'App\\Models\\Post'),
(10, 3, 'App\\Models\\Post'),
(13, 4, 'App\\Models\\Post'),
(8, 5, 'App\\Models\\Post'),
(16, 5, 'App\\Models\\Post'),
(19, 5, 'App\\Models\\Post'),
(7, 6, 'App\\Models\\Post'),
(11, 6, 'App\\Models\\Post'),
(13, 6, 'App\\Models\\Post'),
(16, 6, 'App\\Models\\Post'),
(5, 7, 'App\\Models\\Post'),
(11, 7, 'App\\Models\\Post'),
(20, 7, 'App\\Models\\Post'),
(4, 8, 'App\\Models\\Post'),
(11, 8, 'App\\Models\\Post'),
(13, 8, 'App\\Models\\Post'),
(7, 9, 'App\\Models\\Post'),
(18, 9, 'App\\Models\\Post'),
(1, 10, 'App\\Models\\Post'),
(3, 10, 'App\\Models\\Post'),
(6, 10, 'App\\Models\\Post'),
(11, 10, 'App\\Models\\Post'),
(7, 11, 'App\\Models\\Post'),
(12, 11, 'App\\Models\\Post'),
(17, 11, 'App\\Models\\Post'),
(2, 12, 'App\\Models\\Post'),
(4, 12, 'App\\Models\\Post'),
(7, 12, 'App\\Models\\Post'),
(1, 13, 'App\\Models\\Post'),
(8, 13, 'App\\Models\\Post'),
(14, 13, 'App\\Models\\Post'),
(5, 14, 'App\\Models\\Post'),
(1, 16, 'App\\Models\\Post'),
(9, 16, 'App\\Models\\Post'),
(10, 16, 'App\\Models\\Post'),
(15, 16, 'App\\Models\\Post'),
(10, 17, 'App\\Models\\Post'),
(16, 17, 'App\\Models\\Post'),
(18, 17, 'App\\Models\\Post'),
(10, 18, 'App\\Models\\Post'),
(11, 18, 'App\\Models\\Post'),
(15, 19, 'App\\Models\\Post'),
(3, 20, 'App\\Models\\Post'),
(9, 20, 'App\\Models\\Post'),
(14, 20, 'App\\Models\\Post'),
(18, 20, 'App\\Models\\Post'),
(1, 21, 'App\\Models\\Post'),
(8, 21, 'App\\Models\\Post'),
(10, 21, 'App\\Models\\Post'),
(20, 21, 'App\\Models\\Post'),
(3, 22, 'App\\Models\\Post'),
(20, 22, 'App\\Models\\Post'),
(9, 23, 'App\\Models\\Post'),
(2, 24, 'App\\Models\\Post'),
(9, 24, 'App\\Models\\Post'),
(17, 24, 'App\\Models\\Post'),
(8, 25, 'App\\Models\\Post'),
(10, 25, 'App\\Models\\Post'),
(11, 25, 'App\\Models\\Post'),
(18, 25, 'App\\Models\\Post'),
(1, 26, 'App\\Models\\Post'),
(5, 26, 'App\\Models\\Post'),
(6, 26, 'App\\Models\\Post'),
(4, 27, 'App\\Models\\Post'),
(1, 28, 'App\\Models\\Post'),
(6, 28, 'App\\Models\\Post'),
(14, 28, 'App\\Models\\Post'),
(16, 28, 'App\\Models\\Post'),
(4, 29, 'App\\Models\\Post'),
(10, 29, 'App\\Models\\Post'),
(13, 29, 'App\\Models\\Post'),
(17, 29, 'App\\Models\\Post'),
(8, 30, 'App\\Models\\Post'),
(15, 30, 'App\\Models\\Post'),
(16, 30, 'App\\Models\\Post'),
(20, 30, 'App\\Models\\Post'),
(7, 31, 'App\\Models\\Post'),
(17, 31, 'App\\Models\\Post'),
(6, 32, 'App\\Models\\Post'),
(8, 32, 'App\\Models\\Post'),
(12, 32, 'App\\Models\\Post'),
(13, 33, 'App\\Models\\Post'),
(18, 33, 'App\\Models\\Post'),
(20, 33, 'App\\Models\\Post'),
(4, 34, 'App\\Models\\Post'),
(5, 34, 'App\\Models\\Post'),
(7, 34, 'App\\Models\\Post'),
(13, 34, 'App\\Models\\Post'),
(4, 35, 'App\\Models\\Post'),
(11, 35, 'App\\Models\\Post'),
(12, 35, 'App\\Models\\Post'),
(16, 35, 'App\\Models\\Post'),
(19, 36, 'App\\Models\\Post'),
(1, 37, 'App\\Models\\Post'),
(3, 37, 'App\\Models\\Post'),
(3, 38, 'App\\Models\\Post'),
(19, 38, 'App\\Models\\Post'),
(18, 39, 'App\\Models\\Post'),
(20, 39, 'App\\Models\\Post'),
(1, 40, 'App\\Models\\Post'),
(14, 40, 'App\\Models\\Post'),
(19, 40, 'App\\Models\\Post'),
(2, 41, 'App\\Models\\Post'),
(4, 42, 'App\\Models\\Post'),
(10, 42, 'App\\Models\\Post'),
(13, 42, 'App\\Models\\Post'),
(16, 42, 'App\\Models\\Post'),
(8, 43, 'App\\Models\\Post'),
(5, 44, 'App\\Models\\Post'),
(6, 44, 'App\\Models\\Post'),
(7, 44, 'App\\Models\\Post'),
(9, 44, 'App\\Models\\Post'),
(7, 45, 'App\\Models\\Post'),
(10, 45, 'App\\Models\\Post'),
(18, 45, 'App\\Models\\Post'),
(20, 45, 'App\\Models\\Post'),
(1, 46, 'App\\Models\\Post'),
(5, 47, 'App\\Models\\Post'),
(18, 47, 'App\\Models\\Post'),
(19, 47, 'App\\Models\\Post'),
(20, 47, 'App\\Models\\Post'),
(9, 48, 'App\\Models\\Post'),
(3, 49, 'App\\Models\\Post'),
(5, 49, 'App\\Models\\Post'),
(18, 49, 'App\\Models\\Post'),
(19, 49, 'App\\Models\\Post'),
(5, 50, 'App\\Models\\Post'),
(1, 51, 'App\\Models\\Post'),
(8, 51, 'App\\Models\\Post'),
(13, 51, 'App\\Models\\Post'),
(16, 51, 'App\\Models\\Post'),
(4, 52, 'App\\Models\\Post'),
(13, 52, 'App\\Models\\Post'),
(14, 52, 'App\\Models\\Post'),
(19, 52, 'App\\Models\\Post'),
(12, 53, 'App\\Models\\Post'),
(14, 53, 'App\\Models\\Post'),
(6, 54, 'App\\Models\\Post'),
(18, 54, 'App\\Models\\Post'),
(2, 55, 'App\\Models\\Post'),
(3, 56, 'App\\Models\\Post'),
(8, 56, 'App\\Models\\Post'),
(18, 56, 'App\\Models\\Post'),
(20, 56, 'App\\Models\\Post'),
(9, 57, 'App\\Models\\Post'),
(10, 57, 'App\\Models\\Post'),
(11, 57, 'App\\Models\\Post'),
(20, 57, 'App\\Models\\Post'),
(6, 58, 'App\\Models\\Post'),
(7, 58, 'App\\Models\\Post'),
(12, 58, 'App\\Models\\Post'),
(1, 59, 'App\\Models\\Post'),
(2, 59, 'App\\Models\\Post'),
(9, 59, 'App\\Models\\Post'),
(17, 59, 'App\\Models\\Post'),
(7, 60, 'App\\Models\\Post'),
(12, 60, 'App\\Models\\Post'),
(15, 60, 'App\\Models\\Post'),
(17, 60, 'App\\Models\\Post'),
(11, 61, 'App\\Models\\Post'),
(12, 61, 'App\\Models\\Post'),
(14, 61, 'App\\Models\\Post'),
(16, 61, 'App\\Models\\Post'),
(3, 62, 'App\\Models\\Post'),
(9, 62, 'App\\Models\\Post'),
(17, 62, 'App\\Models\\Post'),
(19, 62, 'App\\Models\\Post'),
(1, 63, 'App\\Models\\Post'),
(6, 63, 'App\\Models\\Post'),
(13, 63, 'App\\Models\\Post'),
(16, 63, 'App\\Models\\Post'),
(4, 64, 'App\\Models\\Post'),
(5, 64, 'App\\Models\\Post'),
(10, 64, 'App\\Models\\Post'),
(12, 64, 'App\\Models\\Post'),
(14, 65, 'App\\Models\\Post'),
(8, 66, 'App\\Models\\Post'),
(9, 66, 'App\\Models\\Post'),
(12, 66, 'App\\Models\\Post'),
(2, 67, 'App\\Models\\Post'),
(5, 67, 'App\\Models\\Post'),
(10, 67, 'App\\Models\\Post'),
(7, 68, 'App\\Models\\Post'),
(12, 68, 'App\\Models\\Post'),
(14, 68, 'App\\Models\\Post'),
(18, 68, 'App\\Models\\Post'),
(5, 69, 'App\\Models\\Post'),
(14, 69, 'App\\Models\\Post'),
(15, 69, 'App\\Models\\Post'),
(14, 70, 'App\\Models\\Post'),
(2, 71, 'App\\Models\\Post'),
(11, 71, 'App\\Models\\Post'),
(1, 72, 'App\\Models\\Post'),
(1, 73, 'App\\Models\\Post'),
(3, 73, 'App\\Models\\Post'),
(12, 73, 'App\\Models\\Post'),
(16, 73, 'App\\Models\\Post'),
(3, 74, 'App\\Models\\Post'),
(4, 74, 'App\\Models\\Post'),
(9, 74, 'App\\Models\\Post'),
(12, 74, 'App\\Models\\Post'),
(6, 75, 'App\\Models\\Post'),
(12, 76, 'App\\Models\\Post'),
(14, 76, 'App\\Models\\Post'),
(20, 77, 'App\\Models\\Post'),
(5, 78, 'App\\Models\\Post'),
(14, 79, 'App\\Models\\Post'),
(19, 79, 'App\\Models\\Post'),
(7, 80, 'App\\Models\\Post'),
(9, 81, 'App\\Models\\Post'),
(12, 81, 'App\\Models\\Post'),
(1, 82, 'App\\Models\\Post'),
(2, 82, 'App\\Models\\Post'),
(9, 82, 'App\\Models\\Post'),
(1, 83, 'App\\Models\\Post'),
(5, 83, 'App\\Models\\Post'),
(16, 83, 'App\\Models\\Post'),
(12, 84, 'App\\Models\\Post'),
(20, 84, 'App\\Models\\Post'),
(4, 85, 'App\\Models\\Post'),
(7, 85, 'App\\Models\\Post'),
(14, 85, 'App\\Models\\Post'),
(2, 86, 'App\\Models\\Post'),
(4, 86, 'App\\Models\\Post'),
(9, 86, 'App\\Models\\Post'),
(17, 86, 'App\\Models\\Post'),
(17, 87, 'App\\Models\\Post'),
(19, 87, 'App\\Models\\Post'),
(2, 88, 'App\\Models\\Post'),
(11, 88, 'App\\Models\\Post'),
(12, 88, 'App\\Models\\Post'),
(15, 88, 'App\\Models\\Post'),
(6, 89, 'App\\Models\\Post'),
(11, 90, 'App\\Models\\Post'),
(1, 91, 'App\\Models\\Post'),
(2, 91, 'App\\Models\\Post'),
(13, 91, 'App\\Models\\Post'),
(18, 91, 'App\\Models\\Post'),
(11, 92, 'App\\Models\\Post'),
(14, 92, 'App\\Models\\Post'),
(6, 93, 'App\\Models\\Post'),
(2, 94, 'App\\Models\\Post'),
(12, 94, 'App\\Models\\Post'),
(15, 94, 'App\\Models\\Post'),
(16, 94, 'App\\Models\\Post'),
(1, 95, 'App\\Models\\Post'),
(15, 95, 'App\\Models\\Post'),
(1, 96, 'App\\Models\\Post'),
(8, 96, 'App\\Models\\Post'),
(17, 96, 'App\\Models\\Post'),
(3, 97, 'App\\Models\\Post'),
(16, 97, 'App\\Models\\Post'),
(18, 97, 'App\\Models\\Post'),
(20, 97, 'App\\Models\\Post'),
(1, 98, 'App\\Models\\Post'),
(13, 98, 'App\\Models\\Post'),
(10, 99, 'App\\Models\\Post'),
(16, 99, 'App\\Models\\Post'),
(4, 100, 'App\\Models\\Post'),
(12, 100, 'App\\Models\\Post'),
(16, 100, 'App\\Models\\Post'),
(17, 100, 'App\\Models\\Post'),
(21, 101, 'App\\Models\\Post'),
(22, 102, 'App\\Models\\Post'),
(2, 39, 'App\\Models\\Post');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_column` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `type`, `order_column`, `created_at`, `updated_at`) VALUES
(1, '{"en":"qui"}', '{"en":"qui"}', NULL, 1, '2018-02-04 08:44:55', '2018-02-04 08:44:55'),
(2, '{"en":"et"}', '{"en":"et"}', NULL, 2, '2018-02-04 08:44:55', '2018-02-04 08:44:55'),
(3, '{"en":"voluptatum"}', '{"en":"voluptatum"}', NULL, 3, '2018-02-04 08:44:55', '2018-02-04 08:44:55'),
(4, '{"en":"et"}', '{"en":"et"}', NULL, 4, '2018-02-04 08:44:55', '2018-02-04 08:44:55'),
(5, '{"en":"atque"}', '{"en":"atque"}', NULL, 5, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(6, '{"en":"tempore"}', '{"en":"tempore"}', NULL, 6, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(7, '{"en":"eaque"}', '{"en":"eaque"}', NULL, 7, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(8, '{"en":"autem"}', '{"en":"autem"}', NULL, 8, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(9, '{"en":"ipsa"}', '{"en":"ipsa"}', NULL, 9, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(10, '{"en":"voluptates"}', '{"en":"voluptates"}', NULL, 10, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(11, '{"en":"molestiae"}', '{"en":"molestiae"}', NULL, 11, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(12, '{"en":"odio"}', '{"en":"odio"}', NULL, 12, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(13, '{"en":"soluta"}', '{"en":"soluta"}', NULL, 13, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(14, '{"en":"beatae"}', '{"en":"beatae"}', NULL, 14, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(15, '{"en":"sed"}', '{"en":"sed"}', NULL, 15, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(16, '{"en":"omnis"}', '{"en":"omnis"}', NULL, 16, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(17, '{"en":"omnis"}', '{"en":"omnis"}', NULL, 17, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(18, '{"en":"suscipit"}', '{"en":"suscipit"}', NULL, 18, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(19, '{"en":"ea"}', '{"en":"ea"}', NULL, 19, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(20, '{"en":"architecto"}', '{"en":"architecto"}', NULL, 20, '2018-02-04 08:44:56', '2018-02-04 08:44:56'),
(21, '{"en":"quibusdam iure facere omnis rem maxime et non dolor minus dolor quisquam vel distinctio qui officia unde cupidatat id elit"}', '{"en":"quibusdam-iure-facere-omnis-rem-maxime-et-non-dolor-minus-dolor-quisquam-vel-distinctio-qui-officia-unde-cupidatat-id-elit"}', NULL, 21, '2018-02-06 11:40:19', '2018-02-06 11:40:19'),
(22, '{"en":"autem sint laborum rerum debitis commodo mollit vel fugiat fugiat fugit odio hic ut culpa enim"}', '{"en":"autem-sint-laborum-rerum-debitis-commodo-mollit-vel-fugiat-fugiat-fugit-odio-hic-ut-culpa-enim"}', NULL, 22, '2018-02-10 07:29:37', '2018-02-10 07:29:37');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `talks`
--

CREATE TABLE `talks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presented_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slides_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joindin_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `talks`
--

INSERT INTO `talks` (`id`, `title`, `location`, `presented_at`, `video_link`, `slides_link`, `joindin_link`, `created_at`, `updated_at`) VALUES
(1, 'Setting up your private packagist', 'PHP Antwerp', '2015-06-30 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/set-up-your-own-packagist', 'https://joind.in/event/php-antwerp-july-meetup/set-up-your-own-packagist', '2018-02-04 08:45:25', '2018-02-04 08:45:25'),
(2, 'Why are we sponsering our local meetup group', 'PHP Antwerp', '2016-01-26 23:00:00', 'https://youtu.be/j4nS_dGxxs8?t=52s', NULL, NULL, '2018-02-04 08:45:25', '2018-02-04 08:45:25'),
(3, 'Backing up with Laravel', 'Barcamp, Antwerp', '2016-05-11 22:00:00', NULL, NULL, NULL, '2018-02-04 08:45:25', '2018-02-04 08:45:25'),
(4, 'The story behind our open source efforts', 'Eurostar Connect Ghent', '2016-10-04 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/open-source-efforts', NULL, '2018-02-04 08:45:25', '2018-02-04 08:45:25'),
(5, 'Taking care of backups with Laravel', 'Laracon EU, Amsterdam', '2016-08-23 22:00:00', 'https://www.youtube.com/watch?v=fORNQ06K8LY', 'https://speakerdeck.com/freekmurze/backing-up-with-laravel-laracon', 'https://joind.in/event/laracon-eu-2016/taking-car-of-backups-with-laravel', '2018-02-04 08:45:25', '2018-02-04 08:45:25'),
(6, 'Creating a dashboard with Laravel, Vue and Pusher', 'Laravel Brussels', '2016-12-13 23:00:00', NULL, NULL, NULL, '2018-02-04 08:45:25', '2018-02-04 08:45:25'),
(7, 'The story behind our open source efforts', 'Laravel Brussels', '2016-12-13 23:00:00', NULL, 'https://speakerdeck.com/freekmurze/open-source-efforts', NULL, '2018-02-04 08:45:25', '2018-02-04 08:45:25'),
(8, 'Taking care of backups with Laravel', 'Laravel Toyo', '2016-09-11 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/backing-up-with-laravel-tokyo', NULL, '2018-02-04 08:45:25', '2018-02-04 08:45:25'),
(9, 'Taking care of backups with Laravel', 'PHP Antwerp', '2016-06-28 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/backing-up-with-laravel', 'https://joind.in/event/php-antwerp---june-meetup/taking-care-of-backups-with-laravel', '2018-02-04 08:45:25', '2018-02-04 08:45:25'),
(10, 'Creating a dashboard with Laravel and Vue', 'PHP Antwerp', '2016-07-26 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/creating-a-dashboard', NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(11, 'Creating a dashboard with Laravel and Vue', 'PHP Breda', '2016-07-26 22:00:00', NULL, NULL, NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(12, 'Backing up with Laravel', 'PHP Brussels', '2016-06-14 22:00:00', NULL, NULL, NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(13, 'Backing up with Laravel', 'PHP Gent', '2016-04-13 22:00:00', NULL, NULL, 'https://joind.in/event/php-antwerp---june-meetup/taking-care-of-backups-with-laravel', '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(14, 'Backing up with Laravel', 'PHP Limburg', '2016-05-17 22:00:00', NULL, NULL, 'https://joind.in/event/may-meetup---php-limburg-be/backing-up-with-laravel', '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(15, 'Backing up with Laravel', 'PHP West Flanders', '2016-06-27 22:00:00', NULL, NULL, NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(16, 'Taking care of backups with Laravel', 'php[world], Washington', '2016-11-15 23:00:00', NULL, 'https://speakerdeck.com/freekmurze/backing-up-with-laravel-phpworld', NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(17, 'Creating a dashboard with Laravel and Vue', 'php[world], Washington', '2016-11-16 23:00:00', NULL, 'https://speakerdeck.com/freekmurze/creating-a-dashboard-phpworld', NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(18, 'Creating a dashboard with Laravel and Vue', 'Algolia HQ, Paris', '2017-09-06 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/dashboard-algolia', NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(19, 'Creating a dashboard using PHP and Websockets', 'Dutch PHP Conference, Amsterdam', '2017-06-30 22:00:00', NULL, 'https://joind.in/event/dutch-php-conference-2017/creating-a-realtime-dashboard-with-php-and-websockets', NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(20, 'A practical intro to snapshot testing', 'Dutch PHP Conference, Amsterdam', '2017-06-29 22:00:00', NULL, 'https://joind.in/event/dutch-php-conference-2017/uncon-a-practical-introduction-to-snapshot-testing', NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(21, 'Creating a dashboard using PHP and Websockets', 'Fosdem, Brussels', '2017-02-03 23:00:00', NULL, 'https://speakerdeck.com/freekmurze/dashboard-fosdem', NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(22, 'Creating a dashboard using Laravel, Vue and Pusher', 'Laracon EU, Amsterdam', '2017-08-29 22:00:00', 'https://www.youtube.com/watch?v=jtB_rTh61Zo', 'https://speakerdeck.com/freekmurze/dashboard-laraconeu', NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(23, 'Creating a dashboard using Laravel, Vue and Pusher', 'Laracon US, New York', '2017-07-24 22:00:00', 'https://streamacon.com/video/laracon-us-2017/day-1-freek-van-der-herten', 'https://speakerdeck.com/freekmurze/dashboard-laraconus', NULL, '2018-02-04 08:45:26', '2018-02-04 08:45:26'),
(24, 'A practical intro to snapshot testing', 'Laracon US, New York', '2017-07-24 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/snapshot-testing-laraconus', NULL, '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(25, 'Taking care of backups with Laravel', 'Laravel Live, New Delhi', '2017-03-28 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/backing-up-with-laravel-india', NULL, '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(26, 'A practical intro to snapshot testing', 'Nomad PHP', '2017-03-28 22:00:00', 'https://www.facebook.com/834852033263386/videos/1430533787028538', 'https://speakerdeck.com/freekmurze/snapshot-testing-nomadphp', NULL, '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(27, 'Monitoring uptime with Laravel', 'PHP Antwerp', '2017-01-24 23:00:00', NULL, 'https://speakerdeck.com/freekmurze/monitoring-uptime-with-laravel', 'https://joind.in/event/php-antwerp---pre-phpbenelux-meetup-2017/monitoring-uptime-with-laravel', '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(28, 'Creating a dashboard using Laravel, Vue and Pusher', 'PHP Antwerp', '2017-10-24 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/dashboard-kdg', 'https://joind.in/event/php-antwerp---october-meetup-2017/building-a-dashboard-with-laravel-vue-and-pusher', '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(29, 'Manipulating images in PHP', 'Laravel Brussels', '2017-02-26 23:00:00', NULL, 'https://speakerdeck.com/freekmurze/manipulating-images-in-php', NULL, '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(30, 'Monitoring uptime with Laravel', 'Laravel Brussels', '2017-01-24 23:00:00', NULL, 'https://speakerdeck.com/freekmurze/monitoring-uptime-with-laravel', 'https://joind.in/event/php-antwerp---pre-phpbenelux-meetup-2017/monitoring-uptime-with-laravel', '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(31, 'Monitoring uptime with Laravel', 'PHP Brussels', '2017-05-15 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/monitoring-uptime-with-laravel', NULL, '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(32, 'Handling media in a Laravel application', 'PHP Brussels', '2017-11-13 23:00:00', NULL, 'https://speakerdeck.com/freekmurze/medialibrary-laravel-brussels', NULL, '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(33, 'A hands on introduction to Laravel', 'PHP Central Europe Conference, Poland', '2017-11-13 23:00:00', NULL, 'https://speakerdeck.com/freekmurze/laravel-intro-phpce', 'https://joind.in/event/php-central-europe-conference/a-hands-on-introduction-to-laravel', '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(34, 'Creating a dashboard using Laravel, Vue and Pusher', 'PHP Eindhoven', '2017-01-17 23:00:00', NULL, NULL, NULL, '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(35, 'The story behind our open source efforts', 'PHP Eindhoven', '2017-01-17 23:00:00', NULL, NULL, NULL, '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(36, 'Monitoring uptime with Laravel', 'PHP Eindhoven', '2017-03-04 23:00:00', NULL, NULL, NULL, '2018-02-04 08:45:27', '2018-02-04 08:45:27'),
(37, 'Creating a dashboard using Laravel, Vue and Pusher', 'PHP Gent', '2017-01-16 23:00:00', NULL, NULL, NULL, '2018-02-04 08:45:28', '2018-02-04 08:45:28'),
(38, 'Creating a dashboard using Laravel, Vue and Pusher', 'PHP Limburg', '2017-06-20 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/dashboard-php-limburg', 'https://joind.in/event/june-meetup---php-limburg-2017/creating-a-dashboard-with-laravel-vue-and-pusher', '2018-02-04 08:45:28', '2018-02-04 08:45:28'),
(39, 'A practical intro to snapshot testing', 'PHP Limburg', '2017-09-05 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/snapshot-testing-phplimburg', 'https://joind.in/event/september-meetup---php-limburg/a-practical-introduction-to-snapshot-testing', '2018-02-04 08:45:28', '2018-02-04 08:45:28'),
(40, 'Backing up with Laravel', 'PHP UK Conference, London', '2017-02-16 23:00:00', 'https://www.youtube.com/watch?v=klPNJypmIWQ', 'https://speakerdeck.com/freekmurze/backing-up-with-laravel-phpuk', 'https://joind.in/event/php-uk-2017/taking-care-of-backups-with-laravel', '2018-02-04 08:45:28', '2018-02-04 08:45:28'),
(41, 'Backing up with Laravel', 'PHP Unicorn Conference', '2017-05-03 22:00:00', NULL, 'https://speakerdeck.com/freekmurze/backing-up-with-laravel-unicorn', 'https://joind.in/event/php-unicorn-conference-online/taking-care-of-backups-with-laravel', '2018-02-04 08:45:28', '2018-02-04 08:45:28'),
(42, 'Creating a realtime dashboard using Laravel, Vue and Pusher', 'PHP Benelux (uncon)', '2017-01-26 23:00:00', NULL, 'https://speakerdeck.com/freekmurze/realtime-dashboard-phpbenelux', 'https://joind.in/event/phpbenelux-conference-2017/creating-a-realtime-dashboard-with-php-and-websockets-uncon', '2018-02-04 08:45:28', '2018-02-04 08:45:28'),
(43, 'A hands on introduction to Laravel', 'PHPKonf, Instanbul', '2017-11-13 23:00:00', NULL, 'https://speakerdeck.com/freekmurze/introduction-to-laravel-phpkonf', 'https://joind.in/event/php-central-europe-conference/a-hands-on-introduction-to-laravel', '2018-02-04 08:45:28', '2018-02-04 08:45:28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Freek', 'admin@admin.com', '$2y$10$5xEdmkpJt5DJzabGltDY1OO0vQugmBBjPnY.XkFH5tGRDG2XWaAEO', 'lWbMQrlws30J96DLU0K9hZ0Ifx3EqqdGNSf3b6YzhrJVacAGXLbIxV4Cn9yM', '2018-02-04 08:44:55', '2018-02-04 08:44:55');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redirects`
--
ALTER TABLE `redirects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD KEY `taggables_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `talks`
--
ALTER TABLE `talks`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT dla tabeli `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT dla tabeli `redirects`
--
ALTER TABLE `redirects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT dla tabeli `talks`
--
ALTER TABLE `talks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `taggables`
--
ALTER TABLE `taggables`
  ADD CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 13 2020 г., 17:29
-- Версия сервера: 5.7.25
-- Версия PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chapel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `subTitle` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `rubric` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `title`, `subTitle`, `description`, `rubric`, `created_at`, `updated_at`) VALUES
(1, 'О нас', '', '<p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp; &nbsp; Наша церковь является Евангельской по своему направлению и придерживается простых и современных форм проведения богослужений и общения.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp; &nbsp; Безусловным духовным авторитетом для нашей церкви являются богодухновенные священные Писания, собранные в один канон под названием Библия. Читая и изучая её, мы больше узнаём о Боге и открываем для себя Божью волю в отношении нашей жизни.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\"><em>“Всё Писание богодухновенно и полезно для научения, для обличения, для исправления, для наставления в праведности. Да будет совершен Божий человек, ко всякому доброму делу приготовлен” 2Тимофею 3:16-17</em><em></em></p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\"><strong>Символ веры</strong></p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\"><strong>Библия</strong></p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp; &nbsp; Единственные основы нашей веры находятся в Библии, состоящей из шестидесяти шести книг Ветхого и Нового Заветов. Мы верим, что Писание имеет своё начало в Боге, и что оно было преподано через определённых избранных людей. Писание имеет власть Божьего Слова и также отражает историю и индивидуальный стиль авторов. Мы верим в безошибочность и непогрешимость оригинальных манускриптов Писания. Они уникальны, закончены и являют собой авторитетность во всех вопросах веры и религиозных действий. Никакие другие работы не сравнятся с богодухновенным Писанием.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\"><strong>Бог</strong></p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp; &nbsp; Мы верим, что есть только один истинный и святой Бог, вечно существующий в трёх личностях: Отец, Сын и Святой Дух, каждый из которых равноценно обладает всеми атрибутами божественности и личностными качествами. В начале Бог сотворил из ничего весь мир и всё что в нём, продемонстрировав славу Своего могущества, мудрости и благости. Бог в Своей великой силе продолжает поддерживать жизнь Своего творения. По Своему предвидению, Он участвует в истории, приводя в действие Свой план искупления.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\"><strong>Спасение</strong></p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp; &nbsp; Центральная часть Божьего откровения в Писании – это Божий призыв для всех людей к общению с Творцом. Человек был сотворён для общения с Богом, но отошёл от Него, избрав независимость, и таким образом был разделён с Ним. Человек испытал на себе испорченность своей природы, оставшись при этом в неоплаченном долгу перед Богом. Падение человека произошло в начале человеческой истории, и с тех пор каждый живущий испытывает на себе последствие этого события. Поэтому каждый находится в нужде спасительной благодати Бога. Спасение людей – это полностью акт Божьей благодати, а не результат человеческих усилий или религиозных дел. Человек получает спасение по вере через покаяние. Когда Бог начинает Свою работу в сердце человека, Он уверяет его в Своём Слове, что Он продолжит совершать Своё дело до самого конца.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\"><strong>Иисус Христос</strong></p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp; &nbsp; Иисус Христос является второй личностью Святой Троицы. Он навсегда облачился в человеческую природу благодаря чудесному зачатию от Девы. Он прожил тридцать три года в совершенном послушании у Своего Отца и добровольно понёс на Себе наказание за человеческие грехи, быв распят на кресте, совершая божественную справедливость и достигая спасения для всех, кто уверует в Него. Он воскрес из мервых в том же теле, хотя и прославленном, в котором Он жил и умер на земле. Он вознёсся на Небо и воссел одесную Отца, где Он является единственным посредником между Богом и людьми, непристанно ходатайствуя за них. Он вернётся на землю лично и зримо для завершения истории и великого Божьего плана.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\"><strong>Святой Дух</strong></p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp; &nbsp; Основным достоянием искреннего спасительного общения с Иисусом Христом является святая жизнь и послушание приобретённое верующими через покорность Святому Духу, третьей личности Троицы. Он был послан в мир Отцом и Сыном, чтобы обратить к человеку спасительную работу Христа. Он просвещает разум грешников, пробуждая в них осознание их нужды в Спасителе. Святой Дух также обновляет их. С момента спасения Он постоянно пребывает в каждом верующем, являясь источником уверенности, силы и мудрости. Уникальным образом Святой Дух наделяет каждого верующего дарами, которые способствуют росту церкви. Дух направляет верующих в их понимании и применении Писания. Его сила и контроль, достигаемые через веру, делают способным верующего жить подобно Христу, принося плоды во славу нашего Отца.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\"><strong>Судьба человека</strong></p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp; &nbsp; Смерть определяет вечную участь каждого человека. Каждый человек достигнет воскресения тела в духовном мире и столкнётся с Судом, который определит его судьбу. Неверующие будут осуждены на вечное разделение с Богом. Божий Суд явит Его справедливость, предавая их на кару вечного наказания за отвержение Бога. Верующие будут навечно приняты в общение с Богом и получат награду за труды своей веры на земле.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\"><strong>Церковь</strong></p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp; &nbsp; Результатом союза людей с Иисусом явилось то, что все верующие стали частью Его Тела, Церкви. Существует одна вселенская церковь, в которую входят все те, кто признаёт Иисуса Христа своим Спасителем и Господом. Писание заповедует верующим: пребывать вместе, посвящать себя поклонению, молитве, изучению Слова, соблюдать крещение и преломление хлеба, данное Иисусом Христом, поддерживать друг друга, служить друг другу дарами и естественными способностями, нести Евангелие в мир. Где бы верующие не собирались регулярно для исполнения выше сказанного, там можно увидеть поместное проявление вселенской церкви. Благодаря заботе лидеров церкви и их руководству, члены церкви должны трудиться вместе, пребывая в любви и единстве, стремясь к достижению главной цели – прославлению Христа.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\"><strong>Вера и практика</strong></p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp; &nbsp; Писание является окончательным авторитетным источником во всех вопросах веры и христианской практики. Наша церковь признаёт, что нельзя связывать совесть определённого верующего в том, о чём Библия умалчивает. В таких случаях каждый верующий должен руководствоваться Господом, Которому он или она полностью подотчётны.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">&nbsp; &nbsp; Если Вас заинтересовала наша церковь, и Вы хотите посетить нас, то мы будем рады послужить Вам. Если Вам понравится у нас, и Вы почувствуете, что Бог призывает Вас стать частью поместной церкви “Часовня на Голгофе” в Новосибирске, то присоединиться к церкви будет довольно легко: просто будьте частью церкви! Начните регулярно посещать изучения Библии и поклоняйтесь Богу вместе с другими верующими в церкви. Если Ваше сердце предано Богу и Вы хотите возрастать в Нём, то Вам не нужно никакого членства. Вашим естественным желанием и побуждением будет пребывать в церкви, и служить Богу в том месте, которое Он лично усмотрит для Вас.</p>', 'Без рубрики', '2020-02-03 17:00:00', '2020-03-13 03:35:51');

-- --------------------------------------------------------

--
-- Структура таблицы `adress`
--

CREATE TABLE `adress` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rubric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `adress`
--

INSERT INTO `adress` (`id`, `title`, `description`, `rubric`, `created_at`, `updated_at`) VALUES
(1, 'Адрес служения', '<p>Воскресное служение проходит в 12-00 по адресу:\r\nг. Новосибирск, ул.Стартовая 1 ; Возле 14 подъезда 30 офис (Цокольный этаж); Ближайшая остановка городского транспорта «Горская » или на метро до станции «Студенческая». После Воскресного служения проводится молитвенное собрание.</p>', 'адрес', '2020-02-03 17:00:00', '2020-03-01 08:07:36');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rubric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `description`, `rubric`, `created_at`, `updated_at`) VALUES
(1, 'Контакты', '<p>Местная религиозная организация Евангельских Христиан “Часовня на Голгофе” Новосибирск\r\nСвидетельство о государственной регистрации религиозной организации № 173р, от 29.01.2001г.\r\n630073, г.Новосибирск, ул. Стартовая 1 оф. 30\r\nТел: 8 923 236 64 88\r\ne-mail: ccnovosib@gmail.com\r\nПастор – Миронов Алексей Валентинович.\r\n\r\nИНН: 5406197283\r\nКПП: 540601001\r\nРасчетный счет: 40703810423250000038\r\nНазвание Банка: ФИЛИАЛ «НОВОСИБИРСКИЙ» АО «АЛЬФА-БАНК»\r\nКор.счет: 30101810600000000774\r\nБИК: 045004774</p>', 'Контакты', '2020-02-02 17:00:00', '2020-03-01 08:25:15');

-- --------------------------------------------------------

--
-- Структура таблицы `english`
--

CREATE TABLE `english` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rubric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `english`
--

INSERT INTO `english` (`id`, `title`, `description`, `rubric`, `created_at`, `updated_at`) VALUES
(1, 'English', '<p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">Hello and welcome to the Calvary Chapel Novosibirsk website.<br>If you are looking for a place to worship while in Novosibirsk, Russia, please stop in and join us!</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">We are currently located at 5 Frunze street in the fourth floor conference hall.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">Our Sunday worship service begins at 11:00 am, with church-wide prayer meeting at 1:30pm. The service is taught in English and translated into Russian.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">During the week you may join us at the following meetings (all studies are in Russian*):</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">Monday 7:00 pm – Women’s Bible Study</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">Tuesday and Wednesday 7:00 pm – OT Bible Study open to all</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">Friday 7:00 pm – Men’s Bible Study</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">For locations and directions to the weekly meetings, please contact:</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">+7-913-487-2224</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">If you have any questions, please give us a call.</p><p style=\"font-family: Tahoma, Arial, Helvetica, sans-serif; font-size: 12px; text-align: justify;\">*although our studies are in Russian, there are those who attend that speak both Russian and English</p>', 'english', '2020-03-08 17:00:00', '2020-03-09 05:56:17');

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rubric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `title`, `event`, `rubric`, `url`, `created_at`, `updated_at`) VALUES
(1, '1-е Петра глава№1 Максим Горбунов (Омск)', 'КОНФЕРЕНЦИЯ ноябрь 2012г. «ЖИВИТЕ ВО СЛАВУ БОЖИЮ»', 'События', 'http://www.youtube.com/watch?v=ggRtCCPddsE&feature=em-uploademail-new', '2020-02-08 17:00:01', NULL),
(2, '1-е Петра глава№2 Алексей Миронов', 'КОНФЕРЕНЦИЯ ноябрь 2012г. «ЖИВИТЕ ВО СЛАВУ БОЖИЮ»', 'События', 'http://www.youtube.com/watch?v=XenX79Jk6UI', '2020-02-08 17:00:02', NULL),
(3, '1-е Петра глава№3 Саша Бутаков (Омск)', 'КОНФЕРЕНЦИЯ ноябрь 2012г. «ЖИВИТЕ ВО СЛАВУ БОЖИЮ»', 'События', 'http://www.youtube.com/watch?v=KT3DgIAgefU', '2020-02-08 17:00:03', NULL),
(4, '1-е Петра глава№4 Илья Новиков', 'КОНФЕРЕНЦИЯ ноябрь 2012г. «ЖИВИТЕ ВО СЛАВУ БОЖИЮ»', 'События', 'http://www.youtube.com/watch?v=dkuXoV-PMOY', '2020-02-08 17:00:04', NULL),
(5, '1-е Петра глава№5 Билл Шепперд', 'КОНФЕРЕНЦИЯ ноябрь 2012г. «ЖИВИТЕ ВО СЛАВУ БОЖИЮ»', 'События', 'http://www.youtube.com/watch?v=TwmLn6RxJTs', '2020-02-08 17:00:05', NULL),
(6, '1-Й Билл Шепперд', 'СЕМИНАРЫ', 'События', 'http://www.youtube.com/watch?v=ptb0KLIls68', '2020-02-08 17:00:06', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `journey`
--

CREATE TABLE `journey` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rubric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `journey`
--

INSERT INTO `journey` (`id`, `title`, `rubric`, `description`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Путешествие через Библию с Чаком Смитом', 'Путешествие', 'Последовательное изучение Библии (можно скачать в формате MP3)', 'http://russian.pastorchuck.com/', '2020-02-11 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2020_01_31_154320_create_links_table', 1),
(7, '2020_02_04_145258_create_adress_table', 2),
(8, '2020_02_04_151251_create_about_table', 3),
(9, '2020_02_04_152309_create_contacts_table', 4),
(10, '2020_02_09_070632_create_video_table', 5),
(11, '2020_02_09_144645_create_events_table', 6),
(12, '2020_02_12_144056_create_journey_table', 7),
(13, '2020_02_12_150828_create_preaching_table', 8),
(14, '2020_02_14_084618_create_reading_table', 9),
(15, '2020_03_09_124137_create_english_table', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `rubric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `url`, `rubric`, `created_at`, `updated_at`) VALUES
(1, 'Пояснения к новому закону', 'ВНИМАНИЕ!\r\n\r\nНОВЫЙ ЗАКОН О МИССИОНЕРСКОЙ ДЕЯТЕЛЬНОСТИ И РЕЛИГИОЗНЫХ ОРГАНИЗАЦИЯХ.', 'https://www.youtube.com/watch?v=IgWdeqdbLks&feature=youtu.be', 'Без рубрики', '2020-01-31 16:13:00', NULL),
(2, 'Внимание! Изменяется адрес воскресного служения!', 'С 28 апреля 2019 г. Воскресные служения будут проходить с 12-00 по адресу:\r\nг. Новосибирск, ул. Стартовая – 1, возле 14 подъезда слева, офис № 30 (цокольный этаж), вместо Ул.Фрунзе – 5; оф.447.', '', 'Без рубрики', '2020-01-31 16:13:00', NULL),
(3, 'Скачать в эл. виде «Библия за год»', 'Необязательно ждать 1-го января, чтобы начать. Читайте главы, предназначенные для 1-го января, в первый день Вашего Путешествия, главы 2-го января – во второй день, и так далее. Либо начинайте с главы, соответствующей календарной дате, и продолжайте читать следующие главы в следующие дни.', 'http://www.ccnovosibirsk.com/wp-content/uploads/2010/07/one_year_bible.zip', 'Без рубрики', '2020-01-31 16:13:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `preaching`
--

CREATE TABLE `preaching` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rubric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `preaching`
--

INSERT INTO `preaching` (`id`, `title`, `subTitle`, `author`, `rubric`, `url`, `created_at`, `updated_at`) VALUES
(1, 'ТЕМАТИЧЕСКИЕ ПРОПОВЕДИ', 'Проповедь на воскресном служении 14.07.2012 г. «ФИЛИПИЙЦАМ» 2 гл.', 'ЮРИЙ КВАЧЕНКО', 'Проповеди', 'http://www.youtube.com/watch?v=ZQMiMyvqOwE&feature=youtu.be', '2012-07-13 17:00:00', NULL),
(2, '', 'Проповедь на воскресном служении 23.03.2013 г. О ЖИЗНИ ДАВИДА', 'МАКСИМ ГОРБУНОВ (ОМСК)', 'Проповеди', 'http://www.youtube.com/watch?v=D68O6cwIcwo&feature=youtu.be', '2013-03-22 17:00:00', NULL),
(3, '', 'Проповедь на воскресном служении 13.10.2013 г. К Римлянам 10 гл. 1-16(часть 1).', 'ДЖИМ ( АМЕРИКА )', 'Проповеди', 'http://www.youtube.com/watch?v=f6WMjwn8lBU&feature=youtu.be', '2013-10-12 17:00:00', NULL),
(4, '', 'Проповедь на воскресном служении 13.10.2013 г. К Римлянам 10 гл. 1-16.(часть 2)', 'ДЖИМ ( АМЕРИКА )', 'Проповеди', 'http://www.youtube.com/watch?v=DT90kypqNMk&feature=youtu.be', '2013-10-12 17:00:00', NULL),
(5, '', 'Проповедь на воскресном служении 31.03.2014 (кн. Даниила 3 гл. Максим Ефимов)', 'МАКСИМ ЕФИМОВ', 'Проповеди', 'http://www.youtube.com/watch?v=yTehthJzsL0&feature=youtu.be', '2014-03-30 17:00:00', NULL),
(6, '', 'Проповедь на воскресном служении ОТКРОВЕНИЕ 21 гл. 08.02.2015(Юра Кваченко)', 'ЮРИЙ КВАЧЕНКО', 'Проповеди', 'http://www.youtube.com/watch?v=6TrUp9vr0t8&feature=youtu.be', '2015-02-07 17:00:00', NULL),
(7, '', 'КОНСТАНТИН КОРЕНЬКОВ (Ниж. Новгород) Книга прор.Авакума', 'КОНСТАНТИН КОРЕНЬКОВ', 'Проповеди', 'https://www.youtube.com/watch?v=ffph_wKehls&feature=youtu.be', '2020-02-11 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `reading`
--

CREATE TABLE `reading` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rubric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `reading`
--

INSERT INTO `reading` (`id`, `title`, `rubric`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Читаем Библию', 'Чтение', 'http://allbible.info/iframebible/', '2020-02-13 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'oohee@yandex.ru', NULL, '$2y$10$DGBuy1ZpEDtfpdG.1zh1guzk7uJFR.mZefl5MOAzxLjRkniqos2bK', NULL, '2020-03-09 08:23:37', '2020-03-09 08:23:37');

-- --------------------------------------------------------

--
-- Структура таблицы `video`
--

CREATE TABLE `video` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rubric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `video`
--

INSERT INTO `video` (`id`, `title`, `link`, `rubric`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Проповедь на воскресном служении', 'Рождество', 'Видео', 'http://www.youtube.com/watch?v=BoU19jcIhoo', '2015-01-06 17:00:00', NULL),
(2, 'Проповедь на воскресном служении «Благовествование»', 'К Римлянам, 1 глава', 'Видео', 'http://www.youtube.com/watch?v=z7n_ys9h6JM&feature=youtu.be', '2020-02-08 17:00:00', NULL),
(3, 'Проповедь на воскресном служении «Самоправедность это не праведность»', 'К Римлянам 3 гл.1-16', 'Видео', 'http://www.youtube.com/watch?v=tXLIEdj6XbY', '2020-02-08 17:00:00', NULL),
(4, 'Проповедь на воскресном служении «Оправдание»', 'К Римлянам 3 гл. 19-31', 'Видео', 'http://www.youtube.com/watch?v=9N9BgXBDMzA', '2015-01-10 17:00:00', NULL),
(5, 'Проповедь на воскресном служении «Бог оправдывает нечестивых»', 'К Римлянам 4 гл. 1-18', 'Видео', 'http://www.youtube.com/watch?v=KAT1EybUUaM', '2015-01-18 16:13:00', NULL),
(6, 'Проповедь на воскресном служении «Вера»', 'К Римлянам 4 гл. 19-25', 'Видео', 'http://www.youtube.com/watch?v=YO5D3VW_aA4&feature=youtu.be', '2015-01-25 16:13:00', NULL),
(7, 'Проповедь на воскресном служении «Мир с Богом»', 'К Римлянам 5 гл. 1-11', 'Видео', 'http://www.youtube.com/watch?v=I8GoNhfZy0M&feature=youtu.be', '2015-01-31 17:00:00', NULL),
(8, 'Проповедь на воскресном служении (Юра Кваченко)', 'ОТКРОВЕНИЕ 21 гл.', '', 'http://www.youtube.com/watch?v=6TrUp9vr0t8&feature=youtu.be', '2015-02-08 08:00:00', NULL),
(9, 'Проповедь на воскресном служении «Духовная генетика»', 'К Римлянам 5 гл.12-21', '', 'http://www.youtube.com/watch?v=5lTMbqagM0M&feature=youtu.be', '2015-02-13 17:00:00', NULL),
(10, 'Проповедь на воскресном служении «Царствуем в жизни»', 'К Римлянам 6 гл.1-16', '', 'http://www.youtube.com/watch?v=AGTDsoNd42A&feature=youtu.be', '2015-02-21 17:00:00', NULL),
(11, 'Проповедь на воскресном служении «Свобода»', 'К Римлянам 6 гл.15-23', '', 'http://www.youtube.com/watch?v=VFaxfkt7g5U', '2015-02-28 17:00:00', NULL),
(12, 'Проповедь на воскресном служении «Вы несмысленны?»', 'К Римлянам 7 гл.1-17', '', 'http://www.youtube.com/watch?v=USPCkW9O2Lw', '2015-03-07 17:00:00', NULL),
(13, 'Проповедь на воскресном служении «От отчаяния к надежде»', 'К Римлянам 7 гл.1-17', '', 'https://www.youtube.com/watch?v=OP5h5b1QWsE&feature=youtu.be', '2015-03-14 17:00:00', NULL),
(14, 'Проповедь на воскресном служении «Искупление закона»', 'К Римлянам 8 гл.1-4', '', 'https://www.youtube.com/watch?v=0kHYU0jjQX0&feature=youtu.be', '2015-03-21 17:00:00', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `english`
--
ALTER TABLE `english`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_url_unique` (`url`);

--
-- Индексы таблицы `journey`
--
ALTER TABLE `journey`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `journey_url_unique` (`url`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_url_unique` (`url`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `preaching`
--
ALTER TABLE `preaching`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `preaching_url_unique` (`url`);

--
-- Индексы таблицы `reading`
--
ALTER TABLE `reading`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reading_url_unique` (`url`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `video_url_unique` (`url`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `adress`
--
ALTER TABLE `adress`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `english`
--
ALTER TABLE `english`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `journey`
--
ALTER TABLE `journey`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `preaching`
--
ALTER TABLE `preaching`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `reading`
--
ALTER TABLE `reading`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `video`
--
ALTER TABLE `video`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

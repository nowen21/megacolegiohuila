-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 13-07-2018 a las 11:10:41
-- Versión del servidor: 5.6.39
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `marillac_SIGE`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academic_settings`
--

CREATE TABLE `academic_settings` (
  `settings_id` int(100) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `academic_settings`
--

INSERT INTO `academic_settings` (`settings_id`, `type`, `description`) VALUES
(2, 'report_teacher', NULL),
(3, 'minium_mark', '5,0'),
(22, 'tabulation', NULL),
(25, 'routine', '2'),
(1, 'limit_upload', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `academic_syllabus`
--

CREATE TABLE `academic_syllabus` (
  `academic_syllabus_id` int(11) NOT NULL,
  `academic_syllabus_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `uploader_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `file_type` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `owner_status` int(11) NOT NULL DEFAULT '0' COMMENT '1 owner, 0 not owner',
  `username` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '1',
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_os` longtext COLLATE utf8_unicode_ci,
  `last_ip` longtext COLLATE utf8_unicode_ci,
  `last_date` longtext COLLATE utf8_unicode_ci,
  `last_device` longtext COLLATE utf8_unicode_ci,
  `authentication_key` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `messages` int(11) DEFAULT NULL,
  `notify` int(11) DEFAULT NULL,
  `information` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `academic` int(11) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `schedules` int(11) DEFAULT NULL,
  `news` int(11) DEFAULT NULL,
  `library` int(11) DEFAULT NULL,
  `be` int(11) DEFAULT NULL,
  `acc` int(11) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `school` int(11) DEFAULT NULL,
  `polls` int(11) DEFAULT NULL,
  `settings` int(11) DEFAULT NULL,
  `academic_se` int(11) DEFAULT NULL,
  `files` int(11) DEFAULT NULL,
  `users` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `phone`, `address`, `owner_status`, `username`, `status`, `birthday`, `last_os`, `last_ip`, `last_date`, `last_device`, `authentication_key`, `messages`, `notify`, `information`, `marks`, `academic`, `attendance`, `schedules`, `news`, `library`, `be`, `acc`, `class`, `school`, `polls`, `settings`, `academic_se`, `files`, `users`) VALUES
(1, 'Administrador, General', 'joned.f@hotmail.com', '4332a32c93ec897aa50c06cfe3c2f4de6224f888', '3142114498', 'Calle 6 # 6-48', 1, 'joned', 1, '05/24/2018', NULL, NULL, NULL, NULL, 'db4f2d16568924de73aee89c998a7a76', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0(undefined) 1(present) 2(absent)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('08l1037jfes6qk1bils9u92916ssd44r', '147.75.119.110', 1530070608, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303037303630373b),
('0t72jkmk14o8f0qb6e5ava3up0lbu046', '191.102.222.133', 1530058679, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303035383535323b746561636865725f6c6f67696e7c733a313a2231223b746561636865725f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a343a224a4f484e223b6c6f67696e5f747970657c733a373a2274656163686572223b),
('10k7653k7cg63tv9jj97nj75bbv2iepc', '147.75.119.110', 1529728222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732383232323b),
('114u4k9j67j7p165vqltbp27kk9sruln', '34.202.93.213', 1531190261, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313139303235383b),
('12j83llrulh8bhha2id44ca5t37q7ka8', '191.102.222.133', 1529802773, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393830323737333b),
('2k892j6sbfs8hksipq2f33pg44ecre7m', '69.171.225.77', 1529862117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393836323131373b),
('2r7orjrmup0v3nd1o7e4uf5mf5lj06am', '147.75.119.110', 1529727658, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732373632353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('3sqdnc6bovhjbv68qslu8lh0hp9hc4cg', '191.102.222.133', 1530055391, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303035353239313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('4ebac8eidff9kcvht9jnsue5ua6bd53h', '191.102.222.133', 1529784958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393738343935383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('4k36faqrbet0d93nu80dlno0u7qo2hkk', '147.75.119.110', 1530063667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303036333436363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('4tn1ght93cs5f11qqlmbgqebrdejvusn', '191.102.222.133', 1529784953, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393737363530363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('5817fig1rlll2mdtav8iutocaq90vhkj', '54.158.176.251', 1529817884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393831373838343b),
('58aananud20p3u8o9icl0si6fe7b8nrf', '147.75.119.110', 1529727484, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732373234373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('5gektsf7t7kin1pn22vvkcg44medhc1m', '77.94.15.150', 1530948616, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303934383631363b),
('6569re98q6fank2c2tcer6umdhqk4a9n', '191.102.222.133', 1529859581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393835393537323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('6u62887j3dvdi6oib40jrjo62f22cmm7', '147.75.119.110', 1529727136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732363837303b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('6ue8str333udtst6bnhv7issl0psbrea', '147.75.119.110', 1529726396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732363039363b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('7lrrdtshtfa7en2k3ob7rjpv7dek1u11', '191.102.222.133', 1530221015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303232313030383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('82n0i00cr3catmlnfuugr9tmd8ufbqeu', '191.102.222.133', 1529857859, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393835373131363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('91tidd4j9bfb29v182g6u7k74em286jr', '181.174.73.45', 1529726594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732363539303b),
('9ecbod1rtgfnnck72h2go7q2hsu001nv', '191.102.222.133', 1529802248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393830313935393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('a7j5dap62mg21bvdrel0cnrur0n5ar0p', '147.75.119.110', 1529726624, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732363339373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('afsjifkhvi60lgjsef4ovqtntamta69k', '147.75.119.110', 1529725941, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732353732363b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('at8smeji8d1ovnrm8533vh6sm226qm8h', '54.166.131.19', 1531437678, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313433373637383b),
('bcfnqt63tr5vpn5snlf48epb4885n931', '191.102.222.133', 1529856740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393835363733373b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('bmn82nc2ds7gjr7igv3q8rkv903jdukg', '147.75.119.110', 1529722532, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732323236383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('c23cu45s5nvlmscle36qh0br1ne52js7', '167.114.219.41', 1529751954, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393735313935343b),
('c9vqiib4aogq4pijpdvt2suhdr9kofr5', '191.102.222.133', 1529856483, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393835363236363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b666c6173685f6d6573736167657c733a33353a22496e666f726d616369c3b36e2061637475616c697a61646120636f6e20c3a97869746f223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('cjo49bg9bk646vd4okc7s0ri1nh1beus', '191.102.222.133', 1530058010, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303035373733383b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('cu3a7kp3b218ss9feh4hlj956i2glspc', '191.102.222.133', 1530058550, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303035383039353b746561636865725f6c6f67696e7c733a313a2231223b746561636865725f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a343a224a4f484e223b6c6f67696e5f747970657c733a373a2274656163686572223b),
('dckd0f1kp1dtrphgr7313pqnu0d67qgq', '191.102.222.133', 1529858270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393835373932323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('ddqpmm7atlqj2d2lehe0dem1s99en49k', '191.102.222.133', 1530896257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303839363235363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('e9etatud52pu9tedi5sa5fdn45pa8v7v', '191.102.222.133', 1530055356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303035353132393b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b),
('egm188lag6m9eat6anedfevs7d7iv6ff', '191.102.222.133', 1530061036, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303036303939383b746561636865725f6c6f67696e7c733a313a2231223b746561636865725f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a343a224a4f484e223b6c6f67696e5f747970657c733a373a2274656163686572223b),
('ejmgn7cvd7jfsv7esn6hrn4k1asfmqss', '147.75.119.110', 1529722265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732323130383b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('fo5f0ofh575b45sv9ctcn308h0rpur7c', '191.102.222.133', 1529858825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393835383539313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b666c6173685f6d6573736167657c733a33353a22496e666f726d616369c3b36e2061637475616c697a61646120636f6e20c3a97869746f223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('i5qgrhamvea8do96ltphogs9a5223bqt', '147.75.119.110', 1529761124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393736313132343b),
('il5u10arfkkc4o241vdkrj7tg6hbg156', '181.174.73.45', 1529726566, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732363535333b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
('j9915vel5h2b7b4h1qk5f81iqnskjpp6', '191.102.222.133', 1530895984, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303839353933323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('jhdu4dail0k94glhs09sj26nrph7ekab', '147.75.119.110', 1529726177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732363036353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('kd9f3situ4nipdn7bngktanpr3ust0vs', '188.73.148.2', 1530659299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303635393239393b),
('kf62vq70rjoigjjt4utknsrgrdkanpj9', '191.102.222.133', 1529860094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393836303037303b),
('ldo87q17ov971qjc4hsjsghvapogucfr', '66.220.157.225', 1529726325, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732363332343b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b),
('lg4q5n3roaa4emp0jhunmmv212hnk2np', '147.75.119.110', 1529727940, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732373637373b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b666c6173685f6d6573736167657c733a33353a22496e666f726d616369c3b36e2061637475616c697a61646120636f6e20c3a97869746f223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('lk4c3fomsbd8kh3hkggpjmja9051tvs0', '84.201.133.45', 1530304040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303330343034303b),
('lkm9du8b2b30h1be0ugknh1rdk1rksle', '191.102.222.133', 1529802502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393830323236313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('lrkbgbd0pebph1l090ralsdt2vqsk3rc', '159.89.186.17', 1531438488, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313433383438383b),
('lvumfarooidjkdv8jdbkcacme5grlbcm', '54.158.176.251', 1529815547, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393831353534373b),
('mfnp59u7mkb6n174jfba1a2bpqumbpv4', '191.102.222.133', 1529859179, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393835383935303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('o2fu5of8bkku1isib039g9f1d6dohht3', '190.106.211.146', 1529728039, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732383033393b),
('o8re6i52mfgsrla8d7skqiqqck3j61cp', '191.102.222.133', 1529860376, 0x746561636865725f6c6f67696e7c733a313a2231223b746561636865725f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a343a224a4f484e223b6c6f67696e5f747970657c733a373a2274656163686572223b5f5f63695f6c6173745f726567656e65726174657c693a313532393836303132313b),
('ootp82t5q9sl3bpnckncq5otibb22i2s', '54.162.61.3', 1531425456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313432353435363b),
('ou3m3v5hde0hfvq077c1eh5cg5dqq2p2', '191.102.222.133', 1530896692, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303839363639303b),
('p4dvine9j52mpgjrvrbsb6rl50vc32cb', '191.102.222.133', 1530055407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303035353338303b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('pekundg0icq9vasrh0mmiejer8s114p1', '147.75.119.110', 1529722688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732323637353b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('poaknvorc5cvl1hgltbpo48436svjc5c', '141.8.143.167', 1530304046, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303330343034363b),
('q88l3leok6gogd364gu8s3p431ic450v', '147.75.119.110', 1531154087, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533313135343037323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('q9sbco0213r7qsts2v3qb3dfolmuq5n7', '191.102.222.133', 1529860695, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393836303636363b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('qmh2kfekprsi9anic53du2v32hl4vqmt', '176.9.117.99', 1530776662, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303737363436343b),
('sue3rhappjs8o1osh7soeohoir8ajqc8', '147.75.119.110', 1529726409, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393732363333363b63757272656e745f6c616e67756167657c733a373a22656e676c697368223b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('t3s2h2ge7fe42bni2qbt8h3o5ldrkrcf', '191.102.222.133', 1530057072, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303035363933333b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b),
('tk47nsml5k36m1dm9kg9lv0q0onocku6', '191.102.222.133', 1529859485, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532393835393236323b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b666c6173685f6d6573736167657c733a33323a22496e666f726d616369c3b36e20616772656761646120636f6e20c3a97869746f223b5f5f63695f766172737c613a313a7b733a31333a22666c6173685f6d657373616765223b733a333a226f6c64223b7d),
('tlnqpak0sr5l3tb9uvhg2nrju3h0mvam', '191.102.222.133', 1530226745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303232363732313b61646d696e5f6c6f67696e7c733a313a2231223b61646d696e5f69647c733a313a2231223b6c6f67696e5f757365725f69647c733a313a2231223b6e616d657c733a32323a2241646d696e6973747261646f722c2047656e6572616c223b6c6f67696e5f747970657c733a353a2261646d696e223b);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext COLLATE utf8_unicode_ci,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES
(1, 'Sexto-A', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `class_routine`
--

CREATE TABLE `class_routine` (
  `class_routine_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `time_start_min` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `time_end_min` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deliveries`
--

CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL,
  `homework_code` varchar(600) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` varchar(600) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `student_comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `teacher_comment` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `subject_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `homework_reply` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `mark` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document`
--

CREATE TABLE `document` (
  `document_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dormitory`
--

CREATE TABLE `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dormitory`
--

INSERT INTO `dormitory` (`dormitory_id`, `name`, `number`) VALUES
(2, '601', 'Sexto_A'),
(3, '602', 'Sexto_B'),
(4, '603', 'Sexto_C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `task` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `instruction` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `task`, `subject`, `body`, `instruction`) VALUES
(1, 'new_homework', 'New homework uploaded', '<p>Hola,</p>\r\n<p>Tu profesor de [SUBJECT] ha subido una nueva tarea al sistema, la informaci&oacute;n es la siguiente:</p>\r\n<p><br /> T&iacute;tulo : [TITLE]</p>\r\n<p>Descripci&oacute;n: [DESCRIPTION]</p>\r\n<p>&nbsp;</p>\r\n<p>Para revisar esta tarea ingresa a tu Aula Virtual, secci&oacute;n <strong>Tareas.</strong></p>', ''),
(2, 'student_absences', 'Absenses', '<div>Hola <strong>[PARENT]</strong>,</div>\r\n<p>El motivo del correo es para notificarle que su apreciable hijo <strong>[STUDENT]</strong> no se presento a clases el d&iacute;a de hoy, si se trata de una emergencia por favor comunicarse al establecimeinto.</p>', ''),
(3, 'student_reports', 'New report', '<div>\r\n<div>\r\n<p>Hola [PARENT],</p>\r\n<p>Se ha creado un nuevo reporte de disciplina para [STUDENT], por favor consultar en los reportes acad&eacute;micos dentro de su cuenta.</p>\r\n</div>\r\n</div>', ''),
(4, 'parent_new_invoice', 'New invoice', '<p>Hola [PARENT],</p>\r\n<p>Se ha creado una nueva factura para [STUDENT], para ver los detalles de la factura por favor ingrese a su administraci&oacute;n de pagos en su cuenta.</p>', ''),
(5, 'student_new_invoice', 'New invoice', '<p>Hola [STUDENT],</p>\n<p>Se ha creado una nueva factura con tu nombre, para ver los detalles de la factura por favor ingresa a tu administraci&oacute;n de pagos en tu cuenta.</p>', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enroll`
--

CREATE TABLE `enroll` (
  `enroll_id` int(11) NOT NULL,
  `enroll_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `roll` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `date_added` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `enroll`
--

INSERT INTO `enroll` (`enroll_id`, `enroll_code`, `student_id`, `class_id`, `section_id`, `roll`, `date_added`, `year`) VALUES
(1, 'e9309e9', 1, 1, 1, '', '1529858591', '2017-2018'),
(2, '3b1f8d9', 2, 1, 1, '', '1529858591', '2017-2018'),
(3, '9aea1f4', 3, 1, 1, '', '1529858591', '2017-2018'),
(4, '5e204db', 4, 1, 1, '', '1529858591', '2017-2018'),
(5, 'c7d72ea', 5, 1, 1, '', '1529858591', '2017-2018'),
(6, '8b7c43d', 6, 1, 1, '', '1529858591', '2017-2018'),
(7, '2cf05db', 7, 1, 1, '', '1529858591', '2017-2018'),
(8, '4eb9329', 8, 1, 1, '', '1529858591', '2017-2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datefrom` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dateto` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exam`
--

CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `start` longtext COLLATE utf8_unicode_ci,
  `end` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `exams`
--

CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `availablefrom` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `availableto` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `questions` int(11) NOT NULL,
  `pass` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `clock_start` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `exam_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `clock_end` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expense_category`
--

CREATE TABLE `expense_category` (
  `expense_category_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum`
--

CREATE TABLE `forum` (
  `post_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `post_status` int(11) DEFAULT '1',
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forum_message`
--

CREATE TABLE `forum_message` (
  `message` longtext CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci,
  `grade_point` longtext COLLATE utf8_unicode_ci,
  `mark_from` int(11) DEFAULT NULL,
  `mark_upto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_message`
--

CREATE TABLE `group_message` (
  `group_message_id` int(11) NOT NULL,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci,
  `sender` longtext COLLATE utf8_unicode_ci,
  `message` longtext COLLATE utf8_unicode_ci,
  `timestamp` longtext COLLATE utf8_unicode_ci,
  `read_status` int(11) DEFAULT NULL,
  `attached_file_name` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `group_message_thread`
--

CREATE TABLE `group_message_thread` (
  `group_message_thread_id` int(11) NOT NULL,
  `group_message_thread_code` longtext COLLATE utf8_unicode_ci,
  `members` longtext COLLATE utf8_unicode_ci,
  `group_name` longtext COLLATE utf8_unicode_ci,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci,
  `created_timestamp` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `homework`
--

CREATE TABLE `homework` (
  `homework_id` int(11) NOT NULL,
  `homework_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `time_end` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_id` int(11) NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_end` varchar(600) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `user` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios_examenes`
--

CREATE TABLE `horarios_examenes` (
  `horario_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `time_start_min` int(11) NOT NULL,
  `time_end_min` int(11) NOT NULL,
  `day` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_paid` longtext COLLATE utf8_unicode_ci NOT NULL,
  `due` longtext COLLATE utf8_unicode_ci NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci,
  `payment_method` longtext COLLATE utf8_unicode_ci,
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid',
  `year` longtext COLLATE utf8_unicode_ci,
  `class_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `language`
--

CREATE TABLE `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL,
  `spanish` longtext COLLATE utf8_unicode_ci NOT NULL,
  `portuguese` longtext COLLATE utf8_unicode_ci,
  `hindi` longtext COLLATE utf8_unicode_ci,
  `french` longtext COLLATE utf8_unicode_ci,
  `serbian` longtext COLLATE utf8_unicode_ci,
  `arabic` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `spanish`, `portuguese`, `hindi`, `french`, `serbian`, `arabic`) VALUES
(1, 'dashboard', 'Dashboard', 'Tablero', 'Painel de controle', 'डैशबोर्ड', 'Tableau de bord', 'Командна табла', 'لوحة القيادة'),
(2, 'parent', 'Parent', 'Padre', 'Pai', 'माता-पिता', 'Parent', 'Родитељ', 'الأبوين'),
(3, 'profile', 'Profile', 'Perfil', 'Perfil do usuário', 'प्रोफाइल', 'Profil', 'профил', 'الملف الشخصي'),
(4, 'logout', 'Logout', 'Cerrar sesión', 'Fechar Sessão', 'लोग आउट', 'Connectez - Out', 'одјавити се', 'الخروج'),
(5, 'messages', 'Messages', 'Mensajes', 'Postagens', 'संदेश', 'Messages', 'Поруке', 'رسائل'),
(6, 'noticeboard', 'Noticeboard', 'Noticias y Eventos', 'Quadro de notícias', 'सूचना पट्ट', 'Tableau d\'affichage', 'Огласна табла', 'لوح الإعلانات'),
(7, 'teachers', 'Teachers', 'Profesores', 'Professores', 'शिक्षकों की', 'Enseignants', 'Наставници', 'معلمون'),
(8, 'schedules', 'Schedules', 'Horarios', 'Horários', 'अनुसूचियों', 'Des horaires', 'распоред', 'جداول'),
(9, 'attendance', 'Attendance', 'Asistencia', 'Comparecimento', 'उपस्थिति', 'Présence', 'похађање', 'الحضور'),
(10, 'library', 'Library', 'Biblioteca', 'Biblioteca', 'पुस्तकालय', 'Bibliothèque', 'Библиотека', 'مكتبة'),
(11, 'marks', 'Marks', 'Calificaciones', 'Classificações', 'निशान', 'Des notes', 'оцене', 'علامات'),
(12, 'classroom', 'Classroom', 'Salon', 'Sala de aula virtual', 'कक्षा', 'Salle de classe', 'Учионица', 'قاعة الدراسة'),
(13, 'payments', 'Payments', 'Pagos', 'Pagamentos', 'भुगतान', 'Paiements', 'Плаћања', 'المدفوعات'),
(14, 'admins', 'Admins', 'Administradores', 'Administradores', 'व्यवस्थापक', 'Administrateurs', 'Админс', 'مدراء'),
(15, 'students', 'Students', 'Estudiantes', 'Estudantes', 'छात्र', 'Élèves', 'студенти', 'الطلاب'),
(16, 'parents', 'Parents', 'Padres', 'Parentes', 'माता-पिता', 'Parents', 'Родитељи', 'الآباء'),
(17, 'news', 'News', 'Noticias', 'Notícia', 'समाचार', 'Nouvelles', 'Вести', 'أخبار'),
(18, 'events', 'Events', 'Eventos', 'Eventos', 'आयोजन', 'Événements', 'Догађаји', 'أحداث'),
(19, 'view_more', 'View more', 'Ver más', 'Veja mais', 'और देखो', 'Afficher plus', 'Погледај још', 'عرض المزيد'),
(20, 'online_users', 'Online users', 'Usuarios en línea', 'Usuários online', 'ऑनलाइन उपयोगकर्ता', 'Utilisateurs en ligne', 'Онлине корисници', 'مستخدمين على الهواء'),
(21, 'last_5_minutes', 'Last 5 minutes', 'Últimos 5 minutos', 'Últimos 5 minutos', 'पिछले 5 मिनट', 'Dernières 5 minutes', 'Последњих 5 минута', 'آخر 5 دقائق'),
(22, 'polls', 'Polls', 'Encuestas', 'Enquetes', 'पोल', 'Les sondages', ' Анкете', 'استطلاعات الرأي'),
(23, 'thank_you_polls', 'Thanks for your participation', 'Gracias por participar', 'Obrigado pela sua participação', 'आपकी भागीदारी के लिए धन्यवाद', 'Merci de votre participation', 'Хвала што сте учествовали', 'شكرا على مشاركتكم'),
(24, 'private_messages', 'Private messages', 'Mensajes Privados', 'Mensagens privadas', 'निजी संदेश', 'Messages privés', 'Приватне поруке', 'رسائل خاصة'),
(25, 'admin', 'Admin', 'Admin', 'Administradores', 'व्यवस्थापक', 'Admin', 'Админ', 'مشرف'),
(26, 'hi', 'Hi', 'Hola', 'Oi', 'नमस्ते', 'salut', 'Здраво', 'مرحبا'),
(27, 'message_home', 'Chat, Connect and Learn', 'Chatea, Conecta y Aprende', 'Bate-papo, Conecte e Aprenda', 'चैट करें, कनेक्ट करें और जानें', 'Chat, connexion et apprentissage', 'Ћаскање се повезује и учити', 'دردشة، الاتصال والتعلم'),
(28, 'write_message', 'Write your message', 'Escribir mensaje', 'Escreva sua mensagem', 'अपना संदेश लिखें', 'Écrivez votre message', 'Писати поруке', 'اكتب رسالتك'),
(29, 'send_file', 'Send a file', 'Enviar archivo', 'Enviar um arquivo', 'एक फाइल भेजें', 'Envoyer un fichier', 'Пошаљи датотеку', 'إرسال ملف'),
(30, 'send', 'Send', 'Enviar', 'Enviar', 'भेजना', 'Envoyer', 'Пошаљи', 'إرسال'),
(31, 'receiver', 'Receiver', 'Receptor', 'Receptor', 'रिसीवर', 'Récepteur', 'Пријемник', 'المتلقي'),
(32, 'view', 'View', 'Ver', 'Visão', 'राय', 'Vue', 'поглед', 'رأي'),
(33, 'comment_success', 'Comment posted successfully', 'Comentario publicado', 'Comentários publicados com sucesso', 'टिप्पणी सफलतापूर्वक पोस्ट की गई', 'Commentaire publié avec succès', 'Коментар успех', 'تم نشر التعليق بنجاح'),
(34, 'subject', 'Subject', 'Curso', 'Sujeito', 'विषय', 'Assujettir', 'Предмет', 'موضوع'),
(35, 'teacher', 'Teacher', 'Profesor', 'Professor', 'अध्यापक', 'Prof', 'Наставник', 'مدرس'),
(36, 'send_message', 'Send message', 'Enviar mensaje', 'Enviar mensagem', 'मेसेज भेजें', 'Envoyer le message', 'Пошаљи поруку', 'إرسال رسالة'),
(37, 'class_routine', 'Class Routine', 'Horario de clases', 'Rotina de Classe', 'कक्षा सामान्य', 'Routine de classe', 'Распоред класа', 'الدرجة الروتينية'),
(38, 'exam_routine', 'Exam Routine', 'Horario de examenes', 'Rotina de exames', 'परीक्षा नियमित', 'Routine d\'examen', 'Распоред испита', 'امتحان روتيني'),
(39, 'attendance_report', 'Attendance report', 'Reporte de asistencia', 'Relatório de presenças', 'उपस्थिति विवरण', 'Rapport de présence', 'Извештај о присуству', 'تقرير الحضور'),
(40, 'month', 'Month', 'Mes', 'Mês', 'महीना', 'Mois', 'месец дана', 'شهر'),
(41, 'january', 'January', 'Enero', 'janeiro', 'जनवरी', 'janvier', 'Јануар', 'كانون الثاني'),
(42, 'february', 'February', 'Febrero', 'fevereiro', 'फरवरी', 'février', 'Фебруар', 'شهر فبراير'),
(43, 'march', 'March', 'Marzo', 'marcha', 'मार्च', 'Mars', 'Марш', 'مارس'),
(44, 'april', 'April', 'Abril', 'abril', 'अप्रैल', 'avril', 'Абрил', 'أبريل'),
(45, 'may', 'May', 'Mayo', 'mayo', 'मई', 'Mai', 'Мај', 'قد'),
(46, 'june', 'June', 'Junio', 'Junho', 'जून', 'juin', 'jyh', 'يونيو'),
(47, 'july', 'July', 'Julio', 'Julho', 'जुलाई', 'juillet', 'Јули', 'يوليو'),
(48, 'august', 'August', 'Agosto', 'agosto', 'अगस्त', 'août', 'Август', 'أغسطس'),
(49, 'september', 'September', 'Septiembre', 'setembro', 'सितंबर', 'septembre', 'септембар', 'سبتمبر'),
(50, 'october', 'October', 'Octubre', 'Outubro', 'अक्टूबर', 'octobre', 'Октобар', 'شهر اكتوبر'),
(51, 'november', 'November', 'Noviembre ', 'novembro', 'नवंबर', 'novembre', 'Новембар', 'شهر نوفمبر'),
(52, 'december', 'December', 'Diciembre', 'dezembro', 'दिसंबर', 'décembre', 'Децембар', 'ديسمبر'),
(53, 'student', 'Student', 'Estudiante', 'Aluna', 'छात्र', 'Étudiant', 'ученик', 'طالب علم'),
(54, 'select', 'Select', 'Seleccionar', 'Selecione', 'चुनते हैं', 'Sélectionner', 'Изаберите', 'تحديد'),
(55, 'generate', 'Generate', 'Generar', 'Gerar', 'उत्पन्न', 'Générer', 'Генериши', 'توفير'),
(56, 'type', 'Type', 'Tipo', 'Tipo', 'प्रकार', 'Type', 'тип', 'اكتب'),
(57, 'name', 'Name', 'Nombre', 'Nome', 'नाम', 'prénom', 'Име', 'اسم'),
(58, 'author', 'Author', 'Autor', 'Autor', 'लेखक', 'Auteur', 'Аутор', 'مؤلف'),
(59, 'description', 'Description', 'Descripción', 'Descrição', 'विवरण', 'La description', 'Опис', 'وصف'),
(60, 'status', 'Status', 'Estado', 'Status', 'स्थिति', 'Statut', 'Статус', 'الحالة'),
(61, 'price', 'Price', 'Precio', 'Preço', 'मूल्य', 'Prix', 'Цена', 'السعر'),
(62, 'download', 'Download', 'Descargar', 'Download', 'डाउनलोड', 'Télécharger', 'преузимање', 'تحميل'),
(63, 'normal', 'Normal', 'Normal', 'Normal', 'साधारण', 'Normal', 'Нормално', 'عادي'),
(64, 'no_downloaded', 'No file to download', 'No disponible', 'Nenhum arquivo para baixar', 'डाउनलोड करने के लिए कोई फ़ाइल नहीं', 'Aucun fichier à télécharger', 'није доступно', 'لا يوجد ملف لتنزيله'),
(65, 'virtual', 'Virtual', 'Virtual', 'Virtual', 'वास्तविक', 'Virtuel', 'Виртуелно', 'افتراضية'),
(66, 'roll', 'Roll ID', 'Roll ID', 'Roll ID', 'रोल आईडी', 'Roll ID', 'Ролл', 'معرف لفة'),
(67, 'class', 'Class', 'Grado', 'Classe', 'कक्षा', 'Classe', 'класа', 'صف دراسي'),
(68, 'section', 'Section', 'Sección', 'Seção', 'अनुभाग', 'Section', 'Одељак', 'الجزء'),
(69, 'mark', 'Mark', 'Nota', 'Marca', 'निशान', 'marque', 'Марк', 'علامة'),
(70, 'comment', 'Comment', 'Comentario', 'Comente', 'टिप्पणी', 'Commentaire', 'Коментар', 'تعليق'),
(71, 'view_all', 'View all', 'Ver todo', 'Ver tudo', 'सभी को देखें', 'Voir tout', 'погледати све', 'عرض الكل'),
(72, 'online_exams', 'Online exams', 'Exámenes en línea', 'Exames on-line', 'ऑनलाइन परीक्षाएं', 'Examens en ligne', 'Онлине испити', 'الامتحانات عبر الإنترنت'),
(73, 'homework', 'Homework', 'Tarea', 'Dever de casa', 'घर का पाठ', 'Devoirs', 'домаћи задатак', 'واجب منزلي'),
(74, 'study_material', 'Study material', 'Material de estudio', 'Material de estudo', 'अध्ययन सामग्री', 'Matériel d\'étude', 'Студијски материјал', 'المواد الدراسية'),
(75, 'syllabus', 'Syllabus', 'Contenidos de unidad', 'Programa de Estudos', 'पाठ्यक्रम', 'Programme', 'Садржај семестра', 'المنهج'),
(76, 'title', 'Title', 'Título', 'Título', 'शीर्षक', 'Titre', 'Наслов', 'عنوان'),
(77, 'start_date', 'Start date', 'Fecha de inicio', 'Data de início', 'आरंभ करने की तिथि', 'Date de début', 'Датум почетка', 'تاريخ البدء'),
(78, 'end_date', 'End date', 'Fecha límite', 'Data final', 'अंतिम तिथि', 'Date de fin', 'крајњи датум', 'تاريخ الانتهاء'),
(79, 'results', 'Results', 'Resultados', 'Resultados', 'परिणाम', 'Résultats', 'Резултате', 'النتائج'),
(80, 'view_results', 'View results', 'Ver resultados', 'Ver resultados', 'परिणाम देखें', 'Voir les résultats', 'Погледајте резултате', 'عرض النتائج'),
(81, 'no_data', 'No data available', 'Sin datos', 'Não há dados disponíveis', 'कोई डेटा उपलब्ध नहीं है', 'Pas de données disponibles', 'нема података', 'لا تتوافر بيانات'),
(82, 'of', 'of', 'de', 'of', 'का', 'de', 'Оф', 'من'),
(83, 'delivery_date', 'Delivery date', 'Fecha de entrega', 'Data de entrega', 'डिलीवरी की तारीख', 'Date de livraison', 'датум испоруке', 'تاريخ التسليم او الوصول'),
(84, 'details', 'Details', 'Detalles', 'Detalhes', 'विवरण', 'Détails', 'Детаље', 'تفاصيل'),
(85, 'back', 'Back', 'Regresar', 'Back', 'वापस', 'Arrière', 'назад', 'الى الخلف'),
(86, 'file', 'File', 'Archivo', 'Arquivo', 'फ़ाइल', 'Fichier', 'Филе', 'ملف'),
(87, 'no_delivered', 'Not delivered', 'No entregado', 'Não entregue', 'डिलीवर नहीं हुआ', 'Non livrés', 'Није испоручено', 'لم يتم تسليمها'),
(88, 'information', 'Information', 'Información', 'Em formação', 'जानकारी', 'Information', 'Информације', 'معلومات'),
(89, 'limit_date', 'Limit date', 'Fecha limite', 'Data-limite', 'सीमा तिथि', 'Date limite', 'Датум ограничења', 'تاريخ الحد'),
(90, 'allowed_deliveries', 'Deliveries allowed up to', 'Se permiten entregas hasta', 'Entregas permitidas até', 'तक पहुंचने की अनुमति', 'Les livraisons ont permis jusqu\'à', 'Достава је дозвољена до', 'عمليات التسليم المسموح بها تصل إلى'),
(91, 'unrated', 'Unrated', 'Sin calificar', 'Sem classificação', 'अनरेटेड', 'Non évalué', 'Унратед', 'غير مصنف'),
(92, 'teacher_comment', 'Teacher comment', 'Comentario del profesor', 'Comentário do professor', 'शिक्षक टिप्पणी', 'Commentaire de l\'enseignant', 'Коментар наставника', 'تعليق المعلم'),
(93, 'date', 'Date', 'Fecha', 'Date', 'तारीख', 'Rendez-vous amoureux', 'Датум', 'تاريخ'),
(94, 'upload_by', 'Uploaded by', 'Subido por', 'Enviado por', 'द्वारा डाली गई', 'telechargé par', 'Уплоад би', 'تم الرفع بواسطة...'),
(95, 'subject_marks', 'Subject marks', 'Calificaciones por curso', 'Marcas de assunto', 'विषय के निशान', 'Signes du sujet', 'Оцене по курсу', 'علامات الموضوع'),
(96, 'activity', 'Activity', 'Actividad', 'Atividade', 'गतिविधि', 'Activité', 'активност', 'نشاط'),
(97, 'amount', 'Amount', 'Monto', 'Montante', 'रकम', 'Montant', 'износ', 'كمية'),
(98, 'invoice', 'Invoice', 'Factura', 'Fatura', 'बीजक', 'Facture d\'achat', 'фактура', 'فاتورة'),
(99, 'make_payment', 'Make payment', 'Realizar pago', 'Faça o pagamento', 'भुगतान करो', 'Effectuer le paiement', 'извршити уплату', 'قم بالدفع'),
(100, 'pay_with_paypal', 'Pay with PayPal', 'Pagar con PayPal', 'Pagar com PayPal', 'पेपैल के साथ भुगतान करें', 'Payer avec PayPal', 'Платите уз паипал', 'الدفع بواسط باى بال'),
(101, 'view_invoice', 'View invoice', 'Ver factura', 'Ver fatura', 'चालान देखें', 'Voir la facture', 'Погледајте фактуру', 'عرض الفاتورة'),
(102, 'phone', 'Phone', 'Celular', 'telefone', 'फ़ोन', 'Téléphone', 'Телефон', 'هاتف'),
(103, 'total', 'Total', 'Total', 'Total', 'कुल', 'Total', 'Укупно', 'مجموع'),
(104, 'login', 'Login', 'Acceder', 'Entrar', 'लॉग इन करें', 'S\'identifier', 'Пријавите се', 'تسجيل الدخول'),
(105, 'username', 'Username', 'Usuario', 'Nome de usuário', 'उपयोगकर्ता नाम', 'Nom d\'utilisateur', 'корисничко име', 'اسم المستخدم'),
(106, 'password', 'Password', 'Contraseña', 'Senha', 'पासवर्ड', 'Mot de passe', 'Лозинка', 'كلمه السر'),
(107, 'register', 'Register', 'Registrarse', 'registo', 'रजिस्टर', 'registre', 'регистровати', 'تسجيل'),
(108, 'lost_password', 'Lost password', '¿Perdiste tu contraseña?', 'Senha perdida', 'पासवर्ड खो गया', 'Mot de passe perdu', 'Да ли сте изгубили лозинку?', 'كلمة مرور مفقودة'),
(109, 'create_account', 'Create an account', 'Crear cuenta', 'Crie a sua conta aqui', 'खाता बनाएं', 'Créer un compte', 'Региструј се', 'انشئ حساب'),
(110, 'email', 'Email', 'Correo', 'O email', 'ईमेल', 'Email', 'Емаил', 'البريد الإلكتروني'),
(111, 'address', 'Address', 'Dirección', 'Endereço', 'पता', 'Adresse', 'Адреса', 'عنوان'),
(112, 'birthday', 'Birthday', 'Cumpleaños', 'Aniversário', 'जन्मदिन', 'Anniversaire', 'Рођендан', 'عيد الميلاد'),
(113, 'gender', 'Gender', 'Género', 'Gênero', 'लिंग', 'Le genre', 'Пол', 'جنس'),
(114, 'male', 'Male', 'Masculino', 'Masculino', 'नर', 'Mâle', 'Мушки', 'الذكر'),
(115, 'female', 'Female', 'Femenino', 'Fêmea', 'महिला', 'Femelle', 'зенски пол', 'إناثا'),
(116, 'profession', 'Profession', 'Profesión', 'Profissão', 'व्यवसाय', 'Métier', 'Професија', 'مهنة'),
(117, 'recover_your_password', 'Recover your password', 'Recupera tu contraseña', 'Recupere sua senha', 'पासवर्ड पुनः प्राप्त करना', 'Récupérez votre mot de passe', 'Опоравите своју лозинку', 'استعادة كلمة المرور'),
(118, 'enter_email', 'Enter your email', 'Ingresa tu correo', 'Insira seu email', 'अपना ईमेल दर्ज करें', 'Entrer votre Email', 'Унесите пошту', 'أدخل بريدك الإلكتروني'),
(119, 'recover', 'Recover', 'Recuperar', 'Recuperar', 'वसूली', 'Récupérer', 'опоравити се', 'استعادة'),
(120, 'invalid_data', 'Invalid information', 'Datos incorrectos, verifique y vuelva a intentar', 'Informação inválida', 'अमान्य जानकारी', 'Informations invalides', 'Неисправни подаци, молимо проверите и покушајте поново', 'معلومات غير صالحة'),
(121, 'subjects', 'Subjects', 'Cursos', 'assuntos', 'विषय', 'Sujets', 'Теме', 'المواضيع'),
(122, 'permissions', 'Permissions', 'Permisos', 'Permissões', 'अनुमतियां', 'Autorisations', 'Дозволе', 'أذونات'),
(123, 'teacher_report', 'Teacher reports', 'Reporte de profesores', 'Relatórios dos professores', 'शिक्षक की रिपोर्ट', 'Rapports des enseignants', 'Извјештај учитеља', 'تقارير المعلم'),
(124, 'private_message', 'Private messages', 'Mensajes privados', 'Mensagens privadas', 'निजी संदेश', 'Messages privés', 'приватна порука', 'رسائل خاصة'),
(125, 'your_marks', 'Your marks', 'Tus calificaciones', 'Suas marcas', 'आपके अंक', 'Vos marques', 'Ваша квалификација', 'علاماتك'),
(126, 'print', 'Print', 'Imprimir ', 'Impressão', 'छाप', 'Impression', 'Принт', 'طباعة'),
(127, 'forum', 'Forum', 'Foro', 'Fórum', 'मंच', 'Forum', 'Форум', 'المنتدى'),
(128, 'options', 'Options', 'Opciones', 'Opções', 'विकल्प', 'Options', 'Опције', 'خيارات'),
(129, 'exam_finish', 'Finish exam', 'El examen ha finalizado', 'Termine o exame', 'परीक्षा समाप्त करें', 'Fin de l\'examen', 'Испит је завршен', 'إنهاء الامتحان'),
(130, 'exam_results', 'Exam results', 'Resultados del examen', 'Resultados dos exames', 'परीक्षा के परिणाम', 'Résultats d\'examen', 'Резултати испита', 'نتائج الامتحانات'),
(131, 'question', 'Question', 'Pregunta', 'Questão', 'प्रश्न', 'Question', 'Питање', 'سؤال'),
(132, 'correct_answer', 'Correct answer', 'Respuesta correcta', 'Resposta correta', 'सही उत्तर', 'Bonne réponse', 'тачан одговор', 'اجابة صحيحة'),
(133, 'answer', 'Answer', 'Respuesta', 'Responda', 'उत्तर', 'Répondre', 'одговор', 'إجابة'),
(134, 'no_response', 'Unanswered', 'Sin responder', 'Sem resposta', 'अनुत्तरित', 'Sans réponse', 'без одговора', 'لم يتم الرد عليها'),
(135, 'solved_in', 'Solved in', 'Resuelto en', 'Resolvido em', 'में हल', 'Résolu dans', 'Решено', 'حلها في'),
(136, 'correct_answers', 'Correct answers', 'Respuestas correctas', 'Respostas corretas', 'सही उत्तर', 'Bonnes réponses', 'Тачне одговоре', 'الإجابات الصحيحة'),
(137, 'average', 'Average', 'Promedio', 'Média', 'औसत', 'Moyenne', 'просек', 'معدل'),
(138, 'homework_details', 'Homework details', 'Detalles de la tarea', 'Detalhes do dever de casa', 'होमवर्क विवरण', 'Détail des devoirs', 'Домаћи детаљи', 'تفاصيل الواجبات المنزلية'),
(139, 'send_teacher_comment', 'Send a comment to the teacher', 'Enviar un comentario al profesor', 'Envie um comentário ao professor', 'शिक्षक को एक टिप्पणी भेजें', 'Envoyer un commentaire à l\'enseignant', 'Пошаљите коментар наставнику', 'إرسال تعليق إلى المعلم'),
(140, 'premissions', '', 'Permisos', '', '', '', 'Дозволе', 'أذونات'),
(141, 'apply', 'Apply', 'Aplicar', 'Aplique', 'लागू करें', 'Appliquer', 'Аплиразлог', 'تطبيق'),
(142, 'reason', 'Reason', 'Motivo', 'Razão', 'कारण', 'Raison', 'разлог', 'السبب'),
(143, 'from', 'From', 'Desde', 'A partir de', 'से', 'De', 'Од', 'من عند'),
(144, 'until', 'Until', 'Hasta', 'Até', 'जब तक', 'Jusqu\'à', 'све док', 'حتى'),
(145, 'approved', 'Approved', 'Aprobado', 'Aprovado', 'मंजूर की', 'Approuvé', 'Одобрен', 'وافق'),
(146, 'rejected', 'Rejected', 'Rechazado', 'Rejeitado', 'अस्वीकृत', 'Rejeté', 'одбијен', 'مرفوض'),
(147, 'create', 'Create', 'Crear', 'Crio', 'सर्जन करना', 'Créer', 'Створити', 'خلق'),
(148, 'code', 'Code', 'Código', 'Código', 'कोड', 'Code', 'Код', 'الشفرة'),
(149, 'priority', 'Priority', 'Prioridad', 'Prioridade', 'प्राथमिकता', 'Priorité', 'Приоритет', 'أفضلية'),
(150, 'high', 'High', 'Alta', 'Alto', 'उच्च', 'Haute', 'Високо', 'متوسط'),
(151, 'pending', 'Pending', 'Pendiente', 'Pendente', 'अपूर्ण', 'en attendant', 'У току', 'قيد الانتظار'),
(152, 'create_teacher_report', 'Create teacher report', 'Nuevo reporte de profesor', 'Criar relatório do professor', 'शिक्षक रिपोर्ट बनाएं', 'Créer un rapport d\'enseignant', 'Нови извештај учитеља', 'إنشاء تقرير المعلم'),
(153, 'report', 'Report', 'Reporte', 'Relatório', 'रिपोर्ट', 'rapport', 'извештај', 'أبلغ عن'),
(154, 'low', 'Low', 'Baja', 'Baixo', 'कम', 'Faible', 'Ниско', 'منخفض'),
(155, 'middle', 'Middle', 'Media', 'Meio', 'मध्य', 'Milieu', 'Средњи', 'وسط'),
(156, 'files', 'Files', 'Archivos', 'arquivos', 'फ़ाइलें', 'Des dossiers', 'фајлови', 'ملفات'),
(157, 'view_report', 'View report', 'Ver reporte', 'Exibir relatório', 'रिपोर्ट देखें', 'Voir le rapport', 'Погледај извештај', 'عرض التقرير'),
(158, 'active', 'Active', 'Activo', 'Ativo', 'सक्रिय', 'actif', 'Активан', 'نشيط'),
(159, 'personal_information', 'Personal information', 'Información personal', 'Informação pessoal', 'व्यक्तिगत जानकारी', 'Informations personnelles', 'лична информација', 'معلومات شخصية'),
(160, 'update_password', 'Update password', 'Actualizar contraseña', 'Atualizar senha', 'पासवर्ड अपडेट करें', 'Update password', 'Ажурирање лозинке', 'تطوير كلمة السر'),
(161, 'photo', 'Profile Photo', 'Fotografía', 'Foto de perfil', 'प्रोफाइल फोटो', 'Photo de profil', 'Фотографије', 'صورة الملف الشخصي'),
(162, 'update', 'Update', 'Actualizar', 'Atualizar', 'अद्यतन', 'Mettre à jour', 'ажурирање', 'تحديث'),
(163, 'take_exam', 'Take exam', 'Tomar examen', 'Fazer exame', 'परीक्षा लो', 'Passer un examen', 'полаже испит', 'خذ الامتحان'),
(164, 'total_questions', 'Total Questions', 'Preguntas totales', 'Perguntas totais', 'कुल सवाल', 'Total des questions', 'Укупно питање', 'مجموع الأسئلة'),
(165, 'duration', 'Duration', 'Duración', 'Duração', 'अवधि', 'Durée', 'трајање', 'المدة الزمنية'),
(166, 'minutes', 'minutes', 'minutos', 'minutos', 'मिनट', 'minutes', 'минута', 'الدقائق'),
(167, 'average_required', 'Average required', 'Promedio requerido', 'Média requerida', 'औसत आवश्यक', 'Moyenne requise', 'Потребан просек', 'متوسط المطلوب'),
(168, 'answer_all_questions', 'Answer all the questions before sending your exam.', 'Asegúrate de responder todas las preguntas antes de finalizar', 'Responda todas as perguntas antes de enviar seu exame', 'अपनी परीक्षा भेजने से पहले सभी प्रश्नों का उत्तर दें', 'Répondez à toutes les questions avant d\'envoyer votre examen.', 'Обавезно одговорите на сва питања пре него што завршите', 'أجب عن جميع الأسئلة قبل إرسال الامتحان.'),
(169, 'finish_message', 'When finished your results will be displayed automatically', 'Al finalizar se mostrarán tus resultados automáticamente', 'Quando terminar, seus resultados serão exibidos automaticamente', 'जब आपका परिणाम समाप्त हो जाए तो स्वचालित रूप से प्रदर्शित किया जाएगा', 'Une fois les résultats terminés, vos résultats s\'affichent automatiquement', 'Кад завршите, резултати ће се аутоматски приказивати', 'عند الانتهاء سيتم عرض النتائج تلقائيا'),
(170, 'important', 'IMPORTANT', 'IMPORTANTE', 'IMPORTANTE', 'जरूरी', 'IMPORTANT', 'Важно', 'مهم'),
(171, 'important_message', 'At the end of the exam, be sure to click on the End exam button, which is located on the top left', 'Al finalizar el examen asegúrate de hacer click en el botón Finaliza examen, que se encuentra en la parte superior izquierda', 'No final do exame, certifique-se de clicar no botão Executar final, que está localizado na parte superior esquerda', 'परीक्षा के अंत में, अंत परीक्षा बटन पर क्लिक करना सुनिश्चित करें, जो ऊपर बाईं ओर स्थित है', 'À la fin de l\'examen, assurez-vous de cliquer sur le bouton Fin de l\'examen, situé en haut à gauche', 'На крају испита обавезно кликните на дугме Заврши испит који се налази на врху', 'في نهاية الامتحان، تأكد من النقر على زر اختبار النهاية، والذي يقع أعلى اليمين'),
(172, 'start_exam', 'Start exam', 'Iniciar examen', 'Iniciar exame', 'प्रारंभिक परीक्षा', 'Examen de départ', 'Започните испит', 'بدء الاختبار'),
(173, 'online_exam', 'Online exam', 'Examen en línea', 'Exame on-line', 'ऑनलाइन परीक्षा', 'Examen en ligne', 'Онлине испит', 'الامتحان عبر الإنترنت'),
(174, 'time_left', 'Time left', 'Tiempo restante', 'Tempo restante', 'शेष समय', 'Temps restant', 'Преостало време', 'الوقت المتبقي'),
(175, 'finish_exam', 'Finish exam', 'Finalizar examen', 'Termine o exame', 'परीक्षा समाप्त करें', 'Fin de l\'examen', 'Завршни испит', 'إنهاء الامتحان'),
(176, 'success', 'Success', 'Exito', 'Sucesso', 'सफलता', 'Succès', 'Успех', 'نجاح'),
(177, 'success_delivery', 'Has been delivered', 'Has entregado esta tarea correctamente', 'Foi entregue', 'पहुँचा दिया गया है', 'A été livré', 'Успешно сте обавили овај задатак', 'تم تسليمها'),
(178, 'submitted_for_review', 'Submitted for review', 'Enviada para revisión', 'Enviado para revisão', 'समीक्षा के लिए सबमिट किया गया', 'Soumis pour examen', 'Поднесене на разматрање', 'تم تقديمه للمراجعة'),
(179, 'no_required', 'This task does not require you to submit a file, you can respond in the text box below.', 'Esta tarea no requiere que envíes un archivo en línea, puedes resolverla en el siguiente cuadro de texto, cuando finalices haz click en enviar', 'Não exigido', 'आवश्यक नहीं', 'Non requis', 'Овај задатак не захтева од вас да пошаљете датотеку на мрежи, можете је ријешити у сљедећем текстуалном пољу, када завршите са кликом на слање', 'لا حاجة'),
(180, 'users', 'Users', 'Usuarios', 'Users', 'उपयोगकर्ता', 'Utilisateurs', 'Корисници', 'المستخدمين'),
(181, 'notifications', 'Notifications', 'Notificaciones', 'Notificações', 'सूचनाएं', 'Notifications', 'Обавештења', 'إخطارات'),
(182, 'behavior', 'Behavior', 'Disciplina', 'Comportamento', 'व्यवहार', 'Comportement', 'Понашање', 'سلوك'),
(183, 'accounting', 'Accounting', 'Contabilidad', 'Contabilidade', 'लेखांकन', 'Comptabilité', 'Рачуноводство', 'محاسبة'),
(184, 'teacher_files', 'Teacher files', 'Archivos para profesores', 'Arquivos de professores', 'शिक्षक फाइलें', 'Fichiers d\'enseignant', 'Наставничке датотеке', 'ملفات المعلم'),
(185, 'classrooms', 'Classrooms', 'Salones de clases', 'Salas de aula', 'कक्षाओं', 'Salles de classe', 'Учионице', 'الفصول الدراسية'),
(186, 'school_bus', 'School bus', 'Bus escolar', 'Ônibus escolar', 'स्कूल बस', 'Bus scolaire', 'школски аутобус', 'باص المدرسة'),
(187, 'system_settings', 'System Settings', 'Ajustes del sistema', 'Configurações de sistema', 'प्रणाली व्यवस्था', 'Les paramètres du système', 'Подешавања система', 'اعدادات النظام'),
(188, 'academic_settings', 'Academic Settings', 'Ajustes académicos', 'Configurações acadêmicas', 'अकादमिक सेटिंग्स', 'Paramètres académiques', 'Академске поставке', 'الإعدادات الأكاديمية'),
(189, 'add_student', 'Add student', 'Agregar estudiante', 'Adicionar aluno', 'छात्र जोड़ें', 'Ajouter un étudiant', 'Додајте ученике', 'إضافة طالب'),
(190, 'admissions', 'Admissions', 'Admisiones', 'Admissões', 'प्रवेश', 'Admissions', 'Пријем', 'القبول'),
(191, 'students_area', 'Students area', 'Area de estudiantes', 'Área de estudantes', 'छात्र क्षेत्र', 'Zone étudiante', 'Подручје студената', 'Students area'),
(192, 'student_portal', 'Student portal', 'Portal de estudiantes', 'Portal do estudante', 'विद्यार्थी पोर्टल', 'Portail étudiant', 'Студентски портал', 'البوابة طالب'),
(193, 'upload_marks', 'Upload marks', 'Subir calificaciones', 'Fazer upload de marcas', 'अंकों को अपलोड करें', 'Télécharger des marques', 'Квалификација отпреме', 'علامات التحميل'),
(194, 'tabulation_sheet', 'Tabulation sheet', 'Hoja de tabulación', 'Folha de tabulação', 'सारणी पत्र', 'Feuille de tabulation', 'Табеларни лист', 'جدول تبويب'),
(195, 'teacher_attendance', 'Teacher attendance', 'Asistencia de profesores', 'Assistência dos professores', 'शिक्षक उपस्थिति', 'Participation des enseignantsRapport de présence de l\'enseignant', 'Присуство наставника', 'حضور المعلم'),
(196, 'teacher_attendance_report', 'Teacher attendance report', 'Reporte de asistencia de profesores', 'Relatório de comparecimento de professores', 'शिक्षक उपस्थिति रिपोर्ट', 'Rapport de présence de l\'enseignant', 'Извештај о присуству наставника', 'تقرير حضور المدرسين'),
(197, 'teacher_routine', 'Teacher routine', 'Horario de profesores', 'Rotina dos professores', 'शिक्षक दिनचर्या', 'La routine des enseignants', 'Наставник рутина', 'روتين المعلم'),
(198, 'send_news', 'Send news', 'Enviar noticias', 'Enviar notícias', 'समाचार भेजें', 'Envoyer des nouvelles', 'Пошаљи вести', 'إرسال الأخبار'),
(199, 'add_event', 'Add event', 'Agregar evento', 'Adicionar Evento', 'कार्यक्रम जोड़ें', 'Ajouter un évènement', 'Додајте догађај', 'إضافة حدث'),
(200, 'update_book', 'Update book', 'Actualizar libro', 'Atualizar livro', 'अद्यतन किताब', 'Mettre à jour le livre', 'Ажурирање књиге', 'تحديث الكتاب'),
(201, 'student_permissions', 'Student permissions', 'Permisos de estudiantes', 'Permissões do aluno', 'छात्र अनुमतियाँ', 'Autorisations d\'élève', 'Студентске дозволе', 'أذونات الطالب'),
(202, 'teacher_permissions', 'Teacher permissions', 'Permisos de profesores', 'Permissões do professor', 'शिक्षक अनुमतियां', 'Autorisations d\'enseignant', 'Студентске дозволе', 'أذونات المعلم'),
(203, 'student_payments', 'Student payments', 'Pagos de estudiantes', 'Pagamentos de estudantes', 'छात्र भुगतान', 'Paiements aux étudiants', 'Студентска уплата', 'دفعات الطالب'),
(204, 'expense', 'Expense', 'Egresos', 'Despesa', 'व्यय', 'Frais', 'Трошак', 'مصروف'),
(205, 'poll_details', 'Poll details', 'Detalles de la encuesta', 'Detalhes da pesquisa', 'पोल विवरण', 'Détails du sondage', 'Детаљи истраживања', 'تفاصيل الاستطلاع'),
(206, 'sms', 'SMS', 'SMS', 'SMS', 'एसएमएस', 'SMS', 'CMC', 'رسالة قصيرة'),
(207, 'email_settings', 'Email settings', 'Ajustes de correo', 'Configurações de e-mail', 'ईमेल सेटिंग्स', 'Paramètres de messagerie', 'Поставке е-поште', 'إعدادات البريد الإلكتروني'),
(208, 'translate', 'Translate', 'Traducción', 'Traduzir', 'अनुवाद करना', 'Traduire', 'превести', 'ترجمه'),
(209, 'database', 'Database', 'Base de datos', 'Base de dados', 'डेटाबेस', 'Base de données', 'база података', 'قاعدة البيانات'),
(210, 'manage_class', 'Manage classes', 'Manejar grados', 'Gerenciar aulas', 'कक्षाएं प्रबंधित करें', 'Gérer les cours', 'Менаџер класе', 'إدارة الطبقات'),
(211, 'sections', 'Sections', 'Secciones', 'Seções', 'धारा', 'Sections', 'Одељак', 'الأقسام'),
(212, 'semesters', 'Semesters', 'Unidades', 'Semestres', 'सेमेस्टर', 'Semestres', 'Семестре', 'فصول دراسية'),
(213, 'student_promotion', 'Student promotion', 'Promover estudiantes', 'Promoção estudantil', 'छात्र पदोन्नति', 'Promotion étudiante', 'Промоција студената', 'ترقية الطلاب'),
(214, 'event', 'Event', 'Evento', 'Evento', 'घटना', 'un événement', 'Догађај', 'هدف'),
(215, 'pending_users', 'Pending users', 'Usuarios pendientes', 'Usuários pendentes', 'लंबित उपयोगकर्ता', 'Les utilisateurs en attente', 'Очекивани корисници', 'المستخدمون في انتظار المراجعة'),
(216, 'new', 'New', 'Nuevo', 'Novo', 'नया', 'Nouveau', 'Ново', 'الجديد'),
(217, 'account_type', 'Account type', 'Tipo de cuenta', 'Tipo de conta', 'खाते का प्रकार', 'Type de compte', 'Тип рачуна', 'نوع الحساب'),
(218, 'super_admin', 'Super admin', 'Super admin', 'Super admin', 'सुपर व्यवस्थापक', 'Super admin', 'Супер админ', 'سوبر المشرف'),
(219, 'delete', 'Delete', 'Eliminar', 'Excluir', 'हटाना', 'Effacer', 'Избрисати', 'حذف'),
(220, 'add_new', 'Add new', 'Agregar nuevo', 'Adicionar novo', 'नया जोड़ें', 'Ajouter un nouveau', 'Додај нови', 'اضف جديد'),
(221, 'upload', 'Upload', 'Subir', 'Envio', 'अपलोड', 'Télécharger', 'отпремити', 'تحميل'),
(222, 'save', 'Save', 'Guardar', 'Salve', 'बचाना', 'sauvegarder', 'сачувати', 'حفظ'),
(223, 'salary', 'Salary', 'Salario', 'Salário', 'वेतन', 'Un salaire', 'Плата', 'راتب'),
(224, 'add', 'Add', 'Agregar', 'Adicionar', 'जोड़ना', 'Ajouter', 'додати', 'إضافة'),
(225, 'single_student', 'Single Student', 'Estudiante individual', 'Único estudante', 'एकल छात्र', 'Étudiant unique', 'Један студент', 'طالب واحد'),
(226, 'student_bulk', 'Student bulk', 'Múltiples estudiantes', 'Student bulk', 'छात्र थोक', 'Élève en vrac', 'Више ученика', 'الطالب الأكبر'),
(227, 'excel_import', 'Import from excel', 'Importar desde excel', 'Importar do excel', 'एक्सेल से आयात करें', 'Importation depuis Excel', 'Екцел импорт', 'تسجيل النموذج'),
(228, 'register_form', 'Register form', 'Formulario de registro', 'Formulário de registro', 'रजिस्टर फॉर्म', 'Formulaire d\'inscription', 'Регистарски образац', 'أضف المزيد'),
(229, 'add_more', 'Add more', 'Agregar más', 'Adicione mais', 'अधिक जोड़ें', 'Ajouter plus', 'Додај још', 'أضف المزيد'),
(230, 'download_model', 'Download model', 'Descargar modelo', 'Baixar modelo', 'डाउनलोड मॉडल', 'Télécharger le modèle', 'Довнлоад модел', 'تحميل النموذج'),
(231, 'import', 'Import', 'Importar ', 'Importar', 'आयात', 'Importer', 'увоз', 'استيراد'),
(232, 'accept', 'Accept', 'Aceptar', 'Aceitar', 'स्वीकार करना', 'Acceptez', 'Прихватити', 'قبول'),
(233, 'reject', 'Reject', 'Rechazar', 'Rejeitar', 'अस्वीकार', 'Rejeter', 'одбити', 'رفض'),
(234, 'new_password', 'New password', 'Nueva contrasela', 'Nova senha', 'नया पासवर्ड', 'Nouveau mot de passe', 'Нова лозинка', 'كلمة السر الجديدة'),
(235, 'assigned_subjects', 'Assigned Subjects', 'Cursos asignados', 'Assuntos Assinados', 'सौंपा विषय', 'Sujets assignés', 'Додељени предмети', 'الموضوعات المخصصة'),
(236, 'assigned_students', 'Assigned Students', 'Estudiantes asignados', 'Alunos Atribuídos', 'असाइन किए गए छात्र', 'Étudiants affectés', 'Додијељени студенти', 'الطلاب المعينين'),
(237, 'all', 'All', 'Todos', 'Todos', 'सब', 'Tout', 'све', 'الكل'),
(238, 'addres', 'Address', 'Dirección', 'Endereço', 'पता', 'Adresse', 'Адреса', 'عنوان'),
(239, 'inactive', 'Inactive', 'Inactivo', 'Inativo', 'निष्क्रिय', 'Inactif', 'Неактиван', 'غير نشط'),
(240, 'semester', 'Semester', 'Unidad', 'Semestre', 'छमाही', 'Semestre', 'Семестар', 'نصف السنة'),
(241, 'update_activities', 'Update activities', 'Actualizar acividades', 'Atualizar atividades', 'गतिविधियों को अपडेट करें', 'Activités de mise à jour', 'Активности ажурирања', 'تحديث الأنشطة'),
(242, 'student_attendance_report', 'Student Attendance Report', 'Reporte de asistencia estudiantes', 'Relatório de presença de estudantes', 'छात्र उपस्थिति रिपोर्ट', 'Rapport de présence des étudiants', 'Извештај о ученику', 'تقرير حضور الطالب'),
(243, 'present', 'Present', 'Presente', 'Presente', 'वर्तमान', 'Présent', 'поклон', 'حاضر'),
(244, 'late', 'Late', 'Tarde', 'Atrasado', 'देर से', 'En retard', 'Касни', 'متأخر'),
(245, 'absent', 'Absent', 'Ausente', 'Ausente', 'अनुपस्थित', 'Absent', 'Одсутан', 'غائب'),
(246, 'add_class_routine', 'Add class routine', 'Agregar horario de clases', 'Adicionar rotina de classe', 'क्लास रूटीन जोड़ें', 'Ajouter une routine de classe', 'Додајте распоред распореда', 'إضافة روتين الطبقة'),
(247, 'day', 'Day', 'Día', 'Dia', 'दिन', 'journée', 'Дан', 'يوم'),
(248, 'monday', 'Monday', 'Lunes', 'Segunda-feira', 'सोमवार', 'Lundi', 'Понедељак', 'الإثنين'),
(249, 'tuesday', 'Tuesday', 'Martes', 'terça', 'मंगलवार', 'Mardi', 'Уторак', 'الثلاثاء'),
(250, 'wednesday', 'Wednesday', 'Miércoles', 'Quarta-feira', 'बुधवार', 'Mercredi', 'Среда', 'الأربعاء'),
(251, 'thursday', 'Thursday', 'Jueves', 'Quinta-feira', 'गुरूवार', 'Jeudi', 'Четвртак', 'الخميس'),
(252, 'time_start', 'Time start', 'Hora de inicio', 'Início do tempo', 'समय प्रारंभ', 'Démarrage du temps', 'Почетак времена', 'بداية الوقت'),
(253, 'hour', 'Hour', 'Hora', 'Hora', 'घंटा', 'Heure', 'Сат', 'ساعة'),
(254, 'time_end', 'Time end', 'Hora final', 'Fim do tempo', 'समय समाप्ति', 'Fin du temps', 'Временски крај', 'نهاية الوقت'),
(255, 'friday', 'Friday', 'Viernes', 'Sexta-feira', 'शुक्रवार', 'Vendredi', 'Петак', 'يوم الجمعة'),
(256, 'add_news', 'Add news', 'Agregar noticia', 'Adicione notícias', 'समाचार जोड़ें', 'Ajouter des nouvelles', 'Додајте вести', 'إضافة أخبار'),
(257, 'edit', 'Edit', 'Editar', 'Editar', 'संपादित करें', 'modifier', 'Уредити', 'تصحيح'),
(258, 'update_news', 'Update news', 'Actualizar noticia', 'Atualizar notícias', 'न्यूज अपडेट करें', 'Actualiser les nouvelles', 'Ажурирајте вести', 'آخر الأخبار'),
(259, 'featured_image', 'Featured image', 'Imagen destacada', 'Imagem em destaque', 'निरूपित चित्र', 'L\'image sélectionnée', 'садржавана слика', 'صورة مميزة'),
(260, 'notice', 'Notice', 'Noticia', 'Aviso prévio', 'नोटिस', 'Remarquer', 'објава', 'تنويه'),
(261, 'add_book', 'Add book', 'Agregar libro', 'Adicionar livro', 'पुस्तक जोड़ें', 'Ajouter un livre', 'Додајте књигу', 'إضافة كتاب'),
(262, 'available', 'Available', 'Disponible', 'acessível', 'उपलब्ध', 'Disponible', 'доступан', 'متاح'),
(263, 'unavailable', 'Unavailable', 'No disponible', 'Indisponível', 'अनुपलब्ध', 'Indisponible', 'Недоступан', 'غير متوفره'),
(264, 'book', 'Book', 'Libro', 'Livro', 'किताब', 'Livre', 'Књига', 'كتاب'),
(265, 'image', 'Image', 'Imagen', 'Imagem', 'छवि', 'Image', 'слика', 'صورة'),
(266, 'other', 'Other', 'Otros', 'De outros', 'अन्य', 'Autre', 'Други', 'آخر'),
(267, 'reports', 'Reports', 'Reportes', 'Relatórios', 'रिपोर्ट', 'Rapports', 'извештаји', 'تقارير'),
(268, 'student_reports', 'Student reports', 'Reporte de estudiantes', 'Relatórios estudantis', 'छात्र रिपोर्ट', 'Rapports d\'étudiants', 'Студентски извештаји', 'تقارير الطالب'),
(269, 'create_report', 'Create report', 'Crear reporte', 'Criar relatório', 'रिपोर्ट बनाएं', 'Creer un rapport', 'Креирајте извештај', 'إنشاء تقرير'),
(270, 'created_by', 'Created by', 'Creado por', 'Criado por', 'के द्वारा बनाई गई', 'Créé par', 'Креирана од стране', 'صنع من قبل'),
(271, 'teacher_reports', 'Teacher reports', 'Reporte de profesores', 'Relatórios dos professores', 'शिक्षक की रिपोर्ट', 'Rapports des enseignants', 'Извјештај учитеља', 'تقارير المعلم'),
(272, 'medium', 'Medium', 'Media', 'Médio', 'मध्यम', 'Moyen', 'Средња', 'متوسط'),
(273, 'upload_file', 'Upload file', 'Subir archivo', 'Subir arquivo', 'दस्तावेज अपलोड करें', 'Téléverser un fichier', 'отпреми датотекуc', 'رفع ملفتفاصيل التقرير'),
(274, 'report_details', 'Report details', 'Detalles del reporte', 'Informar detalhes', 'रिपोर्ट का विवरण', 'Signaler des détails', 'Извештај детаље', 'تفاصيل التقرير'),
(275, 'mark_solved', 'Mark as resolved', 'Marcar como resuelto', 'Marcar como resolvido', 'सही के रूप में चिन्हित करो', 'Marquer comme résolu', 'Означи као ријешено', 'وضع علامة على أنه تم حلها'),
(276, 'user_report', 'Reporting User', 'Usuario que reporta', 'Reporting User', 'रिपोर्टिंग उपयोगकर्ता', 'Reporting utilisateur', 'Кориснички извештај', 'الإبلاغ عن المستخدم'),
(277, 'user', 'User', 'Usuario', 'Do utilizador', 'उपयोगकर्ता', 'Utilisateur', 'Корисник', 'المستعمل'),
(278, 'no_options', 'No options', 'No hay opciones', 'Sem opções', 'कोई विकल्प नहीं', 'Aucune option', 'Нема опција', 'لا توجد خيارات'),
(279, 'invoice_details', 'Invoice details', 'Detalles de la factura', 'Detalhes da factura', 'चालान विवरण', 'Détails de la facture', 'Детаљи фактуре', 'تفاصيل الفاتورة'),
(280, 'payment_details', 'Payment details', 'Detalles del pago', 'Detalhes do pagamento', 'भुगतान विवरण', 'Détails de paiement', 'Подаци о плаћању', 'بيانات الدفع'),
(281, 'completed', 'Completed', 'Completado', 'Concluído', 'पूरा कर लिया है', 'Terminé', 'Завршено', 'منجز'),
(282, 'method', 'Method', 'Método', 'Método', 'तरीका', 'méthode', 'Метода', 'طريقة'),
(283, 'card', 'Card', 'Tarjeta', 'Cartão', 'कार्ड', 'Carte', 'Картица', 'بطاقة'),
(284, 'cash', 'Cash', 'Efectivo', 'Dinheiro', 'कैश', 'En espèces', 'Готовина', 'السيولة النقدية'),
(285, 'check', 'Check', 'Cheque', 'Check', 'चेक', 'Vérifier', 'Провери', 'التحقق من'),
(286, 'create_invoice', 'Create invoice', 'Crear factura', 'Criar recibo', 'इनवॉयस बनाएँ', 'Créer une facture', 'Креирајте фактуру', 'إنشاء فاتورة'),
(287, 'new_payment', 'New payment', 'Nuevo pago', 'Novo pagamento', 'नया भुगतान', 'Nouveau paiement', 'Нова уплата', 'دفعة جديدة'),
(288, 'expenses', 'Expenses', 'Egresos', 'Despesas', 'व्यय', 'Dépenses', 'трошкови', 'نفقات'),
(289, 'invoices', 'Invoices', 'Facturas', 'Faturas', 'चालान', 'Factures', 'Фактуре', 'الفواتير'),
(290, 'history', 'Payment history', 'Historial', 'Histórico de pagamento', 'भुगतान इतिहास', 'Historique de paiement', 'Историја', 'سجل الدفعات'),
(291, 'add_class_room', 'Add classroom', 'Agregar salon de clases', 'Adicionar sala de aula', 'कक्षा जोड़ें', 'Ajouter une salle de classe', 'Додајте учионицу', 'إضافة فصل دراسي'),
(292, 'number', 'Number', 'Número', 'Número', 'संख्या', 'Nombre', 'број', 'رقم'),
(293, 'route', 'Route', 'Ruta', 'Rota', 'मार्ग', 'Route', 'рута', 'طريق'),
(294, 'bus_id', 'Bus ID', 'ID del bus', 'Bus ID', 'बस आईडी', 'Identifiant du bus', 'Бус ид', 'معرف الحافلة'),
(295, 'driver', 'Driver name', 'Conductor', 'Nome do motorista', 'चालक का नाम', 'Nom du conducteur', 'Возач', 'اسم السائق'),
(296, 'driver_phone', 'Driver phone', 'Celular del conductor', 'Driver phone', 'चालक फोन', 'Téléphone du pilote', 'Управљачки телефон', 'هاتف السائق'),
(297, 'transport_name', 'Transport name', 'Nombre del bus', 'Nome do transporte', 'परिवहन का नाम', 'Nom du transport', 'Име транспорта', 'اسم النقل'),
(298, 'bus_ID', 'Bus ID', 'ID del bus', 'Buss ID', 'बस आईडी', 'Identifiant du bus', 'Бус ид', 'معرف الحافلة'),
(299, 'driver_name', 'Driver name', 'Nombre del conductor', 'Nome do motorista', 'चालक का नाम', 'Nom du conducteur', 'Име возача', 'اسم السائق'),
(300, 'create_poll', 'Create poll', 'Crear encuesta', 'Create poll', 'मतदान बनाएं', 'Créer un sondage', 'Створити анкету', 'إنشاء استطلاع الرأي'),
(301, 'more_options', 'More options', 'Más opciones', 'Mais opções', 'अधिक विकल्प', 'Plus d\'options', 'Више опција', 'خيارات أخرى'),
(302, 'system_name', 'System name', 'Nombre del sistema', 'Nome do sistema', 'सिस्टम का नाम', 'Nom du système', 'Име система', 'اسم النظام'),
(303, 'logo', 'Logotype', 'Logotipo', 'Logótipo', 'लोगोटाइप', 'Logotype', 'Лого', 'الشعار'),
(304, 'system_title', 'System title', 'Título del sistema', 'Título do sistema', 'सिस्टम शीर्षक', 'Titre du système', 'Назив система', 'عنوان النظام'),
(305, 'language', 'Language', 'Idioma', 'Língua', 'भाषा', 'La langue', 'Језик', 'لغة'),
(306, 'currency', 'Currency', 'Moneda', 'Moeda', 'मुद्रा', 'Devise', 'Валута', 'دقة'),
(307, 'paypal_email', 'PayPal email', 'Correo de PayPal', 'PayPal email', 'पे पल ईमेल', 'Email Paypal', 'Емаил паипал', 'بريد باي بال'),
(308, 'running_year', 'Running year', 'Año en curso', 'Ano corrente', 'वर्ष चल रहा है', 'Année courante', 'Године', 'تشغيل العام'),
(309, 'personalization', 'Personalization', 'Personalización', 'Personalização', 'निजीकरण', 'Personnalisation', 'Персонализација', 'إضفاء الطابع الشخصي'),
(310, 'theme', 'Theme', 'Tema', 'Tema', 'विषय', 'Thème', 'Тема', 'المقدمة'),
(311, 'sms_service', 'SMS Service', 'Servicio de SMS', 'SMS Service', 'एसएमएस सेवा', 'Service SMS', 'Смс сервис', 'خدمة الرسائل القصيرة'),
(312, 'disabled', 'Disabled', 'Desactivado', 'Disabled', 'विकलांग', 'désactivé', 'Онемогућено', 'معاق'),
(313, 'notify_send', 'What notifications do you want to send?', '¿Qué notificaciones desea enviar?', 'Quais notificações você deseja enviar?', 'आप कौन से अधिसूचनाएं भेजना चाहते हैं?', 'Quelles notifications voulez-vous envoyer?', 'Које обавештења желите послати?', 'ما الإخطارات التي تريد إرسالها؟'),
(314, 'for_parents', 'For parents', 'Para padres', 'Para os pais', 'माता - पिता के लिए', 'Pour les parents', 'За родитеље', 'للوالدين'),
(315, 'absences', 'Absences', 'Ausencias', 'Ausências', 'अनुपस्थिति', 'Absences', 'Одсуства', 'الغياب'),
(316, 'students_reports', 'Student reports', 'Reportes académicos', 'Relatórios estudantis', 'छात्र रिपोर्ट', 'Rapports d\'étudiants', 'Студенти извештавају', 'تقارير الطالب'),
(317, 'new_invoice', 'New invoice', 'Nueva factura', 'Nova factura', 'नया चालान', 'Nouvelle facture', 'Нова фактура', 'فاتورة جديدة'),
(318, 'for_students', 'For students', 'Para estudiantes', 'Para estudantes', 'छात्रों के लिए', 'Pour les étudiants', 'За студенте', 'للطلاب'),
(319, 'new_homework', 'New homework', 'Nueva tarea', 'Nova tarefa de casa', 'नया होमवर्क', 'Nouveau travail', 'Нови домаћи задатак', 'الواجبات المنزلية الجديدة'),
(320, 'smtp_host', 'SMTP Hostname', 'Host SMTP', 'SMTP Host', 'एसएमटीपी होस्टनाम', 'SMTP Hostname', 'Смпт хост', 'SMTP Hostname'),
(321, 'smtp_port', 'SMTP Port', 'Puerto SMTP', 'SMTP Port', 'एसएमटीपी पोर्ट', 'SMTP Port', 'Смпт порт', 'SMTP Port'),
(322, 'smtp_timeout', 'SMTP Timeout', 'Tiempo de espera', 'SMTP Timeout', 'एसएमटीपी समयबाह्य', 'SMTP Timeout', 'Смтп тимеоут', 'SMTP Timeout'),
(323, 'smtp_user', 'SMTP User', 'Usuario SMTP', 'SMTP User', 'एसएमटीपी उपयोगकर्ता', 'SMTP User', 'Смтп корисник', 'SMTP User'),
(324, 'smtp_password', 'SMTP Password', 'Contraseña SMTP', 'SMTP Password', 'एसएमटीपी पासवर्ड', 'SMTP Password', 'Смтп лозинка', 'SMTP Password'),
(325, 'charset', 'Charset', 'Tipo de caracter', 'Charset', 'harset', 'Charset', 'Цхарсет', 'محارف'),
(326, 'mail_type', 'Mailtype', 'Tipo de correo', 'Mailtype', 'Mailtype', 'Mailtype', 'Маил порука', 'Mailtype'),
(327, 'email_templates', 'Email templates', 'Plantillas de correo', 'Modelos de e-mail', 'ईमेल टेम्पलेट्स', 'Modèles d\'email', 'Емаил предлоге', 'قوالب البريد الإلكتروني'),
(328, 'send_marks', 'Send marks', 'Enviar calificaciones', 'Enviar marcas', 'अंक भेजें', 'Envoyer des marques', 'Пошаљи оцене', 'إرسال علامات'),
(329, 'bulk_email', 'Bulk email', 'Correos masivos', 'E-mail em massa', 'थोक ईमेल', 'Courrier électronique en vrac', 'Масовна пошта', 'البريد الإلكتروني السائبة'),
(330, 'languages', 'Languages', 'Idiomas', 'línguas', 'बोली', 'Langues', 'Језици', 'اللغات'),
(331, 'create_backup', 'Create system backup', 'Crear copia de seguridad', 'Criar backup do sistema', 'सिस्टम बैकअप बनाएं', 'Créer une sauvegarde système', 'Креирајте резервну копију', 'إنشاء نظام النسخ الاحتياطي'),
(332, 'restore_backup', 'Restore system backup', 'Restaurar copia de seguridad', 'Restaurar o backup do sistema', 'सिस्टम बैकअप पुनर्स्थापित करें', 'Restaurer la sauvegarde du système', 'Враћајте резервну копију', 'استعادة النسخ الاحتياطي للنظام'),
(333, 'restore', 'Restore', 'Restaurar', 'Restaurar', 'पुनर्स्थापित', 'Restaurer', 'Вратити', 'استعادة'),
(334, 'minimum_mark', 'Minimum mark to pass a subject', 'Nota mínima para aprobar un curso', 'Marca mínima para passar um assunto', 'किसी विषय को पास करने के लिए न्यूनतम अंक', 'Marque minimale pour transmettre un sujet', 'Минимална оцена за пролазак на курс', 'علامة الحد الأدنى لتمرير موضوع'),
(335, 'use_saturday', 'Use Saturday and Sunday at class routine?', '¿Utilizar sábado y domingo en horarios?', 'Use sábado e domingo no classroutine?', 'कक्षा नियमानुसार शनिवार और रविवार का उपयोग करें?', 'Utilisez le samedi et le dimanche à la routine de cours?', 'Користите суботу и недељу понекад?', 'استخدام السبت والأحد في روتين الطبقة؟'),
(336, 'yes', 'Yes', 'Si', 'sim', 'हाँ', 'Oui', 'да', 'نعم فعلا'),
(337, 'no', 'No ', 'No', 'No', 'नहीं', 'Non', 'не', 'لا'),
(338, 'classes', 'Classes', 'Grados', 'Aulas', 'कक्षाएं', 'Des classes', 'Часови', 'الطبقات'),
(339, 'start', 'Start', 'Iniciar', 'Começar', 'प्रारंभ', 'Début', 'почетак', 'بداية'),
(340, 'end', 'End', 'Fin', 'Fim', 'समाप्त', 'Fin', 'крај', 'النهاية'),
(341, 'runnig_year', 'Running year', 'Año en curso', 'Ano corrente', 'वर्ष चल रहा है', 'Année courante', 'Године', 'تشغيل العام'),
(342, 'year_to_promote', 'Year to promote', 'Año a promover', 'Ano de promoção', 'प्रोत्साहन के लिए वर्ष', 'Année de promotion', 'Годину за промоцију', 'السنة لتعزيز'),
(343, 'promote', 'Promote', 'Promover', 'Promover', 'को बढ़ावा देना', 'Promouvoir', 'Промовисати', 'تروج \\ يشجع \\ يعزز \\ ينمى \\ يطور'),
(344, 'promoted', 'Already promoted', 'Promovido', 'Já promovido', 'पहले से ही पदोन्नत', 'Déjà promu', 'Промовисана', 'تمت ترقيته بالفعل'),
(345, 'promote_to', 'Promote to', 'Promover a', 'Promover para', 'को बढ़ावा देना', 'Promouvoir', 'Промовисати', 'الترقية إلى'),
(346, 'send_marks_sms', 'Send marks notification by SMS', 'Enviar notificación de calificaciones por SMS', 'Enviar notificação de marca por SMS', 'एसएमएस द्वारा नोटिस भेजें', 'Envoyer une note de notification par SMS', 'Слање обавештења о квалификацијама путем СМС-а', 'إرسال علامات الإخطار عن طريق الرسائل القصيرة'),
(347, 'notification', 'Notification', 'Notificación', 'Notificação', 'अधिसूचना', 'Notification', 'Обавештење', 'إعلام'),
(348, 'send_sms', 'Send SMS', 'Enviar SMS', 'Enviar SMS', 'संदेश भेजो', 'Envoyer un SMS', 'послати СМС', 'أرسل رسالة نصية قصيرة'),
(349, 'my_subjects', 'My subjects', 'Mis cursos', 'Meus assuntos', 'मेरे विषय', 'Mes sujets', 'Моје субјекте', 'موضوعاتي'),
(350, 'my_routine', 'My routine', 'Mi horario', 'Minha rotina', 'मेरा दिनचर्या', 'Ma routine', 'моја рутина', 'روتين بلدي'),
(351, 'academic', 'Academic', 'Académico', 'Acadêmico', 'अकादमिक', 'Académique', 'Академски', 'أكاديمي'),
(352, 'student_absences', 'Student absences', 'Ausencias de estudiantes', 'Ausências estudantis', 'छात्र अनुपस्थिति', 'Les absences des étudiants', 'Одсуство студената', 'تغيب الطالب'),
(353, 'parent_new_invoice', 'New invoice (Parents)', 'Nueva factura (Padres)', 'Nova fatura (Pais)', 'नया चालान (अभिभावक)', 'Nouvelle facture (Parents)', 'Нова фактура (родитељ)', 'فاتورة جديدة (أولياء الأمور)'),
(354, 'student_new_invoice', 'New invoice (Students)', 'Nueva factura (Estudiantes)', 'Nova factura (Estudantes)', 'नया चालान (छात्र)', 'Nouvelle facture (étudiants)', 'Нови рачун (студенти)', 'فاتورة جديدة (طلاب)'),
(355, 'email_subject', 'Email subject', 'Asunto del correo', 'Assunto do email', 'ईमेल विषय', 'Sujet du courriel', 'Емаил субјецт', 'موضوع البريد الإلكتروني'),
(356, 'email_body', 'Email body', 'Contenido del correo', 'Corpo do email', 'ईमेल बॉडी', 'Courrier électronique', 'Емаил тело', 'هيئة البريد الإلكتروني'),
(357, 'reciever', 'Receiver', 'Receptor', 'Receptor', 'रिसीवर', 'Récepteur', 'Пријемник', 'المتلقي'),
(358, 'view_marks', 'View marks', 'Ver calificaciones', 'Ver marcas', 'देखें अंक', 'Afficher les marques', 'Погледајте ознаке', 'عرض علامات'),
(359, 'new_exam', 'New exam', 'Nuevo examen', 'Novo exame', 'नई परीक्षा', 'Nouvel examen', 'Нови испит', 'امتحان جديد'),
(360, 'start_hour', 'Start hour', 'Hora de inicio', 'Hora de início', 'शुरुआती घंटे', 'Heure de début', 'Почните сат', 'بدء الساعة'),
(361, 'end_hour', 'End hour', 'Hora de finalización', 'Hora final', 'समाप्ति समय', 'Heure de fin', 'Крај сата', 'نهاية الساعة'),
(362, 'exam_duration', 'Exam duration (in minutes)', 'Duración del examen (en minutos)', 'Tempo de exame em minutos', 'मिनटों में परीक्षा का समय', 'Durée de l\'examen (en minutes)', 'Време испитивања (у минутима)', 'مدة الامتحان (بالدقائق)'),
(363, 'exam_details', 'Exam details', 'Detalles del examen', 'Detalhes do Exame', 'परीक्षा विवरण', 'Détails de l\'examen', 'Испитни детаљи', 'تفاصيل الامتحان'),
(364, 'questions', 'Questions', 'Preguntas', 'Questões', 'प्रशन', 'Des questions', 'Питање', 'الأسئلة'),
(365, 'exam_questions', 'Exam questions', 'Preguntas del examen', 'Perguntas do exame', 'परीक्षा प्रश्न', 'Questions d\'examen', 'Испитна питања', 'أسئلة الامتحان'),
(366, 'add_question', 'Add question', 'Agregar pregunta', 'Adicionar pergunta', 'प्रश्न जोड़ें', 'Ajouter une question', 'Додајте питање', 'إضافة سؤال'),
(367, 'option', 'Option', 'Opción', 'Opção', 'विकल्प', 'Option', 'опција', 'اختيار'),
(368, 'exams_results', 'Exam results', 'Resultados del examen', 'Resultados dos exames', 'परीक्षा के परिणाम', 'Résultats d\'examen', 'Резултати испита', 'نتائج الامتحانات'),
(369, 'update_exam', 'Update exam', 'Actualizar examen', 'Exame de atualização', 'परीक्षा अपडेट करें', 'Examen de mise à jour', 'Ажурирајте испит', 'تحديث الاختبار'),
(370, 'start_clock', 'Start hour', 'Hora de inicio', 'Hora de início', 'शुरुआती घंटे', 'Heure de début', 'Започети сат', 'بدء الساعة'),
(371, 'end_clock', 'End hour', 'Hora de finalización', 'Hora final', 'समाप्ति समय', 'Heure de fin', 'Крај сата', 'نهاية الساعة'),
(372, 'no_file', 'No file available', 'Sin archivo', 'Nenhum arquivo disponível', 'कोई फ़ाइल उपलब्ध नहीं है', 'Aucun fichier disponible', 'нема фајла', 'لا يتوفر أي ملف'),
(373, 'study_meterial', '', 'Material de estudio', '', '', '', 'Студијски материјал', ''),
(374, 'add_homework', 'Add homework', 'Agregar tarea', 'Adicione lição de casa', 'होमवर्क जोड़ें', 'Ajouter les devoirs', 'Додајте домаћи задатак', 'إضافة الواجبات المنزلية'),
(375, 'homework_type', 'Homework type', 'Tipo de tarea', 'Tipo de lição de casa', 'होमवर्क का प्रकार', 'Type de devoir', 'Домаћи тип', 'نوع الواجبات المنزلية'),
(376, 'online_text', 'Online text', 'Texto en línea', 'Texto em linha', 'ऑनलाइन पाठ', 'Texte en ligne', 'Онлине текст', 'النص عبر الإنترنت'),
(377, 'limit_hour', 'Limit hour', 'Hora límite', 'Hora limite', 'सीमा घंटे', 'Heure limite', 'Ограничити сат', 'ساعة الحد'),
(378, 'deliveries', 'Deliveries', 'Entregas', 'Entregas', 'वितरण', 'Livraisons', 'Испоруке', 'التسليم'),
(379, 'total_students', 'Total students', 'Estudiantes totales', 'Total de alunos', 'कुल छात्रों', 'Nombre total d\'étudiants', 'Укупно ученика', 'إجمالي الطلاب'),
(380, 'delivered', 'Delivered', 'Entregada', 'Entregue', 'पहुंचा दिया', 'Livré', 'испоручена', 'تم التوصيل');
INSERT INTO `language` (`phrase_id`, `phrase`, `english`, `spanish`, `portuguese`, `hindi`, `french`, `serbian`, `arabic`) VALUES
(381, 'undeliverable', 'Undeliverable', 'Sin entregar', 'Não-entregável', 'गैर-वितरण योग्य', 'Non livrable', 'Унделиверабле', 'غير قابلة للتسليم'),
(382, 'student_comment', 'Student comment', 'Comentario del estudiante', 'Comentário do aluno', 'छात्र टिप्पणी', 'Commentaire de l\'élève', 'Студентски коментар', 'تعليق الطالب'),
(383, 'delivery_status', 'Delivery status', 'Estado de la entrega', 'Status de entrega', 'वितरण की स्थिति', 'Statut de livraison', 'Статус испоруке', 'حالة التسليم'),
(384, 'file_response', 'File/Response', 'Archivo/Respuesta', 'Arquivo / Resposta', 'फ़ाइल / प्रतिक्रिया', 'Fichier / Réponse', 'Одговор на фајл', 'ملف / الاستجابة'),
(385, 'delayed_delivery', 'Delivery after time', 'Entrega tarde', 'Entrega após o tempo', 'समय के बाद वितरण', 'Livraison après le temps', 'Одложена испорука', 'التسليم بعد الوقت'),
(386, 'update_homework', 'Update homework', 'Actualizar tarea', 'Atualize a lição de casa', 'होमवर्क अपडेट करें', 'Mettre à jour les devoirs', 'Ажурирати домаћи задатак', 'تحديث الواجبات المنزليةv'),
(387, 'delivery_type', 'Delivery type', 'Tipo de entrega', 'Tipo de entrega', 'वितरण के प्रकार', 'Type de livraison', 'Тип испоруке', 'نوع التوصيل'),
(388, 'new_discussion', 'New discussion', 'Nueva discusión ', 'Nova discussão', 'नई चर्चा', 'Nouvelle discussion', 'Нова дискусија', 'مناقشة جديدة'),
(389, 'publish', 'Publish', 'Publicar', 'Publicar', 'प्रकाशित करना', 'Publier', 'Објавити', 'نشر'),
(390, 'update_forum', 'Update forum', 'Actualizar foro', 'Atualizar fórum', 'फ़ोरम अपडेट करें', 'Forum de mise à jour', 'Упдате форум', 'تحديث المنتدى'),
(391, 'uploaded_by', 'Uploaded by', 'Subido por', 'Enviado por', 'द्वारा डाली गई', 'telechargé par', 'Уплоадед би', 'تم الرفع بواسطة'),
(392, 'send_bulk_emails', 'Send bulk email', 'Enviar correos masivos', 'Enviar e-mail em massa', 'थोक ईमेल भेजें', 'Envoyer un courrier électronique en bloc', 'Пошаљите масе е-поште', 'إرسال البريد الإلكتروني المجمع'),
(393, 'categories', 'Categories', 'Categorías', 'Categorias', 'श्रेणियाँ', 'Catégories', 'Категорије', 'الاقسام'),
(394, 'new_expense', 'New expense', 'Nuevo egreso', 'Nova despesa', 'नया खर्च', 'Nouvelle dépense', 'Ново издање', 'حساب جديد'),
(395, 'category', 'Category', 'Categoría', 'Categoria', 'वर्ग', 'Catégorie', 'Категорија', 'الفئة'),
(396, 'new_category', 'New category', 'Nueva categoria', 'Nova categoria', 'नई श्रेणी', 'Nouvelle catégorie', 'Нова категорија', 'فئة جديدة'),
(397, 'confirm_delete', 'Do you want to delete the information?', 'Seguro desea eliminar la información?', 'Deseja excluir as informações?', 'क्या आप जानकारी को हटाना चाहते हैं?', 'Voulez-vous supprimer les informations?', 'Да ли желите да обришете информације?', 'هل تريد حذف المعلومات؟'),
(398, 'confirm_approval', 'Surely you want to approve?', 'Confirma que desea aprobar?', 'Certamente você quer aprovar?', 'निश्चित रूप से आप स्वीकृति देना चाहते हैं?', 'Vous voulez certainement approuver?', 'Да ли желите да одобрите?', 'بالتأكيد كنت ترغب في الموافقة؟'),
(399, 'confirm_reject', 'Insurance do you want to reject?', 'Confirma que desea rechazar?', 'Seguro você quer rejeitar?', 'बीमा क्या आप अस्वीकार करना चाहते हैं?', 'Assurance voulez-vous rejeter?', 'Да ли желите да одбијете?', 'التأمين هل تريد أن ترفض؟'),
(400, 'confirm_delete_student', 'Are you sure you want to remove the student?', 'Confirma que desea eliminar al estudiante?', 'Tem certeza de que deseja remover o aluno?', 'क्या आप वाकई छात्र को निकालना चाहते हैं?', 'Êtes-vous sûr de vouloir supprimer l\'étudiant?', 'Да ли желите да избришете ученика?', 'هل تريد بالتأكيد إزالة الطالب؟'),
(401, 'confirm_solved', 'Are you sure you want to mark as resolved?', 'Seguro desea marcar como resuelto?', 'Tem certeza de que deseja marcar como resolvido?', 'क्या आप वाकई हल के रूप में चिह्नित करना चाहते हैं?', 'Êtes-vous sûr de vouloir marquer comme résolu?', 'Осигурање желите означити као ријешено?', 'هل تريد بالتأكيد وضع علامة على أنه تم حلها؟'),
(402, 'notification_center', 'Notification center', 'Centro de notificaciones', 'Centro de Notificação', 'सूचना केन्द्र', 'Centre de notification', 'Обавештење центар', 'مركز إعلام'),
(403, 'welcome_notifications', 'Welcome to the notification center', 'Bienvenido al centro de notificaciones', 'Bem-vindo ao centro de notificação', 'अधिसूचना केंद्र में आपका स्वागत है', 'Bienvenue au centre de notification', 'Добродошли у центар за обавештења', 'مرحبا بكم في مركز الإعلام'),
(404, 'what_send', 'What do you want to notify today?', '¿Qué notificaciones desea enviar?', 'O que você quer notificar hoje?', 'आज आपको क्या सूचित करना है?', 'Que souhaitez-vous notifier aujourd\'hui?', 'Које обавештења желите послати?', 'ماذا تريد أن تخطر اليوم؟'),
(405, 'send_email', 'Send email', 'Enviar correo', 'Enviar email', 'ईमेल भेजें', 'Envoyer un courrier électronique', 'Пошаљи пошту', 'ارسل بريد الكتروني'),
(406, 'successfully_added', 'Successfully added information', 'Información agregada con éxito', 'nformações adicionadas com sucesso', 'सफलतापूर्वक जानकारी जोड़ा', 'Informations ajoutées avec succès', 'Успешно додано', 'تمت إضافة معلومات بنجاح'),
(407, 'successfully_updated', 'Information updated successfully', 'Información actualizada con éxito', 'Informações atualizadas com sucesso', 'सूचना सफलतापूर्वक अपडेट की गई', 'Informations mises à jour avec succès', 'Успешно ажуриран', 'تم تحديث المعلومات بنجاح'),
(408, 'successfully_deleted', 'Information deleted successfully', 'Información eliminada con éxito', 'Informações eliminadas com sucesso', 'जानकारी सफलतापूर्वक हटाई गई', 'Informations supprimées avec succès', 'Успешно избрисан', 'تم حذف المعلومات بنجاح'),
(409, 'sent_successfully', 'Information sent successfully', 'Información enviada con éxito', 'Informações enviadas com sucesso', 'सूचना सफलतापूर्वक भेजी गई', 'Informations envoyées avec succès', 'Послато успешно', 'تم إرسال المعلومات بنجاح'),
(410, 'successfully_uploaded', 'Information uploaded successfully', 'Información subida con éxito', 'Informações carregadas com sucesso', 'सूचना सफलतापूर्वक अपलोड की गई', 'Informations téléchargées avec succès', 'Успешно постављен', 'تم تحميل المعلومات بنجاح'),
(411, 'reply_sent', 'Reply sent', 'Respuesta enviada', 'Resposta enviada', 'उत्तर भेजा', 'Réponse envoyée', 'Одговор послат', 'تم إرسال الرد'),
(412, 'message_sent', 'Message sent', 'Mensaje enviado', 'Mensagem enviada', 'मैसेज बेजा गया', 'Message envoyé', 'Порука послата', 'تم الارسال'),
(413, 'limit_questions', 'To add more questions configure the exam to accept more', 'Para agregar más preguntas configura el examen para aceptar más', 'Para adicionar mais perguntas configure o exame para aceitar mais', 'और अधिक प्रश्न जोड़ने के लिए अधिक स्वीकार करने के लिए परीक्षा को कॉन्फ़िगर करें', 'Pour ajouter d\'autres questions, configurez l\'examen pour accepter plus', 'Да бисте додали још питања, конфигурирајте испит да бисте прихватили више', 'لإضافة المزيد من الأسئلة، يمكنك تهيئة الاختبار لقبول المزيد'),
(414, 'delivered_homework', 'Homework successfully delivered', 'Tarea entregada correctamente', 'Tarefa entregue corretamente.', 'कार्य सफलतापूर्वक वितरित', 'Travail à domicile livré avec succès', 'Задатак је исправно достављен', 'تم تسليم الواجبات المنزلية بنجاح'),
(415, 'paid', 'Paid', 'Pagado', 'Paid', 'भुगतान किया', 'Payé', 'Плаћени', 'دفع'),
(416, 'unpaid', 'Unpaid', 'Sin pagar', 'Unpaid', 'वेतन के बिना', 'Non payé', 'Неплаћен', 'غير مدفوع'),
(417, 'social', 'Socials', 'Social', 'Social', 'सामाजिक', 'Socials', 'Социјално', 'سيالز'),
(418, 'no_questions', 'No. Questions', 'No. de Preguntas', 'Pergunta Total', 'कोई प्रश्न नहीं', 'Question totale', 'Укупно питање', 'إجمالي السؤال'),
(419, 'on_time', 'On time', 'A tiempo', 'Na Hora', 'समय पर', 'À temps', 'На време', 'في الوقت المحدد'),
(420, 'view_response', 'View response', 'Ver respuesta', 'Ver resposta', 'प्रतिक्रिया देखें', 'Voir la réponse', 'Погледајте одговор', 'عرض الرد'),
(422, 'success_password', 'Your password has been reset successfully. This is your new password:', 'Tu password ha sido reseteado exitosamente. Éste es tu nuevo password:', 'Sua senha foi reiniciada com sucesso. Esta é a sua nova senha:', 'आपका पासवर्ड सफलतापूर्वक रीसेट कर दिया गया है यह आपका नया पासवर्ड है:', 'Votre mot de passe a été réinitialisé avec succès. Ceci est votre nouveau mot de passe:', 'Ваша лозинка је успјешно ресетована. Ово је ваша нова лозинка:', 'تمت إعادة تعيين كلمة المرور بنجاح. هذه هي كلمة المرور الجديدة:'),
(425, 'message_group', 'Group Message', 'Mensaje en grupo', NULL, NULL, NULL, NULL, ''),
(426, 'groups', 'Groups', 'Grupos', NULL, NULL, NULL, NULL, ''),
(427, 'create_group', 'Create group', 'Crear un grupo', NULL, NULL, NULL, NULL, ''),
(428, 'select_group_or', 'Select group or', 'Seleccionar un grupo o', NULL, NULL, NULL, NULL, ''),
(429, 'group_members', 'Group members', 'Miembros del grupo', NULL, NULL, NULL, NULL, ''),
(430, 'user_type', 'Teacher type', 'Tipo de profesor', NULL, NULL, NULL, NULL, ''),
(431, 'user_permissions', 'User permissions', 'Permisos del usuario', NULL, NULL, NULL, NULL, ''),
(432, 'add_language', 'Add language', 'Agregar idioma', NULL, NULL, NULL, NULL, ''),
(433, 'flag', 'Flag', 'Bandera', NULL, NULL, NULL, NULL, ''),
(434, 'grades', 'Grade leves', 'Niveles de grado', NULL, NULL, NULL, NULL, ''),
(435, 'mark_from', 'Mark from', 'Desde', NULL, NULL, NULL, NULL, ''),
(436, 'mark_to', 'Mark to', 'Hasta', NULL, NULL, NULL, NULL, ''),
(437, 'point', 'Point', 'Punto', NULL, NULL, NULL, NULL, ''),
(438, 'grade', 'Grade', 'Grado', NULL, NULL, NULL, NULL, ''),
(439, 'participants', 'Participants', 'Participantes', NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libreria`
--

CREATE TABLE `libreria` (
  `libro_id` int(11) NOT NULL,
  `libro_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `uploader_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `nombre` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `autor` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mark`
--

CREATE TABLE `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_obtained` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark_total` int(11) NOT NULL DEFAULT '100',
  `comment` longtext COLLATE utf8_unicode_ci,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `labuno` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labdos` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labtres` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labcuatro` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labcinco` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labseis` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labsiete` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labocho` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labnueve` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `labtotal` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `final` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `section_id`, `exam_id`, `mark_obtained`, `mark_total`, `comment`, `year`, `labuno`, `labdos`, `labtres`, `labcuatro`, `labcinco`, `labseis`, `labsiete`, `labocho`, `labnueve`, `labtotal`, `final`) VALUES
(1, 1, 1, 1, 1, 0, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, 1, 1, 0, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, 1, 1, 0, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, 1, 1, 0, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, 1, 1, 0, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, 1, 1, 0, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 7, 1, 1, 1, 0, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 8, 1, 1, 1, 0, NULL, 100, NULL, '2017-2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mark` decimal(10,0) NOT NULL DEFAULT '0',
  `year` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensaje_reporte`
--

CREATE TABLE `mensaje_reporte` (
  `news_message_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `news_id` int(11) NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_code` longtext NOT NULL,
  `message` longtext NOT NULL,
  `sender` longtext NOT NULL,
  `timestamp` longtext NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 unread 1 read',
  `file_name` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender` longtext COLLATE utf8_unicode_ci NOT NULL,
  `reciever` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_message_timestamp` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `news_status` int(11) NOT NULL DEFAULT '1' COMMENT '1 for running, 0 for archived',
  `date` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `users` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `from_` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to_` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `news_teacher`
--

CREATE TABLE `news_teacher` (
  `notice_id` int(11) NOT NULL,
  `notice_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notice_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notice_message`
--

CREATE TABLE `notice_message` (
  `notice_message_id` int(11) NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notice_id` int(11) NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `message_file_name` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `online_users`
--

CREATE TABLE `online_users` (
  `id` int(11) NOT NULL,
  `session` longtext NOT NULL,
  `time` longtext NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `type` longtext NOT NULL,
  `gp` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `online_users`
--

INSERT INTO `online_users` (`id`, `session`, `time`, `id_usuario`, `type`, `gp`) VALUES
(22, 'q88l3leok6gogd364gu8s3p431ic450v', '1531154087', 1, 'admin', '1-admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parent`
--

CREATE TABLE `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL,
  `username` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `expense_category_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` longtext COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `year` longtext COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pending_users`
--

CREATE TABLE `pending_users` (
  `user_id` int(11) NOT NULL,
  `name` longtext NOT NULL,
  `username` longtext NOT NULL,
  `email` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `address` longtext NOT NULL,
  `birthday` longtext,
  `password` longtext NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `profession` longtext,
  `sex` longtext,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `roll` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `polls`
--

CREATE TABLE `polls` (
  `id` int(11) NOT NULL,
  `question` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `options` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL,
  `poll_code` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `poll_response`
--

CREATE TABLE `poll_response` (
  `id` int(11) NOT NULL,
  `poll_code` varchar(100) NOT NULL,
  `answer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optiona` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optionb` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optionc` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `optiond` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correctanswer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marks` int(11) NOT NULL,
  `exam_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_alumnos`
--

CREATE TABLE `reporte_alumnos` (
  `report_id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `report_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `priority` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) DEFAULT '0',
  `file` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_mensaje`
--

CREATE TABLE `reporte_mensaje` (
  `report_message_id` int(11) NOT NULL,
  `report_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sender_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `timestamp` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `user_id` varchar(600) NOT NULL,
  `title` longtext NOT NULL,
  `description` longtext NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `priority` varchar(100) NOT NULL,
  `file` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `date` varchar(600) NOT NULL,
  `code` varchar(600) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `report_response`
--

CREATE TABLE `report_response` (
  `message_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  `date` varchar(600) NOT NULL,
  `report_code` varchar(100) NOT NULL,
  `sender_type` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `request`
--

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `start_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `end_date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = pending, 1 = accepted, 2 = rejected',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `section`
--

INSERT INTO `section` (`section_id`, `name`, `class_id`, `teacher_id`) VALUES
(1, 'A', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'SIGE'),
(2, 'system_title', 'Marillac'),
(3, 'address', 'Calle 6 # 6-48'),
(4, 'phone', '3142114498'),
(5, 'paypal_email', 'info@megainventarios.com'),
(6, 'currency', '$'),
(7, 'system_email', 'joned.f@hotmail.com'),
(20, 'rtl', NULL),
(11, 'language', 'spanish'),
(13, 'minimark', '50'),
(16, 'skin', 'blue'),
(18, 'slider', NULL),
(21, 'running_year', '2017-2018'),
(22, 'facebook', 'https://facebook.com'),
(23, 'twitter', 'https://www.twitter.com'),
(24, 'instagram', 'https://www.instagram.com'),
(25, 'youtube', 'https://youtube.com'),
(26, 'sms_status', 'android'),
(27, 'android_password', 'password'),
(28, 'android_email', 'android@demo.com'),
(29, 'android_device', '66088'),
(30, 'buyer', '17965804'),
(31, 'purchase_code', 'b83f1cel1-mrf8-49d9-9f61-ma9b4992rs21'),
(32, 'clickatell_username', ''),
(33, 'clickatell_password', ''),
(34, 'clickatell_api', ''),
(35, 'twilio_account', ''),
(36, 'authentication_token', ''),
(37, 'registered_phone', ''),
(38, 'absences', '1'),
(39, 'students_reports', '1'),
(40, 'p_new_invoice', '1'),
(41, 's_new_invoice', '1'),
(42, 'new_homework', NULL),
(43, 'register', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `dormitory_id` int(11) DEFAULT NULL,
  `transport_id` int(11) DEFAULT NULL,
  `student_session` int(11) NOT NULL DEFAULT '1',
  `username` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `board` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `sex`, `address`, `phone`, `email`, `password`, `parent_id`, `dormitory_id`, `transport_id`, `student_session`, `username`, `date`, `board`) VALUES
(1, 'JOHN SEBASTIAN FALLA PEREZ', NULL, 'Male', '', '3208269722', '', 'e2f3e38133af010b21920e9b7999c1d3952aa622', NULL, NULL, NULL, 1, 'sebas', '1529893080', 0),
(2, 'JUAN CAMILO ANDRADE', NULL, 'Male', '', '435355', '', 'e2f3e38133af010b21920e9b7999c1d3952aa622', NULL, NULL, NULL, 1, 'camilo', '1529893080', 0),
(3, 'VALENTINA ANGEL', NULL, 'Female', '', '121212121', '', 'e2f3e38133af010b21920e9b7999c1d3952aa622', NULL, NULL, NULL, 1, 'valentina', '1529893080', 0),
(4, 'GUSTAVO ARGUELLO', NULL, 'Male', '', '434343434343', '', 'e2f3e38133af010b21920e9b7999c1d3952aa622', NULL, NULL, NULL, 1, 'gustavo', '1529893080', 0),
(5, 'NICOLE AVILA', NULL, 'Female', '', '989898989', '', 'e2f3e38133af010b21920e9b7999c1d3952aa622', NULL, NULL, NULL, 1, 'nicole', '1529893080', 0),
(6, 'LUISA CABRERA', NULL, 'Female', '', '767676767', '', 'e2f3e38133af010b21920e9b7999c1d3952aa622', NULL, NULL, NULL, 1, 'luisa', '1529893080', 0),
(7, 'INGRID NATALIA', NULL, 'Female', '', '5454545454', '', 'e2f3e38133af010b21920e9b7999c1d3952aa622', NULL, NULL, NULL, 1, 'ingrid', '1529893080', 0),
(8, 'MAIRA CASTILLA', NULL, 'Female', '', '757575757', '', 'e2f3e38133af010b21920e9b7999c1d3952aa622', NULL, NULL, NULL, 1, 'maira', '1529893080', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `students_request`
--

CREATE TABLE `students_request` (
  `request_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `start_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `end_date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_exam`
--

CREATE TABLE `student_exam` (
  `exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `starttime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `correctlyanswered` int(11) NOT NULL DEFAULT '0',
  `status` enum('completed','inprogress') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inprogress',
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `student_question`
--

CREATE TABLE `student_question` (
  `student_id` int(11) DEFAULT NULL,
  `exam_code` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `answered` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `student_answer` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `question_id` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `time` varchar(500) DEFAULT NULL,
  `total_time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `year` longtext COLLATE utf8_unicode_ci NOT NULL,
  `la1` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 1.',
  `la2` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 2.',
  `la3` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 3.',
  `la4` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 4.',
  `la5` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 5.',
  `la6` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 6.',
  `la7` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 7.',
  `la8` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 8.',
  `la9` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 9.',
  `la10` varchar(500) COLLATE utf8_unicode_ci DEFAULT 'Lab 10.',
  `type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`, `year`, `la1`, `la2`, `la3`, `la4`, `la5`, `la6`, `la7`, `la8`, `la9`, `la10`, `type`) VALUES
(1, 'Tecnología e Informática', 1, 1, '2017-2018', 'Lab 1.', 'Lab 2.', 'Lab 3.', 'Lab 4.', 'Lab 5.', 'Lab 6.', 'Lab 7.', 'Lab 8.', 'Lab 9.', 'Lab 10.', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci,
  `sex` longtext COLLATE utf8_unicode_ci,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `salary` longtext COLLATE utf8_unicode_ci,
  `username` longtext COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_code` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `birthday`, `sex`, `address`, `phone`, `email`, `password`, `salary`, `username`, `token`, `user_code`) VALUES
(1, 'JOHN', '06/24/2018', 'Male', '', '3142114498', 'joned@marillaclaplata.edu.co', 'e2f3e38133af010b21920e9b7999c1d3952aa622', '', 'john', NULL, NULL),
(2, 'EDINSON YASNO', NULL, 'Male', 'calle 6 6-48', '3142114498', 'jonedf@gmail.com', 'e2f3e38133af010b21920e9b7999c1d3952aa622', NULL, 'edinson', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_attendance`
--

CREATE TABLE `teacher_attendance` (
  `attendance_id` int(11) NOT NULL,
  `timestamp` longtext NOT NULL,
  `year` longtext NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teacher_files`
--

CREATE TABLE `teacher_files` (
  `id` int(11) NOT NULL,
  `title` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `file` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `file_type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user` int(11) NOT NULL,
  `file_code` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ticket_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'opened closed',
  `priority` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'baja media alta',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `assigned_staff_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ticket_message`
--

CREATE TABLE `ticket_message` (
  `ticket_message_id` int(11) NOT NULL,
  `ticket_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `file` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `timestamp` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transport`
--

CREATE TABLE `transport` (
  `transport_id` int(11) NOT NULL,
  `route_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci NOT NULL,
  `driver_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `driver_phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `academic_settings`
--
ALTER TABLE `academic_settings`
  ADD PRIMARY KEY (`settings_id`),
  ADD UNIQUE KEY `settings_id` (`settings_id`),
  ADD KEY `settings_id_2` (`settings_id`);

--
-- Indices de la tabla `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  ADD PRIMARY KEY (`academic_syllabus_id`),
  ADD KEY `academic_syllabus_id` (`academic_syllabus_id`);

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indices de la tabla `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `attendance_id` (`attendance_id`);

--
-- Indices de la tabla `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indices de la tabla `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indices de la tabla `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indices de la tabla `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indices de la tabla `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `document`
--
ALTER TABLE `document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indices de la tabla `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indices de la tabla `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indices de la tabla `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enroll_id`);

--
-- Indices de la tabla `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indices de la tabla `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indices de la tabla `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indices de la tabla `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`expense_category_id`);

--
-- Indices de la tabla `forum`
--
ALTER TABLE `forum`
  ADD PRIMARY KEY (`post_id`);

--
-- Indices de la tabla `forum_message`
--
ALTER TABLE `forum_message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indices de la tabla `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indices de la tabla `group_message`
--
ALTER TABLE `group_message`
  ADD PRIMARY KEY (`group_message_id`);

--
-- Indices de la tabla `group_message_thread`
--
ALTER TABLE `group_message_thread`
  ADD PRIMARY KEY (`group_message_thread_id`);

--
-- Indices de la tabla `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`homework_id`);

--
-- Indices de la tabla `horarios_examenes`
--
ALTER TABLE `horarios_examenes`
  ADD PRIMARY KEY (`horario_id`);

--
-- Indices de la tabla `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indices de la tabla `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`),
  ADD KEY `phrase_id` (`phrase_id`);

--
-- Indices de la tabla `libreria`
--
ALTER TABLE `libreria`
  ADD PRIMARY KEY (`libro_id`);

--
-- Indices de la tabla `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indices de la tabla `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mensaje_reporte`
--
ALTER TABLE `mensaje_reporte`
  ADD PRIMARY KEY (`news_message_id`);

--
-- Indices de la tabla `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indices de la tabla `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indices de la tabla `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indices de la tabla `news_teacher`
--
ALTER TABLE `news_teacher`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indices de la tabla `notice_message`
--
ALTER TABLE `notice_message`
  ADD PRIMARY KEY (`notice_message_id`);

--
-- Indices de la tabla `online_users`
--
ALTER TABLE `online_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indices de la tabla `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indices de la tabla `pending_users`
--
ALTER TABLE `pending_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `poll_response`
--
ALTER TABLE `poll_response`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indices de la tabla `reporte_alumnos`
--
ALTER TABLE `reporte_alumnos`
  ADD PRIMARY KEY (`report_id`);

--
-- Indices de la tabla `reporte_mensaje`
--
ALTER TABLE `reporte_mensaje`
  ADD PRIMARY KEY (`report_message_id`);

--
-- Indices de la tabla `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `report_response`
--
ALTER TABLE `report_response`
  ADD PRIMARY KEY (`message_id`);

--
-- Indices de la tabla `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indices de la tabla `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indices de la tabla `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indices de la tabla `students_request`
--
ALTER TABLE `students_request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indices de la tabla `student_exam`
--
ALTER TABLE `student_exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indices de la tabla `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indices de la tabla `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indices de la tabla `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indices de la tabla `teacher_files`
--
ALTER TABLE `teacher_files`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`);

--
-- Indices de la tabla `ticket_message`
--
ALTER TABLE `ticket_message`
  ADD PRIMARY KEY (`ticket_message_id`);

--
-- Indices de la tabla `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `academic_settings`
--
ALTER TABLE `academic_settings`
  MODIFY `settings_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `academic_syllabus`
--
ALTER TABLE `academic_syllabus`
  MODIFY `academic_syllabus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `document`
--
ALTER TABLE `document`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `expense_category`
--
ALTER TABLE `expense_category`
  MODIFY `expense_category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forum`
--
ALTER TABLE `forum`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `forum_message`
--
ALTER TABLE `forum_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `group_message`
--
ALTER TABLE `group_message`
  MODIFY `group_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `group_message_thread`
--
ALTER TABLE `group_message_thread`
  MODIFY `group_message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `homework`
--
ALTER TABLE `homework`
  MODIFY `homework_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horarios_examenes`
--
ALTER TABLE `horarios_examenes`
  MODIFY `horario_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT de la tabla `libreria`
--
ALTER TABLE `libreria`
  MODIFY `libro_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `mensaje_reporte`
--
ALTER TABLE `mensaje_reporte`
  MODIFY `news_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `news_teacher`
--
ALTER TABLE `news_teacher`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notice_message`
--
ALTER TABLE `notice_message`
  MODIFY `notice_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `online_users`
--
ALTER TABLE `online_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pending_users`
--
ALTER TABLE `pending_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `poll_response`
--
ALTER TABLE `poll_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte_alumnos`
--
ALTER TABLE `reporte_alumnos`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reporte_mensaje`
--
ALTER TABLE `reporte_mensaje`
  MODIFY `report_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `report_response`
--
ALTER TABLE `report_response`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de la tabla `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `students_request`
--
ALTER TABLE `students_request`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `student_exam`
--
ALTER TABLE `student_exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `teacher_attendance`
--
ALTER TABLE `teacher_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `teacher_files`
--
ALTER TABLE `teacher_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ticket_message`
--
ALTER TABLE `ticket_message`
  MODIFY `ticket_message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

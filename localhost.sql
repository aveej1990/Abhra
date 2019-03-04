-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2019 at 11:50 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci`
--
CREATE DATABASE IF NOT EXISTS `ci` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ci`;

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `simpleproc`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `simpleproc` (OUT `param1` INT)  begin
  select count(*) into param1 from employee;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `Empid` int(11) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `description` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Empid`, `first_name`, `last_name`, `start_date`, `end_date`, `city`, `description`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL),
(NULL, 's', 's', NULL, NULL, 's', 's'),
(1, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 'dsdsdf', 'vasdasd', '2019-02-18', '2019-02-20', 'dsfsdf', 'dsfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `newstrack`
--

DROP TABLE IF EXISTS `newstrack`;
CREATE TABLE IF NOT EXISTS `newstrack` (
  `Empid` int(11) DEFAULT NULL,
  `firstname` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newstrack`
--

INSERT INTO `newstrack` (`Empid`, `firstname`, `email`) VALUES
(1, 'Suman', 'girish@gmail.com'),
(2, 'Ravi', 'komal@gmail.com'),
(3, 'Santosh', 'Amit@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `roseindia`
--

DROP TABLE IF EXISTS `roseindia`;
CREATE TABLE IF NOT EXISTS `roseindia` (
  `Empid` int(11) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roseindia`
--

INSERT INTO `roseindia` (`Empid`, `firstname`, `city`) VALUES
(1, 'Girish', 'Nainital'),
(2, 'Komal', 'Merrut'),
(3, 'Amit', 'Lucknow'),
(4, 'Sandeep', 'Lucknow');

-- --------------------------------------------------------

--
-- Table structure for table `stud`
--

DROP TABLE IF EXISTS `stud`;
CREATE TABLE IF NOT EXISTS `stud` (
  `roll_no` int(100) NOT NULL,
  `name` varchar(220) NOT NULL,
  `Designation` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stud`
--

INSERT INTO `stud` (`roll_no`, `name`, `Designation`, `gender`) VALUES
(11111, 'suresh', '', ''),
(222, 'suresh', '', ''),
(222, 'suresh', '', ''),
(11111, 'fghgfh', '', ''),
(11111, 'fghgfh', 'on,on', ''),
(11111, 'fghgfh', 'php,java,net', ''),
(11111, 'fghgfh', 'php', ''),
(1, 'balu', 'java', ''),
(11111, 'yutyu', 'net', ''),
(222, 'fghgfh', 'php', ''),
(11111, 'fghgfh', 'php', ''),
(0, '', 'php', ''),
(54114, 'suresh', 'php,java', ''),
(11111, 'suresh', 'php,java', 'M'),
(11111, 'raj7u', 'net', 'M'),
(11111, 'fghgfh', 'php', 'M'),
(222, 'fghgfh', 'java', 'O'),
(11111, 'suresh', 'net', 'O'),
(54114, 'suresh', 'php', 'M'),
(11111, 'fghgfh', 'java', 'F'),
(11111, 'fghgfh', 'java', 'F'),
(11, 'suresh', 'php', 'M'),
(11111, 'fghgfh', 'php', 'M'),
(11111, 'fghgfh', 'php,java', 'M'),
(11111, 'fghgfh', 'php', 'M'),
(11111, 'fghgfhkl', 'php,net', 'M'),
(1, 'fghgfh', 'php', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_age` int(11) NOT NULL,
  `user_mobile` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=422 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_age`, `user_mobile`) VALUES
(4, 'zaid', 'zaid@gmail.com', '202cb962ac59075b964b07152d234b70', 23, '324234234'),
(5, 'sunny', 'sunny194@gmail.6uyhnujmnyh', '0487cc982f7db39c51695026e4bdc692', 3423, '2147483647'),
(20, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 2, '3424234234234'),
(23, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 23, '3424234234234'),
(24, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 24, '3424234234234'),
(25, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 25, '3424234234234'),
(27, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 27, '3424234234234'),
(28, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 28, '3424234234234'),
(29, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 29, '3424234234234'),
(30, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 30, '3424234234234'),
(31, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 31, '3424234234234'),
(32, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 32, '3424234234234'),
(33, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 33, '3424234234234'),
(34, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 34, '3424234234234'),
(35, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 35, '3424234234234'),
(36, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 36, '3424234234234'),
(37, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 37, '3424234234234'),
(38, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 38, '3424234234234'),
(39, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 39, '3424234234234'),
(40, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 40, '3424234234234'),
(41, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 41, '3424234234234'),
(42, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 42, '3424234234234'),
(43, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 43, '3424234234234'),
(44, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 44, '3424234234234'),
(45, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 45, '3424234234234'),
(46, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 46, '3424234234234'),
(47, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 47, '3424234234234'),
(48, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 48, '3424234234234'),
(49, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 49, '3424234234234'),
(50, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 50, '3424234234234'),
(421, 'sdsa', 'asdsd@asas.com', 'sdasdasd', 414, '3424234234234');
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'suresh', 'vemulurisuresh1990@gmail.com', '$2y$10$tsYNBRbCMbSj8L3MWKcVYOsB3qgvTqmjGPcnpsxcrn6NNC.GY6.d2', 'o41jTZyMuD4VmbObbjhyZBSOfzweTN0OrwqNPkfsKfs6EkwEdZ0M6stuM3PX', '2018-11-22 03:59:06', '2018-11-22 03:59:06');
--
-- Database: `newlaravel`
--
CREATE DATABASE IF NOT EXISTS `newlaravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `newlaravel`;

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
CREATE TABLE IF NOT EXISTS `emp` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_10_101556_user_singup_table', 1),
(4, '2018_12_10_120705_employee_details_table', 2),
(5, '2018_12_27_094429_create_shares_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vemulurisuresh1990@gmail.com', '$2y$10$eppq1vi5qvFaRD9DpGY0..HmGuaA728853S5nq3gX5ACwOUWxXDEu', '2018-12-20 06:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `shares`
--

DROP TABLE IF EXISTS `shares`;
CREATE TABLE IF NOT EXISTS `shares` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `share_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `share_price` int(11) NOT NULL,
  `share_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
CREATE TABLE IF NOT EXISTS `signup` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `signup_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'suresh v', 'vemulurisuresh1990@gmail.com', '$2y$10$oHYgnHTwKkWaAlJ.lVwDWufQ0t76HSzfHHw7aoJ0XbklVcGo2GF6G', 'tAzBmUR9aOztVglqBXhAbtsnDT8qs3WQJEuvcmp7UoN8Dq3qNnCaLmenSQyx', '2018-12-17 06:57:16', '2018-12-17 06:57:16');
--
-- Database: `recycle`
--
CREATE DATABASE IF NOT EXISTS `recycle` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `recycle`;

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

DROP TABLE IF EXISTS `sell`;
CREATE TABLE IF NOT EXISTS `sell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(300) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `city` varchar(200) NOT NULL,
  `landmark` varchar(200) NOT NULL,
  `zipcode` varchar(200) NOT NULL,
  `pickupdate` datetime NOT NULL,
  `userid` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`id`, `mobile`, `name`, `address`, `city`, `landmark`, `zipcode`, `pickupdate`, `userid`) VALUES
(1, '111', 'sdas', '1', 'asdasd', '1', 'asdd', '9999-12-31 23:59:59', '0'),
(2, '111', 'sdas', '1', 'asdasd', '1', 'asdd', '2019-02-27 07:03:00', '0'),
(3, '7661923594', 'sadasd', 'sadasd', '23423', '234234', 'asdd', '2019-03-02 06:55:00', '0'),
(4, '7661923594', 'sadasd', 'sadasd', '23423', '234234', 'asdd', '2019-03-02 06:55:00', '0'),
(5, '7661923594', 'sadasd', 'sadasd', '23423', '234234', 'asdd', '2019-03-02 06:55:00', '0'),
(6, '7661923594', 'sadasd', 'sadasd', '23423', '234234', 'asdd', '2019-03-02 06:55:00', '0'),
(7, '12123', 'sadasd', 'sadasd', '23423', '234234', 'asdd', '2019-02-27 07:03:00', '0'),
(8, '324234', '234234', 'sadasd', '23423', '234234', 'asdd', '2019-02-27 07:03:00', '0'),
(9, '234234', '234234', '324234', 'asdasd', '234234', '234234', '2019-02-27 07:03:00', '0'),
(10, '234234', '234234', '324234', 'asdasd', '234234', '234234', '2019-02-27 07:03:00', '0'),
(11, '234234', '234234', '324234', 'asdasd', '234234', '234234', '2019-02-27 07:03:00', '0'),
(12, '345345', '3345345', '3445345', '34534', '5345', '234234', '2019-02-27 07:03:00', '0'),
(13, '435345', '234234', 'rwr', 'werwer', 'werwer', 'werwer', '2019-02-27 07:03:00', '0'),
(14, '3123', '12312', '123123', '1231231', '12312', '12123', '2019-02-27 07:03:00', '0'),
(15, '3123', '12312', '123123', '1231231', '12312', '12123', '2019-02-27 07:03:00', '0'),
(16, '3123', '12312', '123123', '1231231', '12312', '12123', '2019-02-27 07:03:00', '0'),
(17, '3123', '12312', '123123', '1231231', '12312', '12123', '2019-02-27 07:03:00', '0'),
(18, '3123', '12312', '123123', '1231231', '12312', '12123', '2019-02-27 07:03:00', '0'),
(19, '3123', '12312', '123123', '1231231', '12312', '12123', '2019-02-27 07:03:00', '0'),
(20, '3123', '12312', '123123', '1231231', '12312', '12123', '2019-02-27 07:03:00', '0'),
(21, '3123', '12312', '123123', '1231231', '12312', '12123', '2019-02-27 07:03:00', '0'),
(22, '3123', '12312', '123123', '1231231', '12312', '12123', '2019-02-27 07:03:00', '0'),
(23, '34', 'sdf', 'asd', 'asadasd', 'asdas', 'asdasd', '2019-02-27 07:03:00', '0'),
(24, '34', 'sdf', 'asd', 'asadasd', 'asdas', 'asdasd', '2019-02-27 07:03:00', '0'),
(25, '34', 'sdf', 'asd', 'asadasd', 'asdas', 'asdasd', '2019-02-27 07:03:00', '0'),
(26, '3453453', 'sdfsd', 'sdfsd', 'sdfsdf', 'sdfsd', 'asdd', '2019-02-27 07:03:00', '0'),
(27, '2342', 'ewr', 'werwer', 'rwer', 'werwer', 'werwer', '2019-02-27 07:03:00', '0'),
(28, '345', 'dfgdfg', 'dfgdg', 'gdfg', 'dfgdf', 'dfgdf', '2019-02-27 07:03:00', '0'),
(29, '345', 'dfgdfg', 'dfgdg', 'gdfg', 'dfgdf', 'dfgdf', '2019-02-27 07:03:00', '0'),
(30, '345345', 'dfgdf', 'gdfgdf', 'gdfgdfg', 'dfdfgdfgf', 'fgdfg', '2019-02-27 07:03:00', '0'),
(31, '34534', '435', 'dfgdf', 'gdfgdfg', 'dfdfgdfgf', 'dfgdfg', '2019-02-27 07:03:00', '0'),
(32, '23423', 'fgsd', 'fsdfsdf', 'sdfsdf', 'sdfsdfsdf', 'sdfsdf', '2019-02-27 07:03:00', '0'),
(33, '23423', 'dfgdfg', 'gdfgdf', 'dfgdfgdfgdfgdf', 'dfgdfg', 'dfgdfg', '2019-02-27 07:03:00', '0'),
(34, '45345', '45345', 'rtert', 'ertert', 'retert', 'ertert', '2019-01-02 04:34:00', '0'),
(35, '234234', 'fgsd', 'fsdfsdfsd', 'sdfsdf', 'fsdfsdf', 'sdfsd', '2019-02-19 04:34:00', '0'),
(36, '34234', 'dfgdf', 'sadasd', 'asdasd', '234234', 'asdd', '2019-02-27 07:03:00', '0'),
(37, '34234', 'dfgdf', 'sadasd', 'asdasd', '234234', 'asdd', '2019-02-27 07:03:00', '0'),
(38, '345234', 'ghfgh', 'fghfgh', 'fghfgh', 'fghfgh', 'fghfgh', '2019-02-27 04:35:00', '0'),
(39, '345345', 'sadasd', 'dfg', 'dfg', 'dfdfgdfgf', 'dfg', '2019-02-22 12:00:00', '0');
--
-- Database: `wp`
--
CREATE DATABASE IF NOT EXISTS `wp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wp`;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-28 06:11:44', '2018-02-28 06:11:44', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=350 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wpproject', 'yes'),
(2, 'home', 'http://localhost/wpproject', 'yes'),
(3, 'blogname', 'last Website for Wordpress', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vemulurisuresh1990@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=28&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:43:"custom-post-type-ui/custom-post-type-ui.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'vega', 'yes'),
(41, 'stylesheet', 'vega', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '25', 'yes'),
(84, 'page_on_front', '28', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:12:"page-sidebar";a:0:{}s:12:"post-sidebar";a:0:{}s:8:"footer_1";a:0:{}s:8:"footer_2";a:0:{}s:8:"footer_3";a:0:{}s:8:"footer_4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(162, 'category_children', 'a:0:{}', 'yes'),
(163, '_transient_twentyseventeen_categories', '1', 'yes'),
(169, 'current_theme', 'Vega', 'yes'),
(170, 'theme_mods_vega', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"header";i:2;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(171, 'theme_switched', '', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:6:{i:1549016982;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1549044705;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1549087922;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1549087970;a:1:{s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1549088645;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(105, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:3:"top";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1519800490;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(301, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:4:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.3";s:7:"version";s:5:"5.0.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.3";s:7:"version";s:5:"5.0.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.2.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-5.0.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.0.2";s:7:"version";s:5:"5.0.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:3;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.9.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.9.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.9-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.9-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.9-partial-7.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.9-rollback-7.zip";}s:7:"current";s:5:"4.9.9";s:7:"version";s:5:"4.9.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:5:"4.9.7";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1549015717;s:15:"version_checked";s:5:"4.9.7";s:12:"translations";a:0:{}}', 'no'),
(119, 'can_compress_scripts', '1', 'no'),
(346, '_site_transient_timeout_theme_roots', '1549017523', 'no'),
(347, '_site_transient_theme_roots', 'a:4:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:4:"vega";s:7:"/themes";}', 'no'),
(348, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1549015726;s:7:"checked";a:4:{s:13:"twentyfifteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"1.1";s:13:"twentysixteen";s:3:"1.3";s:4:"vega";s:5:"2.3.4";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"2.3";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.2.3.zip";}s:15:"twentyseventeen";a:4:{s:5:"theme";s:15:"twentyseventeen";s:11:"new_version";s:3:"2.0";s:3:"url";s:45:"https://wordpress.org/themes/twentyseventeen/";s:7:"package";s:61:"https://downloads.wordpress.org/theme/twentyseventeen.2.0.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.8";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.8.zip";}}s:12:"translations";a:0:{}}', 'no'),
(349, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1549015729;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:3:"3.3";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:5:"1.5.7";s:9:"hello.php";s:3:"1.6";}s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":12:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.1.1.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.3";s:12:"requires_php";b:0;s:13:"compatibility";O:8:"stdClass":0:{}}s:43:"custom-post-type-ui/custom-post-type-ui.php";O:8:"stdClass":12:{s:2:"id";s:33:"w.org/plugins/custom-post-type-ui";s:4:"slug";s:19:"custom-post-type-ui";s:6:"plugin";s:43:"custom-post-type-ui/custom-post-type-ui.php";s:11:"new_version";s:5:"1.6.1";s:3:"url";s:50:"https://wordpress.org/plugins/custom-post-type-ui/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.6.1.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557";s:2:"1x";s:72:"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557";}s:7:"banners";a:2:{s:2:"2x";s:75:"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557";s:2:"1x";s:74:"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"5.0.2";s:12:"requires_php";s:3:"5.2";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(215, 'cptui_new_install', 'false', 'yes'),
(138, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(139, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(140, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(141, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(142, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(151, 'recently_activated', 'a:0:{}', 'yes'),
(160, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(201, 73, '_menu_item_xfn', ''),
(202, 73, '_menu_item_url', ''),
(200, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(196, 73, '_menu_item_menu_item_parent', '0'),
(195, 73, '_menu_item_type', 'post_type'),
(194, 71, '_wp_page_template', 'includes/Newthemeforpost.php'),
(193, 71, '_edit_lock', '1531201554:1'),
(192, 71, '_edit_last', '1'),
(66, 25, '_edit_last', '1'),
(67, 25, '_edit_lock', '1519801840:1'),
(68, 25, '_wp_page_template', 'default'),
(69, 28, '_edit_last', '1'),
(70, 28, '_edit_lock', '1519806374:1'),
(71, 28, '_wp_page_template', 'default'),
(72, 30, '_edit_last', '1'),
(73, 30, '_edit_lock', '1519800934:1'),
(74, 30, '_wp_page_template', 'default'),
(75, 32, '_edit_last', '1'),
(76, 32, '_edit_lock', '1519806525:1'),
(77, 32, '_wp_page_template', 'default'),
(78, 34, '_edit_last', '1'),
(79, 34, '_edit_lock', '1519800954:1'),
(80, 34, '_wp_page_template', 'default'),
(81, 36, '_edit_last', '1'),
(82, 36, '_edit_lock', '1519801192:1'),
(83, 36, '_wp_page_template', 'template-full-width.php'),
(84, 38, '_edit_last', '1'),
(85, 38, '_edit_lock', '1519801231:1'),
(86, 39, '_wp_attached_file', '2018/02/Chrysanthemum.jpg'),
(87, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:25:"2018/02/Chrysanthemum.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Chrysanthemum-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Chrysanthemum-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Chrysanthemum-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Chrysanthemum-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:25:"Chrysanthemum-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"vega-post-thumbnail-recent";a:4:{s:4:"file";s:25:"Chrysanthemum-350x220.jpg";s:5:"width";i:350;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Corbis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1205503166";s:9:"copyright";s:32:"© Corbis.  All Rights Reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(88, 40, '_wp_attached_file', '2018/02/Desert.jpg'),
(89, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:18:"2018/02/Desert.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Desert-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Desert-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"Desert-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Desert-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Desert-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"vega-post-thumbnail-recent";a:4:{s:4:"file";s:18:"Desert-350x220.jpg";s:5:"width";i:350;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:5:"?????";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1205503166";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(90, 41, '_wp_attached_file', '2018/02/Hydrangeas.jpg'),
(91, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:22:"2018/02/Hydrangeas.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Hydrangeas-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Hydrangeas-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Hydrangeas-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Hydrangeas-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"Hydrangeas-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"vega-post-thumbnail-recent";a:4:{s:4:"file";s:22:"Hydrangeas-350x220.jpg";s:5:"width";i:350;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:11:"Amish Patel";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1206376913";s:9:"copyright";s:24:"© Microsoft Corporation";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(92, 42, '_wp_attached_file', '2018/02/Jellyfish.jpg'),
(93, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:21:"2018/02/Jellyfish.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Jellyfish-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"Jellyfish-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"Jellyfish-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"Jellyfish-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"Jellyfish-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"vega-post-thumbnail-recent";a:4:{s:4:"file";s:21:"Jellyfish-350x220.jpg";s:5:"width";i:350;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:9:"Hang Quan";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1202729544";s:9:"copyright";s:24:"© Microsoft Corporation";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(94, 43, '_wp_attached_file', '2018/02/Koala.jpg'),
(95, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:17:"2018/02/Koala.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"Koala-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"Koala-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"Koala-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"Koala-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:17:"Koala-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"vega-post-thumbnail-recent";a:4:{s:4:"file";s:17:"Koala-350x220.jpg";s:5:"width";i:350;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Corbis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1202729563";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(96, 44, '_wp_attached_file', '2018/02/Lighthouse.jpg'),
(97, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:22:"2018/02/Lighthouse.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"Lighthouse-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"Lighthouse-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"Lighthouse-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"Lighthouse-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:22:"Lighthouse-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"vega-post-thumbnail-recent";a:4:{s:4:"file";s:22:"Lighthouse-350x220.jpg";s:5:"width";i:350;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:10:"Tom Alphin";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1202729571";s:9:"copyright";s:24:"© Microsoft Corporation";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(98, 45, '_wp_attached_file', '2018/02/Penguins.jpg'),
(99, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:20:"2018/02/Penguins.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"Penguins-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"Penguins-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"Penguins-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"Penguins-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"Penguins-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"vega-post-thumbnail-recent";a:4:{s:4:"file";s:20:"Penguins-350x220.jpg";s:5:"width";i:350;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Corbis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1203311251";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(100, 46, '_wp_attached_file', '2018/02/Tulips.jpg'),
(101, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:18:"2018/02/Tulips.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"Tulips-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"Tulips-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"Tulips-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"Tulips-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:18:"Tulips-300x250.jpg";s:5:"width";i:300;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:26:"vega-post-thumbnail-recent";a:4:{s:4:"file";s:18:"Tulips-350x220.jpg";s:5:"width";i:350;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:13:"David Nadalin";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1202383991";s:9:"copyright";s:24:"© Microsoft Corporation";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(102, 38, '_thumbnail_id', '45'),
(106, 48, '_edit_lock', '1519801244:1'),
(105, 48, '_edit_last', '1'),
(107, 48, '_thumbnail_id', '44'),
(111, 50, '_edit_lock', '1519801257:1'),
(110, 50, '_edit_last', '1'),
(112, 50, '_thumbnail_id', '41'),
(116, 52, '_edit_lock', '1519801275:1'),
(115, 52, '_edit_last', '1'),
(117, 52, '_thumbnail_id', '44'),
(121, 54, '_edit_lock', '1531200544:1'),
(120, 54, '_edit_last', '1'),
(122, 54, '_thumbnail_id', '43'),
(125, 56, '_menu_item_type', 'post_type'),
(126, 56, '_menu_item_menu_item_parent', '0'),
(127, 56, '_menu_item_object_id', '34'),
(128, 56, '_menu_item_object', 'page'),
(129, 56, '_menu_item_target', ''),
(130, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(131, 56, '_menu_item_xfn', ''),
(132, 56, '_menu_item_url', ''),
(184, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(134, 57, '_menu_item_type', 'post_type'),
(135, 57, '_menu_item_menu_item_parent', '0'),
(136, 57, '_menu_item_object_id', '32'),
(137, 57, '_menu_item_object', 'page'),
(138, 57, '_menu_item_target', ''),
(139, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(140, 57, '_menu_item_xfn', ''),
(141, 57, '_menu_item_url', ''),
(183, 62, '_menu_item_target', ''),
(143, 58, '_menu_item_type', 'post_type'),
(144, 58, '_menu_item_menu_item_parent', '0'),
(145, 58, '_menu_item_object_id', '30'),
(146, 58, '_menu_item_object', 'page'),
(147, 58, '_menu_item_target', ''),
(148, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(149, 58, '_menu_item_xfn', ''),
(150, 58, '_menu_item_url', ''),
(182, 62, '_menu_item_object', 'custom'),
(152, 59, '_menu_item_type', 'post_type'),
(153, 59, '_menu_item_menu_item_parent', '0'),
(154, 59, '_menu_item_object_id', '28'),
(155, 59, '_menu_item_object', 'page'),
(156, 59, '_menu_item_target', ''),
(157, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(158, 59, '_menu_item_xfn', ''),
(159, 59, '_menu_item_url', ''),
(181, 62, '_menu_item_object_id', '62'),
(161, 60, '_menu_item_type', 'post_type'),
(162, 60, '_menu_item_menu_item_parent', '59'),
(163, 60, '_menu_item_object_id', '36'),
(164, 60, '_menu_item_object', 'page'),
(165, 60, '_menu_item_target', ''),
(166, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(167, 60, '_menu_item_xfn', ''),
(168, 60, '_menu_item_url', ''),
(180, 62, '_menu_item_menu_item_parent', '0'),
(170, 61, '_menu_item_type', 'post_type'),
(171, 61, '_menu_item_menu_item_parent', '0'),
(172, 61, '_menu_item_object_id', '25'),
(173, 61, '_menu_item_object', 'page'),
(174, 61, '_menu_item_target', ''),
(175, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(176, 61, '_menu_item_xfn', ''),
(177, 61, '_menu_item_url', ''),
(179, 62, '_menu_item_type', 'custom'),
(185, 62, '_menu_item_xfn', ''),
(186, 62, '_menu_item_url', 'http://localhost/wpproject/'),
(197, 73, '_menu_item_object_id', '71'),
(198, 73, '_menu_item_object', 'page'),
(199, 73, '_menu_item_target', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-28 06:11:44', '2018-02-28 06:11:44', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-02-28 06:11:44', '2018-02-28 06:11:44', '', 0, 'http://localhost/wpproject/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-28 06:11:44', '2018-02-28 06:11:44', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/wpproject/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-02-28 06:11:44', '2018-02-28 06:11:44', '', 0, 'http://localhost/wpproject/?page_id=2', 0, 'page', '', 0),
(71, 1, '2018-07-10 05:38:39', '2018-07-10 05:38:39', 'sdsdf', 'sdfsdf', '', 'publish', 'closed', 'closed', '', 'sdfsdf', '', '', '2018-07-10 05:38:39', '2018-07-10 05:38:39', '', 0, 'http://localhost/wpproject/?page_id=71', 0, 'page', '', 0),
(72, 1, '2018-07-10 05:38:39', '2018-07-10 05:38:39', 'sdsdf', 'sdfsdf', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-07-10 05:38:39', '2018-07-10 05:38:39', '', 71, 'http://localhost/wpproject/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-07-10 05:48:30', '2018-07-10 05:48:30', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2018-07-10 05:48:30', '2018-07-10 05:48:30', '', 0, 'http://localhost/wpproject/?p=73', 8, 'nav_menu_item', '', 0),
(25, 1, '2018-02-28 06:57:32', '2018-02-28 06:57:32', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-02-28 07:12:58', '2018-02-28 07:12:58', '', 0, 'http://localhost/wpproject/?page_id=25', 0, 'page', '', 0),
(26, 1, '2018-02-28 06:57:32', '2018-02-28 06:57:32', '', 'Home', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-02-28 06:57:32', '2018-02-28 06:57:32', '', 25, 'http://localhost/wpproject/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-02-28 06:57:39', '2018-02-28 06:57:39', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'Page2', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-02-28 06:57:39', '2018-02-28 06:57:39', '', 25, 'http://localhost/wpproject/25-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-02-28 06:57:48', '2018-02-28 06:57:48', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'Page3', '', 'publish', 'closed', 'closed', '', 'page3-2', '', '', '2018-02-28 06:57:48', '2018-02-28 06:57:48', '', 0, 'http://localhost/wpproject/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-02-28 06:57:48', '2018-02-28 06:57:48', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'Page3', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-02-28 06:57:48', '2018-02-28 06:57:48', '', 28, 'http://localhost/wpproject/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-02-28 06:57:56', '2018-02-28 06:57:56', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'page4', '', 'publish', 'closed', 'closed', '', 'page4-2', '', '', '2018-02-28 06:57:56', '2018-02-28 06:57:56', '', 0, 'http://localhost/wpproject/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-02-28 06:57:56', '2018-02-28 06:57:56', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'page4', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2018-02-28 06:57:56', '2018-02-28 06:57:56', '', 30, 'http://localhost/wpproject/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-02-28 06:58:04', '2018-02-28 06:58:04', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'page5', '', 'publish', 'closed', 'closed', '', 'page5-2', '', '', '2018-02-28 06:58:04', '2018-02-28 06:58:04', '', 0, 'http://localhost/wpproject/?page_id=32', 0, 'page', '', 0),
(33, 1, '2018-02-28 06:58:04', '2018-02-28 06:58:04', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'page5', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2018-02-28 06:58:04', '2018-02-28 06:58:04', '', 32, 'http://localhost/wpproject/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-02-28 06:58:15', '2018-02-28 06:58:15', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'page6', '', 'publish', 'closed', 'closed', '', 'page6-2', '', '', '2018-02-28 06:58:15', '2018-02-28 06:58:15', '', 0, 'http://localhost/wpproject/?page_id=34', 0, 'page', '', 0),
(35, 1, '2018-02-28 06:58:15', '2018-02-28 06:58:15', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'page6', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2018-02-28 06:58:15', '2018-02-28 06:58:15', '', 34, 'http://localhost/wpproject/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-02-28 06:58:35', '2018-02-28 06:58:35', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'page2-1', '', 'publish', 'closed', 'closed', '', 'page2-1', '', '', '2018-02-28 06:58:35', '2018-02-28 06:58:35', '', 28, 'http://localhost/wpproject/?page_id=36', 0, 'page', '', 0),
(37, 1, '2018-02-28 06:58:35', '2018-02-28 06:58:35', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'page2-1', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-02-28 06:58:35', '2018-02-28 06:58:35', '', 36, 'http://localhost/wpproject/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-02-28 07:02:52', '2018-02-28 07:02:52', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'post1', '', 'publish', 'open', 'open', '', 'post1', '', '', '2018-02-28 07:02:52', '2018-02-28 07:02:52', '', 0, 'http://localhost/wpproject/?p=38', 0, 'post', '', 0),
(39, 1, '2018-02-28 07:02:40', '2018-02-28 07:02:40', '', 'Chrysanthemum', '', 'inherit', 'open', 'closed', '', 'chrysanthemum', '', '', '2018-02-28 07:02:40', '2018-02-28 07:02:40', '', 38, 'http://localhost/wpproject/wp-content/uploads/2018/02/Chrysanthemum.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-02-28 07:02:40', '2018-02-28 07:02:40', '', 'Desert', '', 'inherit', 'open', 'closed', '', 'desert', '', '', '2018-02-28 07:02:40', '2018-02-28 07:02:40', '', 38, 'http://localhost/wpproject/wp-content/uploads/2018/02/Desert.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-02-28 07:02:41', '2018-02-28 07:02:41', '', 'Hydrangeas', '', 'inherit', 'open', 'closed', '', 'hydrangeas', '', '', '2018-02-28 07:02:41', '2018-02-28 07:02:41', '', 38, 'http://localhost/wpproject/wp-content/uploads/2018/02/Hydrangeas.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-02-28 07:02:42', '2018-02-28 07:02:42', '', 'Jellyfish', '', 'inherit', 'open', 'closed', '', 'jellyfish', '', '', '2018-02-28 07:02:42', '2018-02-28 07:02:42', '', 38, 'http://localhost/wpproject/wp-content/uploads/2018/02/Jellyfish.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-02-28 07:02:43', '2018-02-28 07:02:43', '', 'Koala', '', 'inherit', 'open', 'closed', '', 'koala', '', '', '2018-02-28 07:02:43', '2018-02-28 07:02:43', '', 38, 'http://localhost/wpproject/wp-content/uploads/2018/02/Koala.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-02-28 07:02:43', '2018-02-28 07:02:43', '', 'Lighthouse', '', 'inherit', 'open', 'closed', '', 'lighthouse', '', '', '2018-02-28 07:02:43', '2018-02-28 07:02:43', '', 38, 'http://localhost/wpproject/wp-content/uploads/2018/02/Lighthouse.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-02-28 07:02:44', '2018-02-28 07:02:44', '', 'Penguins', '', 'inherit', 'open', 'closed', '', 'penguins', '', '', '2018-02-28 07:02:44', '2018-02-28 07:02:44', '', 38, 'http://localhost/wpproject/wp-content/uploads/2018/02/Penguins.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-02-28 07:02:45', '2018-02-28 07:02:45', '', 'Tulips', '', 'inherit', 'open', 'closed', '', 'tulips', '', '', '2018-02-28 07:02:45', '2018-02-28 07:02:45', '', 38, 'http://localhost/wpproject/wp-content/uploads/2018/02/Tulips.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-02-28 07:02:52', '2018-02-28 07:02:52', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'post1', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2018-02-28 07:02:52', '2018-02-28 07:02:52', '', 38, 'http://localhost/wpproject/38-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-02-28 07:03:05', '2018-02-28 07:03:05', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'post2', '', 'publish', 'open', 'open', '', 'post2', '', '', '2018-02-28 07:03:05', '2018-02-28 07:03:05', '', 0, 'http://localhost/wpproject/?p=48', 0, 'post', '', 0),
(49, 1, '2018-02-28 07:03:05', '2018-02-28 07:03:05', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'post2', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2018-02-28 07:03:05', '2018-02-28 07:03:05', '', 48, 'http://localhost/wpproject/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-02-28 07:03:18', '2018-02-28 07:03:18', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'post3', '', 'publish', 'open', 'open', '', 'post3', '', '', '2018-02-28 07:03:18', '2018-02-28 07:03:18', '', 0, 'http://localhost/wpproject/?p=50', 0, 'post', '', 0),
(51, 1, '2018-02-28 07:03:18', '2018-02-28 07:03:18', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'post3', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2018-02-28 07:03:18', '2018-02-28 07:03:18', '', 50, 'http://localhost/wpproject/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-02-28 07:03:35', '2018-02-28 07:03:35', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'post4', '', 'publish', 'open', 'open', '', 'post4', '', '', '2018-02-28 07:03:35', '2018-02-28 07:03:35', '', 0, 'http://localhost/wpproject/?p=52', 0, 'post', '', 0),
(53, 1, '2018-02-28 07:03:35', '2018-02-28 07:03:35', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'post4', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2018-02-28 07:03:35', '2018-02-28 07:03:35', '', 52, 'http://localhost/wpproject/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-02-28 07:03:49', '2018-02-28 07:03:49', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'post5', '', 'publish', 'open', 'open', '', 'post5', '', '', '2018-02-28 07:03:49', '2018-02-28 07:03:49', '', 0, 'http://localhost/wpproject/?p=54', 0, 'post', '', 0),
(55, 1, '2018-02-28 07:03:49', '2018-02-28 07:03:49', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'post5', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-02-28 07:03:49', '2018-02-28 07:03:49', '', 54, 'http://localhost/wpproject/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-02-28 07:04:17', '2018-02-28 07:04:17', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2018-07-10 05:48:30', '2018-07-10 05:48:30', '', 0, 'http://localhost/wpproject/?p=56', 2, 'nav_menu_item', '', 0),
(57, 1, '2018-02-28 07:04:17', '2018-02-28 07:04:17', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2018-07-10 05:48:30', '2018-07-10 05:48:30', '', 0, 'http://localhost/wpproject/?p=57', 3, 'nav_menu_item', '', 0),
(58, 1, '2018-02-28 07:04:17', '2018-02-28 07:04:17', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2018-07-10 05:48:30', '2018-07-10 05:48:30', '', 0, 'http://localhost/wpproject/?p=58', 4, 'nav_menu_item', '', 0),
(59, 1, '2018-02-28 07:04:18', '2018-02-28 07:04:18', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2018-07-10 05:48:30', '2018-07-10 05:48:30', '', 0, 'http://localhost/wpproject/?p=59', 5, 'nav_menu_item', '', 0),
(60, 1, '2018-02-28 07:04:18', '2018-02-28 07:04:18', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2018-07-10 05:48:30', '2018-07-10 05:48:30', '', 28, 'http://localhost/wpproject/?p=60', 6, 'nav_menu_item', '', 0),
(61, 1, '2018-02-28 07:04:18', '2018-02-28 07:04:18', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2018-07-10 05:48:30', '2018-07-10 05:48:30', '', 0, 'http://localhost/wpproject/?p=61', 7, 'nav_menu_item', '', 0),
(62, 1, '2018-02-28 07:10:45', '2018-02-28 07:10:45', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-07-10 05:48:30', '2018-07-10 05:48:30', '', 0, 'http://localhost/wpproject/?p=62', 1, 'nav_menu_item', '', 0),
(63, 1, '2018-02-28 07:11:25', '2018-02-28 07:11:25', 'Eight times Pulitzer Prize winner and the oldest continuously published daily newspaper in the city of Chicago, it takes a solid site framework to cope with the daily influx of hard-hitting investigative features, in-depth political reports, sports analysis, entertainment reviews and cultural commentary the paper has to offer.\r\n\r\nAlthough a very simple, basic template, the site offers everything you want from a newspaper - it''s easy to navigate, clear, concise and not bogged down by animation and effects, meaning you can quickly and seaml', 'Blog', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2018-02-28 07:11:25', '2018-02-28 07:11:25', '', 25, 'http://localhost/wpproject/25-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(73, 2, 0),
(38, 1, 0),
(48, 1, 0),
(50, 1, 0),
(52, 1, 0),
(54, 1, 0),
(56, 2, 0),
(57, 2, 0),
(58, 2, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 0),
(62, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 8);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'mainmenu', 'mainmenu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'suresh'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:3:{s:64:"22892baf25566bd54ebad14ccd9d1217da1c91604019408528f5b0ba7ecccbb6";a:4:{s:10:"expiration";i:1549188565;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36";s:5:"login";i:1549015765;}s:64:"313365c819d0c756525ae97d39fed34a29bb6563d592179037ffe1444b3e6cd7";a:4:{s:10:"expiration";i:1549188594;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36";s:5:"login";i:1549015794;}s:64:"3ea8102ad488a876b4ee0949d60cdf7141d6010509f64d922b17ecc3698566ec";a:4:{s:10:"expiration";i:1549188747;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36";s:5:"login";i:1549015947;}}'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '67'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&cats=pop&mfold=o'),
(21, 1, 'wp_user-settings-time', '1531978636'),
(22, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'suresh', '$P$B/MpgpcyAsetvKysCrD84fHRfVR41q0', 'suresh', 'vemulurisuresh1990@gmail.com', '', '2018-02-28 06:11:44', '1549015816:$P$Bm7na.rcyFhFkSdLmgXi5tySsimw4q.', 0, 'suresh');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

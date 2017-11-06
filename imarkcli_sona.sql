-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 06, 2017 at 12:43 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imarkcli_sona`
--

-- --------------------------------------------------------

--
-- Table structure for table `im_admin_feeds`
--

CREATE TABLE `im_admin_feeds` (
  `id` bigint(20) NOT NULL,
  `feed_id` varchar(255) DEFAULT NULL,
  `admin_id` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_admin_feeds`
--

INSERT INTO `im_admin_feeds` (`id`, `feed_id`, `admin_id`, `lat`, `lng`) VALUES
(1, '160', '1', '30.7333148', '76.7794179'),
(2, '184', '1', '30.7299586', '76.81010379999998');

-- --------------------------------------------------------

--
-- Table structure for table `im_commentmeta`
--

CREATE TABLE `im_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `im_comments`
--

CREATE TABLE `im_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
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
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_comments`
--

INSERT INTO `im_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-08-29 10:27:45', '2017-08-29 10:27:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `im_conects`
--

CREATE TABLE `im_conects` (
  `id` bigint(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_friend_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_conects`
--

INSERT INTO `im_conects` (`id`, `user_id`, `user_friend_id`, `status`) VALUES
(62, '103', '63', '1'),
(61, '63', '103', '1'),
(3, '11', '1', '1'),
(4, '1', '11', '1'),
(10, '19', '1', '1'),
(9, '1', '19', '1'),
(13, '11', '19', '1'),
(14, '19', '11', '1'),
(15, '11', '19', '1'),
(16, '19', '11', '1'),
(17, '21', '59', '1'),
(18, '59', '21', '1'),
(21, '60', '1', '1'),
(22, '1', '60', '1'),
(23, '30', '74', '1'),
(24, '74', '30', '1'),
(25, '30', '1', '1'),
(26, '1', '30', '1'),
(29, '79', '21', '1'),
(30, '21', '79', '1'),
(33, '1', '74', '1'),
(34, '74', '1', '1'),
(41, '29', '63', '2'),
(40, '89', '29', '1'),
(39, '29', '89', '1'),
(42, '63', '29', '2'),
(45, '12', '63', '1'),
(46, '63', '12', '1'),
(47, '63', '25', '1'),
(48, '25', '63', '1'),
(51, '1', '21', '1'),
(52, '21', '1', '1'),
(60, '99', '97', '2'),
(59, '97', '99', '2'),
(67, '63', '104', '1'),
(68, '104', '63', '1');

-- --------------------------------------------------------

--
-- Table structure for table `im_connects_requests`
--

CREATE TABLE `im_connects_requests` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_connects_requests`
--

INSERT INTO `im_connects_requests` (`id`, `sender_id`, `reciever_id`, `status`) VALUES
(9, 19, 1, 1),
(4, 19, 11, 1),
(5, 1, 11, 1),
(8, 59, 21, 1),
(10, 1, 59, 0),
(13, 21, 1, 1),
(14, 21, 13, 0),
(21, 63, 62, 0),
(20, 63, 43, 0),
(112, 97, 42, 0),
(22, 63, 68, 0),
(23, 63, 41, 0),
(24, 74, 59, 0),
(25, 74, 25, 2),
(26, 74, 40, 0),
(27, 74, 39, 0),
(28, 74, 42, 0),
(29, 21, 74, 0),
(30, 74, 43, 0),
(31, 74, 30, 1),
(32, 74, 1, 0),
(33, 73, 43, 0),
(34, 73, 42, 0),
(35, 1, 43, 0),
(36, 1, 30, 1),
(37, 78, 33, 0),
(38, 25, 43, 0),
(39, 25, 39, 0),
(43, 21, 79, 1),
(41, 25, 59, 0),
(42, 25, 63, 1),
(113, 102, 97, 0),
(45, 1, 40, 0),
(46, 1, 29, 0),
(47, 1, 31, 0),
(48, 1, 82, 0),
(52, 85, 40, 0),
(51, 85, 43, 0),
(53, 85, 44, 0),
(54, 63, 42, 0),
(55, 63, 82, 0),
(56, 63, 59, 0),
(57, 89, 42, 0),
(58, 89, 43, 0),
(59, 89, 40, 0),
(60, 89, 39, 0),
(61, 89, 26, 0),
(62, 89, 25, 0),
(63, 89, 79, 0),
(64, 89, 21, 0),
(65, 89, 80, 0),
(66, 89, 14, 0),
(67, 89, 72, 0),
(68, 89, 29, 1),
(69, 89, 33, 0),
(70, 89, 59, 0),
(71, 29, 18, 0),
(72, 29, 39, 0),
(73, 63, 29, 1),
(74, 89, 60, 0),
(76, 63, 89, 0),
(77, 63, 21, 0),
(78, 19, 18, 0),
(79, 86, 44, 0),
(80, 86, 42, 0),
(81, 86, 29, 0),
(82, 90, 55, 0),
(83, 77, 45, 0),
(84, 33, 44, 0),
(85, 86, 89, 0),
(86, 63, 14, 0),
(87, 63, 12, 1),
(88, 97, 63, 2),
(89, 63, 96, 0),
(90, 99, 89, 0),
(106, 99, 39, 0),
(92, 99, 12, 0),
(105, 99, 43, 0),
(94, 95, 63, 2),
(95, 63, 28, 0),
(96, 63, 26, 0),
(97, 99, 29, 0),
(107, 99, 97, 1),
(99, 63, 97, 2),
(100, 99, 100, 0),
(101, 63, 95, 0),
(102, 99, 80, 0),
(103, 97, 95, 0),
(108, 33, 101, 0),
(109, 33, 45, 0),
(110, 33, 28, 0),
(111, 63, 44, 0),
(114, 63, 99, 0),
(115, 103, 63, 1),
(116, 106, 29, 0),
(117, 107, 29, 0),
(118, 107, 42, 0),
(124, 107, 104, 0),
(120, 107, 21, 0),
(123, 97, 107, 0),
(122, 104, 63, 1);

-- --------------------------------------------------------

--
-- Table structure for table `im_discussion`
--

CREATE TABLE `im_discussion` (
  `id` bigint(30) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `discussion_created` varchar(50) NOT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_discussion`
--

INSERT INTO `im_discussion` (`id`, `user_id`, `title`, `description`, `discussion_created`, `status`) VALUES
(24, '19', 'test title', 'test description', '1505824887', 0),
(23, '19', 'test', 'testing', '1505727884', 0),
(21, '1', 'teccccst', 'abcccc', '1505554588', 1),
(22, '1', 'teccccst', 'abcccc', '1505554676', 0),
(25, '25', 'discussion', 'first discussion', '1505889637', 1),
(26, '25', 'discussion', 'testing', '1505890029', 1),
(27, '25', 'title', 'test', '1505890303', 1),
(28, '25', 'test title', 'test description', '1505890444', 1),
(29, '21', 'new discussion', 'discussion check', '1505893299', 0),
(30, '21', 'test new', 'testing', '1505893342', 1),
(31, '21', 'check discussions', 'creating a new discussions.', '1505911837', 0),
(32, '1', 'testing', 'image testing', '1505976542', 0),
(33, '1', 'test title', 'test description', '1505976680', 1),
(34, '1', 'image testing', 'test description', '1505976747', 1),
(35, '1', 'new', 'plz test', '1505979162', 1),
(36, '33', 'Sanctuary Scholarships', 'Lets create scholarships for refugees', '1506000515', 0),
(37, '1', 'test', 'testingg', '1506079115', 0),
(38, '59', 'check legal', 'hello legal', '1506162803', 1),
(39, '59', 'how about this discussion', 'k\nHello I n here', '1506162869', 1),
(40, '21', 'testtttt', 'message', '1506164673', 1),
(41, '21', 'new test', 'new message', '1506164750', 1),
(42, '59', 'messagesss', 'bdjdjeke', '1506164833', 1),
(43, '59', 'vhnn', 'vvjkbb', '1506164933', 1),
(44, '59', 'newwwwwww', 'nsjdjdifndidndofkork', '1506165067', 1),
(45, '59', 'latest', 'bdndnfjdndodllf', '1506165199', 1),
(46, '59', 'trs4gggghhhhhbbhb CV b ñhiikm', 'ucufuxcuudfifu I', '1506165604', 1),
(47, '59', 'ster', 'tuucciciviivbhujju', '1506165709', 1),
(48, '1', 'title', 'bsbdndkenek', '1506171692', 1),
(49, '21', 'Duhdjjfjf', 'Hxxhdhhdfhfjfj', '1506512351', 1),
(50, '21', 'emerged', ' Message', '1506600029', 1),
(51, '21', 'gvrgb', ' Messagerthth', '1506600634', 1),
(52, '69', ' Dodd', ' Messaged hdf diff', '1506601306', 1),
(53, '69', 'D.C. fess', ' Add add a FDA fed ', '1506601649', 1),
(54, '21', 'gHhahs', 'Vahajahjs\n', '1506601864', 1),
(55, '21', 'cjcl', 'Mfkkdfkf\n', '1506601986', 1),
(56, '21', 'ckkcckkf', 'Jdfkkffkmfmg', '1506602635', 1),
(57, '21', 'cijckgffk', 'Djkdkfkflglf', '1506602963', 1),
(58, '21', 'ifidifkfdk', 'Fodkdkkffk', '1506602996', 1),
(59, '21', 'oooooooooooooo', 'Oooooooooooo', '1506603233', 1),
(60, '21', 'bosgoogoogzlgGo', 'VKbVllgLh', '1506603323', 1),
(61, '21', 'the', 'Hh', '1506603415', 1),
(62, '21', 'ghg', 'Ggggg', '1506603552', 1),
(63, '21', 'dgkf', 'Fjcjjdfk', '1506603801', 1),
(64, '21', 'test', 'Test', '1506605815', 1),
(65, '21', 'iffiifkglvlvlvvlvvl', 'Cjkcckvkfovooc', '1506662364', 1),
(66, '63', 'new forum', 'forum', '1506669928', 1),
(67, '63', 'new', 'nsjdndidnke', '1506670050', 1),
(68, '63', 'test', 'sbdjdnke', '1506670984', 1),
(69, '21', 'hahjajajjsjsjjsjsjsjjs', 'GHhhHhzjzhzjhzhz', '1506671153', 1),
(70, '63', 'title', 'Bznsndjdndk', '1506671390', 1),
(71, '63', 'forum', 'bsjdndidmdk', '1506671464', 1),
(72, '63', 'new dhjdnfkf', 'bdjdndkdmdi', '1506671675', 1),
(106, '77', 'TEST 2', 'Hello everyone', '1508328584', 1),
(74, '63', 'bsjdndkdmdkmdkdm', 'bdjdndjfnkfnfkf', '1506673450', 1),
(75, '63', 'hshdndkdk', 'ndjrnekkek', '1506673556', 1),
(76, '63', 'hdhdndkdmdjfhhrbg', 'newwwwww', '1506673648', 1),
(77, '63', 'title', 'nsndjekemkrjr', '1506685169', 1),
(78, '63', 'cssgsggeg', 'fswfgehe', '1506686218', 1),
(79, '21', 'ggaha', 'Vagabbab', '1506687910', 1),
(80, '74', 'Abhi', 'hello team', '1506692583', 1),
(81, '74', 'Test', 'test', '1506692675', 1),
(82, '74', 'test', 'hrlli', '1506692713', 1),
(83, '21', 'test', 'Test', '1506693205', 1),
(84, '30', 'test title', 'test description', '1506693953', 0),
(85, '30', 'hello', 'helloooo', '1506694019', 1),
(86, '21', 'new', 'New', '1506694033', 1),
(87, '1', 'test', 'hsshs', '1506695141', 1),
(88, '1', 'titohihigug', 'hfufyguv', '1506695865', 0),
(89, '1', 'fwegdrh', 'sfsgeuruu5u', '1506695967', 1),
(90, '1', 'bdjdnd', 'endjdnkdoeke', '1506696384', 1),
(91, '75', 'HELLOOOO', 'Hello everyone', '1506856207', 0),
(92, '75', 'F Test', 'try 1', '1506856287', 1),
(93, '25', 'check', 'hcfhcjdhjdfufufuuffi', '1507011821', 1),
(94, '83', 'bsndn', 'dnjdndkd', '1507189416', 0),
(95, '83', 'new', 'fkghohoh', '1507189466', 0),
(96, '83', 'test new', 'bsjdj', '1507189857', 1),
(97, '83', 'Loren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum', 'Loren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum Loren IpsumLoren IpsumLoren IpsumLoren IpsumLoren Ipsum\n', '1507189961', 1),
(98, '25', 'testing testing and I will be able have easy access the internet and found', 'testing testing and the other hand I have to do with the following document document copy and paste this', '1507274611', 1),
(99, '25', 'testing testing the', 'testing testing the other hand if you are doing well and the other day to get a good idea to have to the inbox by the end up with you on the other side and I am a little time for a new thread for this position of the other side of things that you have any other questions you might have to do the job done in time and I will have the time and I will have the time to get a chance I could get a new way I am a little while and it is a great weekend and we will have a good time for a while and it will not have a great weekend too bad the other side is the only thing I can do the job is a great weekend too many bad login and the first place and the first one is a great weekend too', '1507275066', 1),
(100, '63', 'gf', 'chh', '1507294227', 1),
(101, '29', 'hello titletttt v', 'ffhfhchfhfghgugugy ugvuugguugb buvhvhcyftfyygyg vvhvyyvyvyv vhvhvhuvuvuvuvvuvu ugyvyvhvvh hvhchchvhvvhhv vhvhvuvhvrdrdvycgcychvj vjchvjchvuvh bvhcgvhcgvhch chcgvhchvhchvu buvgchvhv', '1507791198', 1),
(102, '29', 'quick', 'team needs to follow the app fundamentels necessary', '1507791408', 1),
(103, '29', 'New job of software testing engineer', 'is any one interested in the job of software testing engineer in the field??', '1507792593', 1),
(105, '63', 'forum', 'cfjgjbkbk', '1507795874', 0),
(110, '100', 'zhjx', 'Jack', '1509103945', 1),
(111, '63', 'new forum', 'please ignore', '1509166539', 1),
(112, '63', 'new forum', 'please ignore', '1509166552', 1),
(113, '63', 'yieee', 'uff', '1509166737', 1),
(114, '97', 'wot is this nonsense??', 'hmm???', '1509172270', 1),
(115, '97', 'what\'s going on??', 'tell', '1509172563', 1),
(116, '99', 'one 2 1', 'The Maruti Suzuki Vitara Brezza is priced in the range of Rs 7.23 lakh - 9.91 lakh (ex-showroom, New Delhi) and is available in seven variants – LDI (base), LDI (O), VDI, VDI (O), ZDI, ZDI+ and ZDI+ Dual-tone (range-topping). It comes standard with d', '1509176228', 1),
(117, '99', 'one 2 1', 'The Maruti Suzuki Vitara Brezza is priced in the range of Rs 7.23 lakh - 9.91 lakh (ex-showroom, New Delhi) and is available in seven variants – LDI (base), LDI (O), VDI, VDI (O), ZDI, ZDI+ and ZDI+ Dual-tone (range-topping). It comes standard with d', '1509176243', 1),
(118, '99', '2 1 2', 'The Maruti Suzuki Vitara Brezza is priced in the range of Rs 7.23 lakh - 9.91 lakh (ex-showroom, New Delhi) and is available in seven variants – LDI (base), LDI (O), VDI, VDI (O), ZDI, ZDI+ and ZDI+ Dual-tone (range-topping). It comes standard with d', '1509176285', 1),
(119, '99', 'fjvjvj', 'chjggh', '1509177778', 1),
(120, '99', '28snns', 'sbshzhsjs', '1509178033', 1),
(121, '99', 'fwdvfv', 'dvdvtbynu', '1509178074', 1),
(122, '99', 'fufufu', 'fufufufu', '1509186514', 1),
(123, '99', 'test', 'bzhsjzjsjs', '1509191127', 1),
(124, '77', 'Teach', 'qwertyuiop', '1509453485', 1),
(125, '63', 'yes', 'anything', '1509534273', 1),
(126, '63', 'ohh', 'yeaahhh', '1509534442', 1),
(127, '63', 'jobs', 'ohh', '1509534653', 1),
(128, '63', 'education', 'Plaza chljaa', '1509536283', 1),
(129, '63', 'chck education', 'plzz chck', '1509536346', 1),
(130, '63', 'family', 'Services', '1509537762', 1),
(131, '63', 'title', 'Volunteer', '1509537863', 1),
(132, '63', 'jobs', 'jobssss', '1509537949', 1),
(133, '63', 'ppp', 'Haha', '1509538284', 1),
(134, '63', 'volunteer test', 'Testing', '1509538911', 1),
(135, '63', 'family checking ', 'New entry', '1509539729', 1),
(136, '97', 'aid', 'agencies', '1509540606', 1),
(137, '97', 'education test', 'testinggggg', '1509540657', 1),
(140, '107', 'testing the forms from the iodine', 'Ghggujjj gh jdjcfb jdjhn hyuwwyopn. Such. Ghvgnhjv hsdhsjjv dasriogeqqui uvjkppjgib gasquiorwri hshshs Winn gfncxzbmkhdahkb hartrwquiopb. Gsghvuikuhirtuuyygvg hhfjhtuiuuytreeqq tewqyippooiuyrewwq uytewqqetyioppn \n', '1509711091', 1),
(141, '107', 'tester', 'Sjsjbshsbsnsbsbeha whzw sheiks sjebsjskwnr rdjehiqjwke rej Eid wnejejsjwjsbe snjs she sbs', '1509712493', 1),
(142, '107', 'gddfbdd', 'Bswhh\n', '1509712723', 1);

-- --------------------------------------------------------

--
-- Table structure for table `im_discussion_category`
--

CREATE TABLE `im_discussion_category` (
  `id` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `parent_id` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_discussion_category`
--

INSERT INTO `im_discussion_category` (`id`, `name`, `parent_id`) VALUES
(1, 'Legal', 0),
(7, 'education', 0),
(8, 'Aid Agencies', 0),
(11, 'Family Services', 0),
(10, 'Information', 0),
(12, 'Volunteering', 0),
(13, 'jobs', 1),
(14, 'Testing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `im_discussion_comment`
--

CREATE TABLE `im_discussion_comment` (
  `id` bigint(20) NOT NULL,
  `dis_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_comment` text,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_discussion_comment`
--

INSERT INTO `im_discussion_comment` (`id`, `dis_id`, `user_id`, `user_comment`, `created_at`) VALUES
(1, '23', '19', 'This is a nice article', '1505553990'),
(2, '19', '19', 'testing comment', '1505716767'),
(3, '23', '19', 'testing comment', '1505740339'),
(4, '21', '21', 'this is a comment', '1505822700'),
(5, '23', '21', 'this is a comment', '1505822739'),
(6, '23', '25', 'this is a comment', '1505822835'),
(7, '21', '25', 'this is a comment', '1505822844'),
(8, '21', '25', 'this is a comment', '1505823325'),
(9, '22', '25', 'this is a comment', '1505823332'),
(10, '22', '25', 'this is a comment', '1505823890'),
(11, '23', '19', 'This is a nice article', '1505826378'),
(12, '21', '25', 'this is a comment', '1505826499'),
(13, '22', '25', 'post', '1505826544'),
(14, '22', '25', 'post', '1505827120'),
(15, '27', '21', 'first comment', '1505895342'),
(16, '26', '21', 'first comment', '1505895600'),
(17, '27', '21', 'test comments', '1505895687'),
(18, '27', '21', 'new comment', '1505904466'),
(19, '37', '59', ',', '1506154250'),
(20, '37', '59', 'hehzhshaj', '1506154298'),
(21, '37', '59', 'hello how are you', '1506154367'),
(22, '44', '59', 'hello tedting, gg HGH', '1506165369'),
(23, '37', '59', 'good obr', '1506166787'),
(24, '28', '59', 'good comment', '1506166816'),
(25, '28', '59', 'nice', '1506166821'),
(26, '43', '1', 'testing comment', '1506342110'),
(27, '86', '74', 'hello comments', '1506694149'),
(28, '86', '74', 'how are u', '1506694167'),
(29, '90', '21', 'okkk', '1507009435'),
(30, '93', '25', 'testing testing and I will be a problem in the area and the other day and the first time I am going through the day I am not', '1507011898'),
(31, '90', '21', 'okkkk', '1507025012'),
(32, '90', '21', 'yes', '1507025025'),
(33, '89', '21', 'okk', '1507025066'),
(34, '21', '25', 'this is a comment', '1507025660'),
(35, '83', '25', 'testing testing the waters and the other day and I will have to go to the other day and I', '1507026132'),
(36, '90', '21', 'Done', '1507028737'),
(37, '88', '21', 'Okkk', '1507029913'),
(38, '88', '21', 'Yooo', '1507029996'),
(39, '88', '21', 'Ohhh', '1507030005'),
(40, '90', '79', 'testing testing the waters and I am not a problem for you and I am not a problem for you and I am not a problem for you and I am not a problem for you and I am not a problem for you and I am not a problem for you and', '1507030632'),
(41, '97', '21', 'nice', '1507274524'),
(42, '97', '21', 'bdjdndjdndkdmndjd dkdndnfnfnnfjfnfbfvfbf dbbdbfjfnfjfnfjnfnfjfnfjfmfjfnfkdm jdjdndjdnfidnfj jdjdn', '1507274712'),
(43, '96', '25', 'testing testing the waters and the other hand if I have been a long way from this group and the rest is history tomorrow morning at least a couple days and then you will have a good time for a while and I will send the email and delete the message and I have a good time to do the same time I was thinking that I can do the job done a lot to be a great day and the first time in total of a good day please see attached is my resume and I will send the money is in the area and the other side of things that I have to go back and forth between us we would be a good idea for a while back I am I missing anything to the inbox by Gmail your help in the area of the application form and send the same time store as long as the one', '1507274811'),
(44, '100', '63', 'testing testing and commissioning', '1507294237'),
(45, '99', '63', 'testing testing and commissioning', '1507295803'),
(46, '99', '63', 'testing testing and', '1507295816'),
(47, '78', '87', 'hey', '1507615349'),
(48, '100', '89', 'hey', '1507702868'),
(49, '102', '29', 'hello moto', '1507791555'),
(50, '102', '29', 'how are u', '1507791605'),
(51, '101', '29', 'hello', '1507791871'),
(52, '103', '29', 'ues me', '1507792618'),
(53, '103', '29', 'me also', '1507792623'),
(54, '103', '29', 'how much salary', '1507792631'),
(55, '103', '29', 'do you need', '1507792639'),
(56, '105', '93', 'hello', '1508850223'),
(57, '23', '86', 'Jknjhkhhj', '1508850417'),
(58, '38', '19', 'This is a nice article', '1508913036'),
(59, '105', '63', 'hey', '1508914750'),
(62, '23', '86', 'Testing testing', '1508919538'),
(61, '105', '63', 'hello', '1508915061'),
(63, '23', '86', 'Again test', '1508919773'),
(64, '23', '86', 'Again test', '1508919780'),
(66, '101', '12', 'Hello team, how are you doing it', '1509089108'),
(67, '103', '12', 'not at all', '1509089172'),
(68, '103', '12', 'okkkk', '1509089194'),
(69, '111', '99', 'ffdd', '1509174870'),
(70, '111', '99', 'linkedinh', '1509174893'),
(71, '111', '99', 'dsgzgfff', '1509174906'),
(72, '67', '99', 'bh.gu n8lnnkkk ijjkjjjjvgñ bh    bb hbh  h bh?', '1509175223'),
(73, '113', '99', 'testing the forjm', '1509176067'),
(74, '113', '99', 'Hello how are you dear........ what are you doing dear      where have you gone', '1509176145'),
(75, '118', '99', 'sjsjsjzjshdudhshx', '1509179190'),
(76, '118', '99', 'jejxbshshsushxussis', '1509179197'),
(77, '114', '99', 'hello testing', '1509185303'),
(78, '36', '33', 'amazing skyline', '1509399529'),
(79, '92', '33', 'cool post', '1509401045'),
(80, '122', '63', 'hey', '1509511809'),
(81, '120', '63', 'ohh', '1509513310'),
(82, '129', '97', 'hey', '1509600252'),
(83, '129', '63', 'Zygxxhh', '1509621133'),
(84, '137', '106', 'hey', '1509687647'),
(85, '112', '106', 'hey', '1509687781'),
(87, '132', '107', 'Gehcchxhgjhf', '1509710925'),
(88, '132', '107', 'Tester', '1509710930'),
(89, '132', '107', 'Testing', '1509710935'),
(90, '132', '107', 'Fdhjffififjigpgiig cjgiuudtieieuerueriv duigifigjgjfjfjfjjg ufufufcjvigigiguyfugf uddufuufyydfuffjgk uddufujvchhxtsraeawthoho cdgiohgifjogoh igugohigydyrtiurtk ighdgohdgidhgi dhdhtsrayeiupbl gkhxkgfjjgkgkg kvjhcvkcbgzhcgktstiusyqtpprst fududfyaeuag dyfgihfgkcjxhpgfgjgkjlm vjjohkcoghjhjhjkv ghhj', '1509710973'),
(91, '141', '107', 'Fsshbdbbcc fggfggf chefs fgg fggfhffg vhffggff fghffg', '1509712609'),
(92, '140', '107', 'Testing the famous strips', '1509712698'),
(93, '137', '63', 'yo', '1509715337'),
(94, '142', '107', 'Fvdsxvvffgc fgdswrb. Thx. Ddghvht. Fgh. Ffgggheecdc. Fghrerujff gdewyuuv fetch. Tic fg', '1509717047');

-- --------------------------------------------------------

--
-- Table structure for table `im_discussion_like`
--

CREATE TABLE `im_discussion_like` (
  `id` bigint(20) NOT NULL,
  `dis_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_ad` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_discussion_like`
--

INSERT INTO `im_discussion_like` (`id`, `dis_id`, `user_id`, `created_ad`) VALUES
(2, '1', '1', '1505546068'),
(28, '37', '59', '1506166779'),
(25, '46', '59', '1506165283'),
(17, '22', '25', '1505823980'),
(29, '28', '59', '1506166806'),
(30, '84', '1', '1506694005'),
(31, '86', '30', '1506694078'),
(32, '86', '74', '1506694087'),
(36, '92', '75', '1506856999'),
(38, '26', '21', '1507015389'),
(44, '90', '21', '1507024369'),
(48, '96', '1', '1507271298'),
(54, '98', '63', '1507293002'),
(55, '99', '63', '1507295795'),
(56, '77', '87', '1507615249'),
(58, '78', '87', '1507615292'),
(59, '100', '1', '1507616721'),
(61, '99', '1', '1507621604'),
(64, '97', '89', '1507728484'),
(66, '102', '29', '1507791597'),
(67, '101', '29', '1507791865'),
(68, '104', '63', '1507796522'),
(69, '97', '63', '1507796543'),
(71, '105', '21', '1508761814'),
(72, '103', '21', '1508761884'),
(85, '78', '21', '1508833735'),
(102, '23', '86', '1508910321'),
(98, '92', '86', '1508852050'),
(103, '103', '97', '1509172610'),
(109, '36', '33', '1509399476'),
(110, '114', '33', '1509400946'),
(112, '122', '63', '1509515533'),
(114, '112', '106', '1509687758'),
(117, '140', '107', '1509712684'),
(118, '142', '107', '1509717024');

-- --------------------------------------------------------

--
-- Table structure for table `im_discussion_rel`
--

CREATE TABLE `im_discussion_rel` (
  `id` bigint(20) NOT NULL,
  `dis_id` varchar(255) DEFAULT NULL,
  `cat_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_discussion_rel`
--

INSERT INTO `im_discussion_rel` (`id`, `dis_id`, `cat_id`) VALUES
(15, '18', '3'),
(16, '19', '5'),
(17, '19', '3'),
(18, '20', '3'),
(19, '21', '6'),
(20, '21', '1'),
(21, '22', '4'),
(22, '22', '1'),
(23, '23', '3'),
(24, '24', '5'),
(25, '24', '3'),
(26, '25', '6'),
(27, '25', '1'),
(28, '26', '6'),
(29, '26', '1'),
(30, '27', '6'),
(31, '27', '1'),
(32, '28', '6'),
(33, '28', '1'),
(34, '29', '4'),
(35, '29', '1'),
(36, '30', '6'),
(37, '30', '1'),
(38, '31', '5'),
(39, '31', '3'),
(40, '32', '4'),
(41, '32', '1'),
(42, '33', '6'),
(43, '33', '1'),
(44, '34', '6'),
(45, '34', '1'),
(46, '35', '6'),
(47, '35', '1'),
(48, '0', '4'),
(49, '0', '1'),
(50, '0', '4'),
(51, '0', '1'),
(52, '36', '4'),
(53, '36', '1'),
(54, '37', '4'),
(55, '37', '1'),
(56, '38', '14'),
(57, '38', '1'),
(58, '39', '13'),
(59, '39', '1'),
(60, '0', '13'),
(61, '0', '1'),
(62, '40', '13'),
(63, '40', '1'),
(64, '41', '14'),
(65, '41', '1'),
(66, '42', '13'),
(67, '42', '1'),
(68, '43', '14'),
(69, '43', '1'),
(70, '44', '14'),
(71, '44', '1'),
(72, '45', '13'),
(73, '45', '1'),
(74, '46', '13'),
(75, '46', '1'),
(76, '47', '13'),
(77, '47', '1'),
(78, '0', '13'),
(79, '0', '1'),
(80, '0', '14'),
(81, '0', '1'),
(82, '0', '13'),
(83, '0', '1'),
(84, '0', '13'),
(85, '0', '1'),
(86, '48', '13'),
(87, '48', '1'),
(88, '49', '14'),
(89, '49', '1'),
(90, '50', '14'),
(91, '50', '1'),
(92, '51', '14'),
(93, '51', '1'),
(94, '52', '13'),
(95, '52', '1'),
(96, '53', '13'),
(97, '53', '1'),
(98, '54', '13'),
(99, '54', '1'),
(100, '55', '13'),
(101, '55', '1'),
(102, '56', '13'),
(103, '56', '1'),
(104, '57', '13'),
(105, '57', '1'),
(106, '58', '13'),
(107, '58', '1'),
(108, '59', '13'),
(109, '59', '1'),
(110, '60', '13'),
(111, '60', '1'),
(112, '61', '13'),
(113, '61', '1'),
(114, '62', '13'),
(115, '62', '1'),
(116, '63', '13'),
(117, '63', '1'),
(118, '64', '13'),
(119, '64', '1'),
(120, '65', '13'),
(121, '65', '1'),
(122, '66', '13'),
(123, '66', '1'),
(124, '67', '14'),
(125, '67', '1'),
(126, '68', '13'),
(127, '68', '1'),
(128, '69', '13'),
(129, '69', '1'),
(130, '70', '13'),
(131, '70', '1'),
(132, '71', '14'),
(133, '71', '1'),
(134, '72', '13'),
(135, '72', '1'),
(136, '73', '13'),
(137, '73', '1'),
(138, '74', '13'),
(139, '74', '1'),
(140, '75', '13'),
(141, '75', '1'),
(142, '76', '14'),
(143, '76', '1'),
(144, '77', '13'),
(145, '77', '1'),
(146, '78', '13'),
(147, '78', '1'),
(148, '79', '13'),
(149, '79', '1'),
(150, '80', '13'),
(151, '80', '1'),
(152, '81', '14'),
(153, '81', '1'),
(154, '82', '13'),
(155, '82', '1'),
(156, '83', '13'),
(157, '83', '1'),
(158, '84', '5'),
(159, '85', '14'),
(160, '85', '1'),
(161, '86', '13'),
(162, '86', '1'),
(163, '87', '14'),
(164, '87', '1'),
(165, '88', '3'),
(166, '89', '14'),
(167, '89', '1'),
(168, '90', '8'),
(169, '91', '5'),
(170, '92', '1'),
(171, '93', '13'),
(172, '93', '1'),
(173, '0', '13'),
(174, '0', '1'),
(175, '0', '13'),
(176, '0', '1'),
(177, '0', '5'),
(178, '0', '3'),
(179, '0', '13'),
(180, '0', '1'),
(181, '94', '3'),
(182, '0', '1'),
(183, '95', '3'),
(184, '0', '1'),
(185, '96', '1'),
(186, '97', '7'),
(187, '98', '13'),
(188, '98', '1'),
(189, '99', '14'),
(190, '99', '1'),
(191, '100', '13'),
(192, '100', '1'),
(193, '101', '14'),
(194, '101', '1'),
(195, '102', '13'),
(196, '102', '1'),
(197, '103', '13'),
(198, '103', '1'),
(199, '104', '3'),
(200, '105', '3'),
(201, '106', '13'),
(202, '106', '1'),
(203, '107', '10'),
(204, '108', '3'),
(205, '109', '3'),
(206, '110', '14'),
(207, '110', '1'),
(208, '111', '7'),
(209, '112', '7'),
(210, '113', '8'),
(211, '114', '1'),
(212, '115', '1'),
(213, '116', '14'),
(214, '116', '1'),
(215, '117', '14'),
(216, '117', '1'),
(217, '118', '13'),
(218, '118', '1'),
(219, '119', '11'),
(220, '120', '8'),
(221, '121', '11'),
(222, '122', '8'),
(223, '123', '13'),
(224, '123', '1'),
(225, '124', '7'),
(226, '125', '1'),
(227, '126', '1'),
(228, '127', '13'),
(229, '127', '1'),
(230, '128', '7'),
(231, '129', '7'),
(232, '130', '11'),
(233, '131', '12'),
(234, '132', '13'),
(235, '132', '1'),
(236, '133', '8'),
(237, '134', '12'),
(238, '135', '11'),
(239, '136', '8'),
(240, '137', '7'),
(241, '138', '8'),
(242, '139', '8'),
(243, '140', '13'),
(244, '140', '1'),
(245, '141', '13'),
(246, '141', '1'),
(247, '142', '13'),
(248, '142', '1');

-- --------------------------------------------------------

--
-- Table structure for table `im_discussion_unlike`
--

CREATE TABLE `im_discussion_unlike` (
  `id` int(50) NOT NULL,
  `dis_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_discussion_unlike`
--

INSERT INTO `im_discussion_unlike` (`id`, `dis_id`, `user_id`, `created_at`) VALUES
(7, 27, 21, '1505896149'),
(6, 21, 1, '1505743301'),
(10, 37, 59, '1506166669'),
(11, 28, 59, '1506166836'),
(12, 86, 74, '1506694090'),
(20, 90, 21, '1507024891'),
(21, 24, 1, '1507199901'),
(29, 99, 89, '1507728237'),
(28, 90, 87, '1507621146'),
(30, 98, 89, '1507728332'),
(32, 103, 29, '1507792605'),
(46, 107, 86, '1508909128'),
(48, 111, 99, '1509174955'),
(49, 113, 99, '1509176094'),
(50, 118, 99, '1509179184'),
(52, 92, 33, '1509401022'),
(54, 137, 106, '1509687641'),
(55, 132, 107, '1509710917'),
(56, 141, 107, '1509712595');

-- --------------------------------------------------------

--
-- Table structure for table `im_dis_like_com`
--

CREATE TABLE `im_dis_like_com` (
  `id` bigint(20) NOT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_dis_like_com`
--

INSERT INTO `im_dis_like_com` (`id`, `comment_id`, `user_id`) VALUES
(1, '2', '19'),
(3, '15', '21'),
(4, '19', '59'),
(5, '20', '59'),
(6, '21', '59'),
(8, '22', '59'),
(9, '25', '59'),
(10, '24', '59'),
(11, '27', '74'),
(12, '28', '73'),
(15, '30', '25'),
(16, '16', '21'),
(18, '44', '63'),
(24, '46', '1'),
(25, '45', '1'),
(26, '45', '87'),
(27, '41', '87'),
(28, '43', '87'),
(32, '49', '29'),
(31, '44', '89'),
(33, '50', '29'),
(34, '52', '29'),
(35, '54', '29'),
(36, '53', '29'),
(48, '73', '99'),
(43, '11', '86'),
(44, '6', '86'),
(50, '77', '99'),
(51, '78', '33'),
(52, '79', '33'),
(66, '80', '63'),
(67, '90', '107'),
(68, '89', '107'),
(69, '88', '107'),
(70, '87', '107'),
(72, '91', '107'),
(74, '94', '107');

-- --------------------------------------------------------

--
-- Table structure for table `im_dis_unlike_com`
--

CREATE TABLE `im_dis_unlike_com` (
  `id` bigint(20) NOT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_dis_unlike_com`
--

INSERT INTO `im_dis_unlike_com` (`id`, `comment_id`, `user_id`) VALUES
(3, '1', '19'),
(6, '17', '21'),
(8, '22', '59'),
(9, '24', '59'),
(10, '25', '59'),
(11, '27', '74'),
(12, '28', '73'),
(14, '30', '25'),
(16, '29', '21'),
(19, '47', '87'),
(22, '48', '89'),
(23, '55', '29'),
(26, '52', '21'),
(28, '1', '86'),
(32, '5', '86'),
(38, '77', '33'),
(34, '69', '99'),
(35, '72', '99'),
(40, '81', '63'),
(51, '92', '107');

-- --------------------------------------------------------

--
-- Table structure for table `im_education`
--

CREATE TABLE `im_education` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_present` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_education`
--

INSERT INTO `im_education` (`id`, `user_id`, `title`, `course_name`, `start_date`, `end_date`, `is_present`) VALUES
(31, '28', 'mmu mullana', 'b.tech', '2016-04-12', '2016-12-04', '0'),
(40, '89', 'pu', 'btech', '2017-10-08', '2017-10-28', '0'),
(32, '28', 'pgdca', 'networking engineering', '1970-01-01', '1970-01-01', '0'),
(4, '1', 'BTECH', 'Coumputer Science', '2010-02-08', '2014-02-07', '0'),
(34, '33', 'Aston Business School', 'MBA', '2016-09-01', '2017-09-15', '0'),
(12, '11', 'amity', 'bca', '1970-01-01', '1970-01-01', '0'),
(23, '23', 'new college', 'btech', '2017-10-09', '2017-12-09', '0'),
(25, '24', 'test college', 'b.tech', '2017-08-09', '2017-12-09', '0'),
(26, '24', 'testing college', 'm.tech', '1970-01-01', '1970-01-01', '0'),
(27, '24', 'schooleing', '12', '1970-01-01', '1970-01-01', '0'),
(28, '24', 'pgdca', 'testing', '1970-01-01', '1970-01-01', '0'),
(29, '25', 'yffycy', 'fhfufh', '2017-10-04', '2017-10-06', '0'),
(39, '78', 'College of Law', 'LPC', '2004-09-01', '2005-09-01', '0'),
(38, '21', 'name', 'course1', '2015-06-20', '2017-08-20', '0'),
(41, '29', 's.d college ambala', 'b.tech', '2017-10-14', '2017-10-28', '0'),
(42, '99', 'test', 'test', '2017-10-29', '2017-10-30', '0'),
(43, '12', 'pu', 'btech', '2017-06-28', '2017-10-29', '0'),
(49, '107', 'vhhh', 'ghhfd', '2017-10-03', '2019-11-03', '0');

-- --------------------------------------------------------

--
-- Table structure for table `im_experiance`
--

CREATE TABLE `im_experiance` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_present` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_experiance`
--

INSERT INTO `im_experiance` (`id`, `title`, `start_date`, `end_date`, `is_present`, `user_id`) VALUES
(26, 'ABC', '2014-06-02', '0000-00-00', '1', '11'),
(2, 'WORDPRESS', '2014-06-02', '2017-07-18', '0', '1'),
(58, 'testt', '1970-01-01', '1970-01-01', '0', '21'),
(38, 'tester', '2017-09-12', '0000-00-00', '1', '21'),
(39, 'title', '2017-07-19', '2017-08-21', '0', '21'),
(59, 'latest', '2016-08-09', '1970-01-01', '0', '21'),
(101, 'Title', '2017-10-11', '2017-10-24', '0', '89'),
(44, 'tester engineer at the imarkinfotech infotech solutions limited', '2017-05-09', '1970-01-01', '0', '24'),
(13, 'jQuery', '2014-02-06', '0000-00-00', '1', '1'),
(12, 'jQuery', '2014-02-06', '0000-00-00', '1', '1'),
(27, 'QWER', '2014-06-02', '2017-06-02', '0', '11'),
(30, 'test', '2017-06-09', '1970-01-01', '0', '20'),
(43, 'qa team', '2017-09-07', '2017-09-05', '0', '24'),
(42, 'neeww', '2016-09-07', '1970-01-01', '0', '11'),
(45, 'neww', '2017-12-09', '0000-00-00', '1', '23'),
(46, 'tester checking ravi', '1970-01-01', '1970-01-01', '0', '24'),
(47, 'ravi  is the greatest tester', '2017-09-08', '1970-01-01', '0', '24'),
(48, 'zhzhshsb', '1970-01-01', '1970-01-01', '0', '24'),
(49, 'hehsbssnsj', '1970-01-01', '1970-01-01', '0', '24'),
(50, 'yehshs', '1970-01-01', '1970-01-01', '0', '24'),
(51, 'twstsy', '1970-01-01', '1970-01-01', '0', '24'),
(52, 'ydfy', '2017-10-14', '2017-10-25', '0', '25'),
(60, 'hello I work as an testing engineer any the imarkinfotech which is situated at the dlf building at chandigarh', '1970-01-01', '0000-00-00', '1', '28'),
(61, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(99, 'Law', '2016-02-15', '0000-00-00', '1', '78'),
(63, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(95, 'chjgffh', '2017-09-22', '2017-09-23', '0', '21'),
(67, 'jQuery1', '1970-01-01', '1970-01-01', '0', '11'),
(68, 'jQuery1', '1970-01-01', '1970-01-01', '0', '11'),
(69, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(70, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(71, 'team one', '2017-10-09', '2017-12-09', '0', '28'),
(72, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(73, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(74, 'tester', '2017-10-09', '2017-12-09', '0', '28'),
(75, 'tester', '1970-01-01', '0000-00-00', '1', '28'),
(76, 'tester', '1970-01-01', '0000-00-00', '1', '28'),
(77, 'tester', '1970-01-01', '0000-00-00', '1', '28'),
(78, 'tester', '1970-01-01', '0000-00-00', '1', '28'),
(79, 'tesying', '1970-01-01', '1970-01-01', '0', '28'),
(80, 'tesying', '1970-01-01', '1970-01-01', '0', '28'),
(81, 'tesying', '1970-01-01', '1970-01-01', '0', '28'),
(82, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(83, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(84, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(85, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(86, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(87, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(94, 'Sona Circle App', '2017-01-01', '0000-00-00', '1', '33'),
(89, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(90, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(91, 'jQuery1', '2014-02-06', '2016-02-08', '0', '11'),
(92, 'jQuery1', '2014-06-02', '2016-08-02', '0', '11'),
(100, 'team', '2017-10-07', '0000-00-00', '1', '25'),
(98, '22/08/1994', '2017-09-22', '2017-09-24', '0', '59'),
(102, 'testef', '2017-10-25', '0000-00-00', '1', '89'),
(103, 'tu', '2017-10-12', '2017-10-31', '0', '89'),
(104, 'abc', '2017-10-08', '2017-10-31', '0', '89'),
(105, 'test date', '2017-10-11', '2017-10-25', '0', '89'),
(106, 'testing', '2017-10-27', '2017-10-31', '0', '89'),
(107, 'yree', '2017-10-13', '2017-10-15', '0', '29'),
(118, 'test', '2017-11-01', '0000-00-00', '1', '63'),
(110, 'hellio', '2017-10-29', '0000-00-00', '1', '99'),
(111, 'uffufhfh', '2017-10-19', '2017-10-22', '0', '99');

-- --------------------------------------------------------

--
-- Table structure for table `im_feeds`
--

CREATE TABLE `im_feeds` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `post_created` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_feeds`
--

INSERT INTO `im_feeds` (`id`, `user_id`, `description`, `image_url`, `status`, `post_created`) VALUES
(187, '92', 'Hello Don', 'http://localhost/sona/wp-content/uploads/2017/09/2017-07-31.png', '1', '1508837306'),
(188, '92', 'hello team', 'http://localhost/sona/wp-content/uploads/2017/10/1507802680.jpg', '1', '1508837323'),
(190, '92', 'hello team', 'http://localhost/sona/wp-content/uploads/2017/10/1507802680.jpg', '1', '1508912786'),
(191, '92', 'hello team', 'http://localhost/sona/wp-content/uploads/2017/10/1507802680.jpg', '1', '1508917225'),
(192, '63', 'Hello Don', 'http://localhost/sona/wp-content/uploads/2017/09/2017-07-31.png', '1', '1508917843'),
(193, '63', 'nice post', '', '1', '1508917867'),
(194, '92', 'hello team', 'http://localhost/sona/wp-content/uploads/2017/10/1507802680.jpg', '1', '1508924287'),
(195, '86', 'Xxdcvcx\nDfgdsgdfgf\nFgdfgdfg\nDsfdsf', '', '1', '1508925133'),
(196, '63', 'tsysgshxhzhzgzvzg\n bxhxbxnxbxbxbxh\nbxhxbxnxbxbxbxh n', '', '1', '1508925471'),
(197, '86', 'Zuzuzuzuuzuzuzuz\n', '', '1', '1508925671'),
(198, '86', 'Share an article', '', '1', '1508925885'),
(199, '86', 'Photo or idea', '', '1', '1508925950'),
(200, '86', 'Hehehehhehehehehehe', '', '1', '1508925995'),
(3, '21', 'new feed', '', '1', '1504858944'),
(312, '107', 'Shahs', 'http://localhost/sona/wp-content/uploads/2017/11/1509715208.jpg', '1', '1509715208'),
(313, '107', 'Hzhsjsjwjsjeejjd', '', '1', '1509716809'),
(314, '107', 'Shahs', 'http://localhost/sona/wp-content/uploads/2017/11/1509715208.jpg', '1', '1509716918'),
(305, '107', 'Dhgfygf', '', '1', '1509711766'),
(306, '63', 'Agagagahahhahaah', '', '1', '1509711971'),
(307, '63', 'Ababababbanababanananbs', '', '1', '1509711998'),
(308, '107', 'Hihjjihi', '', '1', '1509712207'),
(309, '104', 'test', '', '1', '1509713263'),
(310, '107', 'Hello. Teams skznebzj asks j', 'http://localhost/sona/wp-content/uploads/2017/11/1509714996.jpg', '1', '1509714996'),
(311, '104', 'tesusjsjsk sjs sjajajshz sjsjshdhe sjshshsjsja sjajajajaj sjzjsjdjf rjwakqppwieudyyryis sjss hzbssbjzaba ajabq', '', '1', '1509715160'),
(303, '107', 'Tester in the account number needs to be vheckxemzmzmamMMWJZNSNZNSJZJSJWKZ', 'http://localhost/sona/wp-content/uploads/2017/11/1509709595.jpg', '1', '1509709595'),
(304, '107', 'Hello every one how are cosmic zue ziw is sue sus wiz sus. He sh six szu sus sus she sjejs sus eusneis shzbsusbwisjs did exj Russian sisneieusnw susbsje due due shenjs end did did did exj did did did did dude did is did sisnsis due due due due due due due due suwbsjwnshe suwbzibzuw sue she sue due due due due due due due hzwnuxwb due dhsid due due di exiebsibeud wzuw sue due sh', '', '1', '1509710580'),
(293, '2', 'lorem ipsum', 'http://localhost/sona/wp-content/uploads/2017/10/1509436552.jpg', '1', '1509436552'),
(294, '63', 'nearby', 'http://localhost/sona/wp-content/uploads/2017/10/1509444260.jpg', '1', '1509444260'),
(295, '77', '1234 testing', '', '1', '1509453210'),
(296, '63', 'Right now test', '', '1', '1509539853'),
(297, '63', 'Image test', 'http://localhost/sona/wp-content/uploads/2017/11/1509539889.jpg', '1', '1509539889'),
(298, '97', 'test', '', '1', '1509601144'),
(288, '63', 'heyyy', 'http://localhost/sona/wp-content/uploads/2017/10/1509435807.jpg', '1', '1509435807'),
(289, '2', 'lorem ipsum', 'http://localhost/sona/wp-content/uploads/2017/10/1509435955.jpg', '1', '1509435955'),
(290, '2', 'lorem ipsum', 'http://localhost/sona/wp-content/uploads/2017/10/1509436036.jpg', '1', '1509436036'),
(291, '2', 'lorem ipsum', 'http://localhost/sona/wp-content/uploads/2017/10/1509436205.jpg', '1', '1509436205'),
(292, '2', 'lorem ipsum', 'http://localhost/sona/wp-content/uploads/2017/10/1509436460.jpg', '1', '1509436460'),
(283, '2', 'lorem ipsum', 'http://localhost/sona/wp-content/uploads/2017/10/1509434964.jpg', '1', '1509434964'),
(284, '30', 'lorem', 'http://localhost/sona/wp-content/uploads/2017/10/1509435033.jpg', '1', '1509435033'),
(285, '63', 'hello world', '', '1', '1509435140'),
(286, '63', 'hello world', 'http://localhost/sona/wp-content/uploads/2017/10/1509435229.jpg', '1', '1509435229'),
(287, '63', 'hello', 'http://localhost/sona/wp-content/uploads/2017/10/1509435365.jpg', '1', '1509435365'),
(279, '2', 'lorem ipsum', 'http://localhost/sona/wp-content/uploads/2017/10/1509434725.jpg', '1', '1509434725'),
(280, '2', 'lorem ipsum', 'http://localhost/sona/wp-content/uploads/2017/10/1509434734.jpg', '1', '1509434734'),
(281, '2', 'lorem ipsum', 'http://localhost/sona/wp-content/uploads/2017/10/1509434837.jpg', '1', '1509434837'),
(282, '2', 'lorem ipsum', 'http://localhost/sona/wp-content/uploads/2017/10/1509434864.jpg', '1', '1509434864'),
(272, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509189128.jpg', '1', '1509189128'),
(273, '63', 'test', 'http://localhost/sona/wp-content/uploads/2017/10/1509190616.jpg', '1', '1509190616'),
(274, '99', 'hello', '', '1', '1509191299'),
(275, '99', 'hello ji', 'http://localhost/sona/wp-content/uploads/2017/10/1509191392.jpg', '1', '1509191392'),
(276, '99', 'hello ji', '', '1', '1509191680'),
(277, '63', 'testing a post for good', '', '1', '1509361816'),
(278, '33', 'Dubai Skyline', 'http://localhost/sona/wp-content/uploads/2017/09/1505999994.jpg', '1', '1509399386'),
(266, '99', 'check this', '', '1', '1509186608'),
(267, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509187285.jpg', '1', '1509187285'),
(268, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509187406.jpg', '1', '1509187406'),
(269, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509188297.jpg', '1', '1509188297'),
(270, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509188634.jpg', '1', '1509188634'),
(271, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509188752.jpg', '1', '1509188752'),
(13, '21', 'testing', 'http://localhost/sona/wp-content/uploads/2017/09/1504870867.jpg', '1', '1504870867'),
(14, '21', 'test', 'http://localhost/sona/wp-content/uploads/2017/09/1504871014.jpg', '1', '1504871014'),
(15, '21', 'heyy', 'http://localhost/sona/wp-content/uploads/2017/09/1505200582.jpg', '1', '1505200582'),
(16, '21', '', 'http://localhost/sona/wp-content/uploads/2017/09/1505200659.jpg', '1', '1505200659'),
(17, '21', 'hey.. I am posting a new post.', 'http://localhost/sona/wp-content/uploads/2017/09/1505200718.jpg', '1', '1505200718'),
(18, '21', '', 'http://localhost/sona/wp-content/uploads/2017/09/1505201044.jpg', '1', '1505201044'),
(19, '21', 'message', 'http://localhost/sona/wp-content/uploads/2017/09/1505301091.jpg', '1', '1505301091'),
(20, '21', 'new post', 'http://localhost/sona/wp-content/uploads/2017/09/1505302133.jpg', '1', '1505302133'),
(21, '21', 'check', '', '1', '1505302286'),
(265, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509185890.jpg', '1', '1509185890'),
(259, '99', '500 rs', 'http://localhost/sona/wp-content/uploads/2017/10/1509183765.jpg', '1', '1509183790'),
(260, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509184808.jpg', '1', '1509184808'),
(261, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509184958.jpg', '1', '1509184958'),
(262, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509185413.jpg', '1', '1509185413'),
(263, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509185712.jpg', '1', '1509185712'),
(264, '25', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509185771.jpg', '1', '1509185771'),
(253, '95', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509105839.jpg', '1', '1509105839'),
(254, '99', 'testing a post for good', '', '1', '1509106262'),
(255, '99', 'tedt count', '', '1', '1509106329'),
(256, '95', '', 'http://localhost/sona/wp-content/uploads/2017/10/1509106407.jpg', '1', '1509106407'),
(257, '99', '500 rs', 'http://localhost/sona/wp-content/uploads/2017/10/1509183718.jpg', '1', '1509183718'),
(258, '99', '500 rs', 'http://localhost/sona/wp-content/uploads/2017/10/1509183765.jpg', '1', '1509183765'),
(252, '99', 'Hzhsjs', '', '1', '1509104813'),
(28, '21', 'neww post', '', '1', '1505556660'),
(251, '95', 'Crafting a compelling job description is essential to helping you attract the most qualified candidates for your job. With more than 16 million jobs listed on Indeed, a great job description can help your jobs stand out from the rest. Your job descriptions are where you start marketing your company and your job to your future hire.\n\nThe key to writing effective job descriptions is to find the perfect balance between providing enough detail so candidates understand the role and your company while keeping your description concise. We’ve found that job descriptions between 700 and 1,100 words see an average 24% increase in apply rate.\n\nUse the tips and sample job descriptions below to create a compelling job listing\n\nDo your research. Look at other job listings for similar roles for ideas.\n\nCreate a clear job title using terms that a qualified candidate would include in a search.\n\nUse direct, easy to understand language. Avoid jargon and acronyms.\n\nBe detailed about the qualifications and responsibilities of the job', '', '1', '1509104782'),
(34, '21', 'create', '', '1', '1505558625'),
(37, '21', 'post', '', '1', '1505560392'),
(39, '21', 'abhi tester', 'http://localhost/sona/wp-content/uploads/2017/09/1505560753.jpg', '1', '1505560753'),
(40, '21', 'Hello everyone, this is {burger king}', 'http://localhost/sona/wp-content/uploads/2017/09/1505561338.jpg', '1', '1505561338'),
(41, '21', 'dhan dhan satguru......tera hi asra', 'http://localhost/sona/wp-content/uploads/2017/09/1505561365.jpg', '1', '1505561365'),
(43, '21', 'hwshajwjjs wjzjwkskw wsjwjsjhwhde djebxjejjsw djebsjwjis wskjwkxjwjw xkwnsjwnsjw sjwnsjejsjw djenzkwkkxkw 2sjsjwjdjejjdjw sjsjdiXiwiwjw djheuwusiek skejdhejje', '', '1', '1505562825'),
(44, '28', 'testing iwkajajsjzjs sjsbzjw zjwbzkwn. wJw JbwJw Jwjsbzhjwkwa Jsbzjebzbjsnwnwbzjsbw sajwbanabznna sjsjzhjsbwHakoww owjjsvsizbsjsjjwKwsjwbzj sjsbsjsbkwj sjsjsjsjsjakw owjwJowkebridw djejkzjssjsjwijzjwjskw wjsjsnabakababzkjsnwba ejsjsbabw sjsbsjsjkz wjznwa NkawoakqlwieidjeosxjajBNn2jwjJjwksksbe wkw WIS wozbwoswkkw sjwjakwksorieuwowvejsjwis skwbdeisjwidhw eixw\n\n\n\n\n\n\n\nsbwjxjsjjw DJs wksjwjdowkw sjwbskwbjzjwkxkwk2 wjzjwsowjwzojw wkzabkaqnnw wzkwnsowjjxw skwbkzbwoskw zk2djkxj3ox skwndjwowk edkwbxoejdb sjsngdjebxkwb sksnwkxks', 'http://localhost/sona/wp-content/uploads/2017/09/1505711716.jpg', '1', '1505711716'),
(45, '28', 'chevk th4bpodt', 'http://localhost/sona/wp-content/uploads/2017/09/1505713115.jpg', '1', '1505713115'),
(46, '28', '', '', '1', '1505713163'),
(47, '28', '', '', '1', '1505713166'),
(48, '28', '', '', '1', '1505713175'),
(49, '28', 'hZhsbsjsjwkwwd idheixjeidj3 dj3nix\n\n\n\n\n\n\ndjxnixnekz\n   jenzme\nxjebiz2 \nrjdjsjdje dieijd uejdjsjs jdkeks\n\n\n\n\n\nhxdhdhhdd jdjdjs', 'http://localhost/sona/wp-content/uploads/2017/09/1505713783.jpg', '1', '1505713783'),
(50, '28', 'checki', '', '1', '1505713912'),
(51, '28', '', '', '1', '1505713956'),
(250, '95', 'Crafting a compelling job description is essential to helping you attract the most qualified candidates for your job. With more than 16 million jobs listed on Indeed, a great job description can help your jobs stand out from the rest. Your job descriptions are where you start marketing your company and your job to your future hire.\n\nThe key to writing effective job descriptions is to find the perfect balance between providing enough detail so candidates understand the role and your company while keeping your description concise. We’ve found that job descriptions between 700 and 1,100 words see an average 24% increase in apply rate.\n\nUse the tips and sample job descriptions below to create a compelling job listing\n\nDo your research. Look at other job listings for similar roles for ideas.\n\nCreate a clear job title using terms that a qualified candidate would include in a search.\n\nUse direct, easy to understand language. Avoid jargon and acronyms.\n\nBe detailed about the qualifications and responsibilities of the job', '', '1', '1509103918'),
(248, '100', 'Fghj\n', '', '1', '1509103669'),
(249, '100', 'Hzhsjs', '', '1', '1509103883'),
(56, '28', '', '', '1', '1505716516'),
(57, '28', '', '', '1', '1505716524'),
(66, '20', 'wttertertewrwtrtwretrett', 'http://localhost/sona/wp-content/uploads/2017/09/1505717683.jpg', '1', '1505717683'),
(67, '20', 'Test is not abl to check', 'http://localhost/sona/wp-content/uploads/2017/09/1505719856.jpg', '1', '1505719856'),
(68, '20', 'Test is not able to check', 'http://localhost/sona/wp-content/uploads/2017/09/1505719867.jpg', '1', '1505719867'),
(69, '28', 'how about a new post', '', '1', '1505720064'),
(70, '28', 'how about a new post', '', '1', '1505720068'),
(71, '28', 'Hwllo whatabout testing the results', '', '1', '1505720346'),
(246, '97', 'testing...\nyo!!!', '', '1', '1509101109'),
(247, '99', 'May the festival of lights encircle your life with joy and happiness. Success may always be at your doorsteps. And may Goddess Lakshmi enter your home and fill it with riches and abundance!\nWarm wishes on this auspicious \n\nMay the festival of lights encircle your life with joy and happiness. Success may always be at your doorsteps. And may Goddess Lakshmi enter your home and fill it with riches and abundance!\nWarm wishes on this auspicious festival of diwali', 'http://localhost/sona/wp-content/uploads/2017/10/1509102742.jpg', '1', '1509102742'),
(244, '63', 'Masoom', '', '1', '1509093274'),
(245, '63', 'hellotestet', '', '1', '1509093303'),
(78, '21', 'Check the same is posted or not', 'http://localhost/sona/wp-content/uploads/2017/09/1505722274.jpg', '1', '1505722274'),
(79, '21', 'testingg', '', '1', '1505722588'),
(80, '21', 'new post to check backpress', '', '1', '1505729927'),
(81, '21', 'post', '', '1', '1505729995'),
(85, '21', 'Okk let\\\'s do it', 'http://localhost/sona/wp-content/uploads/2017/09/1505988854.jpg', '1', '1505988854'),
(86, '21', 'Vbsjs she said sbse sb \\\'s sbse did bda did dB did DVD drive d bs d DVD  DVD do d DVD do d d d d d d be d DVD did DVD do DVD drive dbdvdvdbbdbdbdbdbdbdbd', 'http://localhost/sona/wp-content/uploads/2017/09/1505989714.jpg', '1', '1505989714'),
(87, '33', 'Dubai Skyline', 'http://localhost/sona/wp-content/uploads/2017/09/1505999994.jpg', '1', '1505999994'),
(161, '29', 'How are you doing, Great or not', '', '1', '1507788044'),
(89, '21', 'test', '', '1', '1506073970'),
(90, '21', 'testtt', '', '1', '1506074031'),
(171, '63', 'neww', '', '1', '1507791836'),
(186, '77', 'hello world', '', '1', '1508328894'),
(168, '63', 'chck backpressed', '', '1', '1507791531'),
(169, '63', 'test', '', '1', '1507791561'),
(170, '63', 'testing', '', '1', '1507791727'),
(164, '29', '', 'http://localhost/sona/wp-content/uploads/2017/10/1507790400.jpg', '1', '1507790400'),
(165, '29', 'checking refresh', '', '1', '1507790432'),
(185, '77', 'test 1', '', '1', '1508328283'),
(163, '29', 'hello how are you', 'http://localhost/sona/wp-content/uploads/2017/10/1507789258.jpg', '1', '1507789258'),
(95, '21', 'Hogohbzonlzl z l lz lx l lx lsk and', 'http://localhost/sona/wp-content/uploads/2017/09/1506087500.jpg', '1', '1506087500'),
(96, '21', 'UvgittyyyR', 'http://localhost/sona/wp-content/uploads/2017/09/1506144934.jpg', '1', '1506144934'),
(97, '21', 'Hgfjhtjjh', 'http://localhost/sona/wp-content/uploads/2017/09/1506145120.jpg', '1', '1506145120'),
(98, '21', 'Niubununinibniu', 'http://localhost/sona/wp-content/uploads/2017/09/1506145246.jpg', '1', '1506145246'),
(99, '21', 'Gugybububuhubhuuhijjiihnyyby', 'http://localhost/sona/wp-content/uploads/2017/09/1506146360.jpg', '1', '1506146360'),
(100, '21', 'Jjsjshshbsbsb e s s. S s. S s. S s s s. S. S s s. S s', 'http://localhost/sona/wp-content/uploads/2017/09/1506147497.jpg', '1', '1506147497'),
(101, '59', 'hello hi', '', '1', '1506154871'),
(102, '21', '', 'http://localhost/sona/wp-content/uploads/2017/09/1506166356.jpg', '1', '1506166356'),
(103, '21', 'Uwhebe s. D d. D\n D. D d\n\nD\nD\n', 'http://localhost/sona/wp-content/uploads/2017/09/1506169999.jpg', '1', '1506169999'),
(104, '21', 'Forge ty tutuut6', 'http://localhost/sona/wp-content/uploads/2017/09/1506314636.jpg', '1', '1506314636'),
(105, '21', 'H. b.        ha Ava h abs aha ab sbB B B b b Bazaba an a abs an abs abs ha abs bs abs a z z. Z z z z z z. A', 'http://localhost/sona/wp-content/uploads/2017/09/1506342956.jpg', '1', '1506342956'),
(106, '21', 'Plkkkkkkk', 'http://localhost/sona/wp-content/uploads/2017/09/1506348158.jpg', '1', '1506348158'),
(107, '21', 'On insnsns and dbbd dndnbs', 'http://localhost/sona/wp-content/uploads/2017/09/1506401975.jpg', '1', '1506401975'),
(108, '21', 'Dggvgcvgggghhgg', 'http://localhost/sona/wp-content/uploads/2017/09/1506402078.jpg', '1', '1506402078'),
(109, '21', 'Dggvgcvgggghhgg', 'http://localhost/sona/wp-content/uploads/2017/09/1506402087.jpg', '1', '1506402087'),
(110, '21', 'Ok will see', 'http://localhost/sona/wp-content/uploads/2017/09/1506402220.jpg', '1', '1506402220'),
(111, '21', 'Okkkkk', '', '1', '1506402223'),
(112, '21', 'Okkkkk', '', '1', '1506402230'),
(113, '21', 'Okkkkk', 'http://localhost/sona/wp-content/uploads/2017/09/1506402304.jpg', '1', '1506402304'),
(234, '63', 'heyy', '', '1', '1509091871'),
(235, '63', 'heyy', '', '1', '1509091981'),
(236, '63', 'helloooo', '', '1', '1509092078'),
(237, '63', 'omg', '', '1', '1509092109'),
(238, '63', 'ohh', '', '1', '1509092317'),
(239, '63', 'okk', '', '1', '1509092471'),
(240, '63', 'new create', '', '1', '1509092521'),
(241, '63', 'okzz', '', '1', '1509092550'),
(242, '63', 'ufff', '', '1', '1509092601'),
(243, '63', 'Hello everyone, this is {burger king}', 'http://localhost/sona/wp-content/uploads/2017/09/1505561338.jpg', '1', '1509092831'),
(223, '12', 'Share an article', '', '1', '1509020649'),
(225, '63', 'Masoom', '', '1', '1509082628'),
(226, '63', 'Haha', '', '1', '1509082668'),
(227, '12', 'hellotestet', '', '1', '1509085961'),
(228, '63', 'Masoom', '', '1', '1509089216'),
(229, '63', 'Rerersresrser', '', '1', '1509089289'),
(230, '86', 'hellotestet', '', '1', '1509089745'),
(231, '63', 'Masoom', '', '1', '1509089846'),
(232, '12', 'Hello everyone, this is {burger king}', 'http://localhost/sona/wp-content/uploads/2017/09/1505561338.jpg', '1', '1509089867'),
(233, '95', 'Hello everyone, this is {burger king}', 'http://localhost/sona/wp-content/uploads/2017/09/1505561338.jpg', '1', '1509091061'),
(217, '12', '', 'http://localhost/sona/wp-content/uploads/2017/10/1508994817.jpg', '1', '1509019544'),
(218, '12', 'Jxxjx\nUffucuc\nDejen\nEh\nEh\nEh\nE\nHe\nY\nEh\nEh\nD\nHdjdjdhdhdhs\nHay\nS\nHe\nHshsh\nEh\nS\nHaga\nH\nAh\nS\nH\nEh\nEh\nS\nHa\nH\nAh\nS\nHa\nHa\n\nS', 'http://localhost/sona/wp-content/uploads/2017/10/1508930594.jpg', '1', '1509019557'),
(219, '12', 'Share an article', '', '1', '1509019608'),
(220, '12', 'Testcases intializer', '', '1', '1509019636'),
(221, '12', 'Masoom', '', '1', '1509020144'),
(224, '12', 'Masoom', '', '1', '1509020920'),
(212, '86', 'Jxxjx\nUffucuc\nDejen\nEh\nEh\nEh\nE\nHe\nY\nEh\nEh\nD\nHdjdjdhdhdhs\nHay\nS\nHe\nHshsh\nEh\nS\nHaga\nH\nAh\nS\nH\nEh\nEh\nS\nHa\nH\nAh\nS\nHa\nHa\n\nS', 'http://localhost/sona/wp-content/uploads/2017/10/1508930594.jpg', '1', '1508930594'),
(213, '63', '', 'http://localhost/sona/wp-content/uploads/2017/10/1508994584.jpg', '1', '1508994584'),
(214, '63', '', 'http://localhost/sona/wp-content/uploads/2017/10/1508994750.jpg', '1', '1508994750'),
(215, '63', '', 'http://localhost/sona/wp-content/uploads/2017/10/1508994817.jpg', '1', '1508994817'),
(216, '63', '', 'http://localhost/sona/wp-content/uploads/2017/10/1508994914.jpg', '1', '1508994914'),
(205, '86', 'arc test', '', '1', '1508927127'),
(206, '86', 'arc test', 'http://localhost/sona/wp-content/uploads/2017/10/1508927163.jpg', '1', '1508927163'),
(207, '28', 'arc test', '', '1', '1508927190'),
(208, '86', 'qqqqqqqqqqqqqqqqqqqqqqqq', 'http://localhost/sona/wp-content/uploads/2017/10/1508927467.jpg', '1', '1508927467'),
(209, '86', 'qqqqqqqqqqqqqqqqqqqqqqqq', 'http://localhost/sona/wp-content/uploads/2017/10/1508927476.jpg', '1', '1508927476'),
(210, '86', 'Jdjdjfjfjfjfkckfkfkfkfkg', '', '1', '1508928113'),
(211, '86', 'Masoom', '', '1', '1508928566'),
(182, '89', 'hello', '', '1', '1507803279'),
(183, '29', 'nice post', '', '1', '1507803318'),
(201, '28', 'Sdsadsasdd', '', '1', '1508926253'),
(202, '86', 'jxjxjxjcnxhdnxvzhxbxbzb', '', '1', '1508926383'),
(203, '28', 'Dsfdsf\nDfgdfg\nDf\nDf\nGaff\nGf\nDf', 'http://localhost/sona/wp-content/uploads/2017/10/1508926589.jpg', '1', '1508926589'),
(204, '86', 'Asasasasasasasasasasasasasasasasas', '', '1', '1508927013'),
(120, '21', 'Jjhjyhjjjj', 'http://localhost/sona/wp-content/uploads/2017/09/1506405094.jpg', '1', '1506405094'),
(121, '21', 'Will take care of it', 'http://localhost/sona/wp-content/uploads/2017/09/1506405130.jpg', '1', '1506405130'),
(122, '21', 'Okkkkk', '', '1', '1506406739'),
(123, '21', '', 'http://localhost/sona/wp-content/uploads/2017/09/1506406760.jpg', '1', '1506406760'),
(124, '21', '', 'http://localhost/sona/wp-content/uploads/2017/09/1506411242.jpg', '1', '1506411242'),
(125, '21', '', 'http://localhost/sona/wp-content/uploads/2017/09/1506411481.jpg', '1', '1506411481'),
(126, '21', '', 'http://localhost/sona/wp-content/uploads/2017/09/1506422088.jpg', '1', '1506422088'),
(127, '21', 'Okkkkk will see that hhmkckcjcivk.  F l fall cio. Do. Do f k do foggvgh I. If. If ovggo g o goo of g php. Go gg', 'http://localhost/sona/wp-content/uploads/2017/09/1506661687.jpg', '1', '1506661687'),
(128, '63', 'create feed', '', '1', '1506669795'),
(129, '63', 'live feed', '', '1', '1506671490'),
(130, '63', 'test back pressed', '', '1', '1506673860'),
(131, '63', 'testingggg', '', '1', '1506674033'),
(132, '63', 'test', '', '1', '1506685139'),
(181, '29', 'Khalnayak......ha ha ha....... Main hun khalnayak\n\nNayak nahi...... khalnayak hun mai........julmi bada dukhdayak hun mai.......\n\nYe pyar kya mujko kya khabar.........\n\nBass yaar nafrat ke layak hun main..........', 'http://localhost/sona/wp-content/uploads/2017/10/1507803206.jpg', '1', '1507803206'),
(134, '74', 'We need to create a new post and want to test the same as location wise in the area, please check the post of the month chjfhccj chhcchch chhcchch bvhchchch b bvhchchch b bfhghh', 'http://localhost/sona/wp-content/uploads/2017/09/1506690073.jpg', '1', '1506690073'),
(135, '73', 'test I\\\'d the maim pArt', '', '1', '1506690238'),
(136, '74', 'hello team this is to check the post of the app for testing purpose only', 'http://localhost/sona/wp-content/uploads/2017/09/1506690374.jpg', '1', '1506690374'),
(137, '73', 'test', '', '1', '1506690940'),
(138, '74', 'Hello team', 'http://localhost/sona/wp-content/uploads/2017/09/1506691931.jpg', '1', '1506691931'),
(139, '21', 'Test', 'http://localhost/sona/wp-content/uploads/2017/09/1506692918.jpg', '1', '1506692918'),
(158, '89', 'spam', 'http://localhost/sona/wp-content/uploads/2017/10/1507641500.jpg', '1', '1507641500'),
(141, '25', 'team', '', '1', '1507008559'),
(142, '25', 'testing testing the waters of a few months back I have a great weekend and we can get a good day please see the attachment for your time in total of about this is a great weekend too much to me and I will be a good idea to get the best regards David Da hand is a good day to day life is good for me to do it for the first one is for the use of this email and delete this message was automatically by Microsoft office outlook while testing and commissioning of this communication is not a big deal but I don\\\'t know if there is a great weekend David and I will have the right to be a problem with the confirmation from the following user name and the other hand if the reader of the app store Google play store and have a nice day to day life of the day and I am going to have a great weekend and I am going to be able and willing and able to get ready and waiting on my name of a new discussion on my own business we appreciate it very much for your time and I will be a good day to day life is a great weekend too many bad login attempts or invalid username username admin IP address wan to the other David David I am going through the end of the app store also on day the other day I was just wondering what the problem is that I have been sent from my android I have been sent from my name is a great weekend too many bad things about you guys are you doing well and I will have to go to last post of the day of school and the other', '', '1', '1507011654'),
(180, '29', 'team 2 done', 'http://localhost/sona/wp-content/uploads/2017/10/1507802804.jpg', '1', '1507802804'),
(144, '83', 'neeww', 'http://localhost/sona/wp-content/uploads/2017/10/1507192043.jpg', '1', '1507192043'),
(179, '89', 'hello team', 'http://localhost/sona/wp-content/uploads/2017/10/1507802680.jpg', '1', '1507802680'),
(174, '63', 'plzz chlja', '', '1', '1507792295'),
(178, '29', 'new feed', '', '1', '1507801981'),
(189, '63', 'new post', '', '1', '1508908123'),
(184, '1', 'Hello Don', 'http://localhost/sona/wp-content/uploads/2017/09/2017-07-31.png', '1', '1507811998'),
(155, '87', '', 'http://localhost/sona/wp-content/uploads/2017/10/1507614163.jpg', '1', '1507614163'),
(151, '85', 'trsrunf', '', '1', '1507277529'),
(152, '85', 'testing testing and', '', '1', '1507286799'),
(153, '63', '', 'http://localhost/sona/wp-content/uploads/2017/10/1507294053.jpg', '1', '1507294053'),
(156, '84', '', 'http://localhost/sona/wp-content/uploads/2017/10/1507614273.jpg', '1', '1507614273'),
(157, '84', 'team', '', '1', '1507616745'),
(159, '89', 'test', 'http://localhost/sona/wp-content/uploads/2017/10/1507641609.jpg', '1', '1507641609'),
(162, '29', 'Hello how are you doing', 'http://localhost/sona/wp-content/uploads/2017/10/1507789196.jpg', '1', '1507789196');

-- --------------------------------------------------------

--
-- Table structure for table `im_feeds_like`
--

CREATE TABLE `im_feeds_like` (
  `id` bigint(20) NOT NULL,
  `feed_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_feeds_like`
--

INSERT INTO `im_feeds_like` (`id`, `feed_id`, `user_id`, `created_at`) VALUES
(22, '28', '1', '1505558592'),
(5, '1', '21', '1505212262'),
(19, '12', '21', '1505221424'),
(7, '4', '21', '1505219444'),
(20, '11', '21', '1505221430'),
(21, '5', '1', '1505537556'),
(26, '39', '21', '1505561076'),
(27, '37', '21', '1505561080'),
(28, '41', '21', '1505561666'),
(73, '39', '1', '1505721716'),
(70, '75', '1', '1505721504'),
(34, '41', '28', '1505710809'),
(33, '43', '21', '1505562927'),
(35, '40', '28', '1505713876'),
(38, '34', '1', '1505718445'),
(81, '76', '21', '1505988716'),
(42, '2', '1', '1505718708'),
(56, '13', '1', '1505719439'),
(80, '80', '21', '1505730014'),
(78, '14', '1', '1505723101'),
(57, '3', '1', '1505719441'),
(71, '40', '1', '1505721670'),
(76, '15', '1', '1505721797'),
(82, '4', '1', '1505989769'),
(83, '77', '21', '1505990019'),
(84, '89', '1', '1506077269'),
(86, '85', '1', '1506077300'),
(87, '83', '1', '1506077324'),
(88, '93', '1', '1506079542'),
(89, '92', '1', '1506081951'),
(93, '101', '21', '1506315919'),
(132, '104', '21', '1506334177'),
(104, '84', '21', '1506319179'),
(134, '106', '21', '1506348342'),
(130, '102', '21', '1506324309'),
(140, '124', '21', '1506687932'),
(137, '130', '63', '1506684793'),
(138, '128', '63', '1506684811'),
(139, '124', '63', '1506685047'),
(142, '136', '73', '1506690879'),
(144, '136', '74', '1506691505'),
(145, '137', '74', '1506691823'),
(146, '138', '74', '1506692198'),
(147, '139', '21', '1506692942'),
(149, '138', '21', '1506692987'),
(152, '141', '25', '1507008648'),
(153, '142', '25', '1507011671'),
(154, '141', '21', '1507012556'),
(155, '126', '25', '1507016412'),
(156, '138', '63', '1507186648'),
(159, '150', '85', '1507284797'),
(170, '157', '84', '1507616789'),
(171, '157', '1', '1507616822'),
(173, '157', '88', '1507635554'),
(186, '161', '29', '1507789158'),
(179, '159', '89', '1507702793'),
(191, '162', '29', '1507790885'),
(192, '165', '29', '1507790952'),
(193, '164', '29', '1507790993'),
(194, '163', '29', '1507790996'),
(196, '181', '29', '1507803262'),
(197, '181', '63', '1507805109'),
(198, '184', '1', '1507812059'),
(199, '180', '1', '1507879793'),
(200, '179', '1', '1507879800'),
(202, '137', '86', '1508226955'),
(206, '44', '1', '1508832838'),
(208, '210', '86', '1508930618'),
(209, '215', '12', '1509019321'),
(210, '209', '12', '1509019586'),
(211, '208', '12', '1509019589'),
(212, '206', '12', '1509019591'),
(213, '204', '12', '1509019594'),
(214, '202', '12', '1509019596'),
(215, '199', '12', '1509019599'),
(216, '197', '12', '1509019602'),
(217, '227', '63', '1509086626'),
(219, '250', '95', '1509104433'),
(220, '250', '99', '1509104441'),
(221, '252', '95', '1509104824'),
(223, '254', '30', '1509172079'),
(224, '259', '63', '1509184711'),
(225, '258', '63', '1509184721'),
(226, '246', '99', '1509185211'),
(227, '265', '97', '1509187104'),
(228, '275', '99', '1509191766'),
(229, '271', '12', '1509340047'),
(230, '274', '63', '1509348964'),
(231, '270', '63', '1509349304'),
(232, '273', '63', '1509367161'),
(234, '87', '33', '1509399448'),
(235, '294', '63', '1509511861'),
(236, '292', '63', '1509600438'),
(237, '289', '63', '1509606841'),
(238, '298', '63', '1509617227'),
(239, '299', '106', '1509687413'),
(240, '298', '106', '1509687416'),
(241, '296', '106', '1509687419'),
(242, '298', '107', '1509706657'),
(243, '304', '107', '1509713022'),
(244, '298', '104', '1509713249'),
(245, '309', '104', '1509713287'),
(246, '313', '107', '1509716816');

-- --------------------------------------------------------

--
-- Table structure for table `im_feeds_spam`
--

CREATE TABLE `im_feeds_spam` (
  `id` bigint(20) NOT NULL,
  `feed_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_feeds_spam`
--

INSERT INTO `im_feeds_spam` (`id`, `feed_id`, `user_id`, `created_at`) VALUES
(1, '12', '19', '1505556344'),
(7, '21', '1', '1505557134'),
(6, '11', '19', '1505556623'),
(8, '19', '1', '1505557295'),
(9, '18', '19', '1505557936'),
(10, '18', '1', '1505558022'),
(81, '307', '107', '1509713212'),
(12, '28', '21', '1505558680'),
(13, '18', '21', '1505558695'),
(14, '16', '1', '1505558721'),
(15, '41', '1', '1505562682'),
(83, '305', '107', '1509713222'),
(17, '19', '21', '1505660934'),
(18, '20', '21', '1505660951'),
(82, '306', '107', '1509713218'),
(20, '41', '28', '1505713089'),
(21, '37', '1', '1505713477'),
(22, '28', '1', '1505713524'),
(23, '40', '28', '1505713950'),
(24, '20', '1', '1505728215'),
(25, '13', '1', '1505728233'),
(26, '3', '1', '1505728245'),
(27, '13', '21', '1505728788'),
(28, '16', '21', '1505728810'),
(29, '15', '21', '1505729520'),
(30, '76', '1', '1505989663'),
(31, '64', '1', '1505989675'),
(32, '90', '1', '1506077309'),
(33, '103', '21', '1506338980'),
(34, '102', '21', '1506340132'),
(35, '101', '21', '1506340161'),
(36, '100', '21', '1506340336'),
(37, '99', '21', '1506340367'),
(38, '106', '21', '1506348381'),
(39, '118', '21', '1506418552'),
(40, '117', '21', '1506418566'),
(41, '119', '21', '1506418606'),
(42, '125', '21', '1506418691'),
(43, '116', '21', '1506418705'),
(44, '114', '21', '1506418723'),
(45, '127', '21', '1506670145'),
(46, '128', '1', '1506692423'),
(47, '130', '1', '1506692438'),
(48, '134', '1', '1506694662'),
(49, '132', '1', '1506694681'),
(50, '129', '1', '1506694697'),
(51, '139', '25', '1507008338'),
(52, '142', '25', '1507011718'),
(53, '141', '25', '1507011723'),
(54, '149', '25', '1507276004'),
(55, '150', '85', '1507283886'),
(56, '151', '85', '1507283890'),
(57, '149', '85', '1507283897'),
(58, '152', '85', '1507289411'),
(59, '148', '85', '1507289552'),
(80, '297', '63', '1509540189'),
(61, '156', '89', '1507640210'),
(62, '155', '89', '1507641450'),
(63, '182', '29', '1507803509'),
(64, '183', '29', '1507803512'),
(65, '216', '12', '1509019529'),
(66, '227', '63', '1509088424'),
(67, '225', '63', '1509088435'),
(68, '227', '99', '1509109437'),
(69, '126', '99', '1509109447'),
(70, '104', '99', '1509109455'),
(71, '255', '99', '1509178415'),
(72, '245', '99', '1509178435'),
(73, '244', '99', '1509178443'),
(74, '247', '99', '1509179101'),
(75, '246', '99', '1509185216'),
(76, '244', '63', '1509187764'),
(77, '267', '63', '1509187806'),
(78, '271', '63', '1509189525'),
(79, '272', '63', '1509189674'),
(84, '298', '107', '1509713244'),
(85, '310', '107', '1509715080'),
(86, '309', '104', '1509715177'),
(87, '308', '107', '1509716900');

-- --------------------------------------------------------

--
-- Table structure for table `im_feed_comment`
--

CREATE TABLE `im_feed_comment` (
  `id` bigint(20) NOT NULL,
  `feed_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `user_comment` text,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_feed_comment`
--

INSERT INTO `im_feed_comment` (`id`, `feed_id`, `user_id`, `user_comment`, `created_at`) VALUES
(1, '2', '1', 'This is a nice article', '1504862979'),
(2, '2', '19', 'This is a nice article', '1504863090'),
(3, '1', '21', 'testing message', '1504873027'),
(4, '1', '21', 'I am sending this message just to check its working or not.', '1504874761'),
(5, '1', '21', 'chck time', '1505116712'),
(6, '1', '21', 'post message', '1505198327'),
(7, '41', '21', 'hello how are you comments', '1505561677'),
(8, '41', '21', 'checking all the comments', '1505561690'),
(9, '43', '1', 'hello team', '1505562878'),
(10, '43', '1', 'about team check', '1505562892'),
(11, '43', '21', 'jflyhfkfg itfukgif jfhkg', '1505562906'),
(94, '214', '63', 'what is this??', '1509011645'),
(14, '41', '28', 'not good at all, You need to postp some more good comments for this', '1505712111'),
(15, '41', '28', 'a', '1505712121'),
(97, '227', '63', 'hello test', '1509086753'),
(98, '226', '63', 'hello how are you doing', '1509086833'),
(99, '226', '63', 'good???', '1509086868'),
(17, '39', '28', 'fqkrgqjrjr uwirywjrtqjr i394u2o5y2o55 eiieywlrwhor wuieqyiryw ywkrhqrkueorfkjd hejewhkrwhrkekrk hqejwhjdwhrkjerkje ejejrkejkrhektueltagjfshlg sjkdhsdkjsfkjddk nsfmhakfhsjdah', '1505714093'),
(18, '39', '28', 'xhjjdjddjdhdjdbdhdjdjffhdhjdjdjdjdjjdjdjdjdjdjdjjdjdjdjdjdjdjd', '1505714251'),
(19, '39', '28', 'xndndndndndndnfndnnfnfnjdjffjfjjfjfjjffjfjjfjdjfjfnnfnffnfjjfjjfjfjfjfjfjdjjdjfjjdjfjfjjffjfjfjjfjfjjfjfjfjfjjfjjfjffjfjfjfjfjjfjfjjffjfjjfjjffjfjfjfjjfjfjjfjfjjfjdjfjfjjfjjfjfjff', '1505714286'),
(20, '43', '1', 'jxavbsxjvsjbxsjbxsjsbxjsxbjjsbskbsksxbjcdbdjsbcjsccsjbsxjvjvjvjvjvj vjgjgjvjvjvjvjvjvbjchcc', '1505717594'),
(21, '20', '1', 'hey', '1505718531'),
(22, '40', '1', 'hey', '1505722007'),
(23, '76', '21', 'okkk', '1505988736'),
(24, '100', '21', 'okk', '1506153178'),
(25, '104', '21', 'okkk', '1506324451'),
(26, '104', '21', 'bhabhi \'s \'s s \'s  xxxb z szv sinks \'s \'s s \'s d  d d dB d d d dB d dB d d d d d  d d d d d  d d d be d d d d  d d d be d d d d  f', '1506325124'),
(27, '104', '21', 'Gobs bs sis DVD  d d d  d d dB d d dB d d DVD DVD DVD bs DVD do DVD did be  b xbx  be  b xbxjx Xbox xbxjx xb xbx xbx xb xbxjx xbx xbx xb DVD DVD DVD be d DVD DVD do d DVD DVD do DVD DVD DVD be d d d dB d dB d d dB d d d  d d d d  d d d', '1506325174'),
(28, '104', '21', 'jfokfkvkvvlblbllb lblbl', '1506328456'),
(29, '104', '21', 'olkkkkkk', '1506333274'),
(30, '104', '21', 'alrih', '1506333680'),
(31, '104', '21', 'okkk', '1506336921'),
(32, '106', '21', 'pkkk', '1506348245'),
(33, '106', '21', 'okkkk', '1506348349'),
(34, '113', '21', 'okkkk will see', '1506402494'),
(35, '115', '21', 'okkkk', '1506402656'),
(36, '116', '21', 'ok will see.', '1506402847'),
(37, '118', '21', 'okkkkkk', '1506403013'),
(38, '119', '21', 'okkkk', '1506403146'),
(39, '119', '21', 'okkkk', '1506403269'),
(40, '119', '21', 'good approach', '1506403844'),
(41, '119', '21', 'haha', '1506404345'),
(42, '126', '21', 'okk', '1506499680'),
(43, '126', '21', 'ookk', '1506499709'),
(44, '126', '21', 'ookk', '1506499715'),
(45, '126', '21', 'hey', '1506510023'),
(46, '126', '21', 'dons', '1506510145'),
(47, '126', '21', 'how', '1506510380'),
(48, '126', '21', 'uuiuuuuuuuy', '1506510835'),
(49, '124', '21', 'polo', '1506510944'),
(50, '124', '21', 'polo', '1506511126'),
(51, '123', '21', 'okkkkkkk', '1506511482'),
(52, '122', '21', 'the h', '1506511791'),
(53, '122', '21', 'okkk', '1506511797'),
(54, '126', '21', 'test', '1506605959'),
(55, '124', '63', 'new post', '1506685090'),
(56, '136', '74', 'hello', '1506691484'),
(57, '137', '74', 'hello', '1506691837'),
(58, '137', '74', 'hello team', '1506691844'),
(59, '139', '21', 'test', '1506692947'),
(60, '139', '1', 'test', '1506692966'),
(61, '139', '1', 'cooment', '1506695153'),
(62, '140', '75', 'test', '1506719714'),
(63, '141', '25', 'testing testing the waters of a few months back I have a great weekend and we can get a good day please see the attachment for your time in total of about this and the other side of things to say I am going to have a nice day to day to day life is not a good time inweb been gf GBC see the the the following his name is the same as the original image of bundles of the day of I have been sent to the inbox by Gmail logo you have any questions please feel free to contact me at the end of the app store as long as you can see the attached file for the first time I was wondering if you have any questions please feel free to contact me at the end of the app store as long as you can see the attached file of your email find the right direction and then delete the original transmission is sent in my name of a sudden and the best of my resume to the next couple weeks to go back and I have a great weekend and we can get a good day please see the attachment for your time in total of about this is a great weekend and I will I be looking at a later date if the reader is not the intended recipient or the taking the time to do it in the area and the other side I am not sure how it works fine for you have any other information in this email in error and delete this email and delete this is the same time I have been a long time ago and I have', '1507008821'),
(64, '141', '25', 'testing testing the waters of a few months back I have a great weekend too many bad login and password secret of success with your phone is a good day to you and I will have to do with it are intended solely those who are willing and able and then to the inbox by', '1507008902'),
(65, '141', '25', 'testing testing the Waters medically necessary to have a good time to get the same as a good day to you soon and have been sent to you of a few months back I have a', '1507008921'),
(66, '142', '25', 'tea break', '1507011706'),
(67, '148', '25', 'testing this email and any files attached is the only one who is a good time to get back and forth to work on the other day and time of the app is', '1507274568'),
(68, '150', '85', 'testewere', '1507284806'),
(69, '156', '87', 'hey', '1507614719'),
(70, '156', '87', 'test', '1507614791'),
(71, '139', '87', 'new post', '1507619535'),
(72, '159', '89', 'hey', '1507726124'),
(73, '159', '89', 'yo', '1507726183'),
(74, '160', '89', 'hey', '1507726326'),
(75, '160', '89', 'yoo', '1507726434'),
(76, '159', '89', 'yiee', '1507726471'),
(77, '159', '89', 'yes', '1507726688'),
(78, '158', '89', 'yiee', '1507727089'),
(79, '158', '89', 'ok', '1507727229'),
(80, '159', '89', 'ok', '1507727295'),
(81, '158', '89', 'okzx', '1507727375'),
(82, '158', '89', 'oohh', '1507727446'),
(83, '153', '89', 'hello', '1507727552'),
(84, '144', '89', 'ok', '1507727584'),
(85, '144', '89', 'hey', '1507727612'),
(86, '161', '29', 'hello moto', '1507789169'),
(87, '162', '29', 'Hello team how are u', '1507790902'),
(88, '165', '29', 'Tester', '1507790962'),
(89, '164', '29', 'hello team', '1507790972'),
(90, '175', '63', 'test', '1507792925'),
(93, '181', '63', 'so funny...', '1508916986'),
(92, '181', '29', 'Bazigar kehte hain ise lol nahi....', '1507805106'),
(100, '227', '63', 'how are you doing', '1509086976'),
(101, '227', '12', 'good you tell', '1509087122'),
(102, '227', '12', 'okkkk d3ar', '1509087378'),
(103, '221', '63', 'okkkk done', '1509089362'),
(104, '227', '12', 'f7ggkggigi', '1509089616'),
(105, '227', '12', 'uffuugguug', '1509089624'),
(106, '227', '12', 'hcfyugugcydt', '1509089635'),
(107, '227', '12', 'iffufigigiyig', '1509089641'),
(108, '227', '12', 'igiggigugu', '1509089648'),
(109, '227', '12', 'ufghojpfut 7ffufuhpugt7 iffiifid', '1509089662'),
(110, '227', '12', 'uc0xh0chpdududupu yxpdududuxuxy0 y0xdy0dyssozydydu0dud7rr7', '1509089674'),
(111, '250', '99', 'helll this is a nice post of yours', '1509104474'),
(112, '250', '99', 'good one', '1509104486'),
(113, '250', '95', 'xhjvjvvj', '1509104651'),
(114, '250', '95', 'igjggjvj', '1509104657'),
(115, '254', '30', 'ohh', '1509172069'),
(116, '252', '97', 'wot???', '1509172662'),
(137, '255', '97', 'ufff', '1509176822'),
(132, '254', '97', 'ohh', '1509175966'),
(134, '255', '97', 'ohh', '1509176779'),
(139, '258', '63', 'comment part done', '1509184738'),
(138, '255', '97', 'biee', '1509176827'),
(140, '259', '63', 'ohh', '1509184800'),
(141, '87', '33', 'cool pic', '1509399342'),
(142, '87', '33', 'where is that?', '1509399413'),
(143, '273', '63', 'hey', '1509456293'),
(144, '294', '63', 'hey', '1509511868'),
(145, '294', '63', 'CBC', '1509522122'),
(147, '298', '104', 'fbdbwfnwtywk', '1509713255'),
(148, '313', '107', 'Hello nsnsnajzje sjsvshshsgeehqoquqtuqurr sniwdjekejdb wdjke\nD she sks endowment\nDoes emevd', '1509716832'),
(149, '313', '107', 'Hashjwjz ajsjsjwhsjw susbsidjs ehzbejsbwjsjsjwsjz ejsjsjwbsjsjsjsjs susbsjsns shsbshsbwisbe shsbsjs disks sjwjavsjs shave s\n', '1509716857');

-- --------------------------------------------------------

--
-- Table structure for table `im_group_chat`
--

CREATE TABLE `im_group_chat` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `dialogue_id` varchar(255) DEFAULT NULL,
  `image` text,
  `name` varchar(255) DEFAULT NULL,
  `lastupdated` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_group_chat`
--

INSERT INTO `im_group_chat` (`id`, `user_id`, `dialogue_id`, `image`, `name`, `lastupdated`) VALUES
(1, '1', '25671526112', 'http://localhost/sona/wp-content/uploads/2017/10/11507101289.jpg', 'Testing Group', '1507101289'),
(2, '63', '59c8ed8ba28f9a65bbc48af8', 'http://localhost/sona/wp-content/uploads/2017/10/631507116385.jpg', 'Group Chat', '1507116385'),
(3, '63', '59c4c4cea28f9a2ecac48b7a', 'http://localhost/sona/wp-content/uploads/2017/10/631507116406.jpg', 'Friend Chat', '1507116406');

-- --------------------------------------------------------

--
-- Table structure for table `im_interests`
--

CREATE TABLE `im_interests` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_interests`
--

INSERT INTO `im_interests` (`id`, `user_id`, `name`) VALUES
(10, '20', 'yy'),
(3, '1', 'SONGS'),
(13, '22', 'news'),
(14, '23', 'add123'),
(12, '11', 'new12'),
(15, '24', 'pool party'),
(16, '24', 'traveling'),
(17, '24', 'fooding'),
(18, '25', 'hccycy'),
(19, '13', 'Devices'),
(20, '13', 'gffh'),
(21, '28', 'hello I am a testing engineer at the imarkinfotech Pvt limited at dlf building it park Chandigarh'),
(22, '28', 'ghbjkhijjjjj jbjjkmnfybj jgjjn'),
(23, '28', 'test is the one needed to do'),
(24, '28', 'team tree'),
(25, '28', 'how are you'),
(26, '28', 'how are you'),
(27, '23', 'two\ntwo'),
(28, '23', 'three\nthrew'),
(29, '23', 'four'),
(30, '21', 'bHzjshdjd'),
(32, '21', 'hshwhe'),
(35, '33', 'Travelling'),
(36, '33', 'Football'),
(37, '33', 'Reading'),
(38, '59', 'I am a great person'),
(39, '78', 'Fitness'),
(40, '78', 'Food'),
(41, '89', 'cycling'),
(42, '89', 'watching'),
(43, '29', 'team'),
(44, '99', 'abcdef'),
(45, '63', 'sdfvb'),
(47, '107', 'viicjcmmckccjjc');

-- --------------------------------------------------------

--
-- Table structure for table `im_language`
--

CREATE TABLE `im_language` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_language`
--

INSERT INTO `im_language` (`id`, `user_id`, `name`) VALUES
(2, '1', 'Punjabi'),
(3, '1', 'Hindi'),
(9, '22', 'hindi'),
(6, '11', 'punjabi'),
(10, '23', 'hindi'),
(8, '11', 'hindi'),
(11, '24', 'Hindi, English and punjabi'),
(12, '24', 'danish'),
(13, '24', 'Latino'),
(14, '25', 'fycgxgcg'),
(15, '28', 'hindi'),
(16, '28', 'english'),
(17, '28', 'punjabi'),
(18, '28', 'gujrati'),
(19, '28', 'marate'),
(20, '28', 'danish'),
(21, '28', 'drone'),
(28, '33', 'French'),
(27, '33', 'English'),
(32, '59', 'Hindi'),
(34, '78', 'Greek'),
(35, '25', 'english'),
(36, '25', 'english'),
(37, '89', 'hindi'),
(38, '89', 'tester'),
(39, '89', 'fdyrgf'),
(40, '89', 'test'),
(41, '89', 'new'),
(42, '29', 'checkl'),
(43, '86', 'English'),
(44, '99', 'imark'),
(45, '12', 'hindi'),
(46, '63', 'cvb'),
(48, '107', 'jjcjcjchx'),
(49, '107', 'cjckjckcfjfj');

-- --------------------------------------------------------

--
-- Table structure for table `im_links`
--

CREATE TABLE `im_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `im_notifications`
--

CREATE TABLE `im_notifications` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `recoId` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_notifications`
--

INSERT INTO `im_notifications` (`id`, `user_id`, `message`, `time`, `sender_id`, `type`, `recoId`) VALUES
(110, '44', 'Onaseye has sent you friend request', '1508344640', '33', '2', '33'),
(109, '45', 'Farhan has sent you friend request', '1508328464', '77', '2', '77'),
(108, '55', 'metal has sent you friend request', '1508165354', '90', '2', '90'),
(107, '29', 'test has sent you friend request', '1508162109', '86', '2', '86'),
(106, '42', 'test has sent you friend request', '1507968983', '86', '2', '86'),
(105, '44', 'test has sent you friend request', '1507968510', '86', '2', '86'),
(104, '18', 'Deepak has sent you friend request', '1507967955', '19', '2', '19'),
(103, '21', 'sakshi has sent you friend request', '1507891227', '63', '2', '63'),
(102, '89', 'sakshi has sent you friend request', '1507891055', '63', '2', '63'),
(101, '1', 'You and now friends with Sahil', '1507880693', '89', '2', '89'),
(100, '89', 'You and now friends with abhinav grover', '1507880693', '1', '2', '1'),
(99, '89', 'abhinav grover has sent you friend request', '1507880601', '1', '2', '1'),
(98, '60', 'Sahil has sent you friend request', '1507807873', '89', '2', '89'),
(120, '29', 'Dave Batista has commented on your Discussion', '1509022220', '12', '1', '102'),
(121, '12', ' has commented on your Feed', '1509086753', '63', '0', '227'),
(96, '29', 'You and now friends with sakshi', '1507806820', '63', '2', '63'),
(95, '29', 'sakshi has sent you friend request', '1507806743', '63', '2', '63'),
(94, '29', 'sakshi has commented on your Feed', '1507805056', '63', '0', '181'),
(93, '39', 'Abhishek Sansarwal has sent you friend request', '1507801596', '29', '2', '29'),
(92, '18', 'Abhishek Sansarwal has sent you friend request', '1507801588', '29', '2', '29'),
(91, '59', 'Sahil has sent you friend request', '1507796553', '89', '2', '89'),
(90, '33', 'Sahil has sent you friend request', '1507795143', '89', '2', '89'),
(89, '89', 'You and now friends with Abhishek Sansarwal', '1507792733', '29', '2', '29'),
(88, '29', 'You and now friends with Sahil', '1507792733', '89', '2', '89'),
(87, '29', 'Sahil has sent you friend request', '1507791625', '89', '2', '89'),
(86, '83', 'Sahil has commented on your Feed', '1507727612', '89', '0', '144'),
(85, '83', 'Sahil has commented on your Feed', '1507727584', '89', '0', '144'),
(84, '63', 'Sahil has commented on your Feed', '1507727552', '89', '0', '153'),
(83, '1', 'Sahil has commented on your Feed', '1507726435', '89', '0', '160'),
(82, '1', 'Sahil has commented on your Feed', '1507726326', '89', '0', '160'),
(81, '72', 'Sahil has sent you friend request', '1507718075', '89', '2', '89'),
(80, '14', 'Sahil has sent you friend request', '1507718048', '89', '2', '89'),
(79, '80', 'Sahil has sent you friend request', '1507717698', '89', '2', '89'),
(78, '21', 'Sahil has sent you friend request', '1507717539', '89', '2', '89'),
(77, '79', 'Sahil has sent you friend request', '1507717469', '89', '2', '89'),
(76, '25', 'Sahil has sent you friend request', '1507710890', '89', '2', '89'),
(75, '26', 'Sahil has sent you friend request', '1507710709', '89', '2', '89'),
(74, '39', 'Sahil has sent you friend request', '1507710627', '89', '2', '89'),
(73, '40', 'Sahil has sent you friend request', '1507710575', '89', '2', '89'),
(72, '43', 'Sahil has sent you friend request', '1507706424', '89', '2', '89'),
(71, '42', 'Sahil has sent you friend request', '1507706414', '89', '2', '89'),
(70, '63', 'Sahil has commented on your Discussion', '1507702868', '89', '1', '100'),
(69, '21', 'yiee has commented on your Feed', '1507619536', '87', '0', '139'),
(68, '63', 'yiee has commented on your Discussion', '1507615349', '87', '1', '78'),
(67, '84', 'yiee has commented on your Feed', '1507614791', '87', '0', '156'),
(66, '84', 'yiee has commented on your Feed', '1507614720', '87', '0', '156'),
(111, '63', 'sharad has commented on your Discussion', '1508850223', '93', '1', '105'),
(112, '19', 'test has commented on your Discussion', '1508850417', '86', '1', '23'),
(113, '59', 'Deepak has commented on your Discussion', '1508913036', '19', '1', '38'),
(114, '29', 'sakshi has commented on your Feed', '1508916986', '63', '0', '181'),
(115, '89', 'test has sent you friend request', '1508917713', '86', '2', '86'),
(116, '19', 'test has commented on your Discussion', '1508919538', '86', '1', '23'),
(117, '19', 'test has commented on your Discussion', '1508919774', '86', '1', '23'),
(118, '19', 'test has commented on your Discussion', '1508919781', '86', '1', '23'),
(119, '14', 'sakshi has sent you friend request', '1508924496', '63', '2', '63'),
(122, '12', ' has commented on your Feed', '1509086977', '63', '0', '227'),
(123, '12', ' has sent you friend request', '1509088688', '63', '2', '63'),
(124, '29', 'Dave Batista has commented on your Discussion', '1509089109', '12', '1', '101'),
(125, '29', 'Dave Batista has commented on your Discussion', '1509089172', '12', '1', '103'),
(126, '29', 'Dave Batista has commented on your Discussion', '1509089194', '12', '1', '103'),
(127, '12', 'Billi has commented on your Feed', '1509089362', '63', '0', '221'),
(128, '12', 'You and now friends with sakshi', '1509090366', '63', '2', '63'),
(129, '63', 'You and now friends with Dave Batista', '1509090368', '12', '2', '12'),
(130, '63', 'yo has sent you friend request', '1509100600', '97', '2', '97'),
(131, '63', 'You and now friends with Azhar Ali', '1509103067', '25', '2', '25'),
(132, '25', 'You and now friends with sakshi', '1509103067', '63', '2', '63'),
(133, '74', 'Azhar Ali has declined your friend request', '1509103152', '25', '2', '25'),
(134, '95', 'Sone Da Circle has commented on your Feed', '1509104474', '99', '0', '250'),
(135, '95', 'Sone Da Circle has commented on your Feed', '1509104486', '99', '0', '250'),
(136, '97', 'sakshi has declined your friend request', '1509105899', '63', '2', '63'),
(137, '96', 'sakshi has sent you friend request', '1509106805', '63', '2', '63'),
(138, '89', 'Sone Da Circle has sent you friend request', '1509107981', '99', '2', '99'),
(139, '63', 'Sone Da Circle has sent you friend request', '1509107996', '99', '2', '99'),
(140, '12', 'Sone Da Circle has sent you friend request', '1509108120', '99', '2', '99'),
(141, '99', 'shooter has sent you friend request', '1509166001', '95', '2', '95'),
(142, '63', 'shooter has sent you friend request', '1509166057', '95', '2', '95'),
(143, '63', 'You and now friends with Sone Da Circle', '1509166100', '99', '2', '99'),
(144, '99', 'You and now friends with sakshi', '1509166100', '63', '2', '63'),
(145, '95', 'sakshi has declined your friend request', '1509166161', '63', '2', '63'),
(146, '1', 'You and now friends with nav', '1509167073', '21', '2', '21'),
(147, '21', 'You and now friends with abhinav grover', '1509167073', '1', '2', '1'),
(148, '28', 'sakshi has sent you friend request', '1509167537', '63', '2', '63'),
(149, '26', 'sakshi has sent you friend request', '1509168575', '63', '2', '63'),
(150, '99', 'You and now friends with shooter', '1509168703', '95', '2', '95'),
(151, '95', 'You and now friends with Sone Da Circle', '1509168703', '99', '2', '99'),
(152, '99', 'Abhinav has commented on your Feed', '1509172069', '30', '0', '254'),
(153, '99', 'yo has commented on your Feed', '1509172662', '97', '0', '252'),
(154, '99', 'yo has commented on your Feed', '1509172715', '97', '0', '252'),
(155, '99', 'yo has commented on your Feed', '1509173166', '97', '0', '254'),
(156, '29', 'Sone Da Circle has sent you friend request', '1509173337', '99', '2', '99'),
(157, '99', 'yo has commented on your Feed', '1509173549', '97', '0', '252'),
(158, '99', 'yo has sent you friend request', '1509173671', '97', '2', '97'),
(159, '97', 'sakshi has sent you friend request', '1509173819', '63', '2', '63'),
(160, '100', 'Sone Da Circle has sent you friend request', '1509174191', '99', '2', '99'),
(161, '99', 'yo has commented on your Feed', '1509174517', '97', '0', '255'),
(162, '99', 'yo has commented on your Feed', '1509174522', '97', '0', '255'),
(163, '99', 'yo has commented on your Feed', '1509174721', '97', '0', '254'),
(164, '99', 'yo has commented on your Feed', '1509174822', '97', '0', '254'),
(165, '99', 'yo has commented on your Feed', '1509174860', '97', '0', '254'),
(166, '63', 'Sone Da Circle has commented on your Discussion', '1509174870', '99', '1', '111'),
(167, '63', 'Sone Da Circle has commented on your Discussion', '1509174893', '99', '1', '111'),
(168, '63', 'Sone Da Circle has commented on your Discussion', '1509174907', '99', '1', '111'),
(169, '99', 'yo has commented on your Feed', '1509175005', '97', '0', '255'),
(170, '63', 'Sone Da Circle has commented on your Discussion', '1509175223', '99', '1', '67'),
(171, '99', 'yo has commented on your Feed', '1509175594', '97', '0', '255'),
(172, '95', 'sakshi has sent you friend request', '1509175619', '63', '2', '63'),
(173, '99', 'yo has commented on your Feed', '1509175641', '97', '0', '255'),
(174, '99', 'yo has commented on your Feed', '1509175702', '97', '0', '255'),
(175, '99', 'yo has commented on your Feed', '1509175794', '97', '0', '255'),
(176, '99', 'yo has commented on your Feed', '1509175882', '97', '0', '255'),
(177, '99', 'yo has commented on your Feed', '1509175962', '97', '0', '254'),
(178, '99', 'yo has commented on your Feed', '1509175967', '97', '0', '254'),
(179, '63', 'Sone Da Circle has commented on your Discussion', '1509176067', '99', '1', '113'),
(180, '63', 'Sone Da Circle has commented on your Discussion', '1509176145', '99', '1', '113'),
(181, '99', 'yo has commented on your Feed', '1509176774', '97', '0', '255'),
(182, '99', 'yo has commented on your Feed', '1509176779', '97', '0', '255'),
(183, '80', 'Sone Da Circle has sent you friend request', '1509176798', '99', '2', '99'),
(184, '99', 'yo has commented on your Feed', '1509176800', '97', '0', '255'),
(185, '99', 'yo has commented on your Feed', '1509176804', '97', '0', '255'),
(186, '99', 'yo has commented on your Feed', '1509176822', '97', '0', '255'),
(187, '99', 'yo has commented on your Feed', '1509176827', '97', '0', '255'),
(188, '99', 'sakshi has commented on your Feed', '1509184738', '63', '0', '258'),
(189, '99', 'sakshi has commented on your Feed', '1509184801', '63', '0', '259'),
(190, '99', 'You and now friends with yo', '1509185182', '97', '2', '97'),
(191, '97', 'You and now friends with Sone Da Circle', '1509185182', '99', '2', '99'),
(192, '97', 'Sone Da Circle has commented on your Discussion', '1509185303', '99', '1', '114'),
(193, '99', 'yo has Endorsed your skils', '1509185417', '97', NULL, NULL),
(194, '99', 'yo has Endorsed your skils', '1509185429', '97', NULL, NULL),
(195, '95', 'yo has sent you friend request', '1509185620', '97', '2', '97'),
(196, '99', 'yo has Endorsed your skils', '1509185634', '97', NULL, NULL),
(197, '63', 'yo has declined your friend request', '1509185788', '97', '2', '97'),
(198, '97', 'Sone Da Circle has sent you friend request', '1509186007', '99', '2', '99'),
(199, '97', 'You and now friends with Sone Da Circle', '1509186026', '99', '2', '99'),
(200, '99', 'You and now friends with yo', '1509186026', '97', '2', '97'),
(201, '43', 'Sone Da Circle has sent you friend request', '1509186825', '99', '2', '99'),
(202, '39', 'Sone Da Circle has sent you friend request', '1509186997', '99', '2', '99'),
(203, '97', 'Sone Da Circle has sent you friend request', '1509192043', '99', '2', '99'),
(204, '97', 'You and now friends with Sone Da Circle', '1509192070', '99', '2', '99'),
(205, '99', 'You and now friends with yo', '1509192070', '97', '2', '97'),
(206, '101', 'Onaseye has sent you friend request', '1509400212', '33', '2', '33'),
(207, '45', 'Onaseye has sent you friend request', '1509400219', '33', '2', '33'),
(208, '28', 'Onaseye has sent you friend request', '1509400682', '33', '2', '33'),
(209, '75', 'Onaseye has commented on your Discussion', '1509401045', '33', '1', '92'),
(210, '44', 'sakshi has sent you friend request', '1509427979', '63', '2', '63'),
(211, '99', 'sakshi has commented on your Discussion', '1509511809', '63', '1', '122'),
(212, '99', 'sakshi has commented on your Discussion', '1509513310', '63', '1', '120'),
(213, '63', 'yo has commented on your Discussion', '1509600252', '97', '1', '129'),
(214, '42', 'yo has sent you friend request', '1509600626', '97', '2', '97'),
(215, '97', 'asd has sent you friend request', '1509616323', '102', '2', '102'),
(216, '99', 'sakshi has sent you friend request', '1509617065', '63', '2', '63'),
(217, '63', 'xyz has sent you friend request', '1509617354', '103', '2', '103'),
(218, '63', 'You and now friends with xyz', '1509617460', '103', '2', '103'),
(219, '103', 'You and now friends with sakshi', '1509617460', '63', '2', '63'),
(220, '97', 'rk has commented on your Feed', '1509687284', '106', '0', '298'),
(221, '97', 'rk has commented on your Discussion', '1509687647', '106', '1', '137'),
(222, '63', 'rk has commented on your Discussion', '1509687781', '106', '1', '112'),
(223, '29', 'rk has sent you friend request', '1509687993', '106', '2', '106'),
(224, '63', 'rk has commented on your Discussion', '1509691750', '106', '1', '132'),
(225, '63', 'Abhishek has commented on your Discussion', '1509710926', '107', '1', '132'),
(226, '63', 'Abhishek has commented on your Discussion', '1509710930', '107', '1', '132'),
(227, '63', 'Abhishek has commented on your Discussion', '1509710935', '107', '1', '132'),
(228, '63', 'Abhishek has commented on your Discussion', '1509710973', '107', '1', '132'),
(229, '29', 'Abhishek has sent you friend request', '1509711128', '107', '2', '107'),
(230, '42', 'Abhishek has sent you friend request', '1509711137', '107', '2', '107'),
(231, '107', 'Resham singh Anmol has sent you friend request', '1509711510', '104', '2', '104'),
(232, '21', 'Abhishek has sent you friend request', '1509712871', '107', '2', '107'),
(233, '97', 'Resham singh Anmol has commented on your Feed', '1509713255', '104', '0', '298'),
(234, '63', 'Abhishek has sent you friend request', '1509713500', '107', '2', '107'),
(235, '63', 'You and now friends with Abhishek', '1509713650', '107', '2', '107'),
(236, '107', 'You and now friends with sakshi', '1509713650', '63', '2', '63'),
(237, '107', 'You and now friends with Resham singh Anmol', '1509714379', '104', '2', '104'),
(238, '104', 'You and now friends with Abhishek', '1509714379', '107', '2', '107'),
(239, '63', 'Resham singh Anmol has sent you friend request', '1509714885', '104', '2', '104'),
(240, '63', 'You and now friends with Resham singh Anmol', '1509714914', '104', '2', '104'),
(241, '104', 'You and now friends with sakshi', '1509714914', '63', '2', '63'),
(242, '97', 'sakshi has commented on your Discussion', '1509715338', '63', '1', '137'),
(243, '107', 'yo has sent you friend request', '1509717281', '97', '2', '97'),
(244, '104', 'Abhishek has sent you friend request', '1509717759', '107', '2', '107');

-- --------------------------------------------------------

--
-- Table structure for table `im_options`
--

CREATE TABLE `im_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_options`
--

INSERT INTO `im_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/sona', 'yes'),
(2, 'home', 'http://localhost/sona', 'yes'),
(3, 'blogname', 'Sona Circle', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'abhinav@imarkinfotech.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:24:\"DiscussionList/index.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:3;s:19:\"liveFeeds/index.php\";i:5;s:20:\"users_sona/index.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'SonaCircle', 'yes'),
(41, 'stylesheet', 'SonaCircle', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'im_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:5:{i:1509807072;a:1:{s:19:\"pj_wpdb_sessions_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1509834466;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1509877683;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1509880683;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1504004495;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, '_site_transient_timeout_community-events-c0ac7252300fe9ddf781afbe1e59ab5c', '1504045687', 'no'),
(1353, '_site_transient_timeout_theme_roots', '1509808143', 'no'),
(1354, '_site_transient_theme_roots', 'a:1:{s:10:\"SonaCircle\";s:7:\"/themes\";}', 'no'),
(118, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1509806344;s:7:\"checked\";a:1:{s:10:\"SonaCircle\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1253, '_site_transient_timeout_browser_ad43c4a5fa2937b7360ef0145cedb9f8', '1510049852', 'no'),
(1254, '_site_transient_browser_ad43c4a5fa2937b7360ef0145cedb9f8', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"61.0.3163.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(120, '_site_transient_timeout_browser_2b47e6b186d5de0e76bb3e26ec64dffc', '1504607283', 'no'),
(121, '_site_transient_browser_2b47e6b186d5de0e76bb3e26ec64dffc', 'a:9:{s:8:\"platform\";s:7:\"Windows\";s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"60.0.3112.101\";s:10:\"update_url\";s:28:\"http://www.google.com/chrome\";s:7:\"img_src\";s:49:\"http://s.wordpress.org/images/browsers/chrome.png\";s:11:\"img_src_ssl\";s:48:\"https://wordpress.org/images/browsers/chrome.png\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(124, '_site_transient_community-events-c0ac7252300fe9ddf781afbe1e59ab5c', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"110.225.202.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Global WordPress Translation Day 3\";s:3:\"url\";s:61:\"https://www.meetup.com/WordPress-Chandigarh/events/240104941/\";s:6:\"meetup\";s:20:\"WordPress Chandigarh\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Chandigarh/\";s:4:\"date\";s:19:\"2017-09-30 13:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Chandigarh, CH, India\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:30.75;s:9:\"longitude\";d:76.7799987792970028976924368180334568023681640625;}}}}', 'no'),
(125, 'can_compress_scripts', '0', 'no'),
(752, '_site_transient_timeout_community-events-c050d5e2853cdef404c8657a5cd7bf5a', '1507338302', 'no'),
(753, '_site_transient_community-events-c050d5e2853cdef404c8657a5cd7bf5a', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"122.173.60.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:44:\"WordPress & WordPress Community Introduction\";s:3:\"url\";s:63:\"https://www.meetup.com/Noida-WordPress-Meetup/events/242969072/\";s:6:\"meetup\";s:22:\"Noida WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Noida-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-10-07 16:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Noida, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.57491900000000129011823446489870548248291015625;s:9:\"longitude\";d:77.318802000000005136826075613498687744140625;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Mastering selection of Themes and Plugins\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982825/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-14 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:48:\"Increasing engagement and decreasing bounce rate\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Mastering PHPMyAdmin for WordPress\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982967/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-11 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:45:\"WordPress maintenance for heavy traffic sites\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982937/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-11 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(253, '_site_transient_timeout_community-events-cd59ce71d62f9d7a54b1a706a808e6b0', '1504718249', 'no'),
(254, '_site_transient_community-events-cd59ce71d62f9d7a54b1a706a808e6b0', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"122.173.178.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:36:\"Learn to sell online using WordPress\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242853203/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-09-09 15:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Security hardening for WordPress (100% practical)\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982412/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-09-16 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:27:\"How to start with WordPress\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982565/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-09-23 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:44:\"WordPress & WordPress Community Introduction\";s:3:\"url\";s:63:\"https://www.meetup.com/Noida-WordPress-Meetup/events/242969072/\";s:6:\"meetup\";s:22:\"Noida WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Noida-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-09-24 16:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Noida, UP, India\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:28.579999923706001396794817992486059665679931640625;s:9:\"longitude\";d:77.330001831055000138803734444081783294677734375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Mastering selection of Themes and Plugins\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982825/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-07 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(1004, '_site_transient_timeout_community-events-12f1e35d65a239507e176da57745c5d3', '1508863571', 'no'),
(1005, '_site_transient_community-events-12f1e35d65a239507e176da57745c5d3', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"122.173.158.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:48:\"Increasing engagement and decreasing bounce rate\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Open house meetup for new WordPress users\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/244407312/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.558254000000001582293407409451901912689208984375;s:9:\"longitude\";d:77.2081680000000005748006515204906463623046875;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:45:\"WordPress maintenance for heavy traffic sites\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982937/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-11 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:29:\"Adding custom fields in WP DB\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242983000/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-18 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:26:\"Setting Custom Page for WP\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242983020/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-25 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(1094, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1509036913', 'no');
INSERT INTO `im_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1095, '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"\n	\n	\n	\n	\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WPWeekly Episode 292 – Recap of WooConf and CaboPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=76080&preview=true&preview_id=76080\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wptavern.com/wpweekly-episode-292-recap-of-wooconf-and-cabopress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2434:\"<p>In this episode, <a href=\"https://jjj.blog/\">John James Jacoby</a> and I are joined by Cody Landefeld, co-founder of <a href=\"https://modeeffect.com/\">Mode Effect</a>. Landefeld described his experience attending WooConf as we reviewed highlights from the State of the Woo.</p>\n<p>We also discussed WooCommerce retiring its Canvas theme in favor of Storefront. Jacoby shared his experience attending CaboPress and near the end of the show, we talk about WordPress 4.9 Beta 4.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/woocommerce-stores-on-track-to-surpass-10b-in-sales-this-year\">WooCommerce Stores on Track to Surpass $10B in Sales This Year</a><br />\n<a href=\"https://wptavern.com/woocommerce-retires-canvas-theme-recommends-customers-migrate-to-storefront-theme\">WooCommerce Retires Canvas Theme, Recommends Customers Migrate to Storefront Theme</a><br />\n<a href=\"https://wptavern.com/wordpress-4-9-beta-4-removes-try-gutenberg-call-to-action\">WordPress 4.9 Beta 4 Removes ‘Try Gutenberg’ Call to Action</a></p>\n<h2>Picks of the Week:</h2>\n<p>HeroPress is <a href=\"https://heropress.com/accepting-donations/\">now accepting donations</a>. If you support the project, please consider donating.</p>\n<p>Ninja Forms achieved a milestone. The plugin is activated on more than 1M sites.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Ninja Forms reached 1 million active installs at the very beginning of the day today! This is a huge milestone! <a href=\"https://t.co/RECAHWJyOV\">https://t.co/RECAHWJyOV</a></p>\n<p>&mdash; James Laws (@jameslaws) <a href=\"https://twitter.com/jameslaws/status/923251034272817152?ref_src=twsrc%5Etfw\">October 25, 2017</a></p></blockquote>\n<p></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, November 1st 3:00 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\" target=\"_blank\" rel=\"noopener\">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href=\"https://wptavern.com/feed/podcast\" target=\"_blank\" rel=\"noopener\">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\" target=\"_blank\" rel=\"noopener\">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #292:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 26 Oct 2017 01:13:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"WPTavern: Goodnight Firebug\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=76038\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"https://wptavern.com/goodnight-firebug\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3657:\"<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-25-at-1.07.39-PM.png?ssl=1\"><img /></a></p>\n<p>Twitter is lighting up with sentimental Firebug remembrances today after Mozilla <a href=\"https://hacks.mozilla.org/2017/10/saying-goodbye-to-firebug/\" rel=\"noopener\" target=\"_blank\">announced</a> it will reach end-of-life in the Firefox browser next month. Firebug was the first browser-based tool that allowed developers to easily inspect HTML and debug JS. It was discontinued as a separate add-on and <a href=\"https://hacks.mozilla.org/2016/12/firebug-lives-on-in-firefox-devtools/?mc_cid=a4117f9cbc&mc_eid=ad602f9b49\" rel=\"noopener\" target=\"_blank\">merged into Firefox DevTools</a> in 2016 where it will live on.</p>\n<p>I remember the days of painstaking debugging before Firebug was available. It was a revolutionary tool that instantly became indispensable, helping developers work more efficiently.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Firebug was the rare kind of tool that instantly doubled the productivity of every developer it touched.</p>\n<p>&mdash; Rob Spectre (@dN0t) <a href=\"https://twitter.com/dN0t/status/923198959082000384?ref_src=twsrc%5Etfw\">October 25, 2017</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">RIP Firebug. Couldn\'t have built any of my companies without you. <a href=\"https://t.co/NzoWHtxbTu\">https://t.co/NzoWHtxbTu</a></p>\n<p>&mdash; justin kan (@justinkan) <a href=\"https://twitter.com/justinkan/status/922948111684714496?ref_src=twsrc%5Etfw\">October 24, 2017</a></p></blockquote>\n<p></p>\n<p>&#8220;Firebug changed everything for me as a frontend developer,&#8221; Jens Grochtdreis said. &#8220;Looking back I cannot remember how hard the times were before Firebug stepped on the scene. Now each browser has mature developer tools. That’s because of Firebug. Mission accomplished!&#8221;</p>\n<p>In recognition of what Firebug brought to developers, Mozilla reviewed one of the most important points in Firebug history &#8211; the decision to open source the software. This allowed for the proliferation of similar browser development tools that we see today. Firebug creator Joe Hewitt, who eventually moved on to Facebook, made the tool open source in December 2006:</p>\n<blockquote><p>The first announcement is in regards to Firebug’s licensing. As I was developing Firebug 1.0, I began to wonder if I should try to turn the project from a hobby into a business. When I proposed this idea on my blog, the response was very positive and reaffirmed my belief that Firebug could do well as a commercial product.<br />\nHowever, in the end, I just don’t feel like that is the right thing to do. I love working on Firebug because I know I’m making a lot of people happy and helping to advance the state of the art. That’s a lot more meaningful to me than just about anything else, and so, I’ve decided that <strong>Firebug will remain free and open source.</strong></p></blockquote>\n<p>Mozilla reported that more than a million people are still using the Firebug add-on. Firefox Developer Tools has a guide for <a href=\"https://developer.mozilla.org/en-US/docs/Tools/Migrating_from_Firebug\" rel=\"noopener\" target=\"_blank\">migrating from Firebug</a>. There are still several Firebug features missing from Firefox DevTools, but <a href=\"https://bugzil.la/991806\" rel=\"noopener\" target=\"_blank\">Mozilla is tracking them</a> and working to bring greater parity between the two. Support for the separate Firebug extension will be discontinued with the release of Firefox Quantum (version 57) in November 2017.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2017 19:26:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"WPTavern: WordPress 4.9 Beta 4 Removes ‘Try Gutenberg’ Call to Action\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=76047\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/wordpress-4-9-beta-4-removes-try-gutenberg-call-to-action\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5619:\"<p>WordPress beta releases typically don&#8217;t generate controversy but in WordPress 4.9 Beta 3, a <a href=\"https://core.trac.wordpress.org/ticket/41316\">call to action was added</a> to the dashboard that encouraged users to install and activate <a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg</a>.</p>\n<img />Try Gutenberg Call to Action\n<p>Members of the WordPress community raised concerns that clients may install Gutenberg and shared ways to hide the prompt from users. The negative reaction inspired some developers to <a href=\"https://github.com/boogah/gutenag\">create plugins</a> that hide the prompt.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">WordPress 4.9 beta 3 includes a Gutenberg notification. I think this is a bad idea. This might trigger clients to try it, with bad things that can happen. If this goes in 4.9, use this code in your functions.php: remove_action( \'try_gutenberg_panel\', \'wp_try_gutenberg_panel\' ); <a href=\"https://t.co/VwCo2OUtvc\">pic.twitter.com/VwCo2OUtvc</a></p>\n<p>&mdash; Marcel Bootsman (@mbootsman) <a href=\"https://twitter.com/mbootsman/status/920904595823644672?ref_src=twsrc%5Etfw\">October 19, 2017</a></p></blockquote>\n<p></p>\n<p>One of the <a href=\"https://core.trac.wordpress.org/ticket/41316#comment:33\">primary concerns</a> is that Gutenberg is in a high state of flux and encouraging users to create content inside of it on live sites may cause compatibility issues or adversely affect saved content in the future.</p>\n<p>&#8220;Any change to the integrity of published content and its formatting that results from changes during continued development and evolution would be unacceptable from the point that we encourage users this directly to install it on live sites,&#8221; Nick Halsey said.</p>\n<p>&#8220;On the other hand, this could require core to take on significant technical debt to maintain compatibility for earlier iterations of the editor as a plugin.</p>\n<p>&#8220;There should be a make/core post addressing this issue, at a minimum, along with a compatibility plan for the next stage of development as a plugin. Before core encourages millions of sites to use the plugin and rely on it functioning a certain way.&#8221;</p>\n<p>Other members of the community advocated for the call to action saying it would lead to a larger test sample.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Getting the public to test Gutenberg is essential. If bad things happen, that\'s important data that must be gathered before full release.</p>\n<p>&mdash; MortenRandHendriksen (@mor10) <a href=\"https://twitter.com/mor10/status/921031245710082048?ref_src=twsrc%5Etfw\">October 19, 2017</a></p></blockquote>\n<p></p>\n<p>The call to action <a href=\"https://core.trac.wordpress.org/ticket/41316#comment:49\">was removed</a> after the core team discussed it with Matt Mullenweg, &#8220;I like the idea of the Gutenberg promo, but want things to be a bit further along before we really open the doors to try to get as many users as possible,&#8221; Mullenweg said. &#8220;If we can flag off or remove the promo, we can always bring it back in 4.9.1 or another time when things are more ready.&#8221;</p>\n<h2>&#8216;Try Gutenberg&#8217; Dashboard Prompt Will Set A New Precedent</h2>\n<p>There have been many WordPress features in core that started off as plugins first, MP6 being one of the <a href=\"https://wptavern.com/mp6-is-like-eye-candy\">most memorable</a>. However, to the best of my knowledge, there has never been a dashboard prompt encouraging users to install and activate a beta plugin on a live site.</p>\n<p>Although the call to action is focused on raising awareness of Gutenberg, <a href=\"https://core.trac.wordpress.org/ticket/41316#comment:47\">John James Jacoby suggests</a> that the meta block be rewritten so that it can be recycled for other features or plugins to use in the future.</p>\n<p>&#8220;My concern is that the current approach is not scalable to future feature developments beyond Gutenberg,&#8221; Jacoby said. &#8220;For example, when a new codenamed feature comes along for WordPress 5.2, cloning this same approach does not seem ideal.&#8221;</p>\n<p>He suggests that the dashboard widget become a standard part of the dashboard. &#8220;This way, we can hype the new hotness on an as-needed basis, and plugins that want to hide it forever can reliably do so one time in a plugin,&#8221; Jacoby said.</p>\n<h2>When Is the Right Time to Hype Gutenberg to the Masses?</h2>\n<p><a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg</a> is actively installed on more than 3K sites with <a href=\"https://wordpress.org/plugins/gutenberg/advanced/\">nearly half of installations</a> running version 1.4. This is a far cry from the 100K active installs <a href=\"https://wptavern.com/wordpress-new-gutenberg-editor-now-available-as-a-plugin-for-testing\">Mullenweg would like to see</a> before merging it into core.</p>\n<p>I don&#8217;t think advertising Gutenberg in the dashboard to millions of users as the new editing experience should be considered until a merge proposal has been published on the Make Core WordPress site. By this time, many of its quirks and how it handles meta data, meta blocks, and preventing data loss will likely be solved.</p>\n<p>I am one of the people who raised their eyebrows at the idea of advertising Gutenberg at its current stage of development to the masses. My primary concern is that it&#8217;s not ready yet. At the same time, I wonder when or if there is a right or responsible time to advertise installing beta software onto a live site. What do you think?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2017 18:35:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Donncha: Writing WP Super Cache Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"https://odd.blog/?p=89500474\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://odd.blog/2017/10/25/writing-wp-super-cache-plugins/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3436:\"<p>WP Super Cache is a full page caching plugin for WordPress. When a page is cached almost all of WordPress is skipped and the page is sent to the browser with the minimum amount of code executed. This makes the page load much faster.</p>\n<p>Unfortunately if you want to run code on every page load you&#8217;re out of luck as regular WordPress plugins are not loaded or executed. You&#8217;ll need to write a WP Super Cache plugin. This short introduction will not teach you how to write plugins but the example plugins that ship with WP Super Cache will get you a long way towards understanding how they work.</p>\n<p><img /></p>\n<p>WP Super Cache ships with some example plugins in wp-super-cache/plugins/. Some of them even do useful tasks like help with domain mapping and Jetpack integration. There&#8217;s one called &#8220;awaitingmoderation.php&#8221; which removes the text &#8220;Your comment is awaiting moderation.&#8221; when someone writes a moderated comment.<br />\nThere&#8217;s also dynamic-cache-test.php which is a complicated beast but it&#8217;s heavily commented. It allows you to add template tags to your site that are replaced when the cached page is loaded.</p>\n<p>Before you get started writing a plugin you should be aware that you should <em>not</em> use the wp-super-cache/plugins/ directory. Every time WP Super Cache is updated this directory is deleted. So, edit your wp-config.php and set <code>$wp_cache_plugins_dir</code> to another directory where you&#8217;ll put your plugin.</p>\n<p>These plugins run before most of WordPress has loaded. That means you can&#8217;t rely on some of the nice features of WordPress such as filters and actions. However, WP Super Cache has it&#8217;s own action/filter system that is similar to actions and filters in WordPress:</p>\n<ul>\n<li>add_cacheaction( $action, $func )</li>\n<li>do_cacheaction( $action, $value = &#8221; )</li>\n</ul>\n<p>A cacheaction is also a filter. If you hook on to a cache action that has a parameter, you must return that parameter at the end of the function like you would with a WordPress filter.</p>\n<p><img /></p>\n<p>If you need to hook into a WordPress filter use the imaginatively named cache action &#8220;add_cacheaction&#8221;. That runs on &#8220;init&#8221; so the function that is executed can use <code>add_action()</code> or <code>add_filter()</code>. You can see this in action in the plugins/dynamic-cache-test.php or plugins/awaitingmoderation.php scripts.</p>\n<p>Two very useful filters are the WordPress filter, &#8220;wpsupercache_buffer&#8221; (in wp-cache-phase2.php) that is used to modify the page before it is <em>cached</em> and the cache action &#8220;wpsc_cachedata&#8221; (in wp-cache-phase1.php) is used to modify the cached page just before it&#8217;s <em>served</em>.</p>\n\n<p><strong>Related Posts</strong><ul><li> <a href=\"https://odd.blog/2008/10/24/wp-super-cache-084-the-garbage-collector/\" rel=\"bookmark\" title=\"Permanent Link: WP Super Cache 0.8.4, the garbage collector\">WP Super Cache 0.8.4, the garbage collector</a></li><li> <a href=\"https://odd.blog/2010/02/08/wp-super-cache-099/\" rel=\"bookmark\" title=\"Permanent Link: WP Super Cache 0.9.9\">WP Super Cache 0.9.9</a></li><li> <a href=\"https://odd.blog/2009/07/17/wp-super-cache-0-9-5/\" rel=\"bookmark\" title=\"Permanent Link: WP Super Cache 0.9.5\">WP Super Cache 0.9.5</a></li></ul></p>\n<p><a href=\"https://odd.blog/\" rel=\"nofollow\">Source</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2017 16:21:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"Donncha\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"HeroPress: Paying It Forward\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2217\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"https://heropress.com/essays/paying-it-forward/#utm_source=rss&utm_medium=rss&utm_campaign=paying-it-forward\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8261:\"<img width=\"960\" height=\"480\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/102817-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull quote: The spirit of WordPress is paying it forward.\" /><p>I have always embraced an entrepreneurial spirit. As a kid in the 1970’s, I tagged along with my parents to craft shows on the weekends where they made and sold hand-stamped leather belts to earn extra income and I made macrame necklaces and sold those too. When I was 14 I told my dad I wanted to be a stewardess when I grew up, he said “Why not be the pilot? Be the captain!” and gave me some flight lessons for my birthday (I discovered I get air sick very easily, so did not pursue that dream for long!).</p>\n<p>Throughout my childhood and into adulthood, I loved to create things that people would buy from me &#8211; from a lemonade stand when I was 7 to custom-made t-shirts I sold on football weekends in college;</p>\n<blockquote><p>I was always thinking about ways to earn income &#8211; not to get rich, but to have the validation that I created something of value to others.</p></blockquote>\n<h3>Pivoting to Entrepreneurship</h3>\n<p>Fast-forward to a time after my first child was born. My career in advertising and marketing introduced me to tools, techniques and jargon that are still valid today, but “working for the man” was never a truly satisfying experience for me. Thankfully, my husband had a salaried job with benefits, and since he traveled a lot for work, we decided that I would stay home with our son. When I left my marketing job, my boss suggested I start a little business selling illustrated prints I had become known for around the office, having given them as gifts to my co-workers when they had babies.</p>\n<p><img class=\"alignleft size-full wp-image-2219\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/growupgirl.gif\" alt=\"Cartoon people holding up letters that spell MORGAN\" width=\"249\" height=\"153\" />With that idea in mind, I started gradually spreading the word among my new “mom” friends, and before I knew it, about 5 years later, with a second child and a wonderful network of moms, I had a full-fledged stationery business, TLC by TARA, that allowed me to work from home and take care of my kids. My income was low, but grew over the years until it covered piano lessons for my children and a car payment on an awesome blue Dodge mini van!</p>\n<blockquote><p>More importantly, this “accidental” career allowed me to broaden my identity and skill set without even intending to.</p></blockquote>\n<p>It introduced me to wonderful friends and fellow entrepreneurs, and satisfied that craving for validation, connection, and a little bit of income.</p>\n<h3>Pivoting to the Web</h3>\n<p>The business began before the internet was “a thing” and before computers were widely used. By 2003, however, I began to explore digital tools and built a website for my business using Microsoft Front Page. I uploaded hundreds of illustrations and laid them out in html tables.</p>\n<p><a href=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/screenshot_2017-10-10_12.21.58_1024.png\"><img class=\"alignleft wp-image-2218\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/screenshot_2017-10-10_12.21.58_1024.png\" alt=\"Example of design library by Tara Claeys\" width=\"350\" height=\"360\" /></a>I fell in love with technology and eventually decided to stop making stationery. I got rid of my industrial printer, paper cutter, paper, and supplies and changed my business name to Design TLC to focus on graphic and web design. I had heard about WordPress and volunteered to build a new website for my neighborhood association and a local women’s cycling group to check out the platform, practice and learn. I taught myself how to make custom child themes and combined that with my marketing background to create websites for a number of small local businesses.</p>\n<h3>And then WordCamp</h3>\n<p>It wasn’t until 2014 that I discovered the WordPress community. I heard about “WordCamps” and found one near me, in Baltimore, Maryland. By chance I sat at a lunch table with two strangers who I later learned were quite well known in the WordPress world &#8211; Chris Lema and Shay Bocks. They were so friendly and supportive, answering my many questions and offering tips and advice that changed my approach to website design and to running my business. I still think back to that experience as transformative; having lived in a bubble for the first years of working with WordPress, it was eye-opening to discover its community and resources.</p>\n<p>I quickly started absorbing everything I could about WordPress. I live-streamed WordCamp San Francisco in 2014, and joined Slack and Facebook groups. I started listening to a ton of WordPress podcasts and attended WordCamp Philadelphia and WordCamp New York City. I began attending the DC WordPress Meetup, where eventually one of the organizers encouraged me to speak about Genesis for a lightning talk. I couldn’t believe I was suddenly in a position of authority &#8211; sharing my knowledge with others when I felt like everything was still so new to me.</p>\n<blockquote><p>Like many in our community, I am plagued by imposter syndrome.</p></blockquote>\n<p>Relative to many, I am still new to WordPress and I am not a trained coder/programmer. I am also self-consciously older than many people I meet, and still sometimes think of myself as a “Mompreneur.” I am constantly making choices about what to learn next and where to focus my time and resources. Most importantly, I think about how I can run a business while also giving back to the community that has welcomed me and given me so much. I love the mission of HeroPress &#8211; giving a voice to others like me, who may often <em>feel</em> insignificant but whose lives have been inspired and enhanced by the WordPress community.  With this vision in mind, this year Liam Dempsey and I started the podcast Hallway Chats, where we introduce and talk to people who use WordPress. Like HeroPress, we hope these stories inspire someone else who in turn will keep the cycle of sharing and encouragement going!</p>\n<blockquote><p>The spirit of WordPress is “paying it forward” and I think that is the best kind of payment there is.</p></blockquote>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Paying It Forward\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Paying%20It%20Forward&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fpaying-it-forward%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Paying It Forward\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fpaying-it-forward%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fpaying-it-forward%2F&title=Paying+It+Forward\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Paying It Forward\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/paying-it-forward/&media=https://heropress.com/wp-content/uploads/2017/10/102817-150x150.jpg&description=Paying It Forward\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Paying It Forward\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/paying-it-forward/\" title=\"Paying It Forward\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/paying-it-forward/\">Paying It Forward</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2017 12:00:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Tara Claeys\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Dev Blog: WordPress 4.9 Beta 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4962\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2297:\"<p>WordPress 4.9 Beta 4 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"https://wordpress.org/wordpress-4.9-beta4.zip\">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.9, check out the <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> blog post. Since the Beta 1 release, we’ve made <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&mode=stop_on_copy&rev=41846&stop_rev=41777&limit=100&sfp_email=&sfph_mail=\">70 changes</a> in Beta 2, and <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&mode=stop_on_copy&rev=41938&stop_rev=41847&limit=100&sfp_email=&sfph_mail=\">92 changes</a> in <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-3/\">Beta 3</a>. In Beta 4, we&#8217;ve made <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&mode=stop_on_copy&rev=42020&stop_rev=41940&limit=100&sfp_email=&sfph_mail=\">80 changes</a>, focusing on bug fixes and finalizing new features.</p>\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</p>\n<p><i>Beta 4 at last,<br />\nRC 1 draws ever near.<br />\nLet&#8217;s make it bug-free. <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f41b.png\" alt=\"🐛\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f6ab.png\" alt=\"🚫\" class=\"wp-smiley\" /></i></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2017 07:04:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Mel Choyce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"WPTavern: WooCommerce Retires Canvas Theme, Recommends Customers Migrate to Storefront Theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75984\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"https://wptavern.com/woocommerce-retires-canvas-theme-recommends-customers-migrate-to-storefront-theme\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4033:\"<p>WooCommerce is <a href=\"https://woocommerce.com/2017/10/saying-goodbye-to-canvas/\" rel=\"noopener\" target=\"_blank\">retiring its Canvas Theme</a> after seven years. Canvas was one of the most innovative themes on the market when it first launched in 2010, giving customers the ability to modify their sites&#8217; design and layout through an extensive options panel. It sold for $99 before the <a href=\"https://woocommerce.com/products/canvas/\" rel=\"noopener\" target=\"_blank\">product URL</a> was redirected to a retirement page today.</p>\n<p>Canvas&#8217; retirement is a strong signal that Automattic is going all-in on Gutenberg. Without a complete overhaul, the theme is no longer able to keep pace with the changes that Gutenberg and the Customizer will bring to WordPress theming and site building.</p>\n<p>&#8220;While still early, we believe strongly that Gutenberg is the future,&#8221; Canvas lead developer Jeffrey Pearce said. &#8220;We’ve decided to invest our resources in preparing our products for it in order to bring you the best experience. Unfortunately, that won’t include Canvas.&#8221;</p>\n<p>WooCommerce has discontinued Canvas sales and will not be open sourcing the theme to the community.</p>\n<p>&#8220;Overhauling the theme wouldn’t serve our users, yet continuing to sell it as-is wasn’t the right decision. So we made the difficult decision to say goodbye,&#8221; Pearce said.</p>\n<p>&#8220;We considered open sourcing Canvas to the community, but ultimately decided that extending its lifetime will not serve the community. It’s in the best interest of our users and the community to eventually move to another theme.&#8221;</p>\n<p>WooCommerce plans to continue supporting active subscriptions and will offer support for lifetime subscriptions for the next year. However, the theme will not be updated to support newer features coming to WordPress. The team strongly urges users to migrate their sites to <a href=\"https://woocommerce.com/storefront/\" rel=\"noopener\" target=\"_blank\">Storefront</a>, the company&#8217;s more mobile-friendly flagship theme built on top of the Underscores starter theme. WooCommerce has published a <a href=\"https://docs.woocommerce.com/document/choose-change-theme/\" rel=\"noopener\" target=\"_blank\">migration guide</a> to help customers <a href=\"https://docs.woocommerce.com/document/moving-on-from-canvas/\" rel=\"noopener\" target=\"_blank\">move on from Canvas</a>.</p>\n<p>Over the years customers have created many different types of websites (not limited to e-commerce) using Canvas. While some have accepted the inevitable, others are anxious and upset about the change, faced with the prospect of migrating dozens of sites (in many instances) away from the theme. The news of Canvas&#8217; retirement was especially difficult for those who support clients who may not be happy to pay for their existing sites to get updated with no appreciable difference. It&#8217;s not easy to sell the change to clients when most of it happens under the hood.</p>\n<p>&#8220;This puts me in a terrible position,&#8221; WooCommerce customer Leon Wagner said. &#8220;I have 10 client sites on Canvas. They look beautiful and the clients are happy. So these are done deals, I’ve been paid, and do occasional maintenance. Now you’re telling me I have to go back to each of them and explain that because you’re discontinuing this theme, my clients will now have to pay me thousands of dollars to port their sites (with no obvious improvements) to new themes. Pretty sure I’ll just lose most of those clients.&#8221;</p>\n<p>Other freelancers and small business owners find themselves in the same boat, many of them with twice that many clients on the Canvas theme. Although the theme can continue to be used without breaking, it will no longer receive compatibility or security updates after the support window expires in October 2018. WooCommerce is currently giving away its Storefront Extensions Bundle for free to Canvas customers to help make the migration easier.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Oct 2017 23:53:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"WPTavern: Gutenberg 1.5 Adds Initial Support for Meta Boxes, Makes Gutenberg the Default Editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75853\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://wptavern.com/gutenberg-1-5-adds-initial-support-for-meta-boxes-makes-gutenberg-the-default-editor\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5629:\"<p><a href=\"https://make.wordpress.org/core/2017/10/24/whats-new-in-gutenberg-24th-october/\" rel=\"noopener\" target=\"_blank\">Gutenberg 1.5</a> was released this morning and introduces several major changes to the plugin. This version takes the new editor off the back burner and makes it the default for creating new posts. The team has also included a way for users to create posts with the Classic Editor, but this requires knowing where to go to access the dropdown (All Posts &raquo; Add New).</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-24-at-11.12.41-AM.png?ssl=1\"><img /></a></p>\n<p>Version 1.5 <a href=\"https://github.com/WordPress/gutenberg/pull/2804\" rel=\"noopener\" target=\"_blank\">adds initial support for meta boxes</a> in an Extended Settings panel beneath the post content. Users won&#8217;t see this bottom panel unless they have a plugin installed that includes meta boxes. The sidebar Settings panel must already be toggled open for the bottom panel to appear.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-24-at-1.04.55-PM.png?ssl=1\"><img /></a></p>\n<p>The Extended Settings panel slides up to reveal accordion toggles for plugins that have meta box settings available. The design could use some improvement, especially for navigating back to the post editor. The panel takes over the entire section. On installations with lots of legacy meta boxes it is easy to get lost in all the open/closed toggles.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-24-at-1.19.36-PM.png?ssl=1\"><img /></a></p>\n<p>Gutenberg design lead Tammie Lister said this is the first step towards supporting meta boxes and that there will be iterations to follow. She also warned that it is possible some advanced meta box uses will not work as expected. The Gutenberg team is eager to receive feedback on these cases and will work to find solutions for them. Testers who discover issues with meta box support can <a href=\"https://github.com/WordPress/gutenberg/issues/new\" rel=\"noopener\" target=\"_blank\">post an issue on GitHub</a> or via the plugin&#8217;s feedback form, describing the setup and how to reproduce what is breaking.</p>\n<p>Version 1.5 also adds <a href=\"https://github.com/WordPress/gutenberg/pull/3008\" rel=\"noopener\" target=\"_blank\">a new inserter button between blocks</a>, which Gutenberg engineer Matias Ventura demonstrated with an animated gif in the release post:</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/10/gutenberg-insert-between.gif?ssl=1\"><img /></a></p>\n<p>This release <a href=\"https://github.com/WordPress/gutenberg/pull/2887\" rel=\"noopener\" target=\"_blank\">adds a dropdown to the Publish button</a>. It currently supports visibility and post scheduling features.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-24-at-2.25.58-PM.png?ssl=1\"><img /></a></p>\n<p>There was a great deal of discussion on GitHub surrounding the UI for the publish button, whether it should be a split button dropdown or a single button that provides slightly more friction to prevent accidental publishing. The general consensus was that introducing a bit more friction is desirable, as contributor Davide Casali noted there are many cascading actions that are often tied to the Publish button:</p>\n<p>&#8220;Some automated publishing actions are irreversible: pings gets sent, emails get sent, Facebook and Twitter gets updates, etc.,&#8221; Casali said. &#8220;This is very very important for a lot of people and businesses, and nobody wants to send out such actions by accident.&#8221;</p>\n<p>Contributors are looking for feedback on this implementation and are willing to explore some alternate design options as well. They agreed that it is more important to make the Publish button area pluggable and to work on adapting it based on feedback.</p>\n<p>For those who want to completely disable Gutenberg, a new plugin called <a href=\"https://wordpress.org/plugins/classic-editor/\" rel=\"noopener\" target=\"_blank\">Classic Editor</a> is available on WordPress.org and ready for testing. It requires WordPress 4.9-beta2 or newer and Gutenberg version 1.5+. Classic Editor comes with two modes that give users the option to fully replace Gutenberg or allow access to both the old and new editors:</p>\n<ul>\n<li>Fully replaces the Gutenberg editor and restores the Edit Post template.</li>\n<li>Adds alternate “Edit” links to the Posts and Pages screens, on the toolbar at the top of the screen, and in the admin menu. Using these links will open the corresponding post or page in the Classic Editor.</li>\n</ul>\n<p>A setting for switching between the modes is available at Settings &raquo; Writing. Other plugins for turning Gutenberg off will likely pop up the closer the it gets to being included in core, but Classic Editor is the official one recommended by core contributors.</p>\n<p>The timeline for the merge proposal is not yet set in stone but the Gutenberg team aims to get it more widely tested before writing the proposal. The <a href=\"https://wordpress.org/plugins/gutenberg/\" rel=\"noopener\" target=\"_blank\">plugin</a> is currently active on approximately 3,000 WordPress sites.</p>\n<p>&#8220;The plan is to still have the plugin ready by December, but with holidays the actual merge proposal might be next year,&#8221; Tammie Lister said. &#8220;It’s important that we get as many users and as much feedback as possible at this point. All of that impacts what happens going forward.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 24 Oct 2017 20:51:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: Facebook is Testing a “Pay to Play” Requirement for Publishers in the News Feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75950\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wptavern.com/facebook-is-testing-a-pay-to-play-requirement-for-publishers-in-the-news-feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3179:\"<p>Last week Facebook began rolling out its new <a href=\"https://www.facebook.com/explore\" rel=\"noopener\" target=\"_blank\">Explore feed</a>, which is now available for users globally on both desktop and mobile. The new Explore feed encourages discovery by including posts from people and pages that the user doesn&#8217;t follow.</p>\n<p>Over the weekend, Filip Struhárik, a journalist and editor at <a href=\"https://dennikn.sk/\" rel=\"noopener\" target=\"_blank\">Denník N</a>, published data from sixty of the largest Slovak media pages that have experienced a <a href=\"https://medium.com/@filip_struharik/biggest-drop-in-organic-reach-weve-ever-seen-b2239323413\" rel=\"noopener\" target=\"_blank\">dramatic decrease in organic reach</a> as the result of Facebook moving Pages from the News feed into the Explore feed. Facebook representatives said this is a regional test the company is conducting in six smaller markets, including Bolivia, Cambodia, Guatemala, Serbia, Slovakia, and Sri Lanka. The main News feed in these areas includes only posts from friends and sponsors.</p>\n<p>Struhárik shared a chart that shows Slovak media pages having received 4x fewer interactions (likes, comments, shares) since the test began:</p>\n<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/10/slovak-media-pages.png?ssl=1\"><img /></a>Interactions on 60 of the largest Slovak media Facebook pages &#8211; Source: CrowdTangle\n<p>Adam Mosseri, head of News Feed at Facebook, has <a href=\"https://twitter.com/mosseri/status/922521929277497346\" rel=\"noopener\" target=\"_blank\">confirmed</a> that the experiment is limited to the six countries and the company does not plan to take roll it out globally.</p>\n<p>&#8220;It&#8217;s not global and there are no plans to be,&#8221; Mosseri said. &#8220;People often tell us they want more from friends so we&#8217;re testing two feeds, one for friend content and another dedicated to page content.&#8221;</p>\n<p>When asked how long the experiment will last, Mosseri said, &#8220;Likely months as it can take that long for people to adapt, but we&#8217;ll be looking to improve the experience in the meantime.&#8221;</p>\n<p>Nevertheless, the test has had a dramatic impact on traffic to publishers in the six markets where it is currently active. It has also given the rest of the world a preview of what a new &#8220;pay to play&#8221; requirement for Facebook&#8217;s main News feed might look like in the future.</p>\n<p>Limiting the main News feed to posts from friends and family and relocating content from Pages to the Explore feed would be a welcome change for users but bad news for publishers that depend on Facebook to drive referrals. The News Feed has increasingly become a never-ending pile of clickbait posts and ads that users have to sift through in order to see any meaningful content from friends.</p>\n<p>Pages and publishers have had to become highly active in marketing their content to compete with advertising. If Facebook&#8217;s split feed experiments turn out to be a success, publishers may need to allocate more resources to their advertising budgets if they want to maintain the same reach on the social network.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Oct 2017 22:33:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"WPTavern: Postman SMTP Plugin Forked after Removal from WordPress.org for Security Issues\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75870\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://wptavern.com/postman-smtp-plugin-forked-after-removal-from-wordpress-org-for-security-issues\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3997:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/post.jpg?ssl=1\"><img /></a>photo credit: <a href=\"https://stocksnap.io/photo/MSJNQ4EHZ2\">Jerry Kiesewetter</a>\n<p>In early October the popular <a href=\"https://wordpress.org/plugins/postman-smtp/\" rel=\"noopener\" target=\"_blank\">Postman SMTP</a> plugin was removed from WordPress.org due to security issues. The plugin had not been updated in two years and also contained <a href=\"https://www.pluginvulnerabilities.com/2017/06/29/reflected-cross-site-scripting-xss-vulnerability-in-postman-smtp/\" rel=\"noopener\" target=\"_blank\">a reflected cross-site scripting (XSS) vulnerability</a> that was made public in June and left unfixed. The security researcher&#8217;s attempts to contact the plugin&#8217;s author, Jason Hendriks, were unsuccessful.</p>\n<p>The plugin is used to improve the delivery of emails that WordPress generates and it logs the causes of failed emails to help eliminate configuration mistakes. It was installed on more than 100,000 sites before it was removed from WordPress.org.</p>\n<p>Yehuda Hassine, a WordPress developer and longtime user of the plugin, decided to fork it for the sake of its users and because he thought it was a shame to see all the the original author&#8217;s hard work go to waste.</p>\n<p>&#8220;As a fan of the amazing work Jason has done, I was amazed no one thought of taking it over,&#8221; Hassine said. &#8220;It&#8217;s a great plugin &#8211; Jason solved so many problems dealing with SMTP setup in WordPress. He worked so hard and the idea it might disappear shocked me. The plugin worked with almost zero bugs for the past two years.&#8221;</p>\n<p>Hassine&#8217;s fork <a href=\"https://github.com/yehudah/Postman-SMTP\" rel=\"noopener\" target=\"_blank\">started on GitHub</a> with fixes for the security issue, but he said he realized not having it on WordPress.org might be a problem for some users. He submitted it under a new name, <a href=\"https://wordpress.org/plugins/post-smtp/\" rel=\"noopener\" target=\"_blank\">Post SMTP Mailer/Email Log</a>, and included a patch for the security vulnerability along with fixes for a few bugs with the Gmail API, Mandrill, and SendGrid. The next item on his roadmap is to fix a few issues with PHP 7 compatibility.</p>\n<p>Hassine also requested to adopt the original plugin, as there is no way to contact the 100,000 users who depend on it. He said the WordPress.org plugin team denied his request at this time due to the number of users and his relative unfamiliarity in the community, as well as to give the original author more time to respond.</p>\n<p>The <a href=\"https://wordpress.org/plugins/post-smtp\" rel=\"noopener\" target=\"_blank\">Post SMTP Mailer/Email Log</a> fork has been alive for a week and already has more than 1,000 users. Hassine said he is spending his free time getting to know the SMTP protocol and Hendriks&#8217; original code. Postman SMTP users who want to switch to the fork can keep the same settings by simply deactivating the old plugin and activating the new one.</p>\n<p>Hassine has committed to keeping the plugin free, as many of its users are somewhat technical and able to offer each other support. He said if the fork becomes popular and more difficult to maintain, he will consider a commercial model for support.</p>\n<p>Users of the original Postman SMTP plugin had no way of learning about the reasons behind its disappearance except on third-party sites like the Wordfence blog or Facebook posts. The WordPress.org Meta team is currently working on <a href=\"https://meta.trac.wordpress.org/ticket/2627\" rel=\"noopener\" target=\"_blank\">developing a better way to communicate</a> why certain plugins have been closed or removed from the directory. This is a high priority ticket item for the team and a solution should be in place when <a href=\"https://meta.trac.wordpress.org/milestone/Plugin%20Directory%20v3.0\" rel=\"noopener\" target=\"_blank\">the next version of the plugin directory</a> goes live.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Oct 2017 16:07:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"WPTavern: Camp Press is Coming to Iceland April 19 – 22, 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75814\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wptavern.com/camp-press-is-coming-to-iceland-april-19-22-2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5906:\"<a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/10/northern-lights-volcano-huts.jpg?ssl=1\"><img /></a>photo credit: Jeroen Van Nieuwenhove\n<p>The next installment of Camp Press will be <a href=\"https://camp.press/event/camp-press-adventure-series/\" rel=\"noopener\" target=\"_blank\">held in Iceland</a> at the Volcano Huts located in Húsadalur Valley in the Þórsmörk Nature Reserve April 19 – April 22, 2018. It will be the first time a Camp Press event will be held in Europe.</p>\n<p>The Camp Press organization was founded to help attendees detox from digital life while spending time in nature and connecting with others in similar industries. It just wrapped up its first successful event in Oklahoma last month and the next planned event will be held in <a href=\"https://camp.press/event/camp-press-lonestar-2018/\" rel=\"noopener\" target=\"_blank\">Austin, Texas on the San Marcos River</a>, February 23-25, 2018. In a guest <a href=\"https://wptavern.com/camp-press-a-detox-from-digital-life\" rel=\"noopener\" target=\"_blank\">post</a> on the Tavern, Brad Williams, an attendee at the inaugural event, described how the unstructured, unplugged time led to deeper connections:</p>\n<blockquote><p>As we learned more about each other, we quickly became more comfortable as a group. We shared stories, laughed, cooked, and debated topics from tech to TV shows. We discussed very personal struggles and experiences, some of which I would guess haven’t been shared outside of close family. We sang songs around the campfire, performed late-night improv, made s’mores, and enjoyed each other’s company.</p></blockquote>\n<p><a href=\"https://camp.press/event/camp-press-adventure-series/\" rel=\"noopener\" target=\"_blank\">Camp Press Iceland</a> will include four days off-the-grid with the opportunity for hikes, campfires, swimming in a geothermal swimming hole, and tours of the area with minimal scheduling. Camp Press co-organizer Mendel Kurland said they chose the venue in Iceland because many people have the location on their bucket lists.</p>\n<p>&#8220;Helping geeks detox from technology and their job is important for mental health and their ability to get things done on a daily basis,&#8221; Kurland said. &#8220;Many of us also don&#8217;t want to completely let go of talking about tech, business, or what we&#8217;re working on. This gives people a chance to disconnect with other people who understand them, while marking an item off their bucket list.&#8221;</p>\n<p>Camp Press events are different from WordCamps in that they are for-profit events. In addition to ticket sales, the organization also accepts sponsorships on a per-event and annual basis. Pantheon, Dreamhost, and WPEngine joined as founding sponsors for the first event. Kurland said currently no money leaves the coffers to pay for the organizers&#8217; time and all money earned is re-invested back into the concept for hosting future events.</p>\n<p>Camp Press is also different in that it is a completely independent organization. Kurland and his co-organizers borrowed from both the WordCamp and Burning Man codes of conduct to create a <a href=\"https://camp.press/code-of-conduct/\" rel=\"noopener\" target=\"_blank\">code for Camp Press</a> that minimizes commercial interests and emphasizes inclusion, self-expression, and civic responsibility.</p>\n<p>&#8220;I&#8217;ve learned a lot from other organizers of WordCamps across the world &#8211; the struggles, the excitement, the fulfillment they enjoy,&#8221; Kurland said. &#8220;I didn&#8217;t consider the WordCamp model or foundation for this project. Independence from community politics is essential for this type of event. It&#8217;s important to have a separate objective space for connection and something that bridges between multiple communities as opposed to connected to one.&#8221;</p>\n<p>Kurland said this type of event excels in bringing together people from different professional backgrounds and ecosystems to collaborate.</p>\n<p>&#8220;Half are WordPress people, half aren&#8217;t,&#8221; he said. &#8220;So the opportunity to cross-pollinate and bring back awesome insights that are broader than your bubble is huge. There are a few ways this event bucks the trend. Right now we&#8217;re 60% female and 40% male for registration on the Iceland event.&#8221; The previous event hosted attendees from various professions, including graphic artists, authors, developers, and product company owners.</p>\n<p>Kurland said the Camp Press organization plans to offer a few more domestic US event this year, along with one or two European events. They are also planning on running trips to other exotic destinations in the future. Based on the demand the organizers have seen, they anticipate a lot of interest in future events and are considering hosting interest-focused camps.</p>\n<p>&#8220;Camp Press events will always be accessible to most and have enough activities to accommodate many interests,&#8221; Kurland said. &#8220;The next step will probably be helping companies to build out awesome experiences to gain deep insights regarding their team or client dynamics with this same type of event. We have also considered building experiences around other communities, i.e. doctors, scientists, teachers &#8211; people who need a break and have high stress jobs, but find it hard to disconnect.&#8221;</p>\n<p>Despite not being paid for his efforts in organizing the Camp Press events, Kurland said he finds a lot of personal fulfillment in participating that keeps him wanting to organize more in the future.</p>\n<p>&#8220;I need disconnection as much as the participants,&#8221; Kurland said. &#8220;So, for me, I get excited thinking about disconnecting and helping others shed their phone and laptop for a few days. It&#8217;s what has driven me to create these events, and I don&#8217;t see that drive dulling anytime soon.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Oct 2017 22:14:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:11:\"\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"HeroPress: Accepting Donations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://heropress.com/?p=2179\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://heropress.com/accepting-donations/#utm_source=rss&utm_medium=rss&utm_campaign=accepting-donations\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3631:\"<img width=\"960\" height=\"560\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/icons_logo_overlay-1024x597.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"HeroPress Logo laid over icons of contributors\" /><p>Over the years people have occasionally said, “You should have a donation form; I’d like to help support HeroPress”. Recently a particularly deep conversation convinced me that allowing people to take part financially is a different, broader way for others to contribute to HeroPress.</p>\n<p>Since HeroPress doesn’t exist without its contributors, I consulted them first and got a universal, resounding, “YES!”.</p>\n<p>So as of today you’ll find a “Donate” button in the menu at the top of the site.</p>\n<h3>What will donations be used for?</h3>\n<p>I’m glad you asked! A variety of things.</p>\n<p>First, I’ll have resources to sink back into the project. Hosting has been donated, but I’d like to be able to do things like pay Stacey to make banners for the older essays that don’t have them, continue to pay her to make new banners each week, and some other things similar to that.</p>\n<p>Second, I’d like to be able to visit WordCamps on behalf of HeroPress. Donations would allow me to set aside money to travel either to camps I’ve been invited to by previous contributors or to new areas and introduce them to the project.</p>\n<p>Lastly, it helps cover my time spent on HeroPress. This project is (and will continue to be) a labor of love, but it still eats up about 5 hours of my week that I’m not spending with my family. While the project isn’t in danger of disappearing, donations simply help share the weight of the project.</p>\n<h3>Where can I Give?</h3>\n<h2><a href=\"https://heropress.com/give/\">Right Here</a></h2>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Accepting Donations\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Accepting%20Donations&via=heropress&url=https%3A%2F%2Fheropress.com%2Faccepting-donations%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Accepting Donations\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Faccepting-donations%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Faccepting-donations%2F&title=Accepting+Donations\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Accepting Donations\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/accepting-donations/&media=https://heropress.com/wp-content/uploads/2017/10/icons_logo_overlay-150x150.jpg&description=Accepting Donations\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Accepting Donations\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/accepting-donations/\" title=\"Accepting Donations\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/accepting-donations/\">Accepting Donations</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Oct 2017 12:00:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: From Building WordPress Sites to Selling Plugins in One Year\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75888\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/from-building-wordpress-sites-to-selling-plugins-in-one-year\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:13261:\"<img />Katie Keith\n<p>This is a guest post written by <span class=\"st\"><a href=\"https://barn2.co.uk/team/katie-keith/\">Katie Keith</a>, co-founder of <a href=\"https://barn2.co.uk/\">Barn2 Media</a>. In this post, Keith shares the lessons she and her husband learned transitioning from client work to selling WordPress products in one year.<br />\n</span></p>\n<hr />\n<p>If you’ve ever dreamed of quitting client work and earning passive income by selling WordPress themes and plugins, you’re not alone. Selling products instead of providing services is the holy grail for many WordPress professionals.</p>\n<p>This is the story of how I switched from building websites to selling plugins in just one year. Along the way, I’ve made a lot of mistakes and learned some valuable lessons. Here’s how you can make the switch too.</p>\n<h2>Seven Years Building WordPress Websites</h2>\n<p>I co-founded UK WordPress studio Barn2 Media in late 2009 with my husband Andy. We had always wanted to work for ourselves, and felt that web design was the perfect way to combine our skills. (His background is in web development; mine is project management and marketing.)</p>\n<p>For the next seven years, we built the business by designing WordPress websites for clients, both in the UK and worldwide. We were successful and always had more work than we needed. However, from very early on, we both aspired to sell our own products instead of building websites for other people.</p>\n<h2>Our Transition Into A Plugin Business</h2>\n<p>Working with clients is great, and you get to know a lot of interesting people from different walks of life. But as a business owner, I found it frustrating to spend all of my time helping other people to build their business, with very little time to develop my own. I wanted to run a business where I could reap the rewards of my hard work. And that’s where products come in!</p>\n<p>In the early days of the business, we tried launching a few products in our spare time, without success. In 2016, we committed to transforming Barn2 Media into a premium plugins company.</p>\n<p>Within three months, we had launched two free plugins and a paid one. Within six months of our product focus, we were able to stop accepting new client work. Within a year, we had five premium plugins. Income from the plugin business overtook the original client business, and we haven’t looked back since.</p>\n<img />Plugin Sales Report\n<h2>Lesson #1: Commit by Any Means Necessary</h2>\n<p>A lot of WordPress professionals try to develop themes or plugins as a side business, alongside their client projects. Some have found success that way, but it’s much more difficult. I tried this in 2012-13, and failed miserably.</p>\n<p>In 2012, the WordPress themes industry was less mature and some fairly simple themes were seeing huge success. We wanted a piece of the pie, and started building a simple multipurpose theme.</p>\n<p>The reality of day-to-day client work made it difficult to commit much time to the theme. Before we knew it, a year had passed before we were ready to submit it to ThemeForest (our chosen marketplace due to the easy route to market). By then, the themes industry had changed and was dominated by much more advanced themes that we didn’t have the resources to compete with. The market had moved on, leaving us behind.</p>\n<p>When we started building plugins in early 2016, we learned from this mistake. Andy stopped designing websites for clients, and focused 100% on the plugins. I continued with some client projects, but dedicated 50% of my time to marketing.</p>\n<p>It was scary to intentionally limit our income by turning down client work &#8211; especially when there are bills for pay. Fortunately, the extra commitment was worth it. We made excellent progress and got our plugins to market quickly. This made all of the difference.</p>\n<p>If you want to build a successful theme or plugins business, commit as much time as possible to it &#8211; even if it means a short-term drop in income. You may still need to do some client work to pay the bills, but do the absolute minimum and don’t be afraid to say <strong>No</strong>. This will make you much likelier to succeed.</p>\n<h2>Lesson #2 &#8211; Go Niche, and Avoid Marketplace Fees</h2>\n<p>When we were developing a theme, we planned to sell it on ThemeForest because we’d struggle to achieve the same level of exposure ourselves. We knew we’d have to give away a huge percentage of our income in commission, but figured that it’s better to have a 50% of something than 100% of nothing.</p>\n<p>Since then, I’ve learned that you can have your cake and eat it too. The trick is to create niche products where you have a reasonable chance of getting the exposure you need.</p>\n<p>To illustrate this point, let’s look at our first plugin &#8211; <a href=\"https://barn2.co.uk/wordpress-plugins/woocommerce-password-protected-categories/\">WooCommerce Password Protected Categories</a>. It solves a very specific problem, and is about as niche as you can get! We could have sold it on a marketplace such as CodeCanyon, who would have priced it at about $25. After commission, we’d have received $12.50-$17.50 per sale.</p>\n<p>Instead, we decided to sell the plugin directly on our own website. After researching the cost of similar plugins, we set the price at $75.</p>\n<p>With those costs, it would only be worth using a marketplace if it would get 500% more sales. However, ‘WooCommerce password protected categories’ is a very niche keyword and quickly reached number one in Google.</p>\n<p>This put it directly in front of people who were looking for this solution. When I compare our sales figures with other plugins on CodeCanyon, I’m confident that we’ve had just as many sales from selling direct &#8211; with much higher revenue and profit margin.</p>\n<p>If you’re switching to plugin sales and don’t have a huge marketing budget, do your research and create niche plugins to meet a specific need. The WordPress market is so huge that there are plenty of people looking for solutions &#8211; even very niche ones.</p>\n<h2>Lesson #3 &#8211; Get Ideas From Your Clients</h2>\n<p>As a client-facing WordPress company, you’re in a unique position to know what your clients want. When a client requests a new feature for their website, you probably research suitable plugins. If you’ve ever failed to find a suitable plugin, you’ve found a potential gap in the market!</p>\n<p>This is how we ended up with our bestselling plugin. A client wanted a table listing all of their blog posts. We didn’t find any WordPress table plugins that could do this dynamically, so we developed a bespoke plugin for the client. Later, we released an <a href=\"https://en-gb.wordpress.org/plugins/posts-data-table/\">enhanced version</a> to the WordPress plugin repository.</p>\n<p>After launching the free table plugin, we immediately started getting requests from users wanting to list other WordPress post types in a table. We launched <a href=\"https://barn2.co.uk/wordpress-plugins/posts-table-pro/\">Posts Table Pro</a> as a premium plugin to solve this problem.</p>\n<p>Posts Table Pro was (and still is) quite popular, but we quickly discovered that a lot of our customers were using it to list WooCommerce products in a table. We received lots of requests for dedicated WooCommerce features such as Add to Cart buttons. In response, we developed <a href=\"https://barn2.co.uk/wordpress-plugins/woocommerce-product-table/\">WooCommerce Product Table</a> which has been hugely successful.</p>\n<img />Plugin Ideas\n<p>We never came up with the idea for a WooCommerce table plugin. It was a gradual journey that started with an unrelated request from a client.</p>\n<p>You can do the same. Use your web design clients as a starting point for finding gaps in the market. Go with the flow and evolve new ideas wherever you see demand. If you’re flexible, you can eventually end up with a bestselling plugin!</p>\n<h2>Lesson #4 &#8211; Focus on Professionalism</h2>\n<p>However good your plugins are, they will only sell if people trust you and are confident in buying from you. This is easy if you’re a big name and have a known brand. Unfortunately, we didn’t have those luxuries!</p>\n<p>Barn2 Media is well-known as a WordPress agency, but not as a plugin company. We had to work hard to reassure customers that we’re a professional company that they can safely buy from.</p>\n<p>Here’s how you can do the same:</p>\n<ul>\n<li>Ensure your overall website is professional and has the attention to detail that people will expect from your products.</li>\n<li>Add extra trust factors to your website, such as badges and logos.</li>\n<li>Create well designed sales pages with plenty of information such as screenshots and demo videos.</li>\n<li>Show customer reviews on the sales page. To get started, add a testimonial from one of your web design clients. Once more people are using your product, you can replace it with a full reviews section.</li>\n<li>Design a comprehensive demo site for your themes or plugins.</li>\n<li>Use well-known payment providers.</li>\n<li>Add an <a href=\"https://wptavern.com/more-than-50-of-web-traffic-is-now-encrypted\">SSL certificate</a>.</li>\n</ul>\n<p>These details definitely make a difference. Every time we’ve taken steps to make our website more professional, we’ve seen a big jump in sales. A lot of small theme and plugin companies fall at this hurdle and their products get lost behind an unprofessional website &#8211; don’t let the same happen to you.</p>\n<h2>Lesson #5 &#8211; Don’t Let Customer Support Overwhelm You<i></i></h2>\n<img />photo credit: <a href=\"http://www.flickr.com/photos/ironrodart/4154904299/\">IronRodArt &#8211; Royce Bair (&#8220;Star Shooter&#8221;)</a> &#8211; <a href=\"http://creativecommons.org/licenses/by-nc-nd/2.0/\">cc</a>\n<p>One of my biggest fears in switching to plugin sales was that customer support would be just as time-consuming as supporting clients. In our first few months of selling plugins, every sale seemed to demand a large amount of support. We couldn’t imagine how we would cope with a big increase in sales.</p>\n<p>We overcame this by designing every part of the plugin business in a way that would reduce the need for support:</p>\n<ul>\n<li>Build a searchable knowledge library for your documentation and FAQ’s. Make sure customers can only see the ‘Request Support’ link <i>after</i> searching the knowledge library.</li>\n<li>Create a confirmation email with clear setup instructions and links to the knowledge base.</li>\n<li>Add explanatory notes and links to the documentation to your settings pages.</li>\n<li>View every support request as a learning opportunity. How can you prevent other customers from asking the same question in future?</li>\n</ul>\n<p>It’s vital to provide excellent customer support, whether you do it yourself or outsource it. But there’s nothing wrong with helping customers to help themselves, so they’re unlikely to contact you in the first place. This lets us provide better support, build direct relationships with our customers, and constantly improve our plugins and documentation to reduce the need for support even further.</p>\n<p>We originally thought that we’d have to outsource plugin support. In the end, we managed to scale the plugin business to 200+ sales per month while still only spending an hour or two a day on support.</p>\n<h2>Lesson #6 &#8211; Your Old Clients Are A Safety Net, Not A Burden</h2>\n<p>If you’ve been designing websites for a while, then you probably have quite a few existing clients under your belt. It’s easy to see them as a distraction when you’re trying to focus on new goals. Instead, view them as an extra income stream that will provide financial security through your leap into the unknown.</p>\n<p>We host and maintain over 70 websites that we previously developed. We stopped taking on new clients over a year ago, but still take care of our original clients. This doesn’t take much of our time because the hosting and maintenance arrangements are already in place, and it’s easy to make small changes to websites we built ourselves.</p>\n<p>These websites were a lot of work to develop, but now provide a vital stream of passive income. This allowed us to stop taking on new clients more quickly while the income from the plugin business played catch-up. It’s also a safety net in case the plugin industry takes a downturn in the future.</p>\n<h2>Putting It Into Practice</h2>\n<p>After dreaming about it for so many years, I’m so proud that we finally made the transition from designing websites to selling plugins. It wasn’t easy, but when we fully committed to switching to plugins, everything came together and we haven’t looked back.</p>\n<p>When you’re <i>focused</i> on client projects, it’s hard to rise above the day-to-day grind and prioritize product development. Many people have written about the difficulties of starting a theme or plugin business, given the amount of competition and the maturity of the market. By following the lessons in this article, I believe that you can create a space for yourself and find the success you deserve.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 20 Oct 2017 05:08:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"WPTavern: AMP Project Turns 2,  Automattic Partners with Google to Improve WordPress Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75859\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:100:\"https://wptavern.com/amp-project-turns-2-automattic-partners-with-google-to-improve-wordpress-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8308:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-19-at-1.50.42-PM.png?ssl=1\"><img /></a></p>\n<p>Google&#8217;s <a href=\"https://www.ampproject.org/\" rel=\"noopener\" target=\"_blank\">AMP</a> (Accelerated Mobile Pages) project is two years old today and the company published <a href=\"https://amphtml.wordpress.com/2017/10/19/amp-two-years-of-user-first-webpages/\" rel=\"noopener\" target=\"_blank\">data</a> demonstrating its growing adoption across the web. More than 4 billion AMP pages have been published by 25 million domains. AMP performance has also increased and Google reports that the median time for loading AMP pages from its search engine is less than half a second.</p>\n<p>The AMP team also cited several examples of success for sites that have integrated AMP, along with an as yet unpublished Forrester Consulting Total Economic Impact<img src=\"https://s.w.org/images/core/emoji/2.3/72x72/2122.png\" alt=\"™\" class=\"wp-smiley\" /> study that linked AMP to a 10% increase in website traffic and a 2X increase in time spent on the page. The study, which was commissioned by Google, also showed that AMP pages on e-commerce sites have a 20% increase in sales conversions as compared to non-AMP pages.</p>\n<p>Google credited AMP&#8217;s 400+ code contributors and the 10,500 others who have engaged on GiHub, along with <a href=\"https://automattic.com/\" rel=\"noopener\" target=\"_blank\">Automattic</a>, one of the earliest publishing partners on the project:</p>\n<blockquote><p>We’re also seeing other organizations take an increasingly proactive role in supporting AMP. Automattic, for example, has been working with us to improve the quality of the WordPress plug-in over the past several months. In addition to strong adoption across the community, WordPress.com VIP clients like <a href=\"https://vip.wordpress.com/2017/10/19/happy-second-birthday-amp/\" rel=\"noopener\" target=\"_blank\">The New York Post and PMC have seen great results</a> with their implementations.</p></blockquote>\n<p>WordPress.com&#8217;s VIP team also <a href=\"https://vip.wordpress.com/2017/10/19/happy-second-birthday-amp/\" rel=\"noopener\" target=\"_blank\">published</a> specific instances where their clients have benefited from AMPing up their articles.</p>\n<p>&#8220;Across Automattic (including WordPress.com and VIP) hundreds of millions of client page views per month are delivered through AMP today,&#8221; WordPress.com VIP Strategic Partnerships director Tamara Sanderson said. &#8220;Over the last two years, many of our clients and partner agencies have customized and optimized the AMP experience for their particular needs, with impressive results.&#8221;</p>\n<h3>AMP WordPress Plugin Updated after 10 Months</h3>\n<p>Automattic updated its <a href=\"https://wordpress.org/plugins/amp/\" rel=\"noopener\" target=\"_blank\">AMP WordPress plugin</a> two months ago, but the average WordPress site owner doesn&#8217;t have the budget to customize and tweak it to achieve success. Users haven&#8217;t fared well with the open source plugin, which went for approximately 10 months without any updates. Many have encountered difficulties ranging from activation errors to  incompatibilities with other plugins, problems with analytics, and validation errors. Users also cannot get support on the WordPress.org forums and 0/39 support issues have been resolved in the past two months.</p>\n<p>Although there are several alternative plugins in the directory for implementing AMP on WordPress sites, Automattic, as a partner with Google on the AMP initiative, seems to the best positioned to author the official plugin with the company&#8217;s experience AMPing up pages at scale. Automattic is still committed to improving the plugin but users may need to hire a professional developer for AMP-related plugin support.</p>\n<p>Version 0.5, <a href=\"https://wordpress.org/plugins/amp/#developers\" rel=\"noopener\" target=\"_blank\">released in August 2017</a>, included just a handful of updates for having been 10 months in development. The release brought the plugin closer to the AMP spec, replaced fastimage with fasterimage for PHP 5.4+, and added support for new embed handlers, including Vimeo, SoundCloud, and Pinterest.</p>\n<h3>Automattic Aims to Work with Google to Push AMP to be more Open</h3>\n<p>Throughout the past year, AMP has come under fire from critics who believe that it is harmful to the open web. By default AMP forces users to load JavaScript from the AMP project site, loads the cached content from its own servers, and uses a subset of HTML that optimizes pages to benefit Google and Google search users.</p>\n<p>Many critics take issue with the fact that Google is incentivizing AMP&#8217;s use by prioritizing AMP pages in search results. It&#8217;s easy to forget that Google Search, with its overwhelmingly dominant market share among search engines, is not a public service to the world. It&#8217;s a company that seeks to make a profit. Can the AMP project be open enough to stay immune to Google&#8217;s drive for profit?</p>\n<p>WordPress.com was one of the first publishers to partner with Google on this initiative to speed up the mobile web. While attending WordCamp Europe 2017, I asked Automattic CEO Matt Mullenweg how AMP can be good for the open web, despite how much control publishers are required to yield when it comes to their mobile content. Mullenweg said that he sees pluses and minuses in what AMP currently provides to users.</p>\n<p>&#8220;The things I like about AMP is it removes a lot of cruft and it’s ultra-fast,&#8221; he said. &#8220;Now if I see an AMP link I’m more likely to click on that than other things. I know I’m not going to get some weird popup that redirects my browser to the app store or anything like that. I think that is good and necessary.&#8221; He also said he disliked a few of the downsides that critics bring up but thinks that those can be worked out in time.</p>\n<p>“WordPress was very early in adopting responsive pages,&#8221; Mullenweg said. &#8220;Also some plugins, including Jetpack, that do a mobile version of a site, do create a better experience and are a big reason why people have adopted WordPress in the past.</p>\n<p>&#8220;AMP is the next version of that. It is more open and standard than what we’ve done in the past and I could see it becoming a much more inclusive thing than it is. Given that that is one of Automattic’s core principles as well, we’re going to work with Google to try to push it that direction and try to bring a lot of the web along with it.</p>\n<p>&#8220;The alternatives out there, like say Facebook’s proprietary Instant Articles format, are not necessarily better, especially if they tie you into one form of monetization, like Facebook’s ads. So I do believe that AMP has the potential to be much more open and in line with WordPress’ ideal version of that, but it is imperfect as it stands today.”</p>\n<p>For now it seems Google considers AMP to be a success, as adoption has increased and the project is undoubtedly achieving its goal of improving performance for mobile pages. The company is working on delivering better, faster ads to users, as many publishers have experienced <a href=\"https://digiday.com/media/publishers-find-google-amp-loads-fast-ad-views/\" rel=\"noopener\" target=\"_blank\">decreased revenues associated with ads loading much slower than the actual content</a>.</p>\n<p>The project is still young and Google has a fine line to walk in order to deliver value without overstepping its reach. It may not be long before AMP support becomes Google&#8217;s the next official ranking signal. Site speed is already one of the search engine&#8217;s considerations in delivering traffic, so AMPed pages already influence which sites are featured in search results, which in turn affects ad performance and site monetization.</p>\n<p>For the average WordPress site owner, adding AMP support still requires overcoming a number of technical hurdles. With Automattic committed to supporting and improving the AMP experience for its VIP clients, it should not be long before the larger publishers and their agency partners are able to iron out more of the difficulties that have kept AMP integration from being seamless for all WordPress users.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 23:54:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"WPTavern: WooCommerce Stores on Track to Surpass $10B in Sales This Year\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75861\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wptavern.com/woocommerce-stores-on-track-to-surpass-10b-in-sales-this-year\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4585:\"<p>The third annual <a href=\"https://wooconf.com/\">WooConf</a>, the official conference for <a href=\"https://woocommerce.com/\">WooCommerce</a>, is underway today. It started off with a keynote by Todd Wilkens, Head of WooCommerce, providing an overview of the project&#8217;s accomplishments over the past year and a preview of what&#8217;s to come.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"und\" dir=\"ltr\"><a href=\"https://twitter.com/hashtag/wooconf?src=hash&ref_src=twsrc%5Etfw\">#wooconf</a> — <a href=\"https://twitter.com/WooCommerce?ref_src=twsrc%5Etfw\">@woocommerce</a> <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f60a.png\" alt=\"😊\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f44d.png\" alt=\"👍\" class=\"wp-smiley\" /> <a href=\"https://t.co/8l07LgLd1y\">pic.twitter.com/8l07LgLd1y</a></p>\n<p>&mdash; John Kent (@johnkentsf) <a href=\"https://twitter.com/johnkentsf/status/921054095120756737?ref_src=twsrc%5Etfw\">October 19, 2017</a></p></blockquote>\n<p></p>\n<p>When the crowd was asked to guess how much in sales WooCommerce stores would generate this year, guesses ranged from $10M to $1B. According to Wilkens, WooCommerce stores will collectively generate more than $10B in sales this year and says the figure could be as high as $15B. WooCommerce extension sales are expected to generate more than $30M.</p>\n<p>Wilkens thanked and acknowledged <a href=\"https://github.com/woocommerce/woocommerce/graphs/contributors\">the 616 contributors</a> working on the platform. He then outlined three distinct user segments the company is catering too: store builders, store owners, and extension developers. These user segments are causing the company to reorganize internally and are providing the focus for features going forward.</p>\n<p>WooCommerce is used by a lot of small-to-medium sized businesses but it&#8217;s also used by businesses that generate $100M or more per year. Wilkens profiled <a href=\"https://www.heb.com/\">H-E-B</a>, a large grocery retailer in Texas that uses WooCommerce for its sister company, <a href=\"http://centralmarket.com/\">Central Market</a>. WebDevStudios <a href=\"https://webdevstudios.com/portfolio/central-market/\">built the site</a> on WordPress and used WooCommerce to handle the company&#8217;s eCommerce needs.</p>\n<h2>Coming to A WooCommerce Near You</h2>\n<p>WooCommerce is making investments into its design and user experience with the insight of <a href=\"https://design.blog/2016/08/08/john-maeda/\">John Maeda</a>, the company&#8217;s Global Head of Computational Design and Inclusion. The company is also investing in user research, testing, interviews, feedback, and doing what they can to learn about its users needs.</p>\n<p>He acknowledged the hiccups users encountered when upgrading <a href=\"https://wptavern.com/woocommerce-3-0-brings-major-improvements-to-product-gallery-introduces-crud-classes-and-a-new-cli\">sites to WooCommerce 3.0</a> earlier this year and says the experience has placed a heavier emphasis to establish a reliable upgrade and maintenance path.</p>\n<p>WooCommerce will combine its affiliate program with WordPress.com so that everything is managed under one roof. As WooCommerce has improved, it has also developed closer ties to Jetpack and WordPress.com in order to provide additional services.</p>\n<p>Automattic has years of experience building and maintaining SaaS infrastructures. Instead of creating a separate infrastructure for WooCommerce, the team decided to leverage Automattic&#8217;s infrastructure with Jetpack. We&#8217;ll publish more about this relationship in a future article.</p>\n<p>WooCommerce will revamp its mobile application and is opening its marketplace to extension authors. Extension authors can expect higher commissions, more control, and better access to their customers. Authors will also be able to provide support to their own customers on the site.</p>\n<p>Earlier this year, WooCommerce <a href=\"https://wptavern.com/woocommerce-drops-50-renewal-discount-on-subscriptions\">dropped its 50% renewal discount</a> forcing customers to pay full-price without explicitly notifying them. Near the end of keynote, Wilkens provided context for the move saying it was about sustainability. Although comments on the article indicated that many customers were upset with the change, Wilkens says it has proven to be successful and has led to a substantial improvement in customer support.</p>\n<p>Those involved in the WooCommerce ecosystem can expect to see many more changes to both the website and platform in the coming months.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 22:30:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Dev Blog: WordPress 4.9 Beta 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4953\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3430:\"<p>WordPress 4.9 Beta 3 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"https://wordpress.org/wordpress-4.9-beta3.zip\">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.9, check out the <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> blog post. Since the Beta 1 release, we’ve made <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&mode=stop_on_copy&rev=41846&stop_rev=41777&limit=100&sfp_email=&sfph_mail=\">70 changes</a> in Beta 2 and <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&mode=stop_on_copy&rev=41938&stop_rev=41847&limit=100&sfp_email=&sfph_mail=\">92 changes</a> in Beta 3. A few of these newest changes to take note of in particular:</p>\n<ul>\n<li>The plugin/theme editors now show files in a scrollable expandable tree list. See <a href=\"https://core.trac.wordpress.org/ticket/24048\">#24048</a>.</li>\n<li>Backwards compatibility has been improved for MediaElement.js, which is upgraded from 2.2 to 4.2. See <a href=\"https://core.trac.wordpress.org/ticket/42189\">#42189</a>.</li>\n<li>When you create post stubs in the Customizer (such as for nav menu items, for the homepage or the posts page), if you then schedule your customized changes or save them as a draft, then these Customizer-created posts will appear in the admin as “Customization Drafts”; these drafts can be edited before your customized changes are published, at which time these posts (or pages) will also be automatically published. See <a href=\"https://core.trac.wordpress.org/ticket/42220\">#42220</a>.</li>\n<li>Theme browsing and installation experience in the Customizer has seen some bugfixes (e.g. <a href=\"https://core.trac.wordpress.org/ticket/42215\">#42215</a> and <a href=\"https://core.trac.wordpress.org/ticket/42212\">#42212</a>), with some known remaining issues outstanding <a href=\"https://core.trac.wordpress.org/ticket/42052\">in Safari</a>.</li>\n<li>There is now a callout on the dashboard to install and activate Gutenberg. See <a href=\"https://core.trac.wordpress.org/ticket/41316\">#41316</a>.</li>\n<li>Menus in the Customizer have seen additional usability improvements. See <a href=\"https://core.trac.wordpress.org/ticket/36279\">#36279</a> and <a href=\"https://core.trac.wordpress.org/ticket/42114\">#42114</a>.</li>\n</ul>\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</p>\n<p><i>Many refinements<br />\nExist within this release;<br />\nCan you find them all?</i></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 05:18:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Weston Ruter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:91:\"WPTavern: Google Chrome v62 Adds Support for OpenType Variable Fonts, Expands HTTP Warnings\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75829\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"https://wptavern.com/google-chrome-v62-adds-support-for-opentype-variable-fonts-expands-http-warnings\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4779:\"<p><a href=\"https://chromereleases.googleblog.com/2017/10/stable-channel-update-for-desktop.html\" rel=\"noopener\" target=\"_blank\">Google Chrome version 62 was pushed to the stable channel</a> for Windows, Mac, and Linux today and will be rolling out to users over the next few days. The browser is continuing to put the pressure on website owners to migrate to HTTPS. As expected from the roadmap laid out earlier this year, a &#8220;Not Secure&#8221; warning is now displayed when visitors land on an HTTP page that includes a form, as well as on all HTTP pages in Incognito mode.</p>\n<p>Previously, Chrome displayed the warning if it detected any forms on the page that transmit data such as passwords or credit card information. Version 62 shows the warning on all HTTP pages that include forms of any kind. This is another gradual step on the road to eventually showing the “Not secure” warning for all HTTP pages.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/http-page-warning.png?ssl=1\"><img /></a></p>\n<p>Chrome 62 also introduces support for <a href=\"https://medium.com/@tiro/https-medium-com-tiro-introducing-opentype-variable-fonts-12ba6cd2369\" rel=\"noopener\" target=\"_blank\">OpenType Variable Fonts</a>, a new technology that combines multiple font files into one compact file, delivering all variations of that font, including stretch, style, and weight. Developers can use the updated CSS properties to customize the font display and specify variations in its axis parameters using numeric values.</p>\n<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/variable-fonts.gif?ssl=1\"><img /></a>Animated Amstelvar and Decovar variable font examples &#8211; Image credit: <a href=\"https://blog.chromium.org/2017/09/chrome-62-beta-network-quality.html\">Chromium blog</a>\n<p>OpenType Variable Fonts is a collaborative effort <a href=\"https://www.microsoft.com/en-us/Typography/FontVariationsAnnouncement.aspx\" rel=\"noopener\" target=\"_blank\">led by Microsoft</a> that includes contribution from teams at Adobe, Apple, Google, and input from independent font and tool makers. Microsoft is calling it &#8220;the biggest enhancement to OpenType since the OpenType specification was first released nineteen years ago.&#8221; The company&#8217;s announcement, published in 2016, describes a few of the most important advantages of OpenType Variable Fonts:</p>\n<blockquote><p>OpenType Font Variations enables web site designers and application developers to deliver typographically rich experiences while using very little network bandwidth and small font files. Variable fonts will also give document creators a broad palette of typographic features without having to manage hundreds of font files. Variable fonts are all about doing more with less.</p></blockquote>\n<p>Last year, after OpenType Font Variations were added to version 1.8 of the OpenType font format specification, <a href=\"http://www.tiro.com/\" rel=\"noopener\" target=\"_blank\">Tiro Typeworks</a> co-founder John Hudson wrote an excellent <a href=\"https://medium.com/@tiro/https-medium-com-tiro-introducing-opentype-variable-fonts-12ba6cd2369\" rel=\"noopener\" target=\"_blank\">article</a> explaining how variable fonts work and their potential impact on typography in the future:</p>\n<blockquote><p>The potential for dynamic selection of custom instances within the variations design space — or design-variations space, to use its technical name — opens exciting prospects for fine tuning the typographic palette, and for new kinds of responsive typography that can adapt to best present dynamic content to a reader’s device, screen orientation, or even reading distance.</p></blockquote>\n<p>Variable fonts are currently in development for Microsoft Edge and the team is also working on a <a href=\"https://www.w3.org/TR/css-fonts-3/\" rel=\"noopener\" target=\"_blank\">formal proposal to add support to CSS</a>.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Just submitted the PR, should be live on the status site soon. Variable fonts are in development in <a href=\"https://twitter.com/MSEdgeDev?ref_src=twsrc%5Etfw\">@MSEdgeDev</a></p>\n<p>&mdash; Greg Whitworth (@gregwhitworth) <a href=\"https://twitter.com/gregwhitworth/status/914256194461687808?ref_src=twsrc%5Etfw\">September 30, 2017</a></p></blockquote>\n<p></p>\n<p>Chrome adding support for OpenType Font Variations puts the technology one step closer to becoming more widely adopted, which should improve performance for sites across the web. Google is also <a href=\"https://opensource.googleblog.com/2016/09/introducing-opentype-font-variations.html\" rel=\"noopener\" target=\"_blank\">working on bringing variable fonts to the Noto fonts project, Google Fonts, and other products</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 04:51:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"WPTavern: GoDaddy Launches New Managed WordPress Hosting Platform Aimed at Professionals\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75791\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:99:\"https://wptavern.com/godaddy-launches-new-managed-wordpress-hosting-platform-aimed-at-professionals\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4362:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2016/09/godaddy-logo.jpg?ssl=1\"><img /></a></p>\n<p>GoDaddy has expanded its managed WordPress hosting plans to include a new &#8220;<a href=\"https://www.godaddy.com/hosting/pro-wordpress-hosting\" rel=\"noopener\" target=\"_blank\">Pro WordPress</a>&#8221; platform with tools aimed at professionals who are hosting multiple sites. Although GoDaddy currently has 4 million customers running on WordPress, its more basic plans were not adequate for those who require additional tools to manage multiple sites and clients in one place.</p>\n<p>&#8220;Our new Managed WordPress platform is for WordPress professionals, which we’ve struggled to serve well in the past,&#8221;    GoDaddy&#8217;s Head of WordPress, Gabriel Mays, said. &#8220;We’re fixing that.&#8221;</p>\n<p>Pro WordPress, a product the company teased at WordCamp Europe 2017, uses PHP 7.1 as the default, Kubernetes container management, and gives each site isolated, dedicated resources. It also includes ManageWP premium tools (<a href=\"https://www.godaddy.com/pro/managewp?isc=cardigan\" rel=\"noopener\" target=\"_blank\">GoDaddy Pro Sites</a>), 90 days of backups powered by ManageWP, staging site environment, a Gravity Forms license, a library of 10,000+ free stock images, scanning and monitoring powered by Sucuri, and free SSL automatically installed on every site.</p>\n<p>GoDaddy&#8217;s new offering is aggressively priced at $10/month for one site and ranges to $99/month for 25 sites. Mays said that hosting millions of WordPress sites has allowed GoDaddy to gain economies of scale and pass on the savings to customers. For comparison, WP Engine&#8217;s personal plan <a href=\"https://wpengine.com/plans/\" rel=\"noopener\" target=\"_blank\">pricing</a> starts at $25/month for one site and $249/month for 25 sites. Flywheel&#8217;s bulk <a href=\"https://getflywheel.com/pricing/\" rel=\"noopener\" target=\"_blank\">pricing</a> starts at $92/month for 10 installs and $229/month for up to 30 sites. SiteGround is still somewhat of an outlier with unlimited installs for any of its <a href=\"https://www.siteground.com/wordpress-hosting.htm\" rel=\"noopener\" target=\"_blank\">bulk WordPress hosting plans</a>, which begin at $5.95/month and range to $11.95/month.</p>\n<p>&#8220;Our chief competitors are other hosts who serve Web Pros like WP Engine, SiteGround, and others,&#8221; Mays said. &#8220;We differentiate in performance, quality, and value. For example, while our competitors serve their products from a shared environment, we don’t. Our customers get a fully containerized environment with isolated resources. This delivers high performance and failover for high redundancy.&#8221;</p>\n<p>GoDaddy&#8217;s WordPress customer base continues to outpace the growth of the market. In 2016, roughly one third of all GoDaddy sites were running on WordPress, and half of all new sites were using the software. Over the past several years, GoDaddy has been working to overcome its poor reputation in the WordPress community. During that time, the company acquired several large WordPress-related products to boost its offerings in the space, including ManageWP (<a href=\"https://wptavern.com/godaddy-acquires-wordpress-site-management-service-managewp\" rel=\"noopener\" target=\"_blank\">September 2016</a>), WP Curve (<a href=\"https://wptavern.com/godaddy-acquires-wp-curve-aims-to-become-a-one-stop-shop-for-wordpress-professionals\" rel=\"noopener\" target=\"_blank\">December 2016</a>), and Sucuri (<a href=\"https://wptavern.com/godaddy-acquires-sucuri\" rel=\"noopener\" target=\"_blank\">March 2017)</a>.</p>\n<p>The acquisition of these products, as well as partnerships with Gravity Forms, Beaver Builder, and WP101, were all milestones in what Mays said is GoDaddy&#8217;s goal &#8211; to become &#8220;a one-stop shop for WordPress professionals.” The company continues to invest in the community by sponsoring WordCamps globally and supporting WordPress security team lead Aaron Campbell as a full-time core contributor.</p>\n<p>&#8220;Five years ago, GoDaddy wasn’t involved in the WordPress community; we were the mammoth host that made money off of WordPress without giving back,&#8221; Mays said. &#8220;We’ve made some big strides in changing that, and will continue to ramp up our commitment to the WordPress community.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Oct 2017 21:57:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"HeroPress: Be Brave and Trust Yourself\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2172\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:128:\"https://heropress.com/essays/be-brave-and-trust-yourself/#utm_source=rss&utm_medium=rss&utm_campaign=be-brave-and-trust-yourself\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11558:\"<img width=\"960\" height=\"480\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/101717-min-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: Choose to be brave and trust yourself.\" /><h3>Beginnings</h3>\n<p>I was born into a working-class family in Targoviste, a small town in Romania situated around 50 miles from the capital, Bucharest. My childhood was a normal one, mostly happy but marked negatively by the frequent conflicts between my parents.</p>\n<p>Growing up, they didn’t have much to offer to me and my brother. They struggled to give us as much as possible, and at the end, they did offer us quite a decent life, but all those shortages can be quite difficult to understand, especially for a child.</p>\n<p>“Why the other kids can have things that I don’t have?”</p>\n<p>“Why didn’t my parents gave me more?”</p>\n<p>I knew since then, part of the answer. They didn’t give me more because they didn’t have more, not because they didn’t want to. Thinking more about this, years later, I actually realized, that this whole situation was actually more of a blessing for me, and I am now really grateful for it.</p>\n<p>Why I’m saying this?</p>\n<p>Because not having everything gave me an incredible motivation to grow, overcome my situation, be creative and don’t ever give up on my dreams.</p>\n<h3>Facing the world</h3>\n<p>Wanting to do great things with my life, I always knew that staying in my small town forever is not an option.<br />\nSo, at 19, after finishing high school, I got admitted to Politehnica University of Bucharest, to study Computer Science. My brother was the one that convinced me to pursue this subject of study, as I wasn’t very sure on which path I should choose because I was not having enough self-confidence that I would be good at it, even though I always was better at this fields of study in school.</p>\n<p>I have to thank him for that.</p>\n<p>Going to University was by far the most important moment in my life at that time. It was hard but beautiful at the same time, the whole experience. At first, it was a total shock for me. Between all the big changes in my life, like leaving home for the first time, living in a college dorm with three new girls, taking care of myself and all that, school was not that easy anymore either. Even though I always liked studying and was one of the best students in my class, University was at a totally different level.</p>\n<blockquote><p>It was really difficult to adjust, as I started to think again that maybe I wasn’t good enough for this, that it’s not something I can do, and I should give up.</p></blockquote>\n<p>Luckily I didn’t do that, and with lots of work, in time, I managed to adapt and eventually finish the University with both a Bachelor’s degree and Master’s degree in Computer Science.</p>\n<p>From my second year at University, I started thinking seriously that I should start working. I always wanted to have financial independence, as I also knew deep down, how difficult it would be for my parents to sustain me over the course of the next years of study. So, I started to search for jobs. I had so little self-confidence that I thought that nobody will ever hire me, so I took the first job offer that I received.</p>\n<p>I started to work part-time as a junior web developer at a small IT company. Looking back at that time, I can’t say I learned much there, as the company itself and the people in charge of it were not very interested in teaching me something or giving me interesting projects, so I could evolve professionally. And this was not happening just for me. Months later I realized this was their thing. They were mostly hiring students, paying them very small salaries and in some ways taking advantages of them. For example, in my case, they didn’t make me a contract even after 6 months there, even though they promised me that since day one. So, I was working illegally all that time, with no paid taxes, with a salary of just 90$ a month.</p>\n<p>But considering all this, I’m honestly happy I’ve had the chance to work there. I didn’t have the chance to learn much programming there, but I learned other valuable things that helped me through my life. All I’ve experienced that time, gave me a much more sense of what the world really is. And it made me realize that I want more, that I deserve more. There had to be something better out there.</p>\n<p>Plus, there is where I met my fiance <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /></p>\n<h3>Finding my way</h3>\n<p>I started to search for a new job and lucky enough, in a couple of days I started working at Codeinwp.com. At that time, it was a really small agency, in a tiny office, with only two other employees besides me. We were all kind of the same age, students with no money, no major work ( or as a matter of fact, even life ) experience but with big ambitions. It was obvious for me, from the start, that this was a very different company than the one where I’ve worked before. I got my contract signed in the first two days, I got payed better, I got interesting projects to work on, I got people helping me learn.</p>\n<a href=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/img_1.jpg\"><img class=\"wp-image-2173\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/img_1.jpg\" alt=\"Rodica at WordCamp\" width=\"300\" height=\"450\" /></a>WordCamp Europe 2017 Paris, The Afterparty\n<p>And I got something that I didn’t know existed in other companies. I got freedom and trust. Lots of trust.</p>\n<p>The company is co-founded by Ionut Neagu, who was at that moment living in France. And he was running the business from there, miles away from us, not knowing what we’re doing all the time. I don’t think many people would be able to do this. And do it successfully.</p>\n<p>I also think that part of his success in running this business is his way of being, as he is genuinely one of the most generous and kind-hearted people I’ve met. Always there for everyone.</p>\n<h3>The Breakthrough</h3>\n<p>The first couple of years in the company were a bit tough, especially for Ionut, as he had to always find new projects and customers to make sure we are making enough money to sustain us all. At that time, I didn’t realized that, but now I understand how difficult it was for him sometimes, and I appreciate him more.</p>\n<blockquote><p>Here is where I also first encountered WordPress. It was a new concept, not just for me, but for the other guys too. And we started to learn it, step by step, project by project. And it changed our lives.</p></blockquote>\n<p>In 2014, the whole company made a risky change, that proved, in time, to be a great choice. We launched Themeisle.com, a marketplace for our own WordPress themes and plugins, and also launched Zerif Lite, that gradually became one of the most popular themes on the wordpress.org repository. Currently is used by more than 100.000 users.</p>\n<p>The road was not an easy one, but 5 years later, almost 500,000 people in the world are using our products. I still can’t believe that so many people are influenced by something that I’ve done. Always thought that is difficult for a common man to have an impact on the world. But I had an impact too, in my own way.</p>\n<h3>Discovering The World</h3>\n<p>The first time I visited a foreign country was in 2014, at WordCamp Europe in Sofia, Bulgaria. I remember it like yesterday. It was so exciting for me. Though, I don’t think I’ve realized, at that time, the true meaning and dimensions of a WordCamp and all the great things happening in the community. I think I was too amazed of just having the opportunity to travel. But this was not going to stop here.</p>\n<p>We got the chance to travel to all major WordCamps in Europe, and discovered the joy of participating as volunteers too ( and organizers now too).</p>\n<blockquote><p>I’ve met so many great people, from all around the globe, I’ve learned so much from all the different cultures.</p></blockquote>\n<a href=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/img_2.jpg\"><img class=\"wp-image-2175 size-medium\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/img_2-300x200.jpg\" alt=\"ThemeIsle Team\" width=\"300\" height=\"200\" /></a>Part of the team at WordCamp Europe 2017\n<p>And last year, I’ve got the chance to go somewhere I’ve never imagine going. We went to New York, and joined WordCamp US in Philadelphia. It was such an amazing experience for which I’m so grateful, and hope everyone can have this kind of opportunities.</p>\n<h3>In Conclusion</h3>\n<p>I’m so proud of being part of the WordPress community and part of the ThemeIsle team. It’s so rewarding to start working in a small company and see it grow, alongside you. To see it flourish, starting from almost nothing and reaching success, after many challenges and obstacles along the way. As cheesy as it may sound, it’s almost like seeing your child grow and fulfill his dreams.</p>\n<p>And as I mostly struggled thinking I wasn’t better enough at the beginning of my life, all these experiences made me realize that you just have to work for your dreams, don’t ever give up, and realize that always, even though somebody will be better than you, you are better than others. It’s important the direction you choose to look at.</p>\n<p>So choose to be brave and trust yourself.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Be Brave and Trust Yourself\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Be%20Brave%20and%20Trust%20Yourself&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbe-brave-and-trust-yourself%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Be Brave and Trust Yourself\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fbe-brave-and-trust-yourself%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbe-brave-and-trust-yourself%2F&title=Be+Brave+and+Trust+Yourself\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Be Brave and Trust Yourself\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/be-brave-and-trust-yourself/&media=https://heropress.com/wp-content/uploads/2017/10/101717-min-150x150.jpg&description=Be Brave and Trust Yourself\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Be Brave and Trust Yourself\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/be-brave-and-trust-yourself/\" title=\"Be Brave and Trust Yourself\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/be-brave-and-trust-yourself/\">Be Brave and Trust Yourself</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 18 Oct 2017 05:00:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Rodica Andronache\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"WPTavern: Medium Opens Partner Program, Allows Anyone to Publish Behind Its $5 Paywall\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75602\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wptavern.com/medium-opens-partner-program-allows-anyone-to-publish-behind-its-5-paywall\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:11215:\"<p>In March 2017, Medium <a href=\"https://wptavern.com/medium-aims-to-fix-broken-media-with-new-5-subscription-program\" rel=\"noopener\" target=\"_blank\">scrapped its previous ad-driven revenue model</a> to become a publisher of premium, subscription-based content. The company launched a new $5 subscription program and gave a select group of writers and publications the ability to publish articles behind a paywall inside its network. Medium&#8217;s invitation-only Partner Program <a href=\"https://blog.medium.com/expanding-the-medium-partner-program-3be09dd146e4\" rel=\"noopener\" target=\"_blank\">launched in August</a> but has now been expanded to include any author or publisher who wants to publish behind the paywall.</p>\n<p>&#8220;Starting today, anyone can enroll in our Partner Program and earn money based on the depth and value they provide to members, not the fleeting attention they deliver to advertisers,&#8221; Medium CEO Ev Williams said. &#8220;Along with that, we add stories from the world’s best publishers and seamlessly combine it all in an ad-free, personalized experience. The end goal is to offer the world&#8217;s best source for important stories and ideas.&#8221;</p>\n<p>Authors are rewarded based on engagement with their posts, as measured by the number of &#8220;clap&#8221; reactions a post receives via the network&#8217;s new <a href=\"https://blog.medium.com/show-authors-more-%EF%B8%8F-with-s-c1652279ba01\" rel=\"noopener\" target=\"_blank\">applause button</a>. Readers can clap multiple times and the system evaluates claps on a per-user basis, tracking the number of claps a reader assigns relative to the number of claps that individual typically sends. Subscribers will have their membership fees allocated to different authors based the claps they have given to posts behind the paywall.</p>\n<p>Medium quickly changed its &#8220;no access&#8221; paywall to a &#8220;metered&#8221; one after launching with a small group of publishers. This means that members can still read a limited number of locked stories each month before hitting the wall. The idea behind this move, according to Sam Duboff, Medium&#8217;s head of product marketing, is to give paywalled posts exposure to a wider audience while still paying content creators, instead of having articles simply get buried due to lack of exposure.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">with our metered paywall, we\'re hoping to enable both reach &amp; $$. also lots of great writers haven\'t joined b/c they can be paid elsewhere.</p>\n<p>&mdash; Sam Duboff (@duboff) <a href=\"https://twitter.com/duboff/status/909849467859345408?ref_src=twsrc%5Etfw\">September 18, 2017</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Perhaps, but note the paywall is (now) metered, a la NYT, so free readers can still access (w/login)</p>\n<p>&mdash; Ev Williams (@ev) <a href=\"https://twitter.com/ev/status/900067262031290368?ref_src=twsrc%5Etfw\">August 22, 2017</a></p></blockquote>\n<p></p>\n<p>Some authors have posted publicly about their earnings and Medium representatives told <a href=\"https://techcrunch.com/2017/10/10/medium-opens-up-its-partner-program-allowing-anyone-to-publish-behind-its-paywall/\" rel=\"noopener\" target=\"_blank\">TechCrunch</a> that 83% of those who published paywalled stories received payments during the month of September with payments averaging $93.65. The largest payment for a single author was $2,279.12 and the largest payment for a single publication was $1,466.68. It&#8217;s too soon to see the effects of opening up the partner program to anyone who wants to participate, but Medium&#8217;s membership fees will need to stretch further to accommodate all the claps for newly paywalled content.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">update on my <a href=\"https://twitter.com/Medium?ref_src=twsrc%5Etfw\">@Medium</a> partner program testing -&gt; $113.91<a href=\"https://twitter.com/hashtag/MakeItClap?src=hash&ref_src=twsrc%5Etfw\">#MakeItClap</a> <a href=\"https://t.co/6nW2fqQppy\">pic.twitter.com/6nW2fqQppy</a></p>\n<p>&mdash; <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f468-1f3fb-200d-1f4bb.png\" alt=\"👨🏻‍💻\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f3e2.png\" alt=\"🏢\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.3/72x72/2600.png\" alt=\"☀\" class=\"wp-smiley\" /> (@hunterwalk) <a href=\"https://twitter.com/hunterwalk/status/910619420614987776?ref_src=twsrc%5Etfw\">September 20, 2017</a></p></blockquote>\n<p></p>\n<p>Non-subscribing readers were not enthused with the paywall when it first launched. With the number of Partner Program participants going up, there are bound to be more links to paywalled content floating around social media.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Stop posting links to paid posts, or at least include “Paywall” “Premium” “Subscriber Only”, ANYTHING! Create a Medium Premium handle maybe?</p>\n<p>&mdash; Branden Bytes (@BrandenBytes) <a href=\"https://twitter.com/BrandenBytes/status/914134301616300032?ref_src=twsrc%5Etfw\">September 30, 2017</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">click the <a href=\"https://twitter.com/Medium?ref_src=twsrc%5Etfw\">@Medium</a> article link to see it is behind the paywall. Close the page and move on. That may teach people not to click at all ;)</p>\n<p>&mdash; Denys Vuika (@DenysVuika) <a href=\"https://twitter.com/DenysVuika/status/914086021230456834?ref_src=twsrc%5Etfw\">September 30, 2017</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Muted <a href=\"https://twitter.com/Medium?ref_src=twsrc%5Etfw\">@Medium</a> for a month. Maybe after that they’ll stop tweeting paywall’ed articles.</p>\n<p>&mdash; spooky<img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f383.png\" alt=\"🎃\" class=\"wp-smiley\" />watermelon (@smartwatermelon) <a href=\"https://twitter.com/smartwatermelon/status/911399338462420992?ref_src=twsrc%5Etfw\">September 23, 2017</a></p></blockquote>\n<p></p>\n<p>Readers are finding, however, that they are frequently encountering articles behind Medium&#8217;s paywall that are already available for free elsewhere. This is because Medium&#8217;s membership also includes curated selections from from The New York Times, The Financial Times, The Economist, CNN, Fast Company, and other publications to supplement original content created by those within the Medium ecosystem. The experience of finding otherwise free content behind Medium&#8217;s paywall seems to be confusing for non-subscribers and is ultimately driving readers back to independent publishers.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">New routine: See interesting <a href=\"https://twitter.com/Medium?ref_src=twsrc%5Etfw\">@medium</a> tweet, see it\'s behind their paywall, search headline in google, find original piece, read article.</p>\n<p>&mdash; Matt Deegan (@matt) <a href=\"https://twitter.com/matt/status/911954101042376705?ref_src=twsrc%5Etfw\">September 24, 2017</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Why is Medium taking all these <a href=\"https://twitter.com/vulture?ref_src=twsrc%5Etfw\">@vulture</a> posts and putting them behind a paywall?? <a href=\"https://t.co/bb28b6gCdQ\">https://t.co/bb28b6gCdQ</a></p>\n<p>&mdash; Lizzie Ellis (@lizmeister321) <a href=\"https://twitter.com/lizmeister321/status/912346466437468163?ref_src=twsrc%5Etfw\">September 25, 2017</a></p></blockquote>\n<p></p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">1) great piece <br />2) this is a 2011 article free on <a href=\"https://twitter.com/TheAtlantic?ref_src=twsrc%5Etfw\">@TheAtlantic</a> <a href=\"https://t.co/e12B6wHLO4\">https://t.co/e12B6wHLO4</a> but behind paywall on <a href=\"https://twitter.com/Medium?ref_src=twsrc%5Etfw\">@Medium</a> <a href=\"https://t.co/vOQcfhVqoK\">https://t.co/vOQcfhVqoK</a></p>\n<p>&mdash; JD (@jarroddicker) <a href=\"https://twitter.com/jarroddicker/status/915541246936002572?ref_src=twsrc%5Etfw\">October 4, 2017</a></p></blockquote>\n<p></p>\n<p>In a post titled &#8220;<a href=\"https://blog.medium.com/words-still-matter-6e9163216052\" rel=\"noopener\" target=\"_blank\">Words Still Matter</a>,&#8221; Williams once again described the broken ad-driven model and the attention economy it fuels. After failing to find success with this model, Medium has repackaged itself as a publisher of subscription-based content and aims to throw a wide net by calling its partner program &#8220;<a href=\"http://medium.com/creators\" rel=\"noopener\" target=\"_blank\">the internet’s first open paywall</a>.&#8221;</p>\n<p>&#8220;And while many publishers are looking towards subscriptions as an alternative to the deleterious effects of ads (a move we support for everyone), Medium is the only &#8216;open paywall&#8217; for thoughtful content on the internet,&#8221; Williams said. &#8220;Which means, we tap into the ideas and expertise of thousands of the smartest minds on the planet — many of whom made Medium what it is today — to bring fresh perspectives to Medium members.&#8221;</p>\n<p>Despite setting out to create “a different, bolder approach,” as Williams called it earlier this year, the company has landed on a cheap paywall that is open to any content creator. Putting content behind a paywall isn&#8217;t a good strategy for individuals or businesses that depend on their products and ideas getting maximum exposure. It&#8217;s also <a href=\"https://wptavern.com/publishers-are-moving-back-to-wordpress-after-short-experiments-with-medium\" rel=\"noopener\" target=\"_blank\">not a sustainable model for larger publishers</a>, several of which Medium had wooed to its platform before suddenly shifting its business strategy.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Our medium publication gets a ton of traffic, but feels shitty to paywall it to make $12 bucks. I don’t get this model.</p>\n<p>&mdash; Erik Flowers (@erik_flowers) <a href=\"https://twitter.com/erik_flowers/status/911364373167300608?ref_src=twsrc%5Etfw\">September 22, 2017</a></p></blockquote>\n<p></p>\n<p>Opening up the partner program is the next step in Medium&#8217;s continued experimentation with monetizing its users&#8217; content. If the company cannot substantially increase its subscriber base to properly pay all the authors who will soon be paywalling unlimited amounts of content, it will need to pivot yet again after its users have spent their efforts building an audience inside the Medium paywall.</p>\n<p>&#8220;These are just the early days of what we consider a grand experiment,&#8221; Williams said after expanding the parnter program in August. &#8220;Imagine a day when anyone with the skills and willingness to put in the effort can write something useful, insightful, or moving and be compensated based on its value to others. There is a lot we need to figure out to make this work right. But we are convinced that by joining forces, we can make a new economic model for quality content. We hope you’ll join us in this experiment.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 17 Oct 2017 04:51:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"WPTavern: Bear App Users Want WordPress Publishing Integration\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=71864\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wptavern.com/bear-app-users-want-wordpress-publishing-integration\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7003:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/06/Screen-Shot-2017-10-08-at-10.50.16-PM.png?ssl=1\"><img /></a></p>\n<p>Ever since the demise of <a href=\"http://codex.wordpress.org/Version_3.2\" rel=\"noopener\" target=\"_blank\">WordPress&#8217; old distraction-free writing mode</a>, users have been forced to look elsewhere for a truly zen writing experience. Gutenberg&#8217;s current design trajectory doesn&#8217;t seem to be putting it on track for delivering the minimalist writing environment that many writers crave. The project has a lot of publishing and design-related functionality to account for in its UI, but I am hopeful that the plugin ecosystem will offer extensions that pare Gutenberg back to just the essentials for writing.</p>\n<p>In the meantime, those in search of a minimalist writing experience have found it in dedicated writing apps like iA Writer, Ulysses, WriteRoom, OmmWriter, and others. The <a href=\"http://www.bear-writer.com/\" rel=\"noopener\" target=\"_blank\">Bear app</a>, a newcomer launched in 2016, is a rising favorite that works on iPhone, iPad, and Mac. Although somewhat better known as a note-taking app, Bear&#8217;s beautiful writing experience won the app a <a href=\"https://blog.bear-writer.com/thank-you-yes-you-for-our-2017-apple-design-award-1b13e702ee91\" rel=\"noopener\" target=\"_blank\">2017 Apple Design Award</a>.</p>\n<p>Bear blends the best features of a note-taking app with a writing app. Users can turn on Focus Mode using the bottom right icon, which hides the sidebar and note list to provide a more minimal writing space. Bear saves users&#8217; writing in real-time, offers in-line support for images, and syntax highlighting for 20+ programming languages. There are no distractions while the user is composing, as the editor instantly displays rich previews. It&#8217;s easy to see why Bear has become an instant favorite.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/06/Screen-Shot-2017-10-13-at-12.29.28-PM.png?ssl=1\"><img /></a></p>\n<p>Many Bear users still have the need to publish their writings to the web, a capability that the app doesn&#8217;t currently support. Naturally, a WordPress export or &#8220;Publish to WordPress&#8221; option is one of the most often requested features. However, <a href=\"http://www.shinyfrog.net/\" rel=\"noopener\" target=\"_blank\">Shiny Frog</a>, the company behind the Bear app, is not yet working on publishing features.</p>\n<p>&#8220;Medium and WordPress publishing features are on our todo list, but not on top priority right now,&#8221; Shiny Frog co-founder Danilo Bonardi <a href=\"http://help.shinyfrog.net/discussions/bear/2477-export-to-wordpress\" rel=\"noopener\" target=\"_blank\">said</a> when I asked last November about the company&#8217;s plans to support a WordPress export option.</p>\n<p>Other users have also posted to the app&#8217;s <a href=\"http://help.shinyfrog.net/\" rel=\"noopener\" target=\"_blank\">support forum</a> and its <a href=\"https://www.reddit.com/r/bearapp/\" rel=\"noopener\" target=\"_blank\">subreddit</a>, asking for WordPress integration:</p>\n<blockquote><p>I&#8217;m really enjoying using Bear for my writing, and the newer features are great, but I&#8217;m trying to get started with my own blog and more as I am developing my own business and being able to export to WordPress would be incredibly helpful for me going forward.</p></blockquote>\n<blockquote><p>This is the one feature that would allow me to switch from Ulysses.</p></blockquote>\n<blockquote><p>With Ulysses going to a (more expensive) subscription, the time seems right for Bear to offer a &#8220;publish to WordPress&#8221; feature that could match what Ulysses offers. This is about the only thing holding Bear back for me.</p></blockquote>\n<blockquote><p>I&#8217;m currently deciding between Bear and Ulysses, and right now the dealbreaker is Ulysses&#8217;s ability to push to WordPress. If you were able to build that functionality, it would seal the deal!</p></blockquote>\n<p>Bonardi <a href=\"https://www.reddit.com/r/bearapp/comments/6z9qum/feature_request_medium_integration/dmurk7m/\" rel=\"noopener\" target=\"_blank\">confirmed</a> again, as recently as last month, that the company is still keeping a tight focus and has not yet prioritized publishing to WordPress.</p>\n<p>&#8220;Publishing features have been asked before and we will address them sooner or later,&#8221; Bonardi said. &#8220;Our hopes are to integrate Bear with Medium/WordPress apps instead of implementing our own publishing tool with their APIs. Using their APIs is the other solution but in this scenario we have to build a specific UI for this functionality instead of relying on external apps.&#8221;</p>\n<p>In the meantime, Bear App support staff recommends using the Markdown export option, available in the free version. Additional export options, including HTML, are available Bear&#8217;s $14.99 per year Pro version, which is much more affordable than pricey competitors like <a href=\"https://ulyssesapp.com/\" rel=\"noopener\" target=\"_blank\">Ulysses</a> and others that cater specifically to long-form writing.</p>\n<p>Quadro also has an <a href=\"https://www.quadro.me/themes/unleash-the-bear\" rel=\"noopener\" target=\"_blank\">option to share Bear notes to both Medium and WordPress</a>. However, it&#8217;s not an official Bear utility and the workflow is rather complicated to set up. Users who have tried this option didn&#8217;t find it to save time over simply copying and pasting.</p>\n<h3>WordPress Needs Its Own Beautiful Writing Experience</h3>\n<p>WordPress publishing support for Bear doesn&#8217;t seem to be a major priority for the company at this time, but splitting up the writing and publishing process is a deal breaker for many who want a simple workflow that doesn’t involve copying and pasting between apps.</p>\n<p>Alternatively, what if WordPress could be known for its beautiful writing experience in core, without a user having to resort to plugins or third-party apps to get there? This seems like a reasonable expectation for Gutenberg, but the project has the added challenge of incorporating a lot of publishing, media, and legacy functionality into its UI in a way that is easily discoverable.</p>\n<p>Unfortunately, this has resulted in an interface that is constantly popping into view. With the right combination of clicks and hovers, a user can end up in situation like the one shown below in the screenshot &#8211; surrounded by formatting options and icons on all sides.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/06/Screen-Shot-2017-10-13-at-1.22.21-PM.png?ssl=1\"><img /></a></p>\n<p>Making it easy to publish to the web, which is WordPress&#8217; forte, isn&#8217;t as compelling if users have to look elsewhere to find a truly distraction-free writing experience.  Fortunately, minimalist writing apps like Bear can fill the gap until the WordPress plugin ecosystem can produce an interface where writing is a delight.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Oct 2017 22:17:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"WPTavern: WordPress 4.9 Protects Users From Fatal Errors Created in the Theme and Plugin Editors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75725\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://wptavern.com/wordpress-4-9-protects-users-from-fatal-errors-created-in-the-theme-and-plugin-editors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1923:\"<p>Over the years, there have been many discussions and debates on whether or not WordPress should have a built-in file editor for themes and plugins. The file editors, while convenient, allow users to easily trigger fatal errors that can be difficult to fix, especially if they don&#8217;t have FTP access.</p>\n<p>Instead of removing the editors from core, the WordPress development team has enhanced them by adding fatal error protection in WordPress 4.9. When a user accesses the theme or plugin editor for the first time, they&#8217;re presented with the following warnings. The warnings are a result of a <a href=\"https://core.trac.wordpress.org/ticket/31779\">three-year-old trac ticket</a>.</p>\n<img />Plugin Editor Warning\n<img />Theme Editor Warning\n<p>If you try to save changes to a file and WordPress detects a fatal error, the change is not saved and a warning message is displayed that explains where the error occurred. Although the changes are rolled back, the code in the editor is not replaced with the original. To replace the code, simply refresh the browser tab.</p>\n<img />Fatal Error Detected\n<p>In addition to safety features, the code editors are powered by <a href=\"https://codemirror.net/\">CodeMirror</a>, an open-source, JavaScript powered text editor that adds features such as line numbers. The plugin editor includes the ability to look up documentation for filters, hooks, and actions with many of the links pointing to the new <a href=\"https://developer.wordpress.org/\">WordPress Developers Resource</a> site.</p>\n<p>Even with the addition of CodeMirror in core, the file editors in WordPress are not a replacement for an integrated development environment. However, the warnings and fatal error protection are huge improvements that will prevent many users from creating a <a href=\"https://codex.wordpress.org/Common_WordPress_Errors\">White Screen of Death</a> situation on their sites.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 13 Oct 2017 21:25:31 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: GitHub Launches New Dependency Graph Feature with Security Alerts Coming Soon\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75675\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wptavern.com/github-launches-new-dependency-graph-feature-with-security-alerts-coming-soon\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2930:\"<p>GitHub announced a new <a href=\"https://help.github.com/articles/listing-the-packages-that-a-repository-depends-on/\" rel=\"noopener\" target=\"_blank\">Dependency Graph</a> feature at the Github Universe conference yesterday. It lists all the dependencies for a repository and will soon identify known vulnerabilities. The graph can be accessed under the Insights tab and currently supports Ruby and JavaScript dependencies with Python coming soon.</p>\n<p>Public repositories display the graph by default and private repository owners also have the option to enable it. Below is a screenshot of <a href=\"https://github.com/WordPress/gutenberg/network/dependencies\" rel=\"noopener\" target=\"_blank\">Gutenberg&#8217;s dependency graph</a>:</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-12-at-11.30.42-AM-e1507825905511.png?ssl=1\"><img /></a></p>\n<p>GitHub plans to extend dependency graphs to show security alerts when one of the dependencies is using a version that is publicly known to be vulnerable to a security issue. The alerts may also in some cases be able to suggest a security fix. Security alerts for dependencies is the first among a collection of security tools that GitHub has planned to release.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/10/dependency-graph.gif?ssl=1\"><img /></a></p>\n<p>The dependency graph isn&#8217;t yet as useful as it could be for many PHP-based WordPress projects, but GitHub&#8217;s decision to start with support for JavaScript and Ruby dependencies is in line with the data the company collected from repositories. JavaScript and Ruby are among the top four most popular languages on GitHub, as measured by the number of pull requests. JavaScript is by far the most popular and PHP isn&#8217;t too far behind Ruby, according to stats from the <a href=\"https://octoverse.github.com/\" rel=\"noopener\" target=\"_blank\">State of the Octoverse 2017</a>.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-12-at-12.35.41-PM-e1507830673184.png?ssl=1\"><img /></a></p>\n<p>GitHub is also launching new efforts to connect its massive community. The company reported 24 million developers working across 67 million repositories in 2017. The new community features are aimed at helping developers make meaningful connections in the vast sea of repositories on the platform. Users will notice a new “Discover Repositories” feed in their dashboards that makes recommendations based on their starred repositories and the people they follow.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-12-at-12.15.45-PM.png?ssl=1\"><img /></a></p>\n<p>GitHub has also launched a new curated <a href=\"https://github.com/explore\" rel=\"noopener\" target=\"_blank\">Explore</a> section to help users browse open source projects, topics, events, and resources.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2017 18:56:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Dev Blog: WordPress 4.9 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4946\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1626:\"<p>WordPress 4.9 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"https://wordpress.org/wordpress-4.9-beta2.zip\">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.9, check out the <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> blog post. Since then, we’ve made <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&mode=stop_on_copy&rev=41846&stop_rev=41777&limit=100&sfp_email=&sfph_mail=\">70 changes</a> in Beta 2.</p>\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</p>\n<p><em>Let’s test all of these:</em><br />\n<em>code editing, theme switches,</em><br />\n<em>widgets, scheduling.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2017 06:29:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Mel Choyce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"WPTavern: WordPress Replaces Browserify with Webpack for Build Process\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75656\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wptavern.com/wordpress-replaces-browserify-with-webpack-for-build-process\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1898:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-11-at-6.51.54-PM.png?ssl=1\"><img /></a></p>\n<p>During a core <a href=\"https://make.wordpress.org/core/2017/05/24/javascript-chat-summary-for-may-23rd/\" rel=\"noopener\" target=\"_blank\">JavaScript chat held in May</a>, WordPress contributors agreed on using <a href=\"https://webpack.js.org/\" rel=\"noopener\" target=\"_blank\">Webpack</a> (and ES6 imports)  instead of Browserify for JavaScript bundling in the build process.</p>\n<p>&#8220;Since we split the media files in <a href=\"https://core.trac.wordpress.org/ticket/28510\" rel=\"noopener\" target=\"_blank\">#28510</a>, the core build process has used Browserify to combine the media files,&#8221; Adam Silverstein said in the <a href=\"https://core.trac.wordpress.org/ticket/40894\" rel=\"noopener\" target=\"_blank\">ticket</a> proposing the replacement. &#8220;While browserify has served us well, Webpack is probably a better long term choice for the project, especially with the introduction of a new JavaScript framework that may require a build.&#8221;</p>\n<p>Over the past four months contributors on the ticket have worked on making sure the Webpack setup is working well to build the files. WordPress core committer K. Adam White also reached out to some Webpack contributors for an additional review during the process before replacing Browserify as the JavaScript bundler.</p>\n<p>Webpack has rapidly gained popularity among the many utilities for bundling JavaScript files and is one of the most prominent examples of a project that has successfully found a sustainable source of funding through its account on <a href=\"https://opencollective.com/webpack\" rel=\"noopener\" target=\"_blank\">Open Collective</a>. The project funded its first full-time developer through the platform and has an estimated annual budget of $241,650, based on current donations.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Oct 2017 23:58:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"WPTavern: WPWeekly Episode 291 – All Hands on Deck on The Ship of Theseus\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=75663&preview=true&preview_id=75663\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wptavern.com/wpweekly-episode-291-all-hands-on-deck-on-the-ship-of-theseus\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2463:\"<p>In this episode, <a href=\"https://jjj.blog/\">John James Jacoby</a> and I discuss the news of the week including DonateWC sponsoring its first recipient to WordCamp Cape Town, WordPress 4.9 Beta 1, and WooCommerce 3.2. We also have a bit of fun with Poopy.life and blurt out a few crappy puns. Last but not least, we dissect Matías Ventura&#8217;s vision of Gutenberg.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">WordPress 4.9 Beta 1 Released</a><br />\n<a href=\"https://woocommerce.wordpress.com/2017/10/11/woocommerce-3-2/\">WooCommerce 3.2 Released </a><br />\n<a href=\"https://wptavern.com/wooconf-2017-livestream-tickets-now-on-sale\">WooConf 2017 Livestream Tickets Now on Sale</a><br />\n<a href=\"https://wptavern.com/gutenberg-engineer-matias-ventura-unpacks-the-vision-for-gutenblocks-front-end-editing-and-the-future-of-wordpress-themes\">Gutenberg Engineer Matías Ventura Unpacks the Vision for Gutenblocks, Front-End Editing, and the Future of WordPress Themes</a><br />\n<a href=\"https://wptavern.com/poopy-life-launches-pro-version-at-wpsandbox-io-aimed-at-theme-and-plugin-developers\">Poopy.life Launches Pro Version at WPsandbox.io Aimed at Theme and Plugin Developers</a><br />\n<a href=\"https://wptavern.com/disqus-data-breach-affects-17-5-million-accounts\">Disqus Data Breach Affects 17.5 Million Accounts</a><br />\n<a href=\"https://donatewc.org/sponsorship-recipients/were-sending-a-speaker-to-wordcamp-cape-town/\">We’re sending a speaker to WordCamp Cape Town</a><br />\n<a href=\"https://wptavern.com/gitlab-raises-20-million-series-c-round-adds-matt-mullenweg-to-board-of-directors\">GitLab Raises $20 Million Series C Round, Adds Matt Mullenweg to Board of Directors</a></p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, October 18th 3:00 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\" target=\"_blank\" rel=\"noopener\">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href=\"https://wptavern.com/feed/podcast\" target=\"_blank\" rel=\"noopener\">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\" target=\"_blank\" rel=\"noopener\">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #291:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Oct 2017 23:10:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:121:\"WPTavern: WooCommerce 3.2 Adds Ability to Apply Coupons in the Admin, Introduces Pre-Update Version Checks for Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75637\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:131:\"https://wptavern.com/woocommerce-3-2-adds-ability-to-apply-coupons-in-the-admin-introduces-pre-update-version-checks-for-extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4252:\"<p><a href=\"https://woocommerce.wordpress.com/2017/10/11/woocommerce-3-2/\" rel=\"noopener\" target=\"_blank\">WooCommerce 3.2</a> has arrived a week ahead of the plugin&#8217;s upcoming <a href=\"https://wptavern.com/seattle-to-host-wooconf-2017-in-october-conference-to-focus-on-developers\" rel=\"noopener\" target=\"_blank\">WooConf Developers Conference</a> in Seattle. The release went into beta at the end of August and an extra week was added to the RC testing phase to give store owners and extension developers ample opportunity to prepare for the update.</p>\n<p>Version 3.2 adds the ability for administrators to apply coupons to existing orders in the backend of the store. This feature was <a href=\"http://ideas.woocommerce.com/forums/133476-woocommerce/suggestions/3867647-ability-to-apply-coupons-manually-when-manually-ad\" rel=\"noopener\" target=\"_blank\">requested on the WooCommerce ideas board</a> four years ago and had received 374 votes for consideration.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/woocommerce-apply-coupon.png?ssl=1\"><img /></a></p>\n<p>WooCommerce will now automatically re-calculate the order total after applying the coupon and the same in reverse if a coupon is removed. Although it seems like a small improvement, implementing it without breaking extensions was a fairly complex endeavor for the WooCommerce team.</p>\n<p>&#8220;This was tricky to develop because of the way the cart and coupons were built initially, so some refactoring was needed, but we tried to implement these changes in a backwards compatible manner so extensions wouldn’t require changes,&#8221; WooCommerce lead developer Mike Jolley said.</p>\n<h3>WooCommerce 3.2 Adds Extension Support Version Checks Prior to Core Updates</h3>\n<p>One of the most exciting new features in 3.2 is support for a new plugin header that extension developers can use to specify which versions of WooCommerce have been tested and confirmed to be compatible. This information will be displayed to users in the plugin update screen when future WooCommerce core updates become available.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/woocommerce-extensions-version-checks.png?ssl=1\"><img /></a></p>\n<p>These warnings save time for store owners by identifying extensions that need further research and testing before applying a core update. It makes it easier for admins to confidently update their installations without having to worry about extensions breaking. After a few more major releases of the plugin, it will be interesting to see how this new system improves updates overall and how other plugins with their own ecosystems of extensions might be able to benefit from something similar.</p>\n<p>Version 3.2 also brings improved accessibility for select boxes, updates to the new store setup wizard, a new “resend” option on the edit order page, and a host of admin UI enhancements that make it easier to manage products and extensions.</p>\n<h3>WooCommerce.com Adds New Subscription Sharing Feature</h3>\n<p>Customers who have purchased extensions from WooCommerce.com can now take advantage of a new <a href=\"https://docs.woocommerce.com/document/managing-woocommerce-com-subscriptions/#section-11\" rel=\"noopener\" target=\"_blank\">subscription sharing feature</a> that allows them to specify additional sites (via WooCommerce.com email address) where they want the extension/key to be active. This is especially useful for agencies, developers, and multisite store owners who can now grant the use of an extension without having to connect their own accounts to client sites. The original purchaser of the extension will be the one billed for the subscription and can revoke access for connected sites at any time.</p>\n<p>WooCommerce 3.2 had <a href=\"https://github.com/woocommerce/woocommerce/compare/3.1.2...3.2.0\" rel=\"noopener\" target=\"_blank\">1610 commits</a> from 98 contributors. Currently, 47% of installs are still on 3.1 but that number should go down as store owners start updating to the latest. The WooCommerce team reports that all changes should be backwards compatible with 3.0 and 3.1 sites, but site owners will still want to test their extensions before applying the 3.2 update.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Oct 2017 19:07:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"HeroPress: Queer Woman In Tech … In A Bowtie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2144\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:120:\"https://heropress.com/essays/queer-woman-tech-bowtie/#utm_source=rss&utm_medium=rss&utm_campaign=queer-woman-tech-bowtie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7663:\"<img width=\"960\" height=\"480\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/101117-min-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I have found the WordPress Community the most diverse and accepting space for our beautiful, vast array of queer individuals in tech, period.\" /><p>Did you know there are still several states in the US where employers can fire me for being gay? Legislation and protections have improved in the past several years, but there are still large gaps throughout the United States for queer and trans people. In addition, I hear horror stories of toxic workplaces that my LGBTQ+ friends have endured and/or have pushed them out of a job due to not feeling safe. I have been incredibly lucky to have a career full of supportive companies where I have felt safe and accepted. But I also have another big thing that has helped me for over 13 years: WordPress.</p>\n<h3>A Little History</h3>\n<p>Back when I was in high school in the mid nineties, I was fortunate enough to have access to a computer that connected to this new “internet” thing. This was in 1996 when we had to call the internet. I remember vividly spending nights browsing all these “homepages” of people—even people that were my age—from all over the world. One night I thought, “One day I want to make one of these…” I literally stopped mid thought and decided that I was just going to start right that instant. I signed up for a free Angelfire account using my mom’s email address, and was off and running. Angelfire gave you an advanced option of a code editor, so I copied and pasted and poked and prodded code all summer.</p>\n<blockquote><p>As a result, I taught myself a good chunk of HTML by creating some of the ugliest pages in internet history.</p></blockquote>\n<p>But that started me on a path that I would never look back from. I saw such great potential in connecting with others using this whole “World Wide Web” thing I had just discovered.</p>\n<h3>A Web Log</h3>\n<p>Fast forward some years into college and the dawn of the 2000’s when this crazy idea of sharing a journal on the internet started. Web logs—later termed “blogs”—started popping up left and right. I hopped on board with a blogger.com blog almost exactly 17 years ago (10/19/00), then moved to this blogging platform known as b2 just about a year later. Some may recognize this, because b2 by cafelog was the codebase forked to create the first WordPress. So technically, I’ve been using WordPress since before it was WordPress.</p>\n<h3>Creating Community</h3>\n<p>Back when blogging first became a thing, commenting systems weren’t developed yet, so it was more like just shouting into space wondering if anyone was listening. But people were. Some of us added message boards to our sites.</p>\n<blockquote><p>Conversations happened, connections were made and communities started to form. Some of these connections are still some of my close friends today.</p></blockquote>\n<p>We share a special bond because we all kind of learned the internet together. These created communities also helped me feel less like an outcast and gave me hope that I wasn’t the only one that felt out of place like I did. People’s blogs were vulnerable glimpses into their lives and hardships, really helping me see I was not alone and even helping me face some of my own struggles. Back then I didn’t realize I was gay, but I did feel strangely out of place in so many parts of my life.</p>\n<h3>Coming Out</h3>\n<p>In my late 20’s I finally realized, accepted and came out to myself that I was a lesbian. For many years following I stumbled around a lot to find my true expression and identity. Not to mention shed—and recover from—the many external pressures that were forcing me into a completely fabricated heteronormative “box” that I did not fit. It took well into my 30’s to find my comfort zone as an androgynous/masculine of center expressing, gay woman. With that, my outward expression and style creates a daily “coming out” to everyone I meet… or at the very least, draws attention to me when in midwestern heteronormative spaces. Thus, putting me a bit more at risk of being targeted for being queer.</p>\n<h3>And now back to WordPress</h3>\n<p>Back to the subject at hand, how does all this relate to WordPress? Throughout this whole journey of self discovery, I was continually using and learning WordPress as well. By the time I had come out, I had learned enough about working with WordPress templates to create custom websites. This gave me the tools to create my own job if I ever lost my full time employment, or would find myself in a toxic, unhealthy—or even dangerous—working environment.</p>\n<blockquote><p>WordPress became my ticket to being self sufficient and confident in my career.</p></blockquote>\n<p>On top of it all, I have found the WordPress community the most diverse and accepting space for our beautiful, vast array of queer individuals in tech, period. This made the decision to join in the WordPress community an easy and safe choice. I had not seen many people like me at tech-related events before, let alone speaking at one. But WordCamps have given me the ability to be that gay woman in a bowtie speaking at the front of the room that I had not seen represented before. And that I can do that without fear is priceless! WordPress and this wonderful community has helped me feel more confident in who I am as a web creator, but more importantly, a person.</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: Queer Woman In Tech &#8230; In A Bowtie\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=Queer%20Woman%20In%20Tech%20%26%238230%3B%20In%20A%20Bowtie&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fqueer-woman-tech-bowtie%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: Queer Woman In Tech &#8230; In A Bowtie\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fqueer-woman-tech-bowtie%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fqueer-woman-tech-bowtie%2F&title=Queer+Woman+In+Tech+%26%238230%3B+In+A+Bowtie\" rel=\"nofollow\" target=\"_blank\" title=\"Share: Queer Woman In Tech &#8230; In A Bowtie\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/queer-woman-tech-bowtie/&media=https://heropress.com/wp-content/uploads/2017/10/101117-min-150x150.jpg&description=Queer Woman In Tech ... In A Bowtie\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: Queer Woman In Tech &#8230; In A Bowtie\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/queer-woman-tech-bowtie/\" title=\"Queer Woman In Tech &#8230; In A Bowtie\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/queer-woman-tech-bowtie/\">Queer Woman In Tech &#8230; In A Bowtie</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Oct 2017 12:00:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Tracy Apps\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WPTavern: Gutenberg 1.4 Adds HTML Mode for Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75581\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"https://wptavern.com/gutenberg-1-4-adds-html-mode-for-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3429:\"<p><a href=\"https://make.wordpress.org/core/2017/10/10/whats-new-in-gutenberg-october-10th/\" rel=\"noopener\" target=\"_blank\">Gutenberg 1.4</a> was released today with a new feature that allows users to <a href=\"https://github.com/WordPress/gutenberg/pull/2797\" rel=\"noopener\" target=\"_blank\">edit HTML on a per-block basis</a>. HTML mode can be triggered by toggling the ellipsis menu and selecting the HTML icon. This will switch the block between visual and text mode, without having to switch the entire document into text mode.</p>\n<p><img src=\"https://i1.wp.com/cldup.com/ghvzrEw2wk.gif?w=627&ssl=1\" /></p>\n<p>Contributors debated on whether or not to place the HTML button in the quick toolbar or to add the button to the side of the block. Eventually, they landed on putting the trash icon, the cog settings, and this new HTML mode under an ellipsis.</p>\n<p>Gutenberg testers will also notice that version 1.4 <a href=\"https://github.com/WordPress/gutenberg/pull/2878\" rel=\"noopener\" target=\"_blank\">redesigns the editor&#8217;s header</a>, grouping content actions to the left and post actions to the right.</p>\n<p>This release adds the initial REST API infrastructure for reusable global blocks, an idea Matias Ventura <a href=\"https://github.com/WordPress/gutenberg/issues/1516\" rel=\"noopener\" target=\"_blank\">proposed</a> several months ago. The <a href=\"https://github.com/WordPress/gutenberg/pull/2503\" rel=\"noopener\" target=\"_blank\">pull request</a> was created by new Gutenberg contributor Robert Anderson, a web and mobile developer at Tumblr. It is based on the technical details that Weston Ruter <a href=\"https://github.com/WordPress/gutenberg/issues/2081\" rel=\"noopener\" target=\"_blank\">outlined</a> for creating dynamic reusable blocks. Anderson highlighted a few examples of what this infrastructure will eventually enable for users:</p>\n<ul>\n<li>Convert a block into a reusable block, and give it a name</li>\n<li>Convert a reusable block back into a regular block</li>\n<li>Edit a reusable block within a post and have the changes appear across all posts</li>\n<li>Insert an existing reusable block into a post</li>\n<li>Delete an existing reusable block</li>\n</ul>\n<p>Anderson said the next step is adding a core/reusable-block block to the editor that can be rendered and edited, followed by a UI for adding, deleting, attaching, and detaching reusable blocks.</p>\n<p>Gutenberg 1.4 will now <a href=\"https://github.com/WordPress/gutenberg/pull/2877\" rel=\"noopener\" target=\"_blank\">show a users&#8217; most frequently used blocks</a> when hovering over the inserter. If the editor doesn&#8217;t have enough usage data, it will display the paragraph and image blocks by default.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-10-at-10.49.18-PM.png?ssl=1\"><img /></a></p>\n<p>Version 1.3 of the plugin introduced <a href=\"https://wptavern.com/gutenberg-1-3-adds-new-feedback-option-for-plugin-testers\" rel=\"noopener\" target=\"_blank\">a new feedback option for testers</a> with a link in the Gutenberg sidebar menu. Ventura reported that the team has received 12 responses so far, which included four bugs and two proposed enhancements. Check out the full <a href=\"https://make.wordpress.org/core/2017/10/10/whats-new-in-gutenberg-october-10th/\" rel=\"noopener\" target=\"_blank\">changelog for 1.4</a> for more details on what&#8217;s new in the latest beta release.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 11 Oct 2017 04:57:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: GitLab Raises $20 Million Series C Round, Adds Matt Mullenweg to Board of Directors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75476\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"https://wptavern.com/gitlab-raises-20-million-series-c-round-adds-matt-mullenweg-to-board-of-directors\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6213:\"<p><a href=\"https://about.gitlab.com/\" rel=\"noopener\" target=\"_blank\">GitLab</a> celebrated its <a href=\"https://gitlab.com/gitlab-org/gitlab-ce/commit/9ba1224867665844b117fa037e1465bb706b3685\" rel=\"noopener\" target=\"_blank\">sixth anniversary as an open source project</a> yesterday and <a href=\"https://about.gitlab.com/2017/10/09/gitlab-raises-20-million-to-complete-devops/\" rel=\"noopener\" target=\"_blank\">announced</a> a $20 million Series C round of funding led by <a href=\"https://www.gv.com/team/dave-munichiello/\" rel=\"noopener\" target=\"_blank\">GV General Partner Dave Munichiello</a>. The company&#8217;s CEO Sid Sijbrandij joined Municheiello with guest hosts, Adam Stacoviak and Jerod Santo from The Changelog podcast, for the <a href=\"https://www.youtube.com/watch?v=5dhjw-TT964\" rel=\"noopener\" target=\"_blank\">GitLab live event</a> that aired yesterday.</p>\n<p>&#8220;When we think about investing, we want to be involved in the fastest-growing companies in the world,&#8221; Munichiello said. &#8220;We think about that a little differently than most firms in that we are looking for looking for dev-focused tools. We think software will disrupt the enterprises of the future and so we think the best tools that help enable and empower the best software teams will become enormous companies over time. We&#8217;re certainly seeing that with GitLab.&#8221;</p>\n<p>Munichiello said he favors investing in open source because it is &#8220;the most secure and the best software in the world.&#8221; Although GitLab is a much smaller company than its more prominent rivals GitHub and Bitbucket, it currently dominates the self-hosted Git market with its open source tools. GitLab is used by 100,000 organizations and customers include NASA, the Nasdaq Stock Market, Sony Corp, Comcast, Bayer, among many other large companies.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-10-at-11.50.49-AM.png?ssl=1\"><img /></a></p>\n<p>In addition to the $20 million in funding, the company also announced that it has appointed Matt Mullenweg to its board of directors.</p>\n<p>&#8220;I&#8217;m very excited to announce that Matt Mullenweg, the CEO of Automattic and founder of WordPress decided to join our board,&#8221; Sid Sijbrandij said. &#8220;He&#8217;s a leading figure on how to think about open source and how to build a business on that and a remote-only work culture.&#8221; Sijbrandij said GitLab&#8217;s board of directors sets the tone for what the company is allowed to spend its money on, how it approaches the balance between open source and closed source, and the features that the team decides to make money with.</p>\n<p>&#8220;GitLab’s powerful momentum and scaling have a lot of parallels to Automattic and WordPress in their early days,&#8221; Mullenweg said. &#8220;WordPress had to battle a lot of competitors, and ultimately came out on top as a successful company on an open source business model. I hope to help GitLab achieve the same triumph. Fundamentally, I want to help create the kind of internet that I want to live in and I want my children to live in, one that reaches a global audience and one that is able to make a difference.&#8221;</p>\n<p>Mullenweg also said he was impressed with GitLab&#8217;s transparency and how the company shares many of its internal documents, whether it&#8217;s a sales manual or employee onboarding information. GitLab, which employees nearly 200 people, also shares a similar work culture to Automattic, as 100% of the team works remotely.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">“Not only being ahead in terms of transparency, GitLab is exciting for me bc I think distributed work is the future of work.” &#8211;<a href=\"https://twitter.com/photomatt?ref_src=twsrc%5Etfw\">@photomatt</a> <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f4bb.png\" alt=\"💻\" class=\"wp-smiley\" /><img src=\"https://s.w.org/images/core/emoji/2.3/72x72/2728.png\" alt=\"✨\" class=\"wp-smiley\" /></p>\n<p>&mdash; GitLab (@gitlab) <a href=\"https://twitter.com/gitlab/status/917441432847376385?ref_src=twsrc%5Etfw\">October 9, 2017</a></p></blockquote>\n<p></p>\n<p>When asked if there is anything down the line for collaboration between GitLab and WordPress, Mullenweg said, &#8220;It&#8217;s definitely something on our minds. Core WordPress is still Trac and Subversion, so I think that it&#8217;s not our top priority this year, but in the future it&#8217;s definitely on the radar.&#8221;</p>\n<p>GitLab started with basic version control and an issues tracker. Last year  the company announced its first master plan to make GitLab a complete developer solution, which it completed in December 2016. Sijbrandij said the company is aiming to deliver a complete DevOps solution in 2018, a set of tools that unifies the development and operations work into a single user experience.</p>\n<p>GitLab has been working towards the goal of supporting the complete DevOps lifecycle by adding tools for application performance monitoring and server monitoring. This enables developers and operations managers to keep tabs on code after it is deployed, while using a single user interface, the same tools, and one permissions model.</p>\n<p>&#8220;It used to be that development and operations were separate parts in a company and they had their own tools and those tools were different,&#8221; Sijbrandij said. &#8220;You needed different expertise to operate them. Now devops aims to align and integrate those groups. What happens is people took the tools from two different departments and tried to glue them together. They duck taped the tools together. That&#8217;s what you see in traditional devops &#8211; the glue between the traditional developer tools and the traditional operating tools, and it&#8217;s not a very good experience. We want to take the complete set of tooling we have for development and extend it all the way to operations, so it&#8217;s about creating a single application that does both.&#8221;</p>\n<p>Check out the recording of the GitLab live event below for a more in-depth explanation of Sijbrandij&#8217;s vision for creating a complete DevOps solution in 2018.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Oct 2017 18:55:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"WPTavern: WordPress 4.9 Adds Scheduling, Drafts, and Front-End Preview Links to the Customizer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75276\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/wordpress-4-9-adds-scheduling-drafts-and-front-end-preview-links-to-the-customizer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2012:\"<p>While <a href=\"https://wptavern.com/wordpress-4-8-evans-released-featuring-nearby-wordpress-events-new-media-widgets-and-link-boundaries\">WordPress 4.8</a> focused on adding new widgets, visual improvements to links in the text editor, and a new dashboard widget that displays nearby events, WordPress 4.9 places a heavy emphasis on customization.</p>\n<p>In WordPress 4.9, the Customizer has a new publish button with options to publish, save draft, or schedule changes. Edits made via the Customizer are called changesets that have status&#8217; similar to posts. These improvements were incorporated from the <a href=\"https://wordpress.org/plugins/customize-snapshots/\">Customize Snapshots</a> and <a href=\"https://wordpress.org/plugins/customize-posts/\">Customize Posts</a> feature plugins.</p>\n<img />New Customizer Publishing Options\n<p>Those who design sites will appreciate the ability to easily <a href=\"http://drab-yak.w4.poopy.life/?customize_changeset_uuid=e34fb3ad-ecd8-4bd6-b53a-726cf3d1c46e\">share a link</a> that provides a front-end preview to changes. Note the About This Site widget at the bottom of the page.</p>\n<p>This eliminates the need to publish changes to a live site or give users access to the WordPress backend. Links are generated by saving a draft in the Customizer.</p>\n<p>Clicking the Discharge Changes link removes unpublished edits. Scheduling changes is as simple as choosing a day and time for them to take place.</p>\n<p>These are just a few of the improvements in WordPress 4.9 which you can try out for yourself by downloading and testing <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">WordPress 4.9 beta 1</a> on a test site. Alternatively, you can install the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Testing plugin</a> on a test site, configure it for point release nightlies, and update to 4.9 Beta 1.</p>\n<p>Stay tuned as we go in-depth on some of the other features in WordPress 4.9 in the coming days.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Oct 2017 13:32:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:134:\"WPTavern: Gutenberg Engineer Matías Ventura Unpacks the Vision for Gutenblocks, Front-End Editing, and the Future of WordPress Themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75472\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:142:\"https://wptavern.com/gutenberg-engineer-matias-ventura-unpacks-the-vision-for-gutenblocks-front-end-editing-and-the-future-of-wordpress-themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8642:\"<a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/ship-bottle.jpg?ssl=1\"><img /></a>photo credit: KaylaKandzorra <a href=\"http://www.flickr.com/photos/48077358@N02/4952091078\">i miss you grampa.</a> &#8211; <a href=\"https://creativecommons.org/licenses/by/2.0/\">(license)</a>\n<p>In a post titled <a href=\"http://matiasventura.com/post/gutenberg-or-the-ship-of-theseus/\" rel=\"noopener\" target=\"_blank\">Gutenberg, or the Ship of Theseus</a>, Matías Ventura breaks down the vision for how the project will transform WordPress&#8217; content creation experience and the decisions the team has made along the way. Ventura describes how WordPress has become difficult to customize, as online publishing has embraced rich media and web design has evolved in complexity over the years.</p>\n<p>&#8220;WordPress can build incredible sites, yet the usability and clarity that used to be a driving force for its adoption has been fading away,&#8221; Ventura said. &#8220;The present reality is that many people struggle using WordPress as a tool for expression.&#8221;</p>\n<p>Ventura&#8217;s words hint at the growing threats from competitors whose interfaces define users&#8217; current expectations for a front-end editing experience. If WordPress is to stay afloat in a sea of competitors, it can no longer continue expanding its capabilities while leaving a disconnect between what users see while editing in the admin versus what is displayed on the frontend.</p>\n<p>&#8220;WordPress has always been about the user experience, and that needs to continue to evolve under newer demands,&#8221; Ventura said. &#8220;Gutenberg is an attempt at fundamentally addressing those needs, based on the idea of content blocks. It’s an attempt to improve how users interact with their content in a fundamentally visual way, while at the same time giving developers the tools to create more fulfilling experiences for the people they are helping.&#8221;</p>\n<p>Ventura elaborated on the foundations of the block approach to content creation and how it will expose more functionality to users in a unified interface, bringing more opportunities to the plugin ecosystem. The post offers some clarity for those who have been wondering about the decision to &#8220;make everything a block.&#8221; Ventura also anticipates that blocks will become a big part of WordPress theming in the future:</p>\n<blockquote><p>Themes can also provide styles for individual blocks, which can, in aggregation, fundamentally alter the visual appearance of the whole site. You can imagine themes becoming more about the presentation of blocks, while the functional parts can be extracted into blocks (which can potentially work across multiple theme variations). Themes can also provide templates for multiple kind of pages—colophon, products, portfolios, etc., by mixing blocks, setting them up as placeholders, and customizing their appearance.</p></blockquote>\n<p>Ventura also introduced a few new possibilities that Gutenberg could enable. He shared a video showing how granular control over each block can pave the way for a future where WordPress core allows for real-time collaborative editing. This is a feature that has been painfully lacking from the CMS but is nearer on the horizon with Gutenberg in place.</p>\n<p>&#8220;This same granularity is allowing us to develop a collaborative editing framework where we can lock content being edited by a peer on per block basis, instead of having to lock down the whole post,&#8221; Ventura said.</p>\n<p></p>\n<p>Ventura sees Gutenberg as the path to finally bringing front-end editing to WordPress:</p>\n<blockquote><p>Once Gutenberg is capable of handling all the pieces that visually compose a site—with themes providing styles for all the blocks—we end up with an editor that looks exactly like the front-end. (And at that point, we might just call it front-end editing.) Yet we’d had arrived at it through gradually improving the pieces of our familiar ship, in a way that didn’t cause it to collapse or alienated the people aboard. We want to accomplish this in a way that would allow us to refine and correct as we iterate and experience the reality of what is being built and how it is being used.</p></blockquote>\n<p>He likened the challenge of the Gutenberg project to upgrading the materials on a ship while ensuring that it continues to sail. As there are many passengers who depend on the boat, completely breaking it for the purpose of rebuilding is not an acceptable way forward.</p>\n<p>&#8220;It is an attempt at improving how users can connect with their site in a visual way, not at removing the flexibility and power that has made WordPress thrive,&#8221; Ventura said. &#8220;There might be a time when the old ways become obsolete and disappear, absorbed by the richer and clearer interface of blocks, but we are doing as much as possible to make this a process. The old doesn’t have to disappear suddenly, it can be gradually shaped into the new.&#8221;</p>\n<p>Comments are not enabled on the post, but it has received mostly positive feedback on Twitter. For some, it clarifies the direction of Gutenberg, the purpose of blocks and the possibilities they enable. Others in the community are on board with the concepts behind Gutenberg but are not comfortable with the tentative timeline for its inclusion in core. Ventura&#8217;s post does not address many of the more practical concerns the community has about allowing enough time for the WordPress product ecosystem to get ready for Gutenberg.</p>\n<p>Matt Mullenweg has confirmed that <a href=\"https://wptavern.com/matt-mullenweg-addresses-concerns-about-gutenberg-confirms-new-editor-to-ship-with-wordpress-5-0\" rel=\"noopener\" target=\"_blank\">Gutenberg will ship with WordPress 5.0</a> whenever Gutenberg is ready and most recently said that delays on selecting the JavaScript framework &#8220;will likely delay Gutenberg at least a few weeks, and may push the release into next year.&#8221;</p>\n<p>Last week, a post published by Yoast SEO founder Joost de Valk sparked conversation with his proposed <a href=\"https://yoast.com/gutenberg-alternative-approach/\" rel=\"noopener\" target=\"_blank\">alternative approach to Gutenberg</a>, which calls for a slower, staged rollout for plugin authors.</p>\n<p>&#8220;In this point of time, it’s not possible for plugins at all to integrate with Gutenberg,&#8221; de Valk said. &#8220;How on earth should plugin authors be able to build their integrations within a few months? That’s not possible. At least not without breaking things.&#8221;</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/10/Gutenberg-2.2-block-level.jpg?ssl=1\"><img /></a>His proposal recommends keeping the idea of blocks and making over the admin for WordPress 5.0 but leaving the meta boxes and toolbar untouched.</p>\n<p>&#8220;We are very enthusiastic about the idea of blocks, but have strong concerns about some of the technical choices and the speed of the implementation process,&#8221; de Valk said. &#8220;We are also worried about the lack of priority given to accessibility issues in the project. But most importantly, we are very much concerned about the fact that plugins are not able to integrate with the new editor.&#8221;</p>\n<p>It&#8217;s impossible for developers to have a clear understanding of the right way to extend Gutenberg right now. The JavaScript framework for the plugin has not yet been announced and critical issues regarding how block data should be stored are just now being floated for discussion.</p>\n<p>&#8220;The Editor/Gutenberg team would like the broader core group to start thinking about and discussing how block data is stored,&#8221; Ventura proposed during last week&#8217;s core development meeting. &#8220;We currently (specially after allowing meta attributes) have a lot of ways to store block data, with different tradeoffs. It’s going to be important to communicate when each is appropriate. This will come through examples and documentation, but generally such knowledge has also spread by core contributors doing talks and blog posts, etc.&#8221;</p>\n<p>Further collaboration from the broader community of WordPress core contributors should bring the project closer to being able to deliver the documentation developers need in order to follow best practices for extending the new editor. In the meantime, Ventura&#8217;s <a href=\"http://matiasventura.com/post/gutenberg-or-the-ship-of-theseus/\" rel=\"noopener\" target=\"_blank\">post</a> is a great read for understanding the larger vision behind Gutenberg and where it is headed.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 10 Oct 2017 03:56:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"Matt: Potential of Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47605\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://ma.tt/2017/10/potential-of-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:456:\"<p>Matias Ventura, the lead of the editor focus for WordPress, has written <a href=\"http://matiasventura.com/post/gutenberg-or-the-ship-of-theseus/\">Gutenberg, or the Ship of Theseus</a> to talk about how Gutenberg&#x27;s approach will simplify many of the most complex parts of WordPress, building pages, and theme editing. If you want a peek at some of the things coming down the line with Gutenberg, including serverless WebRTC real-time co-editing.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 09 Oct 2017 12:47:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: WPThemeDoc: A Single-File HTML Template for Documenting WordPress Themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75437\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wptavern.com/wpthemedoc-a-single-file-html-template-for-documenting-wordpress-themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2142:\"<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/10/writing.jpg?ssl=1\"><img /></a>photo credit: <a href=\"https://stocksnap.io/photo/2FS8R15QYN\">Lia Leslie</a>\n<p><a href=\"https://themebeans.com/\" rel=\"noopener\" target=\"_blank\">ThemeBeans</a> founder Rich Tabor has <a href=\"https://richtabor.com/wpthemedoc/\" rel=\"noopener\" target=\"_blank\">open sourced WPThemeDoc</a>, the template he uses for documenting his commercial WordPress themes. Tabor is also the creator of <a href=\"https://wptavern.com/new-merlin-wp-onboarding-wizard-makes-wordpress-theme-installation-and-setup-effortless\" rel=\"noopener\" target=\"_blank\">Merlin WP</a>, a theme onboarding wizard that makes setup effortless for users. After applying his aesthetic talents to the documentation aspect of his business, he decided to package up his efforts and release <a href=\"https://github.com/richtabor/WPThemeDoc\" rel=\"noopener\" target=\"_blank\">WPThemeDoc on GitHub</a> to benefit other theme developers.</p>\n<p>WPThemeDoc is neatly organized and easy to navigate. It can be used without any design modifications or as a starting point for your own branded documentation design. Check out the <a href=\"http://docs.themebeans.com/york/\" rel=\"noopener\" target=\"_blank\">live demo</a> documenting Tabor&#8217;s York Pro theme.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/wpthemedoc.jpg?ssl=1\"><img /></a></p>\n<p>The template is a single HTML file that is easy to extend by adding or removing sections. It includes a set of &#8220;find and replace&#8221; variables that developers can use to quickly customize the document&#8217;s information for their own themes. The template itself requires very little documentation, as it uses nothing more than simple HTML and CSS.</p>\n<p>For many theme developers documentation is a chore &#8211; it&#8217;s not the fun part of creating themes. WPThemeDoc makes documentation as simple as filling in the blanks. It is licensed under the GPL v2.0 or later and feedback and contributions are <a href=\"https://github.com/richtabor/WPThemeDoc\" rel=\"noopener\" target=\"_blank\">welcome on GitHub</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 07 Oct 2017 04:44:51 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WPTavern: Disqus Data Breach Affects 17.5 Million Accounts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75434\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wptavern.com/disqus-data-breach-affects-17-5-million-accounts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2094:\"<p><a href=\"https://disqus.com/\">Disqus</a>, a comment management and hosting service, <a href=\"https://blog.disqus.com/security-alert-user-info-breach\">has announced</a> it suffered a data breach that affects 17.5 million users. A snapshot of its database from 2012 with information dating back to 2007 containing email addresses, usernames, sign-up dates, and last login dates in plain-text were exposed.</p>\n<p>Passwords hashed with the SHA1 protocol and a salt for about one-third of affected users are also included in the snap-shot. Disqus was made aware of the breach and received the exposed data on October 5th by <a href=\"https://www.troyhunt.com/\">Troy Hunt</a>, an independent security researcher. Today, the service contacted affected users, reset their passwords, and publicly disclosed the incident.</p>\n<p>Jason Yan, CTO of Disqus, says the company has no evidence that unauthorized logins are occurring due to compromised credentials. &#8220;No plain-text passwords were exposed, but it is possible for this data to be decrypted (even if unlikely),&#8221; Yan said.</p>\n<p>&#8220;As a security precaution, we have reset the passwords for all affected users. We recommend that all users change passwords on other services if they are shared. At this time, we do not believe that this data is widely distributed or readily available. We can also confirm that the most recent data that was exposed is from July, 2012.&#8221;</p>\n<p>Since emails were stored in plain-text, it&#8217;s possible affected users may receive unwanted email. Disqus doesn&#8217;t believe there is any threat to user accounts as it has made improvements over the years to significantly increase password security. One of those improvements was changing the password hashing algorithm from SHA1 to bcrypt.</p>\n<p>If your account is affected by the data breach, you will receive an email from Disqus requesting that you change your password. The company is continuing to investigate the breach and will share new information on <a href=\"https://blog.disqus.com/\">its blog</a> when it becomes available.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 07 Oct 2017 03:13:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"WPTavern: Poopy.life Launches Pro Version at WPsandbox.io Aimed at Theme and Plugin Developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=74874\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:105:\"https://wptavern.com/poopy-life-launches-pro-version-at-wpsandbox-io-aimed-at-theme-and-plugin-developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6661:\"<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2014/05/sandbox.png?ssl=1\"><img /></a>photo credit: <a href=\"http://www.flickr.com/photos/hiljainenmies/3580475943/\">hiljainenmies</a> &#8211; <a href=\"http://creativecommons.org/licenses/by-nc/2.0/\">cc</a>\n<p>Six months ago, the team behind <a href=\"http://www.wpallimport.com/\" rel=\"noopener\" target=\"_blank\">WP All Import</a> and <a href=\"https://www.oxygenapp.com/try\" rel=\"noopener\" target=\"_blank\">Oxygen</a> <a href=\"https://wptavern.com/poopy-life-lets-you-create-free-unlimited-wordpress-test-installs\" rel=\"noopener\" target=\"_blank\">opened Poopy.life to the public</a>, a service that offers free unlimited WordPress installs for anyone who needs a temporary testing site. Public testing went well enough that a commercial tier of the service is now available at <a href=\"https://wpsandbox.io/\" rel=\"noopener\" target=\"_blank\">WPSandbox.io</a>, with plans ranging from $49/month &#8211; $699/month, depending on the number of installs required.</p>\n<p>&#8220;On any given day we have around 3-4K active installs,&#8221; WP All Import team lead Joe Guilmette said. &#8220;We actually got around 7K the first day and the infrastructure didn’t go down. So we were pretty stoked.&#8221;</p>\n<p>Guilmette said a few plugin and theme shops are using the service and one developer even wrote a script to iframe their poopy.life installs for use in their theme demos.</p>\n<p>&#8220;We’ll probably put a stop to that at some point, but it was pretty cool to see,&#8221; Guilmette said. &#8220;Tons of people use it for testing plugins, themes, and just all sorts of general WordPress testing. We’ve been using this internally for years, and every time we&#8217;d fire up localhost or a testing install, it’s just faster to use poopy.life.&#8221;</p>\n<p>Pro users get all the convenience of Poopy.life under the more business-friendly wpsandbox.pro domain with a dashboard to manage installs, SSH and SFTP access to their installs, and the ability to hot-swap between PHP versions. Having Poopy.life open to the public has given the team an opportunity to address any remaining pain points with hosting thousands of test installs.</p>\n<p>&#8220;Since launching poopy.life everything has actually been pretty smooth,&#8221; Guilmette said. &#8220;We&#8217;ve already been using various versions of this internally to sell millions of dollars worth of plugins over the last five years. So it’s already been hacked to pieces, DDoSed, etc. We’ve already been through all that.&#8221;</p>\n<p>When the team first started Poopy.life as an internal project for WP All Import, they had a difficult time trying to host it on a VPS with the requirement of isolating installs from each other without any professional systems administrators on board.</p>\n<p>&#8220;We were getting hacked all the time, so we started using CloudLinux, the same software that a lot webhosts use for their shared hosting servers,&#8221; Guilmette said. &#8220;This also prevents resource hogging, where someone could start mining bitcoin and then everyone’s installs would take forever to load.</p>\n<p>&#8220;Then came the spammers, using their installs to send out email spam. So we learned we had to discard e-mail silently while allowing scripts that expect e-mail to be available to still function correctly.</p>\n<p>&#8220;Once we went on that whole journey, it was kind of a no-brainer to share this tool with everyone else. We’ve been through a lot of pain in building this platform, and in opening this up to the public we hope we can help others avoid those same issues.&#8221;</p>\n<p>The team now has two systems administrators on call 24/7 to get the service back up and running quickly if anything breaks.</p>\n<h3>WP Sandbox Service is Aimed at Theme and Plugin Developers</h3>\n<p>In the past six months since opening Poopy.life to the public, Guilmette&#8217;s team has learned several valuable lessons in how to market the commercial service.</p>\n<p>&#8220;We use the Sandbox for so many different things, so the in the beginning the temptation was to kind of market it to everyone who we thought would find it useful,&#8221; Guilmette he said. &#8220;We didn’t find a whole lot of success, and are now focusing on plugin and theme developers. It’s helped us so much for WP All Import and Oxygen &#8211; everything from increasing sales to making tech support much easier by giving users isolated places they can reproduce problems. We know plugin and theme developers need this tool, so it makes the most sense for us to focus our marketing directly at them.&#8221;</p>\n<p>Having a way to allow users to try a product like Oxygen before purchasing will be particularly useful in the Gutenberg era, where many users are unsure about the differences between what core will offer and what a site building product can bring to the table. Guilmette and his team are optimistic about what Gutenberg will bring to the customization experience.</p>\n<p>&#8220;We can’t wait for it to ship in core,&#8221; Guilmette said. &#8220;I think a lot of the negativity about Gutenberg is from folks who make page builders and view it as competition. But Oxygen is a site builder, not a page builder (i.e. you design headers, footers, etc.). We don’t see Oxygen as competition; we think it will enhance the Oxygen experience. We think Gutenberg is great, and are excited to see some other talented teams out there working hard to make WordPress easier to use for everyone.&#8221;</p>\n<p>He said his team is hoping to provide a Gutenberg component that users can drop into Oxygen and then edit that area of the site with Gutenberg. Having a sandboxed version of this available for users to test will help them to understand how the product works before purchasing.</p>\n<p>Regardless of whether or not WP Sandbox takes off with other WordPress product companies, WP All Import and Oxygen have benefited from bringing sandboxing to the sales experience and continue to make use of the architecture the team has developed.</p>\n<p>&#8220;We generally avoid big, coordinated releases,&#8221; Guilmette said. &#8220;We prefer to slowly build a product around a group of slowly growing users. If you release a finished product to the world, chances are you spent too much money making something no one wants.</p>\n<p>&#8220;It hasn’t paid for itself yet, but that’s to be expected. We have enough users to make us optimistic, and some very exciting customers in the onboarding process. Once we get a few big names using it and other plugin developers realize the benefits of using it, we think it will take off.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Oct 2017 19:17:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"WPTavern: WooConf 2017 Livestream Tickets Now on Sale\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75369\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wptavern.com/wooconf-2017-livestream-tickets-now-on-sale\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2445:\"<p>The third edition of <a href=\"https://wooconf.com/\" rel=\"noopener\" target=\"_blank\">WooConf</a> is being held in Seattle, Washington, October 19-20. This year the event is <a href=\"https://wptavern.com/seattle-to-host-wooconf-2017-in-october-conference-to-focus-on-developers\" rel=\"noopener\" target=\"_blank\">narrowing its focus to developers</a> and will feature eight workshops and more than 30 speakers. Topics include scaling, client relations, A/B testing, and enterprise e-commerce.</p>\n<p><a href=\"https://wordpress.org/plugins/woocommerce/\" rel=\"noopener\" target=\"_blank\">WooCommerce</a> is currently active on more than three million sites and the plugin has been downloaded 31 million times. Developers are using the plugin all over the world, but only a small fraction of them will be able to make it to Seattle for the conference. WooConf is less than two weeks away but in-person <a href=\"https://wooconf.com/#buy-a-ticket\" rel=\"noopener\" target=\"_blank\">tickets are still available</a> at $699 per attendee.</p>\n<p>A livestream of the conference is available for those who would like to attend but are unable to travel. <a href=\"https://wooconf.com/product/live-stream/\" rel=\"noopener\" target=\"_blank\">Livestream tickets</a> went on sale today for $50/each.</p>\n<p>&#8220;The in-person ticket prices, the live stream tickets, and the support of our sponsors are what funds the conference,&#8221; WooConf co-organizer Aviva Pinchas said. &#8220;For those who are not in a position to pay for the live stream tickets or attend the event in-person, the video recordings will be released later for free, and there are a number of other ways people can participate.&#8221;</p>\n<p>Pinchas said the team will be sharing updates on social media, the event&#8217;s blog, and in the WooCommerce Community Slack. They have also arranged with local WooCommerce meetup organizers to livestream parts of the event during free <a href=\"https://wooconf.com/meetups/\" rel=\"noopener\" target=\"_blank\">IRL meetups</a> in 12 major cities across the globe. These satellite events will include local speakers and offer attendees the opportunity to connect with other nearby WooCommerce developers and store owners.</p>\n<p>All of the recorded sessions will be published to the <a href=\"https://www.youtube.com/channel/UC63GQg3s2QcgOpMzsiF6wwQ\" rel=\"noopener\" target=\"_blank\">WooCommerce YouTube channel</a> sometime after the conclusion of the event.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 06 Oct 2017 03:04:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: DonateWC Successfully Sponsors its First Applicant to WordCamp Cape Town\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75279\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wptavern.com/donatewc-successfully-sponsors-its-first-applicant-to-wordcamp-capetown\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1656:\"<p><a href=\"https://donatewc.org/\">DonateWC</a> has <a href=\"https://donatewc.org/sponsorship-recipients/wordcamp-capetown-speaker-fundraiser/\">selected</a> and successfully sponsored its first applicant to <a href=\"https://2017.capetown.wordcamp.org/\">WordCamp Cape Town</a>. The recipient has chosen to remain anonymous although they are a speaker at the event.</p>\n<p>Funds left over from the <a href=\"https://donatewc.org/news/surprise-our-goal-is-fully-funded/\">initial crowdfunding campaign</a> and from the <a href=\"https://donatewc.org/make-a-donation/\">general donation pool</a> were used to cover expenses. The total cost of sponsorship is €669.24 with €197.37 coming from donations.</p>\n<p>In addition to sponsoring recipients, DonateWC is also publishing stories submitted by contributors on the benefits and impacts WordCamps have. <a href=\"https://twitter.com/arvindsinghdev\">Arvind Singh</a> published <a href=\"https://donatewc.org/wordcamp-stories/getting-to-wordcamp-udaipur/\">the first story</a> on DonateWC where he explains how his experience at <a href=\"https://2017.udaipur.wordcamp.org/\">WordCamp Udaipur</a> translated into WordPress meetups in <a href=\"https://2017.delhi.wordcamp.org/\">Delhi, India</a> and eventually, the first <a href=\"https://2017.delhi.wordcamp.org/\">WordCamp Delhi</a>.</p>\n<p>There&#8217;s no word yet on who will be the next recipient of a DonateWC sponsorship but the initiative still needs your help. If you believe in the cause, please consider making a <a href=\"https://donatewc.org/make-a-donation/\">donation.</a> The funds will be used to help others who are less fortunate attend WordCamps.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Oct 2017 23:33:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: Gutenberg 1.3 Adds New Feedback Option for Plugin Testers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75323\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/gutenberg-1-3-adds-new-feedback-option-for-plugin-testers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3240:\"<p><a href=\"https://make.wordpress.org/core/2017/10/04/whats-new-in-gutenberg-4th-october/\" rel=\"noopener\" target=\"_blank\">Gutenberg 1.3</a> was released this week with many small tweaks and improvements to existing features. One of the most visible updates for those who are testing the Cover Image block is the addition of an <a href=\"https://github.com/WordPress/gutenberg/pull/2815\" rel=\"noopener\" target=\"_blank\">opacity slider</a>. It brings more flexibility to the feature than the previous on/off background dimming toggle provided. Users can now slide the opacity along a range snapped to percentages of 10.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/cover-image-block-opacity.gif?ssl=1\"><img /></a></p>\n<p>Version 1.3 also introduces an option to <a href=\"https://github.com/WordPress/gutenberg/pull/2807\" rel=\"noopener\" target=\"_blank\">convert a single block to an HTML block when Gutenberg detects conflicting content</a>. This is a precursor to an open issue that proposes <a href=\"https://github.com/WordPress/gutenberg/issues/2794\" rel=\"noopener\" target=\"_blank\">an HTML mode for blocks</a>, essentially a mechanism for each block to be edited as HTML. Contributors are still discussing the best approach for implementing the UI, which we will likely see in a future release.</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-05-at-1.47.01-PM.png?ssl=1\"><img /></a></p>\n<p>Gutenberg 1.3 adds a new submenu item that ramps up the potential for gathering more feedback from people who are using the plugin. The Feedback link appears in the plugin&#8217;s sidebar menu and leads to a polldaddy form that separates users&#8217; comments into either either a feedback or support channel.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-05-at-2.03.23-PM.png?ssl=1\"><img /></a></p>\n<p>Instead of relying on testers to know where to go to offer feedback, the new link offers them an easily accessible avenue for sharing their thoughts and concerns. This option is especially helpful for those who are not as adept at using GitHub or writing meaningful bug reports. The forms guide the user to report important details of their setup, browser information, screenshots, and other useful information.</p>\n<p>Gutenberg does not track any information about users who submit feedback via the Polldaddy forms and there is nothing to indicate that the responses will be made public. It is unrealistic to expect that the Gutenberg team will be able to respond to each submission individually, but it would be helpful if they provided summaries of trends in user feedback and how it is informing the design and development of the project. This could go a long way to prevent users from perceiving that their concerns are being buried.</p>\n<p>Version 1.3 also adds expandable panels to the block inspector, support for pasting plain text markdown content (and converting it to blocks), and accessibility improvements to the color palette component. Check out the full <a href=\"https://make.wordpress.org/core/2017/10/04/whats-new-in-gutenberg-4th-october/\" rel=\"noopener\" target=\"_blank\">changelog</a> for more details.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Oct 2017 22:01:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WPTavern: WPWeekly Episode 290 – Putting The Rad in Brad\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wptavern.com?p=75361&preview=true&preview_id=75361\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wptavern.com/wpweekly-episode-290-putting-the-rad-in-brad\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2823:\"<p>In this episode, I&#8217;m joined by special guest co-host Brad Williams, Co-Founder and CEO of the website design and development agency <a href=\"https://webdevstudios.com/\">WebDevStudios</a>. Brad shared his experience at CampPress and is looking forward to attending the event again in 2018.</p>\n<p>We discussed the recent move to moderate all comments on the Tavern again. We covered the news of the week and near the end of the show, Brad describes why his company gives back to WordPress by participating in the <a href=\"https://ma.tt/2014/09/five-for-the-future/\">Five for the Future</a> initiative.</p>\n<h2>Stories Discussed:</h2>\n<p><a href=\"https://wptavern.com/camp-press-a-detox-from-digital-life\">Camp Press – A Detox from Digital Life</a><br />\n<a href=\"https://yoast.com/gutenberg-alternative-approach/\">Yoast Publishes an Alternative to Gutenberg While Raising Concerns About its Development. </a><br />\n<a href=\"https://wptavern.com/new-wp-cli-project-aims-to-extend-checksum-verification-to-plugins-and-themes\">New WP-CLI Project Aims to Extend Checksum Verification to Plugins and Themes</a><br />\n<a href=\"https://wptavern.com/regenerate-thumbnails-plugin-passes-5-million-downloads-rewrite-in-the-works\">Regenerate Thumbnails Plugin Passes 5 Million Downloads, Rewrite in the Works</a><br />\n<a href=\"https://wptavern.com/drupal-core-maintainers-propose-adopting-react-for-administrative-uis\">Drupal Core Maintainers Propose Adopting React for Administrative UI’s</a><br />\n<a href=\"https://wpcampus.org/conferences/apply-to-host/\">WPCampus 2018 is Taking Submissions From Host Cities</a><br />\n<a href=\"https://jetpack.com/2017/10/03/jetpack-5-4-date-picker-contact-form/\">Jetpack 5.4 Released </a></p>\n<h2>Picks of the Week:</h2>\n<p>If you have any WordPress related questions, consider asking them during the <a href=\"https://maintainn.com/ask-maintainn-twitter-event-october-5/\">Ask Maintainn event</a> on October 5th using the #askMaintainn hashtag on Twitter. Jim Byrom, Director of Client Services, will answer the questions directly through the Maintainn Twitter account.</p>\n<h2>WPWeekly Meta:</h2>\n<p><strong>Next Episode:</strong> Wednesday, October 11th 3:00 P.M. Eastern</p>\n<p><strong>Subscribe To WPWeekly Via Itunes: </strong><a href=\"https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738\" target=\"_blank\" rel=\"noopener\">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via RSS: </strong><a href=\"https://wptavern.com/feed/podcast\" target=\"_blank\" rel=\"noopener\">Click here to subscribe</a></p>\n<p><strong>Subscribe To WPWeekly Via Stitcher Radio: </strong><a href=\"http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr\" target=\"_blank\" rel=\"noopener\">Click here to subscribe</a></p>\n<p><strong>Listen To Episode #290:</strong><br />\n</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Oct 2017 07:21:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jeff Chandler\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Dev Blog: WordPress 4.9 Beta 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4926\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9104:\"<p>WordPress 4.9 Beta 1 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"https://wordpress.org/wordpress-4.9-beta1.zip\">download the beta here</a> (zip).</p>\n<p>WordPress 4.9 is slated for release on <a href=\"https://make.wordpress.org/core/4-9/\">November 14</a>, but we need your help to get there. We’ve been working on making it even easier to customize your site. Here are some of the bigger items to test and help us find as many bugs as possible in the coming weeks:</p>\n<ul>\n<li>Drafting (<a href=\"https://core.trac.wordpress.org/ticket/39896\">#39896</a>) and scheduling (<a href=\"https://core.trac.wordpress.org/ticket/28721\">#28721</a>) of changes in the Customizer. Once you save or schedule a changeset, when any user comes into the Customizer the pending changes will be autoloaded. A button is provided to discard changes to restore the Customizer to the last published state. (This is a new “linear” mode for changesets, as opposed to “branching” mode which can be enabled by filter so that every time  user opens the Customizer a new blank changeset will be started.)</li>\n<li>Addition of a frontend preview link to the Customizer to allow changes to be browsed on the frontend, even without a user being logged in (<a href=\"https://core.trac.wordpress.org/ticket/39896\">#39896</a>).</li>\n<li>Addition of autosave revisions in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/39275\">#39275</a>).</li>\n<li>A brand new theme browsing experience in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/37661\">#37661</a>).</li>\n<li>Gallery widget (<a href=\"https://core.trac.wordpress.org/ticket/41914\">#41914</a>), following the media and image widgets introduced in 4.8.</li>\n<li>Support for shortcodes in Text widgets (<a href=\"https://core.trac.wordpress.org/ticket/10457\">#10457</a>).</li>\n<li>Support for adding media to Text widgets (<a href=\"https://core.trac.wordpress.org/ticket/40854\">#40854</a>).</li>\n<li>Support for adding oEmbeds outside post content, including Text widgets (<a href=\"https://core.trac.wordpress.org/ticket/34115\">#34115</a>).</li>\n<li>Support for videos from providers other than YouTube and Vimeo in the Video widget (<a href=\"https://core.trac.wordpress.org/ticket/42039\">#42039</a>)</li>\n<li>Improve the flow for creating new menus in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/40104\">#40104</a>).</li>\n<li>Educated guess mapping of nav menus and widgets when switching themes (<a href=\"https://core.trac.wordpress.org/ticket/39692\">#39692</a>).</li>\n<li>Plugins: Introduce singular capabilities for activating and deactivating individual plugins (<a href=\"https://core.trac.wordpress.org/ticket/38652\">#38652</a>).</li>\n<li>Sandbox PHP file edits in both plugins and themes, without auto-deactivation when an error occurs; a PHP edit that introduces a fatal error is rolled back with an opportunity then for the user to fix the error and attempt to re-save. (<a href=\"https://core.trac.wordpress.org/ticket/21622\">#21622</a>).</li>\n<li>Addition of dirty state for widgets on the admin screen, indicating when a widget has been successfully saved and showing an “Are you sure?” dialog when attempting to leave without saving changes. (<a href=\"https://core.trac.wordpress.org/ticket/23120\">#23120</a>, <a href=\"https://core.trac.wordpress.org/ticket/41610\">#41610</a>)</li>\n</ul>\n<p>As always, there have been exciting changes for developers to explore as well, such as:</p>\n<ul>\n<li>CodeMirror editor added to theme/plugin editor, Custom CSS in Customizer, and Custom HTML widgets. Integration includes support for linters to catch errors before you attempt to save. Includes new APIs for plugins to instantiate editors. (<a href=\"https://core.trac.wordpress.org/ticket/12423\">#12423</a>)</li>\n<li>Introduction of an extensible code editor control for adding instances of CodeMirror to the Customizer. (<a href=\"https://core.trac.wordpress.org/ticket/41897\">#41897</a>)</li>\n<li>Addition of global notifications area (<a href=\"https://core.trac.wordpress.org/ticket/35210\">#35210</a>), panel and section notifications (<a href=\"https://core.trac.wordpress.org/ticket/38794\">#38794</a>), and a notification overlay that takes over the entire screen in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/37727\">#37727</a>).</li>\n<li>A date/time control in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/42022\">#42022</a>).</li>\n<li>Improve usability of Customize JS API (<a href=\"https://core.trac.wordpress.org/ticket/42083\">#42083</a>, <a href=\"https://core.trac.wordpress.org/ticket/37964\">#37964</a>, <a href=\"https://core.trac.wordpress.org/ticket/36167\">#36167</a>).</li>\n<li>Introduction of control templates for base controls (<a href=\"https://core.trac.wordpress.org/ticket/30738\">#30738</a>).</li>\n<li>Use WP_Term_Query when transforming tax queries (<a href=\"https://core.trac.wordpress.org/ticket/37038\">#37038</a>).</li>\n<li>Database: Add support for MySQL servers connecting to IPv6 hosts (<a href=\"https://core.trac.wordpress.org/ticket/41722\">#41722</a>).</li>\n<li>Emoji: Bring Twemoji compatibility to PHP (<a href=\"https://core.trac.wordpress.org/ticket/35293\">#35293</a>). Test for any weirdness with emoji in RSS feeds or emails.</li>\n<li>I18N: Introduce the Plural_Forms class (<a href=\"https://core.trac.wordpress.org/ticket/41562\">#41562</a>).</li>\n<li>Media: Upgrade MediaElement.js to 4.2.5-74e01a40 (<a href=\"https://core.trac.wordpress.org/ticket/39686\">#39686</a>).</li>\n<li>Media: Use max-width for default captions (<a href=\"https://core.trac.wordpress.org/ticket/33981\">#33981</a>). We will want to make sure this doesn’t cause unexpected visual regressions in existing themes, default themes were all fine in testing.</li>\n<li>Media: Reduce duplicated custom header crops in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/21819\">#21819</a>).</li>\n<li>Media: Store video creation date in meta (<a href=\"https://core.trac.wordpress.org/ticket/35218\">#35218</a>). Please help test different kinds of videos.</li>\n<li>Multisite: Introduce get_site_by() (<a href=\"https://core.trac.wordpress.org/ticket/40180\">#40180</a>).</li>\n<li>Multisite: Improve get_blog_details() by using get_site_by() (<a href=\"https://core.trac.wordpress.org/ticket/40228\">#40228</a>).</li>\n<li>Multisite: Improve initializing available roles when switch sites (<a href=\"https://core.trac.wordpress.org/ticket/38645\">#38645</a>).</li>\n<li>Multisite: Initialize a user&#8217;s roles correctly when setting them up for a different site (<a href=\"https://core.trac.wordpress.org/ticket/36961\">#36961</a>).</li>\n<li>REST API: Support registering complex data structures for settings and meta</li>\n<li>REST API: Support for objects in schema validation and sanitization (<a href=\"https://core.trac.wordpress.org/ticket/38583\">#38583</a>)</li>\n<li>Role/Capability: Introduce capabilities dedicated to installing and updating language files (<a href=\"https://core.trac.wordpress.org/ticket/39677\">#39677</a>).</li>\n<li>Remove SWFUpload (<a href=\"https://core.trac.wordpress.org/ticket/41752\">#41752</a>).</li>\n<li>Users: Require a confirmation link in an email to be clicked when a user attempts to change their email address (<a href=\"https://core.trac.wordpress.org/ticket/16470\">#16470</a>).</li>\n<li>Core and the unit test suite is fully compatible with the upcoming release of PHP 7.2</li>\n</ul>\n<p>If you want a more in-depth view of what major changes have made it into 4.9, <a href=\"https://make.wordpress.org/core/tag/4-9/\">check out posts tagged with 4.9 on the main development blog</a>, or look at a <a href=\"https://core.trac.wordpress.org/query?status=closed&resolution=fixed&milestone=4.9&group=component&order=priority\">list of everything</a> that’s changed. There will be more developer notes to come, so keep an eye out for those as well.</p>\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n<p><b>If you think you’ve found a bug</b>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</p>\n<p>Happy testing!</p>\n<p><i>Without your testing,<br />\nwe might hurt the internet.<br />\nPlease help us find bugs.<img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f41b.png\" alt=\"🐛\" class=\"wp-smiley\" /></i></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Oct 2017 05:54:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jeffrey Paul\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"WPTavern: Jetpack 5.4 Introduces Beta Version of New Search Module Powered by Elasticsearch for Professional Plan Users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75300\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:130:\"https://wptavern.com/jetpack-5-4-introduces-beta-version-of-new-search-module-powered-by-elasticsearch-for-professional-plan-users\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4648:\"<p><a href=\"https://jetpack.com/2017/10/03/jetpack-5-4-date-picker-contact-form/\" rel=\"noopener\" target=\"_blank\">Jetpack 5.4</a> was released yesterday with many small enhancements to existing modules and an expansion of features for users on the paid plans. A new date picker field is available for the Contact Form, allowing administrators to request additional information such as project timelines, event reservations, or any other date-related data.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/10/Screen-Shot-2017-10-04-at-2.43.45-PM.png?ssl=1\"><img /></a></p>\n<p>This release also fixes a bug with Jetpack&#8217;s Comments module where the form had whitespace beneath it when displayed in some themes. It now has a set default height, which will expand automatically as commenters are typing.</p>\n<p>A few other other improvements for all Jetpack users include the ability for third-party plugin and theme authors to add new menu items to the WordPress.com toolbar, connection process updated to allow for more users, improved display of Facebook embeds, and a better migration process for Widget Visibility rules when switching to the new WordPress Image Widget. Check out the full list of changes in the plugin&#8217;s <a href=\"https://wordpress.org/plugins/jetpack/#developers\" rel=\"noopener\" target=\"_blank\">changelog</a>.</p>\n<h3>New Features for Jetpack Personal, Premium, and Professional Plans: Welcome Screens and Search Module in Beta</h3>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/10/personal-plan.png?ssl=1\"><img /></a>Jetpack 5.4 adds a new welcome screen for users who upgrade to a paid plan, highlighting some of the additional features included.</p>\n<p>The plugin will soon be introducing a new <a href=\"https://jetpack.com/support/search/\" rel=\"noopener\" target=\"_blank\">Jetpack Search</a> module for users on its <a href=\"https://jetpack.com/install/professional/\" rel=\"noopener\" target=\"_blank\">Professional plan</a>, the top tier that caters to those who need more business and marketing tools. Version 5.4 adds the architecture for the feature, which is powered by Elasticsearch and runs in the WordPress.com cloud. Users who want to participate in the beta can enable the feature at Settings > Traffic on WordPress.com and then add the new Search widget within wp-admin.</p>\n<p>WordPress&#8217; native search function is notoriously slow and often provides poor and inadequate results for sites with large amounts of content. Jetpack&#8217;s new Search module aims to deliver faster, more relevant results using the same powerful infrastructure that runs Jetpack Related Posts and the search on hundreds of WordPress.com VIP sites. In July 2017, WordPress.com&#8217;s <a href=\"https://data.blog/2017/07/11/real-time-elasticsearch-indexing-on-wordpress-com/\" rel=\"noopener\" target=\"_blank\">data.blog</a> reported that its network averages 23 million actions per day that trigger indexing of 75 million Elasticsearch documents into hundreds of indices.</p>\n<p>Jetpack Search boasts a zero configuration setup, real-time indexing (WordPress.com&#8217;s VIP indices have a one-second refresh rate), and the flexibility for developers to create custom Elasticsearch queries.</p>\n<p>The Jetpack Professional plan&#8217;s $299/year price point is highly competitive for access to a hosted Elasticsearch engine. Ordinarily, developers looking for the most economical way to implement Elasticsearch on a WordPress site will have to host and manage their own instances on Amazon AWS or other cloud services. This often comes with more ongoing maintenance and setup.</p>\n<p>Most managed WordPress hosts do not have a hosted Elasticsearch solution built into their plans. Earlier this year 10up launched <a href=\"http://ElasticPress.io\" rel=\"noopener\" target=\"_blank\">ElasticPress.io</a> to fill this need for for enterprise clients. The service starts at $299/month for up to 20GB of storage and unlimited Elasticsearch bandwidth and goes up to $999/month for more resources. WordPress.com VIP also offers Elasticsearch for their customers on plans ranging from $5,000 – $25,000 per month. Access to WordPress.com&#8217;s Elasticsearch infrastructure is arguably the highest value addition to Jetpack&#8217;s commercial plans to date.</p>\n<p>The Jetpack team is still working on the documentation for the new Search feature and has not published the specifics of the Elasticsearch resources and limits for Jetpack Professional subscribers. More information should be available once the feature is out of beta but current customers can test it after updating to Jetpack 5.4.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Oct 2017 23:17:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"Matt: Consciousness of Matter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=47581\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://ma.tt/2017/10/consciousness-of-matter/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:242:\"<p>Nautilus Magazine has <a href=\"http://nautil.us/issue/47/consciousness/is-matter-conscious\">an interesting look at the question of Is Matter Conscious</a>? Worth reading to learn what the word \"panpsychism\" means. Hat tip: John Vechey.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Oct 2017 22:22:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"HeroPress: WordPress Research Behind The Scenes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://heropress.com/?post_type=heropress-essays&p=2134\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:138:\"https://heropress.com/essays/wordpress-research-behind-scenes/#utm_source=rss&utm_medium=rss&utm_campaign=wordpress-research-behind-scenes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7994:\"<img width=\"960\" height=\"480\" src=\"http://20094-presscdn.pagely.netdna-cdn.com/wp-content/uploads/2017/10/100417-min-1024x512.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"Pull Quote: I have met wonderful people from whom I have learned so much in the WordPress community.\" /><p>When I moved from Bogota (Colombia) to Paris I did a degree in translation and found myself, years later, working for one of the most important publishers specializing in research. But my dream since I left Colombia was to study Psychology. After about two years, I quit my job and went back to college. It was not an easy decision, but it never is, is it?</p>\n<p>My interest in starting this new career was to work in Clinical Psychology and Psychopathology. However, as far as I continued with my degree, I was finding subjects that put in doubt what I really wanted to work in the future. Health and Occupational Psychology was one of them.</p>\n<h3>Finding a Purpose</h3>\n<p>At that time I was still living in Paris with my husband, Andrés Cifuentes, a chemical engineer who ended up doing a master&#8217;s degree in web programming. Afterwards he became a WordPress enthusiast and nowadays he works within the WordPress ecosystem. Back then, while he spent his free time getting to know and learn more about WordPress (I didn’t know at that time that I was discovering WordPress too!) he listened to different podcasts and many of them addressed issues of the problems that remote workers had to face.</p>\n<blockquote><p>All of these people in the podcasts mentioned burnout as a result of their work and what they suffered for it. It was at that moment that I made the connection; I had found what I wanted to do.</p></blockquote>\n<p>The same day I started to investigate more about remote work and its impact on stress and burnout on the web (blogs, articles, essays).</p>\n<h3>Putting It Into Action</h3>\n<p>When time came to start my master I presented my project to my thesis director: I wanted to establish a relationship between remote work and burnout. Although he accepted my first subject of study, there was a long path waiting before establishing and defining my research area.</p>\n<p>Getting into the first steps of the research, I started an arduous research work of the literature review on remote work, which turned out being quite frustrating, as I could not find any scientific paper for my study on the subject. The only helpful information I could find was the research that had been done on telework, which was the closest type to remote work although it was not good enough.</p>\n<p>On the other hand, as a requirement for the master, I had to find an internship in a company, so I spent hours and hours writing cover letters and applying to boring internship offers which practically wanted the interns to make coffee. Nice!</p>\n<p>Fortunately, my husband had the wonderful idea for me to apply to companies working with WordPress. Since those companies are mostly 100% remote, this would help with my research along with having personal experience on remote work myself.</p>\n<blockquote><p>Lucky me! I had the great opportunity to do my internship in Human Made.</p></blockquote>\n<p>My proposal was to do a psychosocial risk assessment in the company that would also serve for my study. They were very kind to me and welcomed me warmly. No doubt they are a great company, Tom Wilmot truly cares for the wellbeing of his Humans and among themselves they help each other a lot, which for me is the basis of the success of the company&#8217;s growth. I really hope they have learned as much as I did.</p>\n<h3>Narrowing Focus</h3>\n<p>For several months I delivered to my thesis director about 8 different projects that I had find interesting to work on the remote work (stress, social support, culture differences, coping strategies, communication, isolation, identity…) all of them without success. My director disapproved each one of them as remote work in general is too extensive and scattered for a master thesis and I had to focus on a smaller group.</p>\n<blockquote><p>As I was doing my internship at Human Made, I thought it was a good idea to focus my study on the same subject but only within the WordPress community.</p></blockquote>\n<p>It was perfect since there have been no studies in this field in the WordPress community! Since WordPress project volunteers are the driving force behind the project, it has become particularly important to focus more on their psychological well-being.</p>\n<p>I sent the new thesis project about the role of motivation on burnout into the WordPress Community to my director and my research protocol was finally approved!</p>\n<h3>Studying The WordPress Community</h3>\n<p>WordPress is a community I&#8217;ve known for years thanks to my husband and I got closer to it with the time. My first contribution was to the Polyglots Team, he taught me how to start contributing and translating. He motivated me to give talks in WordCamps, something that I was very afraid of but I took it as an opportunity to share what I have learned about stress. I end up contributing with a couple of talks in WordCamp Sevilla and Barcelona about stress and remote work. Recently, I volunteered at past WordCamp Europe 2017.</p>\n<blockquote><p>I have met wonderful people from whom I have learned so much in the WordPress community, I never thought that I would ended up being part of this community myself!</p></blockquote>\n<p>So, in the end, for me it is more exciting to do my research on the WordPress community because I have a lot of affection for it. And there are so many more things to investigate!<br />\nMy purpose is to contribute with this ecosystem improving its well-being.</p>\n<p>For the moment, I am working on the survey data of my current research and I am looking forward to sharing the results with the WordPress community!</p>\n<div class=\"rtsocial-container rtsocial-container-align-right rtsocial-horizontal\"><div class=\"rtsocial-twitter-horizontal\"><div class=\"rtsocial-twitter-horizontal-button\"><a title=\"Tweet: WordPress Research Behind The Scenes\" class=\"rtsocial-twitter-button\" href=\"https://twitter.com/share?text=WordPress%20Research%20Behind%20The%20Scenes&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-research-behind-scenes%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-fb-horizontal fb-light\"><div class=\"rtsocial-fb-horizontal-button\"><a title=\"Like: WordPress Research Behind The Scenes\" class=\"rtsocial-fb-button rtsocial-fb-like-light\" href=\"https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-research-behind-scenes%2F\" rel=\"nofollow\" target=\"_blank\"></a></div></div><div class=\"rtsocial-linkedin-horizontal\"><div class=\"rtsocial-linkedin-horizontal-button\"><a class=\"rtsocial-linkedin-button\" href=\"https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fwordpress-research-behind-scenes%2F&title=WordPress+Research+Behind+The+Scenes\" rel=\"nofollow\" target=\"_blank\" title=\"Share: WordPress Research Behind The Scenes\"></a></div></div><div class=\"rtsocial-pinterest-horizontal\"><div class=\"rtsocial-pinterest-horizontal-button\"><a class=\"rtsocial-pinterest-button\" href=\"https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/wordpress-research-behind-scenes/&media=https://heropress.com/wp-content/uploads/2017/10/100417-min-150x150.jpg&description=WordPress Research Behind The Scenes\" rel=\"nofollow\" target=\"_blank\" title=\"Pin: WordPress Research Behind The Scenes\"></a></div></div><a rel=\"nofollow\" class=\"perma-link\" href=\"https://heropress.com/essays/wordpress-research-behind-scenes/\" title=\"WordPress Research Behind The Scenes\"></a></div><p>The post <a rel=\"nofollow\" href=\"https://heropress.com/essays/wordpress-research-behind-scenes/\">WordPress Research Behind The Scenes</a> appeared first on <a rel=\"nofollow\" href=\"https://heropress.com\">HeroPress</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 04 Oct 2017 00:00:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Catalina Alvarez\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: Drupal Core Maintainers Propose Adopting React for Administrative UI’s\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75269\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/drupal-core-maintainers-propose-adopting-react-for-administrative-uis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6627:\"<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2014/09/drupal_logo-blue.png?ssl=1\"><img /></a></p>\n<p>Both the Drupal and WordPress communities are now knee-deep in weighing JavaScript frameworks to modernize underlying architecture for building user interfaces in 2018 and beyond. Yesterday Drupal founder Dries Buytaert <a href=\"https://dri.es/drupal-looking-to-adopt-react\" rel=\"noopener\" target=\"_blank\">published a summary</a> of his discussions with core committers, framework managers, JavaScript subsystem maintainers, and JavaScript experts at DrupalCon Vienna. Together they concluded that Drupal should consider adopting React.</p>\n<p>&#8220;We agreed that today, React would be the most promising option given its expansive adoption by developers, its unopinionated and component-based nature, and its well-suitedness to building new Drupal interfaces in an incremental way,&#8221; Buytaert said. &#8220;Today, I&#8217;m formally proposing that the Drupal community adopt React, after discussion and experimentation has taken place.&#8221;</p>\n<p>The <a href=\"https://www.drupal.org/node/2913321\" rel=\"noopener\" target=\"_blank\">proposal</a> is now available to the broader Drupal community and Buytaert&#8217;s recommendation during his keynote presentation in Vienna was to test and research how Drupal&#8217;s administrative UX could be improved by using a JavaScript framework.</p>\n<p>Two years ago Drupal explored adopting a JavaScript framework and at that time Buytaert was considering React, Ember, and Angular. Facebook&#8217;s patent clause in React&#8217;s licensing made him hesitant to want to pursue it for Drupal but the license has since been changed to MIT. The Drupal community was not eager to select a framework at that time and in response Buytaert opted to focus on improving <a href=\"https://dri.es/tag/web-services\" rel=\"noopener\" target=\"_blank\">Drupal&#8217;s web service APIs</a> instead.</p>\n<p>&#8220;By not committing to a specific framework, we are seeing Drupal developers explore a range of JavaScript frameworks and members of multiple JavaScript framework communities consuming Drupal&#8217;s web services,&#8221; Buytaert said. &#8220;I&#8217;ve seen Drupal 8 used as a content repository behind Angular, Ember, React, Vue, and other JavaScript frameworks.&#8221;</p>\n<p>Buytaert shared an illustration showing how he envisions Drupal &#8220;supporting a variety of JavaScript libraries on the user-facing front end while relying on a single shared framework as a standard across Drupal administrative interfaces.&#8221;</p>\n<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/drupal-supporting-different-javascript-front-ends.jpg?ssl=1\"><img /></a></p>\n<p>This approach is similar to what WordPress&#8217; Gutenberg contributors are proposing with <a href=\"https://github.com/WordPress/gutenberg/pull/2463\" rel=\"noopener\" target=\"_blank\">framework-agnostic block interoperability</a> where core would adopt a framework internally but developers could extend the new editor (and other UIs) using any JS library they prefer. In addition to giving developers more flexibility, this approach also helps to protect the project from the effects of the rapid pace at which JavaScript frameworks and libraries are coming and going.</p>\n<p>&#8220;Several years later, we still don&#8217;t know what JavaScript framework will win, if any, and I&#8217;m willing to bet that waiting two more years won&#8217;t give us any more clarity,&#8221; Buytaert said. &#8220;JavaScript frameworks will continue to evolve and take new shapes. Picking a single one will always be difficult and to some degree &#8216;premature.&#8217; That said, I see React having the most momentum today.&#8221;</p>\n<p>The <a href=\"https://www.drupal.org/node/2913321\" rel=\"noopener\" target=\"_blank\">proposal</a> on Drupal.org, authored by Lauri Eskola, Dupal&#8217;s core framework manager who specializes in JavaScript, said contributors&#8217; discussions revealed &#8220;unanimous consensus&#8230;that React would be a good choice.&#8221; Eskola cited several benefits they believe React will bring to Drupal, including its large ecosystem of libraries, active developer community, project maturity, and improved career options for classical Drupal developers. WordPress.com, TYPO3, The New York Times, Airbnb, and others using React were also listed among React&#8217;s benefits.</p>\n<p>The discussion on the <a href=\"https://www.drupal.org/node/2913321\" rel=\"noopener\" target=\"_blank\">proposal</a> is an interesting read with many similarities to the recent discussions in the WordPress community regarding React. Several Drupal developers expressed concerns about how difficult it may be for those with a PHP background to learn React, as it adds more complexity to the development process.</p>\n<p>&#8220;Overall I&#8217;m in favor of a framework,&#8221; Drual developer Mark Miller <a href=\"https://www.drupal.org/node/2913321#comment-12283495\" rel=\"noopener\" target=\"_blank\">said</a>. &#8220;However, a big question for me is how many PHP developers are going to easily pick up React? I know we want to bring in more Javascript developers, but it seems that most people creating modules and using this will be coming from a PHP background. I know pure JavaScript people love React, but it will likely be a steep curve to others in Drupal&#8217;s already steep learning curve.&#8221;</p>\n<p>Others, who had previously become disillusioned by a perception of Drupal being unable to keep up with modern web development, welcome the proposal to experiment with React. A few advocated for their frameworks of choice and said they would like to see the experimentation expanded to include other frameworks as well.</p>\n<p>&#8220;Is there an issue yet for the React prototype of the watchdog page?&#8221; Drupal core committer Angie Byron said. &#8220;When that&#8217;s created, folks interested in alternative frameworks (I&#8217;m hearing both &#8216;vanilla&#8217; web components and Vue.js come up a lot, both here and in the WP discussions) could start an alternate implementation in a duplicate issue and we could compare/contrast, which would be very helpful in my opinion.&#8221;</p>\n<p>Drupal is aiming to have enough real-world testing done to make a final decision before the upcoming 8.6.0 development period slated for the first part of 2018. Buytaert said that after deciding on a framework, Drupal&#8217;s leadership plans to begin adoption in a limited and incremental way &#8220;so that the decision is easily reversible if better approaches come later on.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 03 Oct 2017 23:04:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: Regenerate Thumbnails Plugin Passes 5 Million Downloads, Rewrite in the Works\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=74186\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://wptavern.com/regenerate-thumbnails-plugin-passes-5-million-downloads-rewrite-in-the-works\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4603:\"<p><a href=\"https://wordpress.org/plugins/regenerate-thumbnails/\" rel=\"noopener\" target=\"_blank\">Regenerate Thumbnails</a>, written by prolific plugin developer <a href=\"https://alex.blog/\" rel=\"noopener\" target=\"_blank\">Alex Mills</a>, has passed 5 million downloads. The plugin was first released nearly a decade ago in August 2008 during the days of WordPress 2.6. Regenerate Thumbnails is used to retroactively generate new thumbnail sizes for past uploads. It has become an indispensable utility over the years, helping millions of users successfully transition between WordPress themes that have different featured image sizes.</p>\n<a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/08/regenerate-thumbnails-v-1.png?ssl=1\"><img /></a>Regenerate Thumbnails version 1.0.0\n<p>&#8220;I was freelancing at the time and according to an ancient post on my blog, I apparently wrote it as a client needed the functionality,&#8221; Mills said. &#8220;I don&#8217;t remember that though and I certainly never figured it&#8217;d be installed and activated on over a million sites like it is today!&#8221;</p>\n<p>Regenerate Thumbnails is downloaded thousands of times every day, and, fortunately, it is the type of plugin that doesn&#8217;t generate too many support issues. Mills said he is thankful for the many volunteers on the WordPress.org support forums who have also helped manage the load. Despite the continued and widespread use of the plugin, Mills has never considered cashing in on it.</p>\n<p>&#8220;I&#8217;d never monetize any of my plugins,&#8221; he said. &#8220;I write them for fun not profit. It would be a conflict of interest anyway due to my employment at Automattic.&#8221;</p>\n<p>Regenerate Thumbnails is a fairly straightforward plugin that rarely requires updating, but this year Mills said he has tried to give it a lot more love and will soon be releasing a complete rewrite.</p>\n<p>&#8220;The rewrite is currently taking place on <a href=\"https://github.com/Viper007Bond/regenerate-thumbnails\" rel=\"noopener\" target=\"_blank\">GitHub</a> and is a complete rethink of the plugin, both in terms of the interface and underlying technologies,&#8221; Mills said. &#8220;The interface is powered by Vue.js, which I&#8217;m learning and using for the first time, and the WordPress REST API. I also have a full suite of unit tests for PHPUnit to verify that the plugin code is working as intended, both now and into the future. Those have been incredibly useful while writing the plugin and I highly recommend other plugin authors make use of them too. <a href=\"https://make.wordpress.org/cli/handbook/plugin-unit-tests/\" rel=\"noopener\" target=\"_blank\">WP-CLI makes it very easy to set up</a>.&#8221;</p>\n<p>After nine years of supporting Regenerate Thumbnails, and many other plugins, Mills said he doesn&#8217;t consider himself the best example when it comes to maintaining plugins. His advice to other developers is &#8220;try to make sure to write your plugins to be future-proof.&#8221;</p>\n<p>&#8220;Outside of some updates last month, the last real changes to the plugin were made in 2012!&#8221; Mills said. &#8220;I wrote the plugin well the first time around and it&#8217;s just worked mostly fine ever since because it uses built-in WordPress code to do the work.&#8221;</p>\n<p>This is the reason why Regenerate Thumbnails has already blazed past its major milestone at 5,762,713 downloads and is well on its way to 6 million before the end of the year. Users still find the plugin to work as reliably as it did in 2008.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Have loved this plugin for years, just used it to relaunch a website with 50000 images and 30 image sizes.</p>\n<p>&mdash; Scott Fennell (@scottfennell123) <a href=\"https://twitter.com/scottfennell123/status/896933624657756160?ref_src=twsrc%5Etfw\">August 14, 2017</a></p></blockquote>\n<p></p>\n<p>Mills said that making a plugin future proof is key if you write code all day for a living and then find it difficult to write more in the evenings and weekends for WordPress.org plugins. However, due to his current illness, he hasn&#8217;t worked in nearly a year since October 2016.</p>\n<p>&#8220;While I&#8217;m still battling the leukemia, I&#8217;m at least feeling better than I was at the beginning of the year so I&#8217;ve gotten the itch to code again,&#8221; Mills said. &#8220;Working on personal projects such as Regenerate Thumbnails has been a good way to brush off my coding skills in anticipation of returning to work. Plus it&#8217;s just fun to code again!&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Oct 2017 21:53:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"WPTavern: New WP-CLI Project Aims to Extend Checksum Verification to Plugins and Themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75100\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"https://wptavern.com/new-wp-cli-project-aims-to-extend-checksum-verification-to-plugins-and-themes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3908:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/05/wp-cli-logo.png?ssl=1\"><img /></a></p>\n<p>The WP-CLI team is initiating a new project that <a href=\"https://make.wordpress.org/cli/2017/09/26/wordpress-plugin-and-theme-checksums-project-announcement/\" rel=\"noopener\" target=\"_blank\">aims to bring checksum verification to plugins and themes</a>. Checksums are a method of verifying the integrity of files. Three years ago, WP-CLI added the capability of verifying WordPress core checksums using the MD5 algorithm. This is a useful security feature that allows developers to easily see if any files have been modified or compromised.</p>\n<p>The core checksums are handled via WordPress&#8217; official API (https://api.wordpress.org/core/checksums/) and WP-CLI contributors are planning to extend this infrastructure to plugins and themes hosted on WordPress.org.</p>\n<p>&#8220;Having this kind of functionality for plugins and themes as well would be a huge security benefit,&#8221; WP-CLI co-maintainer Alain Schlesser said. &#8220;It would allow you to check the file integrity of an entire site, possibly in an automated fashion. However, there is no centralized way of retrieving the file checksums for plugins or themes yet, and the alternative of downloading the plugins and themes from the official servers first just to check against them is wasteful in terms of resources and bandwidth.&#8221;</p>\n<p>Contributors are currently exploring different options for implementation in a <a href=\"https://github.com/wp-cli/ideas/issues/6\" rel=\"noopener\" target=\"_blank\">discussion on GitHub</a>, inspired by an existing <a href=\"https://github.com/eriktorsner/wp-checksum\" rel=\"noopener\" target=\"_blank\">wp-checksum project</a> by Erik Torsner.</p>\n<p>&#8220;The simplest possible infrastructure to go with would be flat files (no database),&#8221; WP-CLI maintainer Daniel Bachhuber said. &#8220;I&#8217;ve chatted with the corresponding WordPress.org folks about hosting. If our middleware application can generate flat files served by some API, then it will be fine to sync those flat files to a WordPress.org server (with rsync or similar).&#8221;</p>\n<p>The team is considering building the API under a separate URL for testing and iteration and then incorporating it back into WordPress.org&#8217;s infrastructure once it is ready. However, the sheer size of the SVN checkouts and the CPU required to sync the files makes it an interesting challenge. DreamHost has volunteered a server for the team to run its checksum generator on while the infrastructure is being developed.</p>\n<p>Torsner&#8217;s WP-CLI subcommand to verify checksums for themes and plugins currently only works with those hosted on WordPress.org, but he is also experimenting with mechanisms for getting checksums from some commercial vendors, including Gravity Forms and Easy Digital Downloads. He said he hopes the project would be capable of keeping these capabilities for commercial plugins after it is incorporated back into WordPress.org.</p>\n<p>The Plugin and Themes Checksums project is currently in the initiation stage and will have an official kickofff during the next WP-CLI meeting on <a href=\"http://www.timeanddate.com/worldclock/fixedtime.html?iso=20171003T1600\" rel=\"noopener\" target=\"_blank\">Tuesday, October 3, 2017, at 11:00 AM CDT</a>. Anyone who would like to volunteer is encouraged to attend, especially those with an interest in security, systems administration, and the technology required to get this project off the ground.</p>\n<p>&#8220;This project will have a huge impact on the perceived and effective security of WordPress installations,&#8221; Schlesser said. &#8220;It can greatly reduce the amount of malware-infested sites plaguing the internet, and through the substantial market share of WordPress, improve the general browsing experience for all net citizens.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Oct 2017 18:37:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"Dev Blog: The Month in WordPress: September 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4920\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wordpress.org/news/2017/10/the-month-in-wordpress-september-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5633:\"<p>This has been an interesting month for WordPress, as a bold move on the JavaScript front brought the WordPress project to the forefront of many discussions across the development world. There have also been some intriguing changes in the WordCamp program, so read on to learn more about the WordPress community during the month of September.</p>\n<hr />\n<h2>JavaScript Frameworks in WordPress</h2>\n<p>Early in the month, <a href=\"https://ma.tt/2017/09/on-react-and-wordpress/\">Matt Mullenweg announced</a> that WordPress will be switching away from React as the JavaScript library WordPress Core might use — this was in response to Facebook’s decision to keep a controversial patent clause in the library’s license, making many WordPress users uncomfortable.</p>\n<p>A few days later, <a href=\"https://ma.tt/2017/09/facebook-dropping-patent-clause/\">Facebook reverted the decision</a>, making React a viable option for WordPress once more. Still, the WordPress Core team is exploring a move <a href=\"https://github.com/WordPress/gutenberg/pull/2463\">to make WordPress framework-agnostic</a>, so that the framework being used could be replaced by any other framework without affecting the rest of the project.</p>\n<p>This is a bold move that will ultimately make WordPress core a lot more flexible, and will also protect it from potential license changes in the future.</p>\n<p>You can get involved in the JavaScript discussion by joining the #core-js channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a> and following the <a href=\"https://make.wordpress.org/core/\">WordPress Core development blog</a>.</p>\n<h2>Community Initiative to Make WordCamps More Accessible</h2>\n<p>A WordPress community member, Ines van Essen, started a new nonprofit initiative to offer financial assistance to community members to attend WordCamps. <a href=\"https://donatewc.org/\">DonateWC</a> launched with a crowdsourced funding campaign to cover the costs of getting things up and running.</p>\n<p>Now that she’s raised the initial funds, Ines plans to set up a nonprofit organization and use donations from sponsors to help people all over the world attend and speak at WordCamps.</p>\n<p>If you would like to support the initiative, you can do so by <a href=\"https://donatewc.org/make-a-donation/\">donating through their website</a>.</p>\n<h2>The WordCamp Incubator Program Returns</h2>\n<p>Following the success of <a href=\"https://make.wordpress.org/community/2017/06/30/wordcamp-incubator-report/\">the first WordCamp Incubator Program</a>, the Community Team is <a href=\"https://make.wordpress.org/community/2017/09/27/wordcamp-incubator-program-v2-new-role-name/\">bringing the program back</a> to assist more underserved cities in kick-starting their WordPress communities.</p>\n<p>The program’s first phase aims to find community members who will volunteer to mentor, assist, and work alongside local leaders in the incubator communities — this is a time-intensive volunteer role that would need to be filled by experienced WordCamp organizers.</p>\n<p>If you would like to be a part of this valuable initiative, join the #community-team channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a> and follow the <a href=\"https://make.wordpress.org/community/\">Community Team blog</a> for updates.</p>\n<h2>WordPress 4.8.2 Security Release</h2>\n<p>On September 19, <a href=\"https://wordpress.org/news/2017/09/wordpress-4-8-2-security-and-maintenance-release/\">WordPress 4.8.2 was released to the world</a> — this was a security release that fixed nine issues in WordPress Core, making the platform more stable and secure for everyone.</p>\n<p>To get involved in building WordPress Core, jump into the #core channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>, and follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>.</p>\n<hr />\n<h2>Further Reading:</h2>\n<ul>\n<li>The WordPress Meetup program hit a significant milestone this month — there are now 500 meetup groups in <a href=\"https://www.meetup.com/pro/wordpress/\">the official chapter program</a>.</li>\n<li>The SWFUpload library <a href=\"https://make.wordpress.org/core/2017/09/07/removing-swfupload/\">will be removed from WordPress Core</a> in version 4.9, scheduled for release in mid-November.</li>\n<li>Matías Ventura put together some useful videos on <a href=\"https://make.wordpress.org/core/2017/08/31/gutenberg-themes/\">how theme developers can integrate Gutenberg into their work</a>.</li>\n<li><a href=\"http://applyfilters.fm/\"><i>Apply Filters</i></a>, the popular WordPress development podcast, will go on hiatus after the upcoming 83rd episode.</li>\n<li>The WordPress Plugin Directory <a href=\"https://make.wordpress.org/plugins/2017/09/04/plugin-support-reps/\">has added the ability</a> for plugin owners to assign plugin support representatives.</li>\n<li>After a couple of slower development weeks, <a href=\"https://make.wordpress.org/core/2017/09/27/whats-new-in-gutenberg-1-2-1/\">Gutenberg v1.2 is out</a> and it’s looking better than ever.</li>\n<li>The third <a href=\"https://wordpress.org/news/2017/09/global-wordpress-translation-day-3/\">Global WordPress Translation Day</a> took place this past weekend — keep an eye on <a href=\"https://make.wordpress.org/polyglots/\">the Polyglots team blog</a> for updates.</li>\n</ul>\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Oct 2017 08:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: Gutenberg 1.2 Adds Postmeta Support and Extended Settings Placeholder\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75199\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/gutenberg-1-2-adds-postmeta-support-and-extended-settings-placeholder\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5590:\"<p>WordPress contributors have not yet made a final decision on the JavaScript framework to adopt for core, but Gutenberg development continues on with <a href=\"https://make.wordpress.org/core/2017/09/27/whats-new-in-gutenberg-1-2-1/\" rel=\"noopener\" target=\"_blank\">version 1.2</a> released this week.</p>\n<p>The update provides a better experience <a href=\"https://github.com/WordPress/gutenberg/pull/2708\" rel=\"noopener\" target=\"_blank\">resolving block conflicts</a> when switching between the &#8220;classic editor&#8221; and Gutenberg. Previously, if a user had created some paragraph blocks in Gutenberg but switched to the classic editor, the tags would get stripped out, making those blocks invalid when moving back to Gutenberg. Version 1.2 merges a pull request that detects whether the post contains blocks and then disables the wpautop behavior in the classic editor to prevent it from stripping the tags.</p>\n<p>This release also offers initial <a href=\"https://github.com/WordPress/gutenberg/pull/2740\" rel=\"noopener\" target=\"_blank\">support for postmeta</a> in block attributes. Gutenberg contributor Gary Pendergast tweeted <a href=\"https://gist.github.com/pento/19b35d621709042fc899e394a9387a54\" rel=\"noopener\" target=\"_blank\">an example plugin</a> for those who want to experiment with it.</p>\n<blockquote class=\"twitter-tweet\">\n<p lang=\"en\" dir=\"ltr\">Just between us, the new Gutenberg 1.2 release includes the first version of postmeta support! If you want to start experimenting with it, here\'s a sample plugin to get you going. <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /><a href=\"https://t.co/O1GbKZ3xzt\">https://t.co/O1GbKZ3xzt</a></p>\n<p>&mdash; Gary (@GaryPendergast) <a href=\"https://twitter.com/GaryPendergast/status/913623415549976577?ref_src=twsrc%5Etfw\">September 29, 2017</a></p></blockquote>\n<p></p>\n<p>Another new item you&#8217;ll notice in version 1.2 is the addition of word and block counts to the table of contents. The value of knowing how many blocks are in play on the page or how many headings have been used is not immediately evident. It strikes me as a rather large and obtrusive display of non-essential information, which for some reason has been given priority placement at the top of the editor.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/09/Screen-Shot-2017-09-29-at-10.36.02-PM.png?ssl=1\"><img /></a></p>\n<p>Gutenberg is getting ready to support metaboxes and this release adds a placeholder for the proposed Extended Settings panel. The <a href=\"https://github.com/WordPress/gutenberg/pull/2800\" rel=\"noopener\" target=\"_blank\">metabox placeholder shell</a> currently sits beneath the content with a &#8220;coming soon&#8221; message.</p>\n<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2017/09/Screen-Shot-2017-09-29-at-10.56.48-PM.png?ssl=1\"><img /></a></p>\n<p>Developer Ross Wintle <a href=\"https://github.com/WordPress/gutenberg/pull/2800#issuecomment-332573684\" rel=\"noopener\" target=\"_blank\">commented</a> on the pull request with a few concerns about the naming and placement of this panel with notes on how it might impact interfaces that have required meta fields:</p>\n<blockquote><p>\na) Meta boxes currently have several places that they can live: in the sidebar, below post content with different priorities and contexts<br />\nb) I also have cases where I&#8217;ve improved the editing experience for my users by having meta boxes above or below the title because this fits with their content editing flow.<br />\nc) I really don&#8217;t like the &#8220;Extended settings&#8221; title. For some editing workflows the information in meta boxes is actually critical, core content/settings, not something optional/added-on/extended. Is this editable? Can developers add additional sections of their own like this?</p></blockquote>\n<p>Gutenberg engineer Riad Benguella acknowledged these concerns as legitimate and said the team is still exploring different options for the panel.</p>\n<p>&#8220;For the first iteration, we&#8217;ll probably keep the collapsed state but have multiple areas,&#8221; Benguella said. &#8220;There are some good design proposals dropping the expanding area (for the content area) and replacing them with &#8220;separators,&#8221; which might be <a href=\"https://github.com/WordPress/gutenberg/issues/952#issuecomment-312804592\" rel=\"noopener\" target=\"_blank\">good as a v2</a>.&#8221;</p>\n<p>It may have seemed like Gutenberg development has been on hold due to the delayed JavaScript framework decision, but development is still ongoing. It slowed over the past couple weeks while most of the project&#8217;s chief contributors were attending the Automattic GM.</p>\n<p>&#8220;The framework decision doesn’t affect most Gutenberg development work &#8211; because the framework is hidden behind a compatibility layer, the majority of development work (at least, the work that touches the UI) can talk to the compatibility layer,&#8221; contributor Gary Pendergast said.</p>\n<p>&#8220;There are also large areas of code that don’t need the framework at all. For example, adding <a href=\"https://github.com/WordPress/gutenberg/pull/2740\" rel=\"noopener\" target=\"_blank\">postmeta support</a> was just about writing the glue between the Block API and the REST API.&#8221;</p>\n<p>Pendergast said that even once a JavaScript framework decision is made, Gutenberg will only require one or two developers to work on the necessary changes, but all other contributors will be able to continue on without any issues.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 30 Sep 2017 04:21:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"\n	\n	\n	\n	\n	\n	\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:111:\"WPTavern: DigitalOcean Partners with GitHub to Support Open Source Projects during Hacktoberfest October 1–31\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=75163\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:120:\"https://wptavern.com/digitalocean-partners-with-github-to-support-open-source-projects-during-hacktoberfest-october-1-31\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2705:\"<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2017/09/Screen-Shot-2017-09-29-at-12.29.22-PM.png?ssl=1\"><img /></a></p>\n<p>DigitalOcean is organizing its fourth annual <a href=\"https://hacktoberfest.digitalocean.com\" rel=\"noopener\" target=\"_blank\">Hacktoberfest</a> in partnership with GitHub. The event was created to support open source projects and participants can earn a free t-shirt by contributing four pull requests during the month of October.</p>\n<p>More than 29,000 people signed up for <a href=\"https://blog.digitalocean.com/open-source-at-its-hacktoberbest/\" rel=\"noopener\" target=\"_blank\">Hacktoberfest 2016</a> from 114 countries and 10,227 people completed the challenge. The event tracked a record-breaking 92,569 total PRs opened, up from 49,000 the previous year. Participants contributed to more than 29,000 repositories, spurring progress on thousands of open source projects and making maintainers very busing during the month of October.</p>\n<p>In preparation for the event, maintainers can add the &#8220;Hacktoberfest&#8221; label to issues in their GitHub projects that would be suitable for new contributors to work on. Participants can <a href=\"https://github.com/search?q=label:hacktoberfest+state:open+type:issue\" rel=\"noopener\" target=\"_blank\">browse all the &#8220;Hacktoberfest&#8221; issues</a> if they need some inspiration to get started.</p>\n<p>Both <a href=\"https://github.com/woocommerce/woocommerce/issues?q=is%3Aissue%20is%3Aopen%20label%3AHacktoberfest\" rel=\"noopener\" target=\"_blank\">WooCommerce</a> and <a href=\"https://github.com/WordPress/gutenberg/labels/Hacktoberfest\" rel=\"noopener\" target=\"_blank\">Gutenberg</a> plugin maintainers have already started applying the &#8220;Hacktoberfest&#8221; label to  issues to help WordPress developers find a good entry point for contributing.</p>\n<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2017/09/Screen-Shot-2017-09-29-at-12.19.21-PM.png?ssl=1\"><img /></a></p>\n<p><a href=\"https://hacktoberfest.digitalocean.com/\" rel=\"noopener\" target=\"_blank\">Hacktoberfest</a> begins Sunday, October 1, but participants can sign up anytime between October 1 and October 31. All participants will receive limited-edition Hactoberfest stickers, even if you don&#8217;t complete the four pull requests. Those who complete the challenge before October 31st will be eligible to receive a shirt. Pull requests can be made in any public GitHub-hosted repository and are not limited to those with the Hacktoberfest label.</p>\n<p>Please leave a comment on this post if you have a WordPress-related plugin, theme, or project that has a few designated Hacktoberfest issues for new contributors.</p>\n<p></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 29 Sep 2017 18:16:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 26 Oct 2017 04:55:15 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Thu, 26 Oct 2017 04:30:10 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 250\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `im_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(815, '_site_transient_timeout_community-events-6d8c824295d1a3f4ae1ebd9c4d88801e', '1507741948', 'no'),
(816, '_site_transient_community-events-6d8c824295d1a3f4ae1ebd9c4d88801e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"122.173.209.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Mastering selection of Themes and Plugins\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982825/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-14 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:44:\"WordPress & WordPress Community Introduction\";s:3:\"url\";s:63:\"https://www.meetup.com/Noida-WordPress-Meetup/events/242969072/\";s:6:\"meetup\";s:22:\"Noida WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Noida-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-10-15 16:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Noida, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.57491900000000129011823446489870548248291015625;s:9:\"longitude\";d:77.318802000000005136826075613498687744140625;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:48:\"Increasing engagement and decreasing bounce rate\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Mastering PHPMyAdmin for WordPress\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982967/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-11 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:45:\"WordPress maintenance for heavy traffic sites\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982937/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-11 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(1281, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.8.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.8.3\";s:7:\"version\";s:5:\"4.8.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1509806342;s:15:\"version_checked\";s:5:\"4.8.3\";s:12:\"translations\";a:0:{}}', 'no'),
(527, '_site_transient_timeout_community-events-405111f80632b4ab5e9ceade5567e9a4', '1506203270', 'no'),
(528, '_site_transient_community-events-405111f80632b4ab5e9ceade5567e9a4', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"110.225.221.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Global WordPress Translation Day 3\";s:3:\"url\";s:61:\"https://www.meetup.com/WordPress-Chandigarh/events/240104941/\";s:6:\"meetup\";s:20:\"WordPress Chandigarh\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Chandigarh/\";s:4:\"date\";s:19:\"2017-09-30 13:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Chandigarh, CH, India\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:30.75;s:9:\"longitude\";d:76.7799987792970028976924368180334568023681640625;}}}}', 'no'),
(900, '_site_transient_timeout_community-events-30e7201b631d03d603678cacc26f6109', '1507923738', 'no'),
(901, '_site_transient_community-events-30e7201b631d03d603678cacc26f6109', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"122.173.244.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Mastering Selection of Themes and Plugins\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982825/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-14 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:44:\"WordPress & WordPress Community Introduction\";s:3:\"url\";s:63:\"https://www.meetup.com/Noida-WordPress-Meetup/events/242969072/\";s:6:\"meetup\";s:22:\"Noida WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Noida-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-10-15 16:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Noida, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.57491900000000129011823446489870548248291015625;s:9:\"longitude\";d:77.318802000000005136826075613498687744140625;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:48:\"Increasing engagement and decreasing bounce rate\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Mastering PHPMyAdmin for WordPress\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982967/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-11 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:45:\"WordPress maintenance for heavy traffic sites\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982937/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-11 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(1086, '_site_transient_timeout_browser_dbfb910391ce0a09cca4f91af902d5b0', '1509598508', 'no'),
(1302, '_transient_is_multi_author', '0', 'yes'),
(1087, '_site_transient_browser_dbfb910391ce0a09cca4f91af902d5b0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"61.0.3163.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(837, 'rm_option_front_sub_page_id', '23', 'yes'),
(838, 'rm_option_front_login_page_id', '24', 'yes'),
(839, 'rm_option_inserted_sample_data', 'O:8:\"stdClass\":1:{s:5:\"forms\";a:2:{i:0;O:8:\"stdClass\":2:{s:7:\"form_id\";s:1:\"2\";s:9:\"form_type\";s:1:\"1\";}i:1;O:8:\"stdClass\":2:{s:7:\"form_id\";s:1:\"1\";s:9:\"form_type\";s:1:\"0\";}}}', 'no'),
(840, 'rm_option_install_date', '1507708272', 'no'),
(841, 'rm_option_install_type', 'basic', 'no'),
(842, 'rm_option_last_update_time', '1507708272', 'no'),
(843, 'rm_option_ex_chronos_db_version', '1', 'no'),
(844, 'rm_option_last_activation_time', '1507708272', 'no'),
(845, 'rm_option_db_version', '4.9', 'no'),
(846, 'widget_rm_otp_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(847, 'widget_rm_form_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(849, 'rm_option_automation_intro_time', '1507708273', 'no'),
(850, 'rm_option_rm_version', '3.7.9.6', 'yes'),
(851, 'rm_option_tour_state', 'a:4:{s:17:\"form_manager_tour\";s:5:\"taken\";s:17:\"form_gensett_tour\";b:0;s:27:\"form_setting_dashboard_tour\";b:0;s:16:\"submissions_tour\";b:0;}', 'no'),
(1092, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1509036912', 'no'),
(1093, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1508993712', 'no'),
(1096, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1509036913', 'no'),
(1097, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1508993713', 'no'),
(580, '_site_transient_timeout_community-events-452d1ada4d658348117ef8f70d88683c', '1506446148', 'no'),
(581, '_site_transient_community-events-452d1ada4d658348117ef8f70d88683c', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"122.173.211.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Mastering selection of Themes and Plugins\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982825/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-07 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:44:\"WordPress & WordPress Community Introduction\";s:3:\"url\";s:63:\"https://www.meetup.com/Noida-WordPress-Meetup/events/242969072/\";s:6:\"meetup\";s:22:\"Noida WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Noida-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-10-07 16:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Noida, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.57491900000000129011823446489870548248291015625;s:9:\"longitude\";d:77.318802000000005136826075613498687744140625;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Increasing engagement and decreasing bounce rate \";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-14 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:45:\"WordPress maintenance for heavy traffic sites\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982937/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:46:\"Choosing between WordPress.com and Self-hosted\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982950/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-04 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(557, '_site_transient_timeout_community-events-fefbf938941d88c69c82c0e6bc589b45', '1506363597', 'no'),
(558, '_site_transient_community-events-fefbf938941d88c69c82c0e6bc589b45', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"122.173.206.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Mastering selection of Themes and Plugins\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982825/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-07 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:44:\"WordPress & WordPress Community Introduction\";s:3:\"url\";s:63:\"https://www.meetup.com/Noida-WordPress-Meetup/events/242969072/\";s:6:\"meetup\";s:22:\"Noida WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Noida-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-10-07 16:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Noida, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.57491900000000129011823446489870548248291015625;s:9:\"longitude\";d:77.318802000000005136826075613498687744140625;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Increasing engagement and decreasing bounce rate \";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-14 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:45:\"WordPress maintenance for heavy traffic sites\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982937/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:46:\"Choosing between WordPress.com and Self-hosted\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982950/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-04 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(827, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1507718625', 'no'),
(828, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4383;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2510;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2370;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:2338;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1837;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1605;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1598;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1438;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1357;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1354;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1346;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1278;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1272;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1143;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1057;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1051;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:997;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:955;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:824;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:824;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:815;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:777;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:772;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:671;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:670;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:666;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:655;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:651;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:647;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:638;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:630;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:615;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:597;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:592;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:587;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:586;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:579;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:579;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:563;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:559;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:546;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:535;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:527;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:519;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:507;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:503;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:497;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:492;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:477;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:475;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:475;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:472;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:453;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:447;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:445;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:441;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:441;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:439;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:423;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:417;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:411;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:409;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:406;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:405;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:404;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:397;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:389;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:383;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:381;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:371;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:356;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:346;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:339;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:333;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:332;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:332;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:330;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:330;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:329;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:327;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:324;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:323;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:323;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:318;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:306;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:302;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:300;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:294;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:294;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:292;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:291;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:287;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:284;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:283;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:280;}s:8:\"lightbox\";a:3:{s:4:\"name\";s:8:\"lightbox\";s:4:\"slug\";s:8:\"lightbox\";s:5:\"count\";i:278;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:276;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:276;}s:7:\"tinymce\";a:3:{s:4:\"name\";s:7:\"tinyMCE\";s:4:\"slug\";s:7:\"tinymce\";s:5:\"count\";i:273;}s:7:\"captcha\";a:3:{s:4:\"name\";s:7:\"captcha\";s:4:\"slug\";s:7:\"captcha\";s:5:\"count\";i:271;}}', 'no'),
(1153, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1509806344;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"4.4.12\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip\";s:5:\"icons\";a:3:{s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:7:\"default\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";}s:7:\"banners\";a:3:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:7:\"default\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(513, 'acf_version', '4.4.12', 'yes'),
(490, '_site_transient_timeout_community-events-ce46264260a776cc2d96cf0c93d6f02f', '1506109785', 'no'),
(491, '_site_transient_community-events-ce46264260a776cc2d96cf0c93d6f02f', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"122.173.216.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:27:\"How to start with WordPress\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982565/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-09-23 17:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:44:\"WordPress & WordPress Community Introduction\";s:3:\"url\";s:63:\"https://www.meetup.com/Noida-WordPress-Meetup/events/242969072/\";s:6:\"meetup\";s:22:\"Noida WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Noida-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-09-24 16:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Noida, UP, India\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:28.579999923706001396794817992486059665679931640625;s:9:\"longitude\";d:77.330001831055000138803734444081783294677734375;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Mastering selection of Themes and Plugins\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982825/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-07 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Increasing engagement and decreasing bounce rate \";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-14 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:45:\"WordPress maintenance for heavy traffic sites\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982937/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(410, '_site_transient_timeout_community-events-d03e1ad7c9f027c7a593511bd1fc5ea9', '1505752726', 'no'),
(411, '_site_transient_community-events-d03e1ad7c9f027c7a593511bd1fc5ea9', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"122.173.198.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:27:\"How to start with WordPress\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982565/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-09-23 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:44:\"WordPress & WordPress Community Introduction\";s:3:\"url\";s:63:\"https://www.meetup.com/Noida-WordPress-Meetup/events/242969072/\";s:6:\"meetup\";s:22:\"Noida WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Noida-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-09-24 16:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Noida, UP, India\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:28.579999923706001396794817992486059665679931640625;s:9:\"longitude\";d:77.330001831055000138803734444081783294677734375;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Mastering selection of Themes and Plugins\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982825/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-07 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Increasing engagement and decreasing bounce rate \";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-14 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:45:\"WordPress maintenance for heavy traffic sites\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982937/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(1088, '_site_transient_timeout_community-events-06687a7e2776ec8b5f11c89d03e7e2f4', '1509036912', 'no'),
(1089, '_site_transient_community-events-06687a7e2776ec8b5f11c89d03e7e2f4', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"122.173.67.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:48:\"Increasing engagement and decreasing bounce rate\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Open house meetup for new WordPress users\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/244407312/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.558254000000001582293407409451901912689208984375;s:9:\"longitude\";d:77.2081680000000005748006515204906463623046875;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:45:\"WordPress maintenance for heavy traffic sites\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982937/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-11 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:29:\"Adding custom fields in WP DB\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242983000/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-18 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:26:\"Setting Custom Page for WP\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242983020/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-25 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(1090, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1509036912', 'no');
INSERT INTO `im_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1091, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2017 07:04:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=4.9-beta4-42026\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.9 Beta 4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-4/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 25 Oct 2017 07:04:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4962\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:364:\"WordPress 4.9 Beta 4 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can download the beta here (zip). [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Mel Choyce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2446:\"<p>WordPress 4.9 Beta 4 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"https://wordpress.org/wordpress-4.9-beta4.zip\">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.9, check out the <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> blog post. Since the Beta 1 release, we’ve made <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=41846&amp;stop_rev=41777&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">70 changes</a> in Beta 2, and <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=41938&amp;stop_rev=41847&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">92 changes</a> in <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-3/\">Beta 3</a>. In Beta 4, we&#8217;ve made <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=42020&amp;stop_rev=41940&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">80 changes</a>, focusing on bug fixes and finalizing new features.</p>\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</p>\n<p><i>Beta 4 at last,<br />\nRC 1 draws ever near.<br />\nLet&#8217;s make it bug-free. <img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f41b.png\" alt=\"🐛\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /><img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f6ab.png\" alt=\"🚫\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></i></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4962\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.9 Beta 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 05:18:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:13:\"Documentation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4953\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:364:\"WordPress 4.9 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can download the beta here (zip). [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Weston Ruter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3479:\"<p>WordPress 4.9 Beta 3 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"https://wordpress.org/wordpress-4.9-beta3.zip\">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.9, check out the <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> blog post. Since the Beta 1 release, we’ve made <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=41846&amp;stop_rev=41777&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">70 changes</a> in Beta 2 and <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=41938&amp;stop_rev=41847&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">92 changes</a> in Beta 3. A few of these newest changes to take note of in particular:</p>\n<ul>\n<li>The plugin/theme editors now show files in a scrollable expandable tree list. See <a href=\"https://core.trac.wordpress.org/ticket/24048\">#24048</a>.</li>\n<li>Backwards compatibility has been improved for MediaElement.js, which is upgraded from 2.2 to 4.2. See <a href=\"https://core.trac.wordpress.org/ticket/42189\">#42189</a>.</li>\n<li>When you create post stubs in the Customizer (such as for nav menu items, for the homepage or the posts page), if you then schedule your customized changes or save them as a draft, then these Customizer-created posts will appear in the admin as “Customization Drafts”; these drafts can be edited before your customized changes are published, at which time these posts (or pages) will also be automatically published. See <a href=\"https://core.trac.wordpress.org/ticket/42220\">#42220</a>.</li>\n<li>Theme browsing and installation experience in the Customizer has seen some bugfixes (e.g. <a href=\"https://core.trac.wordpress.org/ticket/42215\">#42215</a> and <a href=\"https://core.trac.wordpress.org/ticket/42212\">#42212</a>), with some known remaining issues outstanding <a href=\"https://core.trac.wordpress.org/ticket/42052\">in Safari</a>.</li>\n<li>There is now a callout on the dashboard to install and activate Gutenberg. See <a href=\"https://core.trac.wordpress.org/ticket/41316\">#41316</a>.</li>\n<li>Menus in the Customizer have seen additional usability improvements. See <a href=\"https://core.trac.wordpress.org/ticket/36279\">#36279</a> and <a href=\"https://core.trac.wordpress.org/ticket/42114\">#42114</a>.</li>\n</ul>\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</p>\n<p><i>Many refinements<br />\nExist within this release;<br />\nCan you find them all?</i></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4953\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.9 Beta 2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 12 Oct 2017 06:29:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4946\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:364:\"WordPress 4.9 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can download the beta here (zip). [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"Mel Choyce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1651:\"<p>WordPress 4.9 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"https://wordpress.org/wordpress-4.9-beta2.zip\">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.9, check out the <a href=\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\">Beta 1</a> blog post. Since then, we’ve made <a href=\"https://core.trac.wordpress.org/log/trunk/?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=41846&amp;stop_rev=41777&amp;limit=100&amp;sfp_email=&amp;sfph_mail=\">70 changes</a> in Beta 2.</p>\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</p>\n<p><em>Let’s test all of these:</em><br />\n<em>code editing, theme switches,</em><br />\n<em>widgets, scheduling.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4946\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 4.9 Beta 1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2017/10/wordpress-4-9-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 05 Oct 2017 05:54:02 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4926\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:329:\"WordPress 4.9 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Jeffrey Paul\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9159:\"<p>WordPress 4.9 Beta 1 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.9, try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href=\"https://wordpress.org/wordpress-4.9-beta1.zip\">download the beta here</a> (zip).</p>\n<p>WordPress 4.9 is slated for release on <a href=\"https://make.wordpress.org/core/4-9/\">November 14</a>, but we need your help to get there. We’ve been working on making it even easier to customize your site. Here are some of the bigger items to test and help us find as many bugs as possible in the coming weeks:</p>\n<ul>\n<li>Drafting (<a href=\"https://core.trac.wordpress.org/ticket/39896\">#39896</a>) and scheduling (<a href=\"https://core.trac.wordpress.org/ticket/28721\">#28721</a>) of changes in the Customizer. Once you save or schedule a changeset, when any user comes into the Customizer the pending changes will be autoloaded. A button is provided to discard changes to restore the Customizer to the last published state. (This is a new “linear” mode for changesets, as opposed to “branching” mode which can be enabled by filter so that every time  user opens the Customizer a new blank changeset will be started.)</li>\n<li>Addition of a frontend preview link to the Customizer to allow changes to be browsed on the frontend, even without a user being logged in (<a href=\"https://core.trac.wordpress.org/ticket/39896\">#39896</a>).</li>\n<li>Addition of autosave revisions in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/39275\">#39275</a>).</li>\n<li>A brand new theme browsing experience in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/37661\">#37661</a>).</li>\n<li>Gallery widget (<a href=\"https://core.trac.wordpress.org/ticket/41914\">#41914</a>), following the media and image widgets introduced in 4.8.</li>\n<li>Support for shortcodes in Text widgets (<a href=\"https://core.trac.wordpress.org/ticket/10457\">#10457</a>).</li>\n<li>Support for adding media to Text widgets (<a href=\"https://core.trac.wordpress.org/ticket/40854\">#40854</a>).</li>\n<li>Support for adding oEmbeds outside post content, including Text widgets (<a href=\"https://core.trac.wordpress.org/ticket/34115\">#34115</a>).</li>\n<li>Support for videos from providers other than YouTube and Vimeo in the Video widget (<a href=\"https://core.trac.wordpress.org/ticket/42039\">#42039</a>)</li>\n<li>Improve the flow for creating new menus in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/40104\">#40104</a>).</li>\n<li>Educated guess mapping of nav menus and widgets when switching themes (<a href=\"https://core.trac.wordpress.org/ticket/39692\">#39692</a>).</li>\n<li>Plugins: Introduce singular capabilities for activating and deactivating individual plugins (<a href=\"https://core.trac.wordpress.org/ticket/38652\">#38652</a>).</li>\n<li>Sandbox PHP file edits in both plugins and themes, without auto-deactivation when an error occurs; a PHP edit that introduces a fatal error is rolled back with an opportunity then for the user to fix the error and attempt to re-save. (<a href=\"https://core.trac.wordpress.org/ticket/21622\">#21622</a>).</li>\n<li>Addition of dirty state for widgets on the admin screen, indicating when a widget has been successfully saved and showing an “Are you sure?” dialog when attempting to leave without saving changes. (<a href=\"https://core.trac.wordpress.org/ticket/23120\">#23120</a>, <a href=\"https://core.trac.wordpress.org/ticket/41610\">#41610</a>)</li>\n</ul>\n<p>As always, there have been exciting changes for developers to explore as well, such as:</p>\n<ul>\n<li>CodeMirror editor added to theme/plugin editor, Custom CSS in Customizer, and Custom HTML widgets. Integration includes support for linters to catch errors before you attempt to save. Includes new APIs for plugins to instantiate editors. (<a href=\"https://core.trac.wordpress.org/ticket/12423\">#12423</a>)</li>\n<li>Introduction of an extensible code editor control for adding instances of CodeMirror to the Customizer. (<a href=\"https://core.trac.wordpress.org/ticket/41897\">#41897</a>)</li>\n<li>Addition of global notifications area (<a href=\"https://core.trac.wordpress.org/ticket/35210\">#35210</a>), panel and section notifications (<a href=\"https://core.trac.wordpress.org/ticket/38794\">#38794</a>), and a notification overlay that takes over the entire screen in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/37727\">#37727</a>).</li>\n<li>A date/time control in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/42022\">#42022</a>).</li>\n<li>Improve usability of Customize JS API (<a href=\"https://core.trac.wordpress.org/ticket/42083\">#42083</a>, <a href=\"https://core.trac.wordpress.org/ticket/37964\">#37964</a>, <a href=\"https://core.trac.wordpress.org/ticket/36167\">#36167</a>).</li>\n<li>Introduction of control templates for base controls (<a href=\"https://core.trac.wordpress.org/ticket/30738\">#30738</a>).</li>\n<li>Use WP_Term_Query when transforming tax queries (<a href=\"https://core.trac.wordpress.org/ticket/37038\">#37038</a>).</li>\n<li>Database: Add support for MySQL servers connecting to IPv6 hosts (<a href=\"https://core.trac.wordpress.org/ticket/41722\">#41722</a>).</li>\n<li>Emoji: Bring Twemoji compatibility to PHP (<a href=\"https://core.trac.wordpress.org/ticket/35293\">#35293</a>). Test for any weirdness with emoji in RSS feeds or emails.</li>\n<li>I18N: Introduce the Plural_Forms class (<a href=\"https://core.trac.wordpress.org/ticket/41562\">#41562</a>).</li>\n<li>Media: Upgrade MediaElement.js to 4.2.5-74e01a40 (<a href=\"https://core.trac.wordpress.org/ticket/39686\">#39686</a>).</li>\n<li>Media: Use max-width for default captions (<a href=\"https://core.trac.wordpress.org/ticket/33981\">#33981</a>). We will want to make sure this doesn’t cause unexpected visual regressions in existing themes, default themes were all fine in testing.</li>\n<li>Media: Reduce duplicated custom header crops in the Customizer (<a href=\"https://core.trac.wordpress.org/ticket/21819\">#21819</a>).</li>\n<li>Media: Store video creation date in meta (<a href=\"https://core.trac.wordpress.org/ticket/35218\">#35218</a>). Please help test different kinds of videos.</li>\n<li>Multisite: Introduce get_site_by() (<a href=\"https://core.trac.wordpress.org/ticket/40180\">#40180</a>).</li>\n<li>Multisite: Improve get_blog_details() by using get_site_by() (<a href=\"https://core.trac.wordpress.org/ticket/40228\">#40228</a>).</li>\n<li>Multisite: Improve initializing available roles when switch sites (<a href=\"https://core.trac.wordpress.org/ticket/38645\">#38645</a>).</li>\n<li>Multisite: Initialize a user&#8217;s roles correctly when setting them up for a different site (<a href=\"https://core.trac.wordpress.org/ticket/36961\">#36961</a>).</li>\n<li>REST API: Support registering complex data structures for settings and meta</li>\n<li>REST API: Support for objects in schema validation and sanitization (<a href=\"https://core.trac.wordpress.org/ticket/38583\">#38583</a>)</li>\n<li>Role/Capability: Introduce capabilities dedicated to installing and updating language files (<a href=\"https://core.trac.wordpress.org/ticket/39677\">#39677</a>).</li>\n<li>Remove SWFUpload (<a href=\"https://core.trac.wordpress.org/ticket/41752\">#41752</a>).</li>\n<li>Users: Require a confirmation link in an email to be clicked when a user attempts to change their email address (<a href=\"https://core.trac.wordpress.org/ticket/16470\">#16470</a>).</li>\n<li>Core and the unit test suite is fully compatible with the upcoming release of PHP 7.2</li>\n</ul>\n<p>If you want a more in-depth view of what major changes have made it into 4.9, <a href=\"https://make.wordpress.org/core/tag/4-9/\">check out posts tagged with 4.9 on the main development blog</a>, or look at a <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=4.9&amp;group=component&amp;order=priority\">list of everything</a> that’s changed. There will be more developer notes to come, so keep an eye out for those as well.</p>\n<p>Do you speak a language other than English? <a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>\n<p><b>If you think you’ve found a bug</b>, you can post to the <a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find <a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</p>\n<p>Happy testing!</p>\n<p><i>Without your testing,<br />\nwe might hurt the internet.<br />\nPlease help us find bugs.<img src=\"https://s.w.org/images/core/emoji/2.3/72x72/1f41b.png\" alt=\"🐛\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /></i></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4926\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"The Month in WordPress: September 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wordpress.org/news/2017/10/the-month-in-wordpress-september-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 02 Oct 2017 08:00:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4920\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:340:\"This has been an interesting month for WordPress, as a bold move on the JavaScript front brought the WordPress project to the forefront of many discussions across the development world. There have also been some intriguing changes in the WordCamp program, so read on to learn more about the WordPress community during the month of [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5634:\"<p>This has been an interesting month for WordPress, as a bold move on the JavaScript front brought the WordPress project to the forefront of many discussions across the development world. There have also been some intriguing changes in the WordCamp program, so read on to learn more about the WordPress community during the month of September.</p>\n<hr />\n<h2>JavaScript Frameworks in WordPress</h2>\n<p>Early in the month, <a href=\"https://ma.tt/2017/09/on-react-and-wordpress/\">Matt Mullenweg announced</a> that WordPress will be switching away from React as the JavaScript library WordPress Core might use — this was in response to Facebook’s decision to keep a controversial patent clause in the library’s license, making many WordPress users uncomfortable.</p>\n<p>A few days later, <a href=\"https://ma.tt/2017/09/facebook-dropping-patent-clause/\">Facebook reverted the decision</a>, making React a viable option for WordPress once more. Still, the WordPress Core team is exploring a move <a href=\"https://github.com/WordPress/gutenberg/pull/2463\">to make WordPress framework-agnostic</a>, so that the framework being used could be replaced by any other framework without affecting the rest of the project.</p>\n<p>This is a bold move that will ultimately make WordPress core a lot more flexible, and will also protect it from potential license changes in the future.</p>\n<p>You can get involved in the JavaScript discussion by joining the #core-js channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a> and following the <a href=\"https://make.wordpress.org/core/\">WordPress Core development blog</a>.</p>\n<h2>Community Initiative to Make WordCamps More Accessible</h2>\n<p>A WordPress community member, Ines van Essen, started a new nonprofit initiative to offer financial assistance to community members to attend WordCamps. <a href=\"https://donatewc.org/\">DonateWC</a> launched with a crowdsourced funding campaign to cover the costs of getting things up and running.</p>\n<p>Now that she’s raised the initial funds, Ines plans to set up a nonprofit organization and use donations from sponsors to help people all over the world attend and speak at WordCamps.</p>\n<p>If you would like to support the initiative, you can do so by <a href=\"https://donatewc.org/make-a-donation/\">donating through their website</a>.</p>\n<h2>The WordCamp Incubator Program Returns</h2>\n<p>Following the success of <a href=\"https://make.wordpress.org/community/2017/06/30/wordcamp-incubator-report/\">the first WordCamp Incubator Program</a>, the Community Team is <a href=\"https://make.wordpress.org/community/2017/09/27/wordcamp-incubator-program-v2-new-role-name/\">bringing the program back</a> to assist more underserved cities in kick-starting their WordPress communities.</p>\n<p>The program’s first phase aims to find community members who will volunteer to mentor, assist, and work alongside local leaders in the incubator communities — this is a time-intensive volunteer role that would need to be filled by experienced WordCamp organizers.</p>\n<p>If you would like to be a part of this valuable initiative, join the #community-team channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a> and follow the <a href=\"https://make.wordpress.org/community/\">Community Team blog</a> for updates.</p>\n<h2>WordPress 4.8.2 Security Release</h2>\n<p>On September 19, <a href=\"https://wordpress.org/news/2017/09/wordpress-4-8-2-security-and-maintenance-release/\">WordPress 4.8.2 was released to the world</a> — this was a security release that fixed nine issues in WordPress Core, making the platform more stable and secure for everyone.</p>\n<p>To get involved in building WordPress Core, jump into the #core channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>, and follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>.</p>\n<hr />\n<h2>Further Reading:</h2>\n<ul>\n<li>The WordPress Meetup program hit a significant milestone this month — there are now 500 meetup groups in <a href=\"https://www.meetup.com/pro/wordpress/\">the official chapter program</a>.</li>\n<li>The SWFUpload library <a href=\"https://make.wordpress.org/core/2017/09/07/removing-swfupload/\">will be removed from WordPress Core</a> in version 4.9, scheduled for release in mid-November.</li>\n<li>Matías Ventura put together some useful videos on <a href=\"https://make.wordpress.org/core/2017/08/31/gutenberg-themes/\">how theme developers can integrate Gutenberg into their work</a>.</li>\n<li><a href=\"http://applyfilters.fm/\"><i>Apply Filters</i></a>, the popular WordPress development podcast, will go on hiatus after the upcoming 83rd episode.</li>\n<li>The WordPress Plugin Directory <a href=\"https://make.wordpress.org/plugins/2017/09/04/plugin-support-reps/\">has added the ability</a> for plugin owners to assign plugin support representatives.</li>\n<li>After a couple of slower development weeks, <a href=\"https://make.wordpress.org/core/2017/09/27/whats-new-in-gutenberg-1-2-1/\">Gutenberg v1.2 is out</a> and it’s looking better than ever.</li>\n<li>The third <a href=\"https://wordpress.org/news/2017/09/global-wordpress-translation-day-3/\">Global WordPress Translation Day</a> took place this past weekend — keep an eye on <a href=\"https://make.wordpress.org/polyglots/\">the Polyglots team blog</a> for updates.</li>\n</ul>\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4920\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Global WordPress Translation Day 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2017/09/global-wordpress-translation-day-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 27 Sep 2017 11:56:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:6:\"Events\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:32:\"global wordpress translation day\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"polyglots\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4915\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:398:\"On September 30 2017, the WordPress Polyglots Team &#8211; whose mission is to translate WordPress into as many languages as possible &#8211; will hold its third Global WordPress Translation Day, a 24-hour, round-the-clock, digital and physical global marathon dedicated to the localisation and internationalisation of the WordPress platform and ecosystem, a structure that powers, today, [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4124:\"<p><span style=\"font-weight: 400\">On September 30 2017, the WordPress Polyglots Team &#8211; whose mission is to translate WordPress into as many languages as possible &#8211; will hold its third <a href=\"https://wptranslationday.org/\">Global WordPress Translation Day</a>, a 24-hour, round-the-clock, digital and physical global marathon dedicated to the localisation and internationalisation of the WordPress platform and ecosystem, a structure that powers, today, over 28% of all existing websites.</span></p>\n<p><span style=\"font-weight: 400\">The localisation process allows for WordPress and for all WordPress-related products (themes and plugins) to be available in local languages, so to improve their accessibility and usage and to allow as many people as possible to take advantage of the free platform and services available.</span></p>\n<p><span style=\"font-weight: 400\">In a (not completely) serendipitous coincidence, September 30 has also been declared by the United Nations “International Translation Day”, to pay homage to the great services of translators everywhere, one that allows communication and exchange.</span></p>\n<p><span style=\"font-weight: 400\">The event will feature a series of multi-language live speeches (training sessions, tutorials, case histories, etc.) that will be screen-casted in streaming, starting from Australia and the Far East and ending in the Western parts of the United States.</span></p>\n<p><span style=\"font-weight: 400\">In that same 24-hour time frame, Polyglots worldwide will gather physically in local events, for dedicated training and translations sprints (and for some fun and socializing as well), while those unable to physically join their teams will do so remotely.</span></p>\n<p><span style=\"font-weight: 400\">A big, fun, useful and enlightening party and a lovely mix of growing, giving, learning and teaching, to empower, and cultivate, and shine.</span></p>\n<p><span style=\"font-weight: 400\">Here are some stats about the first two events:</span></p>\n<p><b>Global WordPress Translation Day 1</b></p>\n<ul>\n<li><span style=\"font-weight: 400\">   </span><span style=\"font-weight: 400\">448 translators worldwide</span></li>\n<li><span style=\"font-weight: 400\">   </span><span style=\"font-weight: 400\">50 local events worldwide</span></li>\n<li><span style=\"font-weight: 400\">   </span><span style=\"font-weight: 400\">54 locales involved</span></li>\n<li><span style=\"font-weight: 400\">   </span><span style=\"font-weight: 400\">40350 strings translated, in</span></li>\n<li><span style=\"font-weight: 400\">   </span><span style=\"font-weight: 400\">597 projects</span></li>\n</ul>\n<p><b>Global WordPress Translation Day 2</b></p>\n<ul>\n<li><span style=\"font-weight: 400\">   </span><span style=\"font-weight: 400\">780 translators worldwide</span></li>\n<li><span style=\"font-weight: 400\">   </span><span style=\"font-weight: 400\">67 local events worldwide</span></li>\n<li><span style=\"font-weight: 400\">   </span><span style=\"font-weight: 400\">133 locales involved</span></li>\n<li><span style=\"font-weight: 400\">   </span><span style=\"font-weight: 400\">60426 strings translated, in</span></li>\n<li><span style=\"font-weight: 400\">   </span><span style=\"font-weight: 400\">590 projects</span></li>\n</ul>\n<p><span style=\"font-weight: 400\">We would like your help in spreading this news and in reaching out to all four corners of the world to make the third #WPTranslationDay a truly amazing one and to help celebrate the unique and fundamental role that translators have in the Community but also in all aspects of life.</span></p>\n<p><span style=\"font-weight: 400\">A full press release is available, along with more information and visual assets at </span><a href=\"https://wptranslationday.org/press/\"><span style=\"font-weight: 400\">wptranslationday.org/press</span></a>.</p>\n<p><span style=\"font-weight: 400\">For any additional information please don’t hesitate to contact the event team on </span><a href=\"mailto:press@wptranslationday.org\"><span style=\"font-weight: 400\">press@wptranslationday.org</span></a><span style=\"font-weight: 400\">.</span></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4915\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:36:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"WordPress 4.8.2 Security and Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wordpress.org/news/2017/09/wordpress-4-8-2-security-and-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 19 Sep 2017 22:17:15 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4909\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:392:\"WordPress 4.8.2 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.8.1 and earlier are affected by these security issues: $wpdb-&#62;prepare() can create unexpected and unsafe queries leading to potential SQL injection (SQLi). WordPress core is not directly vulnerable to this [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Aaron D. Campbell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2844:\"<p>WordPress 4.8.2 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.8.1 and earlier are affected by these security issues:</p>\n<ol>\n<li><code>$wpdb-&gt;prepare()</code> can create unexpected and unsafe queries leading to potential SQL injection (SQLi). WordPress core is not directly vulnerable to this issue, but we&#8217;ve added hardening to prevent plugins and themes from accidentally causing a vulnerability. Reported by <a href=\"https://hackerone.com/slavco\">Slavco</a></li>\n<li>A cross-site scripting (XSS) vulnerability was discovered in the oEmbed discovery. Reported by xknown of the WordPress Security Team.</li>\n<li>A cross-site scripting (XSS) vulnerability was discovered in the visual editor. Reported by <a href=\"https://twitter.com/brutelogic\">Rodolfo Assis (@brutelogic)</a> of Sucuri Security.</li>\n<li>A path traversal vulnerability was discovered in the file unzipping code. Reported by <a href=\"https://hackerone.com/noxrnet\">Alex Chapman (noxrnet)</a>.</li>\n<li>A cross-site scripting (XSS) vulnerability was discovered in the plugin editor. Reported by 陈瑞琦 (Chen Ruiqi).</li>\n<li>An open redirect was discovered on the user and term edit screens. Reported by <a href=\"https://hackerone.com/ysx\">Yasin Soliman (ysx)</a>.</li>\n<li>A path traversal vulnerability was discovered in the customizer. Reported by Weston Ruter of the WordPress Security Team.</li>\n<li>A cross-site scripting (XSS) vulnerability was discovered in template names. Reported by <a href=\"https://hackerone.com/sikic\">Luka (sikic)</a>.</li>\n<li>A cross-site scripting (XSS) vulnerability was discovered in the link modal. Reported by <a href=\"https://hackerone.com/qasuar\">Anas Roubi (qasuar)</a>.</li>\n</ol>\n<p>Thank you to the reporters of these issues for practicing <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.8.2 contains 6 maintenance fixes to the 4.8 release series. For more information, see the <a href=\"https://codex.wordpress.org/Version_4.8.2\">release notes</a> or consult the <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.8.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=component&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=keywords&amp;order=priority\">list of changes</a>.</p>\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.8.2</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.8.2.</p>\n<p>Thanks to everyone who contributed to 4.8.2.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4909\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"The Month in WordPress: August 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:70:\"https://wordpress.org/news/2017/09/the-month-in-wordpress-august-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Sep 2017 10:02:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4899\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:333:\"While there haven’t been any major events or big new developments in the WordPress world this past month, a lot of work has gone into developing a sustainable future for the project. Read on to find out more about this and other interesting news from around the WordPress world in August. The Global WordPress Translation [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6496:\"<p>While there haven’t been any major events or big new developments in the WordPress world this past month, a lot of work has gone into developing a sustainable future for the project. Read on to find out more about this and other interesting news from around the WordPress world in August.</p>\n<hr />\n<h2>The Global WordPress Translation Day Returns</h2>\n<p>On September 30, the WordPress Polyglots team will be holding <a href=\"https://wptranslationday.org/\">the third Global WordPress Translation Day</a>. This is a 24-hour global event dedicated to the translation of the WordPress ecosystem (core, themes, plugins), and is a mix of physical, in-person translation work with online streaming of talks from WordPress translators all over the world.</p>\n<p>Meetup groups will be holding events where community members will come together to translate WordPress. To get involved in this worldwide event, <a href=\"https://www.meetup.com/pro/wordpress/\">join your local meetup group</a> or, if one is not already taking place in your area, organize one for your community.</p>\n<p>You can find out more information <a href=\"https://wptranslationday.org/global-wordpress-translation-day-3/\">on the Translation Day blog</a> and in the #polyglots-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n<h2>WordPress Foundation to Run Open Source Training Worldwide</h2>\n<p>The WordPress Foundation is a non-profit organization that exists to provide educational events and resources for hackathons, support of the open web, and promotion of diversity in the global open source community.</p>\n<p>In an effort to push these goals forward, <a href=\"http://wordpressfoundation.org/2017/call-for-organizers-introduction-to-open-source/\">the Foundation is going to be offering assistance</a> to communities who would like to run local open source training workshops. A number of organizers have applied to be a part of this initiative, and the Foundation will be selecting two communities in the coming weeks.</p>\n<p>Follow <a href=\"http://wordpressfoundation.org/news/\">the WordPress Foundation blog</a> for updates.</p>\n<h2>Next Steps in WordPress Core’s PHP Focus</h2>\n<p>After <a href=\"https://wordpress.org/news/2017/08/the-month-in-wordpress-july-2017/\">last month’s</a> push to focus on WordPress core’s PHP development, a number of new initiatives have been proposed and implemented. The first of these initiatives is a page on WordPress.org that will educate users on the benefits of upgrading PHP. The page and its implementation are still in development, so <a href=\"https://github.com/WordPress/servehappy\">you can follow and contribute on GitHub</a>.</p>\n<p>Along with this, <a href=\"https://make.wordpress.org/plugins/2017/08/29/minimum-php-version-requirement/\">plugin developers are now able to specify</a> the minimum required PHP version for their plugins. This version will then be displayed on the Plugin Directory page, but it will not (yet) prevent users from installing it.</p>\n<p>The next evolution of this is for the minimum PHP requirement to be enforced so that plugins will only work if that requirement is met. You can assist with this implementation by contributing your input or a patch on <a href=\"https://core.trac.wordpress.org/ticket/40934\">the open ticket</a>.</p>\n<p>As always, discussions around the implementation of PHP in WordPress core are done in the #core-php channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n<h2>New Editor Development Continues</h2>\n<p>For a few months now, the core team has been steadily working on Gutenberg, the new editor for WordPress core. While Gutenberg is still in development and is some time away from being ready, a huge amount of progress has already been made. In fact, <a href=\"https://make.wordpress.org/core/2017/08/29/whats-new-in-gutenberg-august-29/\">v1.0.0 of Gutenberg</a> was released this week.</p>\n<p>The new editor is available as a plugin <a href=\"https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/\">for testing</a> and <a href=\"https://make.wordpress.org/core/2017/08/11/revised-suggested-roadmap-for-gutenberg-and-customization/\">the proposed roadmap</a> is for it to be merged into core in early 2018. You can get involved in the development of Gutenberg by joining the #core-editor channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a> and following the <a href=\"https://make.wordpress.org/core/\">WordPress Core development blog</a>.</p>\n<hr />\n<h2>Further reading:</h2>\n<ul>\n<li>On the topic of Gutenberg, <a href=\"https://ma.tt/2017/08/we-called-it-gutenberg-for-a-reason/\">Matt Mullenweg wrote a post</a> to address some of the concerns that the community has expressed about the new editor.</li>\n<li><a href=\"http://hookrefineandtinker.com/2017/08/jaiwp-an-alternative-project-to-wordcamp-india/\">A new movement has started</a> in the Indian WordPress community named JaiWP — the organizers are seeking to unite and motivate the country’s many local communities.</li>\n<li><a href=\"https://richtabor.com/merlin-wp/\">Merlin WP</a> is a new plugin offering theme developers an easy way to onboard their users.</li>\n<li>Ryan McCue posted <a href=\"https://make.wordpress.org/core/2017/08/23/rest-api-roadmap/\">an ambitious roadmap</a> for the future of the WordPress REST API — many contributions from the community will be needed in order to reach these goals.</li>\n<li>Want to know what you can expect in the next major release of WordPress? <a href=\"https://make.wordpress.org/core/2017/08/11/wordpress-4-9-goals/\">Here’s a look</a> at what the core team is planning for v4.9.</li>\n<li>To help combat the difficulties that Trac presents to WordPress Core contributors, Ryan McCue built an alternative platform dubbed <a href=\"https://github.com/rmccue/not-trac\">Not Trac</a>.</li>\n<li><a href=\"https://make.wordpress.org/cli/2017/08/08/version-1-3-0-released/\">v1.3.0 of WP-CLI was released</a> earlier in the month, adding a whole lot of great new features to the useful tool.</li>\n</ul>\n<p><i><span style=\"font-weight: 400\">If you have a story we should consider including in the next &#8220;Month in WordPress&#8221; post, please </span></i><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><i><span style=\"font-weight: 400\">submit it here</span></i></a><i><span style=\"font-weight: 400\">.</span></i></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4899\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:35:\"WordPress 4.8.1 Maintenance Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2017/08/wordpress-4-8-1-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 Aug 2017 21:26:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4875\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:366:\"After over 13 million downloads of WordPress 4.8, we are pleased to announce the immediate availability of WordPress 4.8.1, a maintenance release. This release contains 29 maintenance fixes and enhancements, chief among them are fixes to the rich Text widget and the introduction of the Custom HTML widget. For a full list of changes, consult the release [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Weston Ruter\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2560:\"<p>After over 13 million downloads of WordPress 4.8, we are pleased to announce the immediate availability of WordPress 4.8.1, a maintenance release.</p>\n<p>This release contains 29 maintenance fixes and enhancements, chief among them are fixes to the rich Text widget and the introduction of the Custom HTML widget. For a full list of changes, consult the <a href=\"https://codex.wordpress.org/Version_4.8.1\">release notes</a>, the <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=4.8.1&amp;group=component\">tickets closed</a>, and the <a href=\"https://core.trac.wordpress.org/log/branches/4.8?rev=41210&amp;stop_rev=40891\">list of changes</a>.</p>\n<p><a href=\"https://wordpress.org/download/\">Download WordPress 4.8.1</a> or visit <strong>Dashboard → Updates</strong> and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.8.1.</p>\n<p>Thanks to everyone who contributed to 4.8.1:<br />\n<a href=\"https://profiles.wordpress.org/adamsilverstein/\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/atanasangelovdev/\">Atanas Angelov</a>, <a href=\"https://profiles.wordpress.org/gitlost/\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges/\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bor0/\">Boro Sitnikovski</a>, <a href=\"https://profiles.wordpress.org/dlh/\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/jnylen0/\">James Nylen</a>, <a href=\"https://profiles.wordpress.org/jbpaul17/\">Jeffrey Paul</a>, <a href=\"https://profiles.wordpress.org/jmdodd/\">Jennifer M. Dodd</a>, <a href=\"https://profiles.wordpress.org/kadamwhite/\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/obenland/\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/melchoyce/\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/r-a-y/\">r-a-y</a>, <a href=\"https://profiles.wordpress.org/greuben/\">Reuben Gunday</a>, <a href=\"https://profiles.wordpress.org/rinkuyadav999/\">Rinku Y</a>, <a href=\"https://profiles.wordpress.org/sa3idho/\">Said El Bakkali</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/nomnom99/\">Siddharth Thevaril</a>, <a href=\"https://profiles.wordpress.org/timmydcrawford/\">Timmy Crawford</a>, and <a href=\"https://profiles.wordpress.org/westonruter/\">Weston Ruter</a>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4875\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"The Month in WordPress: July 2017\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2017/08/the-month-in-wordpress-july-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 Aug 2017 07:50:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=4885\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:344:\"After a particularly busy month in June, things settled down a bit in the WordPress world — WordPress 4.8’s release went very smoothly, allowing the Core team to build up some of the community infrastructure around development. Read on for more interesting news from around the WordPress world in July. Weekly meeting for new core [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5644:\"<p>After a particularly busy month <a href=\"https://wordpress.org/news/2017/07/the-month-in-wordpress-june-2017/\">in June</a>, things settled down a bit in the WordPress world — WordPress 4.8’s release went very smoothly, allowing the Core team to build up some of the community infrastructure around development. Read on for more interesting news from around the WordPress world in July.</p>\n<hr />\n<h2>Weekly meeting for new core contributors</h2>\n<p>Onboarding new contributors is a persistent issue for most WordPress contribution teams. While every team welcomes any new contributors, the path to getting deeply involved can be tricky to find at times.</p>\n<p>This month, the Core team implemented a fantastic new initiative: <a href=\"https://make.wordpress.org/core/2017/06/30/announcing-a-weekly-new-contributors-meeting/\">weekly meetings for new core contributors</a> as a way to encourage involvement and foster fresh contributions. The meetings not only focus on bugs suited to first-time contributors, they also make space for experienced contributors to help out individuals who may be new to developing WordPress core.</p>\n<p>The meetings are held every Wednesday at 19:00 UTC in the #core channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n<h2>Increased focus on PHP practices in WordPress core</h2>\n<p>In bringing people together to improve WordPress core, a new channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a> named #core-php is designed to focus on PHP development in the project.</p>\n<p>Along with this increased concentration on PHP, a <a href=\"https://make.wordpress.org/core/2017/07/06/announcement-for-weekly-php-meetings/\">new weekly meeting is now taking place</a> every Monday at 18:00 UTC in #core-php to improve WordPress core’s PHP practices.</p>\n<h2>Sharp rise in meetup group growth</h2>\n<p>The dashboard events widget in WordPress 4.8 displays local, upcoming WordPress events for the logged in user. The events listed in this widget are pulled from the <a href=\"https://www.meetup.com/pro/wordpress/\">meetup chapter program</a>, as well as the <a href=\"https://central.wordcamp.org/schedule\">WordCamp schedule</a>.</p>\n<p>This widget provides greater visibility of official WordPress events, and encourages community involvement in these events. It’s safe to say that the widget has achieved its goals admirably — since WordPress 4.8 was released a little over a month ago, 31 new meetup groups have been formed with 15,647 new members across the whole program. This is compared to 19 new groups and only 7,071 new members in the same time period last year.</p>\n<p>You can find a local meetup group to join <a href=\"https://www.meetup.com/pro/wordpress/\">on meetup.com</a>, and if you would like to get involved in organizing events for your community, you can find out more about the inner workings of the program <a href=\"https://make.wordpress.org/community/meetups/\">on the Community Team site</a> or by joining the #community-events channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>.</p>\n<h2>WordPress 4.8.1 due for imminent release</h2>\n<p>WordPress 4.8 cycle’s first maintenance release will be published in the coming week, more than a month after 4.8 was released. This release fix some important issues in WordPress core and the majority of users will find that their sites will update to this new version automatically.</p>\n<p>If you would like to help out by testing this release before it goes live, you can follow the <a href=\"https://make.wordpress.org/core/handbook/testing/beta/\">beta testing guide</a> for WordPress core. To get further involved in building WordPress core, jump into the #core channel in the <a href=\"https://make.wordpress.org/chat/\">Making WordPress Slack group</a>, and follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>.</p>\n<hr />\n<h2>Further reading:</h2>\n<ul>\n<li>The WordPress mobile apps have been updated with <a href=\"https://en.blog.wordpress.com/2017/07/24/a-brand-new-editor-for-the-wordpress-mobile-apps/\">a brand new text editor</a>.</li>\n<li>In a recent push to encourage WordPress users to upgrade their PHP versions, two features have been proposed &#8211; one <a href=\"https://core.trac.wordpress.org/ticket/41191\">to provide a notice to users</a> and another to <a href=\"https://core.trac.wordpress.org/ticket/40934\">allow PHP version requirements to be specified by plugins and themes</a>.</li>\n<li>John Maeda wrote <a href=\"https://make.wordpress.org/design/2017/07/14/whywordpress2/\">a great post</a> celebrating the freedom that WordPress offers.</li>\n<li>Gutenberg, the new text editor for WordPress, is <a href=\"https://make.wordpress.org/core/2017/07/28/whats-new-in-gutenberg-28th-july/\">in continual development</a> — everyone is invited to <a href=\"https://make.wordpress.org/test/handbook/call-for-testing/gutenberg-testing/\">test it out</a>.</li>\n<li>The WordPress Meta team is starting <a href=\"https://make.wordpress.org/meta/2017/07/26/experiment-wordcamp-org-bug-scrubs/\">a new initiative</a> to bring the community together to focus on fixing bugs across the WordCamp.org network.</li>\n<li>Volunteer applications for WordCamp US <a href=\"https://2017.us.wordcamp.org/2017/08/01/wcus-needs-you-volunteer-applications-are-now-open/\">are now open</a>.</li>\n</ul>\n<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\">submit it here</a>.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"4885\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Thu, 26 Oct 2017 04:55:15 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 25 Oct 2017 07:04:47 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:11:\"HIT lax 249\";}}s:5:\"build\";s:14:\"20130911040210\";}', 'no');
INSERT INTO `im_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(138, 'current_theme', 'Twenty Seventeen/SonaCircle', 'yes'),
(139, 'theme_mods_SonaCircle', 'a:2:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(555, '_site_transient_timeout_browser_6497642b16e6e78b319c48361938da00', '1506925191', 'no'),
(556, '_site_transient_browser_6497642b16e6e78b319c48361938da00', 'a:9:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"60.0.3112.113\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no'),
(181, '_site_transient_timeout_community-events-8b91817570b4bd3a6308ab14fa8f4215', '1504295562', 'no'),
(182, '_site_transient_community-events-8b91817570b4bd3a6308ab14fa8f4215', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"110.225.207.0\";}s:6:\"events\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:34:\"Global WordPress Translation Day 3\";s:3:\"url\";s:61:\"https://www.meetup.com/WordPress-Chandigarh/events/240104941/\";s:6:\"meetup\";s:20:\"WordPress Chandigarh\";s:10:\"meetup_url\";s:44:\"https://www.meetup.com/WordPress-Chandigarh/\";s:4:\"date\";s:19:\"2017-09-30 13:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:21:\"Chandigarh, CH, India\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:30.75;s:9:\"longitude\";d:76.7799987792970028976924368180334568023681640625;}}}}', 'no'),
(444, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"abhinav@imarkinfotech.com\";s:7:\"version\";s:5:\"4.8.3\";s:9:\"timestamp\";i:1509466921;}', 'no'),
(332, '_site_transient_timeout_community-events-38c23aa2f8ed53af0fc80f125fc04a78', '1505167082', 'no'),
(333, '_site_transient_community-events-38c23aa2f8ed53af0fc80f125fc04a78', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"122.173.162.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Security hardening for WordPress (100% practical)\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982412/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-09-16 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:27:\"How to start with WordPress\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982565/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-09-23 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:44:\"WordPress & WordPress Community Introduction\";s:3:\"url\";s:63:\"https://www.meetup.com/Noida-WordPress-Meetup/events/242969072/\";s:6:\"meetup\";s:22:\"Noida WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Noida-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-09-24 16:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Noida, UP, India\";s:7:\"country\";s:2:\"IN\";s:8:\"latitude\";d:28.579999923706001396794817992486059665679931640625;s:9:\"longitude\";d:77.330001831055000138803734444081783294677734375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Mastering selection of Themes and Plugins\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982825/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-07 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Increasing engagement and decreasing bounce rate \";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-14 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(309, '_site_transient_timeout_community-events-cc0a8f3eabb98b3d8142d50d042a3f6e', '1504976307', 'no'),
(310, '_site_transient_community-events-cc0a8f3eabb98b3d8142d50d042a3f6e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"122.173.189.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:36:\"Learn to sell online using WordPress\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242853203/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-09-09 15:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Security hardening for WordPress (100% practical)\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982412/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-09-16 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:27:\"How to start with WordPress\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982565/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-09-23 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Mastering selection of Themes and Plugins\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982825/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-07 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Increasing engagement and decreasing bounce rate \";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-14 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(642, '_site_transient_timeout_community-events-83c7aae7c83bfbeaf0b3b56bfc8e91c2', '1506709820', 'no'),
(643, '_site_transient_community-events-83c7aae7c83bfbeaf0b3b56bfc8e91c2', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"122.173.157.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:41:\"Mastering selection of Themes and Plugins\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982825/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-07 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:44:\"WordPress & WordPress Community Introduction\";s:3:\"url\";s:63:\"https://www.meetup.com/Noida-WordPress-Meetup/events/242969072/\";s:6:\"meetup\";s:22:\"Noida WordPress Meetup\";s:10:\"meetup_url\";s:46:\"https://www.meetup.com/Noida-WordPress-Meetup/\";s:4:\"date\";s:19:\"2017-10-07 16:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Noida, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.57491900000000129011823446489870548248291015625;s:9:\"longitude\";d:77.318802000000005136826075613498687744140625;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"Increasing engagement and decreasing bounce rate \";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982926/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-14 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:45:\"WordPress maintenance for heavy traffic sites\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982937/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-10-28 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:46:\"Choosing between WordPress.com and Self-hosted\";s:3:\"url\";s:60:\"https://www.meetup.com/WordPress-New-Delhi/events/242982950/\";s:6:\"meetup\";s:25:\"WordPress New Delhi (NCR)\";s:10:\"meetup_url\";s:43:\"https://www.meetup.com/WordPress-New-Delhi/\";s:4:\"date\";s:19:\"2017-11-04 16:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:12:\"Delhi, India\";s:7:\"country\";s:2:\"in\";s:8:\"latitude\";d:28.703849999999999198507794062606990337371826171875;s:9:\"longitude\";d:77.133769999999998390194377861917018890380859375;}}}}', 'no'),
(215, '_transient_timeout_plugin_slugs', '1509273187', 'no'),
(216, '_transient_plugin_slugs', 'a:8:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:24:\"DiscussionList/index.php\";i:3;s:62:\"miniorange-otp-verification/miniorange_validation_settings.php\";i:4;s:9:\"hello.php\";i:5;s:19:\"liveFeeds/index.php\";i:6;s:79:\"custom-registration-form-builder-with-submission-manager/registration_magic.php\";i:7;s:20:\"users_sona/index.php\";}', 'no'),
(217, 'recently_activated', 'a:0:{}', 'yes'),
(223, '_site_transient_timeout_community-events-a8754937c85cc919c2dc0c800f3d6807', '1504570631', 'no'),
(224, '_site_transient_community-events-a8754937c85cc919c2dc0c800f3d6807', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:13:\"172.111.235.0\";}s:6:\"events\";a:5:{i:0;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:13:\"Design Meetup\";s:3:\"url\";s:62:\"https://www.meetup.com/OC-Wordpress-Group/events/lhmxllywmbgb/\";s:6:\"meetup\";s:18:\"OC WordPress Group\";s:10:\"meetup_url\";s:42:\"https://www.meetup.com/OC-Wordpress-Group/\";s:4:\"date\";s:19:\"2017-09-04 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:25:\"Huntington Beach, CA, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:33.68014500000000310819814330898225307464599609375;s:9:\"longitude\";d:-118.0004650000000054888005251996219158172607421875;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:28:\"OC WordPress - Design Meetup\";s:3:\"url\";s:59:\"https://www.meetup.com/OC-Wordpress-Group/events/242173417/\";s:6:\"meetup\";s:18:\"OC WordPress Group\";s:10:\"meetup_url\";s:42:\"https://www.meetup.com/OC-Wordpress-Group/\";s:4:\"date\";s:19:\"2017-09-04 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:25:\"Huntington Beach, CA, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:33.68014500000000310819814330898225307464599609375;s:9:\"longitude\";d:-118.0004650000000054888005251996219158172607421875;}}i:2;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:37:\"#IEWP Monthly Meetup (General Meetup)\";s:3:\"url\";s:55:\"https://www.meetup.com/inlandempirewp/events/242291837/\";s:6:\"meetup\";s:36:\"Inland Empire WordPress Meetup Group\";s:10:\"meetup_url\";s:38:\"https://www.meetup.com/inlandempirewp/\";s:4:\"date\";s:19:\"2017-09-05 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Riverside, CA, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:33.97884400000000226782503887079656124114990234375;s:9:\"longitude\";d:-117.3730800000000016325429896824061870574951171875;}}i:3;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:28:\"OC WordPress - Developer Day\";s:3:\"url\";s:59:\"https://www.meetup.com/OC-Wordpress-Group/events/242743055/\";s:6:\"meetup\";s:18:\"OC WordPress Group\";s:10:\"meetup_url\";s:42:\"https://www.meetup.com/OC-Wordpress-Group/\";s:4:\"date\";s:19:\"2017-09-11 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:25:\"Huntington Beach, CA, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:33.68014500000000310819814330898225307464599609375;s:9:\"longitude\";d:-118.0004650000000054888005251996219158172607421875;}}i:4;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:49:\"#IEWP Advanced WordPress Meetup (Developer Level)\";s:3:\"url\";s:55:\"https://www.meetup.com/inlandempirewp/events/242477924/\";s:6:\"meetup\";s:36:\"Inland Empire WordPress Meetup Group\";s:10:\"meetup_url\";s:38:\"https://www.meetup.com/inlandempirewp/\";s:4:\"date\";s:19:\"2017-09-12 19:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:15:\"Corona, CA, USA\";s:7:\"country\";s:2:\"us\";s:8:\"latitude\";d:33.88492600000000010140865924768149852752685546875;s:9:\"longitude\";d:-117.61043499999999539795680902898311614990234375;}}}}', 'no'),
(525, '_site_transient_timeout_browser_3d5f26438973a3d90b630a57c59a2f98', '1506764865', 'no'),
(526, '_site_transient_browser_3d5f26438973a3d90b630a57c59a2f98', 'a:9:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"60.0.3112.113\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `im_postmeta`
--

CREATE TABLE `im_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_postmeta`
--

INSERT INTO `im_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_wp_attached_file', '2017/09/9.jpg'),
(3, 4, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:704;s:6:\"height\";i:470;s:4:\"file\";s:13:\"2017/09/9.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:13:\"9-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4, 5, '_wp_attached_file', '2017/09/25.jpg'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:14:\"2017/09/25.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"25-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"25-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"25-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"25-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:14:\"25-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 7, '_edit_last', '1'),
(10, 7, 'field_59c4f175776c6', 'a:14:{s:3:\"key\";s:19:\"field_59c4f175776c6\";s:5:\"label\";s:8:\"Latitude\";s:4:\"name\";s:8:\"latitude\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(8, 7, '_edit_lock', '1506079025:1'),
(11, 7, 'field_59c4f17b776c7', 'a:14:{s:3:\"key\";s:19:\"field_59c4f17b776c7\";s:5:\"label\";s:9:\"Longitude\";s:4:\"name\";s:9:\"longitude\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(16, 7, 'rule', 'a:5:{s:5:\"param\";s:7:\"ef_user\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"all\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(13, 7, 'position', 'normal'),
(14, 7, 'layout', 'no_box'),
(15, 7, 'hide_on_screen', ''),
(17, 8, '_wp_attached_file', '2017/09/2017-07-31.png'),
(18, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:610;s:4:\"file\";s:22:\"2017/09/2017-07-31.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"2017-07-31-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"2017-07-31-300x95.png\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"2017-07-31-768x244.png\";s:5:\"width\";i:768;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"2017-07-31-1024x325.png\";s:5:\"width\";i:1024;s:6:\"height\";i:325;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"2017-07-31-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 24, '_edit_last', '1'),
(48, 24, '_wp_page_template', 'verify.php'),
(46, 24, '_edit_lock', '1508829036:1'),
(40, 19, '_wp_attached_file', '2017/09/3-21-2017-3-35-00-PM.png'),
(41, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:346;s:6:\"height\";i:458;s:4:\"file\";s:32:\"2017/09/3-21-2017-3-35-00-PM.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"3-21-2017-3-35-00-PM-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"3-21-2017-3-35-00-PM-227x300.png\";s:5:\"width\";i:227;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:32:\"3-21-2017-3-35-00-PM-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `im_posts`
--

CREATE TABLE `im_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_posts`
--

INSERT INTO `im_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-08-29 10:27:45', '2017-08-29 10:27:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-08-29 10:27:45', '2017-08-29 10:27:45', '', 0, 'http://localhost/sona/?p=1', 0, 'post', '', 1),
(2, 1, '2017-08-29 10:27:45', '2017-08-29 10:27:45', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/sona/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-08-29 10:27:45', '2017-08-29 10:27:45', '', 0, 'http://localhost/sona/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-09-22 10:58:43', '2017-09-22 10:58:43', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2017-09-22 10:58:43', '2017-09-22 10:58:43', '', 0, 'http://localhost/sona/wp-content/uploads/2017/09/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(5, 1, '2017-09-22 11:16:18', '2017-09-22 11:16:18', '', '25', '', 'inherit', 'open', 'closed', '', '25', '', '', '2017-09-22 11:16:18', '2017-09-22 11:16:18', '', 0, 'http://localhost/sona/wp-content/uploads/2017/09/25.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2017-09-22 11:18:46', '2017-09-22 11:18:46', '', 'user Location', '', 'publish', 'closed', 'closed', '', 'acf_user-location', '', '', '2017-09-22 11:19:24', '2017-09-22 11:19:24', '', 0, 'http://localhost/sona/?post_type=acf&#038;p=7', 0, 'acf', '', 0),
(8, 1, '2017-09-22 11:24:10', '2017-09-22 11:24:10', '', '2017-07-31', '', 'inherit', 'open', 'closed', '', '2017-07-31', '', '', '2017-09-22 11:24:10', '2017-09-22 11:24:10', '', 0, 'http://localhost/sona/wp-content/uploads/2017/09/2017-07-31.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2017-10-11 07:51:12', '2017-10-11 07:51:12', '[RM_Front_Submissions]', 'Submissions', '', 'publish', 'closed', 'closed', '', 'rm_submissions', '', '', '2017-10-11 07:51:12', '2017-10-11 07:51:12', '', 0, 'http://localhost/sona/rm_submissions/', 0, 'page', '', 0),
(24, 1, '2017-10-11 07:51:12', '2017-10-11 07:51:12', '', 'Verify', '', 'publish', 'closed', 'closed', '', 'verify', '', '', '2017-10-24 05:48:50', '2017-10-24 05:48:50', '', 0, 'http://localhost/sona/rm_login/', 0, 'page', '', 0),
(32, 1, '2017-11-01 12:09:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-01 12:09:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/sona/?p=32', 0, 'post', '', 0),
(28, 1, '2017-10-24 05:45:21', '2017-10-24 05:45:21', '[RM_Login]', 'Verify', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-10-24 05:45:21', '2017-10-24 05:45:21', '', 24, 'http://localhost/sona/2017/10/24/24-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-10-24 05:48:50', '2017-10-24 05:48:50', '', 'Verify', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2017-10-24 05:48:50', '2017-10-24 05:48:50', '', 24, 'http://localhost/sona/2017/10/24/24-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-09-29 12:17:24', '2017-09-29 12:17:24', '', '3-21-2017 3-35-00 PM', '', 'inherit', 'open', 'closed', '', '3-21-2017-3-35-00-pm', '', '', '2017-09-29 12:17:24', '2017-09-29 12:17:24', '', 0, 'http://localhost/sona/wp-content/uploads/2017/09/3-21-2017-3-35-00-PM.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_fields`
--

CREATE TABLE `im_rm_fields` (
  `field_id` int(6) UNSIGNED NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `page_no` int(6) UNSIGNED NOT NULL DEFAULT '1',
  `field_label` text COLLATE utf8mb4_unicode_520_ci,
  `field_type` text COLLATE utf8mb4_unicode_520_ci,
  `field_value` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `field_order` int(6) DEFAULT NULL,
  `field_show_on_user_page` tinyint(1) DEFAULT NULL,
  `is_field_primary` tinyint(1) NOT NULL DEFAULT '0',
  `field_is_editable` tinyint(1) NOT NULL DEFAULT '0',
  `field_options` mediumtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_rm_fields`
--

INSERT INTO `im_rm_fields` (`field_id`, `form_id`, `page_no`, `field_label`, `field_type`, `field_value`, `field_order`, `field_show_on_user_page`, `is_field_primary`, `field_is_editable`, `field_options`) VALUES
(1, 1, 1, 'Your Email', 'Email', NULL, 2, NULL, 1, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";N;s:27:\"field_is_required_min_range\";N;s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:22:\"rm_form_default_fields\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";s:1:\"1\";s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";N;s:9:\"help_text\";s:73:\"Please enter an email address where we can send response to your message.\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe158\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";N;s:17:\"custom_validation\";N;s:12:\"tnc_cb_label\";N;}'),
(2, 1, 1, 'Your Name', 'Textbox', NULL, 0, 1, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:0:\"\";s:14:\"field_timezone\";N;s:16:\"field_max_length\";s:0:\"\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";i:1;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:28:\"Please enter your full name.\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe7fd\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(3, 1, 1, 'Your Phone Number', 'Number', NULL, 1, 1, 0, 1, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";s:2:\"14\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:43:\"Phone number can help us reach you quickly.\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe0b0\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(4, 1, 1, 'Message', 'Textarea', NULL, 3, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:28:\"Type in your message here...\";s:14:\"field_timezone\";N;s:16:\"field_max_length\";s:0:\"\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";s:0:\"\";s:19:\"field_textarea_rows\";s:0:\"\";s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe0b7\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(5, 2, 1, 'Email', 'Email', NULL, 3, NULL, 1, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";N;s:27:\"field_is_required_min_range\";N;s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:22:\"rm_form_default_fields\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";s:1:\"1\";s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";N;s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe0be\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";N;s:17:\"custom_validation\";N;s:12:\"tnc_cb_label\";N;}'),
(6, 2, 1, 'First Name', 'Fname', NULL, 1, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:0:\"\";s:14:\"field_timezone\";N;s:16:\"field_max_length\";s:0:\"\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";i:1;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe7fd\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(7, 2, 1, 'Last Name', 'Lname', NULL, 2, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";s:0:\"\";s:14:\"field_timezone\";N;s:16:\"field_max_length\";s:0:\"\";s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe7fd\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(8, 2, 1, 'Website', 'Website', NULL, 4, NULL, 0, 1, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:30:\"URL of your website (optional)\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:7:\"&#xe894\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(9, 2, 1, 'Do you agree with our terms and conditions?', 'Terms', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempor metus nec elit auctor venenatis non facilisis nibh. In lorem neque, vulputate id metus id, rhoncus convallis eros. In urna erat, accumsan quis pretium nec, posuere in arcu. Nulla eleifend aliquet accumsan. Pellentesque consectetur sollicitudin orci nec suscipit. Donec sit amet risus suscipit, gravida nulla semper, interdum tellus. In cursus ultricies turpis, quis suscipit massa faucibus et. Vestibulum euismod est ac vehicula viverra. Aliquam quis est quis eros feugiat varius a non ligula.', 6, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";i:1;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:13:\"Yes, I agree.\";}'),
(10, 2, 1, 'Divider', 'Divider', NULL, 0, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(11, 2, 1, 'Divider', 'Divider', NULL, 5, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}'),
(12, 2, 1, 'Divider', 'Divider', NULL, 7, NULL, 0, 0, 'O:8:\"stdClass\":21:{s:18:\"field_is_multiline\";N;s:17:\"field_placeholder\";N;s:14:\"field_timezone\";N;s:16:\"field_max_length\";N;s:23:\"field_is_required_range\";N;s:27:\"field_is_required_max_range\";s:0:\"\";s:27:\"field_is_required_min_range\";s:0:\"\";s:24:\"field_is_required_scroll\";N;s:19:\"field_default_value\";N;s:15:\"field_css_class\";s:0:\"\";s:22:\"field_textarea_columns\";N;s:19:\"field_textarea_rows\";N;s:17:\"field_is_required\";N;s:21:\"field_is_show_asterix\";N;s:18:\"field_is_read_only\";N;s:21:\"field_is_other_option\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:4:\"icon\";O:8:\"stdClass\":5:{s:9:\"codepoint\";s:0:\"\";s:8:\"fg_color\";s:6:\"000000\";s:8:\"bg_color\";s:6:\"FFFFFF\";s:5:\"shape\";s:6:\"square\";s:8:\"bg_alpha\";s:1:\"1\";}s:16:\"field_validation\";s:0:\"\";s:17:\"custom_validation\";s:0:\"\";s:12:\"tnc_cb_label\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_forms`
--

CREATE TABLE `im_rm_forms` (
  `form_id` int(6) UNSIGNED NOT NULL,
  `form_name` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_type` int(6) DEFAULT NULL,
  `form_user_role` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `default_user_role` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_should_send_email` tinyint(1) DEFAULT NULL,
  `form_redirect` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_redirect_to_page` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_redirect_to_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_should_auto_expire` tinyint(1) DEFAULT NULL,
  `form_options` text COLLATE utf8mb4_unicode_520_ci,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(6) DEFAULT NULL,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_rm_forms`
--

INSERT INTO `im_rm_forms` (`form_id`, `form_name`, `form_type`, `form_user_role`, `default_user_role`, `form_should_send_email`, `form_redirect`, `form_redirect_to_page`, `form_redirect_to_url`, `form_should_auto_expire`, `form_options`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'Sample Contact Form', 0, NULL, NULL, 1, 'none', '0', NULL, NULL, 'O:8:\"stdClass\":59:{s:13:\"hide_username\";N;s:23:\"form_is_opt_in_checkbox\";N;s:19:\"mailchimp_relations\";N;s:16:\"form_opt_in_text\";N;s:21:\"form_should_user_pick\";N;s:20:\"form_is_unique_token\";N;s:16:\"form_description\";s:202:\"A standard contact form to get your started right away with RegistrationMagic. This form has Name, Phone No., Email and Message fields. To add this form to a page or post, use shortcode [rm_form ID=\"1\"]\";s:21:\"form_user_field_label\";N;s:16:\"form_custom_text\";s:45:\"Please fill out the form below to contact us.\";s:20:\"form_success_message\";s:69:\"Thank you! We have received your message and will reply back shortly.\";s:18:\"form_email_subject\";s:29:\"We have received your message\";s:18:\"form_email_content\";s:411:\"Dear {{Textbox_1234}},\r\n\r\nThis is a confirmation of the message you submitted through our site. We shall get back to you soon.\r\n\r\nFor your reference, below is a copy of your message. If any information is incorrect, please submit the form again with correct information.\r\n\r\nThank you!\r\n\r\nYour Name: {{Textbox_1234}}\r\n\r\nYour Phone: {{Number_1235}}\r\n\r\nYour Email: {{Email_1233}}\r\n\r\nMessage: {{Textarea_1236}}\";s:21:\"form_submit_btn_label\";s:4:\"Send\";s:21:\"form_submit_btn_color\";N;s:25:\"form_submit_btn_bck_color\";N;s:15:\"form_expired_by\";N;s:22:\"form_submissions_limit\";N;s:16:\"form_expiry_date\";N;s:25:\"form_message_after_expiry\";N;s:14:\"mailchimp_list\";N;s:22:\"mailchimp_mapped_email\";N;s:27:\"mailchimp_mapped_first_name\";N;s:26:\"mailchimp_mapped_last_name\";N;s:25:\"should_export_submissions\";i:0;s:25:\"export_submissions_to_url\";N;s:10:\"form_pages\";N;s:14:\"access_control\";N;s:14:\"style_btnfield\";N;s:10:\"style_form\";N;s:15:\"style_textfield\";N;s:10:\"auto_login\";N;s:12:\"cc_relations\";N;s:7:\"cc_list\";N;s:19:\"form_opt_in_text_cc\";N;s:26:\"form_is_opt_in_checkbox_cc\";N;s:12:\"aw_relations\";N;s:7:\"aw_list\";N;s:19:\"form_opt_in_text_aw\";N;s:26:\"form_is_opt_in_checkbox_aw\";N;s:14:\"enable_captcha\";s:7:\"default\";s:16:\"enable_mailchimp\";N;s:15:\"enable_ccontact\";N;s:13:\"enable_aweber\";N;s:20:\"display_progress_bar\";s:7:\"default\";s:18:\"sub_limit_antispam\";N;s:15:\"placeholder_css\";N;s:15:\"btn_hover_color\";N;s:20:\"field_bg_focus_color\";N;s:16:\"text_focus_color\";N;s:13:\"style_section\";N;s:11:\"style_label\";N;s:18:\"post_expiry_action\";N;s:19:\"post_expiry_form_id\";N;s:14:\"no_prev_button\";i:1;s:18:\"user_auto_approval\";s:7:\"default\";s:25:\"form_opt_in_default_state\";N;s:28:\"form_opt_in_default_state_cc\";N;s:28:\"form_opt_in_default_state_aw\";N;s:18:\"ordered_form_pages\";N;}', '2016-12-15 06:31:04', 1, '2016-12-15 06:51:04', 1),
(2, 'Sample Registration Form', 1, 'a:0:{}', 'subscriber', 1, 'none', '0', NULL, NULL, 'O:8:\"stdClass\":59:{s:13:\"hide_username\";i:0;s:23:\"form_is_opt_in_checkbox\";N;s:19:\"mailchimp_relations\";N;s:16:\"form_opt_in_text\";N;s:21:\"form_should_user_pick\";N;s:20:\"form_is_unique_token\";N;s:16:\"form_description\";s:415:\"This is a sample registration form that can be used to register users on your WordPress site. The form includes Username, Password, First Name, Last Name, Email, Website and Terms and Conditions fields. Feel free to edit them, remove them or add new ones as it suits your needs.\r\n\r\nPlease note, T&C field currently has dummy text. You will need to paste actual text of your terms and condition by editing the field.\";s:21:\"form_user_field_label\";s:0:\"\";s:16:\"form_custom_text\";s:48:\"Register with us by filling out the form below.\";s:20:\"form_success_message\";s:105:\"Thank you for registering with us! Once your account is active, we\'ll send you an email with the details.\";s:18:\"form_email_subject\";s:10:\"Thank you!\";s:18:\"form_email_content\";s:183:\"Hello {{Fname_1238}},\r\n\r\nThank you for registering with us. You will soon receive an account activation email. After that you can log into our website through login page.\r\n\r\nRegards.\";s:21:\"form_submit_btn_label\";s:0:\"\";s:21:\"form_submit_btn_color\";N;s:25:\"form_submit_btn_bck_color\";N;s:15:\"form_expired_by\";N;s:22:\"form_submissions_limit\";N;s:16:\"form_expiry_date\";N;s:25:\"form_message_after_expiry\";N;s:14:\"mailchimp_list\";N;s:22:\"mailchimp_mapped_email\";N;s:27:\"mailchimp_mapped_first_name\";N;s:26:\"mailchimp_mapped_last_name\";N;s:25:\"should_export_submissions\";i:0;s:25:\"export_submissions_to_url\";N;s:10:\"form_pages\";N;s:14:\"access_control\";N;s:14:\"style_btnfield\";s:0:\"\";s:10:\"style_form\";s:0:\"\";s:15:\"style_textfield\";s:0:\"\";s:10:\"auto_login\";N;s:12:\"cc_relations\";N;s:7:\"cc_list\";N;s:19:\"form_opt_in_text_cc\";N;s:26:\"form_is_opt_in_checkbox_cc\";N;s:12:\"aw_relations\";N;s:7:\"aw_list\";N;s:19:\"form_opt_in_text_aw\";N;s:26:\"form_is_opt_in_checkbox_aw\";N;s:14:\"enable_captcha\";s:7:\"default\";s:16:\"enable_mailchimp\";N;s:15:\"enable_ccontact\";N;s:13:\"enable_aweber\";N;s:20:\"display_progress_bar\";s:7:\"default\";s:18:\"sub_limit_antispam\";N;s:15:\"placeholder_css\";s:0:\"\";s:15:\"btn_hover_color\";s:0:\"\";s:20:\"field_bg_focus_color\";s:0:\"\";s:16:\"text_focus_color\";s:0:\"\";s:13:\"style_section\";s:0:\"\";s:11:\"style_label\";s:0:\"\";s:18:\"post_expiry_action\";N;s:19:\"post_expiry_form_id\";N;s:14:\"no_prev_button\";i:1;s:18:\"user_auto_approval\";s:7:\"default\";s:25:\"form_opt_in_default_state\";N;s:28:\"form_opt_in_default_state_cc\";N;s:28:\"form_opt_in_default_state_aw\";N;s:18:\"ordered_form_pages\";N;}', '2016-12-15 07:19:35', 1, '2016-12-15 09:16:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_front_users`
--

CREATE TABLE `im_rm_front_users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `otp_code` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_activity_time` datetime DEFAULT NULL,
  `created_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_notes`
--

CREATE TABLE `im_rm_notes` (
  `note_id` int(11) NOT NULL,
  `submission_id` int(11) NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `publication_date` datetime NOT NULL,
  `published_by` bigint(20) DEFAULT NULL,
  `last_edit_date` datetime DEFAULT NULL,
  `last_edited_by` bigint(20) DEFAULT NULL,
  `note_options` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_paypal_fields`
--

CREATE TABLE `im_rm_paypal_fields` (
  `field_id` int(6) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci,
  `class` varchar(256) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `option_label` longtext COLLATE utf8mb4_unicode_520_ci,
  `option_price` longtext COLLATE utf8mb4_unicode_520_ci,
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci,
  `description` longtext COLLATE utf8mb4_unicode_520_ci,
  `require` longtext COLLATE utf8mb4_unicode_520_ci,
  `order` int(11) DEFAULT NULL,
  `extra_options` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_paypal_logs`
--

CREATE TABLE `im_rm_paypal_logs` (
  `id` int(6) UNSIGNED NOT NULL,
  `submission_id` int(6) DEFAULT NULL,
  `form_id` int(6) DEFAULT NULL,
  `invoice` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `txn_id` varchar(600) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `log` longtext COLLATE utf8mb4_unicode_520_ci,
  `posted_date` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pay_proc` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `bill` longtext COLLATE utf8mb4_unicode_520_ci,
  `ex_data` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_rules`
--

CREATE TABLE `im_rm_rules` (
  `rule_id` int(6) UNSIGNED NOT NULL,
  `type` int(6) DEFAULT NULL,
  `attr_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attr_value` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `operator` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_sent_mails`
--

CREATE TABLE `im_rm_sent_mails` (
  `mail_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sub` longtext COLLATE utf8mb4_unicode_520_ci,
  `body` longtext COLLATE utf8mb4_unicode_520_ci,
  `sent_on` datetime DEFAULT NULL,
  `headers` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_id` int(11) DEFAULT NULL,
  `exdata` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_read_by_user` tinyint(1) NOT NULL DEFAULT '0',
  `was_sent_success` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_sessions`
--

CREATE TABLE `im_rm_sessions` (
  `id` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timestamp` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_rm_sessions`
--

INSERT INTO `im_rm_sessions` (`id`, `data`, `timestamp`) VALUES
('56bunp6ualmlkh8qpgjiio1ml1', '', 1507708320),
('oou4sa24apbkk4b3ardpcu84f6', '', 1507708273),
('5f3unbfuj97u8uhcov8tnga8d0', '', 1507708273),
('h7o0nf50vjofe41gpdsb4grpb7', '', 1507708276),
('qgmhoo8vqc2tml9a9d32m3hau3', '', 1507708280),
('d1p42gqci7rvu6vvp1o5hh03u2', '', 1507708288);

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_stats`
--

CREATE TABLE `im_rm_stats` (
  `stat_id` int(11) NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `user_ip` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ua_string` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `browser_name` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `visited_on` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `submitted_on` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `time_taken` int(11) DEFAULT NULL,
  `submission_id` int(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_rm_stats`
--

INSERT INTO `im_rm_stats` (`stat_id`, `form_id`, `user_ip`, `ua_string`, `browser_name`, `visited_on`, `submitted_on`, `time_taken`, `submission_id`) VALUES
(1, 1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481786490', NULL, NULL, NULL),
(2, 1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481786494', NULL, NULL, NULL),
(3, 1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481786497', '1481786543', 46, NULL),
(4, 1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481786557', NULL, NULL, NULL),
(5, 1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481786561', NULL, NULL, NULL),
(6, 1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481786565', NULL, NULL, NULL),
(7, 1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481791489', NULL, NULL, NULL),
(8, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481791492', NULL, NULL, NULL),
(9, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481791496', NULL, NULL, NULL),
(10, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481791498', NULL, NULL, NULL),
(11, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481791568', NULL, NULL, NULL),
(12, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481791839', NULL, NULL, NULL),
(13, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481791858', NULL, NULL, NULL),
(14, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481792000', NULL, NULL, NULL),
(15, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481792061', NULL, NULL, NULL),
(16, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481792155', NULL, NULL, NULL),
(17, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481792183', NULL, NULL, NULL),
(18, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481792204', NULL, NULL, NULL),
(19, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481792311', NULL, NULL, NULL),
(20, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481792354', NULL, NULL, NULL),
(21, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481792379', NULL, NULL, NULL),
(22, 2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_1) AppleWebKit/602.2.14 (KHTML, like Gecko) Version/10.0.1 Safari/602.2.14', 'Safari', '1481792424', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_submissions`
--

CREATE TABLE `im_rm_submissions` (
  `submission_id` int(6) UNSIGNED NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_520_ci,
  `user_email` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `child_id` int(6) NOT NULL DEFAULT '0',
  `last_child` int(6) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `submitted_on` datetime DEFAULT NULL,
  `unique_token` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_rm_submissions`
--

INSERT INTO `im_rm_submissions` (`submission_id`, `form_id`, `data`, `user_email`, `child_id`, `last_child`, `is_read`, `submitted_on`, `unique_token`) VALUES
(1, 1, 'a:4:{i:2;O:8:\"stdClass\":3:{s:5:\"label\";s:9:\"Your Name\";s:5:\"value\";s:5:\"David\";s:4:\"type\";s:7:\"Textbox\";}i:3;O:8:\"stdClass\":3:{s:5:\"label\";s:17:\"Your Phone Number\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:6:\"Number\";}i:1;O:8:\"stdClass\":3:{s:5:\"label\";s:10:\"Your Email\";s:5:\"value\";s:29:\"support@RegistrationMagic.com\";s:4:\"type\";s:5:\"Email\";}i:4;O:8:\"stdClass\":3:{s:5:\"label\";s:7:\"Message\";s:5:\"value\";s:321:\"Hello There!\r\n\r\nI see you have installed RegistrationMagic. I am one of the developers of this plugin and we have put countless hours to make it both powerful and easy to use. \r\n\r\nWe sincerely hope you will enjoy using it. If you run into any problems or have questions, do not hesitate to contact me directly.\r\n\r\nCheers!\";s:4:\"type\";s:8:\"Textarea\";}}', 'support@RegistrationMagic.com', 0, 1, 1, '2016-12-15 09:09:32', '6314817865438721');

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_submission_fields`
--

CREATE TABLE `im_rm_submission_fields` (
  `sub_field_id` int(6) UNSIGNED NOT NULL,
  `submission_id` int(6) DEFAULT NULL,
  `field_id` int(6) DEFAULT NULL,
  `form_id` int(6) DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_rm_submission_fields`
--

INSERT INTO `im_rm_submission_fields` (`sub_field_id`, `submission_id`, `field_id`, `form_id`, `value`) VALUES
(1, 1, 2, 1, 'David'),
(2, 1, 3, 1, NULL),
(3, 1, 1, 1, 'support@RegistrationMagic.com'),
(4, 1, 4, 1, 'Hello There!\r\n\r\nI see you have installed RegistrationMagic. I am one of the developers of this plugin and we have put countless hours to make it both powerful and easy to use. \r\n\r\nWe sincerely hope you will enjoy using it. If you run into any problems or have questions, do not hesitate to contact me directly.\r\n\r\nCheers!');

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_tasks`
--

CREATE TABLE `im_rm_tasks` (
  `task_id` int(6) UNSIGNED NOT NULL,
  `form_id` int(6) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `desc` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `must_rules` text COLLATE utf8mb4_unicode_520_ci,
  `any_rules` text COLLATE utf8mb4_unicode_520_ci,
  `is_active` tinyint(1) DEFAULT '1',
  `actions` text COLLATE utf8mb4_unicode_520_ci,
  `task_order` int(6) DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `im_rm_task_exe_log`
--

CREATE TABLE `im_rm_task_exe_log` (
  `texe_log_id` int(6) UNSIGNED NOT NULL,
  `task_id` int(6) DEFAULT NULL,
  `action` int(6) DEFAULT NULL,
  `sub_ids` longtext COLLATE utf8mb4_unicode_520_ci,
  `user_ids` longtext COLLATE utf8mb4_unicode_520_ci,
  `meta` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `im_skills`
--

CREATE TABLE `im_skills` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_skills`
--

INSERT INTO `im_skills` (`id`, `user_id`, `name`) VALUES
(1, '1', 'Node Js'),
(2, '1', 'jQuery'),
(11, '11', 'test1'),
(13, '20', 'java'),
(8, '1', 'Node Js'),
(9, '1', 'Vehle'),
(18, '22', 'skill'),
(14, '20', 'tet'),
(21, '23', 'tester'),
(17, '11', 'testt'),
(22, '23', 'testing3'),
(23, '23', 'news'),
(24, '24', 'I am a great lerner'),
(25, '24', 'as well as I am a great listener as well ,I am a good team worker also'),
(26, '25', 'good worker'),
(37, '33', 'Business Startups'),
(31, '13', 'fhgfh'),
(32, '28', 'ravibhai'),
(33, '28', 'ravibhai'),
(34, '28', 'vddcdddcxsdcdsscdddvdcfrfc fgfrhtrvfrvrfvffgg fffegddvdrgg gggfdffdfcd fbdgvgguyec fddssswaaff fhgt'),
(42, '21', 'test'),
(38, '33', 'Strategy'),
(39, '33', 'Analysis'),
(41, '21', 'okkz'),
(43, '59', 'Hello team'),
(44, '78', 'Legal'),
(45, '78', 'Real Estate'),
(46, '78', 'Negotiation'),
(47, '25', 'team coming'),
(48, '25', 'testing'),
(49, '25', 'the following link to my email and'),
(50, '25', 'testing testing the waters and the rest is just the same time as I'),
(51, '25', 'address book unsubscribe here is a good time for the first place I am not a good'),
(52, '85', 'testing testing the waters of the app is a good day I went ree'),
(54, '29', 'tedter'),
(55, '29', 'testing all the skills in a day'),
(56, '99', 'tedter'),
(57, '99', 'testing'),
(58, '99', 'team'),
(59, '63', 'java'),
(60, '63', 'swift'),
(62, '107', 'bijvvjvj'),
(63, '107', 'uvhvhv h hhvjvuvjvuv');

-- --------------------------------------------------------

--
-- Table structure for table `im_skills_endorsement`
--

CREATE TABLE `im_skills_endorsement` (
  `id` bigint(20) NOT NULL,
  `skill_id` varchar(255) DEFAULT NULL,
  `endorse_user` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `im_skills_endorsement`
--

INSERT INTO `im_skills_endorsement` (`id`, `skill_id`, `endorse_user`) VALUES
(1, '1', '11'),
(10, '8', '21'),
(9, '2', '21'),
(8, '9', '11'),
(7, '8', '11'),
(6, '2', '11'),
(11, '1', '21'),
(12, '26', '21'),
(13, '57', '97'),
(14, '58', '97'),
(15, '56', '97');

-- --------------------------------------------------------

--
-- Table structure for table `im_termmeta`
--

CREATE TABLE `im_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `im_terms`
--

CREATE TABLE `im_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_terms`
--

INSERT INTO `im_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `im_term_relationships`
--

CREATE TABLE `im_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_term_relationships`
--

INSERT INTO `im_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `im_term_taxonomy`
--

CREATE TABLE `im_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_term_taxonomy`
--

INSERT INTO `im_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `im_usermeta`
--

CREATE TABLE `im_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_usermeta`
--

INSERT INTO `im_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'im@rk'),
(2, 1, 'first_name', 'abhinav grover'),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'im_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'im_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:5:{s:64:\"dff95e2317742c2973c437c2ae1841eb6a4f48eafeca9543a3a521782321c722\";a:4:{s:10:\"expiration\";i:1509617851;s:2:\"ip\";s:14:\"122.173.31.188\";s:2:\"ua\";s:103:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1509445051;}s:64:\"1dea75e88d5ae9da75fe5e6cc3ce18ec32c2599d61afec57d45f02738db626cc\";a:4:{s:10:\"expiration\";i:1509628763;s:2:\"ip\";s:15:\"110.225.206.110\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1509455963;}s:64:\"51b65eea711972af9bf5ace0df87a4e6e4247c76c1a42ffe7215acf400dc3697\";a:4:{s:10:\"expiration\";i:1509684192;s:2:\"ip\";s:15:\"110.225.206.110\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1509511392;}s:64:\"fc4f0fb5b2afc8aa8eb2e60f356cfa78e6caf8e1326e214b2e43e4f135fa1b26\";a:4:{s:10:\"expiration\";i:1509710940;s:2:\"ip\";s:14:\"122.173.31.188\";s:2:\"ua\";s:103:\"Mozilla/5.0 (Windows NT 10.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1509538140;}s:64:\"da377659bfac35fb52adf321079b8710e06907b9c330a5a53a018eae8c808295\";a:4:{s:10:\"expiration\";i:1509790337;s:2:\"ip\";s:15:\"110.225.206.110\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36\";s:5:\"login\";i:1509617537;}}'),
(16, 1, 'im_dashboard_quick_press_last_post_id', '32'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"122.173.31.0\";}'),
(18, 2, 'nickname', 'grover.abhinav82@gmail.com'),
(19, 2, 'first_name', 'Abhinav'),
(20, 2, 'last_name', ''),
(21, 2, 'description', ''),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'comment_shortcuts', 'false'),
(24, 2, 'admin_color', 'fresh'),
(25, 2, 'use_ssl', '0'),
(26, 2, 'show_admin_bar_front', 'true'),
(27, 2, 'locale', ''),
(28, 2, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(29, 2, 'im_user_level', '0'),
(30, 2, 'facebookId', '123456'),
(31, 2, 'firebaseTokenId', '12gh1hy3ghq'),
(32, 2, 'deviceType', 'iOS/ android'),
(33, 2, 'profileImageURL', ''),
(34, 2, 'latitude', '30.727068'),
(35, 2, 'longitude', '76.84666'),
(37, 1, 'deviceType', 'android'),
(38, 1, 'latitude', '30.727068'),
(39, 1, 'longitude', '76.84666'),
(40, 1, 'onlineStatus', 'true'),
(41, 1, 'age', '25'),
(42, 1, 'gender', 'Male'),
(43, 1, 'nationality', 'indian'),
(44, 1, 'officialStatus', ''),
(45, 1, 'profession', ''),
(46, 1, 'location', 'Delhi'),
(47, 1, 'bio', ''),
(48, 1, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1506692406.jpg'),
(49, 3, 'nickname', 'navneet.kaur@imarkinfotech.com'),
(50, 3, 'first_name', 'navneet'),
(51, 3, 'last_name', ''),
(52, 3, 'description', ''),
(53, 3, 'rich_editing', 'true'),
(54, 3, 'comment_shortcuts', 'false'),
(55, 3, 'admin_color', 'fresh'),
(56, 3, 'use_ssl', '0'),
(57, 3, 'show_admin_bar_front', 'true'),
(58, 3, 'locale', ''),
(59, 3, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(60, 3, 'im_user_level', '0'),
(61, 3, 'facebookId', ''),
(62, 3, 'firebaseTokenId', 'dynQsOFYGlQ:APA91bGa5-d1g-xJvbpgH2kri_YPh8HJHpb3CRjhATY9LjRUPn9KJprhxtot5Xw6IfqsvCaai5YUMEbvGf2KHpMqPb7AcSC37kpt6wpLmBRpwuVhQeW_GiQHm_uyJ8JvqjVNStrhksUn'),
(63, 3, 'deviceType', 'android'),
(64, 3, 'profileImageURL', ''),
(65, 3, 'latitude', ''),
(66, 3, 'longitude', ''),
(67, 4, 'nickname', 'navneet@gmail.com'),
(68, 4, 'first_name', 'nav'),
(69, 4, 'last_name', ''),
(70, 4, 'description', ''),
(71, 4, 'rich_editing', 'true'),
(72, 4, 'comment_shortcuts', 'false'),
(73, 4, 'admin_color', 'fresh'),
(74, 4, 'use_ssl', '0'),
(75, 4, 'show_admin_bar_front', 'true'),
(76, 4, 'locale', ''),
(77, 4, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(78, 4, 'im_user_level', '0'),
(79, 4, 'facebookId', ''),
(2637, 102, 'onlineTime', '1509616727'),
(81, 4, 'deviceType', 'android'),
(82, 4, 'profileImageURL', ''),
(83, 4, 'latitude', ''),
(84, 4, 'longitude', ''),
(85, 5, 'nickname', 'navneet1@gmail.com'),
(86, 5, 'first_name', 'nav'),
(87, 5, 'last_name', ''),
(88, 5, 'description', ''),
(89, 5, 'rich_editing', 'true'),
(90, 5, 'comment_shortcuts', 'false'),
(91, 5, 'admin_color', 'fresh'),
(92, 5, 'use_ssl', '0'),
(93, 5, 'show_admin_bar_front', 'true'),
(94, 5, 'locale', ''),
(95, 5, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(96, 5, 'im_user_level', '0'),
(97, 5, 'facebookId', ''),
(99, 5, 'deviceType', 'android'),
(100, 5, 'profileImageURL', ''),
(101, 5, 'latitude', ''),
(102, 5, 'longitude', ''),
(103, 6, 'nickname', 'navneet.kaur@g.com'),
(104, 6, 'first_name', 'navneet'),
(105, 6, 'last_name', ''),
(106, 6, 'description', ''),
(107, 6, 'rich_editing', 'true'),
(108, 6, 'comment_shortcuts', 'false'),
(109, 6, 'admin_color', 'fresh'),
(110, 6, 'use_ssl', '0'),
(111, 6, 'show_admin_bar_front', 'true'),
(112, 6, 'locale', ''),
(113, 6, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(114, 6, 'im_user_level', '0'),
(115, 6, 'facebookId', ''),
(116, 6, 'firebaseTokenId', 'dynQsOFYGlQ:APA91bGa5-d1g-xJvbpgH2kri_YPh8HJHpb3CRjhATY9LjRUPn9KJprhxtot5Xw6IfqsvCaai5YUMEbvGf2KHpMqPb7AcSC37kpt6wpLmBRpwuVhQeW_GiQHm_uyJ8JvqjVNStrhksUn'),
(117, 6, 'deviceType', 'android'),
(118, 6, 'profileImageURL', ''),
(119, 6, 'latitude', ''),
(120, 6, 'longitude', ''),
(121, 7, 'nickname', 'navneet12@g.com'),
(122, 7, 'first_name', 'navneet'),
(123, 7, 'last_name', ''),
(124, 7, 'description', ''),
(125, 7, 'rich_editing', 'true'),
(126, 7, 'comment_shortcuts', 'false'),
(127, 7, 'admin_color', 'fresh'),
(128, 7, 'use_ssl', '0'),
(129, 7, 'show_admin_bar_front', 'true'),
(130, 7, 'locale', ''),
(131, 7, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(132, 7, 'im_user_level', '0'),
(133, 7, 'facebookId', ''),
(134, 7, 'firebaseTokenId', 'dynQsOFYGlQ:APA91bGa5-d1g-xJvbpgH2kri_YPh8HJHpb3CRjhATY9LjRUPn9KJprhxtot5Xw6IfqsvCaai5YUMEbvGf2KHpMqPb7AcSC37kpt6wpLmBRpwuVhQeW_GiQHm_uyJ8JvqjVNStrhksUn'),
(135, 7, 'deviceType', 'android'),
(136, 7, 'profileImageURL', ''),
(137, 7, 'latitude', ''),
(138, 7, 'longitude', ''),
(139, 8, 'nickname', 'navneet123@gmail.com'),
(140, 8, 'first_name', 'navi'),
(141, 8, 'last_name', ''),
(142, 8, 'description', ''),
(143, 8, 'rich_editing', 'true'),
(144, 8, 'comment_shortcuts', 'false'),
(145, 8, 'admin_color', 'fresh'),
(146, 8, 'use_ssl', '0'),
(147, 8, 'show_admin_bar_front', 'true'),
(148, 8, 'locale', ''),
(149, 8, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(150, 8, 'im_user_level', '0'),
(151, 8, 'facebookId', ''),
(153, 8, 'deviceType', 'android'),
(154, 8, 'profileImageURL', ''),
(155, 8, 'latitude', ''),
(156, 8, 'longitude', ''),
(157, 9, 'nickname', 'navneet13552@g.com'),
(158, 9, 'first_name', 'navneet'),
(159, 9, 'last_name', ''),
(160, 9, 'description', ''),
(161, 9, 'rich_editing', 'true'),
(162, 9, 'comment_shortcuts', 'false'),
(163, 9, 'admin_color', 'fresh'),
(164, 9, 'use_ssl', '0'),
(165, 9, 'show_admin_bar_front', 'true'),
(166, 9, 'locale', ''),
(167, 9, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(168, 9, 'im_user_level', '0'),
(169, 9, 'facebookId', ''),
(170, 9, 'firebaseTokenId', 'dynQsOFYGlQ:APA91bGa5-d1g-xJvbpgH2kri_YPh8HJHpb3CRjhATY9LjRUPn9KJprhxtot5Xw6IfqsvCaai5YUMEbvGf2KHpMqPb7AcSC37kpt6wpLmBRpwuVhQeW_GiQHm_uyJ8JvqjVNStrhksUn'),
(171, 9, 'deviceType', 'android'),
(172, 9, 'profileImageURL', ''),
(173, 9, 'latitude', ''),
(174, 9, 'longitude', ''),
(175, 10, 'nickname', 'navneet1352@g.com'),
(176, 10, 'first_name', 'navneet'),
(177, 10, 'last_name', ''),
(178, 10, 'description', ''),
(179, 10, 'rich_editing', 'true'),
(180, 10, 'comment_shortcuts', 'false'),
(181, 10, 'admin_color', 'fresh'),
(182, 10, 'use_ssl', '0'),
(183, 10, 'show_admin_bar_front', 'true'),
(184, 10, 'locale', ''),
(185, 10, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(186, 10, 'im_user_level', '0'),
(187, 10, 'facebookId', ''),
(188, 10, 'firebaseTokenId', 'dynQsOFYGlQ:APA91bGa5-d1g-xJvbpgH2kri_YPh8HJHpb3CRjhATY9LjRUPn9KJprhxtot5Xw6IfqsvCaai5YUMEbvGf2KHpMqPb7AcSC37kpt6wpLmBRpwuVhQeW_GiQHm_uyJ8JvqjVNStrhksUn'),
(189, 10, 'deviceType', 'android'),
(190, 10, 'profileImageURL', ''),
(191, 10, 'latitude', ''),
(192, 10, 'longitude', ''),
(193, 11, 'nickname', 'nav@g.com'),
(194, 11, 'first_name', 'navi'),
(195, 11, 'last_name', ''),
(196, 11, 'description', ''),
(197, 11, 'rich_editing', 'true'),
(198, 11, 'comment_shortcuts', 'false'),
(199, 11, 'admin_color', 'fresh'),
(200, 11, 'use_ssl', '0'),
(201, 11, 'show_admin_bar_front', 'true'),
(202, 11, 'locale', ''),
(203, 11, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(204, 11, 'im_user_level', '0'),
(205, 11, 'facebookId', ''),
(206, 11, 'firebaseTokenId', 'eWIqKXfEtTg:APA91bFWgixB5Y7bGLDlLrbpnueuwYodJKcaWt6qCkuu9YgXNLV9scvtgMUnPWHJ4hr7-8U_1OuHkRGherYEuFwzQri4WnEtyDLsLidoX82VzaJ8SgAptUmMMGNeSOODC3co9azNe3AD'),
(207, 11, 'deviceType', 'android'),
(208, 11, 'profileImageURL', ''),
(209, 11, 'latitude', '31.590955483367956'),
(210, 11, 'longitude', '76.79708026349545'),
(211, 11, 'age', '28'),
(212, 11, 'gender', 'Female'),
(213, 11, 'nationality', 'indian'),
(214, 11, 'officialStatus', 'Refugee'),
(215, 11, 'profession', 'developer'),
(216, 11, 'location', 'Himachal Pradesh 175023,India'),
(241, 1, 'twitter', 'https://twitter.com/Abhinav82Grover'),
(240, 1, 'facebook', 'https://www.facebook.com/abhinav1331'),
(217, 11, 'bio', 'I am an android developer'),
(219, 11, 'onlineStatus', 'false'),
(220, 12, 'nickname', 'batsitadave91@gmail.com'),
(221, 12, 'first_name', 'Dave Batista'),
(222, 12, 'last_name', ''),
(223, 12, 'description', ''),
(224, 12, 'rich_editing', 'true'),
(225, 12, 'comment_shortcuts', 'false'),
(226, 12, 'admin_color', 'fresh'),
(227, 12, 'use_ssl', '0'),
(228, 12, 'show_admin_bar_front', 'true'),
(229, 12, 'locale', ''),
(230, 12, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(231, 12, 'im_user_level', '0'),
(232, 12, 'facebookId', '393664567702805'),
(2617, 102, 'use_ssl', '0'),
(234, 12, 'deviceType', 'iOS'),
(235, 12, 'profileImageURL', 'https://graph.facebook.com/393664567702805/picture?type=normal'),
(236, 12, 'latitude', '30.7269569097293'),
(237, 12, 'longitude', '76.8462361037258'),
(238, 11, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1504263821.jpg'),
(239, 12, 'onlineStatus', 'false'),
(356, 19, 'nickname', 'deepak.kapil@imarkinfotech.com'),
(357, 19, 'first_name', 'Deepak'),
(242, 1, 'instagram', 'https://www.instagram.com/abhinav'),
(376, 13, 'age', ''),
(377, 13, 'gender', ''),
(378, 13, 'nationality', ''),
(379, 13, 'officialStatus', ''),
(380, 13, 'profession', 'iOS'),
(243, 1, 'phone', ''),
(244, 11, 'facebook', 'https://www.facebook.com'),
(245, 11, 'twitter', 'https://twitter.com/Abhinav.com'),
(246, 11, 'instagram', 'https://www.instagram.com/abhinav'),
(247, 11, 'phone', '964668456767'),
(248, 13, 'nickname', 'diksha@gmail.com'),
(249, 13, 'first_name', ''),
(250, 13, 'last_name', ''),
(251, 13, 'description', ''),
(252, 13, 'rich_editing', 'true'),
(253, 13, 'comment_shortcuts', 'false'),
(254, 13, 'admin_color', 'fresh'),
(255, 13, 'use_ssl', '0'),
(256, 13, 'show_admin_bar_front', 'true'),
(257, 13, 'locale', ''),
(258, 13, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(259, 13, 'im_user_level', '0'),
(591, 28, 'show_admin_bar_front', 'true'),
(260, 13, 'facebookId', ''),
(2643, 103, 'rich_editing', 'true'),
(262, 13, 'deviceType', 'iOS'),
(263, 13, 'profileImageURL', ''),
(264, 13, 'latitude', '19.0176147'),
(265, 13, 'longitude', '72.8561644'),
(266, 14, 'nickname', 'diksha.s@imarkinfotech.com'),
(267, 14, 'first_name', 'Diksha Sharma'),
(268, 14, 'last_name', ''),
(269, 14, 'description', ''),
(270, 14, 'rich_editing', 'true'),
(271, 14, 'comment_shortcuts', 'false'),
(272, 14, 'admin_color', 'fresh'),
(273, 14, 'use_ssl', '0'),
(274, 14, 'show_admin_bar_front', 'true'),
(275, 14, 'locale', ''),
(276, 14, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(277, 14, 'im_user_level', '0'),
(278, 14, 'facebookId', ''),
(279, 14, 'firebaseTokenId', 'dvS6RqW2gx8:APA91bGJH_elijf2P53kaPJhehPlKMrwXCfhi-TgKzhDg5rBNe_3Jx92PsNSpNRndpxJfE1R7kWws-mObyPqVQSFHcPHerQnry-ZHDoedogvenzVLAxaULGoCfn363Umg4St_-FN9UTf'),
(280, 14, 'deviceType', 'android'),
(281, 14, 'profileImageURL', ''),
(282, 14, 'latitude', '30.332247'),
(283, 14, 'longitude', '76.861824'),
(284, 15, 'nickname', 'new@user.com'),
(285, 15, 'first_name', 'new user'),
(286, 15, 'last_name', ''),
(287, 15, 'description', ''),
(288, 15, 'rich_editing', 'true'),
(289, 15, 'comment_shortcuts', 'false'),
(290, 15, 'admin_color', 'fresh'),
(291, 15, 'use_ssl', '0'),
(292, 15, 'show_admin_bar_front', 'true'),
(293, 15, 'locale', ''),
(294, 15, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(295, 15, 'im_user_level', '0'),
(296, 15, 'facebookId', ''),
(2642, 103, 'description', ''),
(298, 15, 'deviceType', 'iOS'),
(299, 15, 'profileImageURL', ''),
(300, 15, 'latitude', '19.0176147'),
(301, 15, 'longitude', '72.8561644'),
(302, 16, 'nickname', 'test@gmail.com'),
(303, 16, 'first_name', 'test'),
(304, 16, 'last_name', ''),
(305, 16, 'description', ''),
(306, 16, 'rich_editing', 'true'),
(307, 16, 'comment_shortcuts', 'false'),
(308, 16, 'admin_color', 'fresh'),
(309, 16, 'use_ssl', '0'),
(310, 16, 'show_admin_bar_front', 'true'),
(311, 16, 'locale', ''),
(312, 16, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(313, 16, 'im_user_level', '0'),
(314, 16, 'facebookId', ''),
(2641, 103, 'last_name', ''),
(316, 16, 'deviceType', 'iOS'),
(317, 16, 'profileImageURL', ''),
(318, 16, 'latitude', '19.0176147'),
(319, 16, 'longitude', '72.8561644'),
(320, 17, 'nickname', 'check@gmail.com'),
(321, 17, 'first_name', 'check'),
(322, 17, 'last_name', ''),
(323, 17, 'description', ''),
(324, 17, 'rich_editing', 'true'),
(325, 17, 'comment_shortcuts', 'false'),
(326, 17, 'admin_color', 'fresh'),
(327, 17, 'use_ssl', '0'),
(328, 17, 'show_admin_bar_front', 'true'),
(329, 17, 'locale', ''),
(330, 17, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(331, 17, 'im_user_level', '0'),
(332, 17, 'facebookId', ''),
(2640, 103, 'first_name', 'xyz'),
(334, 17, 'deviceType', 'iOS'),
(335, 17, 'profileImageURL', ''),
(336, 17, 'latitude', '19.0176147'),
(337, 17, 'longitude', '72.8561644'),
(338, 18, 'nickname', 'abc@gmail.com'),
(339, 18, 'first_name', 'abc'),
(340, 18, 'last_name', ''),
(341, 18, 'description', ''),
(342, 18, 'rich_editing', 'true'),
(343, 18, 'comment_shortcuts', 'false'),
(344, 18, 'admin_color', 'fresh'),
(345, 18, 'use_ssl', '0'),
(346, 18, 'show_admin_bar_front', 'true'),
(347, 18, 'locale', ''),
(348, 18, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(349, 18, 'im_user_level', '0'),
(350, 18, 'facebookId', ''),
(2623, 102, 'facebookId', ''),
(352, 18, 'deviceType', 'iOS'),
(353, 18, 'profileImageURL', ''),
(354, 18, 'latitude', '19.0176147'),
(355, 18, 'longitude', '72.8561644'),
(358, 19, 'last_name', ''),
(359, 19, 'description', ''),
(360, 19, 'rich_editing', 'true'),
(361, 19, 'comment_shortcuts', 'false'),
(362, 19, 'admin_color', 'fresh'),
(363, 19, 'use_ssl', '0'),
(364, 19, 'show_admin_bar_front', 'true'),
(365, 19, 'locale', ''),
(366, 19, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(367, 19, 'im_user_level', '0'),
(368, 19, 'facebookId', '123456'),
(369, 19, 'firebaseTokenId', 'e23twQ_zfh8:APA91bEJ24S74iNEOdNvk9fhK1zpYCZUuZR4Ciw-clruLrk6JWlmIlKNjpQ6TLabBFHSGwv0yhDxPVBiu-MdCl2i-Bb6aC1CltkFAKvNLdDEBYDqOFxmTYOYat4--7cU6AKSeIJUVeys'),
(370, 19, 'deviceType', 'android'),
(371, 19, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1504856040.jpg'),
(372, 19, 'latitude', ''),
(373, 19, 'longitude', ''),
(374, 19, 'onlineStatus', 'false'),
(635, 30, 'last_name', ''),
(636, 30, 'description', ''),
(375, 13, 'onlineStatus', 'false'),
(381, 13, 'location', ''),
(382, 13, 'bio', ''),
(383, 13, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1504522578.jpg'),
(669, 32, 'nickname', 'archibald@sonacircle.com'),
(583, 28, 'nickname', 'abhishek@mail.com'),
(584, 28, 'first_name', 'Abhishek Beniwal'),
(585, 28, 'last_name', ''),
(586, 28, 'description', ''),
(587, 28, 'rich_editing', 'true'),
(588, 28, 'comment_shortcuts', 'false'),
(589, 28, 'admin_color', 'fresh'),
(590, 28, 'use_ssl', '0'),
(582, 23, 'onlineStatus', 'false'),
(670, 32, 'first_name', 'Archibald'),
(671, 32, 'last_name', ''),
(672, 32, 'description', ''),
(673, 32, 'rich_editing', 'true'),
(674, 32, 'comment_shortcuts', 'false'),
(384, 20, 'nickname', 'rk@gmail.com'),
(385, 20, 'first_name', 'rk'),
(386, 20, 'last_name', ''),
(387, 20, 'description', ''),
(388, 20, 'rich_editing', 'true'),
(389, 20, 'comment_shortcuts', 'false'),
(390, 20, 'admin_color', 'fresh'),
(391, 20, 'use_ssl', '0'),
(392, 20, 'show_admin_bar_front', 'true'),
(393, 20, 'locale', ''),
(394, 20, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(395, 20, 'im_user_level', '0'),
(396, 20, 'facebookId', ''),
(397, 20, 'firebaseTokenId', 'f-zSBQih7gI:APA91bH1Bhw_HX-zVh6qnARZl8zhl2f-CDtLuLlaKVjUxF3LtZOalJ4tfrDdkgp4Tlmsh_QdeFhaLBsCpAPSQY6DNfuUerRRmB_oTGveIuJpKKoBxyVVA0u26r0AtSLNFP30B0qC-23_'),
(398, 20, 'deviceType', 'android'),
(399, 20, 'profileImageURL', ''),
(400, 20, 'latitude', ''),
(401, 20, 'longitude', ''),
(402, 21, 'nickname', 'navv@g.com'),
(403, 21, 'first_name', 'nav'),
(404, 21, 'last_name', ''),
(405, 21, 'description', ''),
(406, 21, 'rich_editing', 'true'),
(407, 21, 'comment_shortcuts', 'false'),
(408, 21, 'admin_color', 'fresh'),
(409, 21, 'use_ssl', '0'),
(410, 21, 'show_admin_bar_front', 'true'),
(411, 21, 'locale', ''),
(412, 21, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(413, 21, 'im_user_level', '0'),
(414, 21, 'facebookId', ''),
(415, 21, 'firebaseTokenId', 'fZk81P4dNe0:APA91bEECqwf6bJGWgLuTqUJ4l8gJHAVNbGmXlZSYRnUUlXvT4jVvMEkelflSZHZ6br5pMr4WqIH2EeTlfHOT4HdraTaphL-yMaKvvVGI5Q9o9IIvnrPioFij7r5xTuVJaSIYTtSsVJG'),
(416, 21, 'deviceType', 'iOS'),
(417, 21, 'profileImageURL', ''),
(418, 21, 'latitude', '30.726923571'),
(419, 21, 'longitude', '76.8463127897'),
(420, 21, 'age', '26'),
(421, 21, 'gender', 'Female'),
(422, 21, 'nationality', 'indian'),
(423, 21, 'officialStatus', 'Asylum Seeker'),
(424, 21, 'profession', 'developer'),
(425, 21, 'location', ''),
(426, 21, 'bio', 'I am a developer'),
(427, 21, 'onlineStatus', 'true'),
(634, 30, 'first_name', 'Abhinav G'),
(633, 30, 'nickname', 'grover.abhinav@ymail.com'),
(428, 21, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1504771720.jpg'),
(429, 22, 'nickname', 'ankit@g.com'),
(430, 22, 'first_name', 'ankit'),
(431, 22, 'last_name', ''),
(432, 22, 'description', ''),
(433, 22, 'rich_editing', 'true'),
(434, 22, 'comment_shortcuts', 'false'),
(435, 22, 'admin_color', 'fresh'),
(436, 22, 'use_ssl', '0'),
(437, 22, 'show_admin_bar_front', 'true'),
(438, 22, 'locale', ''),
(439, 22, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(440, 22, 'im_user_level', '0'),
(441, 22, 'facebookId', ''),
(442, 22, 'firebaseTokenId', 'eyUZJ73gHR8:APA91bGIyK6POajFU8mrx1NGXXFOP6QKoRg9uRvbxRD4x604_ny0mhAz5N4XjfehnCJpNe-A0lV9nHFg0IyIZQx2O9O2Pu0iXZmvpHUZ7C1TDXzeaWM1q0T4fTscKkkbT667TQ8txwVV'),
(443, 22, 'deviceType', 'android'),
(444, 22, 'profileImageURL', ''),
(445, 22, 'latitude', ''),
(446, 22, 'longitude', ''),
(447, 23, 'nickname', 'navneet1992kaur@gmail.com'),
(448, 23, 'first_name', 'Navneet Kaur'),
(449, 23, 'last_name', ''),
(450, 23, 'description', ''),
(451, 23, 'rich_editing', 'true'),
(452, 23, 'comment_shortcuts', 'false'),
(453, 23, 'admin_color', 'fresh'),
(454, 23, 'use_ssl', '0'),
(455, 23, 'show_admin_bar_front', 'true'),
(456, 23, 'locale', ''),
(457, 23, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(458, 23, 'im_user_level', '0'),
(459, 23, 'facebookId', '1485035958256372'),
(460, 23, 'firebaseTokenId', 'dyTTA5uiLoU:APA91bES4I7ZFRZJnAyCxJ1XE1D7SMypq_xeUn0zWbkYflhmW7hSPWMxHHcreU4hj2JneCxrDOvs8SmeWrlGDMN2qvWOPzeYNp_agy4nNdD4CaX8z_0VrTbpFhNJJOBIOwTQqLX1DJR7'),
(461, 23, 'deviceType', 'android'),
(462, 23, 'profileImageURL', 'https://graph.facebook.com/1485035958256372/picture?type=normal'),
(463, 23, 'latitude', ''),
(464, 23, 'longitude', ''),
(465, 22, 'facebook', 'Facebook.com'),
(466, 22, 'twitter', ''),
(467, 22, 'instagram', ''),
(468, 22, 'phone', ''),
(469, 22, 'age', '26'),
(470, 22, 'gender', ''),
(471, 22, 'nationality', ''),
(472, 22, 'officialStatus', ''),
(473, 22, 'profession', ''),
(474, 22, 'location', ''),
(475, 22, 'bio', ''),
(476, 22, 'onlineStatus', 'false'),
(477, 24, 'nickname', 'abhi@gmail.com'),
(478, 24, 'first_name', 'abhi'),
(479, 24, 'last_name', ''),
(480, 24, 'description', ''),
(481, 24, 'rich_editing', 'true'),
(482, 24, 'comment_shortcuts', 'false'),
(483, 24, 'admin_color', 'fresh'),
(484, 24, 'use_ssl', '0'),
(485, 24, 'show_admin_bar_front', 'true'),
(486, 24, 'locale', ''),
(487, 24, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(488, 24, 'im_user_level', '0'),
(489, 24, 'facebookId', ''),
(490, 24, 'firebaseTokenId', 'fzDOW2xvmOA:APA91bF_CDnqcQ75LRJxBNVNw4RJnq1ndhI5rAIfMBkzqpjniXiWXGXID5K9oeVM_liF-J0z0cfzmfSyt5yUSPSjnQH0252QPOdYFdWDOO4HqBKcRgY8qbDzO_XUUDNoixCyE2_zFzye'),
(491, 24, 'deviceType', 'android'),
(492, 24, 'profileImageURL', ''),
(493, 24, 'latitude', ''),
(494, 24, 'longitude', ''),
(495, 24, 'age', '58'),
(496, 24, 'gender', 'Male'),
(497, 24, 'nationality', 'Indian'),
(498, 24, 'officialStatus', 'Refugee'),
(499, 24, 'profession', 'tester'),
(500, 24, 'location', 'Phanve, Himachal Pradesh 172113,India'),
(501, 24, 'bio', 'software quality analyst at imarkinfotech in Chandigarh city'),
(502, 23, 'facebook', 'facebook.com'),
(503, 23, 'twitter', ''),
(504, 23, 'instagram', ''),
(505, 23, 'phone', ''),
(506, 23, 'age', '26'),
(507, 23, 'gender', ''),
(508, 23, 'nationality', ''),
(509, 23, 'officialStatus', ''),
(510, 23, 'profession', 'android developer'),
(511, 23, 'location', ''),
(512, 23, 'bio', 'I am an android developer and works at imarkinfotech. I live in zirakpur.'),
(513, 24, 'facebook', 'abhishek'),
(514, 24, 'twitter', 'tesye'),
(515, 24, 'instagram', 'Jon snow'),
(516, 24, 'phone', '8930030220'),
(517, 24, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1504785599.jpg'),
(518, 24, 'onlineStatus', 'false'),
(519, 25, 'nickname', 'azhar.ali@imarkinfotech.com'),
(520, 25, 'first_name', 'Azhar Ali'),
(521, 25, 'last_name', ''),
(522, 25, 'description', ''),
(523, 25, 'rich_editing', 'true'),
(524, 25, 'comment_shortcuts', 'false'),
(525, 25, 'admin_color', 'fresh'),
(526, 25, 'use_ssl', '0'),
(527, 25, 'show_admin_bar_front', 'true'),
(528, 25, 'locale', ''),
(529, 25, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(530, 25, 'im_user_level', '0'),
(531, 25, 'facebookId', '266234517218949'),
(1467, 64, 'nickname', 'Azhar.ali1@imarkinfotech.com'),
(1468, 64, 'first_name', 'Azhar'),
(533, 25, 'deviceType', 'android'),
(534, 25, 'profileImageURL', 'https://graph.facebook.com/266234517218949/picture?type=normal'),
(535, 25, 'latitude', '30.727047'),
(536, 25, 'longitude', '76.84668'),
(537, 25, 'age', '58'),
(538, 25, 'gender', 'Female'),
(539, 25, 'nationality', 'indian'),
(540, 25, 'officialStatus', 'Refugee'),
(541, 25, 'profession', 'teste'),
(542, 25, 'location', 'Al Wahat District,Libya'),
(543, 25, 'bio', 'tester'),
(544, 25, 'onlineStatus', 'true'),
(545, 26, 'nickname', 'abhishek@imarkinfotech.com'),
(546, 26, 'first_name', 'teste'),
(547, 26, 'last_name', ''),
(548, 26, 'description', ''),
(549, 26, 'rich_editing', 'true'),
(550, 26, 'comment_shortcuts', 'false'),
(551, 26, 'admin_color', 'fresh'),
(552, 26, 'use_ssl', '0'),
(553, 26, 'show_admin_bar_front', 'true'),
(554, 26, 'locale', ''),
(555, 26, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(556, 26, 'im_user_level', '0'),
(557, 26, 'facebookId', ''),
(558, 26, 'firebaseTokenId', 'eg4cJS2rNMs:APA91bEoeWrOr_LLrGoPyu_F2dp-8eTzsQzLfKsI0AfiH5Ix2Meb84ab2lP2UNx42QtDRdGstIr1Thc_oQ68682O8UqlvIr5DJTw1uIoCSjPbn_g6NR2V0XiSPvSRpqk-G9Q0OP-crTs'),
(559, 26, 'deviceType', 'android'),
(560, 26, 'profileImageURL', ''),
(561, 26, 'latitude', '30.727055'),
(562, 26, 'longitude', '76.84664'),
(563, 26, 'onlineStatus', 'false'),
(564, 27, 'nickname', 'grover.abhinav8292@gmail.com'),
(565, 27, 'first_name', 'Abhinav'),
(566, 27, 'last_name', ''),
(567, 27, 'description', ''),
(568, 27, 'rich_editing', 'true'),
(569, 27, 'comment_shortcuts', 'false'),
(570, 27, 'admin_color', 'fresh'),
(571, 27, 'use_ssl', '0'),
(572, 27, 'show_admin_bar_front', 'true'),
(573, 27, 'locale', ''),
(574, 27, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(575, 27, 'im_user_level', '0'),
(576, 27, 'facebookId', '12345612'),
(577, 27, 'firebaseTokenId', '12gh1hy3ghq'),
(578, 27, 'deviceType', 'iOS'),
(579, 27, 'profileImageURL', ''),
(580, 27, 'latitude', '12222222'),
(581, 27, 'longitude', '33333333'),
(592, 28, 'locale', ''),
(593, 28, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(594, 28, 'im_user_level', '0'),
(595, 28, 'facebookId', ''),
(596, 28, 'firebaseTokenId', 'fmm1Aaurz58:APA91bGxabhrktmcnvUpLvdeMZMYppqkr-1C5Xh8U5_hQy0qrBaYqZd7yTGdlheekgM1QrD60s5VD-KEF4QGc5KOMwV-jZaufZRVNOaAkW03Aowtt8K67l5kLFf7U7MRnmK5oAdsNATN'),
(597, 28, 'deviceType', 'android'),
(598, 28, 'profileImageURL', ''),
(599, 28, 'latitude', ''),
(600, 28, 'longitude', ''),
(601, 28, 'age', '50'),
(602, 28, 'gender', 'Male'),
(603, 28, 'nationality', 'test and indian'),
(604, 28, 'officialStatus', 'Others'),
(605, 28, 'profession', 'hezjsbzjwxjwnjdsnwkLqlslsksb ediw xkwbx dziw xiw xiw she skakwjfieid djebrjdwjska rkdkdjckrkd'),
(606, 28, 'location', '997a, Zirakpur-Panchkula-Kalka Highway,Sector 12-A,Panchkula, Haryana 134117,India'),
(608, 28, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1504941678.jpg'),
(607, 28, 'bio', 'hello everyone.Mu name Is ankit and I belongs to ambLa.he kz mnsbs janajJajaj we  JSNjajJa JnaJajNjaaba JBjjakNa KnaNjajJjJjJ KJNanJj'),
(609, 28, 'facebook', 'tester imark.fom'),
(610, 28, 'twitter', 'znssnwnznnwjNwn sksnwjznwkKa. sksnwnNwnananananana'),
(611, 28, 'instagram', ''),
(612, 28, 'phone', '8930030220'),
(613, 28, 'onlineStatus', 'false'),
(614, 29, 'nickname', 'a.d.love.as@gmail.com'),
(615, 29, 'first_name', 'Abhishek Sansarwal'),
(616, 29, 'last_name', ''),
(617, 29, 'description', ''),
(618, 29, 'rich_editing', 'true'),
(619, 29, 'comment_shortcuts', 'false'),
(620, 29, 'admin_color', 'fresh'),
(621, 29, 'use_ssl', '0'),
(622, 29, 'show_admin_bar_front', 'true'),
(623, 29, 'locale', ''),
(624, 29, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(625, 29, 'im_user_level', '0'),
(626, 29, 'facebookId', '1480663505360745'),
(627, 29, 'firebaseTokenId', 'eR0ScWKMN4I:APA91bGV3T1EVCCvUS07tN2Ak3yFv8gSiFbGo4QY38iVuUC8XHBnL14OOvkIeq7Cq-rxyEr8LuEzX_dGufqD7vNlSDULSjFsVx1O68-X3LpzK38wi4_0dHXXmy9cCxIirzlroVE1fo8F'),
(628, 29, 'deviceType', 'android'),
(629, 29, 'profileImageURL', 'https://graph.facebook.com/1480663505360745/picture?type=normal'),
(630, 29, 'latitude', '30.727026'),
(631, 29, 'longitude', '76.84668'),
(632, 29, 'onlineStatus', 'true'),
(637, 30, 'rich_editing', 'true'),
(638, 30, 'comment_shortcuts', 'false'),
(639, 30, 'admin_color', 'fresh'),
(640, 30, 'use_ssl', '0'),
(641, 30, 'show_admin_bar_front', 'true'),
(642, 30, 'locale', ''),
(643, 30, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(644, 30, 'im_user_level', '0'),
(2391, 30, 'age', '23'),
(645, 30, 'facebookId', '1799366096759585'),
(2575, 97, 'age', ''),
(2576, 97, 'gender', ''),
(2577, 97, 'nationality', ''),
(2578, 97, 'officialStatus', ''),
(647, 30, 'deviceType', 'android'),
(648, 30, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/10/1509173555.jpeg'),
(649, 30, 'latitude', '30.729277'),
(650, 30, 'longitude', '76.84417600000006'),
(651, 31, 'nickname', 'abh@gmail.com'),
(652, 31, 'first_name', 'abhishek'),
(653, 31, 'last_name', ''),
(654, 31, 'description', ''),
(655, 31, 'rich_editing', 'true'),
(656, 31, 'comment_shortcuts', 'false'),
(657, 31, 'admin_color', 'fresh'),
(658, 31, 'use_ssl', '0'),
(659, 31, 'show_admin_bar_front', 'true'),
(660, 31, 'locale', ''),
(661, 31, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(662, 31, 'im_user_level', '0'),
(663, 31, 'facebookId', ''),
(664, 31, 'firebaseTokenId', 'eznJOyVsAFo:APA91bHKKPpGfD3qRxBChcb62CU3aOeM0qS2dcvoB-PyjklYiWIjV4YoweZYuIndhL-CZkd8cahXd8oMX6pVL9axHik3l_7WdSyQjtWmNnzLB1QisdqZaGqYfSlLJvo_yn4SEMZze7Lq'),
(665, 31, 'deviceType', 'android'),
(666, 31, 'userImageUrl', ''),
(667, 31, 'latitude', ''),
(668, 31, 'longitude', ''),
(675, 32, 'admin_color', 'fresh'),
(676, 32, 'use_ssl', '0'),
(677, 32, 'show_admin_bar_front', 'true'),
(678, 32, 'locale', ''),
(679, 32, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(680, 32, 'im_user_level', '0'),
(681, 32, 'facebookId', ''),
(682, 32, 'firebaseTokenId', 'c2uGqrr4ezk:APA91bEnasPLCeTOERSq9e6EXjaTG64Jo7k7z7Cmj9nHjy1YrAhwht144SX3--zArtboCLBzi8p8V0YJ8mInFkMMKCATeq0FF8lYuj-jtKGJHIvUONDgHvo5aKYbagpovBBHRmxWV2WM'),
(683, 32, 'deviceType', 'iOS'),
(684, 32, 'userImageUrl', ''),
(685, 32, 'latitude', '52.5624249504'),
(686, 32, 'longitude', '-1.80214589462'),
(687, 33, 'nickname', 'onaseyeonabolu@gmail.com'),
(688, 33, 'first_name', 'Onaseye'),
(689, 33, 'last_name', ''),
(690, 33, 'description', ''),
(691, 33, 'rich_editing', 'true'),
(692, 33, 'comment_shortcuts', 'false'),
(693, 33, 'admin_color', 'fresh'),
(694, 33, 'use_ssl', '0'),
(695, 33, 'show_admin_bar_front', 'true'),
(696, 33, 'locale', ''),
(697, 33, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(698, 33, 'im_user_level', '0'),
(699, 33, 'facebookId', ''),
(700, 33, 'firebaseTokenId', 'fHvWNKYNUts:APA91bE_09cwUtkJRrnLTKc2o11sYP0t0thEh5PHTwIzTzXhx5q44_IcWeZWxIFWNJD2Qcykvh2SRlynyt1Y2QUzWq97l1o6pMBEF-rBWh7Y25Zr0JJet5pVtR6hnsObumYaI9OssDEg'),
(701, 33, 'deviceType', 'android'),
(702, 33, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1506000320.jpg'),
(703, 33, 'latitude', '51.394962'),
(704, 33, 'longitude', '-0.1901895'),
(1856, 25, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/10/1507028453.jpg'),
(804, 25, 'onlineTime', '1509188244'),
(705, 34, 'nickname', 'rishabh.arora@imarkinfotech.com'),
(706, 35, 'nickname', 'rishabh.arora@imarkinfotech.com'),
(707, 36, 'nickname', 'rishabh.arora@imarkinfotech.com'),
(708, 37, 'nickname', 'rishabh.arora@imarkinfotech.com'),
(709, 34, 'first_name', 'Rishabh Arora'),
(710, 35, 'first_name', 'Rishabh Arora'),
(711, 36, 'first_name', 'Rishabh Arora'),
(712, 37, 'first_name', 'Rishabh Arora'),
(713, 34, 'last_name', ''),
(714, 35, 'last_name', ''),
(715, 36, 'last_name', ''),
(716, 37, 'last_name', ''),
(717, 34, 'description', ''),
(718, 35, 'description', ''),
(719, 36, 'description', ''),
(720, 37, 'description', ''),
(721, 34, 'rich_editing', 'true'),
(722, 36, 'rich_editing', 'true'),
(723, 37, 'rich_editing', 'true'),
(724, 35, 'rich_editing', 'true'),
(725, 34, 'comment_shortcuts', 'false'),
(726, 37, 'comment_shortcuts', 'false'),
(727, 36, 'comment_shortcuts', 'false'),
(728, 35, 'comment_shortcuts', 'false'),
(729, 34, 'admin_color', 'fresh'),
(730, 37, 'admin_color', 'fresh'),
(731, 36, 'admin_color', 'fresh'),
(732, 35, 'admin_color', 'fresh'),
(733, 34, 'use_ssl', '0'),
(734, 37, 'use_ssl', '0'),
(735, 36, 'use_ssl', '0'),
(736, 35, 'use_ssl', '0'),
(737, 34, 'show_admin_bar_front', 'true'),
(738, 37, 'show_admin_bar_front', 'true'),
(739, 36, 'show_admin_bar_front', 'true'),
(740, 35, 'show_admin_bar_front', 'true'),
(741, 34, 'locale', ''),
(742, 37, 'locale', ''),
(743, 36, 'locale', ''),
(744, 35, 'locale', ''),
(745, 34, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(746, 37, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(747, 35, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(748, 36, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(749, 34, 'im_user_level', '0'),
(750, 37, 'im_user_level', '0'),
(751, 35, 'im_user_level', '0'),
(752, 36, 'im_user_level', '0'),
(753, 34, 'facebookId', ''),
(754, 35, 'facebookId', ''),
(2622, 102, 'userStatus', '1'),
(756, 36, 'facebookId', ''),
(757, 37, 'facebookId', ''),
(2621, 102, 'im_user_level', '0'),
(759, 34, 'deviceType', 'iOS'),
(762, 34, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1505451662.jpg'),
(763, 35, 'deviceType', 'iOS'),
(764, 36, 'deviceType', 'iOS'),
(765, 36, 'userImageUrl', ''),
(766, 35, 'userImageUrl', ''),
(767, 37, 'deviceType', 'iOS'),
(768, 34, 'latitude', '0'),
(769, 37, 'userImageUrl', ''),
(770, 36, 'latitude', '37.785834'),
(771, 35, 'latitude', '37.785834'),
(772, 34, 'longitude', '0'),
(773, 37, 'latitude', '37.785834'),
(774, 36, 'longitude', '-122.406417'),
(775, 35, 'longitude', '-122.406417'),
(776, 37, 'longitude', '-122.406417'),
(777, 34, 'onlineStatus', 'true'),
(778, 34, 'age', '23'),
(779, 34, 'gender', 'Male'),
(780, 34, 'nationality', 'Indian'),
(781, 34, 'officialStatus', 'refugee'),
(782, 34, 'profession', 'iOS'),
(783, 34, 'location', ''),
(784, 34, 'bio', 'abcde'),
(785, 21, 'onlineTime', '1506694302'),
(786, 21, 'facebook', 'Facebook.con'),
(787, 21, 'twitter', 'yo twittertt'),
(788, 21, 'instagram', 'yo instagram'),
(789, 21, 'phone', '720605632'),
(791, 1, 'onlineTime', '1508826234'),
(790, 28, 'onlineTime', '1505722527'),
(792, 33, 'onlineStatus', 'true'),
(793, 33, 'age', ''),
(794, 33, 'gender', 'Male'),
(795, 33, 'nationality', 'British'),
(796, 33, 'officialStatus', 'Others'),
(797, 33, 'profession', 'Business Development'),
(798, 33, 'location', ''),
(799, 33, 'bio', 'Hi, I am here to build a social enterprise.'),
(800, 33, 'facebook', 'sonacircleapp'),
(801, 33, 'twitter', 'sonacircleapp'),
(802, 33, 'instagram', 'sonacircleapp'),
(803, 33, 'phone', ''),
(2631, 102, 'postNotification', '1'),
(2632, 102, 'showPreview', '1'),
(2633, 102, 'quickBloxPaswd', 'D9FV08M4'),
(2634, 102, 'quickBloxID', '36429240'),
(1466, 0, 'userImageUrl', ''),
(1469, 64, 'last_name', ''),
(1470, 64, 'description', ''),
(1471, 64, 'rich_editing', 'true'),
(1472, 64, 'comment_shortcuts', 'false'),
(1473, 64, 'admin_color', 'fresh'),
(805, 1, 'pushNotification', '1'),
(806, 1, 'broadcastNotification', '0'),
(807, 1, 'postNotification', '0'),
(808, 1, 'showPreview', '1'),
(809, 33, 'onlineTime', '1505999057'),
(810, 38, 'nickname', 'archi.t@me.com'),
(811, 38, 'first_name', 'archi'),
(812, 38, 'last_name', ''),
(813, 38, 'description', ''),
(814, 38, 'rich_editing', 'true'),
(815, 38, 'comment_shortcuts', 'false'),
(816, 38, 'admin_color', 'fresh'),
(817, 38, 'use_ssl', '0'),
(818, 38, 'show_admin_bar_front', 'true'),
(819, 38, 'locale', ''),
(820, 38, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(821, 38, 'im_user_level', '0'),
(822, 38, 'facebookId', ''),
(823, 38, 'firebaseTokenId', 'c2uGqrr4ezk:APA91bEnasPLCeTOERSq9e6EXjaTG64Jo7k7z7Cmj9nHjy1YrAhwht144SX3--zArtboCLBzi8p8V0YJ8mInFkMMKCATeq0FF8lYuj-jtKGJHIvUONDgHvo5aKYbagpovBBHRmxWV2WM'),
(824, 38, 'deviceType', 'android'),
(825, 38, 'userImageUrl', ''),
(826, 38, 'latitude', ''),
(827, 38, 'longitude', ''),
(828, 38, 'pushNotification', '1'),
(829, 38, 'broadcastNotification', '1'),
(830, 38, 'postNotification', '1'),
(831, 38, 'showPreview', '1'),
(832, 1, 'im_user-settings', 'libraryContent=browse'),
(833, 1, 'im_user-settings-time', '1506078355'),
(834, 39, 'nickname', 'abhi@imark.com'),
(835, 39, 'first_name', 'abhishek'),
(836, 39, 'last_name', ''),
(837, 39, 'description', ''),
(838, 39, 'rich_editing', 'true'),
(839, 39, 'comment_shortcuts', 'false'),
(840, 39, 'admin_color', 'fresh'),
(841, 39, 'use_ssl', '0'),
(842, 39, 'show_admin_bar_front', 'true'),
(843, 39, 'locale', ''),
(844, 39, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(845, 39, 'im_user_level', '0'),
(846, 39, 'facebookId', ''),
(2620, 102, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(848, 39, 'deviceType', 'iOS'),
(849, 39, 'userImageUrl', ''),
(850, 39, 'latitude', '30.7269076343'),
(851, 39, 'longitude', '76.8463132506'),
(852, 39, 'pushNotification', '1'),
(853, 39, 'broadcastNotification', '1'),
(854, 39, 'postNotification', '1'),
(855, 39, 'showPreview', '1'),
(856, 39, 'quickBloxPaswd', NULL),
(857, 39, 'quickBloxID', NULL),
(858, 40, 'nickname', 'abhi@abhi.com'),
(859, 40, 'first_name', 'abhishek'),
(860, 40, 'last_name', ''),
(861, 40, 'description', ''),
(862, 40, 'rich_editing', 'true'),
(863, 40, 'comment_shortcuts', 'false'),
(864, 40, 'admin_color', 'fresh'),
(865, 40, 'use_ssl', '0'),
(866, 40, 'show_admin_bar_front', 'true'),
(867, 40, 'locale', ''),
(868, 40, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(869, 40, 'im_user_level', '0'),
(870, 40, 'facebookId', ''),
(2619, 102, 'locale', ''),
(872, 40, 'deviceType', 'iOS'),
(873, 40, 'userImageUrl', ''),
(874, 40, 'latitude', '30.7269681551'),
(875, 40, 'longitude', '76.8462013726'),
(876, 40, 'pushNotification', '1'),
(877, 40, 'broadcastNotification', '1'),
(878, 40, 'postNotification', '1'),
(879, 40, 'showPreview', '1'),
(880, 40, 'quickBloxPaswd', NULL),
(881, 40, 'quickBloxID', NULL),
(882, 41, 'nickname', 'r@g.com'),
(883, 41, 'first_name', 'Rishabh'),
(884, 41, 'last_name', ''),
(885, 41, 'description', ''),
(886, 41, 'rich_editing', 'true'),
(887, 41, 'comment_shortcuts', 'false'),
(888, 41, 'admin_color', 'fresh'),
(889, 41, 'use_ssl', '0'),
(890, 41, 'show_admin_bar_front', 'true'),
(891, 41, 'locale', ''),
(892, 41, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(893, 41, 'im_user_level', '0'),
(894, 41, 'facebookId', ''),
(896, 41, 'deviceType', 'iOS'),
(897, 41, 'userImageUrl', ''),
(898, 41, 'latitude', '30.7269023847'),
(899, 41, 'longitude', '76.8462192273'),
(900, 41, 'pushNotification', '1'),
(901, 41, 'broadcastNotification', '1'),
(902, 41, 'postNotification', '1'),
(903, 41, 'showPreview', '1'),
(904, 41, 'quickBloxPaswd', NULL),
(905, 41, 'quickBloxID', NULL),
(906, 42, 'nickname', 'abc@g.com'),
(907, 42, 'first_name', 'abc'),
(908, 42, 'last_name', ''),
(909, 42, 'description', ''),
(910, 42, 'rich_editing', 'true'),
(911, 42, 'comment_shortcuts', 'false'),
(912, 42, 'admin_color', 'fresh'),
(913, 42, 'use_ssl', '0'),
(914, 42, 'show_admin_bar_front', 'true'),
(915, 42, 'locale', ''),
(916, 42, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(917, 42, 'im_user_level', '0'),
(918, 42, 'facebookId', ''),
(919, 42, 'firebaseTokenId', 'fzDOW2xvmOA:APA91bF_CDnqcQ75LRJxBNVNw4RJnq1ndhI5rAIfMBkzqpjniXiWXGXID5K9oeVM_liF-J0z0cfzmfSyt5yUSPSjnQH0252QPOdYFdWDOO4HqBKcRgY8qbDzO_XUUDNoixCyE2_zFzye'),
(920, 42, 'deviceType', 'iOS'),
(921, 42, 'userImageUrl', ''),
(922, 42, 'latitude', '30.7268949998'),
(923, 42, 'longitude', '76.8462530711'),
(924, 42, 'pushNotification', '1'),
(925, 42, 'broadcastNotification', '1'),
(926, 42, 'postNotification', '1'),
(927, 42, 'showPreview', '1'),
(928, 42, 'quickBloxPaswd', NULL),
(929, 42, 'quickBloxID', NULL),
(930, 43, 'nickname', 'abcd@g.com'),
(931, 43, 'first_name', 'abcd'),
(932, 43, 'last_name', ''),
(933, 43, 'description', ''),
(934, 43, 'rich_editing', 'true'),
(935, 43, 'comment_shortcuts', 'false'),
(936, 43, 'admin_color', 'fresh'),
(937, 43, 'use_ssl', '0'),
(938, 43, 'show_admin_bar_front', 'true'),
(939, 43, 'locale', ''),
(940, 43, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(941, 43, 'im_user_level', '0'),
(942, 43, 'facebookId', ''),
(2618, 102, 'show_admin_bar_front', 'true'),
(944, 43, 'deviceType', 'iOS'),
(945, 43, 'userImageUrl', ''),
(946, 43, 'latitude', '30.7269360131'),
(947, 43, 'longitude', '76.8462471153'),
(948, 43, 'pushNotification', '1'),
(949, 43, 'broadcastNotification', '1'),
(950, 43, 'postNotification', '1'),
(951, 43, 'showPreview', '1'),
(952, 43, 'quickBloxPaswd', NULL),
(953, 43, 'quickBloxID', NULL),
(954, 44, 'nickname', 'abc1@g.com'),
(955, 44, 'first_name', 'abc1'),
(956, 44, 'last_name', ''),
(957, 44, 'description', ''),
(958, 44, 'rich_editing', 'true'),
(959, 44, 'comment_shortcuts', 'false'),
(960, 44, 'admin_color', 'fresh'),
(961, 44, 'use_ssl', '0'),
(962, 44, 'show_admin_bar_front', 'true'),
(963, 44, 'locale', ''),
(964, 44, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(965, 44, 'im_user_level', '0'),
(966, 44, 'facebookId', ''),
(968, 44, 'deviceType', 'android'),
(969, 44, 'userImageUrl', ''),
(970, 44, 'latitude', ''),
(971, 44, 'longitude', ''),
(972, 44, 'pushNotification', '1'),
(973, 44, 'broadcastNotification', '1'),
(974, 44, 'postNotification', '1'),
(975, 44, 'showPreview', '1'),
(976, 44, 'quickBloxPaswd', ''),
(977, 44, 'quickBloxID', ''),
(978, 45, 'nickname', 'abc2@g.com'),
(979, 45, 'first_name', 'abc2'),
(980, 45, 'last_name', ''),
(981, 45, 'description', ''),
(982, 45, 'rich_editing', 'true'),
(983, 45, 'comment_shortcuts', 'false'),
(984, 45, 'admin_color', 'fresh'),
(985, 45, 'use_ssl', '0'),
(986, 45, 'show_admin_bar_front', 'true'),
(987, 45, 'locale', ''),
(988, 45, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(989, 45, 'im_user_level', '0'),
(990, 45, 'facebookId', ''),
(992, 45, 'deviceType', 'android'),
(993, 45, 'userImageUrl', ''),
(994, 45, 'latitude', ''),
(995, 45, 'longitude', ''),
(996, 45, 'pushNotification', '1'),
(997, 45, 'broadcastNotification', '1'),
(998, 45, 'postNotification', '1'),
(999, 45, 'showPreview', '1'),
(1000, 45, 'quickBloxPaswd', NULL),
(1001, 45, 'quickBloxID', NULL),
(1002, 46, 'nickname', 'abc3@g.com'),
(1003, 46, 'first_name', 'abc3'),
(1004, 46, 'last_name', ''),
(1005, 46, 'description', ''),
(1006, 46, 'rich_editing', 'true'),
(1007, 46, 'comment_shortcuts', 'false'),
(1008, 46, 'admin_color', 'fresh'),
(1009, 46, 'use_ssl', '0'),
(1010, 46, 'show_admin_bar_front', 'true'),
(1011, 46, 'locale', ''),
(1012, 46, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1013, 46, 'im_user_level', '0'),
(1014, 46, 'facebookId', ''),
(1016, 46, 'deviceType', 'android'),
(1017, 46, 'userImageUrl', ''),
(1018, 46, 'latitude', ''),
(1019, 46, 'longitude', ''),
(1020, 46, 'pushNotification', '1'),
(1021, 46, 'broadcastNotification', '1'),
(1022, 46, 'postNotification', '1'),
(1023, 46, 'showPreview', '1'),
(1024, 46, 'quickBloxPaswd', NULL),
(1025, 46, 'quickBloxID', NULL),
(1026, 47, 'nickname', 'abc4@g.com'),
(1027, 47, 'first_name', 'abc3'),
(1028, 47, 'last_name', ''),
(1029, 47, 'description', ''),
(1030, 47, 'rich_editing', 'true'),
(1031, 47, 'comment_shortcuts', 'false'),
(1032, 47, 'admin_color', 'fresh'),
(1033, 47, 'use_ssl', '0'),
(1034, 47, 'show_admin_bar_front', 'true'),
(1035, 47, 'locale', ''),
(1036, 47, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1037, 47, 'im_user_level', '0'),
(1038, 47, 'facebookId', ''),
(1040, 47, 'deviceType', 'android'),
(1041, 47, 'userImageUrl', ''),
(1042, 47, 'latitude', ''),
(1043, 47, 'longitude', ''),
(1044, 47, 'pushNotification', '1'),
(1045, 47, 'broadcastNotification', '1'),
(1046, 47, 'postNotification', '1'),
(1047, 47, 'showPreview', '1'),
(1048, 47, 'quickBloxPaswd', NULL),
(1049, 47, 'quickBloxID', NULL),
(1050, 2, 'quickBloxID', '12345'),
(1051, 2, 'quickBloxPaswd', 'avbchd'),
(1052, 48, 'nickname', 'swaran@gmail.com'),
(1053, 48, 'first_name', 'swaran'),
(1054, 48, 'last_name', ''),
(1055, 48, 'description', ''),
(1056, 48, 'rich_editing', 'true'),
(1057, 48, 'comment_shortcuts', 'false'),
(1058, 48, 'admin_color', 'fresh'),
(1059, 48, 'use_ssl', '0'),
(1060, 48, 'show_admin_bar_front', 'true'),
(1061, 48, 'locale', ''),
(1062, 48, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1063, 48, 'im_user_level', '0'),
(1064, 48, 'facebookId', ''),
(1066, 48, 'deviceType', ''),
(1067, 48, 'userImageUrl', ''),
(1068, 48, 'latitude', ''),
(1069, 48, 'longitude', ''),
(1070, 48, 'pushNotification', '1'),
(1071, 48, 'broadcastNotification', '1'),
(1072, 48, 'postNotification', '1'),
(1073, 48, 'showPreview', '1'),
(1074, 48, 'quickBloxPaswd', ''),
(1075, 48, 'quickBloxID', ''),
(1076, 49, 'nickname', 'swarantest@gmail.com'),
(1077, 49, 'first_name', 'swaran'),
(1078, 49, 'last_name', ''),
(1079, 49, 'description', ''),
(1080, 49, 'rich_editing', 'true'),
(1081, 49, 'comment_shortcuts', 'false'),
(1082, 49, 'admin_color', 'fresh'),
(1083, 49, 'use_ssl', '0'),
(1084, 49, 'show_admin_bar_front', 'true'),
(1085, 49, 'locale', ''),
(1086, 49, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1087, 49, 'im_user_level', '0'),
(1088, 49, 'facebookId', ''),
(2614, 102, 'rich_editing', 'true'),
(1090, 49, 'deviceType', ''),
(1091, 49, 'userImageUrl', ''),
(1092, 49, 'latitude', ''),
(1093, 49, 'longitude', ''),
(1094, 49, 'pushNotification', '1'),
(1095, 49, 'broadcastNotification', '1'),
(1096, 49, 'postNotification', '1'),
(1097, 49, 'showPreview', '1'),
(1098, 49, 'quickBloxPaswd', ''),
(1099, 49, 'quickBloxID', ''),
(1100, 50, 'nickname', 'swaran.imark@gmail.com'),
(1101, 50, 'first_name', 'swaran'),
(1102, 50, 'last_name', ''),
(1103, 50, 'description', ''),
(1104, 50, 'rich_editing', 'true'),
(1105, 50, 'comment_shortcuts', 'false'),
(1106, 50, 'admin_color', 'fresh'),
(1107, 50, 'use_ssl', '0'),
(1108, 50, 'show_admin_bar_front', 'true'),
(1109, 50, 'locale', ''),
(1110, 50, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1111, 50, 'im_user_level', '0'),
(1112, 50, 'facebookId', ''),
(2613, 102, 'description', ''),
(1114, 50, 'deviceType', 'android'),
(1115, 50, 'userImageUrl', ''),
(1116, 50, 'latitude', '31.10'),
(1117, 50, 'longitude', '77.17'),
(1118, 50, 'pushNotification', '1'),
(1119, 50, 'broadcastNotification', '1'),
(1120, 50, 'postNotification', '1'),
(1121, 50, 'showPreview', '1'),
(1122, 50, 'quickBloxPaswd', 'test'),
(1123, 50, 'quickBloxID', 'test'),
(1124, 51, 'nickname', 'swaran.fb@gmail.com'),
(1125, 51, 'first_name', 'swaran'),
(1126, 51, 'last_name', ''),
(1127, 51, 'description', ''),
(1128, 51, 'rich_editing', 'true'),
(1129, 51, 'comment_shortcuts', 'false'),
(1130, 51, 'admin_color', 'fresh'),
(1131, 51, 'use_ssl', '0'),
(1132, 51, 'show_admin_bar_front', 'true'),
(1133, 51, 'locale', ''),
(1134, 51, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1135, 51, 'im_user_level', '0'),
(1136, 51, 'facebookId', '3423432343'),
(2612, 102, 'last_name', ''),
(1138, 51, 'deviceType', 'android'),
(1139, 51, 'userImageUrl', ''),
(1140, 51, 'latitude', '31.10'),
(1141, 51, 'longitude', '77.17'),
(1142, 51, 'pushNotification', '1'),
(1143, 51, 'broadcastNotification', '1'),
(1144, 51, 'postNotification', '1'),
(1145, 51, 'showPreview', '1'),
(1146, 51, 'quickBloxPaswd', 'test12'),
(1147, 51, 'quickBloxID', 'test12'),
(1148, 52, 'nickname', 'abc5@g.com'),
(1149, 52, 'first_name', 'abc5'),
(1150, 52, 'last_name', ''),
(1151, 52, 'description', ''),
(1152, 52, 'rich_editing', 'true'),
(1153, 52, 'comment_shortcuts', 'false'),
(1154, 52, 'admin_color', 'fresh'),
(1155, 52, 'use_ssl', '0'),
(1156, 52, 'show_admin_bar_front', 'true'),
(1157, 52, 'locale', ''),
(1158, 52, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1159, 52, 'im_user_level', '0'),
(1160, 52, 'facebookId', ''),
(2611, 102, 'first_name', 'asd'),
(1162, 52, 'deviceType', 'android'),
(1163, 52, 'userImageUrl', ''),
(1164, 52, 'latitude', ''),
(1165, 52, 'longitude', ''),
(1166, 52, 'pushNotification', '1'),
(1167, 52, 'broadcastNotification', '1'),
(1168, 52, 'postNotification', '1'),
(1169, 52, 'showPreview', '1'),
(1170, 52, 'quickBloxPaswd', NULL),
(1171, 52, 'quickBloxID', NULL),
(1172, 53, 'nickname', 'abc6@g.com'),
(1173, 53, 'first_name', 'abc6'),
(1174, 53, 'last_name', ''),
(1175, 53, 'description', ''),
(1176, 53, 'rich_editing', 'true'),
(1177, 53, 'comment_shortcuts', 'false'),
(1178, 53, 'admin_color', 'fresh'),
(1179, 53, 'use_ssl', '0'),
(1180, 53, 'show_admin_bar_front', 'true'),
(1181, 53, 'locale', ''),
(1182, 53, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1183, 53, 'im_user_level', '0'),
(1184, 53, 'facebookId', ''),
(1186, 53, 'deviceType', 'android'),
(1187, 53, 'userImageUrl', ''),
(1188, 53, 'latitude', ''),
(1189, 53, 'longitude', ''),
(1190, 53, 'pushNotification', '1'),
(1191, 53, 'broadcastNotification', '1'),
(1192, 53, 'postNotification', '1'),
(1193, 53, 'showPreview', '1'),
(1194, 53, 'quickBloxPaswd', NULL),
(1195, 53, 'quickBloxID', NULL),
(1196, 54, 'nickname', 'abc7@g.com'),
(1197, 54, 'first_name', 'abc6'),
(1198, 54, 'last_name', ''),
(1199, 54, 'description', ''),
(1200, 54, 'rich_editing', 'true'),
(1201, 54, 'comment_shortcuts', 'false'),
(1202, 54, 'admin_color', 'fresh'),
(1203, 54, 'use_ssl', '0'),
(1204, 54, 'show_admin_bar_front', 'true'),
(1205, 54, 'locale', ''),
(1206, 54, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1207, 54, 'im_user_level', '0'),
(1208, 54, 'facebookId', ''),
(2610, 102, 'nickname', 'asd@gmail.com'),
(1210, 54, 'deviceType', 'android'),
(1211, 54, 'userImageUrl', ''),
(1212, 54, 'latitude', ''),
(1213, 54, 'longitude', ''),
(1214, 54, 'pushNotification', '1'),
(1215, 54, 'broadcastNotification', '1'),
(1216, 54, 'postNotification', '1'),
(1217, 54, 'showPreview', '1'),
(1218, 54, 'quickBloxPaswd', NULL),
(1219, 54, 'quickBloxID', NULL),
(1220, 55, 'nickname', 'abc8@g.com'),
(1221, 55, 'first_name', 'abc6'),
(1222, 55, 'last_name', ''),
(1223, 55, 'description', ''),
(1224, 55, 'rich_editing', 'true'),
(1225, 55, 'comment_shortcuts', 'false'),
(1226, 55, 'admin_color', 'fresh'),
(1227, 55, 'use_ssl', '0'),
(1228, 55, 'show_admin_bar_front', 'true'),
(1229, 55, 'locale', ''),
(1230, 55, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1231, 55, 'im_user_level', '0'),
(1232, 55, 'facebookId', ''),
(2615, 102, 'comment_shortcuts', 'false'),
(1234, 55, 'deviceType', 'android'),
(1235, 55, 'userImageUrl', ''),
(1236, 55, 'latitude', ''),
(1237, 55, 'longitude', ''),
(1238, 55, 'pushNotification', '1'),
(1239, 55, 'broadcastNotification', '1'),
(1240, 55, 'postNotification', '1'),
(1241, 55, 'showPreview', '1'),
(1242, 55, 'quickBloxPaswd', NULL),
(1243, 55, 'quickBloxID', NULL),
(1244, 56, 'nickname', 'swaran.imawerk@gmail.com'),
(1245, 56, 'first_name', 'swaran'),
(1246, 56, 'last_name', ''),
(1247, 56, 'description', ''),
(1248, 56, 'rich_editing', 'true'),
(1249, 56, 'comment_shortcuts', 'false'),
(1250, 56, 'admin_color', 'fresh'),
(1251, 56, 'use_ssl', '0'),
(1252, 56, 'show_admin_bar_front', 'true'),
(1253, 56, 'locale', ''),
(1254, 56, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1255, 56, 'im_user_level', '0'),
(1256, 56, 'facebookId', ''),
(2602, 12, 'showPreview', '1'),
(1258, 56, 'deviceType', 'android'),
(1259, 56, 'userImageUrl', ''),
(1260, 56, 'latitude', '31.10'),
(1261, 56, 'longitude', '77.17'),
(1262, 56, 'pushNotification', '1'),
(1263, 56, 'broadcastNotification', '1'),
(1264, 56, 'postNotification', '1'),
(1265, 56, 'showPreview', '1'),
(1266, 56, 'quickBloxPaswd', ''),
(1267, 56, 'quickBloxID', ''),
(1268, 57, 'nickname', 'swaran.imaaswerk@gmail.com'),
(1269, 57, 'first_name', ''),
(1270, 57, 'last_name', ''),
(1271, 57, 'description', ''),
(1272, 57, 'rich_editing', 'true'),
(1273, 57, 'comment_shortcuts', 'false'),
(1274, 57, 'admin_color', 'fresh'),
(1275, 57, 'use_ssl', '0'),
(1276, 57, 'show_admin_bar_front', 'true'),
(1277, 57, 'locale', ''),
(1278, 57, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1279, 57, 'im_user_level', '0'),
(1280, 57, 'facebookId', ''),
(2601, 12, 'postNotification', '1'),
(1282, 57, 'deviceType', 'android'),
(1283, 57, 'userImageUrl', ''),
(1284, 57, 'latitude', '31.10'),
(1285, 57, 'longitude', '77.17'),
(1286, 57, 'pushNotification', '1'),
(1287, 57, 'broadcastNotification', '1'),
(1288, 57, 'postNotification', '1'),
(1289, 57, 'showPreview', '1'),
(1290, 57, 'quickBloxPaswd', ''),
(1291, 57, 'quickBloxID', ''),
(1292, 58, 'nickname', 'abc9@g.com'),
(1293, 58, 'first_name', 'abc6'),
(1294, 58, 'last_name', ''),
(1295, 58, 'description', ''),
(1296, 58, 'rich_editing', 'true'),
(1297, 58, 'comment_shortcuts', 'false'),
(1298, 58, 'admin_color', 'fresh'),
(1299, 58, 'use_ssl', '0');
INSERT INTO `im_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1300, 58, 'show_admin_bar_front', 'true'),
(1301, 58, 'locale', ''),
(1302, 58, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1303, 58, 'im_user_level', '0'),
(1304, 58, 'facebookId', ''),
(1306, 58, 'deviceType', 'android'),
(1307, 58, 'userImageUrl', ''),
(1308, 58, 'latitude', ''),
(1309, 58, 'longitude', ''),
(1310, 58, 'pushNotification', '1'),
(1311, 58, 'broadcastNotification', '1'),
(1312, 58, 'postNotification', '1'),
(1313, 58, 'showPreview', '1'),
(1314, 58, 'quickBloxPaswd', ''),
(1315, 58, 'quickBloxID', ''),
(1316, 59, 'nickname', 'Abhi@mail.com'),
(1317, 59, 'first_name', 'Abhishek'),
(1318, 59, 'last_name', ''),
(1319, 59, 'description', ''),
(1320, 59, 'rich_editing', 'true'),
(1321, 59, 'comment_shortcuts', 'false'),
(1322, 59, 'admin_color', 'fresh'),
(1323, 59, 'use_ssl', '0'),
(1324, 59, 'show_admin_bar_front', 'true'),
(1325, 59, 'locale', ''),
(1326, 59, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1327, 59, 'im_user_level', '0'),
(1328, 59, 'facebookId', ''),
(1329, 59, 'firebaseTokenId', 'fUagS2k88cM:APA91bGJz-mrhJJtOP73dqEUHLNgAmHYzRcqry-H84mp6wowqlEyQr3sbh759aYwL5gvRc9b2vVRKWUJ9iM625L9viuqTUozfpY3RC3r0c37hN3HkHgSCOLw3EFtftNzWqP5B7uvuyNk'),
(1330, 59, 'deviceType', 'android'),
(1331, 59, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1506161051.jpg'),
(1332, 59, 'latitude', '30.727066'),
(1333, 59, 'longitude', '76.846634'),
(1334, 59, 'pushNotification', '1'),
(1335, 59, 'broadcastNotification', '1'),
(1336, 59, 'postNotification', '1'),
(1337, 59, 'showPreview', '1'),
(1338, 59, 'quickBloxPaswd', ''),
(1339, 59, 'quickBloxID', ''),
(1340, 59, 'onlineStatus', 'false'),
(1341, 59, 'age', '509779'),
(1342, 59, 'gender', 'Male'),
(1343, 59, 'nationality', 'team'),
(1344, 59, 'officialStatus', 'Refugee'),
(1345, 59, 'profession', 'okkkkk. team'),
(1346, 59, 'location', '54960 Taipalsaari,Finland'),
(1347, 59, 'bio', 'testing department'),
(1353, 60, 'nickname', 'ankit.chhabra@imarkinfotech.com'),
(1354, 60, 'first_name', 'Ankit Chhabra'),
(1355, 60, 'last_name', ''),
(1356, 60, 'description', ''),
(1357, 60, 'rich_editing', 'true'),
(1348, 59, 'facebook', 'www.facebook.com'),
(1349, 59, 'twitter', ''),
(1350, 59, 'instagram', ''),
(1351, 59, 'phone', ''),
(1352, 59, 'onlineTime', '1506314821'),
(1358, 60, 'comment_shortcuts', 'false'),
(1359, 60, 'admin_color', 'fresh'),
(1360, 60, 'use_ssl', '0'),
(1361, 60, 'show_admin_bar_front', 'true'),
(1362, 60, 'locale', ''),
(1363, 60, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1364, 60, 'im_user_level', '0'),
(1365, 60, 'facebookId', ''),
(1366, 60, 'firebaseTokenId', 'dl7Sm6DMiak:APA91bHr2lQf6DzlU2JfhrJWKBKB0VKoMz-Nr_SMiHRBYMpvmk_KUG6N_VKOBvt2wVn1paF2o_DaUJc9anS60BVkSOHkGv7vGl7Dg9A92bD51LbLafMzCBBBht-5UVBMiAXS1IkHjzjF'),
(1367, 60, 'deviceType', 'android'),
(1368, 60, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1506667395.jpg'),
(1369, 60, 'latitude', '30.727055'),
(1370, 60, 'longitude', '76.84664'),
(1371, 60, 'pushNotification', '1'),
(1372, 60, 'broadcastNotification', '1'),
(1373, 60, 'postNotification', '0'),
(1374, 60, 'showPreview', '1'),
(1375, 60, 'quickBloxPaswd', '123456789'),
(1376, 60, 'quickBloxID', '33566802'),
(1377, 60, 'onlineStatus', 'true'),
(1378, 60, 'onlineTime', '1507188345'),
(1379, 1, 'quickBloxPaswd', '123456789'),
(1380, 1, 'quickBloxID', '33012173'),
(1381, 21, 'pushNotification', '1'),
(1382, 21, 'broadcastNotification', '1'),
(1383, 21, 'postNotification', '1'),
(1384, 21, 'showPreview', '1'),
(1385, 61, 'nickname', 'priya@sharma.com'),
(1386, 61, 'first_name', 'priya'),
(1387, 61, 'last_name', ''),
(1388, 61, 'description', ''),
(1389, 61, 'rich_editing', 'true'),
(1390, 61, 'comment_shortcuts', 'false'),
(1391, 61, 'admin_color', 'fresh'),
(1392, 61, 'use_ssl', '0'),
(1393, 61, 'show_admin_bar_front', 'true'),
(1394, 61, 'locale', ''),
(1395, 61, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1396, 61, 'im_user_level', '0'),
(1397, 61, 'facebookId', ''),
(1398, 61, 'firebaseTokenId', 'fEQ52a2XLlE:APA91bEBlCVItdEnyGm2o_c4NapL-wRz5yp5-_cYnQEzOv8zrN4Vo-roiW__x1bpx_VERKDbscTXpVu3hsAChjbNpNtNidzlvaGF2AcFPXLu1beBnunHyEnHb9BBHPH7nt64zSNfhM2Z'),
(1399, 61, 'deviceType', 'android'),
(1400, 61, 'userImageUrl', ''),
(1401, 61, 'latitude', '30.727068'),
(1402, 61, 'longitude', '76.84666'),
(1403, 61, 'pushNotification', '1'),
(1404, 61, 'broadcastNotification', '1'),
(1405, 61, 'postNotification', '1'),
(1406, 61, 'showPreview', '1'),
(1407, 62, 'nickname', 'priya1@sharma.com'),
(1408, 62, 'first_name', 'priya'),
(1409, 62, 'last_name', ''),
(1410, 62, 'description', ''),
(1411, 62, 'rich_editing', 'true'),
(1412, 62, 'comment_shortcuts', 'false'),
(1413, 62, 'admin_color', 'fresh'),
(1414, 62, 'use_ssl', '0'),
(1415, 62, 'show_admin_bar_front', 'true'),
(1416, 62, 'locale', ''),
(1417, 62, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1418, 62, 'im_user_level', '0'),
(1419, 62, 'facebookId', ''),
(1420, 62, 'firebaseTokenId', 'fEQ52a2XLlE:APA91bEBlCVItdEnyGm2o_c4NapL-wRz5yp5-_cYnQEzOv8zrN4Vo-roiW__x1bpx_VERKDbscTXpVu3hsAChjbNpNtNidzlvaGF2AcFPXLu1beBnunHyEnHb9BBHPH7nt64zSNfhM2Z'),
(1421, 62, 'deviceType', 'android'),
(1422, 62, 'userImageUrl', ''),
(1423, 62, 'latitude', '30.727068'),
(1424, 62, 'longitude', '76.84666'),
(1425, 62, 'pushNotification', '1'),
(1426, 62, 'broadcastNotification', '1'),
(1427, 62, 'postNotification', '1'),
(1428, 62, 'showPreview', '1'),
(1429, 62, 'onlineStatus', 'false'),
(1430, 62, 'onlineTime', '1506337110'),
(1431, 63, 'nickname', 'sakshi@thakur.com'),
(1432, 63, 'first_name', 'sakshi'),
(1433, 63, 'last_name', ''),
(1434, 63, 'description', ''),
(1435, 63, 'rich_editing', 'true'),
(1436, 63, 'comment_shortcuts', 'false'),
(1437, 63, 'admin_color', 'fresh'),
(1438, 63, 'use_ssl', '0'),
(1439, 63, 'show_admin_bar_front', 'true'),
(1440, 63, 'locale', ''),
(1441, 63, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1442, 63, 'im_user_level', '0'),
(1443, 63, 'facebookId', ''),
(1445, 63, 'deviceType', 'android'),
(1446, 63, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/11/1509533051.jpeg'),
(1447, 63, 'latitude', '30.727024'),
(1448, 63, 'longitude', '76.84666'),
(1449, 63, 'pushNotification', '0'),
(1450, 63, 'broadcastNotification', '1'),
(1451, 63, 'postNotification', '0'),
(1452, 63, 'showPreview', '0'),
(1453, 63, 'quickBloxPaswd', '123456789'),
(1454, 63, 'quickBloxID', '33575523'),
(1455, 63, 'onlineStatus', 'false'),
(1456, 63, 'onlineTime', '1509717223'),
(1457, 60, 'age', ''),
(1458, 60, 'gender', ''),
(1459, 60, 'nationality', ''),
(1460, 60, 'officialStatus', ''),
(1461, 60, 'profession', ''),
(1462, 60, 'location', ''),
(1463, 60, 'bio', 'fuzxig gi ig gi ig gi ig ig ig gi ig iig'),
(1689, 63, 'bio', ''),
(1464, 11, 'onlineTime', '1506596436'),
(1465, 0, 'userImageUrl', ''),
(1754, 75, 'nickname', 'farhanwali98@gmail.com'),
(1474, 64, 'use_ssl', '0'),
(1475, 64, 'show_admin_bar_front', 'true'),
(1476, 64, 'locale', ''),
(1477, 64, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1478, 64, 'im_user_level', '0'),
(1479, 64, 'facebookId', NULL),
(1480, 64, 'firebaseTokenId', '12gh1hy3ghq'),
(1481, 64, 'deviceType', 'Android'),
(1482, 64, 'userImageUrl', NULL),
(1483, 64, 'latitude', ''),
(1484, 64, 'longitude', ''),
(1485, 64, 'pushNotification', '1'),
(1486, 64, 'broadcastNotification', '1'),
(1487, 64, 'postNotification', '1'),
(1488, 64, 'showPreview', '1'),
(1489, 25, '_latitude', 'field_59c4f175776c6'),
(1490, 25, '_longitude', 'field_59c4f17b776c7'),
(2593, 25, 'firebaseTokenId', 'cH2buUIY4k0:APA91bF2ChyZUJ4iRdxE4oEMhK9pwCIsIIAdWAxrLdLYJtmIUQwg-xrKg4Gk0suouW3jewzQGnHEYNXS6BxDfuzy9dv3unPCHRUjxhI5Vp96GsOVEaN5Qjv2jDmeAtnHnXiDOtxDhcaD'),
(1491, 14, '_latitude', 'field_59c4f175776c6'),
(1492, 14, '_longitude', 'field_59c4f17b776c7'),
(1493, 0, 'userImageUrl', ''),
(1494, 65, 'nickname', 'test@g.com'),
(1495, 65, 'first_name', 'test'),
(1496, 65, 'last_name', ''),
(1497, 65, 'description', ''),
(1498, 65, 'rich_editing', 'true'),
(1499, 65, 'comment_shortcuts', 'false'),
(1500, 65, 'admin_color', 'fresh'),
(1501, 65, 'use_ssl', '0'),
(1502, 65, 'show_admin_bar_front', 'true'),
(1503, 65, 'locale', ''),
(1504, 65, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1505, 65, 'im_user_level', '0'),
(1506, 65, 'facebookId', ''),
(2600, 12, 'broadcastNotification', '0'),
(1508, 65, 'deviceType', 'android'),
(1509, 65, 'userImageUrl', ''),
(1510, 65, 'latitude', ''),
(1511, 65, 'longitude', ''),
(1512, 65, 'pushNotification', '1'),
(1513, 65, 'broadcastNotification', '1'),
(1514, 65, 'postNotification', '1'),
(1515, 65, 'showPreview', '1'),
(1516, 0, 'userImageUrl', ''),
(1517, 0, 'userImageUrl', ''),
(1518, 66, 'nickname', 'Azhar.ali2@imarkinfotech.com'),
(1519, 66, 'first_name', 'Azhar'),
(1520, 66, 'last_name', ''),
(1521, 66, 'description', ''),
(1522, 66, 'rich_editing', 'true'),
(1523, 66, 'comment_shortcuts', 'false'),
(1524, 66, 'admin_color', 'fresh'),
(1525, 66, 'use_ssl', '0'),
(1526, 66, 'show_admin_bar_front', 'true'),
(1527, 66, 'locale', ''),
(1528, 66, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1529, 66, 'im_user_level', '0'),
(1530, 66, 'facebookId', NULL),
(1531, 66, 'firebaseTokenId', '12gh1hy3ghq'),
(1532, 66, 'deviceType', 'Android'),
(1533, 66, 'userImageUrl', NULL),
(1534, 66, 'latitude', ''),
(1535, 66, 'longitude', ''),
(1536, 66, 'pushNotification', '1'),
(1537, 66, 'broadcastNotification', '1'),
(1538, 66, 'postNotification', '1'),
(1539, 66, 'showPreview', '1'),
(1540, 67, 'nickname', 'tes1t@g.com'),
(1541, 67, 'first_name', 'test'),
(1542, 67, 'last_name', ''),
(1543, 67, 'description', ''),
(1544, 67, 'rich_editing', 'true'),
(1545, 67, 'comment_shortcuts', 'false'),
(1546, 67, 'admin_color', 'fresh'),
(1547, 67, 'use_ssl', '0'),
(1548, 67, 'show_admin_bar_front', 'true'),
(1549, 67, 'locale', ''),
(1550, 67, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1551, 67, 'im_user_level', '0'),
(1552, 67, 'facebookId', ''),
(1554, 67, 'deviceType', 'android'),
(1555, 67, 'userImageUrl', ''),
(1556, 67, 'latitude', ''),
(1557, 67, 'longitude', ''),
(1558, 67, 'pushNotification', '1'),
(1559, 67, 'broadcastNotification', '1'),
(1560, 67, 'postNotification', '1'),
(1561, 67, 'showPreview', '1'),
(1562, 0, 'userImageUrl', ''),
(1563, 68, 'nickname', 'test2@g.com'),
(1564, 68, 'first_name', 'test'),
(1565, 68, 'last_name', ''),
(1566, 68, 'description', ''),
(1567, 68, 'rich_editing', 'true'),
(1568, 68, 'comment_shortcuts', 'false'),
(1569, 68, 'admin_color', 'fresh'),
(1570, 68, 'use_ssl', '0'),
(1571, 68, 'show_admin_bar_front', 'true'),
(1572, 68, 'locale', ''),
(1573, 68, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1574, 68, 'im_user_level', '0'),
(1575, 68, 'facebookId', ''),
(1576, 68, 'firebaseTokenId', 'dvS6RqW2gx8:APA91bGJH_elijf2P53kaPJhehPlKMrwXCfhi-TgKzhDg5rBNe_3Jx92PsNSpNRndpxJfE1R7kWws-mObyPqVQSFHcPHerQnry-ZHDoedogvenzVLAxaULGoCfn363Umg4St_-FN9UTf'),
(1577, 68, 'deviceType', 'android'),
(1578, 68, 'userImageUrl', ''),
(1579, 68, 'latitude', '30.332247'),
(1580, 68, 'longitude', '76.861824'),
(1581, 68, 'pushNotification', '1'),
(1582, 68, 'broadcastNotification', '1'),
(1583, 68, 'postNotification', '1'),
(1584, 68, 'showPreview', '1'),
(1585, 69, 'nickname', 'rishabh@gmail.com'),
(1586, 69, 'first_name', 'Rishabh'),
(1587, 69, 'last_name', ''),
(1588, 69, 'description', ''),
(1589, 69, 'rich_editing', 'true'),
(1590, 69, 'comment_shortcuts', 'false'),
(1591, 69, 'admin_color', 'fresh'),
(1592, 69, 'use_ssl', '0'),
(1593, 69, 'show_admin_bar_front', 'true'),
(1594, 69, 'locale', ''),
(1595, 69, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1596, 69, 'im_user_level', '0'),
(1597, 69, 'facebookId', ''),
(1599, 69, 'deviceType', 'iOS'),
(1600, 69, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1506681422.jpg'),
(1601, 69, 'latitude', '37.1337418'),
(1602, 69, 'longitude', '-120.2864048'),
(1603, 69, 'pushNotification', '1'),
(1604, 69, 'broadcastNotification', '1'),
(1605, 69, 'postNotification', '1'),
(1606, 69, 'showPreview', '1'),
(1607, 69, 'onlineStatus', 'true'),
(1608, 69, 'onlineTime', '1506601083'),
(1609, 70, 'nickname', 'Abhinav@gmail.com'),
(1610, 70, 'first_name', 'Abhinav'),
(1611, 70, 'last_name', ''),
(1612, 70, 'description', ''),
(1613, 70, 'rich_editing', 'true'),
(1614, 70, 'comment_shortcuts', 'false'),
(1615, 70, 'admin_color', 'fresh'),
(1616, 70, 'use_ssl', '0'),
(1617, 70, 'show_admin_bar_front', 'true'),
(1618, 70, 'locale', ''),
(1619, 70, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1620, 70, 'im_user_level', '0'),
(1621, 70, 'facebookId', '123456'),
(1622, 70, 'firebaseTokenId', '12gh1hy3ghq'),
(1623, 70, 'deviceType', 'Android'),
(1624, 70, 'userImageUrl', ''),
(1625, 70, 'latitude', ''),
(1626, 70, 'longitude', ''),
(1627, 70, 'pushNotification', '1'),
(1628, 70, 'broadcastNotification', '1'),
(1629, 70, 'postNotification', '1'),
(1630, 70, 'showPreview', '1'),
(1631, 0, 'userImageUrl', ''),
(1632, 71, 'nickname', 'Abhina@gmail.com'),
(1633, 71, 'first_name', 'Abhinav'),
(1634, 71, 'last_name', ''),
(1635, 71, 'description', ''),
(1636, 71, 'rich_editing', 'true'),
(1637, 71, 'comment_shortcuts', 'false'),
(1638, 71, 'admin_color', 'fresh'),
(1639, 71, 'use_ssl', '0'),
(1640, 71, 'show_admin_bar_front', 'true'),
(1641, 71, 'locale', ''),
(1642, 71, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1643, 71, 'im_user_level', '0'),
(1644, 71, 'facebookId', NULL),
(1645, 71, 'firebaseTokenId', '12gh1hy3ghq'),
(1646, 71, 'deviceType', 'Android'),
(1647, 71, 'userImageUrl', ''),
(1648, 71, 'latitude', ''),
(1649, 71, 'longitude', ''),
(1650, 71, 'pushNotification', '1'),
(1651, 71, 'broadcastNotification', '1'),
(1652, 71, 'postNotification', '1'),
(1653, 71, 'showPreview', '1'),
(1654, 0, 'userImageUrl', ''),
(1655, 72, 'nickname', 'nav2@g.com'),
(1656, 72, 'first_name', 'nav2'),
(1657, 72, 'last_name', ''),
(1658, 72, 'description', ''),
(1659, 72, 'rich_editing', 'true'),
(1660, 72, 'comment_shortcuts', 'false'),
(1661, 72, 'admin_color', 'fresh'),
(1662, 72, 'use_ssl', '0'),
(1663, 72, 'show_admin_bar_front', 'true'),
(1664, 72, 'locale', ''),
(1665, 72, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1666, 72, 'im_user_level', '0'),
(1667, 72, 'facebookId', ''),
(1668, 72, 'firebaseTokenId', 'c0rMreV4vhA:APA91bH2wK2C9iAzZWplq0OQVuopjPDhn8PMz0A9ltkDFWPivCTuWczagyqNovvfa7wHzQDjzBYXn7wepL-U4E56dX_ArBimZHK-YPyAc1y2W-fidp6VYoy42OBcQW6PxDFfL4qmFX3w'),
(1669, 72, 'deviceType', 'android'),
(1670, 72, 'userImageUrl', ''),
(1671, 72, 'latitude', '30.727068'),
(1672, 72, 'longitude', '76.84666'),
(1673, 72, 'pushNotification', '1'),
(1674, 72, 'broadcastNotification', '1'),
(1675, 72, 'postNotification', '1'),
(1676, 72, 'showPreview', '1'),
(1677, 72, 'quickBloxPaswd', '89VYMI9B'),
(1678, 72, 'quickBloxID', '33847675'),
(1679, 68, 'onlineStatus', 'false'),
(1680, 68, 'onlineTime', '1506660620'),
(1681, 72, 'onlineStatus', 'false'),
(1682, 72, 'onlineTime', '1506661856'),
(2059, 86, 'longitude', '76.8462159141'),
(2060, 86, 'pushNotification', '1'),
(2061, 86, 'broadcastNotification', '1'),
(2062, 86, 'postNotification', '1'),
(1683, 63, 'age', '26'),
(1684, 63, 'gender', 'Female'),
(1685, 63, 'nationality', 'Indian'),
(1686, 63, 'officialStatus', ''),
(1687, 63, 'profession', 'iOS'),
(1688, 63, 'location', 'Saketri Village, Rajiv Gandhi Chandigarh Technology Park Road, Panchkula, India,'),
(2616, 102, 'admin_color', 'fresh'),
(1690, 69, 'age', '24'),
(1691, 69, 'gender', 'Male'),
(1692, 69, 'nationality', ''),
(1693, 69, 'officialStatus', ''),
(1694, 69, 'profession', 'iOS'),
(1695, 69, 'location', '93610, Chowchilla, CA, United States'),
(1696, 69, 'bio', 'edfefgvdefde'),
(1697, 73, 'nickname', 'abhi@sona.com'),
(1698, 73, 'first_name', 'Abhishek'),
(1699, 73, 'last_name', ''),
(1700, 73, 'description', ''),
(1701, 73, 'rich_editing', 'true'),
(1702, 73, 'comment_shortcuts', 'false'),
(1703, 73, 'admin_color', 'fresh'),
(1704, 73, 'use_ssl', '0'),
(1705, 73, 'show_admin_bar_front', 'true'),
(1706, 73, 'locale', ''),
(1707, 73, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1708, 73, 'im_user_level', '0'),
(1709, 73, 'facebookId', ''),
(1710, 73, 'firebaseTokenId', 'fUagS2k88cM:APA91bGJz-mrhJJtOP73dqEUHLNgAmHYzRcqry-H84mp6wowqlEyQr3sbh759aYwL5gvRc9b2vVRKWUJ9iM625L9viuqTUozfpY3RC3r0c37hN3HkHgSCOLw3EFtftNzWqP5B7uvuyNk'),
(1711, 73, 'deviceType', 'android'),
(1712, 73, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/09/1506692556.jpg'),
(1713, 73, 'latitude', ''),
(1714, 73, 'longitude', ''),
(1715, 73, 'pushNotification', '1'),
(1716, 73, 'broadcastNotification', '1'),
(1717, 73, 'postNotification', '1'),
(1718, 73, 'showPreview', '1'),
(1719, 73, 'quickBloxPaswd', 'OSXXH78A'),
(1720, 73, 'quickBloxID', '33915634'),
(1721, 73, 'onlineStatus', 'false'),
(1722, 74, 'nickname', 'ravi@sona.com'),
(1723, 74, 'first_name', 'Ravi'),
(1724, 74, 'last_name', ''),
(1725, 74, 'description', ''),
(1726, 74, 'rich_editing', 'true'),
(1727, 74, 'comment_shortcuts', 'false'),
(1728, 74, 'admin_color', 'fresh'),
(1729, 74, 'use_ssl', '0'),
(1730, 74, 'show_admin_bar_front', 'true'),
(1731, 74, 'locale', ''),
(1732, 74, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1733, 74, 'im_user_level', '0'),
(1734, 74, 'facebookId', '266234517218949'),
(1735, 74, 'firebaseTokenId', 'c0rMreV4vhA:APA91bH2wK2C9iAzZWplq0OQVuopjPDhn8PMz0A9ltkDFWPivCTuWczagyqNovvfa7wHzQDjzBYXn7wepL-U4E56dX_ArBimZHK-YPyAc1y2W-fidp6VYoy42OBcQW6PxDFfL4qmFX3w'),
(1736, 74, 'deviceType', 'android'),
(1737, 74, 'userImageUrl', 'https://graph.facebook.com/266234517218949/picture?type=normal'),
(1738, 74, 'latitude', '30.727066'),
(1739, 74, 'longitude', '76.846634'),
(1740, 74, 'pushNotification', '1'),
(1741, 74, 'broadcastNotification', '1'),
(1742, 74, 'postNotification', '1'),
(1743, 74, 'showPreview', '1'),
(1744, 74, 'onlineStatus', 'true'),
(2580, 97, 'location', ''),
(1745, 30, 'onlineStatus', 'true'),
(1746, 30, 'onlineTime', '1509172100'),
(1747, 73, 'age', ''),
(1748, 73, 'gender', ''),
(1749, 73, 'nationality', ''),
(1750, 73, 'officialStatus', 'Refugee'),
(1751, 73, 'profession', ''),
(1752, 73, 'location', ''),
(1753, 73, 'bio', ''),
(1755, 75, 'first_name', 'Farhan Ali'),
(1756, 75, 'last_name', ''),
(1757, 75, 'description', ''),
(1758, 75, 'rich_editing', 'true'),
(1759, 75, 'comment_shortcuts', 'false'),
(1760, 75, 'admin_color', 'fresh'),
(1761, 75, 'use_ssl', '0'),
(1762, 75, 'show_admin_bar_front', 'true'),
(1763, 75, 'locale', ''),
(1764, 75, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1765, 75, 'im_user_level', '0'),
(1766, 75, 'facebookId', ''),
(1768, 75, 'deviceType', 'android'),
(1769, 75, 'userImageUrl', ''),
(1770, 75, 'latitude', '0.0'),
(1771, 75, 'longitude', '0.0'),
(1772, 75, 'pushNotification', '1'),
(1773, 75, 'broadcastNotification', '1'),
(1774, 75, 'postNotification', '1'),
(1775, 75, 'showPreview', '1'),
(1776, 75, 'onlineStatus', 'true'),
(1777, 75, 'age', '56'),
(1778, 75, 'gender', 'Male'),
(1779, 75, 'nationality', ''),
(1780, 75, 'officialStatus', 'Refugee'),
(1781, 75, 'profession', ''),
(1782, 75, 'location', ''),
(1783, 75, 'bio', 'welcome'),
(1784, 75, 'onlineTime', '1506855455'),
(1785, 76, 'nickname', 'farhanwali6@gmail.com'),
(1786, 76, 'first_name', 'Ali'),
(1787, 76, 'last_name', ''),
(1788, 76, 'description', ''),
(1789, 76, 'rich_editing', 'true'),
(1790, 76, 'comment_shortcuts', 'false'),
(1791, 76, 'admin_color', 'fresh'),
(1792, 76, 'use_ssl', '0'),
(1793, 76, 'show_admin_bar_front', 'true'),
(1794, 76, 'locale', ''),
(1795, 76, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1796, 76, 'im_user_level', '0'),
(1797, 76, 'facebookId', ''),
(1799, 76, 'deviceType', 'android'),
(1800, 76, 'userImageUrl', ''),
(1801, 76, 'latitude', '0.0'),
(1802, 76, 'longitude', '0.0'),
(1803, 76, 'pushNotification', '1'),
(1804, 76, 'broadcastNotification', '1'),
(1805, 76, 'postNotification', '1'),
(1806, 76, 'showPreview', '1'),
(1807, 77, 'nickname', 'farhanaliw6@gmail.com'),
(1808, 77, 'first_name', 'Farhan'),
(1809, 77, 'last_name', ''),
(1810, 77, 'description', ''),
(1811, 77, 'rich_editing', 'true'),
(1812, 77, 'comment_shortcuts', 'false'),
(1813, 77, 'admin_color', 'fresh'),
(1814, 77, 'use_ssl', '0'),
(1815, 77, 'show_admin_bar_front', 'true'),
(1816, 77, 'locale', ''),
(1817, 77, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1818, 77, 'im_user_level', '0'),
(1819, 77, 'facebookId', ''),
(2606, 63, 'phone', '123456'),
(1821, 77, 'deviceType', 'android'),
(1822, 77, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/10/1509452773.fileData'),
(1823, 77, 'latitude', '0.0'),
(1824, 77, 'longitude', '0.0'),
(1825, 77, 'pushNotification', '1'),
(1826, 77, 'broadcastNotification', '1'),
(1827, 77, 'postNotification', '1'),
(1828, 77, 'showPreview', '1'),
(1829, 78, 'nickname', 'christiana373@hotmail.com'),
(1830, 78, 'first_name', 'Christiana Orton'),
(1831, 78, 'last_name', ''),
(1832, 78, 'description', ''),
(1833, 78, 'rich_editing', 'true'),
(1834, 78, 'comment_shortcuts', 'false'),
(1835, 78, 'admin_color', 'fresh'),
(1836, 78, 'use_ssl', '0'),
(1837, 78, 'show_admin_bar_front', 'true'),
(1838, 78, 'locale', ''),
(1839, 78, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1840, 78, 'im_user_level', '0'),
(1841, 78, 'facebookId', '10154720256222121'),
(1842, 78, 'firebaseTokenId', 'eJoDFwq7FWI:APA91bHcOTLStaeDYeRqabDD1WPh3oIHYwHj3-pUY48Ei4x100YBWa5uQ7nx3L33hq32TfJlMmBzLPEn5rsArprOCit0PimrwAZ60ra_SNQa-OeyOZRwBVKTJK-qPDoin2JfgV3uGNAG'),
(1843, 78, 'deviceType', 'android'),
(1844, 78, 'userImageUrl', 'https://graph.facebook.com/10154720256222121/picture?type=normal'),
(1845, 78, 'latitude', '51.395824'),
(1846, 78, 'longitude', '-0.1820551'),
(1847, 78, 'pushNotification', '1'),
(1848, 78, 'broadcastNotification', '1'),
(1849, 78, 'postNotification', '1'),
(1850, 78, 'showPreview', '1'),
(1851, 78, 'onlineStatus', 'true'),
(1852, 25, 'facebook', 'www.fb.fom'),
(1853, 25, 'twitter', ''),
(1854, 25, 'instagram', ''),
(1855, 25, 'phone', '8930030220'),
(1857, 79, 'nickname', 'login@log.in'),
(1858, 79, 'first_name', 'ligib'),
(1859, 79, 'last_name', ''),
(1860, 79, 'description', ''),
(1861, 79, 'rich_editing', 'true'),
(1862, 79, 'comment_shortcuts', 'false'),
(1863, 79, 'admin_color', 'fresh'),
(1864, 79, 'use_ssl', '0'),
(1865, 79, 'show_admin_bar_front', 'true'),
(1866, 79, 'locale', ''),
(1867, 79, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1868, 79, 'im_user_level', '0'),
(1869, 79, 'facebookId', ''),
(2628, 102, 'longitude', '76.846664'),
(2629, 102, 'pushNotification', '1'),
(2630, 102, 'broadcastNotification', '1'),
(1871, 79, 'deviceType', 'android'),
(1872, 79, 'userImageUrl', ''),
(1873, 79, 'latitude', '30.727066'),
(1874, 79, 'longitude', '76.846634'),
(1875, 79, 'pushNotification', '1'),
(1876, 79, 'broadcastNotification', '1'),
(1877, 79, 'postNotification', '1'),
(1878, 79, 'showPreview', '1'),
(1879, 79, 'quickBloxPaswd', 'QC2S5GC0'),
(1880, 79, 'quickBloxID', '34204405'),
(1881, 79, 'onlineStatus', 'false'),
(1882, 79, 'onlineTime', '1507189227'),
(1883, 21, 'quickBloxPaswd', '123456789'),
(1884, 21, 'quickBloxID', '33010230'),
(2058, 86, 'latitude', '30.7269414608'),
(1885, 80, 'nickname', 'nk@g.com'),
(1886, 80, 'first_name', 'nk'),
(1887, 80, 'last_name', ''),
(1888, 80, 'description', ''),
(1889, 80, 'rich_editing', 'true'),
(1890, 80, 'comment_shortcuts', 'false'),
(1891, 80, 'admin_color', 'fresh'),
(1892, 80, 'use_ssl', '0'),
(1893, 80, 'show_admin_bar_front', 'true'),
(1894, 80, 'locale', ''),
(1895, 80, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1896, 80, 'im_user_level', '0'),
(1897, 80, 'facebookId', ''),
(1898, 80, 'firebaseTokenId', 'dyTTA5uiLoU:APA91bES4I7ZFRZJnAyCxJ1XE1D7SMypq_xeUn0zWbkYflhmW7hSPWMxHHcreU4hj2JneCxrDOvs8SmeWrlGDMN2qvWOPzeYNp_agy4nNdD4CaX8z_0VrTbpFhNJJOBIOwTQqLX1DJR7'),
(1899, 80, 'deviceType', 'android'),
(1900, 80, 'userImageUrl', ''),
(1901, 80, 'latitude', '30.641468'),
(1902, 80, 'longitude', '76.817566'),
(1903, 80, 'pushNotification', '1'),
(1904, 80, 'broadcastNotification', '1'),
(1905, 80, 'postNotification', '1'),
(1906, 80, 'showPreview', '1'),
(1907, 81, 'nickname', 'nk1@g.com'),
(1908, 81, 'first_name', 'nk'),
(1909, 81, 'last_name', ''),
(1910, 81, 'description', ''),
(1911, 81, 'rich_editing', 'true'),
(1912, 81, 'comment_shortcuts', 'false'),
(1913, 81, 'admin_color', 'fresh'),
(1914, 81, 'use_ssl', '0'),
(1915, 81, 'show_admin_bar_front', 'true'),
(1916, 81, 'locale', ''),
(1917, 81, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1918, 81, 'im_user_level', '0'),
(1919, 81, 'facebookId', ''),
(1920, 81, 'firebaseTokenId', 'dyTTA5uiLoU:APA91bES4I7ZFRZJnAyCxJ1XE1D7SMypq_xeUn0zWbkYflhmW7hSPWMxHHcreU4hj2JneCxrDOvs8SmeWrlGDMN2qvWOPzeYNp_agy4nNdD4CaX8z_0VrTbpFhNJJOBIOwTQqLX1DJR7'),
(1921, 81, 'deviceType', 'android'),
(1922, 81, 'userImageUrl', ''),
(1923, 81, 'latitude', '30.641468'),
(1924, 81, 'longitude', '76.817566'),
(1925, 81, 'pushNotification', '1'),
(1926, 81, 'broadcastNotification', '1'),
(1927, 81, 'postNotification', '1'),
(1928, 81, 'showPreview', '1'),
(1929, 82, 'nickname', 'Ankita@mittra.com'),
(1930, 82, 'first_name', 'Ankita Mittra'),
(1931, 82, 'last_name', ''),
(1932, 82, 'description', ''),
(1933, 82, 'rich_editing', 'true'),
(1934, 82, 'comment_shortcuts', 'false'),
(1935, 82, 'admin_color', 'fresh'),
(1936, 82, 'use_ssl', '0'),
(1937, 82, 'show_admin_bar_front', 'true'),
(1938, 82, 'locale', ''),
(1939, 82, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1940, 82, 'im_user_level', '0'),
(1941, 82, 'facebookId', ''),
(1942, 82, 'firebaseTokenId', 'dvS6RqW2gx8:APA91bGJH_elijf2P53kaPJhehPlKMrwXCfhi-TgKzhDg5rBNe_3Jx92PsNSpNRndpxJfE1R7kWws-mObyPqVQSFHcPHerQnry-ZHDoedogvenzVLAxaULGoCfn363Umg4St_-FN9UTf'),
(1943, 82, 'deviceType', 'android'),
(1944, 82, 'userImageUrl', ''),
(1945, 82, 'latitude', '30.727068'),
(1946, 82, 'longitude', '76.84666'),
(1947, 82, 'pushNotification', '1'),
(1948, 82, 'broadcastNotification', '1'),
(1949, 82, 'postNotification', '1'),
(1950, 82, 'showPreview', '1'),
(1951, 82, 'quickBloxPaswd', 'O1H681KZ'),
(1952, 82, 'quickBloxID', '34344391'),
(1953, 82, 'onlineStatus', 'true'),
(1954, 83, 'nickname', 'nn@g.com'),
(1955, 83, 'first_name', 'nn'),
(1956, 83, 'last_name', ''),
(1957, 83, 'description', ''),
(1958, 83, 'rich_editing', 'true'),
(1959, 83, 'comment_shortcuts', 'false'),
(1960, 83, 'admin_color', 'fresh'),
(1961, 83, 'use_ssl', '0'),
(1962, 83, 'show_admin_bar_front', 'true'),
(1963, 83, 'locale', ''),
(1964, 83, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1965, 83, 'im_user_level', '0'),
(1966, 83, 'facebookId', ''),
(2625, 102, 'deviceType', 'android'),
(2626, 102, 'userImageUrl', ''),
(2627, 102, 'latitude', '30.727036'),
(1968, 83, 'deviceType', 'android'),
(1969, 83, 'userImageUrl', ''),
(1970, 83, 'latitude', '30.727036'),
(1971, 83, 'longitude', '76.846664'),
(1972, 83, 'pushNotification', '1'),
(1973, 83, 'broadcastNotification', '1'),
(1974, 83, 'postNotification', '1'),
(1975, 83, 'showPreview', '1'),
(1976, 83, 'quickBloxPaswd', 'T1LJ5SG8'),
(1977, 83, 'quickBloxID', '34344604'),
(1978, 83, 'onlineStatus', 'false'),
(2053, 86, 'im_user_level', '0'),
(2054, 86, 'facebookId', ''),
(2056, 86, 'deviceType', 'iOS'),
(2057, 86, 'userImageUrl', ''),
(1979, 83, 'onlineTime', '1507198042'),
(2048, 86, 'admin_color', 'fresh'),
(2049, 86, 'use_ssl', '0'),
(2050, 86, 'show_admin_bar_front', 'true'),
(2051, 86, 'locale', ''),
(2052, 86, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1980, 73, 'onlineTime', '1507277376'),
(1981, 84, 'nickname', 'ravi@imark.com'),
(1982, 84, 'first_name', 'Ravi'),
(1983, 84, 'last_name', ''),
(1984, 84, 'description', ''),
(1985, 84, 'rich_editing', 'true'),
(1986, 84, 'comment_shortcuts', 'false'),
(1987, 84, 'admin_color', 'fresh'),
(1988, 84, 'use_ssl', '0'),
(1989, 84, 'show_admin_bar_front', 'true'),
(1990, 84, 'locale', ''),
(1991, 84, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(1992, 84, 'im_user_level', '0'),
(1993, 84, 'facebookId', ''),
(1994, 84, 'firebaseTokenId', 'fUagS2k88cM:APA91bGJz-mrhJJtOP73dqEUHLNgAmHYzRcqry-H84mp6wowqlEyQr3sbh759aYwL5gvRc9b2vVRKWUJ9iM625L9viuqTUozfpY3RC3r0c37hN3HkHgSCOLw3EFtftNzWqP5B7uvuyNk'),
(1995, 84, 'deviceType', 'android'),
(1996, 84, 'userImageUrl', ''),
(1997, 84, 'latitude', '30.727068'),
(1998, 84, 'longitude', '76.84666'),
(1999, 84, 'pushNotification', '1'),
(2000, 84, 'broadcastNotification', '1'),
(2001, 84, 'postNotification', '1'),
(2002, 84, 'showPreview', '1'),
(2003, 84, 'quickBloxPaswd', 'HLM940HR'),
(2004, 84, 'quickBloxID', '34426821'),
(2005, 84, 'onlineStatus', 'true'),
(2006, 85, 'nickname', 'saini@imark.com'),
(2007, 85, 'first_name', 'saini'),
(2008, 85, 'last_name', ''),
(2009, 85, 'description', ''),
(2010, 85, 'rich_editing', 'true'),
(2011, 85, 'comment_shortcuts', 'false'),
(2012, 85, 'admin_color', 'fresh'),
(2013, 85, 'use_ssl', '0'),
(2014, 85, 'show_admin_bar_front', 'true'),
(2015, 85, 'locale', ''),
(2016, 85, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2017, 85, 'im_user_level', '0'),
(2018, 85, 'facebookId', ''),
(2592, 99, 'phone', '89390353357'),
(2020, 85, 'deviceType', 'android'),
(2021, 85, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/10/1507286677.jpg'),
(2022, 85, 'latitude', '30.727055'),
(2023, 85, 'longitude', '76.84664'),
(2024, 85, 'pushNotification', '1'),
(2025, 85, 'broadcastNotification', '1'),
(2026, 85, 'postNotification', '1'),
(2027, 85, 'showPreview', '1'),
(2028, 85, 'quickBloxPaswd', '8TAUF4W4'),
(2029, 85, 'quickBloxID', '34426860'),
(2030, 85, 'onlineStatus', 'true'),
(2031, 85, 'facebook', 'twitter'),
(2032, 85, 'twitter', 'fb'),
(2033, 85, 'instagram', 'nenail'),
(2034, 85, 'phone', '88300302020'),
(2035, 85, 'age', '50'),
(2036, 85, 'gender', 'Male'),
(2037, 85, 'nationality', 'testing'),
(2038, 85, 'officialStatus', 'Refugee'),
(2039, 85, 'profession', 'tester'),
(2040, 85, 'location', 'India'),
(2041, 85, 'bio', 'tester'),
(2047, 86, 'comment_shortcuts', 'false'),
(2042, 86, 'nickname', 'test@testing.com'),
(2043, 86, 'first_name', 'test'),
(2044, 86, 'last_name', ''),
(2045, 86, 'description', ''),
(2046, 86, 'rich_editing', 'true'),
(2063, 86, 'showPreview', '1'),
(2064, 86, 'onlineStatus', 'true'),
(2065, 87, 'nickname', 'yiee@yo.com'),
(2066, 87, 'first_name', 'yiee'),
(2067, 87, 'last_name', ''),
(2068, 87, 'description', ''),
(2069, 87, 'rich_editing', 'true'),
(2070, 87, 'comment_shortcuts', 'false'),
(2071, 87, 'admin_color', 'fresh'),
(2072, 87, 'use_ssl', '0'),
(2073, 87, 'show_admin_bar_front', 'true'),
(2074, 87, 'locale', ''),
(2075, 87, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2076, 87, 'im_user_level', '0'),
(2077, 87, 'facebookId', ''),
(2078, 87, 'firebaseTokenId', 'f-QsfHnN_68:APA91bGY1GHJsG26gh8YzHoDD4Bw91W9QR4QiJayMCfX1eeolgfkj2RT7ICslLp18l5jjIp1bAmJIyDzvsH2F-38mDClMEEZq-EcmWvYABxuvr_XKb9dMRaU-W3f80kwlT80e940QhSg'),
(2079, 87, 'deviceType', 'android'),
(2080, 87, 'userImageUrl', ''),
(2081, 87, 'latitude', '30.727068'),
(2082, 87, 'longitude', '76.84666'),
(2083, 87, 'pushNotification', '1'),
(2084, 87, 'broadcastNotification', '1'),
(2085, 87, 'postNotification', '1'),
(2086, 87, 'showPreview', '1'),
(2087, 87, 'quickBloxPaswd', 'HW5DVRCJ'),
(2088, 87, 'quickBloxID', '34674117'),
(2089, 87, 'onlineStatus', 'false'),
(2198, 29, 'userStatus', '1'),
(2199, 42, 'userStatus', '1'),
(2200, 18, 'userStatus', '1'),
(2201, 44, 'userStatus', '1'),
(2202, 45, 'userStatus', '1'),
(2203, 46, 'userStatus', '1'),
(2166, 86, 'onlineTime', '1509001756'),
(2167, 90, 'nickname', 'pmegalanathan@gmail.com'),
(2168, 90, 'first_name', 'metal'),
(2169, 90, 'last_name', ''),
(2170, 90, 'description', ''),
(2090, 87, 'onlineTime', '1507634625'),
(2091, 88, 'nickname', 'Ravi.saini@imarkinfotech.com'),
(2092, 88, 'first_name', 'Abhishek'),
(2093, 88, 'last_name', ''),
(2094, 88, 'description', ''),
(2095, 88, 'rich_editing', 'true'),
(2096, 88, 'comment_shortcuts', 'false'),
(2097, 88, 'admin_color', 'fresh'),
(2098, 88, 'use_ssl', '0'),
(2099, 88, 'show_admin_bar_front', 'true'),
(2100, 88, 'locale', ''),
(2101, 88, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2102, 88, 'im_user_level', '0'),
(2103, 88, 'facebookId', ''),
(2105, 88, 'deviceType', 'android'),
(2106, 88, 'userImageUrl', ''),
(2107, 88, 'latitude', '212121'),
(2108, 88, 'longitude', '121212'),
(2109, 88, 'pushNotification', '1'),
(2110, 88, 'broadcastNotification', '1'),
(2111, 88, 'postNotification', '1'),
(2112, 88, 'showPreview', '1'),
(2113, 88, 'quickBloxPaswd', 'DPSMPA0H'),
(2114, 88, 'quickBloxID', '34750871'),
(2115, 88, 'onlineStatus', 'false'),
(2116, 88, 'onlineTime', '1507637342'),
(2117, 89, 'nickname', 'Sahil@imarkinfotech.com'),
(2118, 89, 'first_name', 'Sahil'),
(2119, 89, 'last_name', ''),
(2120, 89, 'description', ''),
(2121, 89, 'rich_editing', 'true'),
(2122, 89, 'comment_shortcuts', 'false'),
(2123, 89, 'admin_color', 'fresh'),
(2124, 89, 'use_ssl', '0'),
(2125, 89, 'show_admin_bar_front', 'true'),
(2126, 89, 'locale', ''),
(2127, 89, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2128, 89, 'im_user_level', '0'),
(2129, 89, 'facebookId', ''),
(2130, 89, 'firebaseTokenId', 'f-QsfHnN_68:APA91bGY1GHJsG26gh8YzHoDD4Bw91W9QR4QiJayMCfX1eeolgfkj2RT7ICslLp18l5jjIp1bAmJIyDzvsH2F-38mDClMEEZq-EcmWvYABxuvr_XKb9dMRaU-W3f80kwlT80e940QhSg'),
(2131, 89, 'deviceType', 'android'),
(2132, 89, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/10/1507640084.jpg'),
(2133, 89, 'latitude', '30.727055'),
(2134, 89, 'longitude', '76.84664'),
(2135, 89, 'pushNotification', '1'),
(2136, 89, 'broadcastNotification', '1'),
(2137, 89, 'postNotification', '1'),
(2138, 89, 'showPreview', '1'),
(2139, 89, 'quickBloxPaswd', '8B3QWF4C'),
(2140, 89, 'quickBloxID', '34754133'),
(2141, 89, 'onlineStatus', 'false'),
(2142, 89, 'onlineTime', '1507878234'),
(2143, 89, 'age', '80'),
(2144, 89, 'gender', 'Male'),
(2145, 89, 'nationality', 'Indian'),
(2146, 89, 'officialStatus', 'Refugee'),
(2147, 89, 'profession', 'Tester in the web company imarkinfotech Pvt Ltd Chandigarh'),
(2148, 89, 'location', 'Tajikistan'),
(2150, 89, 'facebook', 'www.fcvgg'),
(2149, 89, 'bio', 'testing'),
(2151, 89, 'twitter', 'fgfggd'),
(2152, 89, 'instagram', 'sgfgfff'),
(2153, 89, 'phone', '89300'),
(2161, 29, 'facebook', 'ww.gb.com'),
(2154, 29, 'age', '50'),
(2155, 29, 'gender', 'Male'),
(2156, 29, 'nationality', 'Indian'),
(2157, 29, 'officialStatus', 'Refugee'),
(2158, 29, 'profession', 'Software testing engineer at imark'),
(2159, 29, 'location', '3/70,Block 3, Geeta Colony,नई दिल्ली, Delhi 110031,India'),
(2160, 29, 'bio', 'i am a software tester with profession'),
(2162, 29, 'twitter', 'ewwre.mng.co'),
(2163, 29, 'instagram', 'tedter'),
(2164, 29, 'phone', '8930030220'),
(2165, 29, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/10/1507794064.jpg'),
(2171, 90, 'rich_editing', 'true'),
(2172, 90, 'comment_shortcuts', 'false'),
(2173, 90, 'admin_color', 'fresh'),
(2174, 90, 'use_ssl', '0'),
(2175, 90, 'show_admin_bar_front', 'true'),
(2176, 90, 'locale', ''),
(2177, 90, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2178, 90, 'im_user_level', '0'),
(2179, 90, 'facebookId', ''),
(2605, 63, 'instagram', ''),
(2181, 90, 'deviceType', 'iOS'),
(2182, 90, 'userImageUrl', ''),
(2183, 90, 'latitude', '37.785834'),
(2184, 90, 'longitude', '-122.406417'),
(2185, 90, 'pushNotification', '1'),
(2186, 90, 'broadcastNotification', '1'),
(2187, 90, 'postNotification', '1'),
(2188, 90, 'showPreview', '1'),
(2189, 90, 'onlineStatus', 'true'),
(2190, 77, 'onlineStatus', 'true'),
(2191, 77, 'age', '45'),
(2192, 77, 'gender', 'Male'),
(2193, 77, 'nationality', ''),
(2194, 77, 'officialStatus', 'Refugee'),
(2195, 77, 'profession', 'Cook'),
(2196, 77, 'location', ''),
(2197, 77, 'bio', '1234'),
(2204, 47, 'userStatus', '1'),
(2205, 52, 'userStatus', '1'),
(2206, 53, 'userStatus', '1'),
(2207, 54, 'userStatus', '1'),
(2208, 55, 'userStatus', '1'),
(2209, 58, 'userStatus', '1'),
(2210, 43, 'userStatus', '1'),
(2211, 31, 'userStatus', '1'),
(2212, 40, 'userStatus', '1'),
(2213, 24, 'userStatus', '1'),
(2214, 39, 'userStatus', '1'),
(2215, 59, 'userStatus', '1'),
(2216, 73, 'userStatus', '1'),
(2217, 71, 'userStatus', '1'),
(2218, 70, 'userStatus', '1'),
(2219, 26, 'userStatus', '1'),
(2220, 28, 'userStatus', '1'),
(2221, 60, 'userStatus', '1'),
(2222, 22, 'userStatus', '1'),
(2223, 82, 'userStatus', '1'),
(2224, 38, 'userStatus', '1'),
(2225, 32, 'userStatus', '1'),
(2226, 25, 'userStatus', '1'),
(2227, 64, 'userStatus', '1'),
(2228, 66, 'userStatus', '1'),
(2229, 12, 'userStatus', '1'),
(2230, 17, 'userStatus', '1'),
(2231, 78, 'userStatus', '1'),
(2232, 19, 'userStatus', '1'),
(2233, 14, 'userStatus', '1'),
(2234, 13, 'userStatus', '1'),
(2235, 77, 'userStatus', '1'),
(2236, 76, 'userStatus', '1'),
(2237, 75, 'userStatus', '1'),
(2238, 30, 'userStatus', '1'),
(2239, 2, 'userStatus', '1'),
(2240, 27, 'userStatus', '1'),
(2241, 1, 'userStatus', '1'),
(2242, 79, 'userStatus', '1'),
(2243, 11, 'userStatus', '1'),
(2244, 72, 'userStatus', '1'),
(2245, 6, 'userStatus', '1'),
(2246, 3, 'userStatus', '1'),
(2247, 4, 'userStatus', '1'),
(2248, 5, 'userStatus', '1'),
(2249, 7, 'userStatus', '1'),
(2250, 8, 'userStatus', '1'),
(2251, 10, 'userStatus', '1'),
(2252, 9, 'userStatus', '1'),
(2253, 23, 'userStatus', '1'),
(2254, 21, 'userStatus', '1'),
(2255, 15, 'userStatus', '1'),
(2256, 80, 'userStatus', '1'),
(2257, 81, 'userStatus', '1'),
(2258, 83, 'userStatus', '1'),
(2259, 33, 'userStatus', '1'),
(2260, 90, 'userStatus', '1'),
(2261, 61, 'userStatus', '1'),
(2262, 62, 'userStatus', '1'),
(2263, 41, 'userStatus', '1'),
(2264, 88, 'userStatus', '1'),
(2265, 84, 'userStatus', '1'),
(2266, 74, 'userStatus', '1'),
(2267, 34, 'userStatus', '1'),
(2268, 35, 'userStatus', '1'),
(2269, 36, 'userStatus', '1'),
(2270, 37, 'userStatus', '1'),
(2271, 69, 'userStatus', '1'),
(2272, 20, 'userStatus', '1'),
(2273, 89, 'userStatus', '1'),
(2274, 85, 'userStatus', '1'),
(2275, 63, 'userStatus', '1'),
(2276, 51, 'userStatus', '1'),
(2277, 57, 'userStatus', '1'),
(2278, 50, 'userStatus', '1'),
(2279, 56, 'userStatus', '1'),
(2280, 48, 'userStatus', '1'),
(2281, 49, 'userStatus', '1'),
(2282, 67, 'userStatus', '1'),
(2283, 65, 'userStatus', '1'),
(2284, 16, 'userStatus', '1'),
(2285, 86, 'userStatus', '1'),
(2286, 68, 'userStatus', '1'),
(2287, 87, 'userStatus', '1'),
(2329, 92, 'firebaseTokenId', 'fm3pEWpzbk0:APA91bHgSlFqSpBMoObgcz3VeLDX5N2TnZEzdioKIEJUQwEpwZ3rSSDFCnK9Wdro61eQrz1sKoAGDDX3P5GRjcWY9DJYn5FtPcDtndNV4JaNtfOQkpjtm0tHg5zWIPa5d_zK0yokEsC7'),
(2328, 92, 'facebookId', ''),
(2327, 92, 'userStatus', '1'),
(2326, 92, 'im_user_level', '0'),
(2325, 92, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2324, 92, 'locale', ''),
(2321, 92, 'admin_color', 'fresh'),
(2322, 92, 'use_ssl', '0'),
(2323, 92, 'show_admin_bar_front', 'true'),
(2320, 92, 'comment_shortcuts', 'false'),
(2319, 92, 'rich_editing', 'true'),
(2318, 92, 'description', ''),
(2317, 92, 'last_name', ''),
(2316, 92, 'first_name', 'sharad'),
(2315, 92, 'nickname', 'sharad@imarkinfotech.com'),
(2314, 91, 'onlineStatus', 'false'),
(2313, 91, 'onlineTime', '1508827539'),
(2330, 92, 'deviceType', 'android'),
(2331, 92, 'userImageUrl', ''),
(2332, 92, 'latitude', '30.727003'),
(2333, 92, 'longitude', '76.84668'),
(2334, 92, 'pushNotification', '1'),
(2335, 92, 'broadcastNotification', '1'),
(2336, 92, 'postNotification', '1'),
(2337, 92, 'showPreview', '1'),
(2338, 93, 'nickname', 'sharad@imarkinfotech.comq'),
(2339, 93, 'first_name', 'sharad'),
(2340, 93, 'last_name', ''),
(2341, 93, 'description', ''),
(2342, 93, 'rich_editing', 'true'),
(2343, 93, 'comment_shortcuts', 'false'),
(2344, 93, 'admin_color', 'fresh'),
(2345, 93, 'use_ssl', '0'),
(2346, 93, 'show_admin_bar_front', 'true'),
(2347, 93, 'locale', ''),
(2348, 93, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2349, 93, 'im_user_level', '0'),
(2350, 93, 'userStatus', '1'),
(2351, 93, 'facebookId', ''),
(2352, 93, 'firebaseTokenId', 'fm3pEWpzbk0:APA91bHgSlFqSpBMoObgcz3VeLDX5N2TnZEzdioKIEJUQwEpwZ3rSSDFCnK9Wdro61eQrz1sKoAGDDX3P5GRjcWY9DJYn5FtPcDtndNV4JaNtfOQkpjtm0tHg5zWIPa5d_zK0yokEsC7'),
(2353, 93, 'deviceType', 'android'),
(2354, 93, 'userImageUrl', ''),
(2355, 93, 'latitude', '30.727003'),
(2356, 93, 'longitude', '76.84668'),
(2357, 93, 'pushNotification', '1'),
(2358, 93, 'broadcastNotification', '1'),
(2359, 93, 'postNotification', '1'),
(2360, 93, 'showPreview', '1'),
(2361, 93, 'quickBloxPaswd', 'RVYE2VR7'),
(2362, 93, 'quickBloxID', '35690217'),
(2363, 93, 'onlineStatus', 'false'),
(2364, 93, 'onlineTime', '1509168435'),
(2400, 95, 'last_name', ''),
(2399, 95, 'first_name', 'shooter'),
(2591, 99, 'instagram', 'hvguvugu'),
(2398, 95, 'nickname', 'sansarwal.abhishek@gmail.com'),
(2589, 99, 'facebook', 'jggjgjgu'),
(2365, 91, 'userStatus', '1'),
(2599, 12, 'pushNotification', '0'),
(2366, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(2367, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(2598, 77, 'onlineTime', '1509453656'),
(2368, 94, 'nickname', 'Ravi.sainiimarkinfotech.com'),
(2369, 94, 'first_name', 'Ravi'),
(2370, 94, 'last_name', ''),
(2371, 94, 'description', ''),
(2372, 94, 'rich_editing', 'true'),
(2373, 94, 'comment_shortcuts', 'false'),
(2374, 94, 'admin_color', 'fresh'),
(2375, 94, 'use_ssl', '0'),
(2376, 94, 'show_admin_bar_front', 'true'),
(2377, 94, 'locale', ''),
(2378, 94, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2379, 94, 'im_user_level', '0'),
(2380, 94, 'userStatus', '1'),
(2381, 94, 'facebookId', '123456'),
(2382, 94, 'firebaseTokenId', '12gh1hy3ghq'),
(2383, 94, 'deviceType', 'android'),
(2384, 94, 'userImageUrl', 'fb/Google image Url'),
(2385, 94, 'latitude', '212121'),
(2386, 94, 'longitude', '121212'),
(2387, 94, 'pushNotification', '1'),
(2388, 94, 'broadcastNotification', '1'),
(2389, 94, 'postNotification', '1'),
(2390, 94, 'showPreview', '1'),
(2573, 30, '_latitude', 'field_59c4f175776c6'),
(2574, 30, '_longitude', 'field_59c4f17b776c7'),
(2582, 99, 'age', '50'),
(2583, 99, 'gender', 'Male'),
(2584, 99, 'nationality', 'Indian'),
(2392, 30, 'gender', NULL),
(2393, 30, 'nationality', 'Indian'),
(2394, 30, 'officialStatus', 'Hello'),
(2395, 30, 'profession', 'Hello'),
(2396, 30, 'location', 'Hello'),
(2397, 30, 'bio', 'Hello'),
(2401, 95, 'description', ''),
(2402, 95, 'rich_editing', 'true'),
(2403, 95, 'comment_shortcuts', 'false'),
(2404, 95, 'admin_color', 'fresh'),
(2405, 95, 'use_ssl', '0'),
(2406, 95, 'show_admin_bar_front', 'true'),
(2407, 95, 'locale', ''),
(2408, 95, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2409, 95, 'im_user_level', '0'),
(2410, 95, 'userStatus', '1'),
(2411, 95, 'facebookId', ''),
(2588, 99, 'bio', 'I am a superman. I will blow off your house. Please dont contact me for any reason understand. I will kick you and punch on your face. I am a shooter'),
(2590, 99, 'twitter', 'fuchgu'),
(2413, 95, 'deviceType', 'android'),
(2414, 95, 'userImageUrl', ''),
(2415, 95, 'latitude', '30.727036'),
(2416, 95, 'longitude', '76.846664'),
(2417, 95, 'pushNotification', '1'),
(2418, 95, 'broadcastNotification', '1'),
(2419, 95, 'postNotification', '1'),
(2420, 95, 'showPreview', '1'),
(2421, 95, 'onlineStatus', 'false'),
(2422, 95, 'onlineTime', '1509166066'),
(2581, 97, 'bio', ''),
(2423, 96, 'nickname', 'yo@yo.com'),
(2424, 96, 'first_name', 'yo'),
(2425, 96, 'last_name', ''),
(2426, 96, 'description', ''),
(2427, 96, 'rich_editing', 'true'),
(2428, 96, 'comment_shortcuts', 'false'),
(2429, 96, 'admin_color', 'fresh'),
(2430, 96, 'use_ssl', '0'),
(2431, 96, 'show_admin_bar_front', 'true'),
(2432, 96, 'locale', ''),
(2433, 96, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2434, 96, 'im_user_level', '0'),
(2435, 96, 'userStatus', '1'),
(2436, 96, 'facebookId', ''),
(2585, 99, 'officialStatus', 'Refugee'),
(2586, 99, 'profession', 'testing'),
(2587, 99, 'location', 'India'),
(2438, 96, 'deviceType', 'android'),
(2439, 96, 'userImageUrl', ''),
(2440, 96, 'latitude', '30.727047'),
(2441, 96, 'longitude', '76.84668'),
(2442, 96, 'pushNotification', '1'),
(2443, 96, 'broadcastNotification', '1'),
(2444, 96, 'postNotification', '1'),
(2445, 96, 'showPreview', '1'),
(2446, 97, 'nickname', 'yoo@yo.com'),
(2447, 97, 'first_name', 'yo'),
(2448, 97, 'last_name', ''),
(2449, 97, 'description', ''),
(2450, 97, 'rich_editing', 'true'),
(2451, 97, 'comment_shortcuts', 'false'),
(2452, 97, 'admin_color', 'fresh'),
(2453, 97, 'use_ssl', '0'),
(2454, 97, 'show_admin_bar_front', 'true'),
(2455, 97, 'locale', ''),
(2456, 97, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2457, 97, 'im_user_level', '0'),
(2458, 97, 'userStatus', '1'),
(2459, 97, 'facebookId', ''),
(2461, 97, 'deviceType', 'android'),
(2462, 97, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/10/1509173702.fileData'),
(2463, 97, 'latitude', '30.727036'),
(2464, 97, 'longitude', '76.846664'),
(2465, 97, 'pushNotification', '1'),
(2466, 97, 'broadcastNotification', '1'),
(2467, 97, 'postNotification', '1'),
(2468, 97, 'showPreview', '1'),
(2469, 97, 'quickBloxPaswd', 'SFGLTZ73'),
(2470, 97, 'quickBloxID', '36001714'),
(2471, 97, 'onlineStatus', 'true'),
(2472, 97, 'onlineTime', '1509625986'),
(2473, 98, 'nickname', 'yes@no.com'),
(2474, 98, 'first_name', 'yes'),
(2475, 98, 'last_name', ''),
(2476, 98, 'description', ''),
(2477, 98, 'rich_editing', 'true'),
(2478, 98, 'comment_shortcuts', 'false'),
(2479, 98, 'admin_color', 'fresh'),
(2480, 98, 'use_ssl', '0'),
(2481, 98, 'show_admin_bar_front', 'true'),
(2482, 98, 'locale', ''),
(2483, 98, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2484, 98, 'im_user_level', '0'),
(2485, 98, 'userStatus', '1'),
(2486, 98, 'facebookId', ''),
(2579, 97, 'profession', ''),
(2488, 98, 'deviceType', 'android'),
(2489, 98, 'userImageUrl', ''),
(2490, 98, 'latitude', '30.727047'),
(2491, 98, 'longitude', '76.84668'),
(2492, 98, 'pushNotification', '1'),
(2493, 98, 'broadcastNotification', '1'),
(2494, 98, 'postNotification', '1'),
(2495, 98, 'showPreview', '1'),
(2496, 98, 'quickBloxPaswd', 'MIX365KW'),
(2497, 98, 'quickBloxID', '36002273'),
(2498, 12, 'onlineTime', '1509706578'),
(2499, 99, 'nickname', 'Sona@circle.com'),
(2500, 99, 'first_name', 'Sone Da Circle'),
(2501, 99, 'last_name', ''),
(2502, 99, 'description', ''),
(2503, 99, 'rich_editing', 'true'),
(2504, 99, 'comment_shortcuts', 'false'),
(2505, 99, 'admin_color', 'fresh'),
(2506, 99, 'use_ssl', '0'),
(2507, 99, 'show_admin_bar_front', 'true'),
(2508, 99, 'locale', ''),
(2509, 99, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2510, 99, 'im_user_level', '0'),
(2511, 99, 'userStatus', '1'),
(2512, 99, 'facebookId', ''),
(2513, 99, 'firebaseTokenId', 'eg4cJS2rNMs:APA91bEoeWrOr_LLrGoPyu_F2dp-8eTzsQzLfKsI0AfiH5Ix2Meb84ab2lP2UNx42QtDRdGstIr1Thc_oQ68682O8UqlvIr5DJTw1uIoCSjPbn_g6NR2V0XiSPvSRpqk-G9Q0OP-crTs'),
(2514, 99, 'deviceType', 'android'),
(2515, 99, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/10/1509191496.fileData'),
(2516, 99, 'latitude', '30.727045'),
(2517, 99, 'longitude', '76.84666'),
(2518, 99, 'pushNotification', '1'),
(2519, 99, 'broadcastNotification', '1'),
(2520, 99, 'postNotification', '0'),
(2521, 99, 'showPreview', '1'),
(2522, 99, 'quickBloxPaswd', 'HTJ4FZ79'),
(2523, 99, 'quickBloxID', '36003288'),
(2524, 99, 'onlineStatus', 'true'),
(2525, 100, 'nickname', 'shikha.kochar@imarkinfotech.com'),
(2526, 100, 'first_name', 'shikha'),
(2527, 100, 'last_name', ''),
(2528, 100, 'description', ''),
(2529, 100, 'rich_editing', 'true'),
(2530, 100, 'comment_shortcuts', 'false'),
(2531, 100, 'admin_color', 'fresh'),
(2532, 100, 'use_ssl', '0'),
(2533, 100, 'show_admin_bar_front', 'true'),
(2534, 100, 'locale', ''),
(2535, 100, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2536, 100, 'im_user_level', '0'),
(2537, 100, 'userStatus', '0'),
(2538, 100, 'facebookId', ''),
(2604, 63, 'twitter', ''),
(2540, 100, 'deviceType', 'iOS'),
(2541, 100, 'userImageUrl', ''),
(2542, 100, 'latitude', '30.7268757338'),
(2543, 100, 'longitude', '76.8463514237'),
(2544, 100, 'pushNotification', '1'),
(2545, 100, 'broadcastNotification', '1'),
(2546, 100, 'postNotification', '1'),
(2547, 100, 'showPreview', '1'),
(2548, 101, 'nickname', 'a@b.com'),
(2549, 101, 'first_name', 'ab'),
(2550, 101, 'last_name', ''),
(2551, 101, 'description', ''),
(2552, 101, 'rich_editing', 'true'),
(2553, 101, 'comment_shortcuts', 'false'),
(2554, 101, 'admin_color', 'fresh'),
(2555, 101, 'use_ssl', '0'),
(2556, 101, 'show_admin_bar_front', 'true'),
(2557, 101, 'locale', ''),
(2558, 101, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2559, 101, 'im_user_level', '0'),
(2560, 101, 'userStatus', '0'),
(2561, 101, 'facebookId', ''),
(2603, 63, 'facebook', ''),
(2563, 101, 'deviceType', 'iOS'),
(2564, 101, 'userImageUrl', ''),
(2565, 101, 'latitude', ''),
(2566, 101, 'longitude', ''),
(2567, 101, 'pushNotification', '1'),
(2568, 101, 'broadcastNotification', '1'),
(2569, 101, 'postNotification', '1'),
(2570, 101, 'showPreview', '1'),
(2571, 100, 'onlineStatus', 'true'),
(2635, 102, 'onlineStatus', 'false'),
(2668, 104, 'nickname', 'sahil.thakur@imarkinfotech.com'),
(2639, 103, 'nickname', 'xyz@xyz.com'),
(2644, 103, 'comment_shortcuts', 'false'),
(2645, 103, 'admin_color', 'fresh'),
(2646, 103, 'use_ssl', '0'),
(2647, 103, 'show_admin_bar_front', 'true'),
(2648, 103, 'locale', ''),
(2649, 103, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2650, 103, 'im_user_level', '0'),
(2651, 103, 'userStatus', '1'),
(2652, 103, 'facebookId', ''),
(2665, 103, 'onlineTime', '1509617366'),
(2819, 97, 'firebaseTokenId', 'fR6z4zsS8NA:APA91bHahhUzwT3NFlJ6VbwB_4Zr7b0DnPMuyQZ28A7I6IGIwu5ZBqx1R78CdbcPgbGvjBG6cKY3zN7_jwOrs6Vq3iNo0rDoU7e8WwH4FllNitUevc3CLXy51VDYUVbqUELPbh30Xadv'),
(2654, 103, 'deviceType', 'android'),
(2655, 103, 'userImageUrl', ''),
(2656, 103, 'latitude', '30.727036'),
(2657, 103, 'longitude', '76.846664'),
(2658, 103, 'pushNotification', '1'),
(2659, 103, 'broadcastNotification', '1'),
(2660, 103, 'postNotification', '1'),
(2661, 103, 'showPreview', '1'),
(2662, 103, 'quickBloxPaswd', 'TTW5RY36'),
(2663, 103, 'quickBloxID', '36430123'),
(2664, 103, 'onlineStatus', 'false'),
(2669, 104, 'first_name', 'Resham singh Anmol'),
(2670, 104, 'last_name', ''),
(2671, 104, 'description', ''),
(2672, 104, 'rich_editing', 'true'),
(2673, 104, 'comment_shortcuts', 'false'),
(2674, 104, 'admin_color', 'fresh'),
(2675, 104, 'use_ssl', '0'),
(2676, 104, 'show_admin_bar_front', 'true'),
(2677, 104, 'locale', ''),
(2678, 104, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2679, 104, 'im_user_level', '0'),
(2680, 104, 'userStatus', '1'),
(2681, 104, 'facebookId', ''),
(2815, 104, 'onlineTime', '1509716119'),
(2683, 104, 'deviceType', 'android'),
(2684, 104, 'userImageUrl', ''),
(2685, 104, 'latitude', '30.727036'),
(2686, 104, 'longitude', '76.846664'),
(2687, 104, 'pushNotification', '1'),
(2688, 104, 'broadcastNotification', '1'),
(2689, 104, 'postNotification', '1'),
(2690, 104, 'showPreview', '1'),
(2691, 104, 'quickBloxPaswd', 'Z08MC5SM'),
(2692, 104, 'quickBloxID', '36437077'),
(2693, 104, 'onlineStatus', 'false'),
(2694, 105, 'nickname', 'Ravi.saini@gmail.com'),
(2695, 105, 'first_name', 'Abhijfifjf'),
(2696, 105, 'last_name', ''),
(2697, 105, 'description', ''),
(2698, 105, 'rich_editing', 'true'),
(2699, 105, 'comment_shortcuts', 'false'),
(2700, 105, 'admin_color', 'fresh'),
(2701, 105, 'use_ssl', '0'),
(2702, 105, 'show_admin_bar_front', 'true'),
(2703, 105, 'locale', ''),
(2704, 105, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2705, 105, 'im_user_level', '0'),
(2706, 105, 'userStatus', '1'),
(2707, 105, 'facebookId', ''),
(2709, 105, 'deviceType', 'iOS'),
(2710, 105, 'userImageUrl', ''),
(2711, 105, 'latitude', '30.7269337846'),
(2712, 105, 'longitude', '76.846269467'),
(2713, 105, 'pushNotification', '1'),
(2714, 105, 'broadcastNotification', '1'),
(2715, 105, 'postNotification', '1'),
(2716, 105, 'showPreview', '1'),
(2717, 106, 'nickname', 'rk1@gmail.com'),
(2718, 106, 'first_name', 'rk'),
(2719, 106, 'last_name', ''),
(2720, 106, 'description', '');
INSERT INTO `im_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(2721, 106, 'rich_editing', 'true'),
(2722, 106, 'comment_shortcuts', 'false'),
(2723, 106, 'admin_color', 'fresh'),
(2724, 106, 'use_ssl', '0'),
(2725, 106, 'show_admin_bar_front', 'true'),
(2726, 106, 'locale', ''),
(2727, 106, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2728, 106, 'im_user_level', '0'),
(2729, 106, 'userStatus', '1'),
(2730, 106, 'facebookId', ''),
(2731, 106, 'firebaseTokenId', 'f-zSBQih7gI:APA91bH1Bhw_HX-zVh6qnARZl8zhl2f-CDtLuLlaKVjUxF3LtZOalJ4tfrDdkgp4Tlmsh_QdeFhaLBsCpAPSQY6DNfuUerRRmB_oTGveIuJpKKoBxyVVA0u26r0AtSLNFP30B0qC-23_'),
(2732, 106, 'deviceType', 'android'),
(2733, 106, 'userImageUrl', ''),
(2734, 106, 'latitude', NULL),
(2735, 106, 'longitude', NULL),
(2736, 106, 'pushNotification', '1'),
(2737, 106, 'broadcastNotification', '1'),
(2738, 106, 'postNotification', '1'),
(2739, 106, 'showPreview', '1'),
(2740, 106, 'quickBloxPaswd', 'UNHZFYAU'),
(2741, 106, 'quickBloxID', '36478549'),
(2742, 106, 'onlineStatus', 'true'),
(2743, 106, 'age', '26'),
(2744, 106, 'gender', ''),
(2745, 106, 'nationality', ''),
(2746, 106, 'officialStatus', ''),
(2747, 106, 'profession', ''),
(2748, 106, 'location', ''),
(2749, 106, 'bio', ''),
(2755, 107, 'nickname', 'Circle@gmail.com'),
(2750, 106, 'facebook', 'rk1@gmail.com'),
(2751, 106, 'twitter', 'rk@twitter.com'),
(2752, 106, 'instagram', ''),
(2753, 106, 'phone', ''),
(2791, 108, 'nickname', 'abc@abc.com'),
(2792, 108, 'first_name', 'abc'),
(2793, 108, 'last_name', ''),
(2794, 108, 'description', ''),
(2756, 107, 'first_name', 'Abhishek'),
(2757, 107, 'last_name', ''),
(2758, 107, 'description', ''),
(2759, 107, 'rich_editing', 'true'),
(2760, 107, 'comment_shortcuts', 'false'),
(2761, 107, 'admin_color', 'fresh'),
(2762, 107, 'use_ssl', '0'),
(2763, 107, 'show_admin_bar_front', 'true'),
(2764, 107, 'locale', ''),
(2765, 107, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2766, 107, 'im_user_level', '0'),
(2767, 107, 'userStatus', '1'),
(2768, 107, 'facebookId', ''),
(2778, 107, 'onlineStatus', 'true'),
(2770, 107, 'deviceType', 'android'),
(2771, 107, 'userImageUrl', 'http://localhost/sona/wp-content/uploads/2017/11/1509720278.jpeg'),
(2772, 107, 'latitude', '0.0'),
(2773, 107, 'longitude', '0.0'),
(2774, 107, 'pushNotification', '1'),
(2775, 107, 'broadcastNotification', '1'),
(2776, 107, 'postNotification', '1'),
(2777, 107, 'showPreview', '1'),
(2779, 107, 'onlineTime', '1509720206'),
(2780, 107, 'age', '50'),
(2781, 107, 'gender', 'Male'),
(2782, 107, 'nationality', 'test'),
(2783, 107, 'officialStatus', 'asylum seeker'),
(2784, 107, 'profession', 'iOS'),
(2785, 107, 'location', 'Saketri Village, Rajiv Gandhi Chandigarh Technology Park Road, Panchkula, India,'),
(2786, 107, 'bio', 'cfthsscvthgffffgvbhyt gfssfetdetggrrggg ghdddfgfsdddfewshytdfv tbdssreqetyjjfed rggs gggswegg geghhjkoorefg yrewetikjewzcbb ghgfdwwqqwttiopppknnd szaqqqerhnnvcxffhjkllircvnmkrewe'),
(2795, 108, 'rich_editing', 'true'),
(2787, 107, 'facebook', 'lcxglgkxxgk'),
(2788, 107, 'twitter', 'glxhxgxh.bb'),
(2789, 107, 'instagram', 'glzhlgzyzhdjcjc'),
(2790, 107, 'phone', '567675756567576756'),
(2796, 108, 'comment_shortcuts', 'false'),
(2797, 108, 'admin_color', 'fresh'),
(2798, 108, 'use_ssl', '0'),
(2799, 108, 'show_admin_bar_front', 'true'),
(2800, 108, 'locale', ''),
(2801, 108, 'im_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(2802, 108, 'im_user_level', '0'),
(2803, 108, 'userStatus', '1'),
(2804, 108, 'facebookId', ''),
(2805, 108, 'firebaseTokenId', ''),
(2806, 108, 'deviceType', 'iOS'),
(2807, 108, 'userImageUrl', ''),
(2808, 108, 'latitude', '30.7269438666'),
(2809, 108, 'longitude', '76.8462380681'),
(2810, 108, 'pushNotification', '1'),
(2811, 108, 'broadcastNotification', '1'),
(2812, 108, 'postNotification', '1'),
(2813, 108, 'showPreview', '1'),
(2814, 108, 'onlineStatus', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `im_users`
--

CREATE TABLE `im_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `im_users`
--

INSERT INTO `im_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'im@rk', '$P$B5ItIfwGtQqHoWS2OcFVq04Xg3oDU2/', 'imrk', 'abhinav@imarkinfotech.com', '', '2017-08-29 10:27:45', '', 0, 'im@rk'),
(2, 'grover.abhinav82@gmail.com', '$P$BbC6MKaT.Dehik.DhOsohgL2bkP.YY/', 'grover-abhinav82gmail-com', 'grover.abhinav82@gmail.com', '', '2017-08-29 11:55:22', '', 0, 'grover.abhinav82@gmail.com'),
(3, 'navneet.kaur@imarkinfotech.com', '$P$B/Q78SBA8jhBlFQVHJNqtgAkeJGJNf1', 'navneet-kaurimarkinfotech-com', 'navneet.kaur@imarkinfotech.com', '', '2017-08-30 12:57:26', '', 0, 'navneet.kaur@imarkinfotech.com'),
(4, 'navneet@gmail.com', '$P$BhgXSBJ99kcOrkZ0Xol5sV71XPZwgV0', 'navneetgmail-com', 'navneet@gmail.com', '', '2017-08-30 13:01:55', '', 0, 'navneet@gmail.com'),
(5, 'navneet1@gmail.com', '$P$BgftpdFf6GftVbhAn5VeSuhtYmgolE.', 'navneet1gmail-com', 'navneet1@gmail.com', '', '2017-08-30 13:03:29', '', 0, 'navneet1@gmail.com'),
(6, 'navneet.kaur@g.com', '$P$B5l7940.Me4nerKlM1V3PLA2MNay6o1', 'navneet-kaurg-com', 'navneet.kaur@g.com', '', '2017-08-30 13:04:46', '', 0, 'navneet.kaur@g.com'),
(7, 'navneet12@g.com', '$P$BaiOSTzml.E1pTQg.3fEwbNFCiG4hJ.', 'navneet12g-com', 'navneet12@g.com', '', '2017-08-30 13:06:02', '', 0, 'navneet12@g.com'),
(8, 'navneet123@gmail.com', '$P$BK.V7HKGpn88Iva413xEvVUhPvF45c.', 'navneet123gmail-com', 'navneet123@gmail.com', '', '2017-08-30 13:06:26', '', 0, 'navneet123@gmail.com'),
(9, 'navneet13552@g.com', '$P$BAthBJgorAkWMfVJfeUAamtQwpNMgG1', 'navneet13552g-com', 'navneet13552@g.com', '', '2017-08-30 13:07:55', '', 0, 'navneet13552@g.com'),
(10, 'navneet1352@g.com', '$P$Blo7gmZE2ojS27oqatgugPsydsrzT21', 'navneet1352g-com', 'navneet1352@g.com', '', '2017-08-30 13:13:06', '', 0, 'navneet1352@g.com'),
(11, 'nav@g.com', '$P$BChQALSUIJtpSMLL.XdYoHSlezIToU/', 'navg-com', 'nav@g.com', '', '2017-08-30 13:17:13', '', 0, 'nav@g.com'),
(12, 'batsitadave91@gmail.com', '$P$BQH72UEnfVVpAXBBY7/3P60hmPhMfb/', 'batsitadave91gmail-com', 'batsitadave91@gmail.com', '', '2017-08-31 06:27:37', '', 0, 'batsitadave91@gmail.com'),
(13, 'diksha@gmail.com', '$P$B14hTHjQePRfJF4rQ9NNFUjOXJyk200', 'dikshagmail-com', 'diksha@gmail.com', '', '2017-09-04 05:32:01', '', 0, 'diksha@gmail.com'),
(14, 'diksha.s@imarkinfotech.com', '$P$B/LeG.UskGTqxs2p4sVHk/nGiWOLUW0', 'diksha-simarkinfotech-com', 'diksha.s@imarkinfotech.com', '', '2017-09-04 05:35:40', '', 0, 'diksha.s@imarkinfotech.com'),
(15, 'new@user.com', '$P$BOwVUkmD6V0vDZUv5cjW/7jE936oaz/', 'newuser-com', 'new@user.com', '', '2017-09-04 05:36:57', '', 0, 'new@user.com'),
(16, 'test@gmail.com', '$P$BcNj5p1Dqvs/YSGQ71GlB6iZI4w/lP1', 'testgmail-com', 'test@gmail.com', '', '2017-09-04 05:38:23', '', 0, 'test@gmail.com'),
(17, 'check@gmail.com', '$P$BhcZRo39fNRQnwlTUYrUNNlmLgrjSi/', 'checkgmail-com', 'check@gmail.com', '', '2017-09-04 05:39:17', '', 0, 'check@gmail.com'),
(18, 'abc@gmail.com', '$P$By5uZA1JOX0WyEPOedkWTbG1LImdT9.', 'abcgmail-com', 'abc@gmail.com', '', '2017-09-04 05:47:20', '', 0, 'abc@gmail.com'),
(19, 'deepak.kapil@imarkinfotech.com', '$P$BXEMJwPp.lCQq97N7m0TvMJEkRKfWi.', 'deepak-kapilimarkinfotech-com', 'deepak.kapil@imarkinfotech.com', '', '2017-09-04 07:29:46', '', 0, 'deepak.kapil@imarkinfotech.com'),
(20, 'rk@gmail.com', '$P$Bkv0U4ACO8FqOBhBeFx2U6Jm7us3Sc0', 'rkgmail-com', 'rk@gmail.com', '', '2017-09-06 05:19:38', '', 0, 'rk@gmail.com'),
(21, 'navv@g.com', '$P$BYKTHVzbIqTxvbp0H9MdXPTmJdiJN91', 'navvg-com', 'navv@g.com', '', '2017-09-06 11:11:44', '', 0, 'navv@g.com'),
(22, 'ankit@g.com', '$P$Bauifk5Z7MCjHJAJ5w9w38evP0u5/h.', 'ankitg-com', 'ankit@g.com', '', '2017-09-07 09:54:20', '', 0, 'ankit@g.com'),
(23, 'navneet1992kaur@gmail.com', '$P$Boxyn.E8muVoVIapIArmero0SNlLcx.', 'navneet1992kaurgmail-com', 'navneet1992kaur@gmail.com', '', '2017-09-07 10:46:59', '', 0, 'navneet1992kaur@gmail.com'),
(24, 'abhi@gmail.com', '$P$B0r0860mNV8EwflfENdmmKjzAFAh441', 'abhigmail-com', 'abhi@gmail.com', '', '2017-09-07 11:08:27', '', 0, 'abhi@gmail.com'),
(25, 'azhar.ali@imarkinfotech.com', '$P$BYjH3.KBiYGwhse9AC/tsRWkW7OeCL1', 'azhar-aliimarkinfotech-com', 'azhar.ali@imarkinfotech.com', '', '2017-09-07 12:03:19', '', 0, 'azhar.ali@imarkinfotech.com'),
(26, 'abhishek@imarkinfotech.com', '$P$B5qRMn83mryMD4qcxj8yAAgdJ7R/t30', 'abhishekimarkinfotech-com', 'abhishek@imarkinfotech.com', '', '2017-09-07 12:17:32', '', 0, 'abhishek@imarkinfotech.com'),
(27, 'grover.abhinav8292@gmail.com', '$P$BstjLK1aE4.eJvc49uDgzxoiCmBs3j.', 'grover-abhinav8292gmail-com', 'grover.abhinav8292@gmail.com', '', '2017-09-08 06:18:09', '', 0, 'grover.abhinav8292@gmail.com'),
(28, 'abhishek@mail.com', '$P$Bs7TMgiRn7Q.5ToynNxUwxYmEERAJY/', 'abhishekmail-com', 'abhishek@mail.com', '', '2017-09-09 07:02:53', '', 0, 'abhishek@mail.com'),
(29, 'a.d.love.as@gmail.com', '$P$B5XFuOF2tA/JrVPcz9dijneU/s/67D0', 'a-d-love-asgmail-com', 'a.d.love.as@gmail.com', '', '2017-09-09 08:16:07', '', 0, 'a.d.love.as@gmail.com'),
(30, 'grover.abhinav@ymail.com', '$P$BsoMAcOvp5VV74QU5GBdAIbBNk6WCb.', 'grover-abhinavymail-com', 'grover.abhinav@ymail.com', '', '2017-09-09 10:26:07', '', 0, 'grover.abhinav@ymail.com'),
(31, 'abh@gmail.com', '$P$BVLfeFWi9ylapZYiR7bGEroSRKx/Ft/', 'abhgmail-com', 'abh@gmail.com', '', '2017-09-09 11:43:18', '', 0, 'abh@gmail.com'),
(32, 'archibald@sonacircle.com', '$P$BuHsE6hHFBc9fSd/jardzJU9OKgohz0', 'archibaldsonacircle-com', 'archibald@sonacircle.com', '', '2017-09-11 10:12:37', '', 0, 'archibald@sonacircle.com'),
(33, 'onaseyeonabolu@gmail.com', '$P$Bb8c.RV/Y3aguimZd.9eoXJmv8ZrUL.', 'onaseyeonabolugmail-com', 'onaseyeonabolu@gmail.com', '', '2017-09-11 10:18:58', '', 0, 'onaseyeonabolu@gmail.com'),
(34, 'rishabh.arora@imarkinfotech.com', '$P$BcxPPJMpV1vr30NsdZcUPPWyMK3n.E1', 'rishabh-aroraimarkinfotech-com', 'rishabh.arora@imarkinfotech.com', '', '2017-09-14 07:31:07', '', 0, 'rishabh.arora@imarkinfotech.com'),
(35, 'rishabh.arora@imarkinfotech.com', '$P$BiPDqSnzdO2yJvcgxB82cTBZbv10ej0', 'rishabh-aroraimarkinfotech-com', 'rishabh.arora@imarkinfotech.com', '', '2017-09-14 07:31:07', '', 0, 'rishabh.arora@imarkinfotech.com'),
(36, 'rishabh.arora@imarkinfotech.com', '$P$B9mzGKA9thGkEBbhtylo2Ci.2RhIu60', 'rishabh-aroraimarkinfotech-com', 'rishabh.arora@imarkinfotech.com', '', '2017-09-14 07:31:07', '', 0, 'rishabh.arora@imarkinfotech.com'),
(37, 'rishabh.arora@imarkinfotech.com', '$P$Br/st4oe9Ant0H4TNQQiBVAWempURV.', 'rishabh-aroraimarkinfotech-com', 'rishabh.arora@imarkinfotech.com', '', '2017-09-14 07:31:07', '', 0, 'rishabh.arora@imarkinfotech.com'),
(38, 'archi.t@me.com', '$P$B61NR7LxxI3Zu7N0yWDO7PEBHdbFOJ.', 'archi-tme-com', 'archi.t@me.com', '', '2017-09-21 13:20:34', '', 0, 'archi.t@me.com'),
(39, 'abhi@imark.com', '$P$B5q8SVqdQIdG4pQP/.sEIhhr1NR69k/', 'abhiimark-com', 'abhi@imark.com', '', '2017-09-22 11:16:51', '', 0, 'abhi@imark.com'),
(40, 'abhi@abhi.com', '$P$BzCJ5FcqxCrFASy./iBer5QYunfq9n0', 'abhiabhi-com', 'abhi@abhi.com', '', '2017-09-22 11:22:34', '', 0, 'abhi@abhi.com'),
(41, 'r@g.com', '$P$B8FtTCinmyVl7RxghmB//4WsOgzW560', 'rg-com', 'r@g.com', '', '2017-09-22 13:39:55', '', 0, 'r@g.com'),
(42, 'abc@g.com', '$P$BbpHvjQnhaXU56bBojMtRe38/A0ENT0', 'abcg-com', 'abc@g.com', '', '2017-09-22 13:43:03', '', 0, 'abc@g.com'),
(43, 'abcd@g.com', '$P$Bcv4VO.KeAZaUaQ2ihUnpSK2QFp9Yx0', 'abcdg-com', 'abcd@g.com', '', '2017-09-22 13:47:56', '', 0, 'abcd@g.com'),
(44, 'abc1@g.com', '$P$BX.lKIvzc.M10SUynSv45hf2sVtsO01', 'abc1g-com', 'abc1@g.com', '', '2017-09-23 05:50:08', '', 0, 'abc1@g.com'),
(45, 'abc2@g.com', '$P$BIithbK6IEibjOKsRrfXgzO2QA5CJO/', 'abc2g-com', 'abc2@g.com', '', '2017-09-23 05:50:33', '', 0, 'abc2@g.com'),
(46, 'abc3@g.com', '$P$BTdt1OAEDFOEly5YrSetpqtLJAuLHt0', 'abc3g-com', 'abc3@g.com', '', '2017-09-23 05:51:29', '', 0, 'abc3@g.com'),
(47, 'abc4@g.com', '$P$BLdJaEtOV6T19a4CpQTBmktMGUgHpc0', 'abc4g-com', 'abc4@g.com', '', '2017-09-23 05:51:46', '', 0, 'abc4@g.com'),
(48, 'swaran@gmail.com', '$P$BUC/WFaGCG4q934y5a7xxIRMF8R2F8/', 'swarangmail-com', 'swaran@gmail.com', '', '2017-09-23 07:05:06', '', 0, 'swaran@gmail.com'),
(49, 'swarantest@gmail.com', '$P$B2BISd1gsgvh7BaNdCzTF0tlNqxa7i/', 'swarantestgmail-com', 'swarantest@gmail.com', '', '2017-09-23 07:06:10', '', 0, 'swarantest@gmail.com'),
(50, 'swaran.imark@gmail.com', '$P$BEJYUgsz5EswCv0eUhNwcGth/NsSnS.', 'swaran-imarkgmail-com', 'swaran.imark@gmail.com', '', '2017-09-23 07:10:03', '', 0, 'swaran.imark@gmail.com'),
(51, 'swaran.fb@gmail.com', '$P$BIjR54.Goqe2YpsqS8lemx/5.XsY2o/', 'swaran-fbgmail-com', 'swaran.fb@gmail.com', '', '2017-09-23 07:10:29', '', 0, 'swaran.fb@gmail.com'),
(52, 'abc5@g.com', '$P$BF2vFrHKbk/rVSO2BmtGrNbqUEyJcM/', 'abc5g-com', 'abc5@g.com', '', '2017-09-23 07:11:13', '', 0, 'abc5@g.com'),
(53, 'abc6@g.com', '$P$B6Qaeisigy.4LRpnjBh6.SCM5OfJw30', 'abc6g-com', 'abc6@g.com', '', '2017-09-23 07:11:24', '', 0, 'abc6@g.com'),
(54, 'abc7@g.com', '$P$Bm4SbQDDv5B5e0ZDAvsvl9Adb0Hfgi.', 'abc7g-com', 'abc7@g.com', '', '2017-09-23 07:11:31', '', 0, 'abc7@g.com'),
(55, 'abc8@g.com', '$P$BOhi2Vk8Xg8nMIfJzf6htUuJhPuIuh1', 'abc8g-com', 'abc8@g.com', '', '2017-09-23 07:16:02', '', 0, 'abc8@g.com'),
(56, 'swaran.imawerk@gmail.com', '$P$BJ4a00zz491O3WdHeRTCBUgIuiLJBC0', 'swaran-imawerkgmail-com', 'swaran.imawerk@gmail.com', '', '2017-09-23 07:19:07', '', 0, 'swaran.imawerk@gmail.com'),
(57, 'swaran.imaaswerk@gmail.com', '$P$BI6ew39n5rCGV0jCB1RqjTG7lkI4T9/', 'swaran-imaaswerkgmail-com', 'swaran.imaaswerk@gmail.com', '', '2017-09-23 07:19:21', '', 0, 'swaran.imaaswerk@gmail.com'),
(58, 'abc9@g.com', '$P$BLlSQFb3ZLvZjCedGTZG/vcBpLLCoR.', 'abc9g-com', 'abc9@g.com', '', '2017-09-23 07:26:25', '', 0, 'abc9@g.com'),
(59, 'Abhi@mail.com', '$P$BV3Favz6ClUEIrR/cc1WespWzS.tca/', 'abhimail-com', 'Abhi@mail.com', '', '2017-09-23 08:09:41', '', 0, 'Abhi@mail.com'),
(60, 'ankit.chhabra@imarkinfotech.com', '$P$Bklct5nBhMBu3zMmvlSlv50CTC3eKE0', 'ankit-chhabraimarkinfotech-com', 'ankit.chhabra@imarkinfotech.com', '', '2017-09-25 07:04:06', '', 0, 'ankit.chhabra@imarkinfotech.com'),
(61, 'priya@sharma.com', '$P$BhIeGSggYzqQfXSOjzUKd6T2NaeVoR.', 'priyasharma-com', 'priya@sharma.com', '', '2017-09-25 10:51:27', '', 0, 'priya@sharma.com'),
(62, 'priya1@sharma.com', '$P$B6ae7Cgg9ZtdS06WnWDvz/L75OxnrH0', 'priya1sharma-com', 'priya1@sharma.com', '', '2017-09-25 10:56:36', '', 0, 'priya1@sharma.com'),
(63, 'sakshi@thakur.com', '$P$BAEfB6ZMdZ0o4E53Bv3mGe.j6rdWrP1', 'sakshithakur-com', 'sakshi@thakur.com', '', '2017-09-25 11:01:57', '', 0, 'sakshi@thakur.com'),
(64, 'Azhar.ali1@imarkinfotech.com', '$P$BQyBt67psTfRM6fxvVe4UrzEMGYe7E0', 'azhar-ali1imarkinfotech-com', 'Azhar.ali1@imarkinfotech.com', '', '2017-09-28 11:24:37', '', 0, 'Azhar.ali1@imarkinfotech.com'),
(65, 'test@g.com', '$P$B9cN.8H2H3bFtUZIZHTRlz55KbY7Ji1', 'testg-com', 'test@g.com', '', '2017-09-28 11:37:30', '', 0, 'test@g.com'),
(66, 'Azhar.ali2@imarkinfotech.com', '$P$Bvz1f9YImNh/SDxPRpfzg4BhRND7Zi.', 'azhar-ali2imarkinfotech-com', 'Azhar.ali2@imarkinfotech.com', '', '2017-09-28 11:53:17', '', 0, 'Azhar.ali2@imarkinfotech.com'),
(67, 'tes1t@g.com', '$P$B5dGnpKNkGo1kIar8iR7ygtkejnpl41', 'tes1tg-com', 'tes1t@g.com', '', '2017-09-28 12:00:29', '', 0, 'tes1t@g.com'),
(68, 'test2@g.com', '$P$B85gQJAuE.3pf23aI3rRnQOxTTVhm90', 'test2g-com', 'test2@g.com', '', '2017-09-28 12:11:51', '', 0, 'test2@g.com'),
(69, 'rishabh@gmail.com', '$P$BsFjaY.N8zMjNNpyjpkTHPkMgISrmn.', 'rishabhgmail-com', 'rishabh@gmail.com', '', '2017-09-28 12:16:10', '', 0, 'rishabh@gmail.com'),
(70, 'Abhinav@gmail.com', '$P$Brtk8cGUYK6qU3p5PmwUyssutGSB5y/', 'abhinavgmail-com', 'Abhinav@gmail.com', '', '2017-09-28 12:20:24', '', 0, 'Abhinav@gmail.com'),
(71, 'Abhina@gmail.com', '$P$BxthKrtuSPKz0yjAEaL8hLccV.AvLN1', 'abhinagmail-com', 'Abhina@gmail.com', '', '2017-09-28 12:32:28', '', 0, 'Abhina@gmail.com'),
(72, 'nav2@g.com', '$P$BjGy/LkKmLI4WG2PVCowU7mTlhTgwM/', 'nav2g-com', 'nav2@g.com', '', '2017-09-28 12:59:29', '', 0, 'nav2@g.com'),
(73, 'abhi@sona.com', '$P$BcfTLQ2v6VtBTh0i8HvS9RkJ8IDZ4q.', 'abhisona-com', 'abhi@sona.com', '', '2017-09-29 12:39:56', '', 0, 'abhi@sona.com'),
(74, 'ravi@sona.com', '$P$BSI59UKuitw3piMXxvuuvmi4.fGi3t1', 'ravisona-com', 'ravi@sona.com', '', '2017-09-29 12:41:19', '', 0, 'ravi@sona.com'),
(75, 'farhanwali98@gmail.com', '$P$Bh/ziFfQLONmRbPGlxcMQ2SOtXneSV0', 'farhanwali98gmail-com', 'farhanwali98@gmail.com', '', '2017-09-29 20:42:35', '', 0, 'farhanwali98@gmail.com'),
(76, 'farhanwali6@gmail.com', '$P$Bj3VCtXLpTvUpRcQeD/sgjL0AwYelJ.', 'farhanwali6gmail-com', 'farhanwali6@gmail.com', '', '2017-09-30 16:19:16', '', 0, 'farhanwali6@gmail.com'),
(77, 'farhanaliw6@gmail.com', '$P$BNoXlP0xnG/0qBdWYyZ49VpmXO.qAE0', 'farhanaliw6gmail-com', 'farhanaliw6@gmail.com', '', '2017-09-30 16:20:52', '', 0, 'farhanaliw6@gmail.com'),
(78, 'christiana373@hotmail.com', '$P$BB8y.2F/jQJBYALGxV/jfpw44I0ukT.', 'christiana373hotmail-com', 'christiana373@hotmail.com', '', '2017-09-30 18:48:17', '', 0, 'christiana373@hotmail.com'),
(79, 'login@log.in', '$P$B/KFcuQfKSkGQIEVYE1dr5uaJXOgBo.', 'loginlog-in', 'login@log.in', '', '2017-10-03 11:08:19', '', 0, 'login@log.in'),
(80, 'nk@g.com', '$P$BfWDHpPs1oGtmhhLYDUIG0iEXLm/Gf0', 'nkg-com', 'nk@g.com', '', '2017-10-05 07:28:45', '', 0, 'nk@g.com'),
(81, 'nk1@g.com', '$P$BvDUtx1j2ZIp2uPAZCsO1uFpFmxMqC0', 'nk1g-com', 'nk1@g.com', '', '2017-10-05 07:33:08', '', 0, 'nk1@g.com'),
(82, 'Ankita@mittra.com', '$P$B2c46M.sOxh.3gvAAEks5rEcV6J7BE/', 'ankitamittra-com', 'Ankita@mittra.com', '', '2017-10-05 07:37:23', '', 0, 'Ankita@mittra.com'),
(83, 'nn@g.com', '$P$BrobfaCYxj1Xysl5hVrOqI6KSwdHeu/', 'nng-com', 'nn@g.com', '', '2017-10-05 07:40:58', '', 0, 'nn@g.com'),
(84, 'ravi@imark.com', '$P$B.C0/WBsbdNzetFi7iH.b6op3v5hkc1', 'raviimark-com', 'ravi@imark.com', '', '2017-10-06 08:10:23', '', 0, 'ravi@imark.com'),
(85, 'saini@imark.com', '$P$BHEu5lVE6kgLfOx6ArMCPbwbxNHDze.', 'sainiimark-com', 'saini@imark.com', '', '2017-10-06 08:10:47', '', 0, 'saini@imark.com'),
(86, 'test@testing.com', '$P$BNhGfRd3Fl0wJ4ZRLufW/oO1/oJa3z/', 'testtesting-com', 'test@testing.com', '', '2017-10-09 11:28:02', '', 0, 'test@testing.com'),
(87, 'yiee@yo.com', '$P$B00QU3o4P20WdOG5GG7kMUFVX/9HZq.', 'yieeyo-com', 'yiee@yo.com', '', '2017-10-09 12:43:07', '', 0, 'yiee@yo.com'),
(88, 'Ravi.saini@imarkinfotech.com', '$P$B7fXIfQX4ag1GpTH9Ky2LlXbCckA/Y/', 'ravi-sainiimarkinfotech-com', 'Ravi.saini@imarkinfotech.com', '', '2017-10-10 11:27:28', '', 0, 'Ravi.saini@imarkinfotech.com'),
(89, 'Sahil@imarkinfotech.com', '$P$BJJnemQFDDurzw6tIC1aet2n7Ap/5V.', 'sahilimarkinfotech-com', 'Sahil@imarkinfotech.com', '', '2017-10-10 12:26:42', '', 0, 'Sahil@imarkinfotech.com'),
(91, 'pmegalanathan@gmail.com', '$P$BLWnuJA.F3bzcBoecm89Ivawlnj4cg0', 'pmegalanathangmail-com', 'pmegalanathan@gmail.com', '', '2017-10-16 14:48:32', '', 0, 'pmegalanathan@gmail.com'),
(92, 'sharad@imarkinfotech.com', '$P$BoHXKaq.hc48g8VYTjVHDE3l.gWlAS/', 'sharadimarkinfotech-com', 'sharad@imarkinfotech.com', '', '2017-10-24 06:46:12', '', 0, 'sharad@imarkinfotech.com'),
(93, 'sharad@imarkinfotech.comq', '$P$BuVWDSEl31hD5vtpuuuG6hAnrz/E8K0', 'sharadimarkinfotech-comq', 'sharad@imarkinfotech.comq', '', '2017-10-24 06:47:33', '', 0, 'sharad@imarkinfotech.comq'),
(94, 'Ravi.sainiimarkinfotech.com', '$P$Bt.kgyPndZMXZc7TrCq0Ngpj3x/sjc1', 'ravi-sainiimarkinfotech-com-2', '', '', '2017-10-26 10:50:34', '', 0, 'Ravi.sainiimarkinfotech.com'),
(95, 'sansarwal.abhishek@gmail.com', '$P$BfLNG5bWudIKLjEU5UFJcMku5jqk6M0', 'sansarwal-abhishekgmail-com', 'sansarwal.abhishek@gmail.com', '', '2017-10-27 05:30:28', '', 0, 'sansarwal.abhishek@gmail.com'),
(96, 'yo@yo.com', '$P$B7ecMTAgoyDhHNISyFA9lrrnDzRC4S0', 'yoyo-com', 'yo@yo.com', '', '2017-10-27 10:22:42', '', 0, 'yo@yo.com'),
(97, 'yoo@yo.com', '$P$BqaaNEqq9ztKDduZTH3VF53QAX3Fyn0', 'yooyo-com', 'yoo@yo.com', '', '2017-10-27 10:23:48', '', 0, 'yoo@yo.com'),
(98, 'yes@no.com', '$P$BYwDwZCRR7lFXGXadmufECP1I/XJPc0', 'yesno-com', 'yes@no.com', '', '2017-10-27 10:37:34', '', 0, 'yes@no.com'),
(99, 'Sona@circle.com', '$P$BH6eBNyPYx1sf9RFpawkliCGlB6tuA.', 'sonacircle-com', 'Sona@circle.com', '', '2017-10-27 10:57:34', '', 0, 'Sona@circle.com'),
(100, 'shikha.kochar@imarkinfotech.com', '$P$BQzjxBVhuphsa2Me1Xe7dFmOcWRtlh.', 'shikha-kocharimarkinfotech-com', 'shikha.kochar@imarkinfotech.com', '', '2017-10-27 11:18:31', '', 0, 'shikha.kochar@imarkinfotech.com'),
(101, 'a@b.com', '$P$B3c8En8cDGf2NmcVhCIYF1czlu51Ax.', 'ab-com', 'a@b.com', '', '2017-10-27 11:22:17', '', 0, 'a@b.com'),
(102, 'asd@gmail.com', '$P$Bi.4kUgZqoaOfR1P637ebZ0jJ.HORy/', 'asdgmail-com', 'asd@gmail.com', '', '2017-11-02 09:49:16', '', 0, 'asd@gmail.com'),
(103, 'xyz@xyz.com', '$P$Bk3XlRWrJWMyS6Iqd8D7urbtugHpzJ.', 'xyzxyz-com', 'xyz@xyz.com', '', '2017-11-02 10:07:55', '', 0, 'xyz@xyz.com'),
(104, 'sahil.thakur@imarkinfotech.com', '$P$BY348pBSgzcIVie.j68HtDADTKJ5vl1', 'sahil-thakurimarkinfotech-com', 'sahil.thakur@imarkinfotech.com', '', '2017-11-02 12:45:34', '', 0, 'sahil.thakur@imarkinfotech.com'),
(105, 'Ravi.saini@gmail.com', '$P$BB8PgsPAs5n7dvhR8D3ZVwi.w6.lkv1', 'ravi-sainigmail-com', 'Ravi.saini@gmail.com', '', '2017-11-03 04:57:19', '', 0, 'Ravi.saini@gmail.com'),
(106, 'rk1@gmail.com', '$P$BODKQIOF395yjMtgjTBwwavYybJj5X/', 'rk1gmail-com', 'rk1@gmail.com', '', '2017-11-03 05:24:12', '', 0, 'rk1@gmail.com'),
(107, 'Circle@gmail.com', '$P$B6ImA2dYebmwouBeRdd1HsiF.UzK.m1', 'circlegmail-com', 'Circle@gmail.com', '', '2017-11-03 10:39:42', '', 0, 'Circle@gmail.com'),
(108, 'abc@abc.com', '$P$B6hlsHfVRvlfdnBsTX.WFrPYoHeMND/', 'abcabc-com', 'abc@abc.com', '', '2017-11-03 12:50:41', '', 0, 'abc@abc.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `im_admin_feeds`
--
ALTER TABLE `im_admin_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_commentmeta`
--
ALTER TABLE `im_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `im_comments`
--
ALTER TABLE `im_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `im_conects`
--
ALTER TABLE `im_conects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_connects_requests`
--
ALTER TABLE `im_connects_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_discussion`
--
ALTER TABLE `im_discussion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_discussion_category`
--
ALTER TABLE `im_discussion_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_discussion_comment`
--
ALTER TABLE `im_discussion_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_discussion_like`
--
ALTER TABLE `im_discussion_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_discussion_rel`
--
ALTER TABLE `im_discussion_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_discussion_unlike`
--
ALTER TABLE `im_discussion_unlike`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_dis_like_com`
--
ALTER TABLE `im_dis_like_com`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_dis_unlike_com`
--
ALTER TABLE `im_dis_unlike_com`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_education`
--
ALTER TABLE `im_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_experiance`
--
ALTER TABLE `im_experiance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_feeds`
--
ALTER TABLE `im_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_feeds_like`
--
ALTER TABLE `im_feeds_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_feeds_spam`
--
ALTER TABLE `im_feeds_spam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_feed_comment`
--
ALTER TABLE `im_feed_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_group_chat`
--
ALTER TABLE `im_group_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_interests`
--
ALTER TABLE `im_interests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_language`
--
ALTER TABLE `im_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_links`
--
ALTER TABLE `im_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `im_notifications`
--
ALTER TABLE `im_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_options`
--
ALTER TABLE `im_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `im_postmeta`
--
ALTER TABLE `im_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `im_posts`
--
ALTER TABLE `im_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `im_rm_fields`
--
ALTER TABLE `im_rm_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `im_rm_forms`
--
ALTER TABLE `im_rm_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `im_rm_front_users`
--
ALTER TABLE `im_rm_front_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_rm_notes`
--
ALTER TABLE `im_rm_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `im_rm_paypal_fields`
--
ALTER TABLE `im_rm_paypal_fields`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `im_rm_paypal_logs`
--
ALTER TABLE `im_rm_paypal_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_rm_rules`
--
ALTER TABLE `im_rm_rules`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `im_rm_sent_mails`
--
ALTER TABLE `im_rm_sent_mails`
  ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `im_rm_sessions`
--
ALTER TABLE `im_rm_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_rm_stats`
--
ALTER TABLE `im_rm_stats`
  ADD PRIMARY KEY (`stat_id`);

--
-- Indexes for table `im_rm_submissions`
--
ALTER TABLE `im_rm_submissions`
  ADD PRIMARY KEY (`submission_id`);

--
-- Indexes for table `im_rm_submission_fields`
--
ALTER TABLE `im_rm_submission_fields`
  ADD PRIMARY KEY (`sub_field_id`);

--
-- Indexes for table `im_rm_tasks`
--
ALTER TABLE `im_rm_tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `im_rm_task_exe_log`
--
ALTER TABLE `im_rm_task_exe_log`
  ADD PRIMARY KEY (`texe_log_id`);

--
-- Indexes for table `im_skills`
--
ALTER TABLE `im_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_skills_endorsement`
--
ALTER TABLE `im_skills_endorsement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_termmeta`
--
ALTER TABLE `im_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `im_terms`
--
ALTER TABLE `im_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `im_term_relationships`
--
ALTER TABLE `im_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `im_term_taxonomy`
--
ALTER TABLE `im_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `im_usermeta`
--
ALTER TABLE `im_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `im_users`
--
ALTER TABLE `im_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `im_admin_feeds`
--
ALTER TABLE `im_admin_feeds`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `im_commentmeta`
--
ALTER TABLE `im_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `im_comments`
--
ALTER TABLE `im_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `im_conects`
--
ALTER TABLE `im_conects`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `im_connects_requests`
--
ALTER TABLE `im_connects_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT for table `im_discussion`
--
ALTER TABLE `im_discussion`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `im_discussion_category`
--
ALTER TABLE `im_discussion_category`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `im_discussion_comment`
--
ALTER TABLE `im_discussion_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `im_discussion_like`
--
ALTER TABLE `im_discussion_like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `im_discussion_rel`
--
ALTER TABLE `im_discussion_rel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `im_discussion_unlike`
--
ALTER TABLE `im_discussion_unlike`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `im_dis_like_com`
--
ALTER TABLE `im_dis_like_com`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `im_dis_unlike_com`
--
ALTER TABLE `im_dis_unlike_com`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `im_education`
--
ALTER TABLE `im_education`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `im_experiance`
--
ALTER TABLE `im_experiance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `im_feeds`
--
ALTER TABLE `im_feeds`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;
--
-- AUTO_INCREMENT for table `im_feeds_like`
--
ALTER TABLE `im_feeds_like`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
--
-- AUTO_INCREMENT for table `im_feeds_spam`
--
ALTER TABLE `im_feeds_spam`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `im_feed_comment`
--
ALTER TABLE `im_feed_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
--
-- AUTO_INCREMENT for table `im_group_chat`
--
ALTER TABLE `im_group_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `im_interests`
--
ALTER TABLE `im_interests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `im_language`
--
ALTER TABLE `im_language`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `im_links`
--
ALTER TABLE `im_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `im_notifications`
--
ALTER TABLE `im_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `im_options`
--
ALTER TABLE `im_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1355;
--
-- AUTO_INCREMENT for table `im_postmeta`
--
ALTER TABLE `im_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `im_posts`
--
ALTER TABLE `im_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `im_rm_fields`
--
ALTER TABLE `im_rm_fields`
  MODIFY `field_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `im_rm_forms`
--
ALTER TABLE `im_rm_forms`
  MODIFY `form_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `im_rm_front_users`
--
ALTER TABLE `im_rm_front_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `im_rm_notes`
--
ALTER TABLE `im_rm_notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `im_rm_paypal_fields`
--
ALTER TABLE `im_rm_paypal_fields`
  MODIFY `field_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `im_rm_paypal_logs`
--
ALTER TABLE `im_rm_paypal_logs`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `im_rm_rules`
--
ALTER TABLE `im_rm_rules`
  MODIFY `rule_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `im_rm_sent_mails`
--
ALTER TABLE `im_rm_sent_mails`
  MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `im_rm_stats`
--
ALTER TABLE `im_rm_stats`
  MODIFY `stat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `im_rm_submissions`
--
ALTER TABLE `im_rm_submissions`
  MODIFY `submission_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `im_rm_submission_fields`
--
ALTER TABLE `im_rm_submission_fields`
  MODIFY `sub_field_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `im_rm_tasks`
--
ALTER TABLE `im_rm_tasks`
  MODIFY `task_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `im_rm_task_exe_log`
--
ALTER TABLE `im_rm_task_exe_log`
  MODIFY `texe_log_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `im_skills`
--
ALTER TABLE `im_skills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `im_skills_endorsement`
--
ALTER TABLE `im_skills_endorsement`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `im_termmeta`
--
ALTER TABLE `im_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `im_terms`
--
ALTER TABLE `im_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `im_term_taxonomy`
--
ALTER TABLE `im_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `im_usermeta`
--
ALTER TABLE `im_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2820;
--
-- AUTO_INCREMENT for table `im_users`
--
ALTER TABLE `im_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

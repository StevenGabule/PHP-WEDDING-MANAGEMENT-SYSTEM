-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2018 at 02:04 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbwedding`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `startdate` varchar(48) NOT NULL,
  `enddate` varchar(48) NOT NULL,
  `allDay` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `startdate`, `enddate`, `allDay`) VALUES
(2, 'New Event', '2018-02-25T00:00:00+2:00', '2018-02-25T00:00:00+2:00', 'false'),
(3, 'New Event', '2018-03-06T00:00:00+2:00', '2018-03-06T00:00:00+2:00', 'false'),
(4, 'New Event', '2018-03-02T00:00:00+2:00', '2018-03-02T00:00:00+2:00', 'false'),
(5, 'New Event', '2018-02-27T00:00:00+2:00', '2018-02-27T00:00:00+2:00', 'false'),
(6, 'New Event', '2018-03-06T00:00:00+2:00', '2018-03-06T00:00:00+2:00', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `color` varchar(7) DEFAULT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `booking_id`, `title`, `location`, `date_created`, `color`, `start`, `end`) VALUES
(1, 0, 'captone is coming', 'aclc', '2018-03-07 03:12:52', '#40E0D0', '2018-03-07 00:00:00', '2018-03-08 00:00:00'),
(2, 1, 'ACLC Letgo', 'Malaybalay', '2018-03-07 03:13:59', '#40E0D0', '2018-03-08 00:00:00', '2018-03-09 00:00:00'),
(3, 2, 'go to church', 'valencia city ', '2018-03-07 18:06:30', '#FF0000', '2018-03-19 08:00:00', '2018-03-19 20:00:00'),
(4, 2, 'go to churchs', 'valencia city ', '2018-03-07 18:07:11', '#FF0000', '2018-03-09 07:30:00', '2018-03-09 21:00:00'),
(5, 2, 'cool', 'asdasd', '2018-03-07 18:09:28', '#FFD700', '2018-03-07 00:00:00', '2018-03-08 00:00:00'),
(6, 2, 'asdas', 'asdasd', '2018-03-07 18:10:10', '', '2018-03-07 00:00:00', '2018-03-08 00:00:00'),
(7, 2, 'asd', 'asdasd', '2018-03-07 18:14:36', '#FF8C00', '2018-03-09 00:00:00', '2018-03-10 00:00:00'),
(8, 1, 'go to churchs', 'asdasd', '2018-03-07 18:15:03', '#008000', '2018-03-07 06:00:00', '2018-03-07 10:00:00'),
(9, 1, 'asdasdas', 'asdasd', '2018-03-07 18:15:53', '#008000', '2018-03-09 00:00:00', '2018-03-10 00:00:00'),
(10, 1, 'asd', 'asdasd', '2018-03-07 18:18:44', '#008000', '2018-03-09 00:00:00', '2018-03-10 00:00:00'),
(11, 0, 'ASD', 'ASDASD', '2018-03-07 18:21:58', '#008000', '2018-03-10 00:00:00', '2018-03-11 00:00:00'),
(12, 0, 'ASD', 'ASDASD', '2018-03-07 18:22:26', '#008000', '2018-03-10 00:00:00', '2018-03-11 00:00:00'),
(13, 0, 'ADASD', 'ASDASD', '2018-03-07 18:22:38', '', '2018-03-10 00:00:00', '2018-03-11 00:00:00'),
(14, 0, 'ADASD', 'ASDASD', '2018-03-07 18:23:01', '', '2018-03-10 00:00:00', '2018-03-11 00:00:00'),
(15, 0, 'ADASD', 'ASDASD', '2018-03-07 18:23:14', '', '2018-03-10 00:00:00', '2018-03-11 00:00:00'),
(16, 0, 'asdasdas', 'asdasd', '2018-03-07 18:24:16', '#008000', '2018-03-08 00:00:00', '2018-03-09 00:00:00'),
(17, 0, 'asdasdas', 'asdasd', '2018-03-07 18:24:35', '#008000', '2018-03-08 00:00:00', '2018-03-09 00:00:00'),
(18, 0, 'asdasdas', 'asdasd', '2018-03-07 18:24:48', '#40E0D0', '2018-03-08 00:00:00', '2018-03-09 00:00:00'),
(19, 0, 'asdasdas', 'asdasd', '2018-03-07 18:24:59', '#40E0D0', '2018-03-08 00:00:00', '2018-03-09 00:00:00'),
(20, 0, 'asdas', 'asdasd', '2018-03-07 18:26:49', '#40E0D0', '2018-03-13 00:00:00', '2018-03-14 00:00:00'),
(21, 0, 'asdas', 'asdasd', '2018-03-07 18:27:21', '#40E0D0', '2018-03-14 00:00:00', '2018-03-15 00:00:00'),
(22, 0, 'asd', 'asdasd', '2018-03-07 18:29:41', '', '2018-03-15 00:00:00', '2018-03-16 00:00:00'),
(23, 0, 'asda', 'asda', '2018-03-07 18:29:49', '', '2018-03-15 00:00:00', '2018-03-16 00:00:00'),
(24, 0, 'asda', 'asda', '2018-03-07 18:34:59', '', '2018-03-19 00:00:00', '2018-03-23 00:00:00'),
(25, 0, 'asdasd', 'asdasd', '2018-03-07 18:35:15', '#0071c5', '2018-03-16 00:00:00', '2018-03-17 00:00:00'),
(26, 0, 'asdasd', 'asdasd', '2018-03-07 18:36:27', '#0071c5', '2018-03-16 00:00:00', '2018-03-17 00:00:00'),
(27, 0, 'asdasd', 'asdasd', '2018-03-07 18:36:44', '#0071c5', '2018-03-22 00:00:00', '2018-03-23 00:00:00'),
(28, 0, 'asdsda', 'asdads', '2018-03-07 18:37:53', '#40E0D0', '2018-03-17 00:00:00', '2018-03-18 00:00:00'),
(29, 0, 'asdasdas', 'asdasd', '2018-03-07 18:38:01', '', '2018-03-17 00:00:00', '2018-03-18 00:00:00'),
(30, 1, 'asdasd', 'asdasd', '2018-03-07 18:40:48', '#008000', '2018-03-15 00:00:00', '2018-03-16 00:00:00'),
(31, 2, 'asdasdas', 'asdas', '2018-03-07 18:40:56', '#FF0000', '2018-03-13 00:00:00', '2018-03-14 00:00:00'),
(32, 2, 'asd', 'asdasdas', '2018-03-07 18:41:18', '#40E0D0', '2018-03-14 00:00:00', '2018-03-15 00:00:00'),
(33, 1, 'cool', 'location', '2018-03-08 03:43:53', '#FF8C00', '2018-03-07 00:00:00', '2018-03-08 00:00:00'),
(34, 1, 'school activity', 'valencia city', '2018-03-09 07:12:23', '#40E0D0', '2018-03-16 00:00:00', '2018-03-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblaccounts`
--

CREATE TABLE `tblaccounts` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `access_level` enum('0','1','2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccounts`
--

INSERT INTO `tblaccounts` (`user_id`, `user_email`, `user_password`, `access_level`) VALUES
(1, 'antoniomoreno@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(2, 'ComercioMineiro@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(3, 'easternconnection@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(4, 'asdsdaasdsad@gmail.com', '337cd00d0815c91b388c7f5f959bc402', ''),
(5, 'lucas.gabule@gmail.com', 'f67c2bcbfcfa30fccb36f72dca22a817', ''),
(6, 'asdas@gmail.com', 'a8f5f167f44f4964e6c998dee827110c', ''),
(7, 'asdassss@gmail.com', 'a8f5f167f44f4964e6c998dee827110c', ''),
(8, 'assssdas@gmail.com', '7ba790899ee1c11007d79974d815bc2e', ''),
(9, 'santoniomoreno@gmail.com', '5278536a32d07ce18f876feaf18eae02', ''),
(10, 'aaaa@gmail.com', '88e42e96cc71151b6e1938a1699b0a27', ''),
(11, 'aasdadss@gmail.com', '406f0868272dbbc166bf85ec84550a3d', ''),
(12, 'aasdas@gmail.com', '630082199e41059979f101ca18e4aa83', ''),
(13, 'asdasd@gmail.com', '5811b64ffd2fa7116580dafa02d9bb7b', ''),
(14, 'youres@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(15, 'emailmes@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(16, 'coll@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(17, 'coollsa@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(18, 'emailems@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(19, 'posad@gmail.com', 'b2e5a77d9f96e83519cdcfdf1261b61e', ''),
(20, 'awesE@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(21, 'asdasdasdsad@gmail.com', 'd9f92c5c08ad9d7dd4e1a7b58d0fd0ac', ''),
(22, 'asdasdsaww@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(23, 'firstnames@gmail.com', '', ''),
(24, 'asdasssd@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblaccounts_detail`
--

CREATE TABLE `tblaccounts_detail` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text NOT NULL,
  `location` text NOT NULL,
  `expectation_visitor` varchar(100) NOT NULL,
  `cash_advanced` decimal(10,2) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_signed` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccounts_detail`
--

INSERT INTO `tblaccounts_detail` (`id`, `user_id`, `firstname`, `lastname`, `phone`, `city`, `datetime_created`, `description`, `location`, `expectation_visitor`, `cash_advanced`, `status`, `date_signed`) VALUES
(1, 1, 'Antonio Moreno', 'Taqueria', '09898984645', 'Valencia City', '2018-03-05 16:03:18', 'description', 'location', '100', '110000.00', 'confirm', '0000-00-00 00:00:00'),
(2, 2, 'Comercio', 'Mineiro', '092649889898', 'S&atilde;o Paulo', '2018-03-06 22:03:05', 'clean and net job', 'maynila flores', '100', '100000.00', 'confirm', '0000-00-00 00:00:00'),
(3, 3, 'Janine', 'Labrune', '', '', '2018-03-08 14:03:03', '', '', '', '0.00', 'pending', '0000-00-00 00:00:00'),
(4, 4, 'asdsda', 'asdsad', '', '', '2018-03-08 14:03:35', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(5, 5, 'firstname', 'lastname', '', '', '2018-03-08 14:03:36', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(6, 6, 'aaaaa', 'bbbbbb', '', '', '2018-03-08 14:03:40', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(7, 7, 'aaaaa', 'bbbbbb', '', '', '2018-03-08 14:03:41', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(8, 8, 'adasd', 'asdasd', '', '', '2018-03-08 14:03:42', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(9, 9, 'asdasd', 'asdasd', '', '', '2018-03-08 14:03:44', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(10, 10, 'assa', 'asd', '', '', '2018-03-08 14:03:47', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(11, 11, 'assad', 'asdsad', '', '', '2018-03-08 14:03:51', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(12, 12, 'adasd', 'asdasd', '', '', '2018-03-08 14:03:53', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(13, 13, 'asdasd', 'asdsad', '', '', '2018-03-08 14:03:54', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(14, 14, 'firsntame', 'lastname', '', '', '2018-03-08 14:03:57', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(15, 15, 'firstname', 'lastname', '', '', '2018-03-08 15:03:00', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(16, 16, 'cool firstname', 'awesome last', '', '', '2018-03-08 15:03:01', '', '', '', '0.00', '', '0000-00-00 00:00:00'),
(17, 17, 'frstname', 'cool lastname', '', '', '2018-03-08 15:03:02', '', '', '', '0.00', 'pending', '0000-00-00 00:00:00'),
(18, 18, 'firstname', 'lastname', '095968899888', '', '2018-03-08 01:03:31', '', '', '', '0.00', 'pending', '0000-00-00 00:00:00'),
(19, 19, 'firstnames', 'lastname', '095968899888', '', '2018-03-08 01:03:34', '', '', '', '0.00', 'pending', '0000-00-00 00:00:00'),
(20, 20, 'firstnames', 'lastnames', '095968899888', '', '2018-03-08 01:03:42', '', '', '', '0.00', 'pending', '0000-00-00 00:00:00'),
(21, 21, 'firsntassss', 'lasttassss', '09259688998', '', '2018-03-08 01:03:46', '', '', '', '0.00', 'cancel', '0000-00-00 00:00:00'),
(22, 22, 'pota ka sir maningski', 'samoka', '09259688998', '', '2018-03-08 01:03:48', '', '', '', '0.00', 'pending', '0000-00-00 00:00:00'),
(23, 23, 'firstname', 'lastname', '0981521212121', '', '2018-03-09 02:03:01', '', '', '', '0.00', 'pending', '0000-00-00 00:00:00'),
(24, 24, 'firstname', 'lastname', '09265989888', '', '2018-03-09 02:03:44', '', '', '', '0.00', 'pending', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblgallery`
--

CREATE TABLE `tblgallery` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `filename` varchar(100) NOT NULL,
  `alternate_text` varchar(100) NOT NULL,
  `type` char(5) NOT NULL,
  `size` varchar(10) NOT NULL,
  `relate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgallery`
--

INSERT INTO `tblgallery` (`id`, `booking_id`, `title`, `caption`, `description`, `filename`, `alternate_text`, `type`, `size`, `relate_id`) VALUES
(37, 0, '', '', '', 'daniel-suarez-photography-107973-unsplash.jpg', '', 'image', '2479437', 0),
(38, 0, '', '', '', 'gianni-scognamiglio-7554-unsplash.jpg', '', 'image', '2820934', 0),
(39, 0, '', '', '', 'melanie-villeneuve-39759-unsplash.jpg', '', 'image', '5121866', 0),
(40, 0, '', '', '', 'poul-edward-erni-321424-unsplash.jpg', '', 'image', '679501', 0),
(41, 0, '', '', '', 'orio-nguyen-266209-unsplash.jpg', '', 'image', '3809750', 0),
(42, 0, '', '', '', 'saad-70763-unsplash.jpg', '', 'image', '4129034', 0),
(43, 0, '', '', '', 'shardayyy-photography-113795-unsplash.jpg', '', 'image', '3636968', 0),
(44, 0, '', '', '', 'suhyeon-choi-369970-unsplash.jpg', '', 'image', '288915', 0),
(45, 0, '', '', '', 'soroush-karimi-387505-unsplash.jpg', '', 'image', '1873863', 0),
(46, 0, '', '', '', 'sweet-ice-cream-photography-93638-unsplash.jpg', '', 'image', '1154733', 0),
(47, 0, '', '', '', 'tom-the-photographer-246984-unsplash.jpg', '', 'image', '2296450', 0),
(48, 0, '', '', '', 'vladu-adrian-555423-unsplash.jpg', '', 'image', '2327879', 0),
(50, 0, '', '', '', 'micheile-henderson-406428-unsplash.jpg', '', 'image', '1921040', 0),
(51, 0, '', '', '', 'zelle-duda-365988-unsplash.jpg', '', 'image', '872033', 0),
(52, 1, 'Capturing Your Very Moment', '', '', 'anna-utochkina-343525-unsplash.jpg', '', 'image', '1306847', 0),
(53, 0, '', '', '', 'daniel-lee-367341-unsplash.jpg', '', 'image', '1713706', 0),
(54, 2, 'Picture the moment of truth', 'wedding and buffey', 'asdasdasd', 'laura-santana-385964-unsplash.jpg', '', 'image', '1218614', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblguest`
--

CREATE TABLE `tblguest` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `guestname` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `state` char(4) NOT NULL,
  `zipcode` char(10) NOT NULL,
  `priority` enum('A','B','C','D','E') NOT NULL,
  `out_of_town` enum('y','n') NOT NULL,
  `relationship` varchar(32) NOT NULL,
  `tracks_and_gifts` text NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblguest`
--

INSERT INTO `tblguest` (`id`, `booking_id`, `fullname`, `guestname`, `address`, `state`, `zipcode`, `priority`, `out_of_town`, `relationship`, `tracks_and_gifts`, `city`) VALUES
(1, 1, 'josh dragon', 'josh', 'valencia', 'ph', '9098', 'A', 'y', 'g', 'asdasdsad', 'valencia'),
(2, 1, 'jane gest', 'jane', 'address', 'ph', '9807', 'A', 'y', 'b', 'color thing', 'valencia city'),
(3, 2, 'jane gest', 'jane', 'address', 'ph', '9807', 'A', 'y', 'b', 'color thing', 'valencia city'),
(4, 1, 'joshua deasi', 'designa', 'san fernando', 'ph', '0982', 'A', 'y', 'g', 'asdasdasdasdasd', 'asdsad');

-- --------------------------------------------------------

--
-- Table structure for table `tblorganizer`
--

CREATE TABLE `tblorganizer` (
  `organizer_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `datetime_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpostwedding`
--

CREATE TABLE `tblpostwedding` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `preview_image` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `wedding_date` varchar(100) NOT NULL,
  `wedding_type` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `date_published` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpostwedding`
--

INSERT INTO `tblpostwedding` (`id`, `title`, `description`, `preview_image`, `location`, `status`, `wedding_date`, `wedding_type`, `date_created`, `date_published`) VALUES
(31, 'MR. &amp; MRS. DANTES', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'dantes.png', 'Valencia', '1', '04/30/2018', 'Timeless Gold', 'March 8, 2018, 11:23 am', 'March 8, 2018, 1:08 pm'),
(32, 'MR. &amp; MRS. BIRCHMORE', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod Tempor', '20160726_160113.jpg', 'Malaybalay City Aguston Church', '0', '04/30/2018', 'Timeless Diamond', 'March 8, 2018, 11:29 am', ''),
(35, 'MR. MRS Sibayan', 'Descirption', '28168745_1573098786077811_8814578966199923530_n.jpg', 'Christ the King Parish, Greenmeadows, Quezon City', '1', '02/20/2018', 'Timeless Gold', 'March 4, 2018, 11:44 am', 'March 8, 2018, 12:41 pm'),
(40, 'MR. &amp; MRS. Jongko', 'description', '15875976_1713766532286808_7531147285778923520_n.jpg', 'Nayomi Sanctuary Resort', '1', '02/20/2018', 'Timeless Gold', 'March 4, 2018, 11:44 am', 'March 8, 2018, 12:34 pm'),
(45, 'MR. MRS  Arellano', 'cool', 'photography.jpg', 'Kawayan Cove, Nasugbu, Batangas', '1', '02/20/2018', 'Elegant', 'March 4, 2018, 11:44 am', 'March 8, 2018, 12:26 pm'),
(50, 'MR. MRS. Chief and Maya', 'Cool', 'wed1.jpg', 'Basilica de Taal, Villa Escudero', '1', '02/20/2018', 'classic', 'March 4, 2018, 11:44 am', 'March 8, 2018, 12:23 pm'),
(52, 'MR. &amp; MRS. Juliet', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod Tempor', '26814773_1537909339596756_7864036470931191354_n.jpg', 'Malaybalay City Aguston Church', '1', '04/30/2018', 'Timeless Diamond', 'March 8, 2018, 11:29 am', 'March 8, 2018, 12:47 pm'),
(55, 'MR. &amp; MRS. heussaffs', 'descripiton', 'heusaff.jpg', 'Manila City, Taguig', '1', '02/20/2018', 'Timeless', 'March 4, 2018, 11:44 am', 'March 8, 2018, 1:08 pm'),
(57, 'MR. &amp; MRS. Lito', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod Tempor', '26992106_1543974935656863_2265666169791974639_n.jpg', 'Malaybalay City Aguston Church', '1', '04/30/2018', 'Elegant', 'March 8, 2018, 11:29 am', 'March 8, 2018, 12:45 pm'),
(60, 'MR. &amp; MRS. MANIQUIN', 'Cool work', 'mananquil.jpg', 'San Fernando', '1', '02/20/2018', 'Timeless', 'March 4, 2018, 11:44 am', 'March 8, 2018, 12:19 pm'),
(62, 'MR. &amp; MRS. Apple', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod Tempor', '27459212_570960956575259_7816686993270651729_n.jpg', 'Malaybalay City Aguston Church', '1', '04/30/2018', 'Timeless', 'March 8, 2018, 11:29 am', 'March 8, 2018, 12:43 pm'),
(65, 'MR. &amp; MRS. CLAYFORM', 'Cool', 'carwford.png', 'vavava', '1', '02/20/2018', 'Timeless Diamond', 'March 4, 2018, 11:44 am', 'March 8, 2018, 12:17 pm'),
(67, 'MR. &amp; MRS. Jeosid &amp; Rosy', 'Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing Elit, Sed Do Eiusmod Tempor', '28424745_586993021638719_3423414047600800319_o.jpg', 'Malaybalay City Aguston Church', '1', '04/30/2018', 'Elegant', 'March 8, 2018, 11:29 am', 'March 8, 2018, 12:40 pm'),
(69, 'MR. &amp; MRS. Ayons', 'description', '26685173_562764694061552_5173047582151550021_o.jpg', 'Roadhouse Cafe,Valencia City', '1', '03/29/2018', 'classic', 'March 8, 2018, 11:50 am', 'March 9, 2018, 2:06 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `access_level` enum('0','1','2') NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `date_created` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `firstname`, `lastname`, `gender`, `username`, `password`, `email`, `designation`, `address`, `access_level`, `profile_picture`, `date_created`) VALUES
(5, 'Wency B', 'Tejada', 'f', 'wency_21', '5f4dcc3b5aa765d61d8327deb882cf99', 'wencybalungcastejada@gmail.com', '0', 'Grand Meadows', '', '28378932_2018162738400690_2078687451632475091_n.jpg', 'March 6, 2018, 5:15 pm'),
(7, 'firstnames', 'lastnames', 'f', 'usernames', '5f4dcc3b5aa765d61d8327deb882cf99', 'emailmess@gmail.com', '1', 'addresss', '', 'k.jpg', 'March 6, 2018, 3:45 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblweddingbook`
--

CREATE TABLE `tblweddingbook` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bride` varchar(32) NOT NULL,
  `groom` varchar(32) NOT NULL,
  `wedding_type` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `wedding_date` varchar(100) NOT NULL,
  `organizer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblweddingbook`
--

INSERT INTO `tblweddingbook` (`booking_id`, `user_id`, `bride`, `groom`, `wedding_type`, `user_email`, `wedding_date`, `organizer_id`) VALUES
(1, 1, 'Jane Doe', 'John Dee', 3, 'santoniomoreno@gmail.com', '03/30/2018', 1),
(2, 2, 'Elizabeth Brown', 'Pedro Afonso', 4, 'ComercioMineiro@gmail.com', '03/30/2018', 1),
(3, 3, '', '', 0, '', '03/30/2018', 0),
(4, 4, '', '', 0, '', '03/30/2018', 0),
(5, 5, '', '', 0, '', '03/30/2018', 0),
(6, 6, '', '', 0, '', '03/30/2018', 0),
(7, 7, '', '', 0, '', '03/30/2018', 0),
(8, 8, '', '', 0, '', '03/30/2018', 0),
(9, 9, '', '', 0, '', '03/30/2018', 0),
(10, 10, '', '', 0, '', '03/30/2018', 0),
(11, 11, '', '', 0, '', '03/30/2018', 0),
(12, 12, '', '', 0, '', '03/08/2018', 0),
(13, 13, '', '', 0, '', '03/31/2018', 0),
(14, 14, '', '', 0, '', '04/02/2018', 0),
(15, 15, '', '', 0, 'emailmes@gmail.com', '04/28/2018', 0),
(16, 16, '', '', 0, 'coll@gmail.com', '05/18/2018', 0),
(17, 17, '', '', 0, 'coollsa@gmail.com', '05/24/2018', 0),
(18, 18, '', '', 0, 'emailems@gmail.com', '04/27/2018', 0),
(19, 19, '', '', 0, 'posad@gmail.com', '05/25/2018', 0),
(20, 20, '', '', 0, 'awesE@gmail.com', '03/27/2018', 0),
(21, 21, '', '', 5, 'asdasdasdsad@gmail.com', '06/08/2018', 0),
(22, 22, '', '', 5, 'asdasdsaww@gmail.com', '06/23/2018', 0),
(23, 23, '', '', 0, 'firstnames@gmail.com', '06/15/2018', 0),
(24, 24, '', '', 0, 'asdasssd@gmail.com', '07/07/2018', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblweddingcategories`
--

CREATE TABLE `tblweddingcategories` (
  `id` int(11) NOT NULL,
  `wedding_type` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `preview_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblweddingcategories`
--

INSERT INTO `tblweddingcategories` (`id`, `wedding_type`, `price`, `preview_image`) VALUES
(1, 'classic', '100000.00', 'download.jpg'),
(2, 'Elegant', '125000.00', 'download1.jpg'),
(3, 'Timeless', '150000.00', 'timeless wed.jpg'),
(4, 'Timeless Gold', '170000.00', 'timeless gold.jpg'),
(5, 'Timeless Diamond', '225000.00', 'timeless.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `feature_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`feature_id`, `category_id`, `title`, `description`) VALUES
(2, 2, 'hair and make up', 'limitedss'),
(3, 2, 'Photographer', 'unlimited shot\r\nSoftCopy(CD/DVD)'),
(4, 5, 'Hair And Make Up', 'unlimited shot'),
(7, 5, 'Church Decoration', 'Food from the heart'),
(8, 1, 'Hair And Make Up', 'Our own professional worker'),
(9, 5, 'Sumptous Buffet Meal for 100 pax', '4 main courses. Rice 2 dessert and softdrinks/juices/tea\r\nfamily dine for the principal sponsors'),
(10, 1, 'Sumptous Buffet Meal', 'unlimited rice'),
(11, 1, 'Church Decoration', 'Leaving with us to decor everything'),
(12, 5, 'Hair And Make Up', 'from our salon and hair cut'),
(13, 5, 'Sumptous Buffet Meal', 'eat all you can'),
(15, 4, 'Church Decoration', 'cool'),
(16, 4, 'Hair And Make Up', 'hair cut that will change you life'),
(17, 5, 'Full wedding planning coordination and management', 'no description'),
(18, 5, 'Reception Decor', 'Stage decor backdrop, red carpet for the bride centerpiece'),
(19, 4, 'Sumptous Buffet Meal for 100 pax', '3 Main Courses. Rice 2 dessert and soft drinks/Juices/Tea'),
(20, 5, 'Full Wedding Planning Coordination And Management', 'no description'),
(21, 4, 'Photographer', 'unlimited shot'),
(22, 4, 'Full Wedding Planning Coordination And Management', 'no description'),
(23, 4, 'Reception Decor', 'Stage Decor'),
(24, 3, 'Hair And Make Up', 'unlimited shot'),
(25, 3, 'Sumptous Buffet Meal', 'Unlimited Rice'),
(26, 3, 'Full wedding planning coordination and management', 'no description'),
(27, 3, 'Church Decoration', 'We clean everything');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_liquidation`
--

CREATE TABLE `tbl_liquidation` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `credit` decimal(10,2) NOT NULL,
  `date_issue` varchar(100) NOT NULL,
  `date_modified` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_liquidation`
--

INSERT INTO `tbl_liquidation` (`id`, `booking_id`, `user_id`, `event_id`, `payment`, `cash`, `credit`, `date_issue`, `date_modified`) VALUES
(1, 1, 1, 34, '10000.00', '10000.00', '0.00', 'March 10, 2018, 5:16 pm', 'March 9, 2018, 1:46 pm'),
(2, 1, 1, 30, '2022.00', '2022.00', '0.00', 'March 11, 2018, 1:16 pm', ''),
(3, 1, 1, 33, '4500.00', '2500.00', '20000.00', 'March 12, 2018, 8:16 am', ''),
(4, 1, 1, 8, '2000.00', '1000.00', '1000.00', 'June 10, 2018, 5:16 pm', ''),
(5, 2, 2, 8, '2000.00', '1000.00', '1000.00', 'June 10, 2018, 5:16 pm', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblaccounts`
--
ALTER TABLE `tblaccounts`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tblaccounts_detail`
--
ALTER TABLE `tblaccounts_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblgallery`
--
ALTER TABLE `tblgallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblguest`
--
ALTER TABLE `tblguest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblorganizer`
--
ALTER TABLE `tblorganizer`
  ADD PRIMARY KEY (`organizer_id`);

--
-- Indexes for table `tblpostwedding`
--
ALTER TABLE `tblpostwedding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblweddingbook`
--
ALTER TABLE `tblweddingbook`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `tblweddingcategories`
--
ALTER TABLE `tblweddingcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `tbl_liquidation`
--
ALTER TABLE `tbl_liquidation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `tblaccounts_detail`
--
ALTER TABLE `tblaccounts_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tblgallery`
--
ALTER TABLE `tblgallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `tblguest`
--
ALTER TABLE `tblguest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblorganizer`
--
ALTER TABLE `tblorganizer`
  MODIFY `organizer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblpostwedding`
--
ALTER TABLE `tblpostwedding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblweddingbook`
--
ALTER TABLE `tblweddingbook`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tblweddingcategories`
--
ALTER TABLE `tblweddingcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `feature_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_liquidation`
--
ALTER TABLE `tbl_liquidation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

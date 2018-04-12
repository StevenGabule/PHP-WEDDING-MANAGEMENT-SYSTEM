-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2018 at 09:53 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

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
(1, 'email@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '0'),
(3, 'aldemermontano@yahoo.com', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(4, 'aldemermontano@yahoo.com', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(5, 'aldemermontano@yahoo.com', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(6, 'Moncadaaldemermontano@yahoo.com', '6a5bcc944b870a23079dc23a6af8ab25', ''),
(8, 'asd@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(9, 'dassd@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(10, 'dasssd@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', ''),
(11, 'eedasssd@gmail.com', '112a942e04abea528be5ceb02a2dc27b', ''),
(12, 'eeeedasssd@gmail.com', '8ef8a845551b189945ebef7287530a40', ''),
(13, 'eeeedasssd@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(14, 'eeeedasssd@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', '');

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
  `datetime_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccounts_detail`
--

INSERT INTO `tblaccounts_detail` (`id`, `user_id`, `firstname`, `lastname`, `phone`, `city`, `datetime_created`) VALUES
(1, 1, 'Daniel', 'Tonini', '9264980816', 'Germany', '0000-00-00 00:00:00'),
(2, 2, 'Carloss', 'eYorresse', '7501205033', 'Mexico', '0000-00-00 00:00:00'),
(3, 3, 'dete', 'asas', '6099409494049', 'aldemermontano', '2018-02-26 19:02:11'),
(4, 4, 'firsntame', 'lastname', '6099409494049', 'aldemermontano', '2018-02-26 19:02:12'),
(5, 5, 'Renate', 'Messner', '6099409494049', 'Venezuela', '2018-02-26 19:02:13'),
(6, 6, 'Moncada', 'Moncada Del', '6099409494049', 'aldemermontano', '2018-02-26 19:02:13'),
(8, 8, 'assad', 'asadasd', '09264980816', 'valencia', '2018-02-27 03:02:30'),
(9, 9, 'Dassad', 'Dasadasd', '09264980816', 'valencia', '2018-02-27 03:02:31'),
(10, 10, 'Dasssads', 'Dsasadasd', '09264980816', 'valencia', '2018-02-27 18:02:14'),
(11, 11, 'eeeDasssads', 'eeDsasadasd', '09264980816', 'valencia', '2018-02-27 18:02:17'),
(12, 12, 'eeeDasssadsee', 'eeDsasadasd', '09264980816', 'valencia', '2018-02-27 18:02:18'),
(13, 13, 'eeeDasssadsee', 'eeDsasadasd', '09264980816', 'valencia', '2018-02-27 18:02:24'),
(14, 14, 'eeeDasssadsee', 'eeDsasadasd', '09264980816', 'valencia', '2018-02-27 18:02:27');

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
(2, 8, 'EMaison Dewey', 'ECatherine', 'ERue Joseph-Bens 532', 'BES', 'EB-1180', 'E', 'y', 'b', 'no giftE', 'EBruxelles'),
(3, 8, 'Morgenstern Gesundkost', 'Alexander', 'Heerstr. 22', 'DS', '092695', 'A', 'y', 'b', 'send a letter card', 'Leipzig'),
(4, 9, 'Morgenstern Gesundkost', 'Alexander', 'Heerstr. 22', 'DS', '092695', 'A', 'y', 'b', 'send a letter card', 'Leipzig'),
(5, 7, 'Morgenstern Gesundkost', 'Alexander', 'Heerstr. 22', 'DS', '092695', 'A', 'y', 'b', 'send a letter card', 'Leipzig'),
(6, 8, 'Queen Cozinha', 'Carvalho', 'Alameda dos Can&agrave;rios, 891', 'SP', '05487-020', 'A', 'y', 'b', 'little bear  and color brown', 'S&atilde;o Paulo');

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
(1, 1, 'Yoshi Tannamuri', 'John Steel', 1, 'email@gmail.com', '02/16/2018', 1),
(2, 2, 'Giovanni Rovelli', 'Catherine Dewey', 1, 'eeVeesssillsss@gmail.com', '03/01/2018', 1),
(3, 3, 'asdsad', 'asdas', 1, 'detealdemermontano@yahoo.com', '03/23/2018', 1),
(4, 4, 'brinda as', 'groomas', 1, 'aldemermontano@yahoo.com', '03/23/2018', 1),
(5, 5, 'Jaime Yorres', 'Felipe Izquierdo', 1, 'aldemermontano@yahoo.com', '03/23/2018', 1),
(6, 6, 'Bride\'s name Moncada', 'Groom\'s name Moncada', 1, 'Moncadaaldemermontano@yahoo.com', '03/24/2018', 1),
(8, 8, 'John Paul Lim Gabule', 'Flodelyn G. Maduay', 3, 'asd@gmail.com', '02/28/2018', 1),
(9, 9, 'daddasd', 'dasdasdasd', 4, 'dassd@gmail.com', '02/20/2018', 1),
(10, 10, 'Bride\'s name', 'Groom\'s name Moncada', 4, 'dasssd@gmail.com', '02/25/2018', 1),
(11, 11, 'Bride\'s name', 'Groom\'s name Moncada', 4, 'eedasssd@gmail.com', '02/28/2018', 1),
(12, 12, 'Bride\'s name', 'Groom\'s name Moncada', 4, 'eeeedasssd@gmail.com', '', 1),
(13, 13, 'Bride\'s name', 'Groom\'s name Moncada', 4, 'eeeedasssd@gmail.com', '', 1),
(14, 14, 'Bride\'s name', 'Groom\'s name Moncada', 4, 'eeeedasssd@gmail.com', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblweddingcategories`
--

CREATE TABLE `tblweddingcategories` (
  `id` int(11) NOT NULL,
  `wedding_type` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblweddingcategories`
--

INSERT INTO `tblweddingcategories` (`id`, `wedding_type`, `price`) VALUES
(1, 'classic', '100000.00'),
(2, 'Elegant', '125000.00'),
(3, 'Timeless', '150000.00'),
(4, 'Timeless Gold', '170000.00'),
(5, 'Timeless Diamond', '225000.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`id`, `category_id`, `title`, `description`) VALUES
(2, 2, 'hair and make up', 'limited'),
(3, 2, 'Photographer', 'unlimited shot\r\nSoftCopy(CD/DVD)'),
(4, 5, 'asdsad', 'asdasdsa');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccounts_detail`
--
ALTER TABLE `tblaccounts_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblguest`
--
ALTER TABLE `tblguest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblorganizer`
--
ALTER TABLE `tblorganizer`
  MODIFY `organizer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblweddingbook`
--
ALTER TABLE `tblweddingbook`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblweddingcategories`
--
ALTER TABLE `tblweddingcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

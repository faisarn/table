-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2019 at 11:28 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `router`
--

-- --------------------------------------------------------

--
-- Table structure for table `sample_data`
--

CREATE TABLE `sample_data` (
  `id` int(10) NOT NULL,
  `serial_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dummy` int(255) NOT NULL,
  `holder` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('holding','store','bad') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dates` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sample_data`
--

INSERT INTO `sample_data` (`id`, `serial_number`, `dummy`, `holder`, `status`, `dates`) VALUES
(1, 'fdsg', 5567, 'gg', 'holding', '2019-07-25 08:27:10'),
(3, 'Tiny', 0, '19', '', '2019-07-25 08:01:53'),
(4, 'Dolores', 0, '29', '', '2019-07-25 08:01:53'),
(5, 'Cindy', 0, '24', '', '2019-07-25 08:01:53'),
(6, 'George', 0, '30', '', '2019-07-25 08:01:53'),
(7, 'Chelsea', 0, '18', '', '2019-07-25 08:01:53'),
(8, 'Wayne', 0, '27', '', '2019-07-25 08:01:53'),
(9, 'Keith', 0, '26', '', '2019-07-25 08:01:53'),
(10, 'Eric', 0, '31', '', '2019-07-25 08:01:53'),
(11, 'Robert', 0, '42', '', '2019-07-25 08:01:53'),
(12, 'Candace', 0, '27', '', '2019-07-25 08:01:53'),
(13, 'Hortencia', 0, '30', '', '2019-07-25 08:01:53'),
(14, 'William', 0, '36', '', '2019-07-25 08:01:53'),
(15, 'Patricia', 0, '23', '', '2019-07-25 08:01:53'),
(17, 'Nancy', 0, '21', '', '2019-07-25 08:01:53'),
(24, 'sssssswq', 123456, 'pp', 'holding', '2019-07-25 08:01:53'),
(27, 'dasdsa', 12, 'dsds', 'holding', '2019-07-25 08:01:53'),
(28, 'w12q', 44, 'hh', 'store', '2019-07-25 08:01:53'),
(32, 'dasdadddaaa', 12345612, 'ds', 'holding', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sample_data`
--
ALTER TABLE `sample_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sample_data`
--
ALTER TABLE `sample_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

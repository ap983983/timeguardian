-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2019 at 04:37 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timeguardian`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty_recent_task`
--

CREATE TABLE `faculty_recent_task` (
  `msg_id` int(10) NOT NULL,
  `msg_det` varchar(100) DEFAULT NULL,
  `msgdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `hod_id` varchar(45) DEFAULT NULL COMMENT '	',
  `fac_id` varchar(45) DEFAULT NULL COMMENT '	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_recent_task`
--

INSERT INTO `faculty_recent_task` (`msg_id`, `msg_det`, `msgdate`, `hod_id`, `fac_id`) VALUES
(1, 'hello i am learning python', '2019-01-15 23:16:04', '1506810041', 'MUR06801'),
(2, 'manage meeting', '2019-01-26 11:46:12', 'MUR06801', 'MUR06801');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty_recent_task`
--
ALTER TABLE `faculty_recent_task`
  ADD PRIMARY KEY (`msg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `faculty_recent_task`
--
ALTER TABLE `faculty_recent_task`
  MODIFY `msg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

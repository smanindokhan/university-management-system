-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 05:10 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '098f6bcd4621d373cade4e832627b4f6', '2021-05-19 16:21:18', '10-04-2021 08:38:24 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `prerequisite` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `prerequisite`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(32, 'Maths1', 'Maths', NULL, 'NA', 1, '2021-06-04 14:42:42', NULL),
(33, 'Chem1', 'Chemistry', NULL, 'NA', 5, '2021-06-04 14:42:50', NULL),
(34, 'Maths2', 'Maths Advanced', NULL, 'Maths', 10, '2021-06-04 14:43:11', NULL),
(35, 'Phy1', 'Physics', NULL, 'NA', 5, '2021-06-04 14:43:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(20, '001', '', 1, 1, 5, 4, 32, '2021-06-04 14:45:04'),
(21, '002', '', 1, 1, 5, 5, 33, '2021-06-04 14:45:56'),
(22, '002', '', 3, 2, 6, 5, 35, '2021-06-13 14:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'CSE', '2017-02-09 18:52:00'),
(2, 'BBA', '2017-02-09 18:52:04'),
(3, 'EEE', '2017-02-09 18:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(5, 'level 1', '2017-02-09 19:04:04'),
(6, 'level 2', '2017-02-09 19:04:12'),
(7, 'level 3', '2017-02-09 19:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite`
--

CREATE TABLE `prerequisite` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `PrecourseCode` varchar(255) NOT NULL,
  `PrecourseName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(4, '1', '2017-02-09 18:47:59', ''),
(5, '2', '2017-02-09 18:48:04', ''),
(6, '3', '2018-05-21 10:02:56', ''),
(7, '4', '2021-04-10 15:08:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(1, '2018', '2017-02-09 18:16:51'),
(2, '2019', '2017-02-09 18:27:41'),
(3, '2020', '2018-05-21 10:01:54'),
(4, '2021', '2018-05-21 10:01:58'),
(6, '2022', '2021-05-22 01:25:56');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('001', '1200px-SpongeBob_SquarePants_character.svg.png', '098f6bcd4621d373cade4e832627b4f6', 'Spongebob', '1', NULL, NULL, NULL, '4.00', '2021-06-04 14:41:35', NULL),
('002', '', '098f6bcd4621d373cade4e832627b4f6', 'Patrick', '1', NULL, NULL, NULL, '4.00', '2021-06-04 14:41:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, '004', 0x3a3a3100000000000000000000000000, '2021-04-10 16:21:17', '10-04-2021 09:51:51 PM', 1),
(27, '001', 0x3a3a3100000000000000000000000000, '2021-04-10 16:41:06', '10-04-2021 10:12:07 PM', 1),
(28, '001', 0x3a3a3100000000000000000000000000, '2021-04-10 16:43:17', NULL, 1),
(29, '001', 0x3a3a3100000000000000000000000000, '2021-04-13 16:47:56', '13-04-2021 06:50:18 PM', 1),
(30, '001', 0x3a3a3100000000000000000000000000, '2021-04-13 17:04:18', '13-04-2021 07:05:50 PM', 1),
(31, '003', 0x3a3a3100000000000000000000000000, '2021-04-13 17:06:12', NULL, 1),
(32, '001', 0x3a3a3100000000000000000000000000, '2021-04-13 17:29:11', NULL, 1),
(33, '001', 0x3a3a3100000000000000000000000000, '2021-04-13 17:36:05', '13-04-2021 07:42:32 PM', 1),
(34, '001', 0x3a3a3100000000000000000000000000, '2021-05-02 15:31:12', '02-05-2021 05:36:30 PM', 1),
(35, '001', 0x3a3a3100000000000000000000000000, '2021-05-02 15:36:34', '02-05-2021 06:34:28 PM', 1),
(36, '001', 0x3a3a3100000000000000000000000000, '2021-05-02 16:34:32', '02-05-2021 06:34:35 PM', 1),
(37, '001', 0x3a3a3100000000000000000000000000, '2021-05-02 16:40:50', '02-05-2021 06:41:55 PM', 1),
(38, '002', 0x3a3a3100000000000000000000000000, '2021-05-02 16:42:01', NULL, 1),
(39, '001', 0x3a3a3100000000000000000000000000, '2021-05-18 05:37:32', NULL, 1),
(40, '001', 0x3a3a3100000000000000000000000000, '2021-06-04 10:28:30', NULL, 1),
(41, '001', 0x3a3a3100000000000000000000000000, '2021-06-04 14:41:56', '04-06-2021 04:42:00 PM', 1),
(42, '001', 0x3a3a3100000000000000000000000000, '2021-06-04 14:44:40', '04-06-2021 04:45:19 PM', 1),
(43, '002', 0x3a3a3100000000000000000000000000, '2021-06-04 14:45:23', NULL, 1),
(44, '001', 0x3a3a3100000000000000000000000000, '2021-06-04 15:39:42', NULL, 1),
(45, '001', 0x3a3a3100000000000000000000000000, '2021-06-05 03:58:27', '05-06-2021 06:02:34 AM', 1),
(46, '001', 0x3a3a3100000000000000000000000000, '2021-06-05 04:36:01', '05-06-2021 06:37:31 AM', 1),
(47, '001', 0x3a3a3100000000000000000000000000, '2021-06-05 05:13:04', '05-06-2021 07:15:45 AM', 1),
(48, '001', 0x3a3a3100000000000000000000000000, '2021-06-05 05:57:22', '05-06-2021 07:58:31 AM', 1),
(49, '002', 0x3a3a3100000000000000000000000000, '2021-06-05 05:58:35', NULL, 1),
(50, '001', 0x3a3a3100000000000000000000000000, '2021-06-13 13:30:35', '13-06-2021 04:04:24 PM', 1),
(51, '001', 0x3a3a3100000000000000000000000000, '2021-06-13 14:25:07', '13-06-2021 04:26:02 PM', 1),
(52, '002', 0x3a3a3100000000000000000000000000, '2021-06-13 14:26:12', NULL, 1),
(53, '001', 0x3a3a3100000000000000000000000000, '2021-06-29 15:07:20', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prerequisite`
--
ALTER TABLE `prerequisite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prerequisite`
--
ALTER TABLE `prerequisite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

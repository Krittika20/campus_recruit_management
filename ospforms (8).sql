-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 07:42 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ospforms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AID` int(11) NOT NULL,
  `ANAME` text NOT NULL,
  `AEID` text NOT NULL,
  `APASS` text NOT NULL,
  `APH` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `ANAME`, `AEID`, `APASS`, `APH`) VALUES
(1, 'admin', 'admin@gmail.com', 'adminadmin', '9999999999');

-- --------------------------------------------------------

--
-- Table structure for table `contactform`
--

CREATE TABLE `contactform` (
  `CID` int(11) NOT NULL,
  `FNAME` text NOT NULL,
  `LNAME` text NOT NULL,
  `EID` text NOT NULL,
  `PHNO` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactform`
--

INSERT INTO `contactform` (`CID`, `FNAME`, `LNAME`, `EID`, `PHNO`) VALUES
(1, 'Minnallagari Puneetha Reddy', 'puneetha', 'puneethaminnalla789@gmail.com', '9603345831'),
(2, 'sumanth', 'atchi', 'sumanth.atchi@gmail.com', '8919240391'),
(3, 'kritti', 'chaturvedi', 'kritti.chaturvedi@gmail.com', '6597883683');

-- --------------------------------------------------------

--
-- Table structure for table `cusers`
--

CREATE TABLE `cusers` (
  `CID` int(11) NOT NULL,
  `CNAME` text NOT NULL,
  `CEID` text NOT NULL,
  `CPASS` text NOT NULL,
  `CPH` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cusers`
--

INSERT INTO `cusers` (`CID`, `CNAME`, `CEID`, `CPASS`, `CPH`) VALUES
(1, 'virtusa', 'virtusa@gmail.com', 'c87559b7313d7486841baac63256cd0a', '9999999999'),
(2, 'intel', 'intel@gmail.com', '3f39de9f221a5525458ef5cf8c1f7567', '8888888888'),
(3, 'qualcomm', 'qualcomm@gmail.com', '8454adff4ca9c75d2037a0db766dbaa9', '7777777777');

-- --------------------------------------------------------

--
-- Table structure for table `postjobs`
--

CREATE TABLE `postjobs` (
  `companyname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `jobtype` varchar(50) NOT NULL,
  `salary` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `postjobs`
--

INSERT INTO `postjobs` (`companyname`, `email`, `venue`, `jobtype`, `salary`) VALUES
('virtusa', 'virtusa@gmail.com', 'Banglore', 'super dream placement', '10,00,000 (per annum)'),
('qualcomm', 'qualcomm@gmail.com', 'Hyderabad', 'dream placement', '6,00,000 (per annum)'),
('Intel', 'intel@gmail.com', 'Banglore', 'super dream internship', '7,00,000 (per annum)');

-- --------------------------------------------------------

--
-- Table structure for table `sprofile`
--

CREATE TABLE `sprofile` (
  `SNAME` varchar(50) NOT NULL,
  `SEID` varchar(50) NOT NULL,
  `SPH` bigint(10) NOT NULL,
  `SSK` varchar(100) NOT NULL,
  `SPR` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sprofile`
--

INSERT INTO `sprofile` (`SNAME`, `SEID`, `SPH`, `SSK`, `SPR`) VALUES
('Minnallagari Puneetha Reddy ', 'puneethaminnalla789@gmail.com', 9603345831, 'PHP,HTML,C LANGUAGE', 'campus recruitment management system'),
('Sumanth Atchi', 'sumanth@gmail.com', 8919240391, 'PHP,HTML,C LANGUAGE,Python', 'campus recruitment management system'),
('Kritti Chaturvedi', 'kritti@gmail.com', 9008946291, 'PHP,HTML,C LANGUAGE, Python', 'campus recruitment management system');

-- --------------------------------------------------------

--
-- Table structure for table `studentexp`
--

CREATE TABLE `studentexp` (
  `cname` varchar(50) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `suggestion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `NAME` text NOT NULL,
  `EMAIL` text NOT NULL,
  `PASSWORD` text NOT NULL,
  `PHONE` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`NAME`, `EMAIL`, `PASSWORD`, `PHONE`, `ID`) VALUES
('Minnallagari Puneetha Reddy ', 'puneethaminnalla789@gmail.com', '6c8293506b315f6f7a5d67e009fde10c', '9603345831', 1),
('Sumanth Atchi', 'sumanth@gmail.com', '5229998bc4dbbe73cc1060b3293a0a29', '8919240391', 2),
('Kritti Chaturvedi', 'kritti@gmail.com', '2b2ba0f9329cabd1fd3a89dcc82274b0', '9008946291', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `contactform`
--
ALTER TABLE `contactform`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `cusers`
--
ALTER TABLE `cusers`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactform`
--
ALTER TABLE `contactform`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cusers`
--
ALTER TABLE `cusers`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

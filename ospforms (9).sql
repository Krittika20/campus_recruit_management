-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2020 at 10:15 AM
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
(3, 'kritti', 'chaturvedi', 'kritti.chaturvedi@gmail.com', '6597883683'),
(4, 'Sumanth', 'a', 'sumanthrajuatchi@gmail.com', '8919240391');

-- --------------------------------------------------------

--
-- Table structure for table `cusers`
--

CREATE TABLE `cusers` (
  `CID` int(11) NOT NULL,
  `CNAME` text NOT NULL,
  `CEID` text NOT NULL,
  `CPASS` text NOT NULL,
  `CPH` text NOT NULL,
  `CHEAD` varchar(50) NOT NULL,
  `CSIZE` varchar(50) NOT NULL,
  `CINFO` varchar(50) NOT NULL,
  `CIND` varchar(50) NOT NULL,
  `CFDB` varchar(50) NOT NULL,
  `CTYP` varchar(50) NOT NULL,
  `CWEB` varchar(50) NOT NULL,
  `CINT` blob NOT NULL,
  `CSPE` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cusers`
--

INSERT INTO `cusers` (`CID`, `CNAME`, `CEID`, `CPASS`, `CPH`, `CHEAD`, `CSIZE`, `CINFO`, `CIND`, `CFDB`, `CTYP`, `CWEB`, `CINT`, `CSPE`) VALUES
(1, 'Minnallagari Puneetha Reddy puneetha', 'puneethaminnalla789@gmail.com', '089a46c96a13ec392d9c3d447c120d29', '9603345831', 'ssss', 'dsfdf', 'dsfdsf', 'fdsfds', 'dsfdsfsf', 'dfdsfdf', 'fdffffffffds', 0x6473666466646666646664736664736664736664666466646664666664, 0x66736466),
(2, 'Sunayana Reddy Minnallagari', 'sunayana.reddy2017@vitstudent.ac.in', '94364c191242a0e1c2278278ff4d4281', '9003307491', 'hdfghdsf', 'sssssssssssssss', 'sssssssssssss', 'fdsfds', 'ssssssssssss', 'ssssssssssssss', 'sssssssssssssssss', 0x6473666466646666646664736664736664736664666466646664666664, 0x7373737373737373737373737373737373),
(3, 'Sumanth Atchi', 'sumanth.atchi@gmail.com', '461b179a5d6fc2c960576ff8bd4bc6b2', '9999999999', 'pppppppp', 'pppppppp', 'pppppppp', 'pppppppp', 'pppppppp', 'pppppppp', 'pppppppp', 0x70707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070, 0x7070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070707070);

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
('Kritti Chaturvedi', 'kritti@gmail.com', 9008946291, 'PHP,HTML,C LANGUAGE, Python', 'campus recruitment management system'),
('Sumanth Raju', 'sumanthrajuatchi@gmail.com', 1234567, 'C,C++,JAVA,PYTHON,JAVASCRIPT', 'Campus recruitement system,Tasty bites and more on the way'),
('Sumanth Raju', 'sumanthrajuatchi@gmail.com', 8919240931, 'C,C++,JAVA,PYTHON,JAVASCRIPT', 'Campus recruitement system,Tasty bites and more on the way');

-- --------------------------------------------------------

--
-- Table structure for table `studentexp`
--

CREATE TABLE `studentexp` (
  `EXID` int(11) NOT NULL,
  `email` text NOT NULL,
  `cname` varchar(50) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `mode` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `suggestion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentexp`
--

INSERT INTO `studentexp` (`EXID`, `email`, `cname`, `salary`, `mode`, `experience`, `suggestion`) VALUES
(17, 'puneethaminnalla789@gmail.com', 'efewr', 'dsfdsffsdffdsf', 'dsadsad', 'sadsdsad', 'dsdsads');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `NAME` text NOT NULL,
  `EMAIL` text NOT NULL,
  `PASSWORD` text NOT NULL,
  `PHONE` text NOT NULL,
  `SKILLS` text NOT NULL,
  `PROJECTS` text NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`NAME`, `EMAIL`, `PASSWORD`, `PHONE`, `SKILLS`, `PROJECTS`, `ID`) VALUES
('Sumanth Raju', 'rajuatchi@gmail.com', 'e486c4074231ea077fc7a78b4548c8c2', '1234567890', 'python', 'python project', 10),
('Sunayana Reddy Minnallagari', 'sunayana@gmail.com', '33b37cae1b5a6495a1fc46f7d3afd0ab', '9003307491', 'PHP,HTML,C LANGUAGE,Python', 'campus', 12);

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
-- Indexes for table `studentexp`
--
ALTER TABLE `studentexp`
  ADD PRIMARY KEY (`EXID`);

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
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cusers`
--
ALTER TABLE `cusers`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `studentexp`
--
ALTER TABLE `studentexp`
  MODIFY `EXID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

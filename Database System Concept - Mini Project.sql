-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2019 at 09:36 PM
-- Server version: 8.0.16
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tfaa`
--
CREATE DATABASE IF NOT EXISTS `tfaa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `tfaa`;

-- --------------------------------------------------------

--
-- Table structure for table `aircraft`
--

CREATE TABLE `aircraft` (
  `ACID` int(11) NOT NULL,
  `ACModel` varchar(32) NOT NULL,
  `ACCapacity` int(11) NOT NULL,
  `ALID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `aircraft`
--

INSERT INTO `aircraft` (`ACID`, `ACModel`, `ACCapacity`, `ALID`) VALUES
(1, 'KE1500', 310, 1),
(2, 'KE2000', 310, 2),
(3, 'KE4000', 310, 3),
(4, 'KE8000', 330, 1),
(5, 'KE9000', 380, 2);

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `ALID` int(11) NOT NULL,
  `ALName` varchar(32) NOT NULL,
  `CPerson` varchar(32) NOT NULL,
  `CTelephone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`ALID`, `ALName`, `CPerson`, `CTelephone`) VALUES
(1, 'KamAir', 'Ahmad Khan', '07123132123'),
(2, 'Safi', 'Jamal', '07123132123'),
(3, 'Ariana', 'Rahman', '07123132123');

-- --------------------------------------------------------

--
-- Table structure for table `buy`
--

CREATE TABLE `buy` (
  `BID` int(11) NOT NULL,
  `BDate` varchar(15) NOT NULL,
  `BDescription` varchar(50) DEFAULT NULL,
  `BCost` int(11) DEFAULT NULL,
  `ALID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buy`
--

INSERT INTO `buy` (`BID`, `BDate`, `BDescription`, `BCost`, `ALID`) VALUES
(1, '2-3-2019', 'Buy some spare parts', 300, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EID` int(11) NOT NULL,
  `EName` varchar(32) NOT NULL,
  `EAddress` varchar(50) DEFAULT NULL,
  `EDOB` varchar(15) NOT NULL,
  `ESex` varchar(10) NOT NULL,
  `EPosition` varchar(32) NOT NULL,
  `EQualifications` varchar(32) DEFAULT NULL,
  `ALID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EID`, `EName`, `EAddress`, `EDOB`, `ESex`, `EPosition`, `EQualifications`, `ALID`) VALUES
(1, 'Ahmad', 'Kabul', '3-3-1995', 'Male', 'Manage', NULL, 1),
(2, 'Jamal', 'Herat', '5-2-1995', 'Male', 'Cleark', NULL, 1),
(3, 'Rahman', 'Herat', '5-2-1995', 'Male', 'Cleark', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fly`
--

CREATE TABLE `fly` (
  `FID` int(11) NOT NULL,
  `FDate` varchar(15) NOT NULL,
  `RID` int(11) DEFAULT NULL,
  `ACID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `fly`
--

INSERT INTO `fly` (`FID`, `FDate`, `RID`, `ACID`) VALUES
(1, '31-8-2019', 1, 1),
(2, '31-8-2019', 2, 1),
(3, '1-9-2019', 3, 1),
(6, '1-9-2019', 3, 2),
(7, '1-9-2019', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `RID` int(11) NOT NULL,
  `ROrigin` varchar(32) NOT NULL,
  `RDistination` varchar(32) NOT NULL,
  `RClassification` varchar(32) NOT NULL,
  `RDistance` int(11) NOT NULL,
  `RPrice` int(11) NOT NULL,
  `ALID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`RID`, `ROrigin`, `RDistination`, `RClassification`, `RDistance`, `RPrice`, `ALID`) VALUES
(1, 'Kabul', 'Herat', 'Domestic', 310, 120, 1),
(2, 'Kabul', 'Herat', 'Domestic', 310, 130, 2),
(3, 'Kabul', 'Balkh', 'Domestic', 280, 100, 1),
(4, 'Kabul', 'Balkh', 'Domestic', 280, 110, 2),
(5, 'Kabul', 'Islamabad', 'International', 430, 310, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `SID` int(11) NOT NULL,
  `SDate` varchar(15) NOT NULL,
  `PassName` varchar(32) NOT NULL,
  `PassNIC` varchar(15) NOT NULL,
  `FID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sell`
--

INSERT INTO `sell` (`SID`, `SDate`, `PassName`, `PassNIC`, `FID`) VALUES
(1, '31-8-2019', 'Jamal', '272131', 7),
(2, '31-8-2019', 'Rahmat', '32131', 7),
(3, '31-8-2019', 'Jamshid', '323331', 6),
(4, '31-8-2019', 'Rahman', '323321', 7),
(5, '31-8-2019', 'Raheem', '33321', 3),
(6, '31-8-2019', 'Raheem', '4321', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD PRIMARY KEY (`ACID`),
  ADD UNIQUE KEY `ACModel` (`ACModel`),
  ADD KEY `ALID` (`ALID`);

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`ALID`),
  ADD UNIQUE KEY `ALName` (`ALName`);

--
-- Indexes for table `buy`
--
ALTER TABLE `buy`
  ADD PRIMARY KEY (`BID`),
  ADD KEY `ALID` (`ALID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EID`),
  ADD KEY `ALID` (`ALID`);

--
-- Indexes for table `fly`
--
ALTER TABLE `fly`
  ADD PRIMARY KEY (`FID`),
  ADD KEY `RID` (`RID`),
  ADD KEY `ACID` (`ACID`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`RID`),
  ADD KEY `ALID` (`ALID`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`SID`),
  ADD KEY `FID` (`FID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aircraft`
--
ALTER TABLE `aircraft`
  ADD CONSTRAINT `aircraft_ibfk_1` FOREIGN KEY (`ALID`) REFERENCES `airline` (`ALID`);

--
-- Constraints for table `buy`
--
ALTER TABLE `buy`
  ADD CONSTRAINT `buy_ibfk_1` FOREIGN KEY (`ALID`) REFERENCES `airline` (`ALID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`ALID`) REFERENCES `airline` (`ALID`);

--
-- Constraints for table `fly`
--
ALTER TABLE `fly`
  ADD CONSTRAINT `fly_ibfk_1` FOREIGN KEY (`RID`) REFERENCES `route` (`RID`),
  ADD CONSTRAINT `fly_ibfk_2` FOREIGN KEY (`ACID`) REFERENCES `aircraft` (`ACID`);

--
-- Constraints for table `route`
--
ALTER TABLE `route`
  ADD CONSTRAINT `route_ibfk_1` FOREIGN KEY (`ALID`) REFERENCES `airline` (`ALID`);

--
-- Constraints for table `sell`
--
ALTER TABLE `sell`
  ADD CONSTRAINT `sell_ibfk_1` FOREIGN KEY (`FID`) REFERENCES `fly` (`FID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

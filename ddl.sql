-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2020 at 12:29 AM
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
-- Database: `yatv_database`
--
CREATE DATABASE IF NOT EXISTS `yatv_database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `yatv_database`;

-- --------------------------------------------------------

--
-- Table structure for table `app`
--

CREATE TABLE `app` (
  `AppName` varchar(10) NOT NULL,
  `Description` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `availableon`
--

CREATE TABLE `availableon` (
  `AppName` varchar(10) DEFAULT NULL,
  `Version` float DEFAULT NULL,
  `Rating` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classifiedby`
--

CREATE TABLE `classifiedby` (
  `VideoID` int(10) DEFAULT NULL,
  `TagName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comprisedof`
--

CREATE TABLE `comprisedof` (
  `ShowTitle` varchar(10) DEFAULT NULL,
  `UserEmail` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contains`
--

CREATE TABLE `contains` (
  `ShowTitle` varchar(10) DEFAULT NULL,
  `UserEmail` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mylist`
--

CREATE TABLE `mylist` (
  `UserEmail` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

CREATE TABLE `platform` (
  `AppName` varchar(10) DEFAULT NULL,
  `Mobile` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `searchfor`
--

CREATE TABLE `searchfor` (
  `UserEmail` varchar(30) DEFAULT NULL,
  `VideoID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `season`
--

CREATE TABLE `season` (
  `ShowTitle` varchar(10) DEFAULT NULL,
  `SeasonNumber` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `show_table`
--

CREATE TABLE `show_table` (
  `ShowTitle` varchar(10) NOT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subscribesto`
--

CREATE TABLE `subscribesto` (
  `UserEmail` varchar(30) DEFAULT NULL,
  `AppName` varchar(10) DEFAULT NULL,
  `ExpirationDate` date DEFAULT NULL,
  `Cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `TagName` varchar(10) NOT NULL,
  `VideoID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `UserEmail` varchar(30) NOT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `LastName` varchar(10) DEFAULT NULL,
  `Country` varchar(20) DEFAULT NULL,
  `AppName` varchar(10) DEFAULT NULL,
  `VideoID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `VideoID` int(10) NOT NULL,
  `Title` varchar(10) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL,
  `ReleaseDate` date DEFAULT NULL,
  `AppName` varchar(10) DEFAULT NULL,
  `ShowTitle` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `watch`
--

CREATE TABLE `watch` (
  `UserEmail` varchar(30) DEFAULT NULL,
  `VideoID` int(10) DEFAULT NULL,
  `Liked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app`
--
ALTER TABLE `app`
  ADD PRIMARY KEY (`AppName`);

--
-- Indexes for table `availableon`
--
ALTER TABLE `availableon`
  ADD KEY `AppName` (`AppName`);

--
-- Indexes for table `classifiedby`
--
ALTER TABLE `classifiedby`
  ADD KEY `VideoID` (`VideoID`);

--
-- Indexes for table `comprisedof`
--
ALTER TABLE `comprisedof`
  ADD KEY `ShowTitle` (`ShowTitle`);

--
-- Indexes for table `contains`
--
ALTER TABLE `contains`
  ADD KEY `ShowTitle` (`ShowTitle`);

--
-- Indexes for table `mylist`
--
ALTER TABLE `mylist`
  ADD KEY `UserEmail` (`UserEmail`);

--
-- Indexes for table `platform`
--
ALTER TABLE `platform`
  ADD KEY `AppName` (`AppName`);

--
-- Indexes for table `searchfor`
--
ALTER TABLE `searchfor`
  ADD KEY `UserEmail` (`UserEmail`),
  ADD KEY `VideoID` (`VideoID`);

--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD KEY `ShowTitle` (`ShowTitle`);

--
-- Indexes for table `show_table`
--
ALTER TABLE `show_table`
  ADD PRIMARY KEY (`ShowTitle`);

--
-- Indexes for table `subscribesto`
--
ALTER TABLE `subscribesto`
  ADD KEY `UserEmail` (`UserEmail`),
  ADD KEY `AppName` (`AppName`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`TagName`),
  ADD KEY `VideoID` (`VideoID`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`UserEmail`),
  ADD KEY `AppName` (`AppName`),
  ADD KEY `VideoID` (`VideoID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`VideoID`),
  ADD KEY `ShowTitle` (`ShowTitle`);

--
-- Indexes for table `watch`
--
ALTER TABLE `watch`
  ADD KEY `UserEmail` (`UserEmail`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_table`
--
ALTER TABLE `user_table`
  ADD CONSTRAINT `AppName` FOREIGN KEY (`AppName`) REFERENCES `app` (`AppName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

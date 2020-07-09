-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 05:35 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scan`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily`
--

CREATE TABLE `daily` (
  `no` int(3) NOT NULL,
  `obc` int(6) NOT NULL,
  `seri` varchar(3) NOT NULL,
  `warnadll` varchar(1) NOT NULL,
  `tipe` varchar(2) NOT NULL,
  `jumlah` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `No` int(3) NOT NULL,
  `OBC` int(30) DEFAULT NULL,
  `Seri` varchar(3) DEFAULT NULL,
  `warnadll` varchar(2) DEFAULT NULL,
  `Tipe` varchar(2) DEFAULT NULL,
  `Jumlah` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`No`, `OBC`, `Seri`, `warnadll`, `Tipe`, `Jumlah`) VALUES
(1, 12345, 'i', 'v', 'np', 37500),
(2, 12346, 'i', 'v', 'np', 37500),
(3, 12347, 'i', 'v', 'np', 37500),
(4, 12348, 'i', 'v', 'np', 37500),
(5, 12349, 'i', 'v', 'np', 37500),
(6, 12340, 'i', 'v', 'np', 37500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

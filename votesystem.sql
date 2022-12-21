-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 09:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'clyran', '$2y$10$4hs4MGcRNyQ8qfgOZ0iOdu2wK7KEU.yLbJgsXAAQegVoSnnSDOZDG', 'Ken', 'Rosario', 'profile-teemo.222303 (2).png', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(18, 9, 'Adrian Ken', 'Rosario', 'philcst.png', 'PYTTHON'),
(19, 9, 'Jahnelle', 'Menor', 'philcst.png', 'Semi Colon'),
(20, 8, 'Timothy Jared', 'Tandoc', 'philcst.png', 'PYTHON'),
(21, 8, 'Kim Kyle', 'Marquez', 'philcst.png', 'Semi Colon'),
(22, 10, 'Kim Alexis', 'De Guzman', 'philcst.png', 'Semi Colon'),
(23, 10, 'Marjorie', 'Maynigo', 'philcst.png', 'PYTHON'),
(24, 11, 'Nicholle', 'Arenas', 'philcst.png', 'PYTHON'),
(25, 12, 'Hannah', 'Castro', 'philcst.png', 'PYTHON\r\n'),
(26, 11, 'Diane', 'Tumanan', 'philcst.png', 'Semi Colon'),
(27, 12, 'Marisol', 'De Leon', 'philcst.png', 'Semi Colon'),
(28, 13, 'Stefanny', 'Damacin', 'philcst.png', 'PYTHON'),
(29, 14, 'Jemarie', 'Cruz', 'philcst.png', 'PYTHON'),
(30, 14, 'Jay-r', 'Joves', 'philcst.png', 'PYTHON'),
(31, 15, 'Carlo', 'Carasi', 'philcst.png', 'PYTHON'),
(32, 15, 'Rymyr', 'Poserio', 'philcst.png', 'PYTHON'),
(33, 16, 'Ernesto', 'Dela Cruz', 'philcst.png', 'PYTHON'),
(34, 16, 'John Allen', 'Villamin', 'philcst.png', 'PYTHON'),
(35, 17, 'Shawn', 'De Lima', 'philcst.png', 'PYTHON'),
(36, 18, 'Edelyn', 'Camacho', 'philcst.png', 'PYTHON'),
(37, 19, 'Jenan', 'Muyargas', 'philcst.png', 'PYTHON'),
(38, 20, 'Joana', 'Limpin', 'philcst.png', 'PYTHON'),
(39, 21, 'Adriel', 'Ferrer', 'philcst.png', 'PYTHON'),
(40, 22, 'Jessa', 'Frias', '', 'PYTHON'),
(41, 13, 'Diane', 'Tumanan', 'philcst.png', 'Semi Colon'),
(42, 14, 'Christine', 'Aguilar', 'philcst.png', 'Semi Colon'),
(43, 14, 'Czar', 'Luna', 'philcst.png', 'Semi Colon'),
(44, 15, 'Archie', 'Bolinas', 'philcst.png', 'Semi Colon'),
(45, 15, 'Jayson', 'Laforteza', 'philcst.png', 'Semi Colon'),
(46, 16, 'Kersten', 'Calimlim', 'philcst.png', 'Semi Colon'),
(47, 16, 'Mery Lovely', 'Lu', 'philcst.png', 'Semi Colon'),
(48, 17, 'Randre', 'Camacho', 'philcst.png', 'Semi Colon'),
(49, 18, 'Julliane ', 'Ponio', 'philcst.png', 'Semi Colon'),
(50, 19, 'Emmanuel', 'Trimidal', '', 'Semi Colon'),
(51, 20, 'Miguel', 'Labrador', 'philcst.png', 'Semi Colon'),
(52, 21, 'Patrick', 'Denieva', '', 'Semi Colon'),
(53, 22, 'Laurynz', 'Idos', 'philcst.png', 'Semi Colon');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'CCSSC Vice-President', 1, 2),
(9, 'CCSSC President', 1, 1),
(10, 'CCSSC Secretary', 1, 3),
(11, 'CCSSC Sub-Secretary', 1, 4),
(12, 'CCSSC Treasurer', 1, 5),
(13, 'CCSSC Sub-Treasurer', 1, 6),
(14, 'CCSSC Auditors', 2, 7),
(15, 'CCSSC PRO', 2, 8),
(16, 'CCSSC Business Managers', 2, 9),
(17, 'CCSSC Adonis', 1, 10),
(18, 'CCSSC Muse', 1, 11),
(19, 'CCSSC 1st Year Rep', 1, 12),
(20, 'CCSSC 2nd Year Rep', 1, 13),
(21, 'CCSSC 3rd Year Rep', 1, 14),
(22, 'CCSSC 4th Year Rep', 1, 15);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`) VALUES
(5, 'harry123', '$2y$10$QiZAK0hRgpy2z1tWHTUc7O0EUxNl7Ny9S4u3p5yWjDxhtTDbvwFPm', 'Harry', 'Den', 'dealer-logo.jpg'),
(6, 'Is92CPnGcvOy4ue', '$2y$10$2eF0UGUbOcH8L1ny0qXE0uw8pMJMNUUozoYSJw0ZXKGlZx8rYDuea', 'Tony', 'Jr', 'favicon.png'),
(7, 'gwvIniKqT5xsWJc', '$2y$10$wY1VSzxdR1X9RpSo3oKodumhkFihorsT2K1zausafYiNnnqYqscje', 'Danny', 'Hill', 'TROLLFACE-DEAL-WITH-IT.png'),
(8, 'IpqGblR7m6tQFhz', '$2y$10$3ov.kMMWqHBO8KBtjix6p.hw642C7Y5w/.r.OGU4VQRiG3qtvRji2', 'Tom', 'Lee', 'e360bc98dbb4441f73d253f90723d9a4.jpg'),
(9, 'fxdNBZ5hoi87rqI', '$2y$10$zrjd/OWccwoGfGA1Uh2moOSEfraxe7ozQt30thOGoYWupwmliVyDC', 'Logan', 'Paul', 'male2.png'),
(10, 'fpivPIEFjTL3qZ5', '$2y$10$SOTAHllEO.CrqSewCSHK4.g9w1xbmbOkiCsbulmrzXn/XlPSMjtlG', 'Angelina', 'Stone', 'female3.jpg'),
(11, 'KkMWRcTZPf7xNgU', '$2y$10$ZYpT8rgNn/ohBX1xx2DU6.QMCSjasqJNTRHpkJ/mFUPCGTk6wLOzW', 'James', 'Cooper', 'male.png'),
(12, 'syG6zQqTNDChdZ1', '$2y$10$iqhdKLw3VAopiEprzWM4letKheG23V.MYrAa330SmfdYE7bbuNFuO', 'Christine', 'Taylor', 'female4.jpg'),
(13, 'KPCDpH5TltFIkAB', '$2y$10$eMVtYY6tGlrhZuSQl7CYXebiS66gT8nuo6pLCk1DMKWI9M0iwABJm', 'Sophia', 'Turner', 'female.jpg'),
(14, 'pCPEeQjhu4KD6MO', '$2y$10$7kUrF.nydR2FZqxaTi1Qze.H.Ef7mSaWbJrH3VZ1FJoCqhKPEv7ZS', 'Martin', 'Gray', 'mask.jpg'),
(15, 'lAk28ZYIDhc1Knx', '$2y$10$jBJ7LbyEXa7E/bwW0lBmHu38Pa8o.bX2WyFxk3Zn3Gk5LbvSe1XMO', 'Thom', 'Yorke', 'profile.jpg'),
(16, 'lqyvXeC1ZIkbJHN', '$2y$10$fO.V4DyY7biwZYWUmHnN0.k1uZa40qdiosGeeOOjXAjdXkwzGNxFC', 'William', 'Carter', 'profile.jpg'),
(17, '8MGHvWJAI2CfeuU', '$2y$10$y1OqYFUHAbkCgWl/vTHoh.dcLyPInG0rXBiN3XXpT5fEBx215sf8.', 'Wilson', 'Cooper', 'profile.jpg'),
(18, 'nVkLJ19isoGv45Y', '$2y$10$RaPguiUcVijtRq.5nYfkaeLA47lv7PTcOtKYxQOTRLU0/2gkptKcq', 'Adrian Ken', 'Rosario', 'philcst.png');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
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
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

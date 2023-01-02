-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2023 at 03:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chage_elct`
--

CREATE TABLE `chage_elct` (
  `id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chage_elct`
--

INSERT INTO `chage_elct` (`id`, `price`) VALUES
(1, NULL),
(2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `elct`
--

CREATE TABLE `elct` (
  `id` int(11) NOT NULL,
  `year` year(4) NOT NULL,
  `type_car` varchar(50) NOT NULL,
  `phone` int(50) NOT NULL,
  `model_car` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `article` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elct`
--

INSERT INTO `elct` (`id`, `year`, `type_car`, `phone`, `model_car`, `userid`, `article`) VALUES
(2, 2001, 'safa', 785001342, 'hgss', 0, 'dasdsdada');

-- --------------------------------------------------------

--
-- Table structure for table `elct_gas`
--

CREATE TABLE `elct_gas` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `elct_other`
--

CREATE TABLE `elct_other` (
  `id` int(11) NOT NULL,
  `year` int(50) NOT NULL,
  `model_car` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `article` varchar(100) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `elct_other`
--

INSERT INTO `elct_other` (`id`, `year`, `model_car`, `phone`, `article`, `userid`) VALUES
(1, 0, '0785001342', 0, 'wewdewfsdfds', 0),
(2, 0, '0785001342', 0, 'fgdfgdf', 0),
(3, 2008, 'Taycan', 782056868, 'sadsadasdasd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gas`
--

CREATE TABLE `gas` (
  `id` int(11) NOT NULL,
  `type_90` int(1) DEFAULT NULL,
  `type_95` int(1) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `liter` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gas`
--

INSERT INTO `gas` (`id`, `type_90`, `type_95`, `price`, `liter`) VALUES
(1, NULL, NULL, NULL, NULL),
(2, 95, 95, 223, 0),
(3, 95, NULL, 21, 12),
(4, NULL, 90, 22, 22),
(5, NULL, 90, 10, 0),
(6, 95, 90, 23, 0),
(7, 95, NULL, 2, 20),
(8, 95, NULL, 44, 440),
(9, 95, NULL, 23, 0),
(10, NULL, 90, 21, 210),
(11, NULL, 95, 33, 330);

-- --------------------------------------------------------

--
-- Table structure for table `join_us1`
--

CREATE TABLE `join_us1` (
  `id` int(11) NOT NULL,
  `name_companey` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `article` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `join_us1`
--

INSERT INTO `join_us1` (`id`, `name_companey`, `phone`, `email`, `article`) VALUES
(1, 'wqwq', 782056868, 'abdalah@gmail.com', 'qeqwdsadsad'),
(2, 'aabu', 785001342, 'abdalahnaser19@gmail.com', 'efgfdgdfgdf'),
(3, 'wqwq', 782056868, 'abdalah@gmail.com', 'qwqweqwe'),
(4, 'wqwq', 785001342, 'abdalah@gmail.com', 'sasdasdasdasd'),
(5, 'aabu', 782056868, 'abdalahnaser19@gmail.com', 'werwefsfdfds'),
(6, 'aabu', 782056868, 'abdalah@gmail.com', 'sfsdfasdfadsf'),
(7, 'aabu', 782056868, 'abdalah@gmail.com', 'dfhdhpofdjhofjpojhpodfjhp'),
(8, 'wqwq', 785001342, 'abdalah@gmail.com', 'xzcxvcxvcxvdsffsd');

-- --------------------------------------------------------

--
-- Table structure for table `map`
--

CREATE TABLE `map` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `lat` float(10,0) NOT NULL,
  `lng` float(10,0) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `map`
--

INSERT INTO `map` (`id`, `name`, `address`, `lat`, `lng`, `type`) VALUES
(1, 'College of Engineering Pune', 'Wellesley Road, Shivajinagar, Pune, Maharashtra 411005', 0, 19, '73.856575'),
(2, 'P.E.S\'s Modern College of Engineering', '1186/A, Off J.M. Road, Shivaji nagar, Sumukh Society, Shivajinagar, Pune, Maharashtra 411005', 0, 19, '73.846397'),
(3, 'Fergusson College, Pune', 'Fergusson College Road, Shivajinagar, Pune, Maharashtra 411004', 0, 19, '73.838898'),
(4, 'Symbiosis Institute Of Computer Studies and Research', 'Atur Centre, Gokhale Cross Road, Model Colony, Model Colony, Shivajinagar, Pune, Maharashtra 411016', 0, 19, '73.833679'),
(5, 'Maharashtra Institute of Technology', 'S.No.124, Paud Road, Kothrud, Rambaug Colony, Kothrud, Pune, Maharashtra 411038', 0, 19, '73.814720'),
(6, 'Air Force School', '213, Viman Nagar Rd, Air Force Campus, Viman Nagar, Pune, Maharashtra 411014', 0, 19, '73.916290'),
(7, 'Army Public School Dighi Camp', 'St Gyaneshwar-Kalas-Alandi Road, Kalas, Pune, Maharashtra 411015', 0, 19, '73.874680'),
(8, 'Pune International School', 'Survey No. 33/2, Road Number 14, Vidyanagar, Tingre Nagar, Vidyanagar, Dhanori, Pune, Maharashtra 411032', 0, 19, '73.896263'),
(9, 'The Lexicon International School, Kalyani Nagar', 'S no 212/1, Plot No. 59, Central Avenue, Next to Big Bazaar, Kalyani Nagar, Prathamesh Society, Kalyani Nagar, Pune, Maharashtra 411006', 0, 19, '73.901199'),
(10, 'The Orbis School', '33, 3A/6, Keshavnagar, Mundhwa, Hanuman Nagar, Keshav Nagar, Mundhwa, Pune, Maharashtra 411036', 0, 19, '73.950134');

-- --------------------------------------------------------

--
-- Table structure for table `part`
--

CREATE TABLE `part` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `part_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `part`
--

INSERT INTO `part` (`id`, `quantity`, `price`, `part_name`) VALUES
(1, 22, 0, ''),
(2, 1212, 0, ''),
(3, 22, 0, ''),
(4, 121, 0, ''),
(5, 0, 0, ''),
(6, 0, 0, 'sdfdsf'),
(7, 0, 0, ''),
(8, 0, 0, 'sdf'),
(9, 0, 0, 'dfgdfg'),
(10, 0, 0, 'dsgd'),
(11, 0, 0, 'dsgd'),
(12, 0, 0, 'ssadasd'),
(13, 1, 350, ''),
(14, 0, 0, 'FGHFG'),
(15, 7201, 28804, ''),
(16, 0, 0, 'بالابب'),
(17, 0, 0, ''),
(18, 0, 0, 'caredfgfd'),
(19, 1, 4, ''),
(20, 1, 4, ''),
(21, 1, 350, ''),
(22, 1, 4, ''),
(23, 1, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `sign_up1`
--

CREATE TABLE `sign_up1` (
  `id` int(11) NOT NULL,
  `F_Name` varchar(50) NOT NULL,
  `L_Name` varchar(50) NOT NULL,
  `Email_ID` varchar(50) NOT NULL,
  `Password` int(11) NOT NULL,
  `confirm_Pass` int(11) NOT NULL,
  `year` varchar(11) NOT NULL,
  `type_car` varchar(50) NOT NULL,
  `model_car` varchar(11) NOT NULL,
  `Phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign_up1`
--

INSERT INTO `sign_up1` (`id`, `F_Name`, `L_Name`, `Email_ID`, `Password`, `confirm_Pass`, `year`, `type_car`, `model_car`, `Phone`) VALUES
(1, 'dds', 's', 'aq@gmail.com', 123, 123, '2001', 'سيغيا', '0', 1231231),
(2, 'sdf', 'dsf', 'w21@gmail.com', 123, 123, '1221', 'سيغيا', '0', 789632145),
(3, '123', 'sdad', 'w21@gmail.com', 123, 123, '1221', 'سيغيا', 'zcczx', 1231231),
(4, 'ahmad', 'sd', 'aq@gmail.com', 123, 321, '1221', 'سيغيا', 'hg', 786541239),
(5, 'dfg', 'dfg', 'w21@gmail.com', 123, 321, '2001', 'سيغيا', 'hg', 786541239),
(6, 'ahmad', 'bf', 'w21@gmail.com', 123, 321, '1221', 'g-class', 'hg', 786541239),
(7, 'abdalah', 'asa', 'aq@gmail.com', 123, 333, '1221', 'g-class', 'hgss', 786541239),
(8, 'sdf', 'dsf', 'aq@gmail.com', 123, 123, '1221', 'add', 'hgss', 786541239),
(9, 'ahmad', 'bf', 'w21@gmail.com', 123, 1233, '2001', 'g-class', 'hgss', 785411236),
(10, 'A', 'naser', 'aq@gmail.com', 123, 321, '2001', 'سيغيا', 'hg', 786541239),
(11, 'sdf', 'fdscds', 'aq@gmail.com', 123, 123, '2001', 'سيغيا', 'hg', 786541239),
(12, 'sdf', 'sdf', 'w21@gmail.com', 123, 123, '1221', 'سيغيا', 'hg', 786541239),
(13, 'ahmad', 'naser', 'aq@gmail.com', 321, 1212, '2001', 'سيغيا', 'hg', 785411236),
(14, 'A', 'naser', 'sw@gmail.com', 123, 123, '2001', 'سيغيا', 'hg', 786541239),
(15, 'das', 'sds', 'aq@gmail.com', 123, 123, '2001', 'سيغيا', 'hg', 1231231231),
(16, 'das', 'sds', 'aq@gmail.com', 123, 123, '2001', 'سيغيا', 'hg', 1231231231),
(17, 'asd', 'sad', 'aq@gmail.com', 123, 123, '2001', 'سيغيا', 'hg', 0),
(18, 'ahmad', 'naser', 'aq@gmail.com', 111, 111, '2001', 'سيغيا', 'hgss', 0);

-- --------------------------------------------------------

--
-- Table structure for table `techs`
--

CREATE TABLE `techs` (
  `id` int(11) NOT NULL,
  `year` varchar(4) NOT NULL,
  `type_car` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `model_car` varchar(50) NOT NULL,
  `article` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `techs`
--

INSERT INTO `techs` (`id`, `year`, `type_car`, `phone`, `model_car`, `article`, `userid`) VALUES
(1, '0000', 'سيغيا', 782056868, '0', 'k;l;h;hoiiuiytrrewasdfghjko', 0),
(2, '0000', 'g-class', 785001342, 'hgss', 'qwerrr', 0),
(3, '0000', 'سيغيا', 785001342, 'hg', 'hhhhhhhhhh', 0),
(4, '0000', 'g-class', 782056868, 'hg', 'ttyyytty', 0),
(5, '0000', 'g-class', 782056868, 'hg', '\r\nttrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr', 0),
(6, '', 'g-class', 782056868, 'hgss', 'wqwdasds', 0),
(7, '', 'g-class', 782056868, '0', 'zxczc', 0),
(8, '2001', 'g-class', 782056868, '0', 'asdsadsad', 0),
(9, '2001', 'sada', 785001342, 'asdsad', 'dasdas', 0),
(10, '2001', 'سيغيا', 785001342, 'hg', 'xcvxcvcxvx', 0),
(11, '2000', 'سيغيا', 782056868, 'cfhf', 'dhfghfghghfg', 0),
(12, '1221', 'add', 785001342, 'zcczx', 'بلبيبيبلي', 0),
(13, '1221', 'g-class', 785001342, 'hgss', 'bnm,hjkh', 0);

-- --------------------------------------------------------

--
-- Table structure for table `techs1`
--

CREATE TABLE `techs1` (
  `id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `model_car` varchar(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `article` varchar(50) NOT NULL,
  `modelid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `techs1`
--

INSERT INTO `techs1` (`id`, `year`, `model_car`, `phone`, `article`, `modelid`, `userid`) VALUES
(1, 0, '785051364', 0, 'zxcxcxcccc', 0, 0),
(2, 0, '785001342', 0, 'qqwqwwqwqwqwqwq', 0, 0),
(3, 1997, '785001342', 0, 'qwwqw', 0, 0),
(4, 1993, '785001342', 0, 'wwwwwwwwwwwwwwwww', 0, 0),
(5, 1994, '782056868', 0, 'eqwewdas', 0, 0),
(6, 1994, '782056868', 0, 'asdsa', 0, 0),
(7, 1993, '0', 785001342, 'asdasd', 0, 0),
(8, 1994, 'KIA', 785001342, 'Adasds', 0, 0),
(9, 1995, 'KIA', 785001342, 'يسيبسب', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chage_elct`
--
ALTER TABLE `chage_elct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elct`
--
ALTER TABLE `elct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `elct_gas`
--
ALTER TABLE `elct_gas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elct_other`
--
ALTER TABLE `elct_other`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `gas`
--
ALTER TABLE `gas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `join_us1`
--
ALTER TABLE `join_us1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `map`
--
ALTER TABLE `map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `part`
--
ALTER TABLE `part`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign_up1`
--
ALTER TABLE `sign_up1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `techs`
--
ALTER TABLE `techs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `techs1`
--
ALTER TABLE `techs1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid_2` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chage_elct`
--
ALTER TABLE `chage_elct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `elct`
--
ALTER TABLE `elct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `elct_gas`
--
ALTER TABLE `elct_gas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elct_other`
--
ALTER TABLE `elct_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gas`
--
ALTER TABLE `gas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `join_us1`
--
ALTER TABLE `join_us1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `map`
--
ALTER TABLE `map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `part`
--
ALTER TABLE `part`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sign_up1`
--
ALTER TABLE `sign_up1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `techs`
--
ALTER TABLE `techs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `techs1`
--
ALTER TABLE `techs1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

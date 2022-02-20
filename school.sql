-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 12:04 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1000, 'ramesh', 'ramesh123'),
(1002, 'suresh', 'suresh123'),
(1003, 'rajesh', 'rajesh123'),
(1004, 'ganesh', 'ganesh123'),
(1001, 'hari', 'hari123');

-- --------------------------------------------------------

--
-- Table structure for table `ixresult`
--

CREATE TABLE `ixresult` (
  `id` int(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `class` varchar(225) NOT NULL,
  `sec` varchar(225) NOT NULL,
  `english` int(225) NOT NULL,
  `tamil` int(225) NOT NULL,
  `maths` int(225) NOT NULL,
  `physics` int(225) NOT NULL,
  `chemistry` int(225) NOT NULL,
  `biology` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ixresult`
--

INSERT INTO `ixresult` (`id`, `username`, `name`, `class`, `sec`, `english`, `tamil`, `maths`, `physics`, `chemistry`, `biology`) VALUES
(1, 'michael', 'Michael', 'IX', 'A', 75, 59, 70, 66, 74, 63),
(2, 'christopher', 'Christopher', 'IX', 'A', 82, 75, 90, 72, 66, 70),
(3, 'daniel', 'Daniel', 'IX', 'A', 80, 85, 90, 77, 82, 75),
(4, 'jessica', 'Jessica', 'IX', 'A', 70, 77, 85, 80, 82, 79),
(5, 'matthew', 'Mattew', 'IX', 'A', 55, 62, 70, 66, 52, 60),
(6, 'ashley', 'Ashley', 'IX', 'A', 60, 75, 66, 62, 70, 55),
(7, 'jennifer', 'Jennifer', 'IX', 'A', 53, 56, 65, 60, 69, 60),
(8, 'joshua', 'Joshua', 'IX', 'A', 60, 62, 67, 59, 65, 62),
(9, 'james', 'James', 'IX', 'A', 62, 75, 70, 66, 60, 73),
(10, 'robert', 'Robert', 'IX', 'A', 82, 79, 87, 82, 90, 86),
(11, 'amanda', 'Amanda', 'IX', 'B', 73, 75, 79, 62, 70, 73),
(12, 'john', 'John', 'IX', 'B', 83, 75, 63, 70, 76, 80),
(13, 'joseph', 'Joseph', 'IX', 'B', 80, 83, 85, 75, 76, 79),
(14, 'andrew', 'Andrew', 'IX', 'B', 75, 66, 69, 73, 86, 80),
(15, 'ryan', 'Ryan', 'IX', 'B', 73, 69, 72, 82, 80, 56),
(16, 'brandon', 'Brandon', 'IX', 'B', 75, 63, 70, 82, 78, 66),
(17, 'jason', 'Jason', 'IX', 'B', 82, 87, 95, 90, 96, 93),
(18, 'justin', 'Justin', 'IX', 'B', 78, 69, 80, 82, 89, 85),
(19, 'sarah', 'Sarah', 'IX', 'B', 72, 80, 85, 82, 90, 77),
(20, 'william', 'William', 'IX', 'B', 80, 82, 85, 88, 95, 90),
(21, 'jonathan', 'Jonathan', 'IX', 'C', 59, 62, 70, 69, 75, 72),
(22, 'stephanie', 'Stephanie', 'IX', 'C', 57, 69, 65, 72, 77, 80),
(23, 'nicole', 'Nicole', 'IX', 'C', 80, 87, 85, 92, 88, 90),
(24, 'eric', 'Eric', 'IX', 'C', 72, 77, 56, 62, 67, 84),
(25, 'anthony', 'Anthony', 'IX', 'C', 88, 82, 85, 89, 97, 95),
(26, 'adam', 'Adam', 'IX', 'C', 74, 66, 59, 77, 70, 72),
(27, 'elizabeth', 'Elizabeth', 'IX', 'C', 82, 96, 58, 63, 66, 70),
(28, 'megan', 'Megan', 'IX', 'C', 60, 55, 59, 67, 69, 65),
(29, 'kyle', 'Kyle', 'IX', 'C', 90, 87, 96, 92, 95, 90),
(30, 'laura', 'Laura', 'IX', 'C', 88, 85, 86, 84, 83, 87);

-- --------------------------------------------------------

--
-- Table structure for table `viiiresult`
--

CREATE TABLE `viiiresult` (
  `id` int(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `class` varchar(225) NOT NULL,
  `sec` varchar(225) NOT NULL,
  `english` int(225) NOT NULL,
  `tamil` int(225) NOT NULL,
  `maths` int(225) NOT NULL,
  `physics` int(225) NOT NULL,
  `chemistry` int(225) NOT NULL,
  `biology` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viiiresult`
--

INSERT INTO `viiiresult` (`id`, `username`, `name`, `class`, `sec`, `english`, `tamil`, `maths`, `physics`, `chemistry`, `biology`) VALUES
(1, 'michael', 'Michael', 'VIII', 'A', 75, 59, 70, 66, 74, 63),
(2, 'christopher', 'Christopher', 'VIII', 'A', 82, 75, 90, 72, 66, 70),
(3, 'daniel', 'Daniel', 'VIII', 'A', 80, 85, 90, 77, 82, 75),
(4, 'jessica', 'Jessica', 'VIII', 'A', 70, 77, 85, 80, 82, 79),
(5, 'matthew', 'Mattew', 'VIII', 'A', 55, 62, 70, 66, 52, 60),
(6, 'ashley', 'Ashley', 'VIII', 'A', 60, 75, 66, 62, 70, 55),
(7, 'jennifer', 'Jennifer', 'VIII', 'A', 53, 56, 65, 60, 69, 60),
(8, 'joshua', 'Joshua', 'VIII', 'A', 60, 62, 67, 59, 65, 62),
(9, 'james', 'James', 'VIII', 'A', 62, 75, 70, 66, 60, 73),
(10, 'robert', 'Robert', 'VIII', 'A', 82, 79, 87, 82, 90, 86),
(11, 'amanda', 'Amanda', 'VIII', 'B', 73, 75, 79, 62, 70, 73),
(12, 'john', 'John', 'VIII', 'B', 83, 75, 63, 70, 76, 80),
(13, 'joseph', 'Joseph', 'VIII', 'B', 80, 83, 85, 75, 76, 79),
(14, 'andrew', 'Andrew', 'VIII', 'B', 75, 66, 69, 73, 86, 80),
(15, 'ryan', 'Ryan', 'VIII', 'B', 73, 69, 72, 82, 80, 56),
(16, 'brandon', 'Brandon', 'VIII', 'B', 75, 63, 70, 82, 78, 66),
(17, 'jason', 'Jason', 'VIII', 'B', 82, 87, 95, 90, 96, 93),
(18, 'justin', 'Justin', 'VIII', 'B', 78, 69, 80, 82, 89, 85),
(19, 'sarah', 'Sarah', 'VIII', 'B', 72, 80, 85, 82, 90, 77),
(20, 'william', 'William', 'VIII', 'B', 70, 75, 82, 85, 82, 89),
(21, 'jonathan', 'Jonathan', 'VIII', 'C', 59, 62, 70, 69, 75, 72),
(22, 'stephanie', 'Stephanie', 'VIII', 'C', 57, 69, 65, 72, 77, 80),
(23, 'nicole', 'Nicole', 'VIII', 'C', 80, 87, 85, 92, 88, 90),
(24, 'eric', 'Eric', 'VIII', 'C', 72, 77, 56, 62, 67, 84),
(25, 'anthony', 'Anthony', 'VIII', 'C', 88, 82, 85, 89, 97, 95),
(26, 'adam', 'Adam', 'VIII', 'C', 74, 66, 59, 77, 70, 72),
(27, 'elizabeth', 'Elizabeth', 'VIII', 'C', 82, 96, 58, 63, 66, 70),
(28, 'megan', 'Megan', 'VIII', 'C', 60, 55, 59, 67, 69, 65),
(29, 'kyle', 'Kyle', 'VIII', 'C', 90, 87, 96, 92, 95, 90),
(30, 'laura', 'Laura', 'VIII', 'C', 88, 85, 86, 84, 83, 87);

-- --------------------------------------------------------

--
-- Table structure for table `viiresult`
--

CREATE TABLE `viiresult` (
  `id` int(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `class` varchar(225) NOT NULL,
  `sec` varchar(225) NOT NULL,
  `english` int(225) NOT NULL,
  `tamil` int(225) NOT NULL,
  `maths` int(225) NOT NULL,
  `physics` int(225) NOT NULL,
  `chemistry` int(225) NOT NULL,
  `biology` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viiresult`
--

INSERT INTO `viiresult` (`id`, `username`, `name`, `class`, `sec`, `english`, `tamil`, `maths`, `physics`, `chemistry`, `biology`) VALUES
(1, 'michael', 'Michael', 'VII', 'A', 75, 59, 70, 66, 74, 63),
(2, 'christopher', 'Christopher', 'VII', 'A', 82, 75, 90, 72, 66, 70),
(3, 'daniel', 'Daniel', 'VII', 'A', 80, 85, 90, 77, 82, 75),
(4, 'jessica', 'Jessica', 'VII', 'A', 70, 77, 85, 80, 82, 79),
(5, 'matthew', 'Mattew', 'VII', 'A', 55, 62, 70, 66, 52, 60),
(6, 'ashley', 'Ashley', 'VII', 'A', 60, 75, 66, 62, 70, 55),
(7, 'jennifer', 'Jennifer', 'VII', 'A', 53, 56, 65, 60, 69, 60),
(8, 'joshua', 'Joshua', 'VII', 'A', 60, 62, 67, 59, 65, 62),
(9, 'james', 'James', 'VII', 'A', 62, 75, 70, 66, 60, 73),
(10, 'robert', 'Robert', 'VII', 'A', 82, 79, 87, 82, 90, 86),
(11, 'amanda', 'Amanda', 'VII', 'B', 73, 75, 79, 62, 70, 73),
(12, 'john', 'John', 'VII', 'B', 83, 75, 63, 70, 76, 80),
(13, 'joseph', 'Joseph', 'VII', 'B', 80, 83, 85, 75, 76, 79),
(14, 'andrew', 'Andrew', 'VII', 'B', 75, 66, 69, 73, 86, 80),
(15, 'ryan', 'Ryan', 'VII', 'B', 73, 69, 72, 82, 80, 56),
(16, 'brandon', 'Brandon', 'VII', 'B', 75, 63, 70, 82, 78, 66),
(17, 'jason', 'Jason', 'VII', 'B', 82, 87, 95, 90, 96, 93),
(18, 'justin', 'Justin', 'VII', 'B', 78, 69, 80, 82, 89, 85),
(19, 'sarah', 'Sarah', 'VII', 'B', 72, 80, 85, 82, 90, 77),
(20, 'william', 'William', 'VII', 'B', 70, 85, 80, 85, 82, 89),
(21, 'jonathan', 'Jonathan', 'VII', 'C', 59, 62, 70, 69, 75, 72),
(22, 'stephanie', 'Stephanie', 'VII', 'C', 57, 69, 65, 72, 77, 80),
(23, 'nicole', 'Nicole', 'VII', 'C', 80, 87, 85, 92, 88, 90),
(24, 'eric', 'Eric', 'VII', 'C', 72, 77, 56, 62, 67, 84),
(25, 'anthony', 'Anthony', 'VII', 'C', 88, 82, 85, 89, 97, 95),
(26, 'adam', 'Adam', 'VII', 'C', 74, 66, 59, 77, 70, 72),
(27, 'elizabeth', 'Elizabeth', 'VII', 'C', 82, 96, 58, 63, 66, 70),
(28, 'megan', 'Megan', 'VII', 'C', 60, 55, 59, 67, 69, 65),
(29, 'kyle', 'Kyle', 'VII', 'C', 90, 87, 96, 92, 95, 90),
(30, 'laura', 'Laura', 'VII', 'C', 88, 85, 86, 84, 83, 87);

-- --------------------------------------------------------

--
-- Table structure for table `viresult`
--

CREATE TABLE `viresult` (
  `id` int(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `class` varchar(225) NOT NULL,
  `sec` varchar(225) NOT NULL,
  `english` int(225) NOT NULL,
  `tamil` int(225) NOT NULL,
  `maths` int(225) NOT NULL,
  `physics` int(225) NOT NULL,
  `chemistry` int(225) NOT NULL,
  `biology` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viresult`
--

INSERT INTO `viresult` (`id`, `username`, `name`, `class`, `sec`, `english`, `tamil`, `maths`, `physics`, `chemistry`, `biology`) VALUES
(1, 'michael', 'Michael', 'VI', 'A', 75, 59, 70, 66, 74, 63),
(2, 'christopher', 'Christopher', 'VI', 'A', 82, 75, 90, 72, 66, 70),
(3, 'daniel', 'Daniel', 'VI', 'A', 80, 85, 90, 77, 82, 75),
(4, 'jessica', 'Jessica', 'VI', 'A', 70, 77, 85, 80, 82, 79),
(5, 'matthew', 'Mattew', 'VI', 'A', 55, 62, 70, 66, 52, 60),
(6, 'ashley', 'Ashley', 'VI', 'A', 60, 75, 66, 62, 70, 55),
(7, 'jennifer', 'Jennifer', 'VI', 'A', 53, 56, 65, 60, 69, 60),
(8, 'joshua', 'Joshua', 'VI', 'A', 60, 62, 67, 59, 65, 62),
(9, 'james', 'James', 'VI', 'A', 62, 75, 70, 66, 60, 73),
(10, 'robert', 'Robert', 'VI', 'A', 82, 79, 87, 82, 90, 86),
(11, 'amanda', 'Amanda', 'VI', 'B', 73, 75, 79, 62, 70, 73),
(12, 'john', 'John', 'VI', 'B', 83, 75, 63, 70, 76, 80),
(13, 'joseph', 'Joseph', 'VI', 'B', 80, 83, 85, 75, 76, 79),
(14, 'andrew', 'Andrew', 'VI', 'B', 75, 66, 69, 73, 86, 80),
(15, 'ryan', 'Ryan', 'VI', 'B', 73, 69, 72, 82, 80, 56),
(16, 'brandon', 'Brandon', 'VI', 'B', 75, 63, 70, 82, 78, 66),
(17, 'jason', 'Jason', 'VI', 'B', 82, 87, 95, 90, 96, 93),
(18, 'justin', 'Justin', 'VI', 'B', 78, 69, 80, 82, 89, 85),
(19, 'sarah', 'Sarah', 'VI', 'B', 72, 80, 85, 82, 90, 77),
(20, 'william', 'William', 'VI', 'B', 70, 73, 80, 85, 82, 89),
(21, 'jonathan', 'Jonathan', 'VI', 'C', 59, 62, 70, 69, 75, 72),
(22, 'stephanie', 'Stephanie', 'VI', 'C', 57, 69, 65, 72, 77, 80),
(23, 'nicole', 'Nicole', 'VI', 'C', 80, 87, 85, 92, 88, 90),
(24, 'eric', 'Eric', 'VI', 'C', 72, 77, 56, 62, 67, 84),
(25, 'anthony', 'Anthony', 'VI', 'C', 88, 82, 85, 89, 97, 95),
(26, 'adam', 'Adam', 'VI', 'C', 74, 66, 59, 77, 70, 72),
(27, 'elizabeth', 'Elizabeth', 'VI', 'C', 82, 96, 58, 63, 66, 70),
(28, 'megan', 'Megan', 'VI', 'C', 60, 55, 59, 67, 69, 65),
(29, 'kyle', 'Kyle', 'VI', 'C', 90, 87, 96, 92, 95, 90),
(30, 'laura', 'Laura', 'VI', 'C', 88, 85, 86, 84, 83, 87);

-- --------------------------------------------------------

--
-- Table structure for table `vresult`
--

CREATE TABLE `vresult` (
  `id` int(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `class` varchar(225) NOT NULL,
  `sec` varchar(225) NOT NULL,
  `english` int(225) NOT NULL,
  `tamil` int(225) NOT NULL,
  `maths` int(225) NOT NULL,
  `physics` int(225) NOT NULL,
  `chemistry` int(225) NOT NULL,
  `biology` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vresult`
--

INSERT INTO `vresult` (`id`, `username`, `name`, `class`, `sec`, `english`, `tamil`, `maths`, `physics`, `chemistry`, `biology`) VALUES
(1, 'michael', 'Michael', 'V', 'A', 75, 59, 70, 66, 74, 63),
(2, 'christopher', 'Christopher', 'V', 'A', 82, 75, 90, 72, 66, 70),
(3, 'daniel', 'Daniel', 'V', 'A', 80, 85, 90, 77, 82, 75),
(4, 'jessica', 'Jessica', 'V', 'A', 70, 77, 85, 80, 82, 79),
(5, 'matthew', 'Mattew', 'V', 'A', 55, 62, 70, 66, 52, 60),
(6, 'ashley', 'Ashley', 'V', 'A', 60, 75, 66, 62, 70, 55),
(7, 'jennifer', 'Jennifer', 'V', 'A', 53, 56, 65, 60, 69, 60),
(8, 'joshua', 'Joshua', 'V', 'A', 60, 62, 67, 59, 65, 62),
(9, 'james', 'James', 'V', 'A', 62, 75, 70, 66, 60, 73),
(10, 'robert', 'Robert', 'V', 'A', 82, 79, 87, 82, 90, 86),
(11, 'amanda', 'Amanda', 'V', 'B', 73, 75, 79, 62, 70, 73),
(12, 'john', 'John', 'V', 'B', 83, 75, 63, 70, 76, 80),
(13, 'joseph', 'Joseph', 'V', 'B', 80, 83, 85, 75, 76, 79),
(14, 'andrew', 'Andrew', 'V', 'B', 75, 66, 69, 73, 86, 80),
(15, 'ryan', 'Ryan', 'V', 'B', 73, 69, 72, 82, 80, 56),
(16, 'brandon', 'Brandon', 'V', 'B', 75, 63, 70, 82, 78, 66),
(17, 'jason', 'Jason', 'V', 'B', 82, 87, 95, 90, 96, 93),
(18, 'justin', 'Justin', 'V', 'B', 78, 69, 80, 82, 89, 85),
(19, 'sarah', 'Sarah', 'V', 'B', 72, 80, 85, 82, 90, 77),
(20, 'william', 'William', 'V', 'B', 70, 73, 80, 85, 82, 89),
(21, 'jonathan', 'Jonathan', 'V', 'C', 65, 62, 70, 69, 75, 72),
(22, 'stephanie', 'Stephanie', 'V', 'C', 57, 69, 65, 72, 77, 80),
(23, 'nicole', 'Nicole', 'V', 'C', 80, 87, 85, 92, 88, 90),
(24, 'eric', 'Eric', 'V', 'C', 72, 77, 56, 62, 67, 84),
(25, 'anthony', 'Anthony', 'V', 'C', 88, 85, 90, 89, 97, 95),
(26, 'adam', 'Adam', 'V', 'C', 74, 66, 59, 77, 70, 72),
(27, 'elizabeth', 'Elizabeth', 'V', 'C', 82, 96, 58, 63, 66, 70),
(28, 'megan', 'Megan', 'V', 'C', 60, 55, 59, 67, 69, 65),
(29, 'kyle', 'Kyle', 'V', 'C', 90, 87, 96, 92, 95, 90),
(30, 'laura', 'Laura', 'V', 'C', 88, 85, 86, 84, 83, 87);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ixresult`
--
ALTER TABLE `ixresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `viiiresult`
--
ALTER TABLE `viiiresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `viiresult`
--
ALTER TABLE `viiresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `viresult`
--
ALTER TABLE `viresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vresult`
--
ALTER TABLE `vresult`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ixresult`
--
ALTER TABLE `ixresult`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `viiiresult`
--
ALTER TABLE `viiiresult`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `viiresult`
--
ALTER TABLE `viiresult`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `viresult`
--
ALTER TABLE `viresult`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vresult`
--
ALTER TABLE `vresult`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

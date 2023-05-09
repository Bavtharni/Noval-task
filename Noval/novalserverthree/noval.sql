-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 12:59 PM
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
-- Database: `noval`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'CS'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'Human Resources'),
(6, 'Engineering'),
(7, 'Product Management'),
(8, 'Customer Service'),
(9, 'Information Technology'),
(10, 'Operations'),
(11, 'Legal'),
(12, 'Research and Development'),
(13, 'Quality Assurance'),
(14, 'Design'),
(15, 'Training'),
(16, 'Facilities Management'),
(17, 'Security'),
(18, 'Procurement'),
(19, 'Inventory Management'),
(20, 'Logistics'),
(21, 'Transportation');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `department_id`) VALUES
(1, 'TAX-deduction', 1),
(2, 'Project 1', 1),
(3, 'Project 2', 2),
(4, 'Project 3', 3),
(5, 'Project 4', 4),
(6, 'Project 5', 5),
(7, 'Project 6', 6),
(8, 'Project 7', 7),
(9, 'Project 8', 8),
(10, 'Project 9', 9),
(11, 'Project 10', 10),
(12, 'Project 11', 11),
(13, 'Project 12', 12),
(14, 'Project 13', 13),
(15, 'Project 14', 14),
(16, 'Project 15', 15),
(17, 'Project 16', 16),
(18, 'Project 17', 17),
(19, 'Project 18', 18),
(20, 'Project 19', 19),
(21, 'Project 20', 20),
(22, 'Project 21', 1),
(23, 'Project 22', 2),
(24, 'Project 23', 3),
(25, 'Project 24', 4),
(26, 'Project 25', 5),
(27, 'Project 26', 6),
(28, 'Project 27', 7),
(29, 'Project 28', 8),
(30, 'Project 29', 9),
(31, 'Project 30', 10),
(32, 'Project 31', 11),
(33, 'Project 32', 12),
(34, 'Project 33', 13),
(35, 'Project 34', 14),
(36, 'Project 35', 15),
(37, 'Project 36', 16),
(38, 'Project 37', 17),
(39, 'Project 38', 18),
(40, 'Project 39', 19),
(41, 'Project 40', 20),
(42, 'Project 41', 1),
(43, 'Project 42', 2),
(44, 'Project 43', 3),
(45, 'Project 44', 4),
(46, 'Project 45', 5),
(47, 'Project 46', 6),
(48, 'Project 47', 7),
(49, 'Project 48', 8),
(50, 'Project 49', 9),
(51, 'Project 50', 10),
(52, 'Project 51', 11),
(53, 'Project 52', 12),
(54, 'Project 53', 13),
(55, 'Project 54', 14),
(56, 'Project 55', 15),
(57, 'Project 56', 16),
(58, 'Project 57', 17),
(59, 'Project 58', 18),
(60, 'Project 59', 19),
(61, 'Project 60', 20),
(62, 'Project 61', 1),
(63, 'Project 62', 2),
(64, 'Project 63', 3),
(65, 'Project 64', 4),
(66, 'Project 65', 5),
(67, 'Project 66', 6),
(68, 'Project 67', 7),
(69, 'Project 68', 8),
(70, 'Project 69', 9),
(71, 'Project 70', 10),
(72, 'Project 71', 11),
(73, 'Project 72', 12),
(74, 'Project 73', 13),
(75, 'Project 74', 14),
(76, 'Project 75', 15),
(77, 'Project 76', 16),
(78, 'Project 77', 17),
(79, 'Project 78', 18),
(80, 'Project 79', 19),
(81, 'Project 80', 20),
(82, 'Project 81', 1),
(83, 'Project 82', 2),
(84, 'Project 83', 3),
(85, 'Project 84', 4),
(86, 'Project 85', 5),
(87, 'Project 86', 6),
(88, 'Project 87', 7),
(89, 'Project 88', 8),
(90, 'Project 89', 9),
(91, 'Project 90', 10),
(92, 'Project 91', 5);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `name`, `project_id`) VALUES
(1, 'inserting users', 1),
(2, 'Task 1', 1),
(3, 'Task 2', 1),
(4, 'Task 3', 2),
(5, 'Task 4', 2),
(6, 'Task 5', 3),
(7, 'Task 6', 3),
(8, 'Task 7', 4),
(9, 'Task 8', 4),
(10, 'Task 9', 5),
(11, 'Task 10', 5),
(12, 'Task 11', 6),
(13, 'Task 12', 6),
(14, 'Task 13', 7),
(15, 'Task 14', 7),
(16, 'Task 15', 8),
(17, 'Task 16', 8),
(18, 'Task 17', 9),
(19, 'Task 18', 9),
(20, 'Task 19', 10),
(21, 'Task 20', 10),
(22, 'Task 21', 11),
(23, 'Task 22', 11),
(24, 'Task 23', 12),
(25, 'Task 24', 12),
(26, 'Task 25', 13),
(27, 'Task 26', 13),
(28, 'Task 27', 14),
(29, 'Task 28', 14),
(30, 'Task 29', 15),
(31, 'Task 30', 15),
(32, 'Task 31', 16),
(33, 'Task 32', 16),
(34, 'Task 33', 17),
(35, 'Task 34', 17),
(36, 'Task 35', 18),
(37, 'Task 36', 18),
(38, 'Task 37', 19),
(39, 'Task 38', 19),
(40, 'Task 39', 20),
(41, 'Task 40', 20),
(42, 'Task 41', 21),
(43, 'Task 42', 21),
(44, 'Task 43', 22),
(45, 'Task 44', 22),
(46, 'Task 45', 23),
(47, 'Task 46', 23),
(48, 'Task 47', 24),
(49, 'Task 48', 24),
(50, 'Task 49', 25),
(51, 'Task 50', 25),
(52, 'Task 51', 26),
(53, 'Task 52', 26),
(54, 'Task 53', 27),
(55, 'Task 54', 27),
(56, 'Task 55', 28),
(57, 'Task 56', 28),
(58, 'Task 57', 29),
(59, 'Task 58', 29),
(60, 'Task 59', 30),
(61, 'Task 60', 30),
(62, 'Task 61', 31),
(63, 'Task 62', 31),
(64, 'Task 63', 32),
(65, 'Task 64', 32),
(66, 'Task 65', 33),
(67, 'Task 66', 33),
(68, 'Task 67', 34),
(69, 'Task 68', 34),
(70, 'Task 69', 35),
(71, 'Task 70', 35),
(72, 'Task 71', 36),
(73, 'Task 72', 36),
(74, 'Task 73', 37),
(75, 'Task 74', 37),
(76, 'Task 75', 38),
(77, 'Task 76', 38),
(78, 'Task 77', 39),
(79, 'Task 78', 39),
(80, 'Task 79', 40),
(81, 'Task 80', 40),
(82, 'Task 81', 41),
(83, 'Task 82', 41);

-- --------------------------------------------------------

--
-- Table structure for table `task_history`
--

CREATE TABLE `task_history` (
  `id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_history`
--

INSERT INTO `task_history` (`id`, `description`, `task_id`) VALUES
(1, 'task history', 1),
(50, 'Completed task', 1),
(51, 'Started working on task', 1),
(52, 'Completed task', 2),
(53, 'Started working on task', 2),
(54, 'Completed task', 3),
(55, 'Started working on task', 3),
(56, 'Completed task', 4),
(57, 'Started working on task', 4),
(58, 'Completed task', 5),
(59, 'Started working on task', 5),
(60, 'Completed task', 6),
(61, 'Started working on task', 6),
(62, 'Completed task', 7),
(63, 'Started working on task', 7),
(64, 'Completed task', 8),
(65, 'Started working on task', 8),
(66, 'Completed task', 9),
(67, 'Started working on task', 9),
(68, 'Completed task', 10),
(69, 'Started working on task', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `password`, `department_id`) VALUES
(1, 'tharani', 'tharani@gmail.com', '1234567890', '123', 1),
(3, 'John Doe', 'johndoe@example.com', '555-1234', '', 2),
(4, 'Jane Smith', 'janesmith@example.com', '555-5678', '', 5),
(5, 'Bob Johnson', 'bobjohnson@example.com', '555-9012', '', 8),
(6, 'Sara Lee', 'saralee@example.com', '555-3456', '', 3),
(7, 'Mike Smith', 'mikesmith@example.com', '555-7890', '', 1),
(8, 'Mary Johnson', 'maryjohnson@example.com', '555-2345', '', 4),
(9, 'Tom Brown', 'tombrown@example.com', '555-6789', '', 7),
(10, 'Lisa Smith', 'lisasmith@example.com', '555-0123', '', 9),
(11, 'David Lee', 'davidlee@example.com', '555-4567', '', 6),
(12, 'Karen Johnson', 'karenjohnson@example.com', '555-8901', '', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `task_history`
--
ALTER TABLE `task_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `task_history`
--
ALTER TABLE `task_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

--
-- Constraints for table `task_history`
--
ALTER TABLE `task_history`
  ADD CONSTRAINT `task_history_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `task` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

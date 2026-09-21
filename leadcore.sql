-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2026 at 04:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `leadcore`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(20) DEFAULT 'info',
  `team` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `message`, `type`, `team`, `created_at`) VALUES
(4, 'urjant the project', 'important', 'Management', '2026-03-01 20:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `assign_project`
--

CREATE TABLE `assign_project` (
  `id` int(11) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `employee_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_project`
--

INSERT INTO `assign_project` (`id`, `project_id`, `employee_id`, `employee_name`) VALUES
(18, '15', 'CT102', 'OM RAUT'),
(20, '17', '106', 'Prakash Tale'),
(21, '17', '108', 'Manoj Kalmegh'),
(22, '19', 'CT104', 'Pramod Kale'),
(23, '15', 'CT103', 'Prajwal Deogire');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `lead_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `lead_name`, `email`, `mobile`, `category`, `password`, `created_at`) VALUES
(1, 'RAMa', 'ram@gmail.com', '9917515244', NULL, '123', '2026-03-04 19:28:44'),
(2, 'PRitesh', 'patil@gmail.com', '9175241565', NULL, 'scrypt:32768:8:1$EKArWvWHmuZSRjvg$d65ec8c1497af9eba394b098a5c04201fdebcddbf72c4d2d4bb1789f1e5ab641200750b5200fa8aa91c6709f1d0c91e280dcacf951ab716d4ff0b61e2ecef31a', '2026-03-05 17:19:13'),
(3, 'raut', 'raut@gmail.com', '7894561236', NULL, '123', '2026-03-05 17:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `client_payment`
--

CREATE TABLE `client_payment` (
  `id` int(11) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(150) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) DEFAULT 'Paid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_payment`
--

INSERT INTO `client_payment` (`id`, `client_name`, `email`, `amount`, `payment_method`, `transaction_id`, `payment_date`, `status`) VALUES
(8, 'PRAJWAL DEOGIRE', 'prajwal@gmail.com', 40000.00, 'Credit Card', 'axisbank@2001', '2026-03-01 16:41:51', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` varchar(20) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_email` varchar(100) NOT NULL,
  `emp_password` varchar(100) NOT NULL,
  `emp_designation` varchar(100) NOT NULL,
  `emp_mobile` varchar(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `emp_email`, `emp_password`, `emp_designation`, `emp_mobile`, `date`) VALUES
('106', 'Prakash Tale', 'tale@gmail.com', '123', 'User Experience (UX) Designer', '7896541236', '2026-03-01 21:40:11'),
('108', 'Manoj Kalmegh', 'kalmegh@gmail.com', '123', 'Cloud Solutions Architect', '7896541236', '2026-03-01 21:41:34'),
('CT101', 'prajwal patil', 'ppatil@gmail.com', '147', 'Web Developer', '9632587456', '2026-03-01 20:19:14'),
('CT102', 'Pratik Lahane', 'lahane@gmaiil.com', '123', 'Desktop Application Developer', '9632587456', '2026-03-01 21:42:43'),
('CT103', 'Prajwal Deogire', 'prajwal@gmail.com', '2001', 'Python Developer', '96657 1106', '2026-03-01 21:26:24'),
('CT104', 'Pramod Kale', 'kale@gmail.com', '123', 'DevOps Developer', '9175152465', '2026-03-01 21:38:17'),
('LC110', 'RAM', 'ram@gmail.com', 'ram123', 'API Developer', '8521479635', '2026-03-04 23:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `details` varchar(10000) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp(),
  `phase_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `name`, `email`, `category`, `details`, `Date`, `phase_name`, `description`) VALUES
(16, 'Pritesh Jawanjal', 'priteeshjawanjal575@gmial.com', 'API Development', 'ok', '2026-03-01 19:14:28', NULL, NULL),
(17, 'e-commers website', 'prajwal@gmailcom', 'Website Development', 'plz', '2026-03-01 20:10:21', NULL, NULL),
(18, 'PRAJWAL DEOGIRE', 'prajwal@gmail.com', 'Website Development', 'This field encompasses various tasks, including web design, web programming, database management, and ensuring a seamless user experience across different device', '2026-03-01 21:56:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `budget` varchar(100) NOT NULL,
  `technology` varchar(100) NOT NULL,
  `project_deadline` varchar(100) NOT NULL,
  `project_process` varchar(40) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `category`, `budget`, `technology`, `project_deadline`, `project_process`, `date`) VALUES
(15, 'leadcore', 'web-development', '150000 ', 'Python, Machine learning ', '5 months ', 'In Progress', '2026-03-01 20:20:51'),
(16, 'GYM In Indian', 'graphic-design', '1,23,478', 'Python, Machine learning,Data Science ', '7 months ', 'Completed', '2026-03-01 21:28:35'),
(17, 'Github', 'mobile-development', '15896', 'Machin Learning ', '9 months', 'In Progress', '2026-03-01 21:34:54'),
(18, 'Coreinternal', 'marketing', '50000', 'Python, Machine learning ', '7 months ', 'In Progress', '2026-03-01 21:35:42'),
(19, 'Traffic Light', 'cyber-security', '150000 +12300', 'Python, Machine learning, data science, Cyber security ', '7 months ', 'In Progress', '2026-03-01 21:36:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_project`
--
ALTER TABLE `assign_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `client_payment`
--
ALTER TABLE `client_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assign_project`
--
ALTER TABLE `assign_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client_payment`
--
ALTER TABLE `client_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

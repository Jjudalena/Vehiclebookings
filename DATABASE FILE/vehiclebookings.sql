-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2024 at 06:00 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehiclebookings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tms_admin`
--

CREATE TABLE `tms_admin` (
  `a_id` int(20) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_admin`
--

INSERT INTO `tms_admin` (`a_id`, `a_name`, `a_email`, `a_pwd`) VALUES
(1, 'System Admin', 'admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `tms_feedback`
--

CREATE TABLE `tms_feedback` (
  `f_id` int(20) NOT NULL,
  `f_uname` varchar(200) NOT NULL,
  `f_content` longtext NOT NULL,
  `f_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_feedback`
--

INSERT INTO `tms_feedback` (`f_id`, `f_uname`, `f_content`, `f_status`) VALUES
(1, 'Elliot Gape', 'This is a demo feedback text. This is a demo feedback text. This is a demo feedback text.', 'Published'),
(2, 'Mark L. Anderson', 'Sample Feedback Text for testing! Sample Feedback Text for testing! Sample Feedback Text for testing!', 'Published'),
(3, 'Liam Moore ', 'test number 3', '');

-- --------------------------------------------------------

--
-- Table structure for table `tms_pwd_resets`
--

CREATE TABLE `tms_pwd_resets` (
  `r_id` int(20) NOT NULL,
  `r_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_pwd_resets`
--

INSERT INTO `tms_pwd_resets` (`r_id`, `r_email`) VALUES
(2, 'admin@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tms_syslogs`
--

CREATE TABLE `tms_syslogs` (
  `l_id` int(20) NOT NULL,
  `u_id` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_ip` varbinary(200) NOT NULL,
  `u_city` varchar(200) NOT NULL,
  `u_country` varchar(200) NOT NULL,
  `u_logintime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tms_user`
--

CREATE TABLE `tms_user` (
  `u_id` int(20) NOT NULL,
  `u_fname` varchar(200) NOT NULL,
  `u_lname` varchar(200) NOT NULL,
  `u_phone` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_car_type` varchar(200) NOT NULL,
  `u_car_regno` varchar(200) NOT NULL,
  `u_car_bookdate` int(200) NOT NULL,
  `u_dest` varchar(200) NOT NULL,
  `u_purp` varchar(200) NOT NULL,
  `u_dept` varchar(200) NOT NULL,
  `u_course` varchar(200) NOT NULL,
  `u_car_book_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_user`
--

INSERT INTO `tms_user` (`u_id`, `u_fname`, `u_lname`, `u_phone`, `u_email`, `u_pwd`, `u_car_type`, `u_car_regno`, `u_car_bookdate`, `u_dest`, `u_purp`, `u_dept`, `u_course`, `u_car_book_status`) VALUES
(13, 'John Jefferson', 'Judalena', '09650393151', 'John@gmail.com', '123', 'Honda', 'JR-8281', 0, '', '', '', '', 'Approved'),
(14, 'some', 'thing', '23+54389', 'paul@gmail.com', '123', 'Bus', 'CA7766', 2024, '', '', '', '', 'Approved'),
(15, 'some', 'thing', '099999999999', 'paul@gmail.com', '111', 'Motorcycle', 'JR-8281', 0, '', '', '', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tms_vehicles`
--

CREATE TABLE `tms_vehicles` (
  `v_id` int(20) NOT NULL,
  `v_name` varchar(200) NOT NULL,
  `v_reg_no` varchar(200) NOT NULL,
  `v_pass_no` varchar(200) NOT NULL,
  `v_driver` varchar(200) NOT NULL,
  `v_category` varchar(200) NOT NULL,
  `v_dpic` varchar(200) NOT NULL,
  `v_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_vehicles`
--

INSERT INTO `tms_vehicles` (`v_id`, `v_name`, `v_reg_no`, `v_pass_no`, `v_driver`, `v_category`, `v_dpic`, `v_status`) VALUES
(9, 'Wave 100', 'JR-8281', '2', 'Some Thing', 'Motorcycle', '', 'Available'),
(10, 'Wave', 'JP-2272', '2', 'Some Thing', 'Motorcycle', '', 'Available'),
(11, 'Hyundai-1', 'URI-174', '18', 'Some Thing', 'Bus', '', 'Available'),
(12, 'Hyundai-2', 'AJA-7163', '30', 'Some Thing', 'Bus', '', 'Available'),
(13, 'Toyota Hiace Grandia', 'JDO-4115', '23', 'Some Thing', 'Van', '', 'Available'),
(14, 'Nissan Urvan-1', 'AAU-4847', '20', 'Some Thing', 'Van', '', 'Available'),
(15, 'Nissan Urvan-2', 'AFA-5485', '20', 'Some Thing', 'Van', '', 'Available'),
(16, 'L300-JH', 'JCP-547', '20', 'Some Thing', 'L3', '', 'Available'),
(17, 'L300-Col', 'JDM-409', '20', 'Some Thing', 'L3', '', 'Available'),
(18, 'G TRACK', 'JDZ-879', '25', 'Some Thing', 'Truck', '', 'Available'),
(19, 'Toyota Hilux', 'PII-490', '20', 'Some Thing', 'Pickup', '', 'Available'),
(20, 'Toyota Hiace', 'JEM-130', '22', 'Some Thing', 'Van', '', 'Available'),
(21, 'Innova', 'JAA-1205', '10', 'Some Thing', 'MPV', '', 'Available'),
(22, 'Traviz', 'KAP-9140', '20', 'Some Thing', 'L3', '', 'Available'),
(23, 'L300-JIT', 'KDO-6767', '20', 'Some Thing', 'L3', '', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tms_admin`
--
ALTER TABLE `tms_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `tms_user`
--
ALTER TABLE `tms_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `tms_vehicles`
--
ALTER TABLE `tms_vehicles`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tms_admin`
--
ALTER TABLE `tms_admin`
  MODIFY `a_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  MODIFY `r_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  MODIFY `l_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tms_user`
--
ALTER TABLE `tms_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tms_vehicles`
--
ALTER TABLE `tms_vehicles`
  MODIFY `v_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

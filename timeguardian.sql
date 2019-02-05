-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2019 at 10:02 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timeguardian`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('ap983983@gmail.com', 'ap983983');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `con_no` int(10) NOT NULL COMMENT '	',
  `con_name` varchar(45) NOT NULL,
  `con_email` varchar(45) NOT NULL,
  `con_mobile` varchar(45) NOT NULL,
  `con_msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`con_no`, `con_name`, `con_email`, `con_mobile`, `con_msg`) VALUES
(43, 'undefined', 'undefined', 'undefined', 'hello world'),
(44, 'undefined', 'undefined', 'undefined', 'hello world');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` varchar(13) NOT NULL,
  `fname` varchar(20) NOT NULL COMMENT '	',
  `lname` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `dept` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT 'miet@123',
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `subjectno` int(1) NOT NULL,
  `status` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `fname`, `lname`, `email`, `mobile`, `dept`, `password`, `regdate`, `subjectno`, `status`) VALUES
('ABD06811', 'Abhilash', 'Das', 'dasgate77@gmail.com', '8954305349', 'CSE', 'miet@123', '2019-02-04 10:59:21', 2, 1),
('AMK06811', 'amit', 'kumar', 'ap983983@gmail.com', '9856235685', 'CSE', 'miet@123', '2019-01-25 23:23:43', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_recenttask`
--

CREATE TABLE `faculty_recenttask` (
  `msgid` int(10) NOT NULL,
  `msgsub` varchar(100) DEFAULT NULL,
  `msginfo` varchar(1000) DEFAULT NULL,
  `msgdoc` varchar(45) DEFAULT NULL,
  `msgdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `hod_id` varchar(45) DEFAULT NULL COMMENT '	',
  `fac_id` varchar(45) DEFAULT NULL COMMENT '	'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_recenttask`
--

INSERT INTO `faculty_recenttask` (`msgid`, `msgsub`, `msginfo`, `msgdoc`, `msgdate`, `hod_id`, `fac_id`) VALUES
(1, 'hello i am learning python', 'python module 1 realesed', NULL, '2019-01-15 23:16:04', '1506810041', 'MUR06801'),
(2, 'manage meeting', 'kfdjg gkdfjg kgjdg ksg skrg srkgjs gkjs gskj kjgs jkgs jks sjs', NULL, '2019-01-26 11:46:12', 'MUR06801', 'MUR06801');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_sidebar_links`
--

CREATE TABLE `faculty_sidebar_links` (
  `link_id` int(10) NOT NULL DEFAULT '0',
  `link_name` varchar(45) NOT NULL COMMENT '	',
  `link_icon` varchar(45) NOT NULL,
  `link_url` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_sidebar_links`
--

INSERT INTO `faculty_sidebar_links` (`link_id`, `link_name`, `link_icon`, `link_url`) VALUES
(1, 'Dashboard', 'fa fa-dashboard', 'index.jsp'),
(2, 'Assign Task', 'fa fa-calendar-check-o', '#'),
(3, 'Curriculum', 'fa fa-book', '#'),
(4, 'Profile', 'fa fa-drivers-license-o', '#'),
(5, 'Online Examination', 'fa fa-edit', '#');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_sidebar_sublinks`
--

CREATE TABLE `faculty_sidebar_sublinks` (
  `sublink_id` int(10) NOT NULL DEFAULT '0' COMMENT '				',
  `sublink_name` varchar(45) NOT NULL,
  `sublink_icon` varchar(45) NOT NULL,
  `sublink_url` varchar(45) NOT NULL,
  `link_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_subject`
--

CREATE TABLE `faculty_subject` (
  `sub_no` int(10) NOT NULL,
  `sub1` varchar(45) NOT NULL,
  `sub2` varchar(45) DEFAULT '',
  `sub3` varchar(45) DEFAULT '',
  `fac_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_subject`
--

INSERT INTO `faculty_subject` (`sub_no`, `sub1`, `sub2`, `sub3`, `fac_id`) VALUES
(8, 'RCS601', 'KCE101', '', 'ABD06811');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_tab1`
--

CREATE TABLE `faculty_tab1` (
  `faculty_id` varchar(10) NOT NULL,
  `sec` varchar(10) NOT NULL,
  `faculty` varchar(20) NOT NULL,
  `email` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `find_faculty`
--

CREATE TABLE `find_faculty` (
  `branch_id` int(10) NOT NULL,
  `faculty_id` varchar(10) NOT NULL,
  `hod_id` varchar(10) NOT NULL,
  `branch` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `find_stud_id`
--

CREATE TABLE `find_stud_id` (
  `branch` varchar(10) NOT NULL,
  `sec` varchar(10) NOT NULL,
  `roll_no` int(20) NOT NULL,
  `stud_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `find_stud_id_2`
--

CREATE TABLE `find_stud_id_2` (
  `fname` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `stud_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL DEFAULT '#',
  `icon` varchar(45) NOT NULL,
  `columns` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `name`, `url`, `icon`, `columns`) VALUES
(1, 'Home', 'index.jsp', 'fa fa-home', 1),
(2, 'About', '#', 'fa fa-home', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hod`
--

CREATE TABLE `hod` (
  `hod_id` varchar(10) NOT NULL COMMENT '	',
  `fname` varchar(20) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `dept` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT 'miet@123',
  `image` varchar(45) NOT NULL DEFAULT 'default.png',
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hod`
--

INSERT INTO `hod` (`hod_id`, `fname`, `lname`, `email`, `mobile`, `dept`, `password`, `image`, `regdate`, `status`) VALUES
('AMI06821', 'amit', '', 'ap983983@gmail.com', '8171532616', NULL, 'miet@123', 'default.png', '2019-02-01 23:06:21', 1),
('AMK06811', 'amit', 'kumar', 'akash.prajapati.cs.2015@miet.ac.in', '8954305349', NULL, 'miet@123', 'default.png', '2019-02-04 11:26:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hod_sidebar_links`
--

CREATE TABLE `hod_sidebar_links` (
  `link_id` int(10) NOT NULL,
  `link_name` varchar(45) NOT NULL COMMENT '	',
  `link_icon` varchar(45) NOT NULL,
  `link_url` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hod_sidebar_links`
--

INSERT INTO `hod_sidebar_links` (`link_id`, `link_name`, `link_icon`, `link_url`) VALUES
(1, 'Dashboard', 'fa fa-dashboard', 'index.jsp'),
(2, 'Assign Task', 'fa fa-external-link', '#'),
(3, 'Verify Faculty', 'fa fa-user-plus', '#'),
(4, 'Profile', 'fa fa-user-circle', '#');

-- --------------------------------------------------------

--
-- Table structure for table `hod_sidebar_sublinks`
--

CREATE TABLE `hod_sidebar_sublinks` (
  `sublink_id` int(10) NOT NULL DEFAULT '0' COMMENT '				',
  `sublink_name` varchar(45) NOT NULL,
  `sublink_icon` varchar(45) NOT NULL,
  `sublink_url` varchar(45) NOT NULL,
  `link_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `course` varchar(20) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `section` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT 'miet@123',
  `regdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `profile_image` varchar(45) NOT NULL DEFAULT 'default.png',
  `status` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `fname`, `lname`, `email`, `mobile`, `course`, `branch`, `semester`, `section`, `password`, `regdate`, `profile_image`, `status`) VALUES
('1506810040', 'akash', 'prajapati', 'ap983983@gmail.com', '8954305349', 'B.Tech', 'CSE', '1', 'B', 'miet@123', '2019-02-04 10:48:35', 'default.png', 1),
('1506810455', 'akash', '', 'akash.prajapati.cs.2015@miet.ac.in', '3859385395', 'B.Tech', 'CSE', '5', 'C', 'miet@123', '2019-02-01 22:48:32', 'default.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_recenttask`
--

CREATE TABLE `student_recenttask` (
  `msgid` int(10) NOT NULL,
  `msgsub` varchar(100) DEFAULT NULL,
  `msginfo` varchar(1000) DEFAULT NULL,
  `msgdoc` varchar(45) DEFAULT NULL,
  `msgdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `stu_id` varchar(45) DEFAULT NULL COMMENT '	',
  `fac_id` varchar(45) DEFAULT NULL COMMENT '	',
  `sub_id` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_sidebar_links`
--

CREATE TABLE `student_sidebar_links` (
  `link_id` int(10) NOT NULL,
  `link_name` varchar(45) NOT NULL COMMENT '	',
  `link_icon` varchar(45) NOT NULL,
  `link_url` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_sidebar_links`
--

INSERT INTO `student_sidebar_links` (`link_id`, `link_name`, `link_icon`, `link_url`) VALUES
(1, 'Dashboard', 'fa fa-dashboard', 'index.jsp'),
(2, 'curriculum', 'fa fa-graduation-cap', '#'),
(3, 'Other Messages', 'fa fa-newspaper-o', '#'),
(4, 'Coding', 'fa fa-file-code-o', '#'),
(5, 'Ask Doubt', 'fa fa-question-circle', '#');

-- --------------------------------------------------------

--
-- Table structure for table `student_sidebar_sublinks`
--

CREATE TABLE `student_sidebar_sublinks` (
  `sublink_id` int(10) NOT NULL COMMENT '				',
  `sublink_name` varchar(45) NOT NULL,
  `sublink_icon` varchar(45) NOT NULL,
  `sublink_url` varchar(45) NOT NULL,
  `link_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_sidebar_sublinks`
--

INSERT INTO `student_sidebar_sublinks` (`sublink_id`, `sublink_name`, `sublink_icon`, `sublink_url`, `link_id`) VALUES
(1, 'Sessional Marks', 'fa fa-percent', 'sessionalmarks.jsp', 2),
(2, 'Resume', 'fa fa-id-card-o', '#', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `sub_id` varchar(6) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `image` varchar(45) DEFAULT NULL,
  `course` varchar(45) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `semester` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `sub_name`, `image`, `course`, `branch`, `semester`) VALUES
('KAS101', 'Physics', 'P.jpg', 'B.Tech', 'CSE', '1'),
('KAS102', 'Chemistry', 'C.jpg', 'B.Tech', 'CSE', '1'),
('KAS103', 'Mathematics-1', 'M_1.jpg', 'B.Tech', 'CSE', '1'),
('KAS201', 'Physics1', 'P1.jpg', 'B.Tech', 'CSE', '2'),
('KAS202', 'Chemistry1', 'C1.jpg', 'B.Tech', 'CSE', '2'),
('KAS203', 'Mathematics-2', 'M_2', 'B.Tech', 'CSE', '2'),
('KAS204', 'Professional English', 'PE.jpg', 'B.Tech', 'CSE', '2'),
('KCE101', 'EngineeringGraphics&Design ', 'EGD.jpg', 'B.Tech', 'CSE', '1'),
('KCE201', 'EngineeringGraphics&Design1', 'EGD.jpg1', 'B.Tech', 'CSE', '2'),
('KCS101', 'ProgrammingforProblemSolving', 'PFPS', 'B.Tech', 'CSE', '1'),
('KCS201', 'ProgrammingforProblemSolving1', 'PFPS1', 'B.Tech', 'CSE', '2'),
('KEE101', 'BasicElectricalEngineering', 'BEE.jpg', 'B.Tech', 'CSE', '1'),
('KEE201', 'BasicElectricalEngineering1', 'BEE1.jpg', 'B.Tech', 'CSE', '2'),
('KWS101', 'WorkshopPractice', 'WP.jpg', 'B.Tech', 'CSE', '1'),
('KWS201', 'WorkshopPractice1', 'WP1.jpg', 'B.Tech', 'CSE', '2'),
('NCS701', 'Distributed Systems', 'DS.jpg', 'B.Tech', 'CSE', '7'),
('NCS702', 'Artificial Intelligence', 'AI.jpg', 'B.Tech', 'CSE', '7'),
('NCS715', 'Andriod Systems', 'AS.jpg', 'B.Tech', 'CSE', '7'),
('NCS801', 'Digital Image Processing', 'DIP.jpg', 'B.Tech', 'CSE', '8'),
('NCS851', 'Seminar', 'SEM.jpg', 'B.Tech', 'CSE', '8'),
('NCS852', 'Project', 'PRJ.jpg', 'B.Tech', 'CSE', '8'),
('RAS301', 'Mathematics-3', 'M_3.jpg', 'B.Tech', 'CSE', '3'),
('RAS302', 'Environment&Ecology', 'EE.jpg', 'B.Tech', 'CSE', '3'),
('RAS501', 'Manegerial Economics', 'ME.jpg', 'B.Tech', 'CSE', '5'),
('RAS502', 'Industrial Sociology', 'IS.jpg', 'B.Tech', 'CSE', '5'),
('RAS601', 'Industrial Management', 'IM.jpg', 'B.Tech', 'CSE', '6'),
('RCS301', 'DiscreteMathematics', 'DM.jpg', 'B.Tech', 'CSE', '3'),
('RCS302', 'ComputerArchitecture&Organization', 'CO.jpg', 'B.Tech', 'CSE', '3'),
('RCS305', 'Data Structures', 'DS.jpg', 'B.Tech', 'CSE', '3'),
('RCS401', 'Operating System', 'OS.jpg', 'B.Tech', 'CSE', '4'),
('RCS402', 'SoftwareEngineering', 'SE.jpg', 'B.Tech', 'CSE', '4'),
('RCS403', 'TheoryOfAutomata&Formal Language', 'TOC.jpg', 'B.Tech', 'CSE', '4'),
('RCS501', 'Database Management Systems', 'DBMS.jpg', 'B.Tech', 'CSE', '5'),
('RCS502', 'Design&AnalysisOfAlgorithms', 'DAA.jpg', 'B.Tech', 'CSE', '5'),
('RCS503', 'PrinciplesOfProgrammingLanguages', 'PPL.jpg', 'B.Tech', 'CSE', '5'),
('RCS601', 'ComputerNetworks', 'CN.jpg', 'B.Tech', 'CSE', '6'),
('RCS602', 'Compiler Design', 'CD.jpg', 'B.Tech', 'CSE', '6'),
('RCS603', 'Computer Graphics', 'CG.jpg', 'B.Tech', 'CSE', '6'),
('REC301', 'Digital Logic Design', 'DLD.jpg', 'B.Tech', 'CSE', '3'),
('REC405', 'Introduction to Microprocessor', 'ITM.jpg', 'B.Tech', 'CSE', '4'),
('ROE040', 'ScienceBasedOE', 'SBO.jpg', 'B.Tech', 'CSE', '4'),
('RUC501', 'Cyber Security', 'CS.jpg', 'B.Tech', 'CSE', '5'),
('RVE401', 'Human Values & Professional Ethics', 'HVPE.jpg', 'B.Tech', 'CSE', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`con_no`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`),
  ADD UNIQUE KEY `fac_mobile_UNIQUE` (`mobile`),
  ADD UNIQUE KEY `fac_email_UNIQUE` (`email`);

--
-- Indexes for table `faculty_recenttask`
--
ALTER TABLE `faculty_recenttask`
  ADD PRIMARY KEY (`msgid`);

--
-- Indexes for table `faculty_sidebar_links`
--
ALTER TABLE `faculty_sidebar_links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `faculty_sidebar_sublinks`
--
ALTER TABLE `faculty_sidebar_sublinks`
  ADD PRIMARY KEY (`sublink_id`),
  ADD KEY `link_id_idx` (`link_id`);

--
-- Indexes for table `faculty_subject`
--
ALTER TABLE `faculty_subject`
  ADD PRIMARY KEY (`sub_no`),
  ADD KEY `fac_id_idx` (`fac_id`);

--
-- Indexes for table `faculty_tab1`
--
ALTER TABLE `faculty_tab1`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `find_faculty`
--
ALTER TABLE `find_faculty`
  ADD PRIMARY KEY (`branch_id`),
  ADD UNIQUE KEY `faculty_id` (`faculty_id`),
  ADD UNIQUE KEY `hod_id` (`hod_id`);

--
-- Indexes for table `find_stud_id`
--
ALTER TABLE `find_stud_id`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `find_stud_id_2`
--
ALTER TABLE `find_stud_id_2`
  ADD UNIQUE KEY `stud_id` (`stud_id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hod`
--
ALTER TABLE `hod`
  ADD PRIMARY KEY (`hod_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `mobile_UNIQUE` (`mobile`);

--
-- Indexes for table `hod_sidebar_links`
--
ALTER TABLE `hod_sidebar_links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `hod_sidebar_sublinks`
--
ALTER TABLE `hod_sidebar_sublinks`
  ADD PRIMARY KEY (`sublink_id`),
  ADD KEY `fk_hod_sidebar_sublinks_1_idx` (`link_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `roll_no_UNIQUE` (`mobile`);

--
-- Indexes for table `student_recenttask`
--
ALTER TABLE `student_recenttask`
  ADD PRIMARY KEY (`msgid`);

--
-- Indexes for table `student_sidebar_links`
--
ALTER TABLE `student_sidebar_links`
  ADD PRIMARY KEY (`link_id`);

--
-- Indexes for table `student_sidebar_sublinks`
--
ALTER TABLE `student_sidebar_sublinks`
  ADD PRIMARY KEY (`sublink_id`),
  ADD KEY `fk_student_sidebar_sublinks_1_idx` (`link_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`sub_id`),
  ADD UNIQUE KEY `subject_name_UNIQUE` (`sub_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `con_no` int(10) NOT NULL AUTO_INCREMENT COMMENT '	', AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `faculty_recenttask`
--
ALTER TABLE `faculty_recenttask`
  MODIFY `msgid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faculty_subject`
--
ALTER TABLE `faculty_subject`
  MODIFY `sub_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `student_recenttask`
--
ALTER TABLE `student_recenttask`
  MODIFY `msgid` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_sidebar_links`
--
ALTER TABLE `student_sidebar_links`
  MODIFY `link_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `student_sidebar_sublinks`
--
ALTER TABLE `student_sidebar_sublinks`
  MODIFY `sublink_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '				', AUTO_INCREMENT=91;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty_sidebar_sublinks`
--
ALTER TABLE `faculty_sidebar_sublinks`
  ADD CONSTRAINT `fk_faculty_sidebar_sublinks_1` FOREIGN KEY (`link_id`) REFERENCES `faculty_sidebar_links` (`link_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `faculty_subject`
--
ALTER TABLE `faculty_subject`
  ADD CONSTRAINT `fac_id` FOREIGN KEY (`fac_id`) REFERENCES `faculty` (`faculty_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `hod_sidebar_sublinks`
--
ALTER TABLE `hod_sidebar_sublinks`
  ADD CONSTRAINT `fk_hod_sidebar_sublinks_1` FOREIGN KEY (`link_id`) REFERENCES `hod_sidebar_links` (`link_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `student_sidebar_sublinks`
--
ALTER TABLE `student_sidebar_sublinks`
  ADD CONSTRAINT `fk_sublink` FOREIGN KEY (`link_id`) REFERENCES `student_sidebar_links` (`link_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

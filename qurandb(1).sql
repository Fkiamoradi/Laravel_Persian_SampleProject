-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2018 at 12:11 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qurandb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'amoozesh', '$2y$10$bkKXqr6UqGimGBuzrM3W4.lDoGE/pDy6TKBrczewgtRdoGRC3sx/W');

-- --------------------------------------------------------

--
-- Table structure for table `choice_course`
--

CREATE TABLE `choice_course` (
  `id` int(11) NOT NULL,
  `Student_student_number` int(11) NOT NULL,
  `status` enum('accept','non_accept') NOT NULL,
  `score` float DEFAULT NULL,
  `semeter` varchar(45) DEFAULT NULL,
  `Group_Course_code_course` int(11) NOT NULL,
  `status_pay` enum('yes','no') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `number` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `message` text NOT NULL,
  `status` enum('accept','non_accept') NOT NULL,
  `replay_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `presentation` enum('theoretic','practical') NOT NULL,
  `type` enum('basic','prime','professional','public') NOT NULL,
  `name` varchar(45) NOT NULL,
  `unit_number` int(11) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `status_prerequisite` enum('yes','no') DEFAULT NULL,
  `list_prerequisite` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `presentation`, `type`, `name`, `unit_number`, `price`, `status_prerequisite`, `list_prerequisite`) VALUES
(28, 'theoretic', 'public', 'تجوید', 1, '350000', 'yes', NULL),
(29, 'theoretic', 'public', 'تفسیر', 2, '2500', 'no', 'تجوید'),
(30, 'practical', 'prime', 'قرائت', 3, '5000', 'no', NULL),
(31, 'practical', 'professional', 'صوت و لحن', 4, '50000', 'no', NULL),
(32, 'theoretic', 'basic', 'قرآن', 6, '20000', 'no', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form_`
--

CREATE TABLE `form_` (
  `id` int(9) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `conten` text,
  `email` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `form_`
--

INSERT INTO `form_` (`id`, `name`, `conten`, `email`) VALUES
(16, 'hadi', NULL, NULL),
(7, 'فاطمه کیامرادی', 'نظر من مثبت بد نیست به هر حال خوبه ممنونم ازتون', 'alimohammadi@gmail.com'),
(13, 'فاطمه', 'من از این سایت خوشم اومده ممنون', 'fateme@gmail.com'),
(14, 'دارا', 'عالی', 'sdfv@yahoo.com'),
(15, 'تیمور', 'خیلی بد', 'hjklls@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `group_course`
--

CREATE TABLE `group_course` (
  `code_course` int(11) NOT NULL,
  `group_number` varchar(45) DEFAULT NULL,
  `semester` varchar(45) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `min_capacity` int(11) DEFAULT NULL,
  `Course_id` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `Time_Course_id` int(11) NOT NULL,
  `guest_semester` varchar(255) DEFAULT NULL,
  `date_exam` varchar(45) DEFAULT NULL,
  `time_exam` varchar(45) DEFAULT NULL,
  `term` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `abstract` text,
  `body` text,
  `publish_date` varchar(45) DEFAULT NULL,
  `like_count` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `abstract`, `body`, `publish_date`, `like_count`, `img`) VALUES
(1, 'تست خبر 1', 'چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر', '<p>چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر چکیده خبر</p>', '30 مرداد 1396 - 10:05', 0, '28463599a7aec20e950.67664908.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `father` varchar(45) NOT NULL,
  `sex` enum('male','female') NOT NULL,
  `national_code` varchar(45) NOT NULL,
  `birthday` varchar(45) NOT NULL,
  `location_brith` varchar(45) NOT NULL,
  `password` text NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `address` text,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professor`
--

INSERT INTO `professor` (`id`, `firstname`, `lastname`, `father`, `sex`, `national_code`, `birthday`, `location_brith`, `password`, `phone`, `mobile`, `address`, `img`) VALUES
(8, 'احمد', 'احمدی', 'محمد', 'male', '0924003408', '1360/05/16', 'بیرجند', '$2y$10$WKutgpwSwwW6oKpemwOgauntZlbiisy7LwbsvNiIt6GGoiA5WaX/6', '056-3252-4852', '09351234567', 'بیرجند خیابان', '5668599982306072a5.43182947.jpeg'),
(9, 'سید مجتبی', 'بنایی', 'علی', 'male', '0984003408', '1355/05/16', 'قاین', '$2y$10$Lux0JAi1NUPWB1pdIe6NzuBv3NW4Lj8opJgR/.6sMQ9yQzRR7ioA2', '056-3252-4852', '09151234567', 'قاین خیابان...', '3003359997831468e27.46000785.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `Student_student_number` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL,
  `question` text NOT NULL,
  `replay_quetion` text NOT NULL,
  `status` enum('accept','non_accept') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `salary_semester`
--

CREATE TABLE `salary_semester` (
  `semester_id` int(11) NOT NULL,
  `Student_student_number` int(11) NOT NULL,
  `status` enum('yes','no') NOT NULL,
  `code_tracking` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `year` varchar(45) NOT NULL,
  `month` varchar(45) NOT NULL,
  `status` enum('other','now') NOT NULL,
  `price` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `year`, `month`, `status`, `price`) VALUES
(1, '1386', 'تیر', 'other', '32500'),
(2, '1386', 'بهمن', 'other', '32600'),
(3, '1387', 'مهر', 'now', '320000');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_number` int(11) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `father` varchar(45) NOT NULL,
  `brithday` varchar(45) NOT NULL,
  `location_brith` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `address` text,
  `national_code` varchar(45) DEFAULT NULL,
  `id` varchar(45) DEFAULT NULL,
  `status` enum('active','non_active','expulsion','alumnus') DEFAULT NULL,
  `entry_semester` varchar(45) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_number`, `firstname`, `lastname`, `father`, `brithday`, `location_brith`, `phone`, `mobile`, `address`, `national_code`, `id`, `status`, `entry_semester`, `password`, `img`) VALUES
(3861001, 'KJKJK', 'JKJKJK', 'JKJKJK', '1384/07/04', 'JKJKJK', '051-3271-3025', '09158292548', 'SJKDKSJDKSJD', '0923004405', '52', 'active', '1386-تیر', '$2y$10$UKIYBZ/M.4ooqxCybTw5veL7aRTBSgQh0VdsOldEohHcle.9FcdF2', NULL),
(3861002, 'kjkj', 'kjkjkjk', 'jkjkj', '1379/07/11', 'lklklk', '051-2713-5698', '09158292548', 'llsklksdlksldksldklskd', '0923004409', '25', 'alumnus', '1386-تیر', '$2y$10$kOStbw2M0I7218w56BycdeLnKwXRLF3GvtuitX7fSlY5pto6AMQji', NULL),
(3861003, 'jhjh', 'jhjhjh', 'jhjh', '1379/07/06', 'kjkjkj', NULL, NULL, ',smsmc,smc,smc', '0923004402', '25', 'active', '1386-تیر', '$2y$10$sZO.JBZq/IbjAsKN2Ma3SOP6RiRERUiGMpO6WUoOuahJE6SQ0hIia', NULL),
(3863000, 'زهرا', 'رضایی', 'علی', '1375/07/14', 'تهران', '051-3271-3025', '09159876543', 'تهران ـ ولی عصر', '0923004508', '25', 'active', '1386-بهمن', '$2y$10$UoWzHTBnUJiVgyTYvblDTOh.eKbQwcgAzSe4S5jnKoMlz4V03qr2a', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time_course`
--

CREATE TABLE `time_course` (
  `id` int(11) NOT NULL,
  `days` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `classes` varchar(255) NOT NULL,
  `rotatory` enum('1','2') DEFAULT NULL,
  `day_rotatory` enum('zoj','fard') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `time_course`
--

INSERT INTO `time_course` (`id`, `days`, `time`, `classes`, `rotatory`, `day_rotatory`) VALUES
(1, '1,1,1,1,1,1,1,1', '1,1,1,1,1,1,1,1', '3,3,3,3,3,3,3,3', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choice_course`
--
ALTER TABLE `choice_course`
  ADD PRIMARY KEY (`id`,`Student_student_number`,`Group_Course_code_course`),
  ADD KEY `fk_Student_has_Course_Student_idx` (`Student_student_number`),
  ADD KEY `fk_Choice_Course_Group_Course1_idx` (`Group_Course_code_course`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_`
--
ALTER TABLE `form_`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_course`
--
ALTER TABLE `group_course`
  ADD PRIMARY KEY (`code_course`,`Course_id`,`professor_id`,`Time_Course_id`),
  ADD UNIQUE KEY `code_course_UNIQUE` (`code_course`),
  ADD KEY `fk_Group_Course_Course1_idx` (`Course_id`),
  ADD KEY `fk_Group_Course_professor1_idx` (`professor_id`),
  ADD KEY `fk_Group_Course_Time_Course1_idx` (`Time_Course_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_code_UNIQUE` (`national_code`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`Student_student_number`,`professor_id`),
  ADD KEY `fk_Student_has_professor_professor1_idx` (`professor_id`),
  ADD KEY `fk_Student_has_professor_Student1_idx` (`Student_student_number`);

--
-- Indexes for table `salary_semester`
--
ALTER TABLE `salary_semester`
  ADD PRIMARY KEY (`semester_id`,`Student_student_number`),
  ADD KEY `fk_semester_has_Student_Student1_idx` (`Student_student_number`),
  ADD KEY `fk_semester_has_Student_semester1_idx` (`semester_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_number`),
  ADD UNIQUE KEY `student_number_UNIQUE` (`student_number`);

--
-- Indexes for table `time_course`
--
ALTER TABLE `time_course`
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
-- AUTO_INCREMENT for table `choice_course`
--
ALTER TABLE `choice_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `form_`
--
ALTER TABLE `form_`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `group_course`
--
ALTER TABLE `group_course`
  MODIFY `code_course` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `time_course`
--
ALTER TABLE `time_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `choice_course`
--
ALTER TABLE `choice_course`
  ADD CONSTRAINT `fk_Choice_Course_Group_Course1` FOREIGN KEY (`Group_Course_code_course`) REFERENCES `group_course` (`code_course`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Student_has_Course_Student` FOREIGN KEY (`Student_student_number`) REFERENCES `student` (`student_number`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `group_course`
--
ALTER TABLE `group_course`
  ADD CONSTRAINT `fk_Group_Course_Course1` FOREIGN KEY (`Course_id`) REFERENCES `course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Group_Course_Time_Course1` FOREIGN KEY (`Time_Course_id`) REFERENCES `time_course` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Group_Course_professor1` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `fk_Student_has_professor_Student1` FOREIGN KEY (`Student_student_number`) REFERENCES `student` (`student_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Student_has_professor_professor1` FOREIGN KEY (`professor_id`) REFERENCES `professor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `salary_semester`
--
ALTER TABLE `salary_semester`
  ADD CONSTRAINT `fk_semester_has_Student_Student1` FOREIGN KEY (`Student_student_number`) REFERENCES `student` (`student_number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_semester_has_Student_semester1` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

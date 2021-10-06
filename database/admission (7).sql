-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2021 at 05:25 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_year`
--

CREATE TABLE `tbl_academic_year` (
  `id` int(11) NOT NULL,
  `ay_year` varchar(50) NOT NULL,
  `enable_exam` int(5) NOT NULL,
  `ay_status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_academic_year`
--

INSERT INTO `tbl_academic_year` (`id`, `ay_year`, `enable_exam`, `ay_status`) VALUES
(1, '2019-2020', 0, 0),
(3, '2020-2021', 0, 0),
(7, '2021 - 2022', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_staff`
--

CREATE TABLE `tbl_account_staff` (
  `id` int(11) NOT NULL,
  `staff_username` varchar(100) NOT NULL,
  `staff_password` varchar(250) NOT NULL,
  `staff_title` varchar(50) NOT NULL,
  `staff_first_name` varchar(50) NOT NULL,
  `staff_middle_name` varchar(50) NOT NULL,
  `staff_last_name` varchar(50) NOT NULL,
  `staff_address` varchar(200) NOT NULL,
  `staff_email` varchar(100) NOT NULL,
  `staff_profile_img` varchar(1000) NOT NULL,
  `staff_role` int(11) NOT NULL,
  `staff_unit` int(11) NOT NULL,
  `staff_program` int(11) NOT NULL,
  `login_status` varchar(5) NOT NULL,
  `session_token` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_account_staff`
--

INSERT INTO `tbl_account_staff` (`id`, `staff_username`, `staff_password`, `staff_title`, `staff_first_name`, `staff_middle_name`, `staff_last_name`, `staff_address`, `staff_email`, `staff_profile_img`, `staff_role`, `staff_unit`, `staff_program`, `login_status`, `session_token`) VALUES
(1, 'admission', '$2y$10$KhQSjCIC08kyPFEZrEYiZuHDJtvu.QBNULbt/q/OCP2nBhcs6loJi', 'Admission Officer', 'Admission', 'Officer', 'Account', 'Tacloban City', 'admission@test.com', 'IMG_STAFF2021100617486.', 1, 2, 0, '0', ''),
(2, 'exam', '$2y$10$Hc45PNxbxc477b9QnBlSIuR5VioZQCxPe54/QMflZbf21OwX9fmtC', 'Exam Officer', 'Exam', 'Officer', 'Account', 'Tacloban City', 'exam@test.com', 'IMG_STAFF2021100669062.', 2, 2, 0, '0', ''),
(3, 'unithead', '$2y$10$4cYzzeAOz2.Ptq7IiMZYeO1UHbN.xbLKRNA6E7rqLNNZEQY/XHoGe', 'Unit Head', 'Unit', 'Head', 'Account', 'Tacloban City', 'unit@test.com', 'IMG_STAFF2021100645539.', 3, 2, 0, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `login_status` int(11) NOT NULL,
  `session_token` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `name`, `email`, `image`, `login_status`, `session_token`) VALUES
(1, 'admin', '$2y$10$riWEInc2KIq.YzmJVW0XJuPAfwQGbBr0VNUgzLpFpo5e1bAyOOL.i', 'Administrator', 'adminsample@example.com', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicant`
--

CREATE TABLE `tbl_applicant` (
  `id` int(11) NOT NULL,
  `applicant_account_id` int(11) NOT NULL,
  `applicant_picture` varchar(100) NOT NULL,
  `school_year_id` int(11) NOT NULL,
  `entry` varchar(100) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `program_first_choice` varchar(100) NOT NULL,
  `program_second_choice` varchar(100) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `date_birth` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `height_feet` int(11) NOT NULL,
  `height_inches` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `civil_status` varchar(50) NOT NULL,
  `place_birth` varchar(100) NOT NULL,
  `citizenship` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mailing_address` varchar(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `mobile_number` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `father_citizenship` varchar(100) NOT NULL,
  `father_contact` varchar(100) NOT NULL,
  `father_email` varchar(100) NOT NULL,
  `father_occupation` varchar(100) NOT NULL,
  `father_employer_address` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `mother_citizenship` varchar(100) NOT NULL,
  `mother_contact` varchar(100) NOT NULL,
  `mother_email` varchar(100) NOT NULL,
  `mother_occupation` varchar(100) NOT NULL,
  `mother_employer_address` varchar(100) NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `guardian_citizenship` varchar(100) NOT NULL,
  `guardian_contact` varchar(100) NOT NULL,
  `guardian_email` varchar(100) NOT NULL,
  `guardian_occupation` varchar(100) NOT NULL,
  `guardian_employer_address` varchar(100) NOT NULL,
  `kinder_name` varchar(100) NOT NULL,
  `kinder_address` varchar(100) NOT NULL,
  `kinder_year_graduated` varchar(100) NOT NULL,
  `kinder_honors` varchar(1000) NOT NULL,
  `elem_name` varchar(100) NOT NULL,
  `elem_address` varchar(100) NOT NULL,
  `elem_year_graduated` varchar(100) NOT NULL,
  `elem_honors` varchar(1000) NOT NULL,
  `jhs_name` varchar(100) NOT NULL,
  `jhs_address` varchar(100) NOT NULL,
  `jhs_year_graduated` varchar(100) NOT NULL,
  `jhs_honors` varchar(1000) NOT NULL,
  `shs_name` varchar(100) NOT NULL,
  `shs_address` varchar(100) NOT NULL,
  `shs_year_graduated` varchar(100) NOT NULL,
  `shs_honors` varchar(1000) NOT NULL,
  `college_name` varchar(100) NOT NULL,
  `college_address` varchar(100) NOT NULL,
  `college_year_graduated` varchar(100) NOT NULL,
  `college_honors` varchar(1000) NOT NULL,
  `college_name2` varchar(100) NOT NULL,
  `college_address2` varchar(100) NOT NULL,
  `college_year_graduated2` varchar(100) NOT NULL,
  `college_honors2` varchar(1000) NOT NULL,
  `report_card` varchar(1000) NOT NULL,
  `reference_name` varchar(100) NOT NULL,
  `reference_address` varchar(100) NOT NULL,
  `reference_contact` varchar(100) NOT NULL,
  `reference_name2` varchar(100) NOT NULL,
  `reference_address2` varchar(100) NOT NULL,
  `reference_contact2` varchar(100) NOT NULL,
  `previous_application` varchar(50) NOT NULL,
  `previous_academic_year` varchar(50) NOT NULL,
  `hobbies` varchar(50) NOT NULL,
  `club_member` varchar(50) NOT NULL,
  `club_name` varchar(100) NOT NULL,
  `disability` varchar(100) NOT NULL,
  `disability_name` varchar(100) NOT NULL,
  `medical_certificate_image` varchar(100) NOT NULL,
  `personal_statement` varchar(1000) NOT NULL,
  `form_status` varchar(50) NOT NULL,
  `fs_timestamp` varchar(50) NOT NULL,
  `exam_status` varchar(50) NOT NULL,
  `es_timestamp` varchar(50) NOT NULL,
  `interview_status` varchar(50) NOT NULL,
  `is_timestamp` varchar(50) NOT NULL,
  `admission_status` varchar(50) NOT NULL,
  `as_timestamp` varchar(50) NOT NULL,
  `application_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicant_account`
--

CREATE TABLE `tbl_applicant_account` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `verification_key` varchar(100) NOT NULL,
  `verified` int(5) NOT NULL,
  `security_question` varchar(50) NOT NULL,
  `security_answer` varchar(50) NOT NULL,
  `form1_progress` varchar(20) NOT NULL,
  `form2_progress` varchar(20) NOT NULL,
  `fp_timestamp` varchar(50) NOT NULL,
  `examination_progress` varchar(20) NOT NULL,
  `ep_timestamp` varchar(50) NOT NULL,
  `interview_progress` varchar(20) NOT NULL,
  `ip_timestamp` varchar(50) NOT NULL,
  `student_number` varchar(15) NOT NULL,
  `login_status` varchar(10) NOT NULL,
  `session_token` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_applicant_account`
--

INSERT INTO `tbl_applicant_account` (`id`, `email`, `password`, `verification_key`, `verified`, `security_question`, `security_answer`, `form1_progress`, `form2_progress`, `fp_timestamp`, `examination_progress`, `ep_timestamp`, `interview_progress`, `ip_timestamp`, `student_number`, `login_status`, `session_token`) VALUES
(13, 'edsunjcaldoza@gmail.com', '$2y$10$LUfaHIDwtya3AF/bC.bqGuOAdnJDQR3skcOiAIr2fAFEkNRP95Qpe', 'e0c9c47effe5024d0a81f0c5cb2c8023', 1, 'What time of the day were you born?', '5:00', 'Not Started', 'Not Started', 'September 27, 2021, 11:10:10 am', 'Not Started', 'N/A', 'Not Started', 'N/A', 'N/A', 'Logged-out', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJlbWFpbCI6ImVkc3VuamNhbGRvemFAZ21haWwuY29tIiwibmJmIjoxNjMyNzExOTEzLCJleHAiOjE2MzI3MTIyNzN9.agu5MqrrFdJ4qm72_VgsVR4vxYjTIZz7kIblWCbew1U'),
(14, 'ricocombinido9@gmail.com', '$2y$10$NuRtdnSBY5YotAU7ml/4TO7RCqPxGSTwsm1HBY4RvLot413aamYGG', '9deb6d23f417dcf07c0b0f7c543cd791', 1, 'How old is your oldest sibling?', '35', 'Done', 'Done', 'September 26, 2021, 09:39:00 pm', 'Not Started', 'N/A', 'Not Started', 'N/A', 'N/A', 'Logged-out', ''),
(37, '1800638@lnu.edu.ph', '$2y$10$29okqhVa9m3Abjzj87HJMe2jK5QUW9Epy2iBIxEdb1YpmxOaJ3edK', '50a8636a0ea2b0917cf1b013b64bf493', 0, 'How old is your oldest sibling?', 'test12345', 'Not Started', 'Not Started', 'N/A', 'Not Started', 'N/A', 'Not Started', 'N/A', 'N/A', 'Logged-out', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicant_card`
--

CREATE TABLE `tbl_applicant_card` (
  `id` int(11) NOT NULL,
  `card_applicant_id` int(11) NOT NULL,
  `card_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicant_medical`
--

CREATE TABLE `tbl_applicant_medical` (
  `id` int(11) NOT NULL,
  `medical_applicant_id` int(11) NOT NULL,
  `medical_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course`
--

CREATE TABLE `tbl_course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_acronym` varchar(50) NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_course`
--

INSERT INTO `tbl_course` (`id`, `course_name`, `course_acronym`, `unit_id`) VALUES
(7, 'Bachelor of Secondary Education - Major in Math', 'BSED - MATH', 6),
(14, 'Bachelor of Science in Secondary Education - Major in Filipino', 'BSED - FILIPINO', 4),
(15, 'Bachelor of Science in Elementary Education', 'BSED', 6),
(18, 'Bachelor of Science in Information Technology', 'BSIT', 2),
(19, 'Bachelor of Science in Tourism Management', 'BSTM', 9),
(20, 'Bachelor of Arts in English Language', 'BAEL', 7),
(21, 'Bachelor of Elementary Education', 'BEED', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `dept_name` varchar(50) NOT NULL,
  `dept_acronym` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `dept_name`, `dept_acronym`) VALUES
(14, 'College of Education', 'COE'),
(17, 'College of Management and Entrepreneurship', 'CME'),
(37, 'College of Arts and Sciences', 'CAS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam`
--

CREATE TABLE `tbl_exam` (
  `id` int(11) NOT NULL,
  `exam_title` varchar(100) NOT NULL,
  `exam_time_limit` varchar(1000) NOT NULL,
  `exam_quest_limit` int(11) NOT NULL,
  `exam_description` varchar(1000) NOT NULL,
  `exam_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `exam_start_date` varchar(30) NOT NULL,
  `exam_end_date` varchar(30) NOT NULL,
  `exam_status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_exam`
--

INSERT INTO `tbl_exam` (`id`, `exam_title`, `exam_time_limit`, `exam_quest_limit`, `exam_description`, `exam_created`, `exam_start_date`, `exam_end_date`, `exam_status`) VALUES
(9, 'OLSAT Entrance Examination', '50', 100, 'This is the standard examination for LNU Admissions.', '2021-09-24 13:31:22', '2021-10-24 00:00', '2021-10-30 00:29', 'Deactivated');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam_admin`
--

CREATE TABLE `tbl_exam_admin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam_questions`
--

CREATE TABLE `tbl_exam_questions` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `choice_1` varchar(100) NOT NULL,
  `choice_2` varchar(100) NOT NULL,
  `choice_3` varchar(100) NOT NULL,
  `choice_4` varchar(100) NOT NULL,
  `correct_answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_exam_result`
--

CREATE TABLE `tbl_exam_result` (
  `id` int(11) NOT NULL,
  `exam_applicant_id` int(11) NOT NULL,
  `exam_score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faqs`
--

CREATE TABLE `tbl_faqs` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_faqs`
--

INSERT INTO `tbl_faqs` (`id`, `question`, `answer`) VALUES
(1, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.'),
(2, 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int(11) NOT NULL,
  `feedback_applicant_id` int(11) NOT NULL,
  `feedback_category` varchar(30) NOT NULL,
  `feedback_subject` varchar(30) NOT NULL,
  `feedback_message` longtext NOT NULL,
  `feedback_sent_timestamp` varchar(30) NOT NULL,
  `feedback_reply` longtext NOT NULL,
  `feedback_reply_timestamp` varchar(30) NOT NULL,
  `feedback_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `feedback_applicant_id`, `feedback_category`, `feedback_subject`, `feedback_message`, `feedback_sent_timestamp`, `feedback_reply`, `feedback_reply_timestamp`, `feedback_status`) VALUES
(1, 7, '', '', '', '', '', '', ''),
(3, 2, 'Issues Encountered', 'This is a test feedback.', 'This is a test feedback message.', 'June 30, 2021, 5:15 am', '', '', 'Queued');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_interview`
--

CREATE TABLE `tbl_interview` (
  `id` int(11) NOT NULL,
  `interview_applicant_id` int(11) NOT NULL,
  `interview_date` varchar(20) NOT NULL,
  `interview_time` varchar(20) NOT NULL,
  `interview_rating` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_procedures`
--

CREATE TABLE `tbl_procedures` (
  `id` int(5) NOT NULL,
  `procedure_step_num` int(5) NOT NULL,
  `procedure_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_procedures`
--

INSERT INTO `tbl_procedures` (`id`, `procedure_step_num`, `procedure_desc`) VALUES
(1, 1, 'The first step'),
(2, 2, 'The Second Step');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_requirements`
--

CREATE TABLE `tbl_requirements` (
  `id` int(5) NOT NULL,
  `requirements_num` int(5) NOT NULL,
  `requirements_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_requirements`
--

INSERT INTO `tbl_requirements` (`id`, `requirements_num`, `requirements_desc`) VALUES
(1, 1, 'Duly Accomplished Online Admission Form Sample Update'),
(2, 2, 'A scanned copy OR a photograph of Grade 12 card showing the grades on all subjects during the first semester, LRN and Strand, or Official Transcript of Records from the school last attended for transferees.'),
(5, 0, 'Sample Schedule');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_schedules`
--

CREATE TABLE `tbl_schedules` (
  `id` int(5) NOT NULL,
  `schedule_date` varchar(50) NOT NULL,
  `schedule_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_schedules`
--

INSERT INTO `tbl_schedules` (`id`, `schedule_date`, `schedule_desc`) VALUES
(1, 'Wednesday 01 September 2021', 'Opening of the admission period Sample Update'),
(2, 'Monday, July 29, 2021', 'Closing of the admission period.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit`
--

CREATE TABLE `tbl_unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(1000) NOT NULL,
  `unit_desc` varchar(1000) NOT NULL,
  `unit_dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_unit`
--

INSERT INTO `tbl_unit` (`id`, `unit_name`, `unit_desc`, `unit_dept_id`) VALUES
(2, 'IT and Computer Education Unit', 'IT and Computer Education Unit Description', 37),
(4, 'Filipino Unit', 'Filipino', 14),
(6, 'Mathematics Unit', 'Mathematics Unit Description', 14),
(7, 'Professional Education Unit', 'This unit is for Gen. Education', 14),
(9, 'Entrepreneurship Unit', 'This unit is for entrepreneurship', 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_academic_year`
--
ALTER TABLE `tbl_academic_year`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_account_staff`
--
ALTER TABLE `tbl_account_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_applicant`
--
ALTER TABLE `tbl_applicant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_applicant_account`
--
ALTER TABLE `tbl_applicant_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_applicant_card`
--
ALTER TABLE `tbl_applicant_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_applicant_medical`
--
ALTER TABLE `tbl_applicant_medical`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exam`
--
ALTER TABLE `tbl_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exam_admin`
--
ALTER TABLE `tbl_exam_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exam_questions`
--
ALTER TABLE `tbl_exam_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_exam_result`
--
ALTER TABLE `tbl_exam_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faqs`
--
ALTER TABLE `tbl_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_interview`
--
ALTER TABLE `tbl_interview`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_procedures`
--
ALTER TABLE `tbl_procedures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_requirements`
--
ALTER TABLE `tbl_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_schedules`
--
ALTER TABLE `tbl_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_academic_year`
--
ALTER TABLE `tbl_academic_year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_account_staff`
--
ALTER TABLE `tbl_account_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_applicant`
--
ALTER TABLE `tbl_applicant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_applicant_account`
--
ALTER TABLE `tbl_applicant_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_applicant_card`
--
ALTER TABLE `tbl_applicant_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_applicant_medical`
--
ALTER TABLE `tbl_applicant_medical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_exam`
--
ALTER TABLE `tbl_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_exam_admin`
--
ALTER TABLE `tbl_exam_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_exam_questions`
--
ALTER TABLE `tbl_exam_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_exam_result`
--
ALTER TABLE `tbl_exam_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_faqs`
--
ALTER TABLE `tbl_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_interview`
--
ALTER TABLE `tbl_interview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_procedures`
--
ALTER TABLE `tbl_procedures`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_requirements`
--
ALTER TABLE `tbl_requirements`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_schedules`
--
ALTER TABLE `tbl_schedules`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

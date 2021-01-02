-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2021 at 12:31 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mici_korat`
--

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id_district` int(11) NOT NULL COMMENT 'รหัสอำเภอ',
  `name_ district` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่ออำเภอ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id_district`, `name_ district`) VALUES
(1, 'เมืองนครราชสีมา'),
(2, 'ครบุรี'),
(3, 'เสิงสาง'),
(4, 'คง'),
(5, 'บ้านเหลื่อม'),
(6, 'จักราช'),
(7, 'โชคชัย'),
(8, 'ด่านขุนทด'),
(9, 'โนนไทย'),
(10, 'โนนสูง'),
(11, 'ขามสะแกแสง'),
(12, 'บัวใหญ่'),
(13, 'ประทาย'),
(14, 'ปักธงชัย'),
(15, 'พิมาย'),
(16, 'ห้วยแถลง'),
(17, 'ชุมพวง'),
(18, 'สูงเนิน'),
(19, 'ขามทะเลสอ'),
(20, 'สีคิ้ว'),
(21, 'ปากช่อง'),
(22, 'หนองบุญมาก'),
(23, 'แก้งสนามนาง'),
(24, 'โนนแดง'),
(25, 'วังน้ำเขียว'),
(26, 'เทพารักษ์'),
(27, 'เมืองยาง'),
(28, 'พระทองคำ'),
(29, 'ลำทะเมนชัย'),
(30, 'บัวลาย'),
(31, 'สีดา'),
(32, 'เฉลิมพระเกียรติ');

-- --------------------------------------------------------

--
-- Table structure for table `file_certificate_uplode`
--

CREATE TABLE `file_certificate_uplode` (
  `id_file_certificate` int(11) NOT NULL COMMENT 'รหัสไฟล์รับรอง',
  `certificate_uplode` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ไฟล์อัพโหลด',
  `dateup` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'วันที่อัพโหลด',
  `id_regplace` int(10) NOT NULL COMMENT 'รหัสลงทะเบียนสถานที่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `id_op` int(11) NOT NULL COMMENT 'รหัสผู้ประกอบการ',
  `name_op` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อผู้ประกอบการ',
  `midname_op` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อกลางผู้ประกอบการ',
  `lastname_op` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุลผู้ประกอบการ',
  `name_member` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อสมาชิก',
  `midname_member` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อกลางสมาชิก',
  `lastname_member` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุลสมาชิก',
  `nameofcommerce` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อในเชิงพาณิยช์',
  `h_number` int(6) NOT NULL COMMENT 'บ้านเลขที่',
  `moo` int(10) NOT NULL COMMENT 'หมู่ที่',
  `alley` int(10) NOT NULL COMMENT 'ตรอก_ซอย',
  `road` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ถนน',
  `r_number` int(10) NOT NULL COMMENT 'ห้องเลขที่',
  `build_number` int(10) NOT NULL COMMENT 'อาคารที่',
  `class` int(10) NOT NULL COMMENT 'ชั้นที่',
  `province` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'จังหวัด',
  `postcode` int(10) NOT NULL COMMENT 'รหัสไปรษณีย์',
  `nationality` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'สัญชาติ',
  `n_number` int(10) NOT NULL COMMENT 'เลขที่',
  `id_typemem` int(10) NOT NULL COMMENT 'รหัสประเภทสมาชิก',
  `id_prefix` int(10) NOT NULL COMMENT 'รหัสคำนำหน้า',
  `id_sdistrict` int(10) NOT NULL COMMENT 'รหัสตำบล',
  `id_district` int(10) NOT NULL COMMENT 'รหัสอำเภอ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `place_a`
--

CREATE TABLE `place_a` (
  `id_aplace` int(11) NOT NULL COMMENT 'รหัสสถานที่อนุมัติ',
  `id_regplace` int(11) NOT NULL,
  `id_op` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `name_contactor` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อผู้ติดต่อ',
  `midname_contactor` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อกลางผู้ติดต่อ',
  `lastname_contactor` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุลผู้ติดต่อ',
  `tel_contact` int(20) NOT NULL COMMENT 'เบอร์โทรติดต่อ',
  `room_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อห้องงานที่จัด',
  `num_support` int(10) NOT NULL COMMENT 'จำนวนที่รองรับ',
  `number` int(10) NOT NULL COMMENT 'เลขที่',
  `moo` int(10) NOT NULL COMMENT 'หมู่ที่',
  `alley` int(10) NOT NULL COMMENT 'ตรอก_ซอย',
  `road` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ถนน',
  `r_number` int(10) NOT NULL COMMENT 'ห้องที่',
  `build_number` int(10) NOT NULL COMMENT 'อาคารที่',
  `class` int(10) NOT NULL COMMENT 'ชั้นที่',
  `id_sdistrict` int(10) NOT NULL COMMENT 'รหัสตำบล',
  `id_district` int(10) NOT NULL COMMENT 'รหัสอำเภอ',
  `provice` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'จังหวัด',
  `postcode` int(20) NOT NULL COMMENT 'รหัสไปรษณีย์',
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'แลทติจูด',
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ลองติจูด',
  `id_file_certificate` int(10) NOT NULL COMMENT 'รหัสไฟล์รับรอง',
  `id_place` int(10) NOT NULL COMMENT 'รหัสสถานที่',
  `time_open` time NOT NULL DEFAULT current_timestamp() COMMENT 'เวลาเปิดทำการ',
  `time_close` time NOT NULL COMMENT 'เวลาปิดทำการ',
  `rule_place` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'เงื่อนไขสถานที่',
  `services` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'บริการเสริม',
  `parking` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ที่จอดรถ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `process_place`
--

CREATE TABLE `process_place` (
  `id_p_place` int(11) NOT NULL COMMENT 'รหัสอนุมัติสถานที่',
  `id_regplace` int(10) NOT NULL COMMENT 'รหัสสถานที่ลงทะบียน',
  `status` int(3) NOT NULL COMMENT 'สถานะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reg_place`
--

CREATE TABLE `reg_place` (
  `id_regplace` int(11) NOT NULL COMMENT 'รหัสลงทะเบียนสถานที่',
  `id_op` int(10) NOT NULL COMMENT 'รหัสผู้ประกอบการ',
  `id_event` int(10) NOT NULL COMMENT 'รหัสประเภทงานที่จัด',
  `name_contactor` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อผู้ติดต่อ',
  `midname_contactor` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อกลางผู้ติดต่อ',
  `lastname_contactor` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'นามสกุลผู้ติดต่อ',
  `tel_contact` int(20) NOT NULL COMMENT 'เบอร์โทรติดต่อ',
  `room_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อห้องงานที่จัด',
  `num_support` int(10) NOT NULL COMMENT 'จำนวนที่รองรับ',
  `number` int(10) NOT NULL COMMENT 'เลขที่',
  `moo` int(10) NOT NULL COMMENT 'หมู่ที่',
  `alley` int(10) NOT NULL COMMENT 'ตรอก_ซอย',
  `road` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ถนน',
  `r_number` int(10) NOT NULL COMMENT 'ห้องที่',
  `build_number` int(10) NOT NULL COMMENT 'อาคารที่',
  `class` int(10) NOT NULL COMMENT 'ชั้นที่',
  `id_sdistrict` int(10) NOT NULL COMMENT 'รหัสตำบล',
  `id_district` int(10) NOT NULL COMMENT 'รหัสอำเภอ',
  `provice` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'จังหวัด',
  `postcode` int(20) NOT NULL COMMENT 'รหัสไปรษณีย์',
  `latitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'แลทติจูด',
  `longitude` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ลองติจูด',
  `id_file_certificate` int(10) NOT NULL COMMENT 'รหัสไฟล์รับรอง',
  `id_place` int(10) NOT NULL COMMENT 'รหัสสถานที่',
  `time_open` time NOT NULL DEFAULT current_timestamp() COMMENT 'เวลาเปิดทำการ',
  `time_close` time NOT NULL DEFAULT current_timestamp() COMMENT 'เวลาปิดทำการ',
  `rule_place` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'เงื่อนไขสถานที่',
  `services` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'บริการเสริม',
  `parking` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ที่จอดรถ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_district`
--

CREATE TABLE `sub_district` (
  `id_sdistrict` int(11) NOT NULL COMMENT 'รหัสตำบล',
  `name_sdistrict` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อตำบล'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_district`
--

INSERT INTO `sub_district` (`id_sdistrict`, `name_sdistrict`) VALUES
(1, 'ในเมือง'),
(2, 'โพธิ์กลาง'),
(3, 'หนองจะบก'),
(4, 'โคกสูง'),
(5, 'มะเริง'),
(6, 'หนองระเวียง'),
(7, 'ปรุใหญ่'),
(8, 'หมื่นไวย'),
(9, 'พลกรัง'),
(10, 'หนองไผ่ล้อม'),
(11, 'หัวทะเล'),
(12, 'บ้านเกาะ'),
(13, 'บ้านใหม่'),
(14, 'พุดซา'),
(15, 'บ้านโพธิ์'),
(16, 'จอหอ'),
(17, 'โคกกรวด'),
(18, 'ไชยมงคล'),
(19, 'หนองบัวศาลา'),
(20, 'สุรนารี'),
(21, 'สีมุม'),
(22, 'ตลาด'),
(23, 'พะเนา'),
(24, 'หนองกระทุ่ม'),
(25, 'หนองไข่น้ำ'),
(26, 'แชะ'),
(27, 'เฉลียง'),
(28, 'ครบุรี'),
(29, 'โคกกระชาย'),
(30, 'จระเข้หิน'),
(31, 'มาบตะโกเอน'),
(32, 'อรพิมพ์'),
(33, 'บ้านใหม่'),
(34, 'ลำเพียก'),
(35, 'ครบุรีใต้'),
(36, 'ตะแบกบาน'),
(37, 'สระว่านพระยา'),
(38, 'เสิงสาง'),
(39, 'สระตะเคียน'),
(40, 'โนนสมบูรณ์'),
(41, 'กุดโบสถ์'),
(42, 'สุขไพบูลย์'),
(43, 'บ้านราษฎร์'),
(44, 'เมืองคง'),
(45, 'คูขาด'),
(46, 'เทพาลัย'),
(47, 'ตาจั่น'),
(48, 'บ้านปรางค์'),
(49, 'หนองมะนาว'),
(50, 'หนองบัว'),
(51, 'โนนเต็ง'),
(52, 'ดอนใหญ่'),
(53, 'ขามสมบูรณ์'),
(54, 'บ้านเหลื่อม'),
(55, 'วังโพธิ์'),
(56, 'โคกกระเบื้อง'),
(57, 'ช่อระกา'),
(58, 'จักราช'),
(59, 'ทองหลาง'),
(60, 'สีสุก'),
(61, 'หนองขาม'),
(62, 'หนองพลวง'),
(63, 'ศรีละกอ'),
(64, 'คลองเมือง'),
(65, 'หินโคน'),
(66, 'กระโทก'),
(67, 'พลับพลา'),
(68, 'ท่าอ่าง'),
(69, 'ทุ่งอรุณ'),
(70, 'ท่าลาดขาว'),
(71, 'ท่าจะหลุง'),
(72, 'ท่าเยี่ยม'),
(73, 'โชคชัย'),
(74, 'ละลมใหม่พัฒนา'),
(75, 'ด่านเกวียน'),
(76, 'กุดพิมาน'),
(77, 'ด่านขุนทด'),
(78, 'ด่านนอก'),
(79, 'ด่านใน'),
(80, 'ตะเคียน'),
(81, 'บ้านเก่า'),
(82, 'บ้านแปรง'),
(83, 'พันชนะ'),
(84, 'สระจรเข้'),
(85, 'หนองกราด'),
(86, 'หนองบัวตะเกียด'),
(87, 'หนองบัวละคร'),
(88, 'หินดาด'),
(89, 'ห้วยบง'),
(90, 'โนนเมืองพัฒนา'),
(91, 'หนองไทร'),
(92, 'โนนไทย'),
(93, 'ด่านจาก'),
(94, 'กำปัง'),
(95, 'สำโรง'),
(96, 'ค้างพลู'),
(97, 'บ้านวัง'),
(98, 'บัลลังก์'),
(99, 'สายออ'),
(100, 'ถนนโพธิ์'),
(101, 'มะค่า'),
(102, 'โนนสูง'),
(103, 'ใหม่'),
(104, 'โตนด'),
(105, 'บิง'),
(106, 'ดอนชมพู'),
(107, 'ธารปราสาท'),
(108, 'หลุมข้าว'),
(109, 'มะค่า'),
(110, 'พลสงคราม'),
(111, 'จันอัด'),
(112, 'ขามเฒ่า'),
(113, 'ด่านคล้า'),
(114, 'ลำคอหงษ์'),
(115, 'เมืองปราสาท'),
(116, 'ดอนหวาย'),
(117, 'ลำมูล'),
(118, 'ขามสะแกแสง'),
(119, 'โนนเมือง'),
(120, 'เมืองนาท'),
(121, 'ชีวึก'),
(122, 'พะงาด'),
(123, 'หนองหัวฟาน'),
(124, 'เมืองเกษตร'),
(125, 'บัวใหญ่'),
(126, 'ห้วยยาง'),
(127, 'เสมาใหญ่'),
(128, 'ดอนตะหนิน'),
(129, 'หนองบัวสะอาด'),
(130, 'โนนทองหลาง'),
(131, 'กุดจอก'),
(132, 'ด่านช้าง'),
(133, 'ขุนทอง'),
(134, 'หนองแจ้งใหญ่'),
(135, 'ประทาย'),
(136, 'กระทุ่มราย'),
(137, 'วังไม้แดง'),
(138, 'ตลาดไทร'),
(139, 'หนองพลวง'),
(140, 'หนองค่าย'),
(141, 'หันห้วยทราย'),
(142, 'ดอนมัน'),
(143, 'นางรำ'),
(144, 'โนนเพ็ด'),
(145, 'ทุ่งสว่าง'),
(146, 'โคกกลาง'),
(147, 'เมืองโดน'),
(148, 'เมืองปัก'),
(149, 'ตะคุ'),
(150, 'โคกไทย'),
(151, 'สำโรง'),
(152, 'ตะขบ'),
(153, 'นกออก'),
(154, 'ดอน'),
(155, 'ตูม'),
(156, 'งิ้ว'),
(157, 'สะแกราช'),
(158, 'ลำนางแก้ว'),
(159, 'ภูหลวง'),
(160, 'ธงชัยเหนือ'),
(161, 'สุขเกษม'),
(162, 'เกษมทรัพย์'),
(163, 'บ่อปลาทอง'),
(164, 'ในเมือง'),
(165, 'สัมฤทธิ์'),
(166, 'โบสถ์'),
(167, 'กระเบื้องใหญ่'),
(168, 'ท่าหลวง'),
(169, 'รังกาใหญ่'),
(170, 'ชีวาน'),
(171, 'นิคมสร้างตนเอง'),
(172, 'กระชอน'),
(173, 'ดงใหญ่'),
(174, 'ธารละหลอด'),
(175, 'หนองระเวียง'),
(176, 'ห้วยแถลง'),
(177, 'ทับสวาย'),
(178, 'เมืองพลับพลา'),
(179, 'หลุ่งตะเคียน'),
(180, 'หินดาด'),
(181, 'งิ้ว'),
(182, 'กงรถ'),
(183, 'หลุ่งประดู่'),
(184, 'ตะโก'),
(185, 'ห้วยแคน'),
(186, 'ชุมพวง'),
(187, 'ประสุข'),
(188, 'ท่าลาด'),
(189, 'สาหร่าย'),
(190, 'ตลาดไทร'),
(191, 'โนนรัง'),
(192, 'หนองหลัก'),
(193, 'โนนตูม'),
(194, 'โนนยอ'),
(195, 'สูงเนิน'),
(196, 'เสมา'),
(197, 'โคราช'),
(198, 'บุ่งขี้เหล็ก'),
(199, 'โนนค่า'),
(200, 'โค้งยาง'),
(201, 'มะเกลือเก่า'),
(202, 'มะเกลือใหม่'),
(203, 'นากลาง'),
(204, 'หนองตะไก้'),
(205, 'กุดจิก'),
(206, 'ขามทะเลสอ'),
(207, 'โป่งแดง'),
(208, 'พันดุง'),
(209, 'หนองสรวง'),
(210, 'บึงอ้อ'),
(211, 'สีคิ้ว'),
(212, 'บ้านหัน'),
(213, 'กฤษณา'),
(214, 'ลาดบัวขาว'),
(215, 'หนองหญ้าขาว'),
(216, 'กุดน้อย'),
(217, 'หนองน้ำใส'),
(218, 'วังโรงใหญ่'),
(219, 'มิตรภาพ'),
(220, 'คลองไผ่'),
(221, 'ดอนเมือง'),
(222, 'หนองบัวน้อย'),
(223, 'ปากช่อง'),
(224, 'กลางดง'),
(225, 'จันทึก'),
(226, 'วังกะทะ'),
(227, 'หมูสี'),
(228, 'หนองสาหร่าย'),
(229, 'ขนงพระ'),
(230, 'โป่งตาลอง'),
(231, 'คลองม่วง'),
(232, 'หนองน้ำแดง'),
(233, 'วังไทร'),
(234, 'พญาเย็น'),
(235, 'หนองบุนนาก'),
(236, 'สารภี'),
(237, 'ไทยเจริญ'),
(238, 'หนองหัวแรต'),
(239, 'แหลมทอง'),
(240, 'หนองตะไก้'),
(241, 'ลุงเขว้า'),
(242, 'หนองไม้ไผ่'),
(243, 'บ้านใหม่'),
(244, 'แก้งสนามนาง'),
(245, 'โนนสำราญ'),
(246, 'บึงพะไล'),
(247, 'สีสุก'),
(248, 'บึงสำโรง'),
(249, 'โนนแดง'),
(250, 'โนนตาเถร'),
(251, 'สำพะเนียง'),
(252, 'วังหิน'),
(253, 'ดอนยาวใหญ่'),
(254, 'วังน้ำเขียว'),
(255, 'วังหมี'),
(256, 'ระเริง'),
(257, 'อุดมทรัพย์'),
(258, 'ไทยสามัคคี'),
(259, 'สำนักตะคร้อ'),
(260, 'หนองแวง'),
(261, 'บึงปรือ'),
(262, 'วังยายทอง'),
(263, 'เมืองยาง'),
(264, 'กระเบื้องนอก'),
(265, 'ละหานปลาค้าว'),
(266, 'โนนอุดม'),
(267, 'สระพระ'),
(268, 'มาบกราด'),
(269, 'พังเทียม'),
(270, 'ทัพรั้ง'),
(271, 'หนองหอย'),
(272, 'ขุย'),
(273, 'บ้านยาง'),
(274, 'ช่องแมว'),
(275, 'ไพล'),
(276, 'เมืองพะไล'),
(277, 'โนนจาน'),
(278, 'บัวลาย'),
(279, 'หนองหว้า'),
(280, 'สีดา'),
(281, 'โพนทอง'),
(282, 'โนนประดู่'),
(283, 'สามเมือง'),
(284, 'หนองตาดใหญ่'),
(285, 'ช้างทอง'),
(286, 'ท่าช้าง'),
(287, 'พระพุทธ'),
(288, 'หนองงูเหลือม'),
(289, 'หนองยาง');

-- --------------------------------------------------------

--
-- Table structure for table `type_event`
--

CREATE TABLE `type_event` (
  `id_event` int(11) NOT NULL COMMENT 'รหัสประเภทงานที่จัด',
  `name_event` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อประเภทงานที่จัด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_member`
--

CREATE TABLE `type_member` (
  `id_typemem` int(11) NOT NULL COMMENT 'รหัสประเภทสมาชิก',
  `name_tymem` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อประเภทสมาชิก'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `type_place`
--

CREATE TABLE `type_place` (
  `id_place` int(11) NOT NULL COMMENT 'รหัสประเภทสถานที่',
  `name_place` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อประเภทสถานที่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `type_place`
--

INSERT INTO `type_place` (`id_place`, `name_place`) VALUES
(1, 'สถาบันศึกษาขั้นพื้นฐาน'),
(2, 'สถาบันอุดมศึกษา'),
(3, 'โรงแรม'),
(4, 'สถานที่จัดอบรมโดยตรง'),
(5, 'สถานที่จัดสัมมนาโดยตรง'),
(6, 'สถานที่จัดประชุมโดยตรง'),
(7, 'รีสอร์ท'),
(8, 'ห้างสรรพสินค้า'),
(9, 'บ้านพักตากอากาศ');

-- --------------------------------------------------------

--
-- Table structure for table `type_prefix`
--

CREATE TABLE `type_prefix` (
  `id_prefix` int(11) NOT NULL COMMENT 'รหัสคำนำหน้า',
  `name_prefix` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อคำนำหน้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id_district`);

--
-- Indexes for table `file_certificate_uplode`
--
ALTER TABLE `file_certificate_uplode`
  ADD PRIMARY KEY (`id_file_certificate`),
  ADD KEY `id_regplace` (`id_regplace`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id_op`),
  ADD KEY `id_typemem` (`id_typemem`),
  ADD KEY `id_prefix` (`id_prefix`),
  ADD KEY `id_sdistrict` (`id_sdistrict`),
  ADD KEY `id_district` (`id_district`);

--
-- Indexes for table `place_a`
--
ALTER TABLE `place_a`
  ADD PRIMARY KEY (`id_aplace`),
  ADD KEY `id_regplace` (`id_regplace`),
  ADD KEY `id_op` (`id_op`),
  ADD KEY `id_event` (`id_event`),
  ADD KEY `id_sdistrict` (`id_sdistrict`),
  ADD KEY `id_district` (`id_district`),
  ADD KEY `id_file_certificate` (`id_file_certificate`),
  ADD KEY `id_place` (`id_place`);

--
-- Indexes for table `process_place`
--
ALTER TABLE `process_place`
  ADD PRIMARY KEY (`id_p_place`),
  ADD KEY `id_regplace` (`id_regplace`);

--
-- Indexes for table `reg_place`
--
ALTER TABLE `reg_place`
  ADD PRIMARY KEY (`id_regplace`),
  ADD KEY `id_op` (`id_op`),
  ADD KEY `id_event` (`id_event`),
  ADD KEY `id_file_certificate` (`id_file_certificate`),
  ADD KEY `id_place` (`id_place`),
  ADD KEY `id_sdistrict` (`id_sdistrict`),
  ADD KEY `id_district` (`id_district`);

--
-- Indexes for table `sub_district`
--
ALTER TABLE `sub_district`
  ADD PRIMARY KEY (`id_sdistrict`);

--
-- Indexes for table `type_event`
--
ALTER TABLE `type_event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `type_member`
--
ALTER TABLE `type_member`
  ADD PRIMARY KEY (`id_typemem`);

--
-- Indexes for table `type_place`
--
ALTER TABLE `type_place`
  ADD PRIMARY KEY (`id_place`);

--
-- Indexes for table `type_prefix`
--
ALTER TABLE `type_prefix`
  ADD PRIMARY KEY (`id_prefix`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id_district` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสอำเภอ', AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `file_certificate_uplode`
--
ALTER TABLE `file_certificate_uplode`
  MODIFY `id_file_certificate` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสไฟล์รับรอง';

--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `id_op` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสผู้ประกอบการ';

--
-- AUTO_INCREMENT for table `place_a`
--
ALTER TABLE `place_a`
  MODIFY `id_aplace` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสถานที่อนุมัติ';

--
-- AUTO_INCREMENT for table `process_place`
--
ALTER TABLE `process_place`
  MODIFY `id_p_place` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสอนุมัติสถานที่';

--
-- AUTO_INCREMENT for table `reg_place`
--
ALTER TABLE `reg_place`
  MODIFY `id_regplace` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสลงทะเบียนสถานที่';

--
-- AUTO_INCREMENT for table `sub_district`
--
ALTER TABLE `sub_district`
  MODIFY `id_sdistrict` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสตำบล', AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `type_event`
--
ALTER TABLE `type_event`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภทงานที่จัด';

--
-- AUTO_INCREMENT for table `type_member`
--
ALTER TABLE `type_member`
  MODIFY `id_typemem` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภทสมาชิก';

--
-- AUTO_INCREMENT for table `type_place`
--
ALTER TABLE `type_place`
  MODIFY `id_place` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสประเภทสถานที่', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `type_prefix`
--
ALTER TABLE `type_prefix`
  MODIFY `id_prefix` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสคำนำหน้า';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `file_certificate_uplode`
--
ALTER TABLE `file_certificate_uplode`
  ADD CONSTRAINT `file_certificate_uplode_ibfk_1` FOREIGN KEY (`id_regplace`) REFERENCES `reg_place` (`id_regplace`);

--
-- Constraints for table `operator`
--
ALTER TABLE `operator`
  ADD CONSTRAINT `operator_ibfk_1` FOREIGN KEY (`id_typemem`) REFERENCES `type_member` (`id_typemem`),
  ADD CONSTRAINT `operator_ibfk_2` FOREIGN KEY (`id_prefix`) REFERENCES `type_prefix` (`id_prefix`),
  ADD CONSTRAINT `operator_ibfk_3` FOREIGN KEY (`id_sdistrict`) REFERENCES `sub_district` (`id_sdistrict`),
  ADD CONSTRAINT `operator_ibfk_4` FOREIGN KEY (`id_district`) REFERENCES `district` (`id_district`);

--
-- Constraints for table `place_a`
--
ALTER TABLE `place_a`
  ADD CONSTRAINT `place_a_ibfk_1` FOREIGN KEY (`id_regplace`) REFERENCES `reg_place` (`id_regplace`),
  ADD CONSTRAINT `place_a_ibfk_2` FOREIGN KEY (`id_op`) REFERENCES `operator` (`id_op`),
  ADD CONSTRAINT `place_a_ibfk_3` FOREIGN KEY (`id_event`) REFERENCES `type_event` (`id_event`),
  ADD CONSTRAINT `place_a_ibfk_4` FOREIGN KEY (`id_sdistrict`) REFERENCES `sub_district` (`id_sdistrict`),
  ADD CONSTRAINT `place_a_ibfk_5` FOREIGN KEY (`id_district`) REFERENCES `district` (`id_district`),
  ADD CONSTRAINT `place_a_ibfk_6` FOREIGN KEY (`id_file_certificate`) REFERENCES `file_certificate_uplode` (`id_file_certificate`),
  ADD CONSTRAINT `place_a_ibfk_7` FOREIGN KEY (`id_place`) REFERENCES `type_place` (`id_place`);

--
-- Constraints for table `process_place`
--
ALTER TABLE `process_place`
  ADD CONSTRAINT `process_place_ibfk_1` FOREIGN KEY (`id_regplace`) REFERENCES `reg_place` (`id_regplace`);

--
-- Constraints for table `reg_place`
--
ALTER TABLE `reg_place`
  ADD CONSTRAINT `reg_place_ibfk_1` FOREIGN KEY (`id_op`) REFERENCES `operator` (`id_op`),
  ADD CONSTRAINT `reg_place_ibfk_2` FOREIGN KEY (`id_event`) REFERENCES `type_event` (`id_event`),
  ADD CONSTRAINT `reg_place_ibfk_3` FOREIGN KEY (`id_file_certificate`) REFERENCES `file_certificate_uplode` (`id_file_certificate`),
  ADD CONSTRAINT `reg_place_ibfk_4` FOREIGN KEY (`id_place`) REFERENCES `type_place` (`id_place`),
  ADD CONSTRAINT `reg_place_ibfk_5` FOREIGN KEY (`id_sdistrict`) REFERENCES `sub_district` (`id_sdistrict`),
  ADD CONSTRAINT `reg_place_ibfk_6` FOREIGN KEY (`id_district`) REFERENCES `district` (`id_district`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

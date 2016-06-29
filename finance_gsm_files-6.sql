-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 15, 2016 at 06:34 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `finance_gsm_files`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_file`
--

CREATE TABLE IF NOT EXISTS `access_file` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(35) NOT NULL,
  `menu_name` varchar(35) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_file`
--

INSERT INTO `access_file` (`id`, `menu_id`, `type`, `menu_name`) VALUES
(1, 1, 'Add', 'Address Book'),
(2, 3, 'ADD', 'Department'),
(3, 6, 'ADD', 'Create'),
(4, 7, 'Edit', 'Edit'),
(5, 8, 'Add', 'Create'),
(6, 9, 'Edit', 'Edit'),
(7, 10, 'Add', 'User'),
(8, 9, 'For QA Approval', ''),
(9, 7, 'Receive Cash Request', ''),
(10, 7, 'Ready for pick up', ''),
(11, 10, 'Edit', ''),
(12, 9, 'Reject', ''),
(13, 7, 'Reject', ''),
(14, 3, 'Deactivate', ''),
(15, 3, 'Edit', ''),
(16, 1, 'Edit', ''),
(17, 1, 'Deactivate', ''),
(18, 7, 'For QA Approval', ''),
(19, 7, 'For AE Approval', 'For Account Executive Approval'),
(23, 9, 'For AE Approval', 'For Account Executive Approval'),
(27, 14, 'Hide', ''),
(22, 15, 'Add', ''),
(24, 7, 'View', ''),
(25, 9, 'View', ''),
(26, 14, 'View', ''),
(28, 10, 'Deactivate', ''),
(29, 18, 'View', ''),
(31, 19, 'Deactivate', ''),
(32, 19, 'Add', ''),
(33, 19, 'Edit', ''),
(34, 20, 'View', ''),
(35, 9, 'Ready for pick up', ''),
(36, 9, 'Receive Cash Request', ''),
(37, 9, 'Request Release', ''),
(38, 7, 'Request Release', '');

-- --------------------------------------------------------

--
-- Table structure for table `access_file_1`
--

CREATE TABLE IF NOT EXISTS `access_file_1` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(135) NOT NULL,
  `menu_name` varchar(85) NOT NULL,
  `head_name` varchar(26) NOT NULL,
  `sub_status` int(11) NOT NULL,
  `sub` varchar(25) NOT NULL,
  `menu_access_id` int(11) NOT NULL,
  `access_order` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_file_1`
--

INSERT INTO `access_file_1` (`id`, `menu_id`, `type`, `menu_name`, `head_name`, `sub_status`, `sub`, `menu_access_id`, `access_order`) VALUES
(3, 14, 'Create form for Approval', 'Create RM w/ PO Form to AE', 'RM with PO', 0, '', 0, 14),
(4, 15, 'Submit form for Approval', 'Create RM w/ PO Form to AE', 'RM with PO', 0, '', 0, 15),
(5, 16, 'Revise form for Approval', 'Create RM w/ PO Form to AE', 'RM with PO', 0, '', 0, 16),
(6, 17, 'Approve/Reject sending to AE', ' Create RM w/ PO Form to AE', 'RM with PO', 0, '', 0, 17),
(8, 18, 'Revise APPROVED AE Form', 'Send Approved FORM to AE for Approval', 'RM with PO', 0, '', 0, 18),
(9, 19, 'Approve/Reject Confirmation', 'Send Approved FORM to AE for Approval', 'RM with PO', 0, '', 0, 20),
(10, 20, '', 'Override/Cancel Approved RM w/ PO Form', 'RM with PO', 0, '', 0, 21),
(11, 21, 'Request for Cash Release', '', 'RM with PO', 0, '', 0, 22),
(12, 22, 'Confirm Cash Release Request', '', 'RM with PO', 0, '', 0, 23),
(13, 23, 'Confirm Cash Release Availability', '', 'RM with PO', 0, '', 0, 24),
(14, 24, 'Confirm Cash/Check Pick-up', '', 'RM with PO', 0, '', 0, 26),
(15, 25, 'Override/Cancel Approved CASH RELEASE AT RM w/ PO Form', '', 'RM with PO', 0, '', 0, 27),
(16, 26, 'Create RM w/o PO Form to AE', '', 'RM without PO', 0, '', 0, 28),
(17, 27, 'Create form for Approval', '', 'RM without PO', 0, '', 0, 29),
(18, 28, 'Submit form for Approval', '', 'RM without PO', 0, '', 0, 30),
(19, 29, 'Revise form for Approval', '', 'RM without PO', 0, '', 0, 31),
(20, 30, 'Approve/Reject sending to AE', '', 'RM without PO', 0, '', 0, 32),
(21, 31, 'Send Approved FORM to AE for Approv', '', 'RM without PO', 0, '', 0, 33),
(22, 32, 'Revise APPROVED AE Form', '', 'RM without PO', 0, '', 0, 34),
(23, 33, 'Send Approve/Reject Confirmation by', '', 'RM without PO', 0, '', 0, 35),
(24, 34, 'Override/Cancel Approved RM w/ PO F', '', 'RM without PO', 0, '', 0, 36),
(25, 35, 'Request for Cash Release', '', 'RM without PO', 0, '', 0, 37),
(26, 36, 'Confirm Cash Release Request', '', 'RM without PO', 0, '', 0, 38),
(27, 37, 'Confirm Cash Release Availability', '', 'RM without PO', 0, '', 0, 39),
(28, 38, 'Confirm Cash/Check Pick-up', '', 'RM without PO', 0, '', 0, 40),
(29, 39, 'Override/Cancel Approved CASH RELEA', '', 'RM without PO', 0, '', 0, 41),
(31, 1, 'Admin', 'Positions:', 'Contacts / Management', 1, '', 1, 1),
(32, 2, 'Account Executive', 'Positions:', 'Contacts / Management', 1, '', 1, 2),
(33, 3, 'QA', 'Positions:', 'Contacts / Management', 1, '', 1, 3),
(34, 4, 'Secretary', 'Positions:', 'Contacts / Management', 1, '', 1, 4),
(35, 5, 'Engineer', 'Positions:', 'Contacts / Management', 1, '', 1, 5),
(36, 6, 'Cash Release', 'Positions:', 'Contacts / Management', 1, '', 1, 6),
(37, 7, 'First name', 'FORM Requirements:', 'Contacts / Management', 1, '', 1, 7),
(38, 8, 'Last name', 'FORM Requirements:', 'Contacts / Management', 1, '', 1, 8),
(39, 9, 'Department', 'FORM Requirements:', 'Contacts / Management', 1, '', 1, 9),
(40, 10, 'Secretary/Engineer Account Executive', 'FORM Requirements:', 'Contacts / Management', 1, '', 1, 10),
(41, 11, 'Phone Number', 'FORM Requirements:', 'Contacts / Management', 1, '', 1, 11),
(42, 12, 'Phone Number', 'SMS Slot:', 'Contacts / Management', 1, '', 1, 12),
(43, 13, 'Software User Account Assignment', 'SMS Slot:', 'Contacts / Management', 1, '', 1, 13),
(45, 41, 'Approve Cash/Release for Pick Up', '', 'RM with PO', 0, '', 0, 25),
(44, 40, 'Send SMS Approved FORM to AE for Approval', 'Send Approved FORM to AE for Approval', 'RM with PO', 0, '', 0, 19);

-- --------------------------------------------------------

--
-- Table structure for table `access_file_2016`
--

CREATE TABLE IF NOT EXISTS `access_file_2016` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(35) NOT NULL,
  `menu_name` varchar(35) NOT NULL,
  `head_name` varchar(26) NOT NULL,
  `sub_status` int(11) NOT NULL,
  `sub` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_file_2016`
--

INSERT INTO `access_file_2016` (`id`, `menu_id`, `type`, `menu_name`, `head_name`, `sub_status`, `sub`) VALUES
(1, 1, 'Positions:', 'Admin', 'Contacts / Management', 1, ''),
(2, 2, 'Positions:', 'Account Executive', 'Contacts / Management', 1, ''),
(3, 3, 'Positions:', 'Account Executive - Finance Head', 'Contacts / Management', 1, ''),
(4, 4, 'Positions:', 'Account Executive - Finance Head', 'Contacts / Management', 1, 'QA'),
(6, 5, 'Positions:', 'Account Executive - Finance Head', 'Contacts / Management', 1, 'Secretary'),
(7, 6, 'Positions:', 'Account Executive - Finance Head', 'Contacts / Management', 1, 'Engineer'),
(8, 7, 'Positions:', 'Account Executive - Finance Head', 'Contacts / Management', 1, 'Cash Release'),
(9, 8, 'FORM Requirements:', 'First name', 'Contacts / Management', 1, ''),
(10, 9, 'FORM Requirements:', 'Last name', 'Contacts / Management', 1, ''),
(11, 10, 'FORM Requirements:', 'Department', 'Contacts / Management', 1, ''),
(12, 11, 'FORM Requirements:', 'Department', 'Contacts / Management', 1, 'Department head'),
(13, 12, 'FORM Requirements:', 'Phone Number', 'Contacts / Management', 1, ''),
(14, 12, 'SMS Slot:', 'Phone Number', 'Contacts / Management', 1, ''),
(15, 13, 'SMS Slot:', 'Software User Account Assignment', 'Contacts / Management', 1, ''),
(16, 14, 'PROCESS', 'PART 1', 'RM with PO', 0, 'Create RM w/ PO Form to A');

-- --------------------------------------------------------

--
-- Table structure for table `access_file_20161`
--

CREATE TABLE IF NOT EXISTS `access_file_20161` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `type` varchar(135) NOT NULL,
  `menu_name` varchar(85) NOT NULL,
  `head_name` varchar(26) NOT NULL,
  `sub_status` int(11) NOT NULL,
  `sub` varchar(25) NOT NULL,
  `menu_access_id` int(11) NOT NULL,
  `access_order` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_file_20161`
--

INSERT INTO `access_file_20161` (`id`, `menu_id`, `type`, `menu_name`, `head_name`, `sub_status`, `sub`, `menu_access_id`, `access_order`) VALUES
(3, 14, 'Create form for Approval', 'Create RM w/ PO Form to AE', 'RM with PO', 0, '', 0, 14),
(4, 15, 'Submit form for Approval', 'Create RM w/ PO Form to AE', 'RM with PO', 0, '', 0, 15),
(5, 16, 'Revise form for Approval', 'Create RM w/ PO Form to AE', 'RM with PO', 0, '', 0, 16),
(6, 17, 'Approve/Reject sending to AE', ' Create RM w/ PO Form to AE', 'RM with PO', 0, '', 0, 17),
(8, 18, 'Revise APPROVED AE Form', 'Send Approved FORM to AE for Approval', 'RM with PO', 0, '', 0, 18),
(9, 20, 'Approve/Reject Confirmation', 'Send Approved FORM to AE for Approval', 'RM with PO', 0, '', 0, 20),
(10, 21, '', 'Override/Cancel Approved RM w/ PO Form', 'RM with PO', 0, '', 0, 21),
(11, 22, 'Request for Cash Release', '', 'RM with PO', 0, '', 0, 22),
(12, 23, 'Confirm Cash Release Request', '', 'RM with PO', 0, '', 0, 23),
(13, 24, 'Confirm Cash Release Availability', '', 'RM with PO', 0, '', 0, 24),
(14, 26, 'Confirm Cash/Check Pick-up', '', 'RM with PO', 0, '', 0, 26),
(15, 27, 'Override/Cancel Approved CASH RELEASE AT RM w/ PO Form', '', 'RM with PO', 0, '', 0, 27),
(54, 37, 'Confirm Cash Release Request', '', 'RM without PO', 0, '', 0, 37),
(53, 36, 'Request for Cash Release', '', 'RM without PO', 0, '', 0, 36),
(47, 29, 'Submit form for Approval', 'Create RM w/ PO Form to AE', 'RM without PO', 0, '', 0, 29),
(31, 1, 'Admin', 'Positions:', 'Contacts / Management', 1, '', 1, 1),
(32, 2, 'Account Executive', 'Positions:', 'Contacts / Management', 1, '', 1, 2),
(33, 3, 'QA', 'Positions:', 'Contacts / Management', 1, '', 1, 3),
(34, 4, 'Secretary', 'Positions:', 'Contacts / Management', 1, '', 1, 4),
(35, 5, 'Engineer', 'Positions:', 'Contacts / Management', 1, '', 1, 5),
(36, 6, 'Cash Release', 'Positions:', 'Contacts / Management', 1, '', 1, 6),
(37, 7, 'First name', 'FORM Requirements:', 'Contacts / Management', 1, '', 1, 7),
(38, 8, 'Last name', 'FORM Requirements:', 'Contacts / Management', 1, '', 1, 8),
(39, 9, 'Department', 'FORM Requirements:', 'Contacts / Management', 1, '', 1, 9),
(40, 10, 'Secretary/Engineer Account Executive', 'FORM Requirements:', 'Contacts / Management', 1, '', 1, 10),
(41, 11, 'Phone Number', 'FORM Requirements:', 'Contacts / Management', 1, '', 1, 11),
(42, 12, 'Phone Number', 'SMS Slot:', 'Contacts / Management', 1, '', 1, 12),
(43, 13, 'Software User Account Assignment', 'SMS Slot:', 'Contacts / Management', 1, '', 1, 13),
(45, 25, 'Approve Cash/Release for Pick Up', '', 'RM with PO', 0, '', 0, 25),
(46, 28, 'Create form for Approval', 'Create RM w/ PO Form to AE', 'RM without PO', 0, '', 0, 28),
(52, 35, '', 'Override/Cancel Approved RM w/ PO Form', 'RM without PO', 0, '', 0, 35),
(51, 34, 'Approve/Reject Confirmation', 'Send Approved FORM to AE for Approval', 'RM without PO', 0, '', 0, 34),
(50, 32, 'Revise APPROVED AE Form', 'Send Approved FORM to AE for Approval', 'RM without PO', 0, '', 0, 32),
(49, 31, 'Approve/Reject sending to AE', ' Create RM w/ PO Form to AE', 'RM without PO', 0, '', 0, 31),
(48, 30, 'Revise form for Approval', 'Create RM w/ PO Form to AE', 'RM without PO', 0, '', 0, 30),
(44, 19, 'Send SMS Approved FORM to AE for Approval', 'Send Approved FORM to AE for Approval', 'RM with PO', 0, '', 0, 19),
(55, 38, 'Confirm Cash Release Availability', '', 'RM without PO', 0, '', 0, 38),
(56, 40, 'Confirm Cash/Check Pick-up', '', 'RM without PO', 0, '', 0, 40),
(57, 41, 'Override/Cancel Approved CASH RELEASE AT RM w/ PO Form', '', 'RM without PO', 0, '', 0, 41),
(58, 39, 'Approve Cash/Release for Pick Up', '', 'RM without PO', 0, '', 0, 39),
(59, 33, 'Send SMS Approved FORM to AE for Approval', 'Send Approved FORM to AE for Approval', 'RM without PO', 0, '', 0, 33);

-- --------------------------------------------------------

--
-- Table structure for table `chat_history_file`
--

CREATE TABLE IF NOT EXISTS `chat_history_file` (
`id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `chat_date` datetime NOT NULL,
  `trans_no` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat_history_file`
--

INSERT INTO `chat_history_file` (`id`, `remarks`, `user_name`, `chat_date`, `trans_no`) VALUES
(1, 'hello', 'admin', '2016-04-18 18:58:34', 28),
(2, 'approve', 'admin', '2016-04-18 18:58:58', 28),
(3, 'mlkhjl', 'admin', '2016-04-18 19:06:20', 29),
(4, 'nkhl', 'admin', '2016-04-18 19:06:26', 29),
(5, 'cjoiJ', 'a', '2016-05-02 23:24:56', 14),
(6, 'cjoiJ', 'a', '2016-05-02 23:26:02', 14),
(7, 'cjoiJ', 'a', '2016-05-02 23:26:49', 14),
(8, 'cjoiJ', 'a', '2016-05-02 23:27:13', 14),
(9, 'cjoiJ', 'a', '2016-05-02 23:27:43', 14),
(10, 'cjoiJ', 'a', '2016-05-02 23:28:16', 14),
(11, 'cjoiJ', 'a', '2016-05-02 23:28:41', 14),
(12, 'cjoiJ', 'a', '2016-05-02 23:28:51', 14),
(13, '222', 'a', '2016-05-02 23:30:27', 14),
(14, '2', 'a', '2016-05-02 23:44:16', 7),
(15, '2', 'a', '2016-05-02 23:53:41', 7),
(16, 'send Text', 'admin', '2016-05-14 22:54:39', 29),
(17, 'what', 'admin', '2016-05-14 22:56:35', 28);

-- --------------------------------------------------------

--
-- Table structure for table `history_file`
--

CREATE TABLE IF NOT EXISTS `history_file` (
`id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history_file`
--

INSERT INTO `history_file` (`id`, `remarks`, `date`) VALUES
(1, 'update po_file set status=''5'' where trans_no=''2''', '2016-04-28 15:58:15'),
(2, 'update po_file set status=''6'' where trans_no=''2''', '2016-04-28 15:58:36'),
(3, 'update po_file set status=''7'' where trans_no=''2''', '2016-04-28 15:58:43'),
(4, 'update po_file set status=''3'' where trans_no=''3''', '2016-04-28 16:01:51'),
(5, 'update po_file set status=''4'' where trans_no=''3''', '2016-04-28 16:01:54'),
(6, 'update po_file set status=''5'' where trans_no=''3''', '2016-04-28 16:01:57'),
(7, 'update po_file set status=''6'' where trans_no=''3''', '2016-04-28 16:02:00'),
(8, 'update po_file set status=''7'' where trans_no=''3''', '2016-04-28 16:02:03'),
(9, 'update po_file set status=''3'' where trans_no=''4''', '2016-04-28 16:03:47'),
(10, 'update po_file set status=''4'' where trans_no=''4''', '2016-04-28 16:03:49'),
(11, 'update po_file set status=''5'' where trans_no=''4''', '2016-04-28 16:03:52'),
(12, 'update po_file set status=''6'' where trans_no=''4''', '2016-04-28 16:03:55'),
(13, 'update po_file set status=''7'' where trans_no=''4''', '2016-04-28 16:03:58'),
(14, 'update po_file set status=''3'' where trans_no=''5''', '2016-04-28 16:05:00'),
(15, 'update po_file set status=''4'' where trans_no=''5''', '2016-04-28 16:05:03'),
(16, 'update po_file set status=''5'' where trans_no=''5''', '2016-04-28 16:05:05'),
(17, 'update po_file set status=''6'' where trans_no=''5''', '2016-04-28 16:05:08'),
(18, 'update po_file set status=''7'' where trans_no=''5''', '2016-04-28 16:05:10'),
(19, 'update po_file set status=''3'' where trans_no=''6''', '2016-04-28 16:06:12'),
(20, 'update po_file set status=''4'' where trans_no=''6''', '2016-04-28 16:06:15'),
(21, 'update po_file set status=''5'' where trans_no=''6''', '2016-04-28 16:06:17'),
(22, 'update po_file set status=''6'' where trans_no=''6''', '2016-04-28 16:06:19'),
(23, 'update po_file set status=''7'' where trans_no=''6''', '2016-04-28 16:06:22'),
(24, 'update po_file set status=''3'' where trans_no=''7''', '2016-04-28 16:07:01'),
(25, 'update po_file set status=''4'' where trans_no=''7''', '2016-04-28 16:07:04'),
(26, 'update po_file set status=''5'' where trans_no=''7''', '2016-04-28 16:07:06'),
(27, 'update po_file set status=''6'' where trans_no=''7''', '2016-04-28 16:07:09'),
(28, 'update po_file set status=''7'' where trans_no=''7''', '2016-04-28 16:07:11'),
(29, 'update po_file set status=''3'' where trans_no=''8''', '2016-04-28 16:08:38'),
(30, 'update po_file set status=''4'' where trans_no=''8''', '2016-04-28 16:08:41'),
(31, 'update po_file set status=''5'' where trans_no=''8''', '2016-04-28 16:08:43'),
(32, 'update po_file set status=''6'' where trans_no=''8''', '2016-04-28 16:08:46'),
(33, 'update po_file set status=''7'' where trans_no=''8''', '2016-04-28 16:08:49'),
(34, 'update po_file set status=''9'' where trans_no=''8''', '2016-04-28 16:08:56'),
(35, 'update po_file set status=''3'' where trans_no=''9''', '2016-05-01 10:57:30'),
(36, 'update po_file set status=''4'' where trans_no=''9''', '2016-05-01 10:59:55'),
(37, 'update po_file set status=''5'' where trans_no=''9''', '2016-05-01 10:59:59'),
(38, 'update po_file set status=''6'' where trans_no=''9''', '2016-05-01 11:00:02'),
(39, 'update po_file set status=''7'' where trans_no=''9''', '2016-05-01 11:00:07'),
(40, 'update po_file set status=''9'' where trans_no=''9''', '2016-05-01 11:00:21'),
(41, 'update po_file set status=''3'' where trans_no=''10''', '2016-05-01 11:23:37'),
(42, 'update po_file set status=''4'' where trans_no=''10''', '2016-05-01 11:23:41'),
(43, 'update po_file set status=''6''  where trans_no=''10''', '2016-05-01 13:49:01'),
(44, 'update po_file set status=''7''  where trans_no=''10''', '2016-05-01 14:03:54'),
(45, 'update po_file set status=''3''  where trans_no=''11''', '2016-05-02 10:47:16'),
(46, 'update po_file set status=''4'' ,ae_status=''2'''' where trans_no=''11''', '2016-05-02 10:47:20'),
(47, 'update po_file set status=''4'' ,ae_status=''2'' where trans_no=''11''', '2016-05-02 10:50:56'),
(48, 'update po_file set status=''6''  where trans_no=''11''', '2016-05-02 10:51:09'),
(49, 'update po_file set status=''3''  where trans_no=''12''', '2016-05-02 10:52:49'),
(50, 'update po_file set status=''4'' ,ae_status=''2'' where trans_no=''12''', '2016-05-02 10:52:52'),
(51, 'update po_file set status=''6''  where trans_no=''12''', '2016-05-02 10:52:56'),
(52, 'update po_file set status=''3''  where trans_no=''13''', '2016-05-02 10:53:57'),
(53, 'update po_file set status=''4'' ,ae_status=''2'' where trans_no=''13''', '2016-05-02 10:54:03'),
(54, 'update po_file set status=''6''  where trans_no=''13''', '2016-05-02 10:54:11'),
(55, 'update po_file set status=''3''  where trans_no=''14''', '2016-05-02 10:57:22'),
(56, 'update po_file set status=''4'' ,ae_status=''2'' where trans_no=''14''', '2016-05-02 10:57:24'),
(57, 'update po_file set status=''6''  where trans_no=''14''', '2016-05-02 10:57:27'),
(58, 'update po_file set status=''5'' ,ae_status=''1'' where trans_no=''14''', '2016-05-02 11:09:43'),
(59, 'update po_file set status=''8'' ,ae_status=''1'' where trans_no=''13''', '2016-05-02 11:11:59'),
(60, 'update po_file set status=''3''  where trans_no=''15''', '2016-05-02 11:12:47'),
(61, 'update po_file set status=''4'' ,ae_status=''2'' where trans_no=''15''', '2016-05-02 11:12:51'),
(62, 'update po_file set status=''6''  where trans_no=''15''', '2016-05-02 11:12:57'),
(63, 'update po_file set status=''6'' ,ae_status=''1'' where trans_no=''15''', '2016-05-02 11:13:03'),
(64, 'update po_file set status=''7''  where trans_no=''15''', '2016-05-02 11:13:06'),
(65, 'update po_file set status=''9''  where trans_no=''15''', '2016-05-02 11:13:15'),
(66, 'update po_file set status=''3''  where trans_no=''17''', '2016-05-02 12:36:27'),
(67, 'update po_file set status=''4'' ,ae_status=''2'' where trans_no=''17''', '2016-05-02 12:36:37'),
(68, 'update po_file set status=''6''  where trans_no=''17''', '2016-05-02 12:39:00'),
(69, 'update po_file set status=''7''  where trans_no=''17''', '2016-05-02 12:39:11'),
(70, 'update po_file set status=''7'' ,ae_status=''1'' where trans_no=''17''', '2016-05-02 12:39:48'),
(71, 'update po_file set status=''9''  where trans_no=''17''', '2016-05-02 12:41:58'),
(72, 'update po_file set status=''3''  where trans_no=''20''', '2016-05-09 01:40:57'),
(73, 'update po_file set status=''4'' ,ae_status=''2'' where trans_no=''20''', '2016-05-09 01:41:04'),
(74, 'update po_file set status=''6''  where trans_no=''20''', '2016-05-09 01:41:08'),
(75, 'update po_file set status=''7''  where trans_no=''20''', '2016-05-09 01:41:14'),
(76, 'update po_file set status=''8'' ,ae_status=''1'' where trans_no=''20''', '2016-05-09 01:41:26'),
(77, 'update po_file set status=''9''  where trans_no=''20''', '2016-05-09 01:41:30'),
(78, 'update po_file set status=''3''  where trans_no=''21''', '2016-05-09 01:44:12'),
(79, 'update po_file set status=''4'' ,ae_status=''2'' where trans_no=''21''', '2016-05-09 01:44:16'),
(80, 'update po_file set status=''4'' ,ae_status=''1'' where trans_no=''21''', '2016-05-09 01:44:22'),
(81, 'update po_file set status=''6''  where trans_no=''21''', '2016-05-09 01:49:34'),
(82, 'update po_file set status=''7''  where trans_no=''21''', '2016-05-09 01:50:07'),
(83, 'update po_file set status=''3''  where trans_no=''22''', '2016-05-09 01:54:11'),
(84, 'update po_file set status=''4'' ,ae_status=''2'' where trans_no=''22''', '2016-05-09 01:54:13'),
(85, 'update po_file set status=''6''  where trans_no=''22''', '2016-05-09 01:54:18'),
(86, 'update po_file set status=''7''  where trans_no=''22''', '2016-05-09 01:54:21'),
(87, 'update po_file set status=''3''  where trans_no=''23''', '2016-05-09 02:28:49'),
(88, 'update po_file set status=''4'' ,ae_status=''2'' where trans_no=''23''', '2016-05-09 02:28:56'),
(89, 'update po_file set status=''6''  where trans_no=''23''', '2016-05-09 02:29:01'),
(90, 'update po_file set status=''7''  where trans_no=''23''', '2016-05-09 02:29:07'),
(91, 'update po_file set status=''3''  where trans_no=''24''', '2016-05-09 02:50:37'),
(92, 'update po_file set status=''4'' ,ae_status=''2'' where trans_no=''24''', '2016-05-09 02:50:45'),
(93, 'update po_file set status=''6''  where trans_no=''24''', '2016-05-09 02:50:51'),
(94, 'update po_file set status=''7''  where trans_no=''24''', '2016-05-09 02:51:06'),
(95, 'update po_file set status=''7'' ,ae_status=''1'' where trans_no=''24''', '2016-05-09 02:58:11'),
(96, 'update po_file set status=''9''  where trans_no=''24''', '2016-05-09 02:58:28'),
(97, 'update po_file set status=''3''   where trans_no=''26''', '2016-05-09 05:44:25'),
(98, 'update po_file set status=''4''  ,ae_status=''2'' where trans_no=''26''', '2016-05-09 05:51:17'),
(99, 'update po_file set status=''3''   where trans_no=''19''', '2016-05-11 16:08:00'),
(100, 'update po_file set status=''3''   where trans_no=''28''', '2016-05-12 10:57:32'),
(101, 'update po_file set status=''4''  ,ae_status=''2'' where trans_no=''28''', '2016-05-12 11:06:39'),
(102, 'update po_file set status=''6''   where trans_no=''28''', '2016-05-12 11:07:44'),
(103, 'update po_file set status=''7''   where trans_no=''28''', '2016-05-12 11:08:25'),
(104, 'update po_file set status=''7''  ,ae_status=''1'' where trans_no=''28''', '2016-05-12 11:08:47'),
(105, 'update po_file set status=''9''   where trans_no=''28''', '2016-05-12 11:09:40'),
(106, 'update po_file set status=''3''   where trans_no=''29''', '2016-05-14 01:20:32'),
(107, 'update po_file set status=''4''  ,ae_status=''2'' where trans_no=''29''', '2016-05-14 01:20:39'),
(108, 'update po_file set status=''6''   where trans_no=''29''', '2016-05-15 16:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `master_address_file`
--

CREATE TABLE IF NOT EXISTS `master_address_file` (
`id` int(11) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `department_id` int(11) NOT NULL,
  `account_executive_id` int(11) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `smsc_id` varchar(20) NOT NULL,
  `sms_slot` varchar(25) NOT NULL,
  `user_name` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_address_file`
--

INSERT INTO `master_address_file` (`id`, `account_type`, `account_id`, `first_name`, `last_name`, `department_id`, `account_executive_id`, `phone_number`, `date_created`, `created_by`, `mas_status`, `smsc_id`, `sms_slot`, `user_name`) VALUES
(1, 'Account Executive', 1, 'ac', 's', 1, 0, '123', '2016-04-28 01:25:41', 'admin', 1, '11', 'Choose', '2'),
(2, 'Secretary', 2, 'sec', 'sec', 1, 1, '31', '2016-04-28 01:26:26', 'admin', 1, '10', 'Choose', '3'),
(3, 'Account Executive', 3, 'ac', 'ac', 1, 0, '231', '2016-04-28 01:33:52', 'admin', 1, '9', 'Choose', '2'),
(4, 'Secretary', 4, 'se', '2', 1, 1, '22', '2016-04-28 01:34:48', 'admin', 1, '8', 'Choose', '3'),
(5, 'Engineer', 5, '11', '1', 1, 1, '1', '2016-04-28 01:48:21', 'sec', 1, '7', 'Choose', '2016-04-28 01:48:21'),
(6, 'Others', 6, 'qqq', 'rrr', 0, 0, 'nfjf', '2016-04-28 19:15:24', 'admin', 1, '6', 'Choose', '4'),
(7, 'Others', 7, 'cash', 'cash', 1, 0, '2321', '2016-04-28 19:54:57', 'admin', 1, '5', 'Choose', '5'),
(8, 'Others', 8, '2', '2', 5, 0, '2', '2016-04-28 19:56:12', 'admin', 1, '4', 'Choose', '2016-04-28 19:56:12'),
(9, 'Account Executive', 9, 'a', 'a', 1, 0, 'a', '2016-05-02 20:10:10', 'admin', 1, '3', 'Choose', '6'),
(10, 'Others', 10, 'alvie', 'Penaflorida', 1, 0, '+6325533046', '2016-05-12 19:20:24', 'admin', 1, '0', 'N/A', '7'),
(11, 'QA Special', 11, 'what', 'ever', 1, 0, '9809', '2016-05-12 20:00:21', 'admin', 1, '1', 'N/A', '9');

-- --------------------------------------------------------

--
-- Table structure for table `master_address_file_2016`
--

CREATE TABLE IF NOT EXISTS `master_address_file_2016` (
`id` int(11) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `account_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `department_id` int(11) NOT NULL,
  `account_executive_id` int(11) NOT NULL,
  `phone_number` varchar(13) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` varchar(25) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `smsc_id` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_address_file_2016`
--

INSERT INTO `master_address_file_2016` (`id`, `account_type`, `account_id`, `first_name`, `last_name`, `department_id`, `account_executive_id`, `phone_number`, `date_created`, `created_by`, `mas_status`, `smsc_id`) VALUES
(1, 'Account Executive', 1, ' account ', 'executive ', 1, 0, '1 ', '0000-00-00 00:00:00', '', 0, '"'),
(6, 'Account Executive', 6, ' 1', ' 1', 0, 0, ' 1', '2016-04-16 00:04:42', '', 1, '"'),
(2, 'account executive', 2, 'kai', 'hiwatari', 0, 0, ' ', '2016-04-15 19:02:06', '', 1, '"'),
(3, 'Secretary', 3, ' secretary', ' 1', 0, 1, ' 111', '2016-04-15 19:24:15', '', 1, '"'),
(4, 'Engineer', 4, ' engineer', ' 1', 0, 1, ' 2', '2016-04-15 19:24:40', '', 1, '"'),
(5, 'account executive', 5, ' 4', ' 4', 0, 0, ' ', '2016-04-15 22:52:53', '', 0, '"'),
(7, 'Choose', 7, ' ', ' ', 0, 0, ' ', '2016-04-16 00:08:56', '', 1, '"');

-- --------------------------------------------------------

--
-- Table structure for table `master_department_file`
--

CREATE TABLE IF NOT EXISTS `master_department_file` (
`id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `added_date` datetime NOT NULL,
  `added_by` varchar(50) NOT NULL,
  `department_head` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_department_file`
--

INSERT INTO `master_department_file` (`id`, `department_id`, `department`, `mas_status`, `added_date`, `added_by`, `department_head`) VALUES
(1, 1, 'Finance', 1, '0000-00-00 00:00:00', '', ''),
(2, 2, 'Accounting2', 0, '0000-00-00 00:00:00', '', ''),
(3, 3, 'Accounting2', 1, '0000-00-00 00:00:00', '', ''),
(4, 4, 'Accounting1 ', 0, '0000-00-00 00:00:00', '', ''),
(9, 5, '2', 1, '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_department_file_2016`
--

CREATE TABLE IF NOT EXISTS `master_department_file_2016` (
`id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `department` varchar(50) NOT NULL,
  `mas_status` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `added_by` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_department_file_2016`
--

INSERT INTO `master_department_file_2016` (`id`, `department_id`, `department`, `mas_status`, `added_date`, `added_by`) VALUES
(1, 1, 'Finance', 1, '0000-00-00 00:00:00', '"'),
(2, 2, 'Accounting2', 0, '0000-00-00 00:00:00', '"'),
(3, 3, 'Accounting2', 1, '0000-00-00 00:00:00', '"'),
(4, 4, 'Accounting1 ', 0, '0000-00-00 00:00:00', '"'),
(5, 0, ' test', 0, '0000-00-00 00:00:00', '"');

-- --------------------------------------------------------

--
-- Table structure for table `master_engineer_file`
--

CREATE TABLE IF NOT EXISTS `master_engineer_file` (
`id` int(11) NOT NULL,
  `engineer_id` int(11) NOT NULL,
  `engineer` varchar(50) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `account_executive_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_engineer_file`
--

INSERT INTO `master_engineer_file` (`id`, `engineer_id`, `engineer`, `mas_status`, `date_created`, `created_by`, `account_executive_id`) VALUES
(1, 1, '2', 1, '0000-00-00 00:00:00', '', 1),
(2, 3, 'ENGINEER_1', 1, '0000-00-00 00:00:00', '', 1),
(3, 1, 'engineer_2', 1, '0000-00-00 00:00:00', '', 1),
(4, 1, 'kai', 1, '0000-00-00 00:00:00', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `master_engineer_file_2016`
--

CREATE TABLE IF NOT EXISTS `master_engineer_file_2016` (
`id` int(11) NOT NULL,
  `engineer_id` int(11) NOT NULL,
  `engineer` varchar(50) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `date_created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `account_executive_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_engineer_file_2016`
--

INSERT INTO `master_engineer_file_2016` (`id`, `engineer_id`, `engineer`, `mas_status`, `date_created`, `created_by`, `account_executive_id`) VALUES
(1, 1, '2', 1, '0000-00-00 00:00:00', '', 1),
(2, 3, 'ENGINEER_1', 1, '0000-00-00 00:00:00', '', 1),
(3, 1, 'engineer_2', 1, '0000-00-00 00:00:00', '', 1),
(4, 1, 'kai', 1, '0000-00-00 00:00:00', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `master_position_file`
--

CREATE TABLE IF NOT EXISTS `master_position_file` (
`id` int(11) NOT NULL,
  `account_type` varchar(25) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `date_added` datetime NOT NULL,
  `added_by` varchar(25) NOT NULL,
  `system_access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_position_file`
--

INSERT INTO `master_position_file` (`id`, `account_type`, `mas_status`, `date_added`, `added_by`, `system_access`) VALUES
(1, 'Account Executive', 1, '2016-04-24 15:39:25', '', 1),
(2, 'Secretary', 1, '2016-04-24 15:39:25', '', 1),
(3, 'Engineer', 1, '2016-04-24 15:39:25', '', 0),
(4, 'Cash Release', 1, '2016-04-28 19:56:50', 'admin', 1),
(5, 'QA', 1, '2016-05-12 19:20:24', 'admin', 1),
(6, 'QA Special', 1, '2016-05-12 20:00:20', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_file`
--

CREATE TABLE IF NOT EXISTS `menu_file` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(25) NOT NULL,
  `menu_php` varchar(50) NOT NULL,
  `menu_type` int(11) NOT NULL,
  `menu_head` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `menu_table` int(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_file`
--

INSERT INTO `menu_file` (`id`, `menu_id`, `menu_name`, `menu_php`, `menu_type`, `menu_head`, `menu_order`, `mas_status`, `menu_table`) VALUES
(1, 1, 'Contacts List', 'list_view.php', 2, 1, 1, 1, 0),
(2, 2, 'Masters', '', 1, 1, 1, 1, 0),
(4, 3, 'Department', 'department_list.php', 2, 1, 3, 1, 0),
(5, 4, 'With PO', '', 1, 2, 1, 1, 2),
(6, 5, 'Without PO', '', 1, 3, 1, 1, 1),
(7, 6, 'Create', 'wo_po_form.php?type=withoutpo', 2, 3, 1, 1, 1),
(8, 7, 'View', 'view_data_combine.php?type=Without%20Po', 2, 3, 2, 1, 1),
(9, 8, 'Create', 'wo_po_form.php', 2, 2, 1, 1, 2),
(10, 9, 'View', 'view_data_combine.php?type=With%20Po', 2, 2, 2, 1, 2),
(11, 10, 'User', 'user_list.php', 2, 1, 4, 1, 0),
(13, 11, 'QA', '', 1, 4, 4, 0, 0),
(14, 12, 'For Approve', 'view_data_combine.php', 2, 4, 1, 0, 0),
(15, 13, 'SMS', '', 1, 5, 5, 0, 0),
(16, 14, 'SMS List', 'sms_list.php', 2, 7, 1, 1, 3),
(17, 15, 'User Access', 'user2.php', 2, 1, 2, 1, 0),
(18, 21, 'Current Password', 'current_password.php', 2, 16, 10, 1, 0),
(19, 16, 'Account', '', 1, 16, 1, 1, 0),
(20, 17, 'Report', '', 1, 7, 6, 1, 3),
(21, 18, 'List of Payments', 'list_payments.php', 2, 7, 1, 1, 3),
(23, 19, 'SMS Slot List', 'sms_slot_list.php', 2, 1, 5, 1, 0),
(24, 20, 'List Approved', 'list_approved.php', 2, 7, 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `menu_file_2016`
--

CREATE TABLE IF NOT EXISTS `menu_file_2016` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(25) NOT NULL,
  `menu_php` varchar(50) NOT NULL,
  `menu_type` int(11) NOT NULL,
  `menu_head` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_file_2016`
--

INSERT INTO `menu_file_2016` (`id`, `menu_id`, `menu_name`, `menu_php`, `menu_type`, `menu_head`, `menu_order`, `mas_status`) VALUES
(1, 1, 'Address Book', 'list_view.php', 2, 1, 1, 1),
(2, 2, 'Masters', '', 1, 1, 1, 1),
(4, 3, 'Department', 'department_list.php', 2, 1, 3, 1),
(5, 4, 'With PO', '', 1, 2, 1, 1),
(6, 5, 'Without PO', '', 1, 3, 1, 1),
(7, 6, 'Create', 'wo_po_form.php?type=withoutpo', 2, 3, 1, 1),
(8, 7, 'View', 'view_data.php?type=Without%20Po', 2, 3, 2, 1),
(9, 8, 'Create', 'wo_po_form.php', 2, 2, 1, 1),
(10, 9, 'View', 'view_data.php?type=With%20Po', 2, 2, 2, 1),
(11, 10, 'User', 'user_list.php', 2, 1, 4, 1),
(13, 11, 'QA', '', 1, 4, 4, 1),
(14, 12, 'For Approve', 'view_data_combine.php', 2, 4, 1, 1),
(15, 13, 'SMS', '', 1, 5, 5, 0),
(16, 14, 'SMS List', 'sms_list.php', 2, 7, 1, 1),
(17, 15, 'User Access', 'user_access.php', 2, 1, 2, 1),
(18, 15, 'Current Password', 'current_password.php', 2, 16, 10, 1),
(19, 16, 'Account', '', 1, 16, 1, 1),
(20, 17, 'Report', '', 1, 7, 6, 1),
(21, 18, 'List of Payments', 'list_payments.php', 2, 7, 1, 1),
(23, 19, 'SMS Slot List', 'sms_slot_list.php', 2, 1, 5, 1),
(24, 20, 'List Approved', 'list_approved.php', 2, 7, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `po_check_file`
--

CREATE TABLE IF NOT EXISTS `po_check_file` (
`id` int(11) NOT NULL,
  `trans_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cv` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_check_file`
--

INSERT INTO `po_check_file` (`id`, `trans_no`, `name`, `title`, `cv`, `date_created`, `created_by`) VALUES
(1, 1, '22', '2', '2', '2016-04-18 20:42:53', 'admin'),
(2, 3, '1', '1', '1', '2016-04-18 20:58:17', 'admin'),
(3, 6, '313', '213', '', '2016-04-19 00:09:28', 'admin'),
(4, 5, '313', '31', '311', '2016-04-19 00:09:32', 'admin'),
(5, 7, '31', '31', '', '2016-04-19 00:13:03', 'admin'),
(6, 9, '11', '11', '', '2016-04-28 23:52:17', 'admin'),
(7, 8, '22', '22', '', '2016-04-28 23:52:26', 'admin'),
(8, 10, '11', '11', '', '2016-04-28 23:52:59', 'admin'),
(9, 1, '11', '11', '', '2016-04-28 23:53:56', 'admin'),
(10, 2, 'r', 'r', '', '2016-04-29 00:00:47', 'admin'),
(11, 3, '2', '2', '', '2016-04-29 00:02:07', 'admin'),
(12, 4, '3', '3', '', '2016-04-29 00:04:10', 'admin'),
(13, 5, '3', '3', '3', '2016-04-29 00:05:14', 'admin'),
(14, 6, 'e2', 'e', '2', '2016-04-29 00:06:27', 'admin'),
(15, 7, '2', '2', '2', '2016-04-29 00:07:16', 'admin'),
(16, 8, '2', '2', '', '2016-04-29 00:08:53', 'admin'),
(17, 9, 'w', 'w', '', '2016-05-01 19:00:15', 'admin'),
(18, 10, '3131', '31', '31', '2016-05-01 22:09:51', 'admin'),
(19, 11, 'w', 's', 'w', '2016-05-02 18:51:32', 'admin'),
(20, 12, '3', '2', '', '2016-05-02 18:53:02', 'admin'),
(21, 13, '2', '2', '3', '2016-05-02 18:54:53', 'admin'),
(22, 14, '2', '2', '', '2016-05-02 18:57:33', 'admin'),
(23, 14, '2', '2', '', '2016-05-02 18:58:30', 'admin'),
(24, 14, '2', '2', '', '2016-05-02 18:59:37', 'admin'),
(25, 14, '2', '2', '', '2016-05-02 19:00:28', 'admin'),
(26, 14, 'w', 'w', '', '2016-05-02 19:00:46', 'admin'),
(27, 15, '2', '2', '', '2016-05-02 19:13:13', 'admin'),
(28, 17, 'e', 'r', '', '2016-05-02 20:41:50', 'a'),
(29, 20, '22', '22', '', '2016-05-09 09:41:20', 'admin'),
(30, 21, '3', '2', '3', '2016-05-09 09:50:13', 'admin'),
(31, 21, '3', '3', '3', '2016-05-09 09:50:20', 'admin'),
(32, 21, '4', '4', '4', '2016-05-09 09:50:28', 'admin'),
(33, 21, '2', '2', '2', '2016-05-09 09:51:31', 'admin'),
(34, 21, '2', '2', '2', '2016-05-09 09:53:15', 'admin'),
(35, 22, '2', '2', '', '2016-05-09 09:54:26', 'admin'),
(36, 21, '2', '2', '2', '2016-05-09 10:16:06', 'admin'),
(37, 21, '2', '2', '2', '2016-05-09 10:27:06', 'admin'),
(38, 23, '2', '1', '2', '2016-05-09 10:30:16', 'admin'),
(39, 23, '2', '1', '2', '2016-05-09 10:30:36', 'admin'),
(40, 23, '2', '1', '2', '2016-05-09 10:30:52', 'admin'),
(41, 23, '2', '1', '2', '2016-05-09 10:31:11', 'admin'),
(42, 23, '2', '1', '2', '2016-05-09 10:31:25', 'admin'),
(43, 23, '1', '2', '1', '2016-05-09 10:33:00', 'admin'),
(44, 23, 'w', 'w', '1', '2016-05-09 10:33:50', 'admin'),
(45, 24, '2', '2', '', '2016-05-09 10:58:17', 'admin'),
(46, 28, 'sample', 'sample', '', '2016-05-12 19:09:09', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `po_check_file_2016`
--

CREATE TABLE IF NOT EXISTS `po_check_file_2016` (
`id` int(11) NOT NULL,
  `trans_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cv` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `created_by` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_check_file_2016`
--

INSERT INTO `po_check_file_2016` (`id`, `trans_no`, `name`, `title`, `cv`, `date_created`, `created_by`) VALUES
(1, 1, ' 1', ' 11', ' 1', '2015-09-11 19:36:04', 'admin"');

-- --------------------------------------------------------

--
-- Table structure for table `po_file`
--

CREATE TABLE IF NOT EXISTS `po_file` (
`id` int(11) NOT NULL,
  `trans_no` int(11) NOT NULL,
  `number_code` int(11) NOT NULL,
  `letter_code` varchar(10) NOT NULL,
  `requestor` varchar(50) NOT NULL,
  `title` varchar(25) NOT NULL COMMENT 'title/remarks',
  `company_name` varchar(100) NOT NULL,
  `secretary` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL COMMENT 'pat to/supplier',
  `payment_type` varchar(50) NOT NULL COMMENT 'cash or check',
  `total_amount` double(11,2) NOT NULL,
  `date_created` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `jo` varchar(11) NOT NULL,
  `po` varchar(40) NOT NULL,
  `TXT&ID_NO` varchar(11) NOT NULL,
  `item_description` text NOT NULL,
  `engineer` varchar(55) NOT NULL,
  `page` varchar(50) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `received_date` datetime NOT NULL,
  `created_by` varchar(55) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `release_date` datetime NOT NULL,
  `approved_date` datetime NOT NULL,
  `ae_status` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_file`
--

INSERT INTO `po_file` (`id`, `trans_no`, `number_code`, `letter_code`, `requestor`, `title`, `company_name`, `secretary`, `supplier`, `payment_type`, `total_amount`, `date_created`, `status`, `jo`, `po`, `TXT&ID_NO`, `item_description`, `engineer`, `page`, `file_name`, `received_date`, `created_by`, `mas_status`, `release_date`, `approved_date`, `ae_status`) VALUES
(1, 1, 1, 'A', '1', '1', '1', '4', '1', 'Cash', 4.00, '2016-04-28 23:53:35', 'Receive Cash Request', '1', '1', '0', '1', '5', '1', '', '0000-00-00 00:00:00', 'admin', 1, '2016-04-28 23:53:56', '0000-00-00 00:00:00', 0),
(2, 2, 2, 'B', '1', '2', '2', '4', '2', 'Cash', 4.00, '2016-04-28 23:57:08', '', '2', '2', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(3, 3, 1, 'A', '1', '2', '2', '2', '2', 'Cash', 4.00, '2016-04-29 00:01:44', '9', '2', '2', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(4, 4, 2, 'B', '1', '2', '2', '4', '2', 'Cash', 6.00, '2016-04-29 00:03:39', '9', '2', '2', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(5, 5, 3, 'C', '1', '2', '2', '4', '2', 'Check', 4.00, '2016-04-29 00:04:54', '9', '2', '2', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(6, 6, 4, 'D', '1', '2', '2', '4', '2', 'Check', 4.00, '2016-04-29 00:06:02', '9', '2', '2', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(7, 7, 5, 'E', '1', '2', '2', '2', '2', 'Check', 4.00, '2016-04-29 00:06:55', '9', '2', '2', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(19, 19, 1, 'A', '1', '1', '1', '2', '2', 'Cash', 6.00, '2016-05-09 09:39:13', '3', '1', '5', '0', '5', '5', '5', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(9, 9, 1, 'A', '1', '2', '2', '2', '2', 'Cash', 6.00, '2016-05-01 18:53:52', '9', '2', '2', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(10, 10, 2, 'B', '1', '1', '1', '2', '2', 'Check', 9.00, '2016-05-01 19:23:26', '8', '1', '2', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(11, 11, 1, 'A', '1', '1', '1', '4', '1', 'Check', 2.00, '2016-05-02 18:47:08', '8', '1', '1', '0', '1', '5', '1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(12, 12, 2, 'B', '1', '2', '2', '4', '2', 'Cash', 4.00, '2016-05-02 18:52:43', '8', '2', '2', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(13, 13, 3, 'C', '1', '2', '2', '2', '2', 'Check', 260.00, '2016-05-02 18:53:48', '8', '2', '2', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(14, 14, 4, 'D', '1', '6', '6', '2', '7', 'Cash', 49.00, '2016-05-02 18:57:15', '5', '27', '7', '0', '7', '5', '7', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(15, 15, 5, 'E', '1', '2', '2', '4', '8', 'Cash', 6.00, '2016-05-02 19:12:33', 'Received', '8', '8', '0', '8', '5', '8', '_DSC2361.jpg', '2016-05-02 19:13:45', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(16, 16, 6, 'F', '1', '2', '2', '4', '2', 'Cash', 40.00, '2016-05-02 20:07:04', 'QA Approve', '2', '---', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(17, 17, 7, 'G', '1', '2', '2', '4', '7', 'Cash', 49.00, '2016-05-02 20:31:26', 'Received', '2', '2', '0', '7', '5', '7', 'colorpicker_hsb_s.png', '2016-05-02 20:47:32', 'a', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(18, 18, 8, 'H', '1', '2', '1', '2', '2', 'Check', 69.00, '2016-05-02 22:46:45', 'QA Approve', 'N/A', '---', '0', '2', 'N/A', '2', '', '0000-00-00 00:00:00', 'a', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(20, 20, 1, 'A', '1', '1', '1', '2', '2', 'Cash', 6.00, '2016-05-09 09:40:12', 'Received', '1', '5', '0', '5', '5', '5', '_DSC3797.jpg', '2016-05-09 09:41:58', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(21, 21, 2, 'B', '1', '2', '7', '4', '3', 'Check', 49.00, '2016-05-09 09:44:01', 'Rejected', '2', '9', '0', '1', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(22, 22, 3, 'C', '1', '2', '2', '4', '7', 'Cash', 36.00, '2016-05-09 09:54:03', '8', '2', '10', '0', '2', '', '7', '', '0000-00-00 00:00:00', 'admin', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(23, 23, 4, 'D', '1', '2', '2', '4', '2', 'Check', 12.00, '2016-05-09 10:15:04', '7', '2', '10', '0', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(24, 24, 5, 'E', '1', '2', '2', '4', '2', 'Cash', 20.00, '2016-05-09 10:50:27', 'Received', '2', '11', '0', '2', '5', '2', '_DSC3797.jpg', '2016-05-09 11:28:24', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(25, 25, 6, 'F', '1', '1', '1', '4', '1', 'Check', 11.00, '2016-05-09 12:25:30', 'QA Approve', '1', '12', '0', '1', '5', '1', '', '0000-00-00 00:00:00', 'admin', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(26, 26, 7, 'G', '1', '1', '1', '2', '1', 'Cash', 2.00, '2016-05-09 13:11:32', '4', 'N/A', '---', '1', 'N/A', 'N/A', 'N/A', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(27, 27, 1, 'A', '1', 'alvie 05122016', 'alvie 05122016', '4', 'alvie 05122016', 'Cash', 15252.00, '2016-05-12 18:40:30', 'QA Approve', 'alvie 05122', '13', '---', 'alvie 05122016', '5', 'alvie 05122016', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(28, 28, 2, 'B', '1', 'NA', 'NA', '4', 'NA', 'Cash', 61.00, '2016-05-12 18:55:02', 'Received', 'NA', '123456', '---', 'NA', '5', 'NA', 'Capture.PNG', '2016-05-12 19:10:05', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(29, 29, 1, 'A', '1', '1', '2', '2', '3', 'Cash', 4.00, '2016-05-14 09:18:50', '6', '23', '34', '---', '3', '5', '3', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(30, 30, 1, 'A', '9', '2', '2', '', '', '', 0.00, '2016-05-16 00:15:48', 'pending', '', '---', '---', '', '', '', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(31, 31, 2, 'B', 'Choose', '', '', '', '', '', 0.00, '2016-05-16 00:16:08', 'pending', '', '---', '---', '', '', '', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(32, 32, 3, 'C', '1', '1', '1', '4', '2', 'Cash', 1.00, '2016-05-16 00:17:00', 'QA Approve', '1', '444', '---', '2', '5', '2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(33, 33, 0, '', '', '', 'Choose', '', '', '', 0.00, '2016-05-16 00:28:10', 'QA Approve', '', '---', '---', '', '', '1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `po_file_2016`
--

CREATE TABLE IF NOT EXISTS `po_file_2016` (
`id` int(11) NOT NULL,
  `trans_no` int(11) NOT NULL,
  `number_code` int(11) NOT NULL,
  `letter_code` varchar(10) NOT NULL,
  `requestor` varchar(50) NOT NULL,
  `title` varchar(25) NOT NULL COMMENT 'title/remarks',
  `company_name` varchar(100) NOT NULL,
  `secretary` varchar(50) NOT NULL,
  `supplier` varchar(50) NOT NULL COMMENT 'pat to/supplier',
  `payment_type` varchar(50) NOT NULL COMMENT 'cash or check',
  `total_amount` double(11,2) NOT NULL,
  `date_created` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `jo` varchar(11) NOT NULL,
  `po` varchar(40) NOT NULL,
  `item_description` text NOT NULL,
  `engineer` varchar(55) NOT NULL,
  `page` varchar(50) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `received_date` datetime NOT NULL,
  `created_by` varchar(55) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `release_date` datetime NOT NULL,
  `approved_date` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_file_2016`
--

INSERT INTO `po_file_2016` (`id`, `trans_no`, `number_code`, `letter_code`, `requestor`, `title`, `company_name`, `secretary`, `supplier`, `payment_type`, `total_amount`, `date_created`, `status`, `jo`, `po`, `item_description`, `engineer`, `page`, `file_name`, `received_date`, `created_by`, `mas_status`, `release_date`, `approved_date`) VALUES
(1, 1, 1, 'A', '2', ' 1 ', ' 1 ', '3', ' 1 ', 'Check', 6.00, '2015-09-11 19:24:41', 'Receive Cash Request', ' 1 ', ' 1 ', '', '4', ' 1 ', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 0, '', '', '', '', '', '', '', 0.00, '2015-09-11 19:28:02', 'Ready for pick up', '', '---', '', '', '1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 3, 0, '', '', '', '', '', '', '', 0.00, '2015-09-11 19:29:28', 'Ready for pick up', '', '---', '', '', '1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 4, 2, 'B', '2', ' 1', ' 1', '3', '1 ', 'Cash', 1.00, '2015-09-11 19:31:43', 'Received', ' 1', ' 1', '', '4', ' 1', '_DSC0721.jpg', '2015-09-11 19:35:06', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 5, 1, 'A', '2', ' 11', ' 11', '3', ' 1', 'Cash', 1.00, '2015-09-12 17:32:21', 'For Approval', ' 1', ' 1', ' 1', '4', ' 1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, 2, 'B', '2', ' 1', ' 12', '3', ' 3', 'Cash', 9.00, '2015-09-12 17:35:15', 'pending', ' 2', ' 2', ' 233', '4', '3 ', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 7, 3, 'C', '2', ' 2', ' 2', '3', ' 2', 'Cash', 4.00, '2015-09-12 17:37:05', 'For Approval', ' 2', ' 2', ' 2', '4', ' 2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 8, 4, 'D', '2', ' 1', '1 ', '3', ' 1', 'Cash', 1.00, '2015-09-12 17:38:35', 'For Approval', '1', ' 1', ' 1', '4', ' 1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 9, 1, 'A', '2', ' 1', ' 1', '3', ' 1', 'Cash', 1.00, '2015-09-16 20:17:35', 'pending', ' 1', ' 1', ' 1', '4', ' 1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 10, 1, 'A', '2', ' 1', ' 1', '3', ' 1', 'Cash', 1.00, '2015-09-16 20:18:23', 'pending', ' 1', ' 1', ' 1', '4', ' 1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 11, 1, 'A', '2', ' 1', ' 1', '3', ' 1', 'Cash', 1.00, '2015-09-16 20:18:51', 'pending', ' 1', ' 1', ' 1', '4', ' 1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 12, 2, 'B', '2', ' 1', ' 1', '3', ' 1', 'Cash', 1.00, '2015-09-16 20:19:13', 'pending', ' 1', ' 1', '1 ', '4', ' 1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 13, 2, 'B', '2', ' 1', ' 1', '3', ' 1', 'Cash', 1.00, '2015-09-16 20:19:24', 'pending', ' 1', ' 1', '1 ', '4', ' 1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 14, 2, 'B', '2', ' 1', ' 1', '3', ' 1', 'Cash', 1.00, '2015-09-16 20:20:08', 'pending', ' 1', ' 1', '1 ', '4', ' 1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 15, 3, 'C', '2', ' 2', ' 2', '3', '2 ', 'Cash', 1.00, '2015-09-16 20:20:24', 'pending', ' 2', '2 ', ' 2', '4', ' 2', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 16, 3, 'C', '2', ' 2 ', ' 2 ', '3', '2  ', 'Cash', 1.00, '2015-09-16 20:21:05', 'Received', ' 2 ', '2  ', ' 2 ', '4', ' 2 ', '_DSC3797.jpg', '2016-04-13 19:46:44', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 17, 4, 'D', '2', '2', ' 2', '3', ' 2', 'Cash', 4.00, '2015-09-16 20:22:22', 'pending', ' 2', ' 2', ' 2', '4', ' 22', '', '0000-00-00 00:00:00', 'admin', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 18, 5, 'E', '2', ' 1', ' 1', '3', ' 1', 'Cash', 1.00, '2015-09-16 20:24:29', 'pending', ' 1', ' 1', ' 1', '4', ' 1', '', '0000-00-00 00:00:00', 'admin', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 19, 1, 'A', '2', ' test ', 'testu ', '3', '5  ', 'Cash', 6.00, '2016-04-13 19:44:18', 'For Approval', ' 1 ', ' 2 ', ' 3 ', '4', ' 4 ', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 20, 1, 'A', '2', ' 1', ' 1', '3', ' 1', 'Cash', 6.00, '2016-04-14 19:10:31', 'For Approval', ' 1', '1 ', ' 1', '4', '1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 21, 1, 'A', '2', ' 1', ' 1', '3', ' 1', 'Cash', 6.00, '2016-04-14 19:10:56', 'For Approval', ' 1', '1 ', ' 1', '4', '1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 22, 1, 'A', '2', ' 1', ' 1', '3', ' 1', 'Cash', 6.00, '2016-04-14 19:18:05', 'For Approval', ' 1', '1 ', ' 1', '4', '1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 23, 1, 'A', '2', ' 1', ' 1', '3', ' 1', 'Cash', 6.00, '2016-04-14 19:19:09', 'For Approval', ' 1', '1 ', ' 1', '4', '1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 24, 1, 'A', '2', ' 1', ' 1', '3', ' 1', 'Cash', 6.00, '2016-04-14 19:22:01', 'For Approval', ' 1', '1 ', ' 1', '4', '1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 25, 1, 'A', '2', ' 1', ' 1', '3', ' 1', 'Cash', 6.00, '2016-04-14 19:24:16', 'For Approval', ' 1', '1 ', ' 1', '4', '1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 26, 1, 'A', '2', ' 1', ' 1', '3', ' 1', 'Cash', 6.00, '2016-04-14 19:24:35', 'For Approval', ' 1', '1 ', ' 1', '4', '1', '', '0000-00-00 00:00:00', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 27, 1, 'A', '2', ' 1', ' 1', '3', ' 1', 'Cash', 6.00, '2016-04-14 19:24:48', 'Received', ' 1', '1 ', ' 1', '4', '1', 'Scan 1.jpeg', '2016-04-15 00:51:21', 'admin', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `po_header_file`
--

CREATE TABLE IF NOT EXISTS `po_header_file` (
`id` int(11) NOT NULL,
  `number_code` int(11) NOT NULL,
  `user_name` varchar(25) COLLATE latin1_general_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `po_header_file`
--

INSERT INTO `po_header_file` (`id`, `number_code`, `user_name`, `date`) VALUES
(11, 1, '', '2016-04-22'),
(16, 2, 'sec', '2016-04-28'),
(61, 4, 'admin', '2016-05-16'),
(42, 9, 'a', '2016-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `po_item_file`
--

CREATE TABLE IF NOT EXISTS `po_item_file` (
`id` int(11) NOT NULL,
  `item` text NOT NULL,
  `trans_no` int(11) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_item_file`
--

INSERT INTO `po_item_file` (`id`, `item`, `trans_no`, `description`, `quantity`, `unit_price`) VALUES
(1, '1', 1, '1', 1, 1),
(2, '1', 2, '1', 1, 1),
(3, '1', 3, '1', 1, 1),
(4, '1', 4, '11', 1, 1),
(5, '1', 5, '1', 1, 1),
(6, '1', 6, '1', 1, 1),
(7, '1', 7, '1', 1, 1),
(8, '1', 8, '1', 2, 3),
(9, '1', 9, 'w', 0, 0),
(10, '1', 10, '1', 1, 1),
(11, '1', 1, '1', 2, 2),
(12, '2', 2, '2', 2, 2),
(13, '2', 3, '2', 2, 2),
(14, '2', 4, '2', 2, 3),
(15, '3', 5, '3', 2, 2),
(16, '23', 6, '2', 2, 2),
(17, '2', 7, '2', 2, 2),
(18, '2', 8, '2', 2, 2),
(19, '2', 9, '2', 2, 3),
(20, '2', 10, '2', 3, 3),
(21, '2', 11, '112', 2, 1),
(22, '2', 12, '2', 2, 2),
(23, '2', 13, '5', 5, 52),
(24, '7', 14, '7', 7, 7),
(25, '2', 15, '2', 3, 2),
(26, '2', 16, '5', 5, 8),
(27, '7', 17, '7', 7, 7),
(28, '2', 18, '2', 23, 3),
(29, '2', 19, '2', 3, 2),
(30, '2', 20, '2', 3, 2),
(31, '1', 21, '67', 7, 7),
(32, '6', 22, '6', 6, 6),
(33, '2', 23, '2', 3, 4),
(34, '2', 24, '3', 4, 5),
(35, '1', 25, '1', 11, 1),
(36, '1', 26, '1', 1, 2),
(37, 'alvie 05122016', 27, 'alvie 05122016', 124, 123),
(38, '', 27, '', 0, 0),
(39, 'NA', 28, 'NA', 1, 13),
(40, 'wcfrv', 28, 'dcrvt', 2, 22),
(41, 'qsxwedc', 28, 'dctb', 2, 2),
(42, '2', 29, '2', 2, 2),
(43, '1', 32, '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `po_item_file_2016`
--

CREATE TABLE IF NOT EXISTS `po_item_file_2016` (
`id` int(11) NOT NULL,
  `item` text NOT NULL,
  `trans_no` int(11) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_remarks_file`
--

CREATE TABLE IF NOT EXISTS `po_remarks_file` (
`id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `rejected_by` varchar(50) NOT NULL,
  `trans_no` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_remarks_file`
--

INSERT INTO `po_remarks_file` (`id`, `remarks`, `status`, `date_created`, `rejected_by`, `trans_no`) VALUES
(1, '', 'Choose', '2016-05-09 12:22:50', 'admin', 23),
(2, '', 'Choose', '2016-05-09 12:23:48', 'admin', 22),
(3, '', 'Choose', '2016-05-09 12:25:48', 'admin', 25),
(4, '', 'Choose', '2016-05-09 12:30:00', 'admin', 21);

-- --------------------------------------------------------

--
-- Table structure for table `po_remarks_file_2016`
--

CREATE TABLE IF NOT EXISTS `po_remarks_file_2016` (
`id` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  `rejected_by` varchar(50) NOT NULL,
  `trans_no` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_remarks_file_2016`
--

INSERT INTO `po_remarks_file_2016` (`id`, `remarks`, `status`, `date_created`, `rejected_by`, `trans_no`) VALUES
(1, '31', 'Choose', '2015-09-16 20:23:17', 'admin', 17),
(2, 'joi', 'Choose', '2015-09-16 20:39:41', 'admin', 18);

-- --------------------------------------------------------

--
-- Table structure for table `received_file`
--

CREATE TABLE IF NOT EXISTS `received_file` (
`id` int(11) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `message` text NOT NULL,
  `received_date` datetime NOT NULL,
  `smsc_id` int(11) NOT NULL,
  `trans_no` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `received_file`
--

INSERT INTO `received_file` (`id`, `phone_number`, `message`, `received_date`, `smsc_id`, `trans_no`) VALUES
(4, '123', 'Letter Code:A\nRequestor:ac s\nTitle:1\nCompany Name:2\nSecretary:sec sec\nSupplier:3\nPayment Type:Cash\n    ---#---\nPage:3', '2016-05-14 22:08:39', 11, 29),
(5, '123', 'Letter Code:A\nRequestor:ac s\nTitle:1\nCompany Name:2\nSecretary:sec sec\nSupplier:3\nPayment Type:Cash\n    ---#---\nPage:3', '2016-05-14 22:14:49', 11, 29),
(6, '123', 'Letter Code A\nMessage:send Text', '2016-05-14 22:54:39', 11, 29),
(7, '123', 'Letter Code B\nMessage:what', '2016-05-14 22:56:35', 11, 28),
(8, '123', 'Letter Code:G\nRequestor:ac s\nTitle:1\nCompany Name:1\nSecretary:sec sec\nSupplier:1\nPayment Type:Cash\n    1#1\nPage:N/A', '2016-05-15 14:28:22', 11, 26);

-- --------------------------------------------------------

--
-- Table structure for table `sms_files`
--

CREATE TABLE IF NOT EXISTS `sms_files` (
`id` int(11) NOT NULL,
  `sms_id` int(11) NOT NULL,
  `sms` text NOT NULL,
  `date_sent` datetime NOT NULL,
  `trans_no` int(11) NOT NULL,
  `hide` int(11) NOT NULL COMMENT 'to show or not in sms trail',
  `received` varchar(25) NOT NULL,
  `sent_by` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_files`
--

INSERT INTO `sms_files` (`id`, `sms_id`, `sms`, `date_sent`, `trans_no`, `hide`, `received`, `sent_by`) VALUES
(10, 11, '2', '2016-05-14 22:17:56', 24, 0, '123', ''),
(11, 11, '2', '2016-05-14 22:17:56', 24, 0, '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `sms_files_2016`
--

CREATE TABLE IF NOT EXISTS `sms_files_2016` (
`id` int(11) NOT NULL,
  `sms_id` int(11) NOT NULL,
  `sms` text NOT NULL,
  `date_sent` datetime NOT NULL,
  `trans_no` int(11) NOT NULL,
  `hide` int(11) NOT NULL COMMENT 'to show or not in sms trail',
  `received` varchar(25) NOT NULL,
  `sent_by` varchar(25) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_files_2016`
--

INSERT INTO `sms_files_2016` (`id`, `sms_id`, `sms`, `date_sent`, `trans_no`, `hide`, `received`, `sent_by`) VALUES
(1, 1, '3', '2015-09-14 00:00:00', 8, 0, '09065685555"', ''),
(2, 2, 'what', '2015-09-14 00:00:00', 8, 0, '09065685555"', '');

-- --------------------------------------------------------

--
-- Table structure for table `sms_slot_file`
--

CREATE TABLE IF NOT EXISTS `sms_slot_file` (
`id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `date_added` datetime NOT NULL,
  `sms_slot` varchar(15) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_slot_file`
--

INSERT INTO `sms_slot_file` (`id`, `slot_id`, `phone_number`, `date_added`, `sms_slot`, `mas_status`, `account_id`) VALUES
(1, 1, '09065685555', '0000-00-00 00:00:00', 'smsc0', 1, 2),
(5, 5, ' ', '0000-00-00 00:00:00', 'smsc ', 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sms_slot_file_2016`
--

CREATE TABLE IF NOT EXISTS `sms_slot_file_2016` (
`id` int(11) NOT NULL,
  `slot_id` int(11) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `date_added` datetime NOT NULL,
  `sms_slot` varchar(15) NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_slot_file_2016`
--

INSERT INTO `sms_slot_file_2016` (`id`, `slot_id`, `phone_number`, `date_added`, `sms_slot`, `mas_status`) VALUES
(1, 1, '09065685555', '0000-00-00 00:00:00', 'smsc0', 1),
(2, 2, ' 809890 ', '0000-00-00 00:00:00', ' sms0 ', 1),
(3, 3, ' 222  2', '0000-00-00 00:00:00', 'smsc2  ', 1),
(4, 4, '1', '0000-00-00 00:00:00', 'smsc ', 1),
(5, 5, ' ', '0000-00-00 00:00:00', 'smsc ', 0),
(6, 6, ' ', '0000-00-00 00:00:00', 'smsc ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_parameter_file`
--

CREATE TABLE IF NOT EXISTS `system_parameter_file` (
`id` int(11) NOT NULL,
  `max_sms_slot` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_parameter_file`
--

INSERT INTO `system_parameter_file` (`id`, `max_sms_slot`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `system_steps_file`
--

CREATE TABLE IF NOT EXISTS `system_steps_file` (
`id` int(11) NOT NULL,
  `step_count` int(11) NOT NULL COMMENT 'do not change for system use',
  `step_name` varchar(50) NOT NULL COMMENT 'do not change for system use',
  `status_label` varchar(50) NOT NULL,
  `button_name` varchar(50) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_id_wo_po` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_steps_file`
--

INSERT INTO `system_steps_file` (`id`, `step_count`, `step_name`, `status_label`, `button_name`, `menu_id`, `menu_id_wo_po`) VALUES
(1, 2, 'qa_approve', 'For QA approval', 'Q.A. Approve', 18, 32),
(2, 3, 'sendSMStoAE', 'Send Approved FORM to AE for Approval ', 'Send Form via SMS to AE', 19, 33),
(3, 4, 'ae_approve', 'For AE approval', 'AE Approve', 20, 34),
(4, 5, 'cashRequest', 'For Request of Cash Release', 'Request for Cash Release', 21, 35),
(5, 6, 'confirmCashRelease', 'For Confirm Cash Release Request', 'Confirm Cash Release Request', 22, 36),
(6, 7, 'confirmAvailability', 'For Confirmation of  Cash Release Availability', 'Confirm Cash Release Availability', 23, 37),
(7, 8, 'QAcashApprove', 'QA approves cash release', 'QA approve cash release', 25, 39),
(8, 9, 'pickUp', 'Confirm Cash/Check Pick-up', 'Confirm Cash/Check Pick-up', 24, 38);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_file`
--

CREATE TABLE IF NOT EXISTS `user_access_file` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `user_type` varchar(15) NOT NULL,
  `added_by` varchar(25) NOT NULL,
  `added_date` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_file`
--

INSERT INTO `user_access_file` (`id`, `menu_id`, `user_type`, `added_by`, `added_date`) VALUES
(231, 20, 'Admin', '', '0000-00-00 00:00:00'),
(230, 18, 'Admin', '', '0000-00-00 00:00:00'),
(229, 14, 'Admin', '', '0000-00-00 00:00:00'),
(228, 7, 'Admin', '', '0000-00-00 00:00:00'),
(227, 6, 'Admin', '', '0000-00-00 00:00:00'),
(226, 9, 'Admin', '', '0000-00-00 00:00:00'),
(225, 8, 'Admin', '', '0000-00-00 00:00:00'),
(224, 19, 'Admin', '', '0000-00-00 00:00:00'),
(223, 10, 'Admin', '', '0000-00-00 00:00:00'),
(222, 3, 'Admin', '', '0000-00-00 00:00:00'),
(221, 15, 'Admin', '', '0000-00-00 00:00:00'),
(220, 1, 'Admin', '', '0000-00-00 00:00:00'),
(219, 7, 'QA', '', '0000-00-00 00:00:00'),
(218, 9, 'QA', '', '0000-00-00 00:00:00'),
(217, 7, 'Secretary', '', '0000-00-00 00:00:00'),
(216, 6, 'Secretary', '', '0000-00-00 00:00:00'),
(215, 9, 'Secretary', '', '0000-00-00 00:00:00'),
(214, 8, 'Secretary', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_file_new`
--

CREATE TABLE IF NOT EXISTS `user_access_file_new` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `user_type` varchar(25) NOT NULL,
  `added_by` varchar(25) NOT NULL,
  `added_date` datetime NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_file_new`
--

INSERT INTO `user_access_file_new` (`id`, `menu_id`, `user_type`, `added_by`, `added_date`, `type`) VALUES
(1, 1, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Add'),
(2, 1, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(3, 2, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(4, 3, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(5, 4, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(6, 5, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(7, 6, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(8, 7, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Add'),
(9, 7, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(10, 8, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(11, 9, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(12, 10, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(13, 11, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(14, 12, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Add'),
(15, 12, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(16, 13, 'Account Executive', 'admin', '2016-05-09 13:42:11', 'Edit'),
(17, 14, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(18, 15, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(19, 16, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(20, 17, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(21, 18, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(22, 19, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(23, 20, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(24, 21, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(25, 22, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(26, 23, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(27, 24, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(28, 25, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(29, 26, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(30, 27, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(31, 27, 'Secretary', 'admin', '2016-05-09 13:42:11', ''),
(32, 32, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(33, 33, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(34, 34, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(35, 35, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(36, 36, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(37, 37, 'Account Executive', 'admin', '2016-05-09 13:42:11', ''),
(38, 38, 'Secretary', 'admin', '2016-05-09 13:42:11', ''),
(39, 39, 'Secretary', 'admin', '2016-05-09 13:42:11', ''),
(40, 40, 'Secretary', 'admin', '2016-05-09 13:42:11', ''),
(41, 41, 'Secretary', 'admin', '2016-05-09 13:42:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_type_file`
--

CREATE TABLE IF NOT EXISTS `user_access_type_file` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `user_type` varchar(35) NOT NULL,
  `type` varchar(35) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=539 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_type_file`
--

INSERT INTO `user_access_type_file` (`id`, `menu_id`, `user_type`, `type`) VALUES
(535, 14, 'Admin', 'View'),
(534, 7, 'Admin', 'Request Release'),
(533, 7, 'Admin', 'View'),
(532, 7, 'Admin', 'For AE Approval'),
(531, 7, 'Admin', 'For QA Approval'),
(530, 7, 'Admin', 'Reject'),
(529, 7, 'Admin', 'Ready for pick up'),
(495, 6, 'Secretary', 'ADD'),
(528, 7, 'Admin', 'Receive Cash Request'),
(527, 7, 'Admin', 'Edit'),
(526, 6, 'Admin', 'ADD'),
(525, 9, 'Admin', 'Request Release'),
(524, 9, 'Admin', 'Receive Cash Request'),
(523, 9, 'Admin', 'Ready for pick up'),
(522, 9, 'Admin', 'View'),
(521, 9, 'Admin', 'For AE Approval'),
(520, 9, 'Admin', 'Reject'),
(519, 9, 'Admin', 'For QA Approval'),
(518, 9, 'Admin', 'Edit'),
(517, 8, 'Admin', 'Add'),
(516, 19, 'Admin', 'Edit'),
(515, 19, 'Admin', 'Add'),
(514, 19, 'Admin', 'Deactivate'),
(513, 10, 'Admin', 'Deactivate'),
(512, 10, 'Admin', 'Edit'),
(511, 10, 'Admin', 'Add'),
(510, 3, 'Admin', 'Edit'),
(509, 3, 'Admin', 'Deactivate'),
(508, 3, 'Admin', 'ADD'),
(507, 15, 'Admin', 'Add'),
(506, 1, 'Admin', 'Deactivate'),
(505, 1, 'Admin', 'Edit'),
(504, 1, 'Admin', 'Add'),
(494, 9, 'Secretary', 'View'),
(493, 9, 'Secretary', 'Edit'),
(492, 8, 'Secretary', 'Add'),
(496, 7, 'Secretary', 'Edit'),
(497, 7, 'Secretary', 'View'),
(498, 9, 'QA', 'For QA Approval'),
(499, 9, 'QA', 'For AE Approval'),
(500, 9, 'QA', 'View'),
(501, 7, 'QA', 'For QA Approval'),
(502, 7, 'QA', 'For AE Approval'),
(503, 7, 'QA', 'View'),
(536, 14, 'Admin', 'Hide'),
(537, 18, 'Admin', 'View'),
(538, 20, 'Admin', 'View');

-- --------------------------------------------------------

--
-- Table structure for table `user_access_type_file_2016`
--

CREATE TABLE IF NOT EXISTS `user_access_type_file_2016` (
`id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `user_type` varchar(35) NOT NULL,
  `type` varchar(35) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=451 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access_type_file_2016`
--

INSERT INTO `user_access_type_file_2016` (`id`, `menu_id`, `user_type`, `type`) VALUES
(449, 18, 'Admin', 'View"'),
(448, 14, 'Admin', 'Hide"'),
(447, 14, 'Admin', 'View"'),
(446, 12, 'Admin', 'View"'),
(445, 12, 'Admin', 'Ready for pick up"'),
(444, 12, 'Admin', 'Receive Cash Request"'),
(443, 12, 'Admin', 'Reject"'),
(442, 12, 'Admin', 'View"'),
(441, 12, 'Admin', 'For Approval"'),
(440, 12, 'Admin', 'Reject"'),
(438, 6, 'Admin', 'ADD"'),
(48, 10, 'Finance Head', 'Edit"'),
(47, 10, 'Finance Head', 'Add"'),
(46, 3, 'Finance Head', 'Edit"'),
(45, 3, 'Finance Head', 'Deactivate"'),
(44, 3, 'Finance Head', 'ADD"'),
(43, 1, 'Finance Head', 'Edit"'),
(30, 12, 'QA', 'Receive Cash Request"'),
(29, 12, 'QA', 'Ready for Pickup"'),
(31, 12, 'QA', 'Reject"'),
(42, 1, 'Finance Head', 'Deactivate"'),
(41, 1, 'Finance Head', 'Add"'),
(49, 9, 'Finance Head', 'For Approval"'),
(439, 7, 'Admin', 'Edit"'),
(437, 9, 'Admin', 'View"'),
(436, 9, 'Admin', 'For Approval"'),
(435, 9, 'Admin', 'Reject"'),
(434, 9, 'Admin', 'Edit"'),
(433, 8, 'Admin', 'Add"'),
(432, 19, 'Admin', 'Edit"'),
(431, 19, 'Admin', 'Add"'),
(430, 19, 'Admin', 'Deactivate"'),
(429, 10, 'Admin', 'Deactivate"'),
(428, 10, 'Admin', 'Edit"'),
(427, 10, 'Admin', 'Add"'),
(425, 3, 'Admin', 'Deactivate"'),
(426, 3, 'Admin', 'Edit"'),
(424, 3, 'Admin', 'ADD"'),
(423, 15, 'Admin', 'Add"'),
(422, 1, 'Admin', 'Deactivate"'),
(421, 1, 'Admin', 'Edit"'),
(420, 1, 'Admin', 'Add"'),
(450, 20, 'Admin', 'View"');

-- --------------------------------------------------------

--
-- Table structure for table `user_file`
--

CREATE TABLE IF NOT EXISTS `user_file` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `user_type` varchar(25) NOT NULL,
  `department` varchar(50) NOT NULL,
  `finance_head` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `sms_slot_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_file`
--

INSERT INTO `user_file` (`id`, `user_id`, `user_name`, `first_name`, `last_name`, `password`, `created_date`, `mas_status`, `user_type`, `department`, `finance_head`, `phone_number`, `sms_slot_id`) VALUES
(1, 1, 'admin', '', '', 'a', '0000-00-00 00:00:00', 1, 'admin', '', '', '', 0),
(68, 3, 'sec', 'se', '2', 'password123', '0000-00-00 00:00:00', 1, 'Secretary', '1', '1', '22', 0),
(67, 2, 'aac', 'ac', 'ac', 'password123', '0000-00-00 00:00:00', 1, 'Account Executive', '1', 'Choose', '231', 0),
(69, 4, 'qrrr', 'qqq', 'rrr', 'password123', '0000-00-00 00:00:00', 1, 'Others', 'Others', 'Choose', 'nfjf', 0),
(70, 5, 'ccash', 'cash', 'cash', 'password123', '0000-00-00 00:00:00', 1, 'Others', '1', 'Choose', '2321', 0),
(71, 6, 'a', 'a', 'a', 'a', '0000-00-00 00:00:00', 1, 'Account Executive', '1', 'Choose', 'a', 0),
(72, 7, 'aPenaflorida', 'alvie', 'Penaflorida', 'password123', '0000-00-00 00:00:00', 1, 'Others', '1', 'Choose', '+632553304', 0),
(73, 8, 'aPenaflorida', 'alvie', 'Penaflorida', 'password123', '0000-00-00 00:00:00', 1, 'QA', '', '', '+632553304', 0),
(74, 9, 'wever', 'what', 'ever', 'password123', '0000-00-00 00:00:00', 1, 'QA Special', '1', 'Choose', '9809', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_file_2016`
--

CREATE TABLE IF NOT EXISTS `user_file_2016` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  `mas_status` int(11) NOT NULL DEFAULT '1',
  `user_type` varchar(25) NOT NULL,
  `department` varchar(50) NOT NULL,
  `finance_head` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL,
  `sms_slot_id` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_file_2016`
--

INSERT INTO `user_file_2016` (`id`, `user_id`, `user_name`, `first_name`, `last_name`, `password`, `created_date`, `mas_status`, `user_type`, `department`, `finance_head`, `phone_number`, `sms_slot_id`) VALUES
(1, 1, 'admin', '', '', 'a', '0000-00-00 00:00:00', 0, 'admin', '', '', '', 0),
(40, 4, ' 3', ' 3', ' 3', 'password123', '0000-00-00 00:00:00', 1, 'Account Executive', 'Accounting2', '', ' ', 0),
(39, 3, '2', ' 2', ' 2', 'password123', '0000-00-00 00:00:00', 1, 'Account Executive', '', '', ' ', 0),
(38, 2, 'finance', 'kai', 'hiwatari', 'password123', '0000-00-00 00:00:00', 1, 'account executive', 'Accounting2', '', ' ', 0),
(41, 5, '4 ', ' 4', ' 4', 'password123', '0000-00-00 00:00:00', 1, 'account executive', 'Accounting2', '', ' ', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_file`
--
ALTER TABLE `access_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_file_1`
--
ALTER TABLE `access_file_1`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_file_2016`
--
ALTER TABLE `access_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `access_file_20161`
--
ALTER TABLE `access_file_20161`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_history_file`
--
ALTER TABLE `chat_history_file`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `history_file`
--
ALTER TABLE `history_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_address_file`
--
ALTER TABLE `master_address_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_address_file_2016`
--
ALTER TABLE `master_address_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_department_file`
--
ALTER TABLE `master_department_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_department_file_2016`
--
ALTER TABLE `master_department_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_engineer_file`
--
ALTER TABLE `master_engineer_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_engineer_file_2016`
--
ALTER TABLE `master_engineer_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_position_file`
--
ALTER TABLE `master_position_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_file`
--
ALTER TABLE `menu_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_file_2016`
--
ALTER TABLE `menu_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_check_file`
--
ALTER TABLE `po_check_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_check_file_2016`
--
ALTER TABLE `po_check_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_file`
--
ALTER TABLE `po_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_file_2016`
--
ALTER TABLE `po_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_header_file`
--
ALTER TABLE `po_header_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_item_file`
--
ALTER TABLE `po_item_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_item_file_2016`
--
ALTER TABLE `po_item_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_remarks_file`
--
ALTER TABLE `po_remarks_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `po_remarks_file_2016`
--
ALTER TABLE `po_remarks_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `received_file`
--
ALTER TABLE `received_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_files`
--
ALTER TABLE `sms_files`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_files_2016`
--
ALTER TABLE `sms_files_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_slot_file`
--
ALTER TABLE `sms_slot_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_slot_file_2016`
--
ALTER TABLE `sms_slot_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_parameter_file`
--
ALTER TABLE `system_parameter_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_steps_file`
--
ALTER TABLE `system_steps_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_file`
--
ALTER TABLE `user_access_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_file_new`
--
ALTER TABLE `user_access_file_new`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_type_file`
--
ALTER TABLE `user_access_type_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_type_file_2016`
--
ALTER TABLE `user_access_type_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_file`
--
ALTER TABLE `user_file`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_file_2016`
--
ALTER TABLE `user_file_2016`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_file`
--
ALTER TABLE `access_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `access_file_1`
--
ALTER TABLE `access_file_1`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `access_file_2016`
--
ALTER TABLE `access_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `access_file_20161`
--
ALTER TABLE `access_file_20161`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `chat_history_file`
--
ALTER TABLE `chat_history_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `history_file`
--
ALTER TABLE `history_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `master_address_file`
--
ALTER TABLE `master_address_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `master_address_file_2016`
--
ALTER TABLE `master_address_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `master_department_file`
--
ALTER TABLE `master_department_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `master_department_file_2016`
--
ALTER TABLE `master_department_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `master_engineer_file`
--
ALTER TABLE `master_engineer_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `master_engineer_file_2016`
--
ALTER TABLE `master_engineer_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `master_position_file`
--
ALTER TABLE `master_position_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `menu_file`
--
ALTER TABLE `menu_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `menu_file_2016`
--
ALTER TABLE `menu_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `po_check_file`
--
ALTER TABLE `po_check_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `po_check_file_2016`
--
ALTER TABLE `po_check_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `po_file`
--
ALTER TABLE `po_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `po_file_2016`
--
ALTER TABLE `po_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `po_header_file`
--
ALTER TABLE `po_header_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `po_item_file`
--
ALTER TABLE `po_item_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `po_item_file_2016`
--
ALTER TABLE `po_item_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `po_remarks_file`
--
ALTER TABLE `po_remarks_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `po_remarks_file_2016`
--
ALTER TABLE `po_remarks_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `received_file`
--
ALTER TABLE `received_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sms_files`
--
ALTER TABLE `sms_files`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `sms_files_2016`
--
ALTER TABLE `sms_files_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sms_slot_file`
--
ALTER TABLE `sms_slot_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sms_slot_file_2016`
--
ALTER TABLE `sms_slot_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `system_parameter_file`
--
ALTER TABLE `system_parameter_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `system_steps_file`
--
ALTER TABLE `system_steps_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_access_file`
--
ALTER TABLE `user_access_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=232;
--
-- AUTO_INCREMENT for table `user_access_file_new`
--
ALTER TABLE `user_access_file_new`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `user_access_type_file`
--
ALTER TABLE `user_access_type_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=539;
--
-- AUTO_INCREMENT for table `user_access_type_file_2016`
--
ALTER TABLE `user_access_type_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=451;
--
-- AUTO_INCREMENT for table `user_file`
--
ALTER TABLE `user_file`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `user_file_2016`
--
ALTER TABLE `user_file_2016`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2020 at 08:17 AM
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
-- Database: `binary`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_india_income`
--

CREATE TABLE `all_india_income` (
  `id` int(10) NOT NULL,
  `transaction` varchar(50) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `is_credit` tinyint(1) NOT NULL,
  `time` varchar(50) NOT NULL,
  `down` varchar(100) NOT NULL,
  `direct` varchar(10) NOT NULL,
  `group_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `binaryincometracker`
--

CREATE TABLE `binaryincometracker` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `left_count` varchar(50) NOT NULL,
  `right_count` varchar(50) NOT NULL,
  `pairs` varchar(100) NOT NULL,
  `previous_pair` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(22) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `total_price` varchar(55) NOT NULL,
  `pay_by` varchar(111) NOT NULL,
  `txnid` varchar(111) NOT NULL,
  `total_cv` varchar(55) NOT NULL,
  `total_dp` varchar(55) NOT NULL,
  `delivery_status` varchar(11) NOT NULL,
  `remark` varchar(555) NOT NULL,
  `time` varchar(111) NOT NULL,
  `date` varchar(55) NOT NULL,
  `current` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `user_id`, `total_price`, `pay_by`, `txnid`, `total_cv`, `total_dp`, `delivery_status`, `remark`, `time`, `date`, `current`, `status`) VALUES
(1, 'OX758298', '67', 'cod', '242c595c321b2aaa792c', '60', '67', '0', 'testing', '15:43:28', '2020-08-11', '2020-08-11 10:47:32', '0'),
(2, 'OX758298', '67', 'cod', '242c595c321b2aaa792c', '60', '67', '0', 'testing', '15:43:28', '2020-08-11', '2020-08-11 10:48:50', '0'),
(3, 'OX758298', '67', 'cod', '242c595c321b2aaa792c', '60', '67', '0', 'testing', '15:43:28', '2020-08-11', '2020-08-11 11:20:25', '0'),
(4, 'OX758298', '67', 'cod', '242c595c321b2aaa792c', '60', '67', '0', 'testing', '15:43:28', '2020-08-11', '2020-08-11 11:21:27', '0');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` int(22) NOT NULL,
  `booking_id` varchar(55) NOT NULL,
  `product_id` varchar(55) NOT NULL,
  `mrp` varchar(55) NOT NULL,
  `cv` varchar(55) NOT NULL,
  `dp` varchar(55) NOT NULL,
  `qty` varchar(55) NOT NULL,
  `totalamount` varchar(55) NOT NULL,
  `total_cv` varchar(55) NOT NULL,
  `total_dp` varchar(55) NOT NULL,
  `time` varchar(55) NOT NULL,
  `date` varchar(55) NOT NULL,
  `current` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(55) NOT NULL,
  `is_cancelled` int(1) NOT NULL DEFAULT 0,
  `canclled_date` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`id`, `booking_id`, `product_id`, `mrp`, `cv`, `dp`, `qty`, `totalamount`, `total_cv`, `total_dp`, `time`, `date`, `current`, `status`, `is_cancelled`, `canclled_date`) VALUES
(1, '2', '1', '50', '60', '67', '1', '67', '60', '67', '15:43:28', '2020-08-11', '2020-08-11 10:13:28', '0', 0, ''),
(2, '3', '1', '50', '60', '67', '1', '67', '60', '67', '15:43:28', '2020-08-11', '2020-08-11 10:13:28', '0', 0, ''),
(3, '4', '1', '50', '60', '67', '1', '67', '60', '67', '15:43:28', '2020-08-11', '2020-08-11 10:13:28', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details_panding`
--

CREATE TABLE `booking_details_panding` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(55) NOT NULL,
  `product_id` varchar(55) NOT NULL,
  `mrp` varchar(55) NOT NULL,
  `cv` varchar(55) NOT NULL,
  `dp` varchar(55) NOT NULL,
  `qty` varchar(55) NOT NULL,
  `totalamount` varchar(55) NOT NULL,
  `total_cv` varchar(55) NOT NULL,
  `total_dp` varchar(55) NOT NULL,
  `time` varchar(55) NOT NULL,
  `date` varchar(55) NOT NULL,
  `current` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(55) NOT NULL,
  `is_cancelled` int(1) NOT NULL DEFAULT 0,
  `canclled_date` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_details_panding`
--

INSERT INTO `booking_details_panding` (`id`, `booking_id`, `product_id`, `mrp`, `cv`, `dp`, `qty`, `totalamount`, `total_cv`, `total_dp`, `time`, `date`, `current`, `status`, `is_cancelled`, `canclled_date`) VALUES
(1, '2', '1', '50', '60', '67', '1', '67', '60', '67', '15:43:28', '2020-08-11', '2020-08-11 10:13:28', '0', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_panding`
--

CREATE TABLE `booking_panding` (
  `id` int(11) NOT NULL,
  `user_id` varchar(55) NOT NULL,
  `total_price` varchar(55) NOT NULL,
  `pay_by` varchar(111) NOT NULL,
  `txnid` varchar(111) NOT NULL,
  `total_cv` varchar(55) NOT NULL,
  `total_dp` varchar(55) NOT NULL,
  `delivery_status` varchar(11) NOT NULL,
  `remark` varchar(555) NOT NULL,
  `time` varchar(111) NOT NULL,
  `date` varchar(55) NOT NULL,
  `current` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_panding`
--

INSERT INTO `booking_panding` (`id`, `user_id`, `total_price`, `pay_by`, `txnid`, `total_cv`, `total_dp`, `delivery_status`, `remark`, `time`, `date`, `current`, `status`) VALUES
(1, 'OX758298', '67', 'cod', 'b5e1a94c251885b2738f', '', '', '0', 'testing', '15:42:23', '2020-08-11', '2020-08-11 10:12:23', '0');

-- --------------------------------------------------------

--
-- Table structure for table `change_wallet`
--

CREATE TABLE `change_wallet` (
  `id` int(11) NOT NULL,
  `topup_old` varchar(20) NOT NULL,
  `topup_new` varchar(20) NOT NULL,
  `wallet_old` varchar(20) NOT NULL,
  `wallet_new` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE `commission` (
  `id` int(22) NOT NULL,
  `transaction` varchar(50) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `sponcer_id` varchar(20) NOT NULL,
  `beneficiary` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `date` varchar(40) NOT NULL,
  `level` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `is_credit` tinyint(1) NOT NULL,
  `type` varchar(30) NOT NULL,
  `wallet_type` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `detail` varchar(10000) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `owner` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `start_from` varchar(30) NOT NULL,
  `pin_amt` varchar(30) NOT NULL,
  `business` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `address`, `detail`, `mobile`, `owner`, `image`, `email`, `website`, `start_from`, `pin_amt`, `business`) VALUES
(1, 'demo', 'demo', 'Business', '0123456789', 'demo', 'logo1.png', 'info@demo.com', 'http://demo.com', '', '999', '999');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `direct_comm`
--

CREATE TABLE `direct_comm` (
  `id` int(11) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `sponcer_id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `beneficiary` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `time` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT '',
  `is_credit` varchar(100) NOT NULL DEFAULT '',
  `credited` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_category`
--

CREATE TABLE `expense_category` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_category`
--

INSERT INTO `expense_category` (`id`, `name`) VALUES
(3, 'Salary'),
(4, 'Petrol');

-- --------------------------------------------------------

--
-- Table structure for table `expense_entry`
--

CREATE TABLE `expense_entry` (
  `id` int(10) NOT NULL,
  `expense_category` varchar(100) NOT NULL,
  `branch_id` int(30) NOT NULL,
  `entry_date` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_entry`
--

INSERT INTO `expense_entry` (`id`, `expense_category`, `branch_id`, `entry_date`, `amount`, `payment_mode`, `remark`) VALUES
(1, '4', 0, '2018-01-08', '100', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `india_income`
--

CREATE TABLE `india_income` (
  `id` int(10) NOT NULL,
  `transaction` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `level` mediumint(2) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `token` int(10) NOT NULL,
  `direct` mediumint(2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `down` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `time` varchar(20) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_credit` tinyint(1) NOT NULL,
  `credited` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `india_income`
--

INSERT INTO `india_income` (`id`, `transaction`, `user_id`, `level`, `amount`, `token`, `direct`, `status`, `down`, `date`, `time`, `created`, `is_credit`, `credited`) VALUES
(1, 'IUD53010YE', 'OX758298', 1, '90', 0, 2, 1, '5', '2020-08-11', '08:32:33', '2020-08-03 03:02:33', 1, '2020-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(10) NOT NULL,
  `level` varchar(100) NOT NULL,
  `bonus` varchar(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `team` varchar(20) NOT NULL,
  `direct` int(10) NOT NULL,
  `pair` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `bonus`, `type`, `team`, `direct`, `pair`, `status`) VALUES
(1, '1', '50', 'self', '', 0, '', ''),
(2, '2', '30', 'self', '', 0, '', ''),
(3, '3', '20', 'self', '', 0, '', ''),
(14, '1', '90', 'india', '3', 0, '1', ''),
(15, '2', '270', 'india', '9', 0, '0', ''),
(16, '3', '810', 'india', '27', 0, '0', ''),
(17, '4', '2430', 'india', '81', 0, '0', ''),
(18, '5', '7290', 'india', '243', 0, '0', ''),
(20, '6', '21870', 'india', '729', 0, '0', ''),
(21, '7', '65610', 'india', '2187', 0, '0', ''),
(22, '8', '196830', 'india', '6561', 0, '0', ''),
(31, '9', '584490', 'india', '19683', 0, '0', ''),
(32, '10', '1753470', 'india', '58449', 0, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `date`, `message`, `status`) VALUES
(0, '2019-07-02', 'Please update your personal details in your personal account setting in capital letters and attach all required documents i.e. Adhar Card, PAN Card, Cancelled Cheque/Bank Passbook. All documents are mandatory for payment approval. Contact your Up-line for more information.', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pairenable`
--

CREATE TABLE `pairenable` (
  `id` int(11) NOT NULL,
  `pair` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pairmaching`
--

CREATE TABLE `pairmaching` (
  `id` int(11) NOT NULL,
  `carryLft` varchar(100) NOT NULL,
  `rightAmt` varchar(100) NOT NULL,
  `leftAmt` varchar(100) NOT NULL,
  `pairAmt` varchar(100) NOT NULL,
  `extraAmtRight` varchar(100) NOT NULL,
  `extraAmtLeft` varchar(100) NOT NULL,
  `paidAmt` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 0,
  `currentPairMach` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pairmaching`
--

INSERT INTO `pairmaching` (`id`, `carryLft`, `rightAmt`, `leftAmt`, `pairAmt`, `extraAmtRight`, `extraAmtLeft`, `paidAmt`, `date`, `create_date`, `status`, `currentPairMach`, `user_id`, `type`) VALUES
(1, '', '150', '150', '150', '0', '0', '15', '2020-08-15', '2020-08-15 14:27:57', 0, '', 'OX758298', '1:1');

-- --------------------------------------------------------

--
-- Table structure for table `pair_income`
--

CREATE TABLE `pair_income` (
  `id` int(11) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `pair` varchar(10) NOT NULL,
  `amount` varchar(10) NOT NULL,
  `transaction` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_credit` tinyint(1) NOT NULL,
  `date` varchar(15) NOT NULL,
  `time` varchar(20) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin`
--

CREATE TABLE `pin` (
  `id` int(11) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `pin` varchar(50) NOT NULL,
  `gen_date` varchar(50) NOT NULL,
  `gen_time` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `req_id` varchar(10) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `activated_account` varchar(50) NOT NULL,
  `generate_by` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `is_transfer` varchar(20) NOT NULL,
  `receiver_id` varchar(20) NOT NULL,
  `transfer_date` varchar(40) NOT NULL,
  `transfer_time` varchar(40) NOT NULL,
  `transfer_quantity` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin`
--

INSERT INTO `pin` (`id`, `product_id`, `pin`, `gen_date`, `gen_time`, `status`, `req_id`, `user_id`, `activated_account`, `generate_by`, `amount`, `quantity`, `date`, `time`, `is_transfer`, `receiver_id`, `transfer_date`, `transfer_time`, `transfer_quantity`) VALUES
(1, '1', '82S4AW6215041B', '2020-08-01', '12:18:28', '1', '', 'OX758298', 'OX758298', 'admin', '', '2', '2020-08-01', '12:36:49', '', '', '', '', ''),
(2, '1', 'FZBR5C50050BE9', '2020-08-01', '12:18:28', '1', '', 'OX758298', 'OX835167', 'admin', '', '2', '2020-08-02', '13:15:18', '', '', '', '', ''),
(3, '1', 'GHXIRP4215D12D', '2020-08-02', '13:08:30', '1', '', 'OX835167', 'OX975942', 'admin', '', '2', '2020-08-02', '13:17:43', '', '', '', '', ''),
(4, '1', 'RGV4B77125D6C6', '2020-08-02', '13:08:30', '1', '', 'OX835167', 'OX743415', 'admin', '', '2', '2020-08-02', '13:28:51', '', '', '', '', ''),
(5, '1', '9TS0X477177098', '2020-08-10', '14:55:33', '1', '', 'OX545064', 'OX545064', 'admin', '', '1', '2020-08-10', '14:57:21', '', '', '', '', ''),
(6, '1', '5PWWH9482B3E04', '2020-08-10', '16:02:01', '1', '', 'OX381768', 'OX381768', 'admin', '', '1', '2020-08-10', '16:02:12', '', '', '', '', ''),
(7, '1', 'XVRJHW9347D439', '2020-08-12', '10:02:49', '1', '', 'OX683390', 'OX683390', 'admin', '', '1', '2020-08-12', '10:03:01', '', '', '', '', ''),
(8, '1', '5QLOSA79153ECF', '2020-08-12', '10:07:04', '1', '', 'OX396088', 'OX396088', 'admin', '', '1', '2020-08-12', '10:07:18', '', '', '', '', ''),
(9, '1', '2RUI3R366C04A6', '2020-08-12', '10:19:52', '1', '', 'OX835167', 'OX659482', 'admin', '', '3', '2020-08-12', '10:20:49', '', '', '', '', ''),
(10, '1', '2Y41SA448C25E6', '2020-08-12', '10:19:52', '1', '', 'OX835167', 'OX179037', 'admin', '', '3', '2020-08-12', '10:21:09', '', '', '', '', ''),
(11, '1', '8H5UNI809C3C13', '2020-08-12', '10:19:52', '1', '', 'OX835167', 'OX860186', 'admin', '', '3', '2020-08-12', '10:21:29', '', '', '', '', ''),
(12, '1', 'WDGI1O8507F473', '2020-08-12', '10:36:54', '1', '', 'OX488430', 'OX488430', 'admin', '', '1', '2020-08-12', '10:37:08', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pin_request`
--

CREATE TABLE `pin_request` (
  `id` int(10) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `payment_detail` varchar(500) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `req_date` varchar(50) NOT NULL,
  `req_time` varchar(100) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `gen_date` varchar(100) NOT NULL,
  `gen_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pin_transfer`
--

CREATE TABLE `pin_transfer` (
  `id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `receiver_id` varchar(30) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `quantity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin_transfer`
--

INSERT INTO `pin_transfer` (`id`, `date`, `time`, `user_id`, `receiver_id`, `pin`, `quantity`) VALUES
(1, '2020-08-01', '12:18:28', 'UNI12345', 'OX758298', '82S4AW6215041B', '2'),
(2, '2020-08-01', '12:18:28', 'UNI12345', 'OX758298', 'FZBR5C50050BE9', '2'),
(3, '2020-08-02', '13:08:30', 'UNI12345', 'OX835167', 'GHXIRP4215D12D', '2'),
(4, '2020-08-02', '13:08:30', 'UNI12345', 'OX835167', 'RGV4B77125D6C6', '2'),
(5, '2020-08-10', '14:55:33', 'UNI12345', 'OX545064', '9TS0X477177098', '1'),
(6, '2020-08-10', '16:02:01', 'UNI12345', 'OX381768', '5PWWH9482B3E04', '1'),
(7, '2020-08-12', '10:02:49', 'UNI12345', 'OX683390', 'XVRJHW9347D439', '1'),
(8, '2020-08-12', '10:07:04', 'UNI12345', 'OX396088', '5QLOSA79153ECF', '1'),
(9, '2020-08-12', '10:19:52', 'UNI12345', 'OX835167', '2RUI3R366C04A6', '3'),
(10, '2020-08-12', '10:19:52', 'UNI12345', 'OX835167', '2Y41SA448C25E6', '3'),
(11, '2020-08-12', '10:19:52', 'UNI12345', 'OX835167', '8H5UNI809C3C13', '3'),
(12, '2020-08-12', '10:36:54', 'UNI12345', 'OX488430', 'WDGI1O8507F473', '1');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(22) NOT NULL,
  `name` varchar(111) NOT NULL,
  `cat_id` varchar(55) NOT NULL,
  `product_id` varchar(100) NOT NULL,
  `date` varchar(55) NOT NULL,
  `image` varchar(111) NOT NULL,
  `mrp` varchar(11) NOT NULL,
  `dp` varchar(11) NOT NULL,
  `cv` varchar(11) NOT NULL,
  `batch_no` varchar(111) NOT NULL,
  `qty` int(111) NOT NULL DEFAULT 0,
  `exp_date` varchar(111) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `cat_id`, `product_id`, `date`, `image`, `mrp`, `dp`, `cv`, `batch_no`, `qty`, `exp_date`, `created`) VALUES
(1, 'dam', '1', 'PRO836099', '11-08-2020', 'logo5.png', '50', '67', '60', 'kngkgkjrkg', 1, '11-08-2020', '2020-08-11 06:36:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int(22) NOT NULL,
  `name` varchar(55) NOT NULL,
  `img` varchar(555) NOT NULL,
  `date` varchar(55) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `img`, `date`, `created`) VALUES
(1, 'demo', '', '11-08-2020', '2020-08-11 06:13:29');

-- --------------------------------------------------------

--
-- Table structure for table `product_parchase`
--

CREATE TABLE `product_parchase` (
  `id` int(22) NOT NULL,
  `supplier_id` varchar(111) NOT NULL,
  `invoiceno` varchar(100) NOT NULL,
  `product_id` varchar(111) NOT NULL,
  `product_price` int(11) NOT NULL,
  `batch_no` varchar(111) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_hsn` varchar(111) NOT NULL,
  `date` varchar(111) NOT NULL,
  `total_price` varchar(111) NOT NULL,
  `current` datetime NOT NULL DEFAULT current_timestamp(),
  `product_igst` varchar(111) NOT NULL,
  `product_sgst` varchar(111) NOT NULL,
  `product_cgst` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_parchase`
--

INSERT INTO `product_parchase` (`id`, `supplier_id`, `invoiceno`, `product_id`, `product_price`, `batch_no`, `product_qty`, `product_hsn`, `date`, `total_price`, `current`, `product_igst`, `product_sgst`, `product_cgst`) VALUES
(1, 'SP438719', '1212', '1', 100, 'scsdds', 2, 'scscsc', '2020-08-11', '200', '2020-08-11 12:49:08', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product_plan`
--

CREATE TABLE `product_plan` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `direct` varchar(100) NOT NULL,
  `binary` varchar(100) NOT NULL,
  `repurchase_comm` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_plan`
--

INSERT INTO `product_plan` (`id`, `name`, `amount`, `direct`, `binary`, `repurchase_comm`, `type`) VALUES
(1, 'Panel', '999', '300', '150', '10', 'self');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `id` int(10) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `time` varchar(50) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `receiver_id` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `query_id` varchar(20) NOT NULL,
  `reply_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` int(10) NOT NULL,
  `transaction` varchar(50) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `get_from` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `date` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL,
  `is_credit` tinyint(1) NOT NULL,
  `time` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `id` int(10) NOT NULL,
  `query_id` varchar(20) NOT NULL,
  `receiver_id` varchar(20) NOT NULL,
  `reply_message` varchar(1000) NOT NULL,
  `reply_time` varchar(50) NOT NULL,
  `reply_date` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `repurchage_users`
--

CREATE TABLE `repurchage_users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `bv` varchar(100) NOT NULL,
  `binari` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `date` date NOT NULL,
  `updated_date` date NOT NULL,
  `place` varchar(100) NOT NULL,
  `pv` varchar(100) NOT NULL,
  `booking_id` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` int(11) NOT NULL,
  `level` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pair` varchar(10) NOT NULL,
  `direct` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `level`, `name`, `pair`, `direct`) VALUES
(1, '1', 'watch', '1', '1'),
(2, '2', 'xyz', '2', '2'),
(3, '3', 'Saumya Dubey', '4', '3');

-- --------------------------------------------------------

--
-- Table structure for table `reward_income`
--

CREATE TABLE `reward_income` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `rqrd_team` varchar(111) NOT NULL,
  `reward_level` varchar(111) NOT NULL,
  `reward_name` varchar(59) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `club` varchar(30) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `member` varchar(20) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roi_income`
--

CREATE TABLE `roi_income` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `credit_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `amount` varchar(30) NOT NULL,
  `club` varchar(30) NOT NULL,
  `business` varchar(30) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roi_level`
--

CREATE TABLE `roi_level` (
  `id` int(10) NOT NULL,
  `level` varchar(100) NOT NULL,
  `bonus` varchar(20) NOT NULL,
  `type` varchar(30) NOT NULL,
  `team` varchar(20) NOT NULL,
  `direct` int(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roi_level`
--

INSERT INTO `roi_level` (`id`, `level`, `bonus`, `type`, `team`, `direct`, `status`) VALUES
(1, '1', '45', '60', '3', 0, ''),
(2, '2', '75', '60', '150', 0, ''),
(3, '3', '100', '60', '300', 0, ''),
(4, '4', '125', '60', '500', 0, ''),
(5, '5', '150', '60', '1000', 0, ''),
(6, '6', '190', '60', '2500', 0, ''),
(7, '7', '250', '60', '5000', 0, ''),
(8, '8', '300', '60', '10000', 0, ''),
(9, '9', '350', '60', '20000', 0, ''),
(10, '10', '550', '60', '35000', 0, ''),
(11, '11', '750', '60', '50000', 0, ''),
(12, '12', '950', '60', '80000', 0, ''),
(13, '13', '1050', '60', '120000', 0, ''),
(14, '14', '1250', '60', '180000', 0, ''),
(15, '15', '1600', '60', '250000', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `roi_user`
--

CREATE TABLE `roi_user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `credit_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `amount` varchar(30) NOT NULL,
  `club` varchar(30) NOT NULL,
  `business` varchar(30) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL,
  `direct` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roi_user`
--

INSERT INTO `roi_user` (`id`, `user_id`, `date`, `time`, `credit_date`, `amount`, `club`, `business`, `transaction`, `level`, `team`, `direct`) VALUES
(1, 'OX758298', '2020-08-18', '12:03:43', '2020-08-18 06:33:43.360792', '45', 'ROI_USER', '', 'RWUL50012ZQ', '1', '11', '5'),
(2, 'OX743415', '2020-08-18', '12:03:43', '2020-08-18 06:33:43.380422', '45', 'ROI_USER', '', 'RWQO10157HN', '1', '10', '1'),
(3, 'OX835167', '2020-08-18', '12:03:43', '2020-08-18 06:33:43.401862', '45', 'ROI_USER', '', 'RWNH61548WO', '1', '9', '5'),
(4, 'OX975942', '2020-08-18', '12:03:43', '2020-08-18 06:33:43.418717', '45', 'ROI_USER', '', 'RWRH23662JG', '1', '8', '0'),
(5, 'OX545064', '2020-08-18', '12:03:43', '2020-08-18 06:33:43.438510', '45', 'ROI_USER', '', 'RWBL49337IN', '1', '7', '0'),
(6, 'OX381768', '2020-08-18', '12:03:43', '2020-08-18 06:33:43.458535', '45', 'ROI_USER', '', 'RWMI99055IX', '1', '6', '0'),
(7, 'OX683390', '2020-08-18', '12:03:43', '2020-08-18 06:33:43.478328', '45', 'ROI_USER', '', 'RWCG91077IA', '1', '5', '0'),
(8, 'OX396088', '2020-08-18', '12:03:43', '2020-08-18 06:33:43.496862', '45', 'ROI_USER', '', 'RWUT81136PT', '1', '4', '0'),
(9, 'OX659482', '2020-08-18', '12:03:43', '2020-08-18 06:33:43.510487', '45', 'ROI_USER', '', 'RWXT13869AB', '1', '3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `self_upgrade`
--

CREATE TABLE `self_upgrade` (
  `id` int(11) NOT NULL,
  `plan_id` varchar(11) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `date` varchar(40) NOT NULL,
  `upgrade_date` varchar(20) NOT NULL,
  `time` varchar(40) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `pendng` int(1) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` varchar(50) NOT NULL,
  `old_pakg` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sponcer_tracker`
--

CREATE TABLE `sponcer_tracker` (
  `id` int(11) NOT NULL,
  `carryLft` varchar(100) NOT NULL,
  `rightAmt` varchar(100) NOT NULL,
  `leftAmt` varchar(100) NOT NULL,
  `pairAmt` varchar(100) NOT NULL,
  `extraAmtRight` varchar(100) NOT NULL,
  `extraAmtLeft` varchar(100) NOT NULL,
  `paidAmt` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` int(1) NOT NULL DEFAULT 0,
  `currentPairMach` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `sponcer_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponcer_tracker`
--

INSERT INTO `sponcer_tracker` (`id`, `carryLft`, `rightAmt`, `leftAmt`, `pairAmt`, `extraAmtRight`, `extraAmtLeft`, `paidAmt`, `date`, `create_date`, `status`, `currentPairMach`, `user_id`, `type`, `sponcer_id`) VALUES
(1, '', '', '', '600', '', '', '600', '2020-08-12', '2020-08-12 09:37:25', 0, '', 'OX758298', '', 'UNI12345'),
(2, '', '', '', '300', '', '', '300', '2020-08-12', '2020-08-12 09:37:25', 0, '', 'OX835167', '', 'OX758298');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(20) NOT NULL,
  `supplier_id` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_date` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `licence_no` varchar(111) NOT NULL,
  `gst_no` varchar(111) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `branch_name` varchar(200) NOT NULL,
  `account_name` varchar(111) NOT NULL,
  `ifsc` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `reg_time` varchar(100) NOT NULL,
  `pan` varchar(30) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `active_time` varchar(50) NOT NULL,
  `active_date` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `supplier_id`, `name`, `password`, `mobile`, `reg_date`, `email`, `address`, `account_number`, `licence_no`, `gst_no`, `bank_name`, `branch_name`, `account_name`, `ifsc`, `status`, `pin`, `image`, `reg_time`, `pan`, `is_delete`, `active_time`, `active_date`, `created`) VALUES
(1, 'SP438719', 'Saumya Dubey', '', '9839208273', '2020-08-11', 'info@demo.com', 'demo', '534534595465905', 'dffffd', '345345', 'ghjghjsghjs', 'dfgdfgdfgdfg', 'dfgdfgdfg', '25353', 1, '', '', '', '', 0, '', '', '2020-08-11 06:51:52');

-- --------------------------------------------------------

--
-- Table structure for table `tds`
--

CREATE TABLE `tds` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `tds_percent` varchar(30) NOT NULL,
  `amount` varchar(40) NOT NULL,
  `tds` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `reward_type` varchar(100) NOT NULL,
  `admin_percent` varchar(100) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `status` int(10) NOT NULL,
  `is_credit` tinyint(1) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `token` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tds`
--

INSERT INTO `tds` (`id`, `user_id`, `date`, `time`, `tds_percent`, `amount`, `tds`, `type`, `reward_type`, `admin_percent`, `admin`, `transaction`, `status`, `is_credit`, `created`, `token`) VALUES
(1, 'OX758298', '2020-08-15', '19:57:57', '', '15', '0', 'PairMatch', '', '', '0', '', 0, 0, '2020-08-15 14:27:57', ''),
(2, '', '2020-08-15', '20:14:04', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RNO58843NC', 0, 0, '2020-08-15 14:44:04', ''),
(3, '', '2020-08-15', '20:14:04', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RSI87025SV', 0, 0, '2020-08-15 14:44:04', ''),
(4, '', '2020-08-15', '20:15:18', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RHS93231RW', 0, 0, '2020-08-15 14:45:18', ''),
(5, '', '2020-08-15', '20:15:18', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RPU96562UM', 0, 0, '2020-08-15 14:45:18', ''),
(6, '', '2020-08-15', '20:15:20', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RCE38229SP', 0, 0, '2020-08-15 14:45:20', ''),
(7, '', '2020-08-15', '20:15:20', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RUP86946FD', 0, 0, '2020-08-15 14:45:20', ''),
(8, '', '2020-08-15', '20:15:21', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RBP76114VZ', 0, 0, '2020-08-15 14:45:21', ''),
(9, '', '2020-08-15', '20:15:21', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RLG18904CP', 0, 0, '2020-08-15 14:45:21', ''),
(10, '', '2020-08-15', '20:15:24', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RDR94954PL', 0, 0, '2020-08-15 14:45:24', ''),
(11, '', '2020-08-15', '20:15:24', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RVQ63747TW', 0, 0, '2020-08-15 14:45:24', ''),
(12, '', '2020-08-15', '20:15:28', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'REF18978DE', 0, 0, '2020-08-15 14:45:28', ''),
(13, '', '2020-08-15', '20:15:28', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RVH69336BE', 0, 0, '2020-08-15 14:45:28', ''),
(14, '', '2020-08-15', '20:15:30', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RZI99538SR', 0, 0, '2020-08-15 14:45:30', ''),
(15, '', '2020-08-15', '20:15:30', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RMU73453FR', 0, 0, '2020-08-15 14:45:30', ''),
(16, '', '2020-08-15', '20:16:00', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RPV56097LO', 0, 0, '2020-08-15 14:46:00', ''),
(17, '', '2020-08-15', '20:16:00', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RGW43761FB', 0, 0, '2020-08-15 14:46:00', ''),
(18, '', '2020-08-15', '20:16:02', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RNJ59087KB', 0, 0, '2020-08-15 14:46:02', ''),
(19, '', '2020-08-15', '20:16:02', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RAZ26346SH', 0, 0, '2020-08-15 14:46:02', ''),
(20, '', '2020-08-15', '20:18:12', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RYC78118AX', 0, 0, '2020-08-15 14:48:12', ''),
(21, '', '2020-08-15', '20:18:12', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RDM12481NS', 0, 0, '2020-08-15 14:48:12', ''),
(22, '', '2020-08-15', '20:18:21', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'ROM17375ZA', 0, 0, '2020-08-15 14:48:21', ''),
(23, '', '2020-08-15', '20:18:21', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RDJ27839SU', 0, 0, '2020-08-15 14:48:21', ''),
(24, '', '2020-08-15', '20:18:25', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RXZ18799DE', 0, 0, '2020-08-15 14:48:25', ''),
(25, '', '2020-08-15', '20:18:25', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RNY58807AC', 0, 0, '2020-08-15 14:48:25', ''),
(26, '', '2020-08-15', '20:18:28', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RGR63590XO', 0, 0, '2020-08-15 14:48:28', ''),
(27, '', '2020-08-15', '20:18:28', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RWB28868NM', 0, 0, '2020-08-15 14:48:28', ''),
(28, '', '2020-08-15', '20:21:01', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RQP47799EC', 0, 0, '2020-08-15 14:51:01', ''),
(29, '', '2020-08-15', '20:21:01', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RLN34735EF', 0, 0, '2020-08-15 14:51:01', ''),
(30, '', '2020-08-15', '20:21:04', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RUM16015MD', 0, 0, '2020-08-15 14:51:04', ''),
(31, '', '2020-08-15', '20:21:04', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RSE29676VA', 0, 0, '2020-08-15 14:51:04', ''),
(32, '', '2020-08-15', '20:21:06', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RSJ95324KB', 0, 0, '2020-08-15 14:51:06', ''),
(33, '', '2020-08-15', '20:21:06', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RTE82121HD', 0, 0, '2020-08-15 14:51:06', ''),
(34, '', '2020-08-15', '20:21:09', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RQA42973CN', 0, 0, '2020-08-15 14:51:09', ''),
(35, '', '2020-08-15', '20:21:09', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'ROI41630XU', 0, 0, '2020-08-15 14:51:09', ''),
(36, '', '2020-08-15', '20:57:23', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'REF97421GV', 0, 0, '2020-08-15 15:27:23', ''),
(37, '', '2020-08-15', '20:57:23', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RXZ61391UJ', 0, 0, '2020-08-15 15:27:23', ''),
(38, '', '2020-08-15', '20:57:25', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RCT50115DC', 0, 0, '2020-08-15 15:27:25', ''),
(39, '', '2020-08-15', '20:57:25', '5', '45', '2.25', 'ROI', '', '5', '2.25', 'RFP54622EE', 0, 0, '2020-08-15 15:27:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_comm`
--

CREATE TABLE `upgrade_comm` (
  `id` int(11) NOT NULL,
  `pin` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `sponcer_id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `beneficiary` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `transaction` varchar(100) NOT NULL,
  `create_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `time` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT '',
  `is_credit` varchar(100) NOT NULL DEFAULT '',
  `credited` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(30) NOT NULL,
  `access` varchar(30) NOT NULL,
  `sponcer_id` varchar(20) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `product` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_date` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `paytm` varchar(50) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `branch_name` varchar(200) NOT NULL,
  `ifsc` varchar(20) NOT NULL,
  `nomini_name` varchar(50) NOT NULL,
  `nomini_rel` varchar(50) NOT NULL,
  `nomini_dob` varchar(50) NOT NULL,
  `nomini_mob` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `wallet` varchar(100) NOT NULL,
  `topup` varchar(40) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `reg_time` varchar(100) NOT NULL,
  `pan` varchar(30) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `is_delete` tinyint(1) NOT NULL,
  `active_time` varchar(50) NOT NULL,
  `active_date` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `activated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `place` varchar(10) NOT NULL,
  `place_id` varchar(10) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `adharno` varchar(100) NOT NULL,
  `pic_adhar` varchar(1000) NOT NULL,
  `pic_pan` varchar(1000) NOT NULL,
  `check_pic` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `name`, `password`, `access`, `sponcer_id`, `parent`, `product`, `mobile`, `reg_date`, `email`, `address`, `paytm`, `account_number`, `bank_name`, `branch_name`, `ifsc`, `nomini_name`, `nomini_rel`, `nomini_dob`, `nomini_mob`, `status`, `pin`, `image`, `wallet`, `topup`, `dob`, `fname`, `reg_time`, `pan`, `block`, `is_delete`, `active_time`, `active_date`, `created`, `activated`, `place`, `place_id`, `updated`, `adharno`, `pic_adhar`, `pic_pan`, `check_pic`) VALUES
(1, 'UNI12345', 'ADMIN', '123456', 'universal', 'none', '', 'none', '0123456789', '', 'admin@gmail.com', 'LKo', '', '', '', '', '', '', '', '', '', 0, '', 'red.png', '0', '', '', 'shiva', '', '', 0, 0, '', '', '2019-06-18 06:21:27', '0000-00-00 00:00:00', '', '', '2019-12-02 12:47:30', '', 'dd.png', 'dd.png', 'dd.png'),
(82, 'OX758298', 'Qqqqqq', '123456', 'limited', 'UNI12345', 'UNI12345', '1', '2222222222', '2020-08-01', 'shivt94@gmail.com', '', '', '', '', '', '', '', '', '', '', 1, '82S4AW6215041B', 'blue.png', '2120', '150', '12-08-2020', 'Qqqqqq', '12:13:11', '', 0, 0, '12:36:49', '2020-08-01', '2020-08-01 06:43:11', '2020-08-01 19:36:49', 'Left', '67', '2020-08-15 15:27:25', '', '', '', ''),
(83, 'OX743415', 'Ankit', 'ankit@123', 'limited', 'UNI12345', 'OX758298', '1', '8052310158', '2020-08-01', 'ankit@123', 'Gharaura', '@1245', '45453699585567', 'Bob', 'Lalganj', 'Bob05687', '', '', '', '', 1, 'RGV4B77125D6C6', 'blue.png', '0', '150', '23-06-2004', 'Ankit', '12:48:42', '123455', 0, 0, '13:28:51', '2020-08-02', '2020-08-01 07:18:42', '0000-00-00 00:00:00', 'Left', '150', '2020-08-11 16:10:22', '', '', '', ''),
(84, 'OX835167', 'kuki', '123456', 'limited', 'OX758298', 'OX758298', '1', '8922915177', '2020-08-02', 'kumarranveer1996@gmail.com', 'Bahraich, UP', '', '', '', '', '', 'kuki', 'Sis', '24-08-2020', '9090909090', 1, 'FZBR5C50050BE9', 'logo2.png', '777', '150', '02-08-2020', 'kukif', '13:07:29', '', 0, 0, '13:15:18', '2020-08-02', '2020-08-02 07:37:29', '0000-00-00 00:00:00', 'Right', '150', '2020-08-15 15:27:25', '', '', '', ''),
(85, 'OX975942', 'Saumya Dubey', '123456', 'limited', 'OX758298', 'OX743415', '1', '9839764940', '2020-08-02', 'info@demo.com', 'Akbarpur', '', '', '', '', '', '', '', '', '', 1, 'GHXIRP4215D12D', 'blue.png', '0', '150', '26-08-2020', 'kukif', '13:13:13', '', 0, 0, '13:17:43', '2020-08-02', '2020-08-02 07:43:13', '0000-00-00 00:00:00', 'Left', '', '2020-08-02 08:05:55', '', '', '', ''),
(86, 'OX545064', 'Saumya Dubey', '123456', 'limited', 'OX835167', 'OX835167', '1', '9839208273', '2020-08-10', '', '', '', '', '', '', '', '', '', '', '', 1, '9TS0X477177098', 'blue.png', '0', '150', '26-08-2020', 'kukif', '14:54:56', '', 0, 0, '14:57:21', '2020-08-10', '2020-08-10 09:24:56', '2020-08-10 09:27:21', 'Left', '', '2020-08-10 09:27:21', '', '', '', ''),
(87, 'OX381768', 'dam', '123456', 'limited', 'OX835167', 'OX835167', '1', '0987654321', '2020-08-10', '', '', '', '', '', '', '', '', '', '', '', 1, '5PWWH9482B3E04', 'blue.png', '0', '150', '07-08-2020', 'kukif', '16:01:32', '', 0, 0, '16:02:12', '2020-08-10', '2020-08-10 10:31:32', '2020-08-10 10:32:12', 'Right', '', '2020-08-10 10:32:12', '', '', '', ''),
(88, 'OX683390', 'Saumya Dubey', '123456', 'limited', 'OX758298', 'OX381768', '1', '8989898989', '2020-08-12', 'kumaralok4696@gmail.com', 'jfheuhjrf', '', '', '', '', '', '', '', '', '', 1, 'XVRJHW9347D439', 'blue.png', '0', '150', '21-08-2020', 'kukif', '10:02:08', '', 0, 0, '10:03:01', '2020-08-12', '2020-08-12 04:32:08', '2020-08-12 04:33:01', 'Right', '', '2020-08-12 04:33:01', '', '', '', ''),
(89, 'OX396088', 'dam', '123456', 'limited', 'OX758298', 'OX975942', '1', '1234678907', '2020-08-12', 'ko@gmail.com', 'sfsdfs', '', '', '', '', '', '', '', '', '', 1, '5QLOSA79153ECF', 'blue.png', '0', '150', '26-08-2020', 'kukif', '10:06:32', '', 0, 0, '10:07:18', '2020-08-12', '2020-08-12 04:36:32', '2020-08-12 04:37:18', 'Left', '', '2020-08-12 04:37:18', '', '', '', ''),
(90, 'OX659482', 'jfdgjdhfjg', '123456', 'limited', 'OX835167', 'OX545064', '1', '1345678909', '2020-08-12', '', '', '', '', '', '', '', '', '', '', '', 1, '2RUI3R366C04A6', 'blue.png', '0', '150', '26-08-2020', 'jsfhjshfjsdh', '10:16:13', '', 0, 0, '10:20:49', '2020-08-12', '2020-08-12 04:46:13', '2020-08-12 04:50:49', 'Left', '', '2020-08-12 04:50:49', '', '', '', ''),
(91, 'OX179037', 'fgdfd', '123456', 'limited', 'OX835167', 'OX683390', '1', '2345678987', '2020-08-12', '', '', '', '', '', '', '', '', '', '', '', 1, '2Y41SA448C25E6', 'blue.png', '0', '150', '26-08-2020', 'gdfgdfg', '10:17:26', '', 0, 0, '10:21:09', '2020-08-12', '2020-08-12 04:47:26', '2020-08-12 04:51:09', 'Right', '', '2020-08-12 04:51:09', '', '', '', ''),
(92, 'OX860186', 'nnvmnvmxn', '123456', 'limited', 'OX835167', 'OX179037', '1', '5678909876', '2020-08-12', 'kok@gmail.com', 'gdfg', '', '', '', '', '', '', '', '', '', 1, '8H5UNI809C3C13', 'blue.png', '0', '150', '26-08-2020', 'gdfgdfg', '10:18:42', '', 0, 0, '10:21:29', '2020-08-12', '2020-08-12 04:48:42', '2020-08-12 04:51:29', 'Right', '', '2020-08-12 04:51:29', '', '', '', ''),
(93, 'OX488430', 'Saumya Dubey', '123456', 'limited', 'OX758298', 'OX396088', '1', '656565777', '2020-08-12', 'ki@gmail.com', 'bjbjbjb', '', '', '', '', '', '', '', '', '', 1, 'WDGI1O8507F473', 'blue.png', '0', '150', '26-08-2020', 'kukif', '10:36:14', '', 0, 0, '10:37:08', '2020-08-12', '2020-08-12 05:06:14', '2020-08-12 05:07:08', 'Left', '', '2020-08-12 05:07:08', '', '', '', ''),
(94, 'OX406724', 'zzzzzz', 'zzzzzz', 'limited', 'OX743415', 'OX488430', '1', '1234567890', '2020-08-13', 'fff@gggg.com', '', '', '', '', '', '', '', '', '', '', 0, '', 'blue.png', '0', '', '01-03-2000', 'Sdffgggg', '15:31:47', '', 0, 0, '', '', '2020-08-13 10:01:47', '0000-00-00 00:00:00', 'Left', '', '2020-08-13 10:01:47', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `transaction` varchar(50) NOT NULL,
  `payment_mode` varchar(20) NOT NULL,
  `account_number` varchar(30) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `branch_name` varchar(200) NOT NULL,
  `ifsc` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `date` varchar(40) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `paid_date` varchar(50) NOT NULL,
  `paid_time` varchar(50) NOT NULL,
  `trnx_num` varchar(50) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `transaction`, `payment_mode`, `account_number`, `bank_name`, `branch_name`, `ifsc`, `amount`, `date`, `user_id`, `status`, `paid_date`, `paid_time`, `trnx_num`, `time`) VALUES
(1, '', 'Bank', 'Not Added', 'Not Added', 'Not Added', 'Not Added', '135', '2020-08-03', 'OX758298', '0', '', '', '', '10:27:30'),
(2, '', 'Bank', 'Not Added', 'Not Added', 'Not Added', 'Not Added', '1456', '2020-08-10', 'OX758298', '0', '', '', '', '09:58:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_india_income`
--
ALTER TABLE `all_india_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `binaryincometracker`
--
ALTER TABLE `binaryincometracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details_panding`
--
ALTER TABLE `booking_details_panding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_panding`
--
ALTER TABLE `booking_panding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `change_wallet`
--
ALTER TABLE `change_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `direct_comm`
--
ALTER TABLE `direct_comm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_category`
--
ALTER TABLE `expense_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_entry`
--
ALTER TABLE `expense_entry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `india_income`
--
ALTER TABLE `india_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pairenable`
--
ALTER TABLE `pairenable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pairmaching`
--
ALTER TABLE `pairmaching`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pair_income`
--
ALTER TABLE `pair_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin`
--
ALTER TABLE `pin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pin_transfer`
--
ALTER TABLE `pin_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_parchase`
--
ALTER TABLE `product_parchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_plan`
--
ALTER TABLE `product_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repurchage_users`
--
ALTER TABLE `repurchage_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_income`
--
ALTER TABLE `reward_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roi_income`
--
ALTER TABLE `roi_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roi_level`
--
ALTER TABLE `roi_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roi_user`
--
ALTER TABLE `roi_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `self_upgrade`
--
ALTER TABLE `self_upgrade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponcer_tracker`
--
ALTER TABLE `sponcer_tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tds`
--
ALTER TABLE `tds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upgrade_comm`
--
ALTER TABLE `upgrade_comm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binaryincometracker`
--
ALTER TABLE `binaryincometracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `booking_details_panding`
--
ALTER TABLE `booking_details_panding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_panding`
--
ALTER TABLE `booking_panding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `commission`
--
ALTER TABLE `commission`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `direct_comm`
--
ALTER TABLE `direct_comm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `india_income`
--
ALTER TABLE `india_income`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `pairenable`
--
ALTER TABLE `pairenable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pairmaching`
--
ALTER TABLE `pairmaching`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pair_income`
--
ALTER TABLE `pair_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pin`
--
ALTER TABLE `pin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pin_transfer`
--
ALTER TABLE `pin_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_parchase`
--
ALTER TABLE `product_parchase`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_plan`
--
ALTER TABLE `product_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `repurchage_users`
--
ALTER TABLE `repurchage_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reward_income`
--
ALTER TABLE `reward_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roi_income`
--
ALTER TABLE `roi_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roi_user`
--
ALTER TABLE `roi_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `self_upgrade`
--
ALTER TABLE `self_upgrade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sponcer_tracker`
--
ALTER TABLE `sponcer_tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tds`
--
ALTER TABLE `tds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `upgrade_comm`
--
ALTER TABLE `upgrade_comm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

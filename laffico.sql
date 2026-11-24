-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2026 at 05:09 AM
-- Server version: 8.0.46
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laffico`
--

-- --------------------------------------------------------

--
-- Table structure for table `approvals`
--

CREATE TABLE `approvals` (
  `id` int UNSIGNED NOT NULL,
  `entity_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `entity_id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED DEFAULT NULL,
  `summary` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `payload` text COLLATE utf8mb4_general_ci,
  `required_role` varchar(12) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'manager',
  `status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `requested_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `requested_by_id` int UNSIGNED DEFAULT NULL,
  `requested_role` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `requested_at` datetime DEFAULT NULL,
  `decided_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `decided_by_id` int UNSIGNED DEFAULT NULL,
  `decided_role` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `decided_at` datetime DEFAULT NULL,
  `decision_note` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `approvals`
--

INSERT INTO `approvals` (`id`, `entity_type`, `entity_id`, `client_id`, `summary`, `amount`, `payload`, `required_role`, `status`, `requested_by`, `requested_by_id`, `requested_role`, `requested_at`, `decided_by`, `decided_by_id`, `decided_role`, `decided_at`, `decision_note`) VALUES
(1, 'loan_release', 1, 1, 'Palay Production Loan for Reyes, Marilou — ₱15,000.00 / 12 mo (LN-2026-0001)', 15000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":14250,\"dsr\":9.4}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:04', 'Application complete. Approved for release.'),
(2, 'loan_release', 2, 1, 'Salary Loan for Reyes, Marilou — ₱5,000.00 / 10 mo (LN-2026-0002)', 5000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":4850,\"dsr\":13.1}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:04', 'Application complete. Approved for release.'),
(3, 'loan_restructure', 2, 1, 'Restructure LN-2026-0002 (Reyes, Marilou) over 6 months.', 0.00, NULL, 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-09-22 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-09-23 09:04:04', 'Client lost income; agreed to a longer schedule.'),
(4, 'loan_release', 3, 1, 'Emergency Loan for Reyes, Marilou — ₱3,000.00 / 6 mo (LN-2026-0003) · 1 flag', 3000.00, '{\"flags\":[\"Client has a restructured loan (LN-2026-0002).\"],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":2970,\"dsr\":17.5}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:04', 'Application complete. Approved for release.'),
(5, 'loan_release', 4, 2, 'Financial Loan for Bagares, Noel — ₱30,000.00 / 12 mo (LN-2026-0004)', 30000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":28500,\"dsr\":11.9}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:04', 'Application complete. Approved for release.'),
(6, 'loan_release', 5, 3, 'Vehicle Loan for Santos, Edgar — ₱80,000.00 / 24 mo (LN-2026-0005)', 80000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":75600,\"dsr\":19.4}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:04', 'Application complete. Approved for release.'),
(7, 'loan_release', 6, 4, 'Lending for Ocampo, Nenita — ₱12,000.00 / 10 mo (LN-2026-0006)', 12000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":11580,\"dsr\":7.9}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:04', 'Application complete. Approved for release.'),
(8, 'loan_release', 7, 5, 'Salary Loan for Mendoza, Carlo — ₱8,000.00 / 8 mo (LN-2026-0007)', 8000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":7760,\"dsr\":8.8}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:04', 'Application complete. Approved for release.'),
(9, 'loan_release', 8, 6, 'Financial Loan for Cabalquinto, Jen — ₱25,000.00 / 12 mo (LN-2026-0008)', 25000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":23750,\"dsr\":15.6}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:04', 'Application complete. Approved for release.'),
(10, 'loan_restructure', 8, 6, 'Restructure LN-2026-0008 (Cabalquinto, Jen) over 8 months.', 0.00, NULL, 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-09-22 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-09-23 09:04:04', 'Client lost income; agreed to a longer schedule.'),
(11, 'loan_release', 9, 7, 'Palay Production Loan for Fernandez, Lea — ₱40,000.00 / 10 mo (LN-2026-0009)', 40000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":38000,\"dsr\":19.1}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:04', 'Application complete. Approved for release.'),
(12, 'loan_restructure', 9, 7, 'Restructure LN-2026-0009 (Fernandez, Lea) over 9 months.', 0.00, NULL, 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-09-22 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-09-23 09:04:04', 'Client lost income; agreed to a longer schedule.'),
(13, 'loan_release', 10, 8, 'Vehicle Loan for Pascual, Ramon — ₱60,000.00 / 24 mo (LN-2026-0010)', 60000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":56700,\"dsr\":14.6}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:04', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:05', 'Application complete. Approved for release.'),
(14, 'loan_restructure', 10, 8, 'Restructure LN-2026-0010 (Pascual, Ramon) over 18 months.', 0.00, NULL, 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-09-22 09:04:05', 'Linne J. Villanueva', 3, 'manager', '2026-09-23 09:04:05', 'Client lost income; agreed to a longer schedule.'),
(15, 'loan_release', 11, 9, 'Lending for Lim, Josefa — ₱10,000.00 / 10 mo (LN-2026-0011)', 10000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":9650,\"dsr\":6.6}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:05', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:05', 'Application complete. Approved for release.'),
(16, 'loan_restructure', 11, 9, 'Restructure LN-2026-0011 (Lim, Josefa) over 5 months.', 0.00, NULL, 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-09-22 09:04:05', 'Linne J. Villanueva', 3, 'manager', '2026-09-23 09:04:05', 'Client lost income; agreed to a longer schedule.'),
(17, 'loan_release', 12, 10, 'Salary Loan for Villaruel, Ana — ₱12,000.00 / 12 mo (LN-2026-0012)', 12000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":11640,\"dsr\":8.8}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:05', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:05', 'Application complete. Approved for release.'),
(18, 'loan_release', 13, 11, 'Emergency Loan for Domingo, Rey — ₱4,000.00 / 4 mo (LN-2026-0013)', 4000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":3960,\"dsr\":7.5}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:05', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:05', 'Application complete. Approved for release.'),
(19, 'loan_release', 14, 12, 'Palay Production Loan for Aquino, Marvin — ₱35,000.00 / 8 mo (LN-2026-0014)', 35000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":33250,\"dsr\":20.9}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:05', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:05', 'Application complete. Approved for release.'),
(20, 'loan_release', 15, 13, 'Financial Loan for Gonzales, Elena — ₱20,000.00 / 12 mo (LN-2026-0015)', 20000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":19000,\"dsr\":9.7}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:05', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:05', 'Application complete. Approved for release.'),
(21, 'loan_release', 16, 14, 'Lending for Tan, Benjie — ₱9,000.00 / 6 mo (LN-2026-0016)', 9000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":8685,\"dsr\":9.8}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:05', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:05', 'Application complete. Approved for release.'),
(22, 'loan_release', 17, 15, 'Vehicle Loan for Navarro, Liza — ₱55,000.00 / 24 mo (LN-2026-0017)', 55000.00, '{\"flags\":[],\"purpose\":\"\",\"collateral\":\"\",\"net_proceeds\":51975,\"dsr\":20.1}', 'manager', 'approved', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:05', 'Linne J. Villanueva', 3, 'manager', '2026-10-12 09:04:05', 'Application complete. Approved for release.'),
(23, 'txn_cancel', 172, 11, 'Cancel TX-261012-00172 (Savings deposit, ₱300.00). Reason: Duplicate entry — receipt was already recorded earlier.', 300.00, '{\"reason\":\"Duplicate entry \\u2014 receipt was already recorded earlier.\"}', 'manager', 'pending', 'Maria Santos (Employee)', 4, 'employee', '2026-10-12 09:04:05', NULL, NULL, NULL, NULL, NULL),
(24, 'loan_release', 18, 13, 'Emergency Loan for Gonzales, Elena — ₱6,000.00 / 6 mo (LN-2026-0018)', 6000.00, '{\"flags\":[],\"purpose\":\"School fees for the semester\",\"collateral\":\"\",\"net_proceeds\":5940,\"dsr\":15.6}', 'manager', 'pending', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:05', NULL, NULL, NULL, NULL, NULL),
(25, 'loan_release', 19, 11, 'Vehicle Loan for Domingo, Rey — ₱75,000.00 / 24 mo (LN-2026-0019)', 75000.00, '{\"flags\":[],\"purpose\":\"Replace delivery tricycle\",\"collateral\":\"Tricycle, plate no. ABC 1234\",\"net_proceeds\":70875,\"dsr\":30.9}', 'manager', 'pending', 'Irisa May Abenes', 2, 'employee', '2026-10-12 09:04:05', NULL, NULL, NULL, NULL, NULL),
(26, 'txn_cancel', 173, 1, 'Cancel TX-261024-00173 (Loan payment, ₱10,000.00). Reason: other lending institution', 10000.00, '{\"reason\":\"other lending institution\"}', 'manager', 'pending', 'Irisa May Abenes', 2, 'employee', '2026-10-24 11:01:23', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `user_name` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `action` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `detail` text COLLATE utf8mb4_general_ci,
  `ip` varchar(45) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `user_id`, `user_name`, `role`, `action`, `detail`, `ip`, `created_at`) VALUES
(1, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Reyes, Marilou (CL-0231)', '0.0.0.0', '2026-10-12 09:04:04'),
(2, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Reyes, Marilou', '0.0.0.0', '2026-10-12 09:04:04'),
(3, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260515-00001 · Reyes, Marilou · ₱800.00', '0.0.0.0', '2026-10-12 09:04:04'),
(4, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Reyes, Marilou', '0.0.0.0', '2026-10-12 09:04:04'),
(5, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260515-00002 · Reyes, Marilou · ₱1,500.00', '0.0.0.0', '2026-10-12 09:04:04'),
(6, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Mortuary for Reyes, Marilou', '0.0.0.0', '2026-10-12 09:04:04'),
(7, NULL, 'Irisa May Abenes', NULL, 'Recorded mortuary payment', 'TX-260902-00003 · Reyes, Marilou · ₱120.00', '0.0.0.0', '2026-10-12 09:04:04'),
(8, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0001 · Palay Production Loan · Reyes, Marilou · ₱15,000.00', '0.0.0.0', '2026-10-12 09:04:04'),
(9, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260911-00008 · Reyes, Marilou · ₱1,312.50', '0.0.0.0', '2026-10-12 09:04:04'),
(10, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0002 · Salary Loan · Reyes, Marilou · ₱5,000.00', '0.0.0.0', '2026-10-12 09:04:04'),
(11, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260715-00013 · Reyes, Marilou · ₱525.00', '0.0.0.0', '2026-10-12 09:04:04'),
(12, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260815-00014 · Reyes, Marilou · ₱525.00', '0.0.0.0', '2026-10-12 09:04:04'),
(13, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260915-00015 · Reyes, Marilou · ₱525.00', '0.0.0.0', '2026-10-12 09:04:04'),
(14, NULL, 'Linne J. Villanueva', NULL, 'Restructured loan', 'LN-2026-0002 → 6 months, balance ₱3,675.00', '0.0.0.0', '2026-10-12 09:04:04'),
(15, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0003 · Emergency Loan · Reyes, Marilou · ₱3,000.00', '0.0.0.0', '2026-10-12 09:04:04'),
(16, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260901-00018 · Reyes, Marilou · ₱525.00', '0.0.0.0', '2026-10-12 09:04:04'),
(17, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-261001-00019 · Reyes, Marilou · ₱525.00', '0.0.0.0', '2026-10-12 09:04:04'),
(18, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Bagares, Noel (CL-0232)', '0.0.0.0', '2026-10-12 09:04:04'),
(19, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Bagares, Noel', '0.0.0.0', '2026-10-12 09:04:04'),
(20, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260510-00020 · Bagares, Noel · ₱1,110.00', '0.0.0.0', '2026-10-12 09:04:04'),
(21, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Bagares, Noel', '0.0.0.0', '2026-10-12 09:04:04'),
(22, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260510-00021 · Bagares, Noel · ₱1,620.00', '0.0.0.0', '2026-10-12 09:04:04'),
(23, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Insurance for Bagares, Noel', '0.0.0.0', '2026-10-12 09:04:04'),
(24, NULL, 'Irisa May Abenes', NULL, 'Recorded insurance payment', 'TX-260907-00022 · Bagares, Noel · ₱350.00', '0.0.0.0', '2026-10-12 09:04:04'),
(25, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0004 · Financial Loan · Bagares, Noel · ₱30,000.00', '0.0.0.0', '2026-10-12 09:04:04'),
(26, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260427-00027 · Bagares, Noel · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:04'),
(27, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260527-00028 · Bagares, Noel · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:04'),
(28, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260627-00029 · Bagares, Noel · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:04'),
(29, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260727-00030 · Bagares, Noel · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:04'),
(30, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Santos, Edgar (CL-0233)', '0.0.0.0', '2026-10-12 09:04:04'),
(31, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Santos, Edgar', '0.0.0.0', '2026-10-12 09:04:04'),
(32, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260505-00031 · Santos, Edgar · ₱1,420.00', '0.0.0.0', '2026-10-12 09:04:04'),
(33, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Santos, Edgar', '0.0.0.0', '2026-10-12 09:04:04'),
(34, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260505-00032 · Santos, Edgar · ₱1,740.00', '0.0.0.0', '2026-10-12 09:04:04'),
(35, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0005 · Vehicle Loan · Santos, Edgar · ₱80,000.00', '0.0.0.0', '2026-10-12 09:04:04'),
(36, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260122-00037 · Santos, Edgar · ₱3,500.00', '0.0.0.0', '2026-10-12 09:04:04'),
(37, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260222-00038 · Santos, Edgar · ₱3,500.00', '0.0.0.0', '2026-10-12 09:04:04'),
(38, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260322-00039 · Santos, Edgar · ₱3,500.00', '0.0.0.0', '2026-10-12 09:04:04'),
(39, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260422-00040 · Santos, Edgar · ₱3,500.00', '0.0.0.0', '2026-10-12 09:04:04'),
(40, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260522-00041 · Santos, Edgar · ₱3,500.00', '0.0.0.0', '2026-10-12 09:04:04'),
(41, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260622-00042 · Santos, Edgar · ₱3,500.00', '0.0.0.0', '2026-10-12 09:04:04'),
(42, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Ocampo, Nenita (CL-0234)', '0.0.0.0', '2026-10-12 09:04:04'),
(43, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Ocampo, Nenita', '0.0.0.0', '2026-10-12 09:04:04'),
(44, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260430-00043 · Ocampo, Nenita · ₱1,730.00', '0.0.0.0', '2026-10-12 09:04:04'),
(45, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Ocampo, Nenita', '0.0.0.0', '2026-10-12 09:04:04'),
(46, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260430-00044 · Ocampo, Nenita · ₱1,860.00', '0.0.0.0', '2026-10-12 09:04:04'),
(47, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Mortuary for Ocampo, Nenita', '0.0.0.0', '2026-10-12 09:04:04'),
(48, NULL, 'Irisa May Abenes', NULL, 'Recorded mortuary payment', 'TX-260902-00045 · Ocampo, Nenita · ₱120.00', '0.0.0.0', '2026-10-12 09:04:04'),
(49, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0006 · Lending · Ocampo, Nenita · ₱12,000.00', '0.0.0.0', '2026-10-12 09:04:04'),
(50, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260720-00050 · Ocampo, Nenita · ₱1,260.00', '0.0.0.0', '2026-10-12 09:04:04'),
(51, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260820-00051 · Ocampo, Nenita · ₱1,260.00', '0.0.0.0', '2026-10-12 09:04:04'),
(52, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Mendoza, Carlo (CL-0235)', '0.0.0.0', '2026-10-12 09:04:04'),
(53, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Mendoza, Carlo', '0.0.0.0', '2026-10-12 09:04:04'),
(54, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260425-00052 · Mendoza, Carlo · ₱2,040.00', '0.0.0.0', '2026-10-12 09:04:04'),
(55, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Mendoza, Carlo', '0.0.0.0', '2026-10-12 09:04:04'),
(56, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260425-00053 · Mendoza, Carlo · ₱1,980.00', '0.0.0.0', '2026-10-12 09:04:04'),
(57, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0007 · Salary Loan · Mendoza, Carlo · ₱8,000.00', '0.0.0.0', '2026-10-12 09:04:04'),
(58, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260904-00058 · Mendoza, Carlo · ₱1,050.00', '0.0.0.0', '2026-10-12 09:04:04'),
(59, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Cabalquinto, Jen (CL-0236)', '0.0.0.0', '2026-10-12 09:04:04'),
(60, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Cabalquinto, Jen', '0.0.0.0', '2026-10-12 09:04:04'),
(61, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260420-00059 · Cabalquinto, Jen · ₱2,350.00', '0.0.0.0', '2026-10-12 09:04:04'),
(62, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Cabalquinto, Jen', '0.0.0.0', '2026-10-12 09:04:04'),
(63, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260420-00060 · Cabalquinto, Jen · ₱2,100.00', '0.0.0.0', '2026-10-12 09:04:04'),
(64, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Insurance for Cabalquinto, Jen', '0.0.0.0', '2026-10-12 09:04:04'),
(65, NULL, 'Irisa May Abenes', NULL, 'Recorded insurance payment', 'TX-260907-00061 · Cabalquinto, Jen · ₱350.00', '0.0.0.0', '2026-10-12 09:04:04'),
(66, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0008 · Financial Loan · Cabalquinto, Jen · ₱25,000.00', '0.0.0.0', '2026-10-12 09:04:04'),
(67, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260512-00066 · Cabalquinto, Jen · ₱2,187.50', '0.0.0.0', '2026-10-12 09:04:04'),
(68, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260612-00067 · Cabalquinto, Jen · ₱2,187.50', '0.0.0.0', '2026-10-12 09:04:04'),
(69, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260712-00068 · Cabalquinto, Jen · ₱2,187.50', '0.0.0.0', '2026-10-12 09:04:04'),
(70, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260812-00069 · Cabalquinto, Jen · ₱2,187.50', '0.0.0.0', '2026-10-12 09:04:04'),
(71, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260912-00070 · Cabalquinto, Jen · ₱2,187.50', '0.0.0.0', '2026-10-12 09:04:04'),
(72, NULL, 'Linne J. Villanueva', NULL, 'Restructured loan', 'LN-2026-0008 → 8 months, balance ₱15,312.50', '0.0.0.0', '2026-10-12 09:04:04'),
(73, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Fernandez, Lea (CL-0237)', '0.0.0.0', '2026-10-12 09:04:04'),
(74, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Fernandez, Lea', '0.0.0.0', '2026-10-12 09:04:04'),
(75, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260415-00071 · Fernandez, Lea · ₱2,660.00', '0.0.0.0', '2026-10-12 09:04:04'),
(76, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Fernandez, Lea', '0.0.0.0', '2026-10-12 09:04:04'),
(77, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260415-00072 · Fernandez, Lea · ₱2,220.00', '0.0.0.0', '2026-10-12 09:04:04'),
(78, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Mortuary for Fernandez, Lea', '0.0.0.0', '2026-10-12 09:04:04'),
(79, NULL, 'Irisa May Abenes', NULL, 'Recorded mortuary payment', 'TX-260902-00073 · Fernandez, Lea · ₱120.00', '0.0.0.0', '2026-10-12 09:04:04'),
(80, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0009 · Palay Production Loan · Fernandez, Lea · ₱40,000.00', '0.0.0.0', '2026-10-12 09:04:04'),
(81, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260707-00078 · Fernandez, Lea · ₱4,200.00', '0.0.0.0', '2026-10-12 09:04:04'),
(82, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260807-00079 · Fernandez, Lea · ₱4,200.00', '0.0.0.0', '2026-10-12 09:04:04'),
(83, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260907-00080 · Fernandez, Lea · ₱4,200.00', '0.0.0.0', '2026-10-12 09:04:04'),
(84, NULL, 'Linne J. Villanueva', NULL, 'Restructured loan', 'LN-2026-0009 → 9 months, balance ₱29,400.00', '0.0.0.0', '2026-10-12 09:04:04'),
(85, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Pascual, Ramon (CL-0238)', '0.0.0.0', '2026-10-12 09:04:04'),
(86, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Pascual, Ramon', '0.0.0.0', '2026-10-12 09:04:04'),
(87, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260410-00081 · Pascual, Ramon · ₱2,970.00', '0.0.0.0', '2026-10-12 09:04:04'),
(88, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Pascual, Ramon', '0.0.0.0', '2026-10-12 09:04:04'),
(89, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260410-00082 · Pascual, Ramon · ₱2,340.00', '0.0.0.0', '2026-10-12 09:04:04'),
(90, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0010 · Vehicle Loan · Pascual, Ramon · ₱60,000.00', '0.0.0.0', '2026-10-12 09:04:04'),
(91, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260301-00087 · Pascual, Ramon · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:05'),
(92, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260401-00088 · Pascual, Ramon · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:05'),
(93, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260501-00089 · Pascual, Ramon · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:05'),
(94, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260601-00090 · Pascual, Ramon · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:05'),
(95, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260701-00091 · Pascual, Ramon · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:05'),
(96, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260801-00092 · Pascual, Ramon · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:05'),
(97, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260901-00093 · Pascual, Ramon · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:05'),
(98, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-261001-00094 · Pascual, Ramon · ₱2,625.00', '0.0.0.0', '2026-10-12 09:04:05'),
(99, NULL, 'Linne J. Villanueva', NULL, 'Restructured loan', 'LN-2026-0010 → 18 months, balance ₱42,000.00', '0.0.0.0', '2026-10-12 09:04:05'),
(100, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Lim, Josefa (CL-0239)', '0.0.0.0', '2026-10-12 09:04:05'),
(101, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Lim, Josefa', '0.0.0.0', '2026-10-12 09:04:05'),
(102, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260405-00095 · Lim, Josefa · ₱3,280.00', '0.0.0.0', '2026-10-12 09:04:05'),
(103, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Lim, Josefa', '0.0.0.0', '2026-10-12 09:04:05'),
(104, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260405-00096 · Lim, Josefa · ₱2,460.00', '0.0.0.0', '2026-10-12 09:04:05'),
(105, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0011 · Lending · Lim, Josefa · ₱10,000.00', '0.0.0.0', '2026-10-12 09:04:05'),
(106, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260602-00101 · Lim, Josefa · ₱1,050.00', '0.0.0.0', '2026-10-12 09:04:05'),
(107, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260702-00102 · Lim, Josefa · ₱1,050.00', '0.0.0.0', '2026-10-12 09:04:05'),
(108, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260802-00103 · Lim, Josefa · ₱1,050.00', '0.0.0.0', '2026-10-12 09:04:05'),
(109, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260902-00104 · Lim, Josefa · ₱1,050.00', '0.0.0.0', '2026-10-12 09:04:05'),
(110, NULL, 'Linne J. Villanueva', NULL, 'Restructured loan', 'LN-2026-0011 → 5 months, balance ₱6,300.00', '0.0.0.0', '2026-10-12 09:04:05'),
(111, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Villaruel, Ana (CL-0240)', '0.0.0.0', '2026-10-12 09:04:05'),
(112, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Villaruel, Ana', '0.0.0.0', '2026-10-12 09:04:05'),
(113, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260331-00105 · Villaruel, Ana · ₱3,590.00', '0.0.0.0', '2026-10-12 09:04:05'),
(114, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Villaruel, Ana', '0.0.0.0', '2026-10-12 09:04:05'),
(115, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260331-00106 · Villaruel, Ana · ₱2,580.00', '0.0.0.0', '2026-10-12 09:04:05'),
(116, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Mortuary for Villaruel, Ana', '0.0.0.0', '2026-10-12 09:04:05'),
(117, NULL, 'Irisa May Abenes', NULL, 'Recorded mortuary payment', 'TX-260902-00107 · Villaruel, Ana · ₱120.00', '0.0.0.0', '2026-10-12 09:04:05'),
(118, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Insurance for Villaruel, Ana', '0.0.0.0', '2026-10-12 09:04:05'),
(119, NULL, 'Irisa May Abenes', NULL, 'Recorded insurance payment', 'TX-260907-00108 · Villaruel, Ana · ₱350.00', '0.0.0.0', '2026-10-12 09:04:05'),
(120, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0012 · Salary Loan · Villaruel, Ana · ₱12,000.00', '0.0.0.0', '2026-10-12 09:04:05'),
(121, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260827-00113 · Villaruel, Ana · ₱1,050.00', '0.0.0.0', '2026-10-12 09:04:05'),
(122, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260927-00114 · Villaruel, Ana · ₱1,050.00', '0.0.0.0', '2026-10-12 09:04:05'),
(123, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Domingo, Rey (CL-0241)', '0.0.0.0', '2026-10-12 09:04:05'),
(124, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Domingo, Rey', '0.0.0.0', '2026-10-12 09:04:05'),
(125, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260326-00115 · Domingo, Rey · ₱3,900.00', '0.0.0.0', '2026-10-12 09:04:05'),
(126, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Domingo, Rey', '0.0.0.0', '2026-10-12 09:04:05'),
(127, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260326-00116 · Domingo, Rey · ₱2,700.00', '0.0.0.0', '2026-10-12 09:04:05'),
(128, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0013 · Emergency Loan · Domingo, Rey · ₱4,000.00', '0.0.0.0', '2026-10-12 09:04:05'),
(129, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260922-00119 · Domingo, Rey · ₱1,050.00', '0.0.0.0', '2026-10-12 09:04:05'),
(130, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Aquino, Marvin (CL-0242)', '0.0.0.0', '2026-10-12 09:04:05'),
(131, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Aquino, Marvin', '0.0.0.0', '2026-10-12 09:04:05'),
(132, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260321-00120 · Aquino, Marvin · ₱4,210.00', '0.0.0.0', '2026-10-12 09:04:05'),
(133, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Aquino, Marvin', '0.0.0.0', '2026-10-12 09:04:05'),
(134, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260321-00121 · Aquino, Marvin · ₱2,820.00', '0.0.0.0', '2026-10-12 09:04:05'),
(135, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0014 · Palay Production Loan · Aquino, Marvin · ₱35,000.00', '0.0.0.0', '2026-10-12 09:04:05'),
(136, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260906-00126 · Aquino, Marvin · ₱4,593.75', '0.0.0.0', '2026-10-12 09:04:05'),
(137, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-261006-00127 · Aquino, Marvin · ₱4,593.75', '0.0.0.0', '2026-10-12 09:04:05'),
(138, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Gonzales, Elena (CL-0243)', '0.0.0.0', '2026-10-12 09:04:05'),
(139, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Gonzales, Elena', '0.0.0.0', '2026-10-12 09:04:05'),
(140, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260316-00128 · Gonzales, Elena · ₱4,520.00', '0.0.0.0', '2026-10-12 09:04:05'),
(141, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Gonzales, Elena', '0.0.0.0', '2026-10-12 09:04:05'),
(142, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260316-00129 · Gonzales, Elena · ₱2,940.00', '0.0.0.0', '2026-10-12 09:04:05'),
(143, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Mortuary for Gonzales, Elena', '0.0.0.0', '2026-10-12 09:04:05'),
(144, NULL, 'Irisa May Abenes', NULL, 'Recorded mortuary payment', 'TX-260902-00130 · Gonzales, Elena · ₱120.00', '0.0.0.0', '2026-10-12 09:04:05'),
(145, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0015 · Financial Loan · Gonzales, Elena · ₱20,000.00', '0.0.0.0', '2026-10-12 09:04:05'),
(146, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260417-00135 · Gonzales, Elena · ₱1,750.00', '0.0.0.0', '2026-10-12 09:04:05'),
(147, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260517-00136 · Gonzales, Elena · ₱1,750.00', '0.0.0.0', '2026-10-12 09:04:05'),
(148, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260617-00137 · Gonzales, Elena · ₱1,750.00', '0.0.0.0', '2026-10-12 09:04:05'),
(149, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260717-00138 · Gonzales, Elena · ₱1,750.00', '0.0.0.0', '2026-10-12 09:04:05'),
(150, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260817-00139 · Gonzales, Elena · ₱1,750.00', '0.0.0.0', '2026-10-12 09:04:05'),
(151, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260917-00140 · Gonzales, Elena · ₱1,750.00', '0.0.0.0', '2026-10-12 09:04:05'),
(152, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Tan, Benjie (CL-0244)', '0.0.0.0', '2026-10-12 09:04:05'),
(153, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Tan, Benjie', '0.0.0.0', '2026-10-12 09:04:05'),
(154, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260311-00141 · Tan, Benjie · ₱4,830.00', '0.0.0.0', '2026-10-12 09:04:05'),
(155, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Tan, Benjie', '0.0.0.0', '2026-10-12 09:04:05'),
(156, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260311-00142 · Tan, Benjie · ₱3,060.00', '0.0.0.0', '2026-10-12 09:04:05'),
(157, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Insurance for Tan, Benjie', '0.0.0.0', '2026-10-12 09:04:05'),
(158, NULL, 'Irisa May Abenes', NULL, 'Recorded insurance payment', 'TX-260907-00143 · Tan, Benjie · ₱350.00', '0.0.0.0', '2026-10-12 09:04:05'),
(159, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0016 · Lending · Tan, Benjie · ₱9,000.00', '0.0.0.0', '2026-10-12 09:04:05'),
(160, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260730-00148 · Tan, Benjie · ₱1,575.00', '0.0.0.0', '2026-10-12 09:04:05'),
(161, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260830-00149 · Tan, Benjie · ₱1,575.00', '0.0.0.0', '2026-10-12 09:04:05'),
(162, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260930-00150 · Tan, Benjie · ₱1,575.00', '0.0.0.0', '2026-10-12 09:04:05'),
(163, NULL, 'Irisa May Abenes', NULL, 'Added client account', 'Navarro, Liza (CL-0245)', '0.0.0.0', '2026-10-12 09:04:05'),
(164, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Savings for Navarro, Liza', '0.0.0.0', '2026-10-12 09:04:05'),
(165, NULL, 'Irisa May Abenes', NULL, 'Recorded savings deposit', 'TX-260306-00151 · Navarro, Liza · ₱5,140.00', '0.0.0.0', '2026-10-12 09:04:05'),
(166, NULL, 'Irisa May Abenes', NULL, 'Added ledger account', 'Capital Build Up for Navarro, Liza', '0.0.0.0', '2026-10-12 09:04:05'),
(167, NULL, 'Irisa May Abenes', NULL, 'Recorded capital build up (cbu)', 'TX-260306-00152 · Navarro, Liza · ₱3,180.00', '0.0.0.0', '2026-10-12 09:04:05'),
(168, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0017 · Vehicle Loan · Navarro, Liza · ₱55,000.00', '0.0.0.0', '2026-10-12 09:04:05'),
(169, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-251221-00157 · Navarro, Liza · ₱2,406.25', '0.0.0.0', '2026-10-12 09:04:05'),
(170, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260121-00158 · Navarro, Liza · ₱2,406.25', '0.0.0.0', '2026-10-12 09:04:05'),
(171, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260221-00159 · Navarro, Liza · ₱2,406.25', '0.0.0.0', '2026-10-12 09:04:05'),
(172, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260321-00160 · Navarro, Liza · ₱2,406.25', '0.0.0.0', '2026-10-12 09:04:05'),
(173, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260421-00161 · Navarro, Liza · ₱2,406.25', '0.0.0.0', '2026-10-12 09:04:05'),
(174, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260521-00162 · Navarro, Liza · ₱2,406.25', '0.0.0.0', '2026-10-12 09:04:05'),
(175, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260621-00163 · Navarro, Liza · ₱2,406.25', '0.0.0.0', '2026-10-12 09:04:05'),
(176, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260721-00164 · Navarro, Liza · ₱2,406.25', '0.0.0.0', '2026-10-12 09:04:05'),
(177, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260821-00165 · Navarro, Liza · ₱2,406.25', '0.0.0.0', '2026-10-12 09:04:05'),
(178, NULL, 'Maria Santos (Employee)', NULL, 'Recorded loan payment', 'TX-260921-00166 · Navarro, Liza · ₱2,406.25', '0.0.0.0', '2026-10-12 09:04:05'),
(179, NULL, 'Irisa May Abenes', NULL, 'Recorded savings withdrawal', 'TX-260930-00167 · Gonzales, Elena · ₱500.00', '0.0.0.0', '2026-10-12 09:04:05'),
(180, NULL, 'Irisa May Abenes', NULL, 'Recorded service / membership fee', 'TX-260922-00168 · Navarro, Liza · ₱250.00', '0.0.0.0', '2026-10-12 09:04:05'),
(181, NULL, 'Maria Santos (Employee)', NULL, 'Recorded savings deposit', 'TX-261012-00169 · Villaruel, Ana · ₱1,000.00', '0.0.0.0', '2026-10-12 09:04:05'),
(182, NULL, 'Maria Santos (Employee)', NULL, 'Recorded capital build up (cbu)', 'TX-261012-00170 · Aquino, Marvin · ₱500.00', '0.0.0.0', '2026-10-12 09:04:05'),
(183, NULL, 'Maria Santos (Employee)', NULL, 'Recorded savings deposit', 'TX-261012-00171 · Tan, Benjie · ₱750.00', '0.0.0.0', '2026-10-12 09:04:05'),
(184, NULL, 'Maria Santos (Employee)', NULL, 'Recorded savings deposit', 'TX-261012-00172 · Domingo, Rey · ₱300.00', '0.0.0.0', '2026-10-12 09:04:05'),
(185, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0018 · Emergency Loan · Gonzales, Elena · ₱6,000.00', '0.0.0.0', '2026-10-12 09:04:05'),
(186, NULL, 'Irisa May Abenes', NULL, 'Filed loan application', 'LN-2026-0019 · Vehicle Loan · Domingo, Rey · ₱75,000.00', '0.0.0.0', '2026-10-12 09:04:05'),
(187, NULL, 'System (seeder)', NULL, 'Demo data loaded', '15 clients, ledgers, loans and bookkeeping', '0.0.0.0', '2026-10-12 09:04:06'),
(188, NULL, 'irisa', NULL, 'Failed client sign-in', 'Account: irisa', '::1', '2026-10-19 16:36:23'),
(189, NULL, 'admin', NULL, 'Failed client sign-in', 'Account: admin', '::1', '2026-10-20 08:43:56'),
(190, NULL, 'wailhi', NULL, 'Failed client sign-in', 'Account: wailhi', '::1', '2026-10-20 08:44:35'),
(191, 5, 'Ashreiel C. Azucena', 'admin', 'Signed in', 'wailhi', '::1', '2026-10-20 09:04:56'),
(192, NULL, 'wailhi', NULL, 'Failed client sign-in', 'Account: wailhi', '::1', '2026-10-20 09:10:41'),
(193, 5, 'Ashreiel C. Azucena', 'admin', 'Signed in', 'wailhi', '::1', '2026-10-20 09:14:45'),
(194, 5, 'System', 'admin', 'Late-payment penalty assessed', 'LN-2026-0001 · 1 charge', '::1', '2026-10-20 09:14:52'),
(195, 5, 'System', 'admin', 'Late-payment penalty assessed', 'LN-2026-0004 · 3 charges', '::1', '2026-10-20 09:14:52'),
(196, 5, 'System', 'admin', 'Late-payment penalty assessed', 'LN-2026-0005 · 6 charges', '::1', '2026-10-20 09:14:52'),
(197, 5, 'System', 'admin', 'Late-payment penalty assessed', 'LN-2026-0006 · 1 charge', '::1', '2026-10-20 09:14:52'),
(198, 5, 'System', 'admin', 'Late-payment penalty assessed', 'LN-2026-0007 · 1 charge', '::1', '2026-10-20 09:14:52'),
(199, 5, 'Ashreiel C. Azucena', 'admin', 'Signed in', 'wailhi', '::1', '2026-10-20 11:48:01'),
(200, 5, 'Ashreiel C. Azucena', 'admin', 'Generated report', 'Accounts payable aging · As of Oct 20, 2026', '::1', '2026-10-20 11:55:41'),
(201, 5, 'Ashreiel C. Azucena', 'admin', 'Generated report', 'Budget vs. actual · October 2026', '::1', '2026-10-20 11:55:46'),
(202, 5, 'Ashreiel C. Azucena', 'admin', 'Generated report', 'Budget vs. actual · October 2026', '::1', '2026-10-20 11:56:12'),
(203, 5, 'Ashreiel C. Azucena', 'admin', 'Signed in', 'wailhi', '::1', '2026-10-21 16:39:10'),
(204, 5, 'System', 'admin', 'Late-payment penalty assessed', 'LN-2026-0015 · 1 charge', '::1', '2026-10-21 16:39:16'),
(205, 5, 'Ashreiel C. Azucena', 'admin', 'Reset user password', 'irisa', '::1', '2026-10-21 16:41:07'),
(206, 2, 'Irisa May Abenes', 'employee', 'Signed in', 'irisa', '::1', '2026-10-23 19:52:57'),
(207, 2, 'Irisa May Abenes', 'employee', 'Signed in', 'irisa', '::1', '2026-10-23 20:03:10'),
(208, 2, 'Irisa May Abenes', 'employee', 'Generated report', 'Tax report (income tax) · October 2026', '::1', '2026-10-23 20:06:56'),
(209, 2, 'Irisa May Abenes', 'employee', 'Generated report', 'Profit and loss statement · October 2026', '::1', '2026-10-23 21:04:08'),
(210, 2, 'Irisa May Abenes', 'employee', 'Signed in', 'irisa', '::1', '2026-10-24 09:01:24'),
(211, 2, 'System', 'employee', 'Late-payment penalty assessed', 'LN-2026-0005 · 1 charge', '::1', '2026-10-24 09:01:24'),
(212, 2, 'System', 'employee', 'Late-payment penalty assessed', 'LN-2026-0006 · 2 charges', '::1', '2026-10-24 09:01:24'),
(213, 2, 'Irisa May Abenes', 'employee', 'Generated report', 'Accounts payable aging · As of Oct 24, 2026', '::1', '2026-10-24 09:03:59'),
(214, 2, 'Irisa May Abenes', 'employee', 'Generated report', 'Balance sheet · As of Oct 31, 2026', '::1', '2026-10-24 09:10:37'),
(215, 2, 'Irisa May Abenes', 'employee', 'Signed out', 'irisa', '::1', '2026-10-24 10:00:35'),
(216, 2, 'Irisa May Abenes', 'employee', 'Signed in', 'irisa', '::1', '2026-10-24 10:02:05'),
(217, 2, 'Irisa May Abenes', 'employee', 'Generated report', 'Monthly financial report · October 2026', '::1', '2026-10-24 10:08:06'),
(218, 2, 'Irisa May Abenes', 'employee', 'Generated report', 'Profit and loss statement · October 2026', '::1', '2026-10-24 10:39:05'),
(219, 2, 'Irisa May Abenes', 'employee', 'Generated report', 'Accounts receivable aging · As of Oct 24, 2026', '::1', '2026-10-24 10:39:36'),
(220, 2, 'Irisa May Abenes', 'employee', 'Signed out', 'irisa', '::1', '2026-10-24 10:47:14'),
(221, 2, 'Irisa May Abenes', 'employee', 'Signed in', 'irisa', '::1', '2026-10-24 10:54:48'),
(222, 2, 'Irisa May Abenes', 'employee', 'Recorded loan payment', 'TX-261024-00173 · Reyes, Marilou · ₱10,000.00', '::1', '2026-10-24 10:56:44'),
(223, 2, 'Irisa May Abenes', 'employee', 'Uploaded supporting document', 'Official receipt — IMG20261013213453.jpg', '::1', '2026-10-24 10:56:45'),
(224, 2, 'Irisa May Abenes', 'employee', 'Uploaded supporting document', 'Cancellation support — IMG20261013213453.jpg', '::1', '2026-10-24 11:01:23'),
(225, 2, 'Irisa May Abenes', 'employee', 'Requested transaction cancellation', 'TX-261024-00173 — other lending institution', '::1', '2026-10-24 11:01:23'),
(226, 5, 'Ashreiel C. Azucena', 'admin', 'Signed in', 'wailhi', '::1', '2026-10-24 11:02:55'),
(227, 5, 'Ashreiel C. Azucena', 'admin', 'Changed user role', 'irisa: employee → manager', '::1', '2026-10-24 11:03:11'),
(228, 2, 'Irisa May Abenes', 'manager', 'Signed out', 'irisa', '::1', '2026-10-24 11:07:08'),
(229, 5, 'Ashreiel C. Azucena', 'admin', 'Signed in', 'wailhi', '::1', '2026-10-24 11:07:18'),
(230, 5, 'Ashreiel C. Azucena', 'admin', 'Signed out', 'wailhi', '::1', '2026-10-24 11:09:14'),
(231, 2, 'Irisa May Abenes', 'manager', 'Signed in', 'irisa', '::1', '2026-10-24 11:27:25'),
(232, 2, 'Irisa May Abenes', 'manager', 'Signed out', 'irisa', '::1', '2026-10-24 11:35:21'),
(233, 5, 'Ashreiel C. Azucena', 'admin', 'Signed in', 'wailhi', '::1', '2026-10-24 11:35:29'),
(234, 5, 'Ashreiel C. Azucena', 'admin', 'Signed out', 'wailhi', '::1', '2026-10-24 11:35:39'),
(235, 2, 'Irisa May Abenes', 'manager', 'Signed in', 'irisa', '::1', '2026-10-24 11:35:56'),
(236, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Monthly financial report · October 2026', '::1', '2026-10-24 11:38:22'),
(237, 2, 'Irisa May Abenes', 'manager', 'Signed out', 'irisa', '::1', '2026-10-24 11:39:16'),
(238, 2, 'Irisa May Abenes', 'manager', 'Signed in', 'irisa', '::1', '2026-10-24 11:40:31'),
(239, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Bank reconciliation · Through Oct 31, 2026', '::1', '2026-10-24 11:44:56'),
(240, 2, 'Irisa May Abenes', 'manager', 'Exported report', 'Bank reconciliation · Through Oct 31, 2026', '::1', '2026-10-24 11:45:17'),
(241, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Monthly financial report · October 2026', '::1', '2026-10-24 11:56:21'),
(242, 2, 'Irisa May Abenes', 'manager', 'Exported report', 'Monthly financial report · October 2026', '::1', '2026-10-24 11:56:25'),
(243, 2, 'Irisa May Abenes', 'manager', 'Signed in', 'irisa', '::1', '2026-10-24 18:37:51'),
(244, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Accounts receivable aging · As of Oct 24, 2026', '::1', '2026-10-24 18:41:35'),
(245, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Accounts payable aging · As of Oct 24, 2026', '::1', '2026-10-24 18:42:08'),
(246, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Profit and loss statement · October 2026', '::1', '2026-10-24 18:42:23'),
(247, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Balance sheet · As of Oct 31, 2026', '::1', '2026-10-24 18:42:34'),
(248, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Monthly financial report · October 2026', '::1', '2026-10-24 18:42:51'),
(249, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Cash flow report · October 2026', '::1', '2026-10-24 18:43:06'),
(250, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Budget vs. actual · October 2026', '::1', '2026-10-24 18:43:18'),
(251, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Bank reconciliation · Through Oct 31, 2026', '::1', '2026-10-24 18:43:33'),
(252, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Sales and revenue · October 2026', '::1', '2026-10-24 18:43:51'),
(253, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Expense report · October 2026', '::1', '2026-10-24 18:44:08'),
(254, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Tax report (income tax) · October 2026', '::1', '2026-10-24 18:44:24'),
(255, 2, 'Irisa May Abenes', 'manager', 'Generated report', 'Monthly financial report · October 2026', '::1', '2026-10-24 18:44:35'),
(256, 2, 'Irisa May Abenes', 'manager', 'Signed out', 'irisa', '::1', '2026-10-24 18:45:04'),
(257, 2, 'Irisa May Abenes', 'manager', 'Signed in', 'irisa', '::1', '2026-11-02 11:01:19'),
(258, 2, 'System', 'manager', 'Late-payment penalty assessed', 'LN-2026-0004 · 3 charges', '::1', '2026-11-02 11:01:20'),
(259, 2, 'System', 'manager', 'Late-payment penalty assessed', 'LN-2026-0005 · 3 charges', '::1', '2026-11-02 11:01:20'),
(260, 2, 'System', 'manager', 'Late-payment penalty assessed', 'LN-2026-0011 · 1 charge', '::1', '2026-11-02 11:01:20'),
(261, 2, 'System', 'manager', 'Late-payment penalty assessed', 'LN-2026-0012 · 1 charge', '::1', '2026-11-02 11:01:20'),
(262, 2, 'System', 'manager', 'Late-payment penalty assessed', 'LN-2026-0013 · 1 charge', '::1', '2026-11-02 11:01:20'),
(263, 2, 'System', 'manager', 'Late-payment penalty assessed', 'LN-2026-0017 · 1 charge', '::1', '2026-11-02 11:01:20');

-- --------------------------------------------------------

--
-- Table structure for table `bank_entries`
--

CREATE TABLE `bank_entries` (
  `id` int UNSIGNED NOT NULL,
  `entry_date` date NOT NULL,
  `reference` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `match_type` varchar(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `match_id` int UNSIGNED DEFAULT NULL,
  `created_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_entries`
--

INSERT INTO `bank_entries` (`id`, `entry_date`, `reference`, `description`, `amount`, `match_type`, `match_id`, `created_by`, `created_at`) VALUES
(1, '2025-11-22', 'DV-LN-2026-0017', 'Deposit TX-251121-00153', -55000.00, 'txn', 153, 'Irisa May Abenes', '2026-10-12 09:04:06'),
(2, '2025-11-22', 'DED-LN-2026-0017-SER', 'Deposit TX-251121-00154', 1100.00, 'txn', 154, 'Irisa May Abenes', '2026-10-12 09:04:06'),
(3, '2025-11-22', 'DED-LN-2026-0017-INS', 'Deposit TX-251121-00155', 825.00, 'txn', 155, 'Irisa May Abenes', '2026-10-12 09:04:06'),
(4, '2026-10-07', 'BANK-FEE', 'Monthly service charge', -150.00, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `budgets`
--

CREATE TABLE `budgets` (
  `id` int UNSIGNED NOT NULL,
  `month` char(7) COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `budgets`
--

INSERT INTO `budgets` (`id`, `month`, `category`, `amount`) VALUES
(1, '2026-09', 'Salaries and wages', 40000.00),
(2, '2026-09', 'Office and admin', 3000.00),
(3, '2026-09', 'Utilities', 4000.00),
(4, '2026-09', 'Printing and supplies', 2000.00),
(5, '2026-09', 'Transportation', 1500.00),
(6, '2026-09', 'Professional fees', 5000.00),
(7, '2026-10', 'Salaries and wages', 40000.00),
(8, '2026-10', 'Office and admin', 3000.00),
(9, '2026-10', 'Utilities', 4000.00),
(10, '2026-10', 'Printing and supplies', 2000.00),
(11, '2026-10', 'Transportation', 1500.00),
(12, '2026-10', 'Professional fees', 5000.00);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int UNSIGNED NOT NULL,
  `acct_no` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `contact` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `co_maker` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `occupation` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `monthly_income` decimal(14,2) DEFAULT NULL,
  `opened_at` date DEFAULT NULL,
  `created_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `acct_no`, `name`, `contact`, `email`, `address`, `co_maker`, `occupation`, `monthly_income`, `opened_at`, `created_by`, `created_at`) VALUES
(1, 'CL-0231', 'Reyes, Marilou', '0917-555-0231', NULL, 'Brgy. Poblacion', 'Spouse of Reyes', 'Rice farmer', 14000.00, '2026-03-26', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(2, 'CL-0232', 'Bagares, Noel', '0918-555-0232', NULL, 'Brgy. San Isidro', 'Spouse of Bagares', 'Teacher', 22000.00, '2026-03-09', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(3, 'CL-0233', 'Santos, Edgar', '0919-555-0233', NULL, 'Brgy. Sta. Maria', 'Spouse of Santos', 'Sari-sari store owner', 18000.00, '2026-02-20', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(4, 'CL-0234', 'Ocampo, Nenita', '0920-555-0234', NULL, 'Brgy. Bagong Silang', 'Spouse of Ocampo', 'Tricycle driver', 16000.00, '2026-02-03', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(5, 'CL-0235', 'Mendoza, Carlo', '0921-555-0235', NULL, 'Brgy. Mabini', 'Spouse of Mendoza', 'Barangay health worker', 12000.00, '2026-01-17', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(6, 'CL-0236', 'Cabalquinto, Jen', '0922-555-0236', NULL, 'Brgy. Poblacion', 'Spouse of Cabalquinto', 'Rice farmer', 14000.00, '2025-12-31', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(7, 'CL-0237', 'Fernandez, Lea', '0923-555-0237', NULL, 'Brgy. San Isidro', 'Spouse of Fernandez', 'Teacher', 22000.00, '2025-12-14', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(8, 'CL-0238', 'Pascual, Ramon', '0924-555-0238', NULL, 'Brgy. Sta. Maria', 'Spouse of Pascual', 'Sari-sari store owner', 18000.00, '2025-11-27', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(9, 'CL-0239', 'Lim, Josefa', '0925-555-0239', NULL, 'Brgy. Bagong Silang', 'Spouse of Lim', 'Tricycle driver', 16000.00, '2025-11-10', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(10, 'CL-0240', 'Villaruel, Ana', '0926-555-0240', NULL, 'Brgy. Mabini', 'Spouse of Villaruel', 'Barangay health worker', 12000.00, '2025-10-24', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(11, 'CL-0241', 'Domingo, Rey', '0927-555-0241', NULL, 'Brgy. Poblacion', 'Spouse of Domingo', 'Rice farmer', 14000.00, '2025-10-07', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(12, 'CL-0242', 'Aquino, Marvin', '0928-555-0242', NULL, 'Brgy. San Isidro', 'Spouse of Aquino', 'Teacher', 22000.00, '2025-09-20', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(13, 'CL-0243', 'Gonzales, Elena', '0929-555-0243', NULL, 'Brgy. Sta. Maria', 'Spouse of Gonzales', 'Sari-sari store owner', 18000.00, '2025-09-03', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(14, 'CL-0244', 'Tan, Benjie', '0930-555-0244', NULL, 'Brgy. Bagong Silang', 'Spouse of Tan', 'Tricycle driver', 16000.00, '2025-08-17', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(15, 'CL-0245', 'Navarro, Liza', '0931-555-0245', NULL, 'Brgy. Mabini', 'Spouse of Navarro', 'Barangay health worker', 12000.00, '2025-07-31', 'Irisa May Abenes', '2026-10-12 09:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `client_users`
--

CREATE TABLE `client_users` (
  `id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `must_change_password` tinyint(1) NOT NULL DEFAULT '1',
  `failed_attempts` int UNSIGNED NOT NULL DEFAULT '0',
  `locked_until` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_users`
--

INSERT INTO `client_users` (`id`, `client_id`, `username`, `password_hash`, `is_active`, `must_change_password`, `failed_attempts`, `locked_until`, `last_login`, `created_by`, `created_at`) VALUES
(1, 1, 'Reyes, Marilou', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(2, 2, 'Bagares, Noel', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(3, 3, 'Santos, Edgar', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(4, 4, 'Ocampo, Nenita', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(5, 5, 'Mendoza, Carlo', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(6, 6, 'Cabalquinto, Jen', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(7, 7, 'Fernandez, Lea', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(8, 8, 'Pascual, Ramon', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(9, 9, 'Lim, Josefa', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(10, 10, 'Villaruel, Ana', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(11, 11, 'Domingo, Rey', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(12, 12, 'Aquino, Marvin', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(13, 13, 'Gonzales, Elena', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(14, 14, 'Tan, Benjie', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(15, 15, 'Navarro, Liza', '$2y$10$23DKzc6tM9x96MkkMNeJgeo6Cix04B2Y1dpspdC2A.bjEolCjmB2W', 1, 1, 0, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED DEFAULT NULL,
  `loan_id` int UNSIGNED DEFAULT NULL,
  `transaction_id` int UNSIGNED DEFAULT NULL,
  `approval_id` int UNSIGNED DEFAULT NULL,
  `doc_type` varchar(40) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'other',
  `title` varchar(150) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `original_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `stored_name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `mime` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `size` int UNSIGNED NOT NULL DEFAULT '0',
  `uploaded_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `uploaded_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `client_id`, `loan_id`, `transaction_id`, `approval_id`, `doc_type`, `title`, `original_name`, `stored_name`, `mime`, `size`, `uploaded_by`, `uploaded_at`) VALUES
(1, 1, 1, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0001', 'Application_for_Loan_LN-2026-0001.txt', 'demo_1.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(2, 1, 2, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0002', 'Application_for_Loan_LN-2026-0002.txt', 'demo_2.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(3, 1, 3, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0003', 'Application_for_Loan_LN-2026-0003.txt', 'demo_3.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(4, 2, 4, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0004', 'Application_for_Loan_LN-2026-0004.txt', 'demo_4.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(5, 3, 5, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0005', 'Application_for_Loan_LN-2026-0005.txt', 'demo_5.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(6, 4, 6, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0006', 'Application_for_Loan_LN-2026-0006.txt', 'demo_6.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(7, 5, 7, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0007', 'Application_for_Loan_LN-2026-0007.txt', 'demo_7.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(8, 6, 8, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0008', 'Application_for_Loan_LN-2026-0008.txt', 'demo_8.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(9, 7, 9, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0009', 'Application_for_Loan_LN-2026-0009.txt', 'demo_9.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(10, 8, 10, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0010', 'Application_for_Loan_LN-2026-0010.txt', 'demo_10.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(11, 9, 11, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0011', 'Application_for_Loan_LN-2026-0011.txt', 'demo_11.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(12, 10, 12, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0012', 'Application_for_Loan_LN-2026-0012.txt', 'demo_12.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(13, 11, 13, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0013', 'Application_for_Loan_LN-2026-0013.txt', 'demo_13.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(14, 12, 14, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0014', 'Application_for_Loan_LN-2026-0014.txt', 'demo_14.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(15, 13, 15, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0015', 'Application_for_Loan_LN-2026-0015.txt', 'demo_15.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(16, 14, 16, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0016', 'Application_for_Loan_LN-2026-0016.txt', 'demo_16.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(17, 15, 17, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0017', 'Application_for_Loan_LN-2026-0017.txt', 'demo_17.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(18, 11, NULL, 172, 23, 'cancellation_support', 'Duplicate receipt copy', 'Duplicate_receipt_copy.txt', 'demo_18.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(19, 13, 18, NULL, NULL, 'application_for_loan', 'Application for Loan LN-2026-0018', 'Application_for_Loan_LN-2026-0018.txt', 'demo_19.txt', 'text/plain', 80, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(20, 1, NULL, 173, NULL, 'official_receipt', NULL, 'IMG20261013213453.jpg', 'b027b8c001e96a30dc0044ca.jpg', 'image/jpeg', 4974197, 'Irisa May Abenes', '2026-10-24 10:56:45'),
(21, 1, NULL, 173, 26, 'cancellation_support', 'Cancellation support for TX-261024-00173', 'IMG20261013213453.jpg', '31cff0100f6924f21fd65006.jpg', 'image/jpeg', 4974197, 'Irisa May Abenes', '2026-10-24 11:01:23');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int UNSIGNED NOT NULL,
  `expense_date` date NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `supplier` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `invoice_no` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `payment_status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'paid',
  `due_date` date DEFAULT NULL,
  `paid_date` date DEFAULT NULL,
  `paid_via` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_date`, `category`, `description`, `supplier`, `invoice_no`, `amount`, `payment_status`, `due_date`, `paid_date`, `paid_via`, `created_by`, `created_at`) VALUES
(1, '2026-09-02', 'Salaries and wages', 'Staff salaries', NULL, NULL, 38000.00, 'paid', NULL, '2026-09-02', 'cash', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(2, '2026-09-05', 'Office and admin', 'Office supplies', 'Alpha Office Supply', 'INV-2201', 3800.00, 'paid', NULL, '2026-09-05', 'cash', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(3, '2026-09-07', 'Utilities', 'Electricity', 'Electric Cooperative', 'EC-0911', 3300.00, 'paid', NULL, '2026-09-07', 'bank', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(4, '2026-10-02', 'Salaries and wages', 'Staff salaries', NULL, NULL, 38000.00, 'paid', NULL, '2026-10-02', 'cash', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(5, '2026-10-03', 'Office and admin', 'Office supplies', 'Alpha Office Supply', 'INV-2290', 4200.00, 'paid', NULL, '2026-10-03', 'cash', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(6, '2026-10-04', 'Utilities', 'Electricity', 'Electric Cooperative', 'EC-1010', 3150.00, 'paid', NULL, '2026-10-04', 'bank', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(7, '2026-10-04', 'Printing and supplies', 'Passbooks and forms', 'PrintHub', 'PH-8841', 1850.00, 'paid', NULL, '2026-10-04', 'cash', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(8, '2026-09-17', 'Professional fees', 'Audit fee (partial)', 'R. Dizon & Associates', 'RD-044', 6500.00, 'unpaid', '2026-10-02', NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(9, '2026-10-09', 'Utilities', 'Internet subscription', 'LAN Internet', 'LI-5531', 2400.00, 'unpaid', '2026-10-22', NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `ledger_accounts`
--

CREATE TABLE `ledger_accounts` (
  `id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `ledger_type` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `account_no` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `opened_at` date DEFAULT NULL,
  `created_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ledger_accounts`
--

INSERT INTO `ledger_accounts` (`id`, `client_id`, `ledger_type`, `account_no`, `opened_at`, `created_by`, `created_at`) VALUES
(1, 1, 'savings', 'SV-0231', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(2, 1, 'cbu', 'CB-0231', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(3, 1, 'mortuary', 'MF-0231', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(4, 1, 'insurance', 'IN-0231', '2026-10-12', 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(5, 2, 'savings', 'SV-0232', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(6, 2, 'cbu', 'CB-0232', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(7, 2, 'insurance', 'IN-0232', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(8, 3, 'savings', 'SV-0233', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(9, 3, 'cbu', 'CB-0233', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(10, 3, 'insurance', 'IN-0233', '2026-10-12', 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(11, 4, 'savings', 'SV-0234', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(12, 4, 'cbu', 'CB-0234', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(13, 4, 'mortuary', 'MF-0234', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(14, 4, 'insurance', 'IN-0234', '2026-10-12', 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(15, 5, 'savings', 'SV-0235', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(16, 5, 'cbu', 'CB-0235', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(17, 5, 'insurance', 'IN-0235', '2026-10-12', 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(18, 6, 'savings', 'SV-0236', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(19, 6, 'cbu', 'CB-0236', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(20, 6, 'insurance', 'IN-0236', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(21, 7, 'savings', 'SV-0237', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(22, 7, 'cbu', 'CB-0237', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(23, 7, 'mortuary', 'MF-0237', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(24, 7, 'insurance', 'IN-0237', '2026-10-12', 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(25, 8, 'savings', 'SV-0238', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(26, 8, 'cbu', 'CB-0238', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:04'),
(27, 8, 'insurance', 'IN-0238', '2026-10-12', 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(28, 9, 'savings', 'SV-0239', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(29, 9, 'cbu', 'CB-0239', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(30, 9, 'insurance', 'IN-0239', '2026-10-12', 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(31, 10, 'savings', 'SV-0240', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(32, 10, 'cbu', 'CB-0240', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(33, 10, 'mortuary', 'MF-0240', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(34, 10, 'insurance', 'IN-0240', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(35, 11, 'savings', 'SV-0241', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(36, 11, 'cbu', 'CB-0241', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(37, 12, 'savings', 'SV-0242', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(38, 12, 'cbu', 'CB-0242', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(39, 12, 'insurance', 'IN-0242', '2026-10-12', 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(40, 13, 'savings', 'SV-0243', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(41, 13, 'cbu', 'CB-0243', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(42, 13, 'mortuary', 'MF-0243', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(43, 13, 'insurance', 'IN-0243', '2026-10-12', 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(44, 14, 'savings', 'SV-0244', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(45, 14, 'cbu', 'CB-0244', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(46, 14, 'insurance', 'IN-0244', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(47, 15, 'savings', 'SV-0245', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(48, 15, 'cbu', 'CB-0245', '2026-10-12', 'Irisa May Abenes', '2026-10-12 09:04:05'),
(49, 15, 'insurance', 'IN-0245', '2026-10-12', 'Linne J. Villanueva', '2026-10-12 09:04:05');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` int UNSIGNED NOT NULL,
  `loan_no` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `loan_type` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `collateral` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `principal` decimal(14,2) NOT NULL DEFAULT '0.00',
  `interest_rate` decimal(6,2) NOT NULL DEFAULT '0.00',
  `interest_amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `term_months` int UNSIGNED NOT NULL DEFAULT '1',
  `total_payable` decimal(14,2) NOT NULL DEFAULT '0.00',
  `monthly_due` decimal(14,2) NOT NULL DEFAULT '0.00',
  `release_date` date NOT NULL,
  `first_due_date` date NOT NULL,
  `release_method` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'cash',
  `sched_terms` int UNSIGNED NOT NULL DEFAULT '1',
  `sched_total` decimal(14,2) NOT NULL DEFAULT '0.00',
  `sched_offset` decimal(14,2) NOT NULL DEFAULT '0.00',
  `paid_total` decimal(14,2) NOT NULL DEFAULT '0.00',
  `adjustment_total` decimal(14,2) NOT NULL DEFAULT '0.00',
  `is_restructured` tinyint(1) NOT NULL DEFAULT '0',
  `restructured_at` date DEFAULT NULL,
  `approval_status` varchar(12) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `required_role` varchar(12) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'manager',
  `approved_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_general_ci,
  `created_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `evaluation` text COLLATE utf8mb4_general_ci,
  `service_fee` decimal(14,2) DEFAULT '0.00',
  `insurance_fee` decimal(14,2) DEFAULT '0.00',
  `cbu_retention` decimal(14,2) DEFAULT '0.00',
  `net_proceeds` decimal(14,2) DEFAULT '0.00',
  `penalty_total` decimal(14,2) DEFAULT '0.00',
  `penalty_paid` decimal(14,2) DEFAULT '0.00',
  `closed_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `loan_no`, `client_id`, `loan_type`, `purpose`, `collateral`, `principal`, `interest_rate`, `interest_amount`, `term_months`, `total_payable`, `monthly_due`, `release_date`, `first_due_date`, `release_method`, `sched_terms`, `sched_total`, `sched_offset`, `paid_total`, `adjustment_total`, `is_restructured`, `restructured_at`, `approval_status`, `required_role`, `approved_by`, `approved_at`, `remarks`, `created_by`, `created_at`, `evaluation`, `service_fee`, `insurance_fee`, `cbu_retention`, `net_proceeds`, `penalty_total`, `penalty_paid`, `closed_at`) VALUES
(1, 'LN-2026-0001', 1, 'Palay Production Loan', NULL, NULL, 15000.00, 5.00, 750.00, 12, 15750.00, 1312.50, '2026-08-11', '2026-09-11', 'check', 12, 15750.00, 0.00, 11273.12, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:04', NULL, 'Irisa May Abenes', '2026-10-12 09:04:04', '{\"flags\":[],\"dsr\":9.4,\"monthly_dues\":0}', 300.00, 150.00, 300.00, 14250.00, 39.38, 39.38, NULL),
(2, 'LN-2026-0002', 1, 'Salary Loan', NULL, NULL, 5000.00, 5.00, 250.00, 10, 5250.00, 612.50, '2026-06-15', '2026-10-15', 'cash', 6, 3675.00, 1575.00, 1575.00, 0.00, 1, '2026-10-12', 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:04', NULL, 'Irisa May Abenes', '2026-10-12 09:04:04', '{\"flags\":[],\"dsr\":13.1,\"monthly_dues\":1312.5}', 75.00, 25.00, 50.00, 4850.00, 0.00, 0.00, NULL),
(3, 'LN-2026-0003', 1, 'Emergency Loan', NULL, NULL, 3000.00, 5.00, 150.00, 6, 3150.00, 525.00, '2026-08-01', '2026-09-01', 'check', 6, 3150.00, 0.00, 1050.00, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:04', NULL, 'Irisa May Abenes', '2026-10-12 09:04:04', '{\"flags\":[\"Client has a restructured loan (LN-2026-0002).\"],\"dsr\":17.5,\"monthly_dues\":1925}', 30.00, 0.00, 0.00, 2970.00, 0.00, 0.00, NULL),
(4, 'LN-2026-0004', 2, 'Financial Loan', NULL, NULL, 30000.00, 5.00, 1500.00, 12, 31500.00, 2625.00, '2026-03-27', '2026-04-27', 'cash', 12, 31500.00, 0.00, 10500.00, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:04', NULL, 'Irisa May Abenes', '2026-10-12 09:04:04', '{\"flags\":[],\"dsr\":11.9,\"monthly_dues\":0}', 600.00, 300.00, 600.00, 28500.00, 472.50, 0.00, NULL),
(5, 'LN-2026-0005', 3, 'Vehicle Loan', NULL, NULL, 80000.00, 5.00, 4000.00, 24, 84000.00, 3500.00, '2025-12-22', '2026-01-22', 'check', 24, 84000.00, 0.00, 21000.00, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:04', NULL, 'Irisa May Abenes', '2026-10-12 09:04:04', '{\"flags\":[],\"dsr\":19.4,\"monthly_dues\":0}', 1600.00, 1200.00, 1600.00, 75600.00, 1050.00, 0.00, NULL),
(6, 'LN-2026-0006', 4, 'Lending', NULL, NULL, 12000.00, 5.00, 600.00, 10, 12600.00, 1260.00, '2026-06-20', '2026-07-20', 'cash', 10, 12600.00, 0.00, 2520.00, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:04', NULL, 'Irisa May Abenes', '2026-10-12 09:04:04', '{\"flags\":[],\"dsr\":7.9,\"monthly_dues\":0}', 240.00, 60.00, 120.00, 11580.00, 113.40, 0.00, NULL),
(7, 'LN-2026-0007', 5, 'Salary Loan', NULL, NULL, 8000.00, 5.00, 400.00, 8, 8400.00, 1050.00, '2026-08-04', '2026-09-04', 'check', 8, 8400.00, 0.00, 1050.00, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:04', NULL, 'Irisa May Abenes', '2026-10-12 09:04:04', '{\"flags\":[],\"dsr\":8.8,\"monthly_dues\":0}', 120.00, 40.00, 80.00, 7760.00, 31.50, 0.00, NULL),
(8, 'LN-2026-0008', 6, 'Financial Loan', NULL, NULL, 25000.00, 5.00, 1250.00, 12, 26250.00, 1914.06, '2026-04-12', '2026-10-12', 'cash', 8, 15312.50, 10937.50, 10937.50, 0.00, 1, '2026-10-12', 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:04', NULL, 'Irisa May Abenes', '2026-10-12 09:04:04', '{\"flags\":[],\"dsr\":15.6,\"monthly_dues\":0}', 500.00, 250.00, 500.00, 23750.00, 0.00, 0.00, NULL),
(9, 'LN-2026-0009', 7, 'Palay Production Loan', NULL, NULL, 40000.00, 5.00, 2000.00, 10, 42000.00, 3266.67, '2026-06-07', '2026-10-07', 'check', 9, 29400.00, 12600.00, 12600.00, 0.00, 1, '2026-10-12', 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:04', NULL, 'Irisa May Abenes', '2026-10-12 09:04:04', '{\"flags\":[],\"dsr\":19.1,\"monthly_dues\":0}', 800.00, 400.00, 800.00, 38000.00, 0.00, 0.00, NULL),
(10, 'LN-2026-0010', 8, 'Vehicle Loan', NULL, NULL, 60000.00, 5.00, 3000.00, 24, 63000.00, 2333.33, '2026-02-01', '2026-11-01', 'cash', 18, 42000.00, 21000.00, 21000.00, 0.00, 1, '2026-10-12', 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:04', NULL, 'Irisa May Abenes', '2026-10-12 09:04:04', '{\"flags\":[],\"dsr\":14.6,\"monthly_dues\":0}', 1200.00, 900.00, 1200.00, 56700.00, 0.00, 0.00, NULL),
(11, 'LN-2026-0011', 9, 'Lending', NULL, NULL, 10000.00, 5.00, 500.00, 10, 10500.00, 1260.00, '2026-05-02', '2026-10-02', 'check', 5, 6300.00, 4200.00, 4200.00, 0.00, 1, '2026-10-12', 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:05', NULL, 'Irisa May Abenes', '2026-10-12 09:04:05', '{\"flags\":[],\"dsr\":6.6,\"monthly_dues\":0}', 200.00, 50.00, 100.00, 9650.00, 37.80, 0.00, NULL),
(12, 'LN-2026-0012', 10, 'Salary Loan', NULL, NULL, 12000.00, 5.00, 600.00, 12, 12600.00, 1050.00, '2026-07-27', '2026-08-27', 'cash', 12, 12600.00, 0.00, 2100.00, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:05', NULL, 'Irisa May Abenes', '2026-10-12 09:04:05', '{\"flags\":[],\"dsr\":8.8,\"monthly_dues\":0}', 180.00, 60.00, 120.00, 11640.00, 31.50, 0.00, NULL),
(13, 'LN-2026-0013', 11, 'Emergency Loan', NULL, NULL, 4000.00, 5.00, 200.00, 4, 4200.00, 1050.00, '2026-08-22', '2026-09-22', 'check', 4, 4200.00, 0.00, 1050.00, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:05', NULL, 'Irisa May Abenes', '2026-10-12 09:04:05', '{\"flags\":[],\"dsr\":7.5,\"monthly_dues\":0}', 40.00, 0.00, 0.00, 3960.00, 31.50, 0.00, NULL),
(14, 'LN-2026-0014', 12, 'Palay Production Loan', NULL, NULL, 35000.00, 5.00, 1750.00, 8, 36750.00, 4593.75, '2026-08-06', '2026-09-06', 'cash', 8, 36750.00, 0.00, 9187.50, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:05', NULL, 'Irisa May Abenes', '2026-10-12 09:04:05', '{\"flags\":[],\"dsr\":20.9,\"monthly_dues\":0}', 700.00, 350.00, 700.00, 33250.00, 0.00, 0.00, NULL),
(15, 'LN-2026-0015', 13, 'Financial Loan', NULL, NULL, 20000.00, 5.00, 1000.00, 12, 21000.00, 1750.00, '2026-03-17', '2026-04-17', 'check', 12, 21000.00, 0.00, 10500.00, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:05', NULL, 'Irisa May Abenes', '2026-10-12 09:04:05', '{\"flags\":[],\"dsr\":9.7,\"monthly_dues\":0}', 400.00, 200.00, 400.00, 19000.00, 52.50, 0.00, NULL),
(16, 'LN-2026-0016', 14, 'Lending', NULL, NULL, 9000.00, 5.00, 450.00, 6, 9450.00, 1575.00, '2026-06-30', '2026-07-30', 'cash', 6, 9450.00, 0.00, 4725.00, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:05', NULL, 'Irisa May Abenes', '2026-10-12 09:04:05', '{\"flags\":[],\"dsr\":9.8,\"monthly_dues\":0}', 180.00, 45.00, 90.00, 8685.00, 0.00, 0.00, NULL),
(17, 'LN-2026-0017', 15, 'Vehicle Loan', NULL, NULL, 55000.00, 5.00, 2750.00, 24, 57750.00, 2406.25, '2025-11-21', '2025-12-21', 'check', 24, 57750.00, 0.00, 24062.50, 0.00, 0, NULL, 'approved', 'manager', 'Linne J. Villanueva', '2026-10-12 09:04:05', NULL, 'Irisa May Abenes', '2026-10-12 09:04:05', '{\"flags\":[],\"dsr\":20.1,\"monthly_dues\":0}', 1100.00, 825.00, 1100.00, 51975.00, 72.19, 0.00, NULL),
(18, 'LN-2026-0018', 13, 'Emergency Loan', 'School fees for the semester', NULL, 6000.00, 5.00, 300.00, 6, 6300.00, 1050.00, '2026-10-12', '2026-11-12', 'cash', 6, 6300.00, 0.00, 0.00, 0.00, 0, NULL, 'pending', 'manager', NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05', '{\"flags\":[],\"dsr\":15.6,\"monthly_dues\":1750}', 60.00, 0.00, 0.00, 5940.00, 0.00, 0.00, NULL),
(19, 'LN-2026-0019', 11, 'Vehicle Loan', 'Replace delivery tricycle', 'Tricycle, plate no. ABC 1234', 75000.00, 5.00, 3750.00, 24, 78750.00, 3281.25, '2026-10-12', '2026-11-12', 'check', 24, 78750.00, 0.00, 0.00, 0.00, 0, NULL, 'pending', 'manager', NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05', '{\"flags\":[],\"dsr\":30.9,\"monthly_dues\":1050}', 1500.00, 1125.00, 1500.00, 70875.00, 0.00, 0.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint UNSIGNED NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `time` int NOT NULL,
  `batch` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(6, '2026-10-07-000001', 'App\\Database\\Migrations\\CreateLoaningTables', 'default', 'App', 1791767043, 1),
(7, '2026-10-08-000001', 'App\\Database\\Migrations\\AddClientPortal', 'default', 'App', 1791767043, 1),
(8, '2026-10-08-000002', 'App\\Database\\Migrations\\ClientPortalUsernameIsName', 'default', 'App', 1791767043, 1),
(9, '2026-10-09-000001', 'App\\Database\\Migrations\\ThreeRoles', 'default', 'App', 1791767043, 1),
(10, '2026-10-10-000001', 'App\\Database\\Migrations\\LoanLifecycle', 'default', 'App', 1791767043, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int UNSIGNED NOT NULL,
  `loan_id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `kind` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `installment_due` date DEFAULT NULL,
  `days_overdue` int NOT NULL DEFAULT '0',
  `message` text COLLATE utf8mb4_general_ci,
  `channel` varchar(20) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'system',
  `is_auto` tinyint(1) NOT NULL DEFAULT '1',
  `status` varchar(15) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'sent',
  `created_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `loan_id`, `client_id`, `kind`, `installment_due`, `days_overdue`, `message`, `channel`, `is_auto`, `status`, `created_by`, `sent_at`) VALUES
(1, 4, 2, 'reminder_1', '2026-08-27', 54, '1st reminder to Bagares, Noel: Financial Loan installment of ₱2,625.00 due Aug 27, 2026 is now 54 days overdue.', 'system', 1, 'sent', NULL, '2026-09-11 08:00:00'),
(2, 4, 2, 'reminder_2', '2026-08-27', 54, '2nd reminder to Bagares, Noel: Financial Loan installment of ₱2,625.00 due Aug 27, 2026 is now 54 days overdue.', 'system', 1, 'sent', NULL, '2026-09-26 08:00:00'),
(3, 4, 2, 'collection_1', '2026-08-27', 54, '1st collection letter to Bagares, Noel: Financial Loan installment of ₱2,625.00 due Aug 27, 2026 remains unpaid (54 days).', 'system', 1, 'sent', NULL, '2026-10-11 08:00:00'),
(4, 5, 3, 'reminder_1', '2026-07-22', 90, '1st reminder to Santos, Edgar: Vehicle Loan installment of ₱3,500.00 due Jul 22, 2026 is now 90 days overdue.', 'system', 1, 'sent', NULL, '2026-08-06 08:00:00'),
(5, 5, 3, 'reminder_2', '2026-07-22', 90, '2nd reminder to Santos, Edgar: Vehicle Loan installment of ₱3,500.00 due Jul 22, 2026 is now 90 days overdue.', 'system', 1, 'sent', NULL, '2026-08-21 08:00:00'),
(6, 5, 3, 'collection_1', '2026-07-22', 90, '1st collection letter to Santos, Edgar: Vehicle Loan installment of ₱3,500.00 due Jul 22, 2026 remains unpaid (90 days).', 'system', 1, 'sent', NULL, '2026-09-05 08:00:00'),
(7, 5, 3, 'collection_2', '2026-07-22', 90, '2nd collection letter to Santos, Edgar: Vehicle Loan installment of ₱3,500.00 due Jul 22, 2026 remains unpaid (90 days). Next step: remedial action.', 'system', 1, 'sent', NULL, '2026-09-20 08:00:00'),
(8, 6, 4, 'reminder_1', '2026-09-20', 30, '1st reminder to Ocampo, Nenita: Lending installment of ₱1,260.00 due Sep 20, 2026 is now 30 days overdue.', 'system', 1, 'sent', NULL, '2026-10-05 08:00:00'),
(9, 6, 4, 'reminder_2', '2026-09-20', 30, '2nd reminder to Ocampo, Nenita: Lending installment of ₱1,260.00 due Sep 20, 2026 is now 30 days overdue.', 'system', 1, 'sent', NULL, '2026-10-20 08:00:00'),
(10, 7, 5, 'reminder_1', '2026-10-04', 16, '1st reminder to Mendoza, Carlo: Salary Loan installment of ₱1,050.00 due Oct 04, 2026 is now 16 days overdue.', 'system', 1, 'sent', NULL, '2026-10-19 08:00:00'),
(11, 11, 9, 'reminder_1', '2026-10-02', 18, '1st reminder to Lim, Josefa: Lending installment of ₱1,260.00 due Oct 02, 2026 is now 18 days overdue.', 'system', 1, 'sent', NULL, '2026-10-17 08:00:00'),
(12, 13, 11, 'due_soon', '2026-10-22', 0, 'Heads-up for Domingo, Rey: Emergency Loan installment of ₱1,050.00 due Oct 22, 2026.', 'system', 1, 'sent', NULL, '2026-10-20 09:14:53'),
(13, 17, 15, 'due_soon', '2026-10-21', 0, 'Heads-up for Navarro, Liza: Vehicle Loan installment of ₱2,406.25 due Oct 21, 2026.', 'system', 1, 'sent', NULL, '2026-10-20 09:14:53'),
(14, 9, 7, 'reminder_1', '2026-10-07', 16, '1st reminder to Fernandez, Lea: Palay Production Loan installment of ₱3,266.67 due Oct 07, 2026 is now 16 days overdue.', 'system', 1, 'sent', NULL, '2026-10-22 08:00:00'),
(15, 12, 10, 'due_soon', '2026-10-27', 0, 'Heads-up for Villaruel, Ana: Salary Loan installment of ₱1,050.00 due Oct 27, 2026.', 'system', 1, 'sent', NULL, '2026-10-24 09:01:24'),
(16, 2, 1, 'reminder_1', '2026-10-15', 18, '1st reminder to Reyes, Marilou: Salary Loan installment of ₱612.50 due Oct 15, 2026 is now 18 days overdue.', 'system', 1, 'sent', NULL, '2026-10-30 08:00:00'),
(17, 4, 2, 'collection_2', '2026-08-27', 67, '2nd collection letter to Bagares, Noel: Financial Loan installment of ₱2,625.00 due Aug 27, 2026 remains unpaid (67 days). Next step: remedial action.', 'system', 1, 'sent', NULL, '2026-10-26 08:00:00'),
(18, 8, 6, 'reminder_1', '2026-10-12', 21, '1st reminder to Cabalquinto, Jen: Financial Loan installment of ₱1,914.06 due Oct 12, 2026 is now 21 days overdue.', 'system', 1, 'sent', NULL, '2026-10-27 08:00:00'),
(19, 11, 9, 'reminder_2', '2026-10-02', 31, '2nd reminder to Lim, Josefa: Lending installment of ₱1,260.00 due Oct 02, 2026 is now 31 days overdue.', 'system', 1, 'sent', NULL, '2026-11-01 08:00:00'),
(20, 15, 13, 'reminder_1', '2026-10-17', 16, '1st reminder to Gonzales, Elena: Financial Loan installment of ₱1,750.00 due Oct 17, 2026 is now 16 days overdue.', 'system', 1, 'sent', NULL, '2026-11-01 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `online_payments`
--

CREATE TABLE `online_payments` (
  `id` int UNSIGNED NOT NULL,
  `pay_ref` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `loan_id` int UNSIGNED NOT NULL,
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `driver` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `provider_id` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `checkout_url` text COLLATE utf8mb4_general_ci,
  `status` varchar(12) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending',
  `transaction_id` int UNSIGNED DEFAULT NULL,
  `fail_reason` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `paid_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penalties`
--

CREATE TABLE `penalties` (
  `id` int UNSIGNED NOT NULL,
  `loan_id` int UNSIGNED NOT NULL,
  `due_date` date NOT NULL,
  `month_no` int UNSIGNED NOT NULL DEFAULT '1',
  `base_amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `waived_amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `assessed_on` date NOT NULL,
  `waive_reason` text COLLATE utf8mb4_general_ci,
  `waived_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `waived_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penalties`
--

INSERT INTO `penalties` (`id`, `loan_id`, `due_date`, `month_no`, `base_amount`, `amount`, `waived_amount`, `assessed_on`, `waive_reason`, `waived_by`, `waived_at`) VALUES
(1, 1, '2026-10-11', 1, 1312.50, 39.38, 0.00, '2026-10-15', NULL, NULL, NULL),
(2, 4, '2026-08-27', 1, 2625.00, 78.75, 0.00, '2026-08-31', NULL, NULL, NULL),
(3, 4, '2026-08-27', 2, 2625.00, 78.75, 0.00, '2026-09-30', NULL, NULL, NULL),
(4, 4, '2026-09-27', 1, 2625.00, 78.75, 0.00, '2026-10-01', NULL, NULL, NULL),
(5, 5, '2026-07-22', 1, 3500.00, 105.00, 0.00, '2026-07-26', NULL, NULL, NULL),
(6, 5, '2026-07-22', 2, 3500.00, 105.00, 0.00, '2026-08-25', NULL, NULL, NULL),
(7, 5, '2026-07-22', 3, 3500.00, 105.00, 0.00, '2026-09-24', NULL, NULL, NULL),
(8, 5, '2026-08-22', 1, 3500.00, 105.00, 0.00, '2026-08-26', NULL, NULL, NULL),
(9, 5, '2026-08-22', 2, 3500.00, 105.00, 0.00, '2026-09-25', NULL, NULL, NULL),
(10, 5, '2026-09-22', 1, 3500.00, 105.00, 0.00, '2026-09-26', NULL, NULL, NULL),
(11, 6, '2026-09-20', 1, 1260.00, 37.80, 0.00, '2026-09-24', NULL, NULL, NULL),
(12, 7, '2026-10-04', 1, 1050.00, 31.50, 0.00, '2026-10-08', NULL, NULL, NULL),
(13, 15, '2026-10-17', 1, 1750.00, 52.50, 0.00, '2026-10-21', NULL, NULL, NULL),
(14, 5, '2026-07-22', 4, 3500.00, 105.00, 0.00, '2026-10-24', NULL, NULL, NULL),
(15, 6, '2026-09-20', 2, 1260.00, 37.80, 0.00, '2026-10-24', NULL, NULL, NULL),
(16, 6, '2026-10-20', 1, 1260.00, 37.80, 0.00, '2026-10-24', NULL, NULL, NULL),
(17, 4, '2026-08-27', 3, 2625.00, 78.75, 0.00, '2026-10-30', NULL, NULL, NULL),
(18, 4, '2026-09-27', 2, 2625.00, 78.75, 0.00, '2026-10-31', NULL, NULL, NULL),
(19, 4, '2026-10-27', 1, 2625.00, 78.75, 0.00, '2026-10-31', NULL, NULL, NULL),
(20, 5, '2026-08-22', 3, 3500.00, 105.00, 0.00, '2026-10-25', NULL, NULL, NULL),
(21, 5, '2026-09-22', 2, 3500.00, 105.00, 0.00, '2026-10-26', NULL, NULL, NULL),
(22, 5, '2026-10-22', 1, 3500.00, 105.00, 0.00, '2026-10-26', NULL, NULL, NULL),
(23, 11, '2026-10-02', 1, 1260.00, 37.80, 0.00, '2026-11-02', NULL, NULL, NULL),
(24, 12, '2026-10-27', 1, 1050.00, 31.50, 0.00, '2026-10-31', NULL, NULL, NULL),
(25, 13, '2026-10-22', 1, 1050.00, 31.50, 0.00, '2026-10-26', NULL, NULL, NULL),
(26, 17, '2026-10-21', 1, 2406.25, 72.19, 0.00, '2026-10-25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `name` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`name`, `value`) VALUES
('opening_cash_on_bank', '500000.00'),
('opening_cash_on_hand', '500000.00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int UNSIGNED NOT NULL,
  `txn_no` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `txn_date` date NOT NULL,
  `client_id` int UNSIGNED DEFAULT NULL,
  `loan_id` int UNSIGNED DEFAULT NULL,
  `category` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `ledger_type` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `direction` varchar(5) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'in',
  `adj_sign` tinyint NOT NULL DEFAULT '1',
  `amount` decimal(14,2) NOT NULL DEFAULT '0.00',
  `method` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reference` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `principal_part` decimal(14,2) NOT NULL DEFAULT '0.00',
  `interest_part` decimal(14,2) NOT NULL DEFAULT '0.00',
  `penalty_part` decimal(14,2) DEFAULT '0.00',
  `status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'posted',
  `cancel_requested` tinyint(1) NOT NULL DEFAULT '0',
  `cancel_reason` text COLLATE utf8mb4_general_ci,
  `cancelled_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `recorded_by` varchar(120) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `txn_no`, `txn_date`, `client_id`, `loan_id`, `category`, `ledger_type`, `direction`, `adj_sign`, `amount`, `method`, `reference`, `remarks`, `principal_part`, `interest_part`, `penalty_part`, `status`, `cancel_requested`, `cancel_reason`, `cancelled_by`, `cancelled_at`, `recorded_by`, `created_at`) VALUES
(1, 'TX-260515-00001', '2026-05-15', 1, NULL, 'savings_deposit', 'savings', 'in', 1, 800.00, 'cash', 'OR-00001', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(2, 'TX-260515-00002', '2026-05-15', 1, NULL, 'cbu_deposit', 'cbu', 'in', 1, 1500.00, 'cash', 'OR-00002', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(3, 'TX-260902-00003', '2026-09-02', 1, NULL, 'mortuary_payment', 'mortuary', 'in', 1, 120.00, 'cash', 'OR-00003', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(4, 'TX-260811-00004', '2026-08-11', 1, 1, 'loan_release', NULL, 'out', 1, 15000.00, 'check', 'DV-LN-2026-0001', 'Loan release — Palay Production Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(5, 'TX-260811-00005', '2026-08-11', 1, 1, 'service_fee', NULL, 'in', 1, 300.00, 'check', 'DED-LN-2026-0001-SER', 'Service fee deducted from the proceeds of LN-2026-0001', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(6, 'TX-260811-00006', '2026-08-11', 1, 1, 'insurance_payment', 'insurance', 'in', 1, 150.00, 'check', 'DED-LN-2026-0001-INS', 'Loan insurance deducted from the proceeds of LN-2026-0001', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(7, 'TX-260811-00007', '2026-08-11', 1, 1, 'cbu_deposit', 'cbu', 'in', 1, 300.00, 'check', 'DED-LN-2026-0001-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0001', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(8, 'TX-260911-00008', '2026-09-11', 1, 1, 'loan_payment', NULL, 'in', 1, 1312.50, 'cash', 'OR-00008', NULL, 1250.00, 62.50, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(9, 'TX-260615-00009', '2026-06-15', 1, 2, 'loan_release', NULL, 'out', 1, 5000.00, 'cash', 'DV-LN-2026-0002', 'Loan release — Salary Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(10, 'TX-260615-00010', '2026-06-15', 1, 2, 'service_fee', NULL, 'in', 1, 75.00, 'cash', 'DED-LN-2026-0002-SER', 'Service fee deducted from the proceeds of LN-2026-0002', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(11, 'TX-260615-00011', '2026-06-15', 1, 2, 'insurance_payment', 'insurance', 'in', 1, 25.00, 'cash', 'DED-LN-2026-0002-INS', 'Loan insurance deducted from the proceeds of LN-2026-0002', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(12, 'TX-260615-00012', '2026-06-15', 1, 2, 'cbu_deposit', 'cbu', 'in', 1, 50.00, 'cash', 'DED-LN-2026-0002-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0002', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(13, 'TX-260715-00013', '2026-07-15', 1, 2, 'loan_payment', NULL, 'in', 1, 525.00, 'cash', 'OR-00013', NULL, 500.00, 25.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(14, 'TX-260815-00014', '2026-08-15', 1, 2, 'loan_payment', NULL, 'in', 1, 525.00, 'check', 'CHK-LN-2026-0002-2', NULL, 500.00, 25.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(15, 'TX-260915-00015', '2026-09-15', 1, 2, 'loan_payment', NULL, 'in', 1, 525.00, 'cash', 'OR-00015', NULL, 500.00, 25.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(16, 'TX-260801-00016', '2026-08-01', 1, 3, 'loan_release', NULL, 'out', 1, 3000.00, 'check', 'DV-LN-2026-0003', 'Loan release — Emergency Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(17, 'TX-260801-00017', '2026-08-01', 1, 3, 'service_fee', NULL, 'in', 1, 30.00, 'check', 'DED-LN-2026-0003-SER', 'Service fee deducted from the proceeds of LN-2026-0003', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(18, 'TX-260901-00018', '2026-09-01', 1, 3, 'loan_payment', NULL, 'in', 1, 525.00, 'cash', 'OR-00018', NULL, 500.00, 25.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(19, 'TX-261001-00019', '2026-10-01', 1, 3, 'loan_payment', NULL, 'in', 1, 525.00, 'check', 'CHK-LN-2026-0003-2', NULL, 500.00, 25.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(20, 'TX-260510-00020', '2026-05-10', 2, NULL, 'savings_deposit', 'savings', 'in', 1, 1110.00, 'cash', 'OR-00020', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(21, 'TX-260510-00021', '2026-05-10', 2, NULL, 'cbu_deposit', 'cbu', 'in', 1, 1620.00, 'cash', 'OR-00021', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(22, 'TX-260907-00022', '2026-09-07', 2, NULL, 'insurance_payment', 'insurance', 'in', 1, 350.00, 'check', 'CHK-INS-CL-0232', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(23, 'TX-260327-00023', '2026-03-27', 2, 4, 'loan_release', NULL, 'out', 1, 30000.00, 'cash', 'DV-LN-2026-0004', 'Loan release — Financial Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(24, 'TX-260327-00024', '2026-03-27', 2, 4, 'service_fee', NULL, 'in', 1, 600.00, 'cash', 'DED-LN-2026-0004-SER', 'Service fee deducted from the proceeds of LN-2026-0004', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(25, 'TX-260327-00025', '2026-03-27', 2, 4, 'insurance_payment', 'insurance', 'in', 1, 300.00, 'cash', 'DED-LN-2026-0004-INS', 'Loan insurance deducted from the proceeds of LN-2026-0004', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(26, 'TX-260327-00026', '2026-03-27', 2, 4, 'cbu_deposit', 'cbu', 'in', 1, 600.00, 'cash', 'DED-LN-2026-0004-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0004', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(27, 'TX-260427-00027', '2026-04-27', 2, 4, 'loan_payment', NULL, 'in', 1, 2625.00, 'check', 'CHK-LN-2026-0004-1', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(28, 'TX-260527-00028', '2026-05-27', 2, 4, 'loan_payment', NULL, 'in', 1, 2625.00, 'cash', 'OR-00028', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(29, 'TX-260627-00029', '2026-06-27', 2, 4, 'loan_payment', NULL, 'in', 1, 2625.00, 'cash', 'OR-00029', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(30, 'TX-260727-00030', '2026-07-27', 2, 4, 'loan_payment', NULL, 'in', 1, 2625.00, 'check', 'CHK-LN-2026-0004-4', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(31, 'TX-260505-00031', '2026-05-05', 3, NULL, 'savings_deposit', 'savings', 'in', 1, 1420.00, 'cash', 'OR-00031', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(32, 'TX-260505-00032', '2026-05-05', 3, NULL, 'cbu_deposit', 'cbu', 'in', 1, 1740.00, 'cash', 'OR-00032', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(33, 'TX-251222-00033', '2025-12-22', 3, 5, 'loan_release', NULL, 'out', 1, 80000.00, 'check', 'DV-LN-2026-0005', 'Loan release — Vehicle Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(34, 'TX-251222-00034', '2025-12-22', 3, 5, 'service_fee', NULL, 'in', 1, 1600.00, 'check', 'DED-LN-2026-0005-SER', 'Service fee deducted from the proceeds of LN-2026-0005', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(35, 'TX-251222-00035', '2025-12-22', 3, 5, 'insurance_payment', 'insurance', 'in', 1, 1200.00, 'check', 'DED-LN-2026-0005-INS', 'Loan insurance deducted from the proceeds of LN-2026-0005', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(36, 'TX-251222-00036', '2025-12-22', 3, 5, 'cbu_deposit', 'cbu', 'in', 1, 1600.00, 'check', 'DED-LN-2026-0005-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0005', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(37, 'TX-260122-00037', '2026-01-22', 3, 5, 'loan_payment', NULL, 'in', 1, 3500.00, 'cash', 'OR-00037', NULL, 3333.33, 166.67, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(38, 'TX-260222-00038', '2026-02-22', 3, 5, 'loan_payment', NULL, 'in', 1, 3500.00, 'cash', 'OR-00038', NULL, 3333.33, 166.67, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(39, 'TX-260322-00039', '2026-03-22', 3, 5, 'loan_payment', NULL, 'in', 1, 3500.00, 'check', 'CHK-LN-2026-0005-3', NULL, 3333.33, 166.67, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(40, 'TX-260422-00040', '2026-04-22', 3, 5, 'loan_payment', NULL, 'in', 1, 3500.00, 'cash', 'OR-00040', NULL, 3333.33, 166.67, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(41, 'TX-260522-00041', '2026-05-22', 3, 5, 'loan_payment', NULL, 'in', 1, 3500.00, 'cash', 'OR-00041', NULL, 3333.33, 166.67, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(42, 'TX-260622-00042', '2026-06-22', 3, 5, 'loan_payment', NULL, 'in', 1, 3500.00, 'check', 'CHK-LN-2026-0005-6', NULL, 3333.33, 166.67, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(43, 'TX-260430-00043', '2026-04-30', 4, NULL, 'savings_deposit', 'savings', 'in', 1, 1730.00, 'cash', 'OR-00043', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(44, 'TX-260430-00044', '2026-04-30', 4, NULL, 'cbu_deposit', 'cbu', 'in', 1, 1860.00, 'cash', 'OR-00044', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(45, 'TX-260902-00045', '2026-09-02', 4, NULL, 'mortuary_payment', 'mortuary', 'in', 1, 120.00, 'cash', 'OR-00045', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(46, 'TX-260620-00046', '2026-06-20', 4, 6, 'loan_release', NULL, 'out', 1, 12000.00, 'cash', 'DV-LN-2026-0006', 'Loan release — Lending', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(47, 'TX-260620-00047', '2026-06-20', 4, 6, 'service_fee', NULL, 'in', 1, 240.00, 'cash', 'DED-LN-2026-0006-SER', 'Service fee deducted from the proceeds of LN-2026-0006', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(48, 'TX-260620-00048', '2026-06-20', 4, 6, 'insurance_payment', 'insurance', 'in', 1, 60.00, 'cash', 'DED-LN-2026-0006-INS', 'Loan insurance deducted from the proceeds of LN-2026-0006', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(49, 'TX-260620-00049', '2026-06-20', 4, 6, 'cbu_deposit', 'cbu', 'in', 1, 120.00, 'cash', 'DED-LN-2026-0006-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0006', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(50, 'TX-260720-00050', '2026-07-20', 4, 6, 'loan_payment', NULL, 'in', 1, 1260.00, 'cash', 'OR-00050', NULL, 1200.00, 60.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(51, 'TX-260820-00051', '2026-08-20', 4, 6, 'loan_payment', NULL, 'in', 1, 1260.00, 'check', 'CHK-LN-2026-0006-2', NULL, 1200.00, 60.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(52, 'TX-260425-00052', '2026-04-25', 5, NULL, 'savings_deposit', 'savings', 'in', 1, 2040.00, 'cash', 'OR-00052', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(53, 'TX-260425-00053', '2026-04-25', 5, NULL, 'cbu_deposit', 'cbu', 'in', 1, 1980.00, 'cash', 'OR-00053', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(54, 'TX-260804-00054', '2026-08-04', 5, 7, 'loan_release', NULL, 'out', 1, 8000.00, 'check', 'DV-LN-2026-0007', 'Loan release — Salary Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(55, 'TX-260804-00055', '2026-08-04', 5, 7, 'service_fee', NULL, 'in', 1, 120.00, 'check', 'DED-LN-2026-0007-SER', 'Service fee deducted from the proceeds of LN-2026-0007', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(56, 'TX-260804-00056', '2026-08-04', 5, 7, 'insurance_payment', 'insurance', 'in', 1, 40.00, 'check', 'DED-LN-2026-0007-INS', 'Loan insurance deducted from the proceeds of LN-2026-0007', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(57, 'TX-260804-00057', '2026-08-04', 5, 7, 'cbu_deposit', 'cbu', 'in', 1, 80.00, 'check', 'DED-LN-2026-0007-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0007', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(58, 'TX-260904-00058', '2026-09-04', 5, 7, 'loan_payment', NULL, 'in', 1, 1050.00, 'check', 'CHK-LN-2026-0007-1', NULL, 1000.00, 50.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(59, 'TX-260420-00059', '2026-04-20', 6, NULL, 'savings_deposit', 'savings', 'in', 1, 2350.00, 'cash', 'OR-00059', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(60, 'TX-260420-00060', '2026-04-20', 6, NULL, 'cbu_deposit', 'cbu', 'in', 1, 2100.00, 'cash', 'OR-00060', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(61, 'TX-260907-00061', '2026-09-07', 6, NULL, 'insurance_payment', 'insurance', 'in', 1, 350.00, 'check', 'CHK-INS-CL-0236', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(62, 'TX-260412-00062', '2026-04-12', 6, 8, 'loan_release', NULL, 'out', 1, 25000.00, 'cash', 'DV-LN-2026-0008', 'Loan release — Financial Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(63, 'TX-260412-00063', '2026-04-12', 6, 8, 'service_fee', NULL, 'in', 1, 500.00, 'cash', 'DED-LN-2026-0008-SER', 'Service fee deducted from the proceeds of LN-2026-0008', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(64, 'TX-260412-00064', '2026-04-12', 6, 8, 'insurance_payment', 'insurance', 'in', 1, 250.00, 'cash', 'DED-LN-2026-0008-INS', 'Loan insurance deducted from the proceeds of LN-2026-0008', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(65, 'TX-260412-00065', '2026-04-12', 6, 8, 'cbu_deposit', 'cbu', 'in', 1, 500.00, 'cash', 'DED-LN-2026-0008-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0008', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(66, 'TX-260512-00066', '2026-05-12', 6, 8, 'loan_payment', NULL, 'in', 1, 2187.50, 'cash', 'OR-00066', NULL, 2083.33, 104.17, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(67, 'TX-260612-00067', '2026-06-12', 6, 8, 'loan_payment', NULL, 'in', 1, 2187.50, 'cash', 'OR-00067', NULL, 2083.33, 104.17, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(68, 'TX-260712-00068', '2026-07-12', 6, 8, 'loan_payment', NULL, 'in', 1, 2187.50, 'check', 'CHK-LN-2026-0008-3', NULL, 2083.33, 104.17, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(69, 'TX-260812-00069', '2026-08-12', 6, 8, 'loan_payment', NULL, 'in', 1, 2187.50, 'cash', 'OR-00069', NULL, 2083.33, 104.17, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(70, 'TX-260912-00070', '2026-09-12', 6, 8, 'loan_payment', NULL, 'in', 1, 2187.50, 'cash', 'OR-00070', NULL, 2083.33, 104.17, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(71, 'TX-260415-00071', '2026-04-15', 7, NULL, 'savings_deposit', 'savings', 'in', 1, 2660.00, 'cash', 'OR-00071', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(72, 'TX-260415-00072', '2026-04-15', 7, NULL, 'cbu_deposit', 'cbu', 'in', 1, 2220.00, 'cash', 'OR-00072', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(73, 'TX-260902-00073', '2026-09-02', 7, NULL, 'mortuary_payment', 'mortuary', 'in', 1, 120.00, 'cash', 'OR-00073', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(74, 'TX-260607-00074', '2026-06-07', 7, 9, 'loan_release', NULL, 'out', 1, 40000.00, 'check', 'DV-LN-2026-0009', 'Loan release — Palay Production Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(75, 'TX-260607-00075', '2026-06-07', 7, 9, 'service_fee', NULL, 'in', 1, 800.00, 'check', 'DED-LN-2026-0009-SER', 'Service fee deducted from the proceeds of LN-2026-0009', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(76, 'TX-260607-00076', '2026-06-07', 7, 9, 'insurance_payment', 'insurance', 'in', 1, 400.00, 'check', 'DED-LN-2026-0009-INS', 'Loan insurance deducted from the proceeds of LN-2026-0009', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(77, 'TX-260607-00077', '2026-06-07', 7, 9, 'cbu_deposit', 'cbu', 'in', 1, 800.00, 'check', 'DED-LN-2026-0009-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0009', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(78, 'TX-260707-00078', '2026-07-07', 7, 9, 'loan_payment', NULL, 'in', 1, 4200.00, 'cash', 'OR-00078', NULL, 4000.00, 200.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(79, 'TX-260807-00079', '2026-08-07', 7, 9, 'loan_payment', NULL, 'in', 1, 4200.00, 'check', 'CHK-LN-2026-0009-2', NULL, 4000.00, 200.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(80, 'TX-260907-00080', '2026-09-07', 7, 9, 'loan_payment', NULL, 'in', 1, 4200.00, 'cash', 'OR-00080', NULL, 4000.00, 200.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:04'),
(81, 'TX-260410-00081', '2026-04-10', 8, NULL, 'savings_deposit', 'savings', 'in', 1, 2970.00, 'cash', 'OR-00081', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(82, 'TX-260410-00082', '2026-04-10', 8, NULL, 'cbu_deposit', 'cbu', 'in', 1, 2340.00, 'cash', 'OR-00082', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:04'),
(83, 'TX-260201-00083', '2026-02-01', 8, 10, 'loan_release', NULL, 'out', 1, 60000.00, 'cash', 'DV-LN-2026-0010', 'Loan release — Vehicle Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(84, 'TX-260201-00084', '2026-02-01', 8, 10, 'service_fee', NULL, 'in', 1, 1200.00, 'cash', 'DED-LN-2026-0010-SER', 'Service fee deducted from the proceeds of LN-2026-0010', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:04'),
(85, 'TX-260201-00085', '2026-02-01', 8, 10, 'insurance_payment', 'insurance', 'in', 1, 900.00, 'cash', 'DED-LN-2026-0010-INS', 'Loan insurance deducted from the proceeds of LN-2026-0010', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(86, 'TX-260201-00086', '2026-02-01', 8, 10, 'cbu_deposit', 'cbu', 'in', 1, 1200.00, 'cash', 'DED-LN-2026-0010-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0010', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(87, 'TX-260301-00087', '2026-03-01', 8, 10, 'loan_payment', NULL, 'in', 1, 2625.00, 'check', 'CHK-LN-2026-0010-1', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(88, 'TX-260401-00088', '2026-04-01', 8, 10, 'loan_payment', NULL, 'in', 1, 2625.00, 'cash', 'OR-00088', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(89, 'TX-260501-00089', '2026-05-01', 8, 10, 'loan_payment', NULL, 'in', 1, 2625.00, 'cash', 'OR-00089', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(90, 'TX-260601-00090', '2026-06-01', 8, 10, 'loan_payment', NULL, 'in', 1, 2625.00, 'check', 'CHK-LN-2026-0010-4', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(91, 'TX-260701-00091', '2026-07-01', 8, 10, 'loan_payment', NULL, 'in', 1, 2625.00, 'cash', 'OR-00091', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(92, 'TX-260801-00092', '2026-08-01', 8, 10, 'loan_payment', NULL, 'in', 1, 2625.00, 'cash', 'OR-00092', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(93, 'TX-260901-00093', '2026-09-01', 8, 10, 'loan_payment', NULL, 'in', 1, 2625.00, 'check', 'CHK-LN-2026-0010-7', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(94, 'TX-261001-00094', '2026-10-01', 8, 10, 'loan_payment', NULL, 'in', 1, 2625.00, 'cash', 'OR-00094', NULL, 2500.00, 125.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(95, 'TX-260405-00095', '2026-04-05', 9, NULL, 'savings_deposit', 'savings', 'in', 1, 3280.00, 'cash', 'OR-00095', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(96, 'TX-260405-00096', '2026-04-05', 9, NULL, 'cbu_deposit', 'cbu', 'in', 1, 2460.00, 'cash', 'OR-00096', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(97, 'TX-260502-00097', '2026-05-02', 9, 11, 'loan_release', NULL, 'out', 1, 10000.00, 'check', 'DV-LN-2026-0011', 'Loan release — Lending', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(98, 'TX-260502-00098', '2026-05-02', 9, 11, 'service_fee', NULL, 'in', 1, 200.00, 'check', 'DED-LN-2026-0011-SER', 'Service fee deducted from the proceeds of LN-2026-0011', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(99, 'TX-260502-00099', '2026-05-02', 9, 11, 'insurance_payment', 'insurance', 'in', 1, 50.00, 'check', 'DED-LN-2026-0011-INS', 'Loan insurance deducted from the proceeds of LN-2026-0011', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(100, 'TX-260502-00100', '2026-05-02', 9, 11, 'cbu_deposit', 'cbu', 'in', 1, 100.00, 'check', 'DED-LN-2026-0011-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0011', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(101, 'TX-260602-00101', '2026-06-02', 9, 11, 'loan_payment', NULL, 'in', 1, 1050.00, 'cash', 'OR-00101', NULL, 1000.00, 50.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(102, 'TX-260702-00102', '2026-07-02', 9, 11, 'loan_payment', NULL, 'in', 1, 1050.00, 'cash', 'OR-00102', NULL, 1000.00, 50.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(103, 'TX-260802-00103', '2026-08-02', 9, 11, 'loan_payment', NULL, 'in', 1, 1050.00, 'check', 'CHK-LN-2026-0011-3', NULL, 1000.00, 50.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(104, 'TX-260902-00104', '2026-09-02', 9, 11, 'loan_payment', NULL, 'in', 1, 1050.00, 'cash', 'OR-00104', NULL, 1000.00, 50.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(105, 'TX-260331-00105', '2026-03-31', 10, NULL, 'savings_deposit', 'savings', 'in', 1, 3590.00, 'cash', 'OR-00105', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(106, 'TX-260331-00106', '2026-03-31', 10, NULL, 'cbu_deposit', 'cbu', 'in', 1, 2580.00, 'cash', 'OR-00106', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(107, 'TX-260902-00107', '2026-09-02', 10, NULL, 'mortuary_payment', 'mortuary', 'in', 1, 120.00, 'cash', 'OR-00107', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(108, 'TX-260907-00108', '2026-09-07', 10, NULL, 'insurance_payment', 'insurance', 'in', 1, 350.00, 'check', 'CHK-INS-CL-0240', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(109, 'TX-260727-00109', '2026-07-27', 10, 12, 'loan_release', NULL, 'out', 1, 12000.00, 'cash', 'DV-LN-2026-0012', 'Loan release — Salary Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(110, 'TX-260727-00110', '2026-07-27', 10, 12, 'service_fee', NULL, 'in', 1, 180.00, 'cash', 'DED-LN-2026-0012-SER', 'Service fee deducted from the proceeds of LN-2026-0012', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(111, 'TX-260727-00111', '2026-07-27', 10, 12, 'insurance_payment', 'insurance', 'in', 1, 60.00, 'cash', 'DED-LN-2026-0012-INS', 'Loan insurance deducted from the proceeds of LN-2026-0012', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(112, 'TX-260727-00112', '2026-07-27', 10, 12, 'cbu_deposit', 'cbu', 'in', 1, 120.00, 'cash', 'DED-LN-2026-0012-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0012', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(113, 'TX-260827-00113', '2026-08-27', 10, 12, 'loan_payment', NULL, 'in', 1, 1050.00, 'cash', 'OR-00113', NULL, 1000.00, 50.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(114, 'TX-260927-00114', '2026-09-27', 10, 12, 'loan_payment', NULL, 'in', 1, 1050.00, 'check', 'CHK-LN-2026-0012-2', NULL, 1000.00, 50.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(115, 'TX-260326-00115', '2026-03-26', 11, NULL, 'savings_deposit', 'savings', 'in', 1, 3900.00, 'cash', 'OR-00115', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(116, 'TX-260326-00116', '2026-03-26', 11, NULL, 'cbu_deposit', 'cbu', 'in', 1, 2700.00, 'cash', 'OR-00116', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(117, 'TX-260822-00117', '2026-08-22', 11, 13, 'loan_release', NULL, 'out', 1, 4000.00, 'check', 'DV-LN-2026-0013', 'Loan release — Emergency Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(118, 'TX-260822-00118', '2026-08-22', 11, 13, 'service_fee', NULL, 'in', 1, 40.00, 'check', 'DED-LN-2026-0013-SER', 'Service fee deducted from the proceeds of LN-2026-0013', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(119, 'TX-260922-00119', '2026-09-22', 11, 13, 'loan_payment', NULL, 'in', 1, 1050.00, 'check', 'CHK-LN-2026-0013-1', NULL, 1000.00, 50.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(120, 'TX-260321-00120', '2026-03-21', 12, NULL, 'savings_deposit', 'savings', 'in', 1, 4210.00, 'cash', 'OR-00120', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(121, 'TX-260321-00121', '2026-03-21', 12, NULL, 'cbu_deposit', 'cbu', 'in', 1, 2820.00, 'cash', 'OR-00121', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(122, 'TX-260806-00122', '2026-08-06', 12, 14, 'loan_release', NULL, 'out', 1, 35000.00, 'cash', 'DV-LN-2026-0014', 'Loan release — Palay Production Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(123, 'TX-260806-00123', '2026-08-06', 12, 14, 'service_fee', NULL, 'in', 1, 700.00, 'cash', 'DED-LN-2026-0014-SER', 'Service fee deducted from the proceeds of LN-2026-0014', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(124, 'TX-260806-00124', '2026-08-06', 12, 14, 'insurance_payment', 'insurance', 'in', 1, 350.00, 'cash', 'DED-LN-2026-0014-INS', 'Loan insurance deducted from the proceeds of LN-2026-0014', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(125, 'TX-260806-00125', '2026-08-06', 12, 14, 'cbu_deposit', 'cbu', 'in', 1, 700.00, 'cash', 'DED-LN-2026-0014-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0014', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(126, 'TX-260906-00126', '2026-09-06', 12, 14, 'loan_payment', NULL, 'in', 1, 4593.75, 'cash', 'OR-00126', NULL, 4375.00, 218.75, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(127, 'TX-261006-00127', '2026-10-06', 12, 14, 'loan_payment', NULL, 'in', 1, 4593.75, 'cash', 'OR-00127', NULL, 4375.00, 218.75, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(128, 'TX-260316-00128', '2026-03-16', 13, NULL, 'savings_deposit', 'savings', 'in', 1, 4520.00, 'cash', 'OR-00128', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(129, 'TX-260316-00129', '2026-03-16', 13, NULL, 'cbu_deposit', 'cbu', 'in', 1, 2940.00, 'cash', 'OR-00129', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(130, 'TX-260902-00130', '2026-09-02', 13, NULL, 'mortuary_payment', 'mortuary', 'in', 1, 120.00, 'cash', 'OR-00130', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(131, 'TX-260317-00131', '2026-03-17', 13, 15, 'loan_release', NULL, 'out', 1, 20000.00, 'check', 'DV-LN-2026-0015', 'Loan release — Financial Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(132, 'TX-260317-00132', '2026-03-17', 13, 15, 'service_fee', NULL, 'in', 1, 400.00, 'check', 'DED-LN-2026-0015-SER', 'Service fee deducted from the proceeds of LN-2026-0015', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(133, 'TX-260317-00133', '2026-03-17', 13, 15, 'insurance_payment', 'insurance', 'in', 1, 200.00, 'check', 'DED-LN-2026-0015-INS', 'Loan insurance deducted from the proceeds of LN-2026-0015', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(134, 'TX-260317-00134', '2026-03-17', 13, 15, 'cbu_deposit', 'cbu', 'in', 1, 400.00, 'check', 'DED-LN-2026-0015-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0015', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(135, 'TX-260417-00135', '2026-04-17', 13, 15, 'loan_payment', NULL, 'in', 1, 1750.00, 'cash', 'OR-00135', NULL, 1666.67, 83.33, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(136, 'TX-260517-00136', '2026-05-17', 13, 15, 'loan_payment', NULL, 'in', 1, 1750.00, 'check', 'CHK-LN-2026-0015-2', NULL, 1666.67, 83.33, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(137, 'TX-260617-00137', '2026-06-17', 13, 15, 'loan_payment', NULL, 'in', 1, 1750.00, 'cash', 'OR-00137', NULL, 1666.67, 83.33, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(138, 'TX-260717-00138', '2026-07-17', 13, 15, 'loan_payment', NULL, 'in', 1, 1750.00, 'cash', 'OR-00138', NULL, 1666.67, 83.33, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(139, 'TX-260817-00139', '2026-08-17', 13, 15, 'loan_payment', NULL, 'in', 1, 1750.00, 'check', 'CHK-LN-2026-0015-5', NULL, 1666.67, 83.33, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(140, 'TX-260917-00140', '2026-09-17', 13, 15, 'loan_payment', NULL, 'in', 1, 1750.00, 'cash', 'OR-00140', NULL, 1666.67, 83.33, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(141, 'TX-260311-00141', '2026-03-11', 14, NULL, 'savings_deposit', 'savings', 'in', 1, 4830.00, 'cash', 'OR-00141', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(142, 'TX-260311-00142', '2026-03-11', 14, NULL, 'cbu_deposit', 'cbu', 'in', 1, 3060.00, 'cash', 'OR-00142', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(143, 'TX-260907-00143', '2026-09-07', 14, NULL, 'insurance_payment', 'insurance', 'in', 1, 350.00, 'check', 'CHK-INS-CL-0244', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(144, 'TX-260630-00144', '2026-06-30', 14, 16, 'loan_release', NULL, 'out', 1, 9000.00, 'cash', 'DV-LN-2026-0016', 'Loan release — Lending', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(145, 'TX-260630-00145', '2026-06-30', 14, 16, 'service_fee', NULL, 'in', 1, 180.00, 'cash', 'DED-LN-2026-0016-SER', 'Service fee deducted from the proceeds of LN-2026-0016', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(146, 'TX-260630-00146', '2026-06-30', 14, 16, 'insurance_payment', 'insurance', 'in', 1, 45.00, 'cash', 'DED-LN-2026-0016-INS', 'Loan insurance deducted from the proceeds of LN-2026-0016', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(147, 'TX-260630-00147', '2026-06-30', 14, 16, 'cbu_deposit', 'cbu', 'in', 1, 90.00, 'cash', 'DED-LN-2026-0016-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0016', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(148, 'TX-260730-00148', '2026-07-30', 14, 16, 'loan_payment', NULL, 'in', 1, 1575.00, 'check', 'CHK-LN-2026-0016-1', NULL, 1500.00, 75.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(149, 'TX-260830-00149', '2026-08-30', 14, 16, 'loan_payment', NULL, 'in', 1, 1575.00, 'cash', 'OR-00149', NULL, 1500.00, 75.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(150, 'TX-260930-00150', '2026-09-30', 14, 16, 'loan_payment', NULL, 'in', 1, 1575.00, 'cash', 'OR-00150', NULL, 1500.00, 75.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(151, 'TX-260306-00151', '2026-03-06', 15, NULL, 'savings_deposit', 'savings', 'in', 1, 5140.00, 'cash', 'OR-00151', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(152, 'TX-260306-00152', '2026-03-06', 15, NULL, 'cbu_deposit', 'cbu', 'in', 1, 3180.00, 'cash', 'OR-00152', 'Opening balance', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(153, 'TX-251121-00153', '2025-11-21', 15, 17, 'loan_release', NULL, 'out', 1, 55000.00, 'check', 'DV-LN-2026-0017', 'Loan release — Vehicle Loan', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(154, 'TX-251121-00154', '2025-11-21', 15, 17, 'service_fee', NULL, 'in', 1, 1100.00, 'check', 'DED-LN-2026-0017-SER', 'Service fee deducted from the proceeds of LN-2026-0017', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(155, 'TX-251121-00155', '2025-11-21', 15, 17, 'insurance_payment', 'insurance', 'in', 1, 825.00, 'check', 'DED-LN-2026-0017-INS', 'Loan insurance deducted from the proceeds of LN-2026-0017', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(156, 'TX-251121-00156', '2025-11-21', 15, 17, 'cbu_deposit', 'cbu', 'in', 1, 1100.00, 'check', 'DED-LN-2026-0017-CBU', 'Capital Build Up retention deducted from the proceeds of LN-2026-0017', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Linne J. Villanueva', '2026-10-12 09:04:05'),
(157, 'TX-251221-00157', '2025-12-21', 15, 17, 'loan_payment', NULL, 'in', 1, 2406.25, 'cash', 'OR-00157', NULL, 2291.67, 114.58, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(158, 'TX-260121-00158', '2026-01-21', 15, 17, 'loan_payment', NULL, 'in', 1, 2406.25, 'cash', 'OR-00158', NULL, 2291.67, 114.58, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(159, 'TX-260221-00159', '2026-02-21', 15, 17, 'loan_payment', NULL, 'in', 1, 2406.25, 'check', 'CHK-LN-2026-0017-3', NULL, 2291.67, 114.58, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(160, 'TX-260321-00160', '2026-03-21', 15, 17, 'loan_payment', NULL, 'in', 1, 2406.25, 'cash', 'OR-00160', NULL, 2291.67, 114.58, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(161, 'TX-260421-00161', '2026-04-21', 15, 17, 'loan_payment', NULL, 'in', 1, 2406.25, 'cash', 'OR-00161', NULL, 2291.67, 114.58, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(162, 'TX-260521-00162', '2026-05-21', 15, 17, 'loan_payment', NULL, 'in', 1, 2406.25, 'check', 'CHK-LN-2026-0017-6', NULL, 2291.67, 114.58, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(163, 'TX-260621-00163', '2026-06-21', 15, 17, 'loan_payment', NULL, 'in', 1, 2406.25, 'cash', 'OR-00163', NULL, 2291.67, 114.58, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(164, 'TX-260721-00164', '2026-07-21', 15, 17, 'loan_payment', NULL, 'in', 1, 2406.25, 'cash', 'OR-00164', NULL, 2291.67, 114.58, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(165, 'TX-260821-00165', '2026-08-21', 15, 17, 'loan_payment', NULL, 'in', 1, 2406.25, 'check', 'CHK-LN-2026-0017-9', NULL, 2291.67, 114.58, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(166, 'TX-260921-00166', '2026-09-21', 15, 17, 'loan_payment', NULL, 'in', 1, 2406.25, 'cash', 'OR-00166', NULL, 2291.67, 114.58, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(167, 'TX-260930-00167', '2026-09-30', 13, NULL, 'savings_withdrawal', 'savings', 'out', 1, 500.00, 'check', 'CHK-WD-0243', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(168, 'TX-260922-00168', '2026-09-22', 15, NULL, 'service_fee', NULL, 'in', 1, 250.00, 'cash', 'OR-00168', 'Membership fee', 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-12 09:04:05'),
(169, 'TX-261012-00169', '2026-10-12', 10, NULL, 'savings_deposit', 'savings', 'in', 1, 1000.00, 'cash', 'OR-00169', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(170, 'TX-261012-00170', '2026-10-12', 12, NULL, 'cbu_deposit', 'cbu', 'in', 1, 500.00, 'cash', 'OR-00170', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(171, 'TX-261012-00171', '2026-10-12', 14, NULL, 'savings_deposit', 'savings', 'in', 1, 750.00, 'check', 'CHK-TODAY-1', NULL, 0.00, 0.00, 0.00, 'posted', 0, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(172, 'TX-261012-00172', '2026-10-12', 11, NULL, 'savings_deposit', 'savings', 'in', 1, 300.00, 'cash', 'OR-00172', 'Entered twice by mistake', 0.00, 0.00, 0.00, 'posted', 1, NULL, NULL, NULL, 'Maria Santos (Employee)', '2026-10-12 09:04:05'),
(173, 'TX-261024-00173', '2026-10-24', 1, 1, 'loan_payment', NULL, 'in', 1, 10000.00, 'cash', '0231', 'paid', 9486.30, 474.32, 39.38, 'posted', 1, NULL, NULL, NULL, 'Irisa May Abenes', '2026-10-24 10:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `role` enum('admin','manager','employee') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'employee',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `must_change_password` tinyint(1) NOT NULL DEFAULT '1',
  `failed_attempts` int UNSIGNED NOT NULL DEFAULT '0',
  `locked_until` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hash`, `full_name`, `role`, `is_active`, `must_change_password`, `failed_attempts`, `locked_until`, `last_login`, `created_at`) VALUES
(1, 'admin', '$2y$10$Y8qNpocl.684UPCrlOukuOcdGfwL2q6bHCmmtHOzhJm7IXv39SzWi', 'System Administrator', 'admin', 1, 1, 0, NULL, NULL, '2026-10-12 09:04:04'),
(2, 'irisa', '$2y$10$Sxy9GxcEuSYMzKyfwXTOZ.TxE8NFj4cc5rOzswXRjMtzpIts4v9Eu', 'Irisa May Abenes', 'manager', 1, 0, 0, NULL, '2026-11-02 11:01:19', '2026-10-12 09:04:04'),
(3, 'linne', '$2y$10$Y8qNpocl.684UPCrlOukuOcdGfwL2q6bHCmmtHOzhJm7IXv39SzWi', 'Linne J. Villanueva', 'manager', 1, 1, 0, NULL, NULL, '2026-10-12 09:04:04'),
(4, 'maria', '$2y$10$Y8qNpocl.684UPCrlOukuOcdGfwL2q6bHCmmtHOzhJm7IXv39SzWi', 'Maria Santos (Employee)', 'employee', 1, 1, 0, NULL, NULL, '2026-10-12 09:04:04'),
(5, 'wailhi', '$2y$10$fV94H5v9KaXeFQTf2I5vleUvKZzeScDPM.yph5ii22PhhyuEe5Ife', 'Ashreiel C. Azucena', 'admin', 1, 1, 0, NULL, '2026-10-24 11:35:29', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approvals`
--
ALTER TABLE `approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`),
  ADD KEY `entity_type` (`entity_type`),
  ADD KEY `entity_id` (`entity_id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `bank_entries`
--
ALTER TABLE `bank_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_date` (`entry_date`);

--
-- Indexes for table `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `month_category` (`month`,`category`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acct_no` (`acct_no`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `client_users`
--
ALTER TABLE `client_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_id` (`client_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `loan_id` (`loan_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `approval_id` (`approval_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_date` (`expense_date`),
  ADD KEY `payment_status` (`payment_status`);

--
-- Indexes for table `ledger_accounts`
--
ALTER TABLE `ledger_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_no` (`account_no`),
  ADD UNIQUE KEY `client_id_ledger_type` (`client_id`,`ledger_type`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loan_no` (`loan_no`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `approval_status` (`approval_status`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loan_id_kind_installment_due` (`loan_id`,`kind`,`installment_due`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `online_payments`
--
ALTER TABLE `online_payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_ref` (`pay_ref`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `penalties`
--
ALTER TABLE `penalties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `loan_id_due_date_month_no` (`loan_id`,`due_date`,`month_no`),
  ADD KEY `loan_id` (`loan_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `txn_no` (`txn_no`),
  ADD KEY `txn_date` (`txn_date`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `loan_id` (`loan_id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approvals`
--
ALTER TABLE `approvals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `bank_entries`
--
ALTER TABLE `bank_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `budgets`
--
ALTER TABLE `budgets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `client_users`
--
ALTER TABLE `client_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ledger_accounts`
--
ALTER TABLE `ledger_accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `online_payments`
--
ALTER TABLE `online_payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penalties`
--
ALTER TABLE `penalties`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

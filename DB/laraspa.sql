-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-08-24 08:08:43
-- サーバのバージョン： 10.4.13-MariaDB
-- PHP のバージョン: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `laraspa`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL COMMENT '連番ID',
  `class_name` varchar(80) CHARACTER SET utf8 DEFAULT '' COMMENT '授業名',
  `class_name_numeric` int(2) DEFAULT NULL COMMENT '授業名（番号）',
  `section` varchar(5) CHARACTER SET utf8 DEFAULT '' COMMENT '部分',
  `valid_flg` int(1) NOT NULL DEFAULT 0 COMMENT '有効ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '登録日時',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新日時'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `classes`
--

INSERT INTO `classes` (`id`, `class_name`, `class_name_numeric`, `section`, `valid_flg`, `created_at`, `updated_at`) VALUES
(6, 'First', 1, 'A', 0, '2020-08-20 22:30:43', '2020-08-20 22:30:43'),
(7, 'Second', 2, 'A', 0, '2020-08-20 22:31:00', '2020-08-20 22:31:00'),
(8, 'Third', 3, 'A', 0, '2020-08-20 22:31:31', '2020-08-20 22:31:31');

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$YLHV2Fioyx9SoXZSdl0HSuosauVYDia1GC8kRfko/z49USED6HhPe', '2020-08-18 07:36:16'),
('sabarisankaranarayanan@gmail.com', '$2y$10$/9DilMNThq6yNdvd0.LQRuKvJXIHTdDsfnOPReG2cZhyQJ.zK1TyW', '2020-08-22 00:11:26');

-- --------------------------------------------------------

--
-- テーブルの構造 `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT 0,
  `valid_flg` int(1) NOT NULL DEFAULT 0,
  `created_by` varchar(100) DEFAULT '',
  `updated_by` varchar(100) DEFAULT '',
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `result`
--

INSERT INTO `result` (`id`, `student_id`, `class_id`, `subject_id`, `marks`, `valid_flg`, `created_by`, `updated_by`, `updated_at`, `created_at`) VALUES
(1, 1, 6, 19, 50, 0, 'admin', 'admin', '2020-08-21 07:30:26', '2020-08-21 07:30:26'),
(2, 1, 6, 20, 50, 0, 'admin', 'admin', '2020-08-21 07:30:26', '2020-08-21 07:30:26'),
(3, 1, 6, 21, 40, 0, 'admin', 'admin', '2020-08-21 07:30:26', '2020-08-21 07:30:26'),
(4, 2, 6, 19, 100, 0, 'admin', 'admin', '2020-08-21 07:32:20', '2020-08-21 07:32:20'),
(5, 2, 6, 20, 90, 0, 'admin', 'admin', '2020-08-21 07:32:20', '2020-08-21 07:32:20'),
(6, 2, 6, 21, 90, 0, 'admin', 'admin', '2020-08-21 07:32:20', '2020-08-21 07:32:20'),
(7, 3, 6, 19, 71, 0, 'admin', 'admin', '2020-08-21 07:33:02', '2020-08-21 07:33:02'),
(8, 3, 6, 20, 76, 0, 'admin', 'admin', '2020-08-21 07:33:02', '2020-08-21 07:33:02'),
(9, 3, 6, 21, 77, 0, 'admin', 'admin', '2020-08-21 07:33:02', '2020-08-21 07:33:02'),
(10, 4, 7, 19, 80, 0, 'admin', 'admin', '2020-08-21 08:20:25', '2020-08-21 08:20:25'),
(11, 4, 7, 20, 90, 0, 'admin', 'admin', '2020-08-21 08:20:26', '2020-08-21 08:20:26'),
(12, 4, 7, 21, 98, 0, 'admin', 'admin', '2020-08-21 08:20:26', '2020-08-21 08:20:26'),
(13, 4, 7, 22, 94, 0, 'admin', 'admin', '2020-08-21 08:20:26', '2020-08-21 08:20:26'),
(14, 4, 7, 19, 100, 0, 'admin', 'admin', '2020-08-21 10:54:51', '2020-08-21 10:54:51'),
(15, 4, 7, 20, 90, 0, 'admin', 'admin', '2020-08-21 10:54:51', '2020-08-21 10:54:51'),
(16, 4, 7, 21, 90, 0, 'admin', 'admin', '2020-08-21 10:54:51', '2020-08-21 10:54:51'),
(17, 4, 7, 22, 95, 0, 'admin', 'admin', '2020-08-21 10:54:51', '2020-08-21 10:54:51'),
(18, 5, 6, 19, 39, 0, 'adminSabari', 'adminSabari', '2020-08-22 05:52:52', '2020-08-22 05:52:52'),
(19, 5, 6, 20, 20, 0, 'adminSabari', 'adminSabari', '2020-08-22 05:52:52', '2020-08-22 05:52:52'),
(20, 5, 6, 21, 50, 0, 'adminSabari', 'adminSabari', '2020-08-22 05:52:52', '2020-08-22 05:52:52');

-- --------------------------------------------------------

--
-- テーブルの構造 `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) DEFAULT '',
  `roll_no` varchar(10) DEFAULT '',
  `student_email` varchar(100) DEFAULT '',
  `gender` int(1) DEFAULT NULL,
  `class_id` int(10) DEFAULT NULL,
  `dob` varchar(100) DEFAULT '',
  `valid_flg` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `roll_no`, `student_email`, `gender`, `class_id`, `dob`, `valid_flg`, `created_at`, `updated_at`) VALUES
(1, 'sabari nathan', '123', 'saba@gmail.com', 0, 6, '2020-07-27', 0, '2020-08-21 00:58:30', '2020-08-23 01:13:17'),
(2, 'prana', '002', 'sas@gmail.com', NULL, 6, NULL, 0, '2020-08-21 01:13:58', '2020-08-23 01:13:38'),
(3, 'nathan', '223', 'sas@gmail.com', 0, 6, NULL, 0, '2020-08-21 03:10:24', '2020-08-21 03:36:12'),
(4, 'sankara', '234', 'sabarisankaranarayanan@gmail.com', 0, 7, NULL, 0, '2020-08-21 03:10:53', '2020-08-21 03:10:53'),
(5, 'sankar', '900', 'sabariqw@gmail.com', 1, 6, NULL, 0, '2020-08-22 04:29:51', '2020-08-22 04:29:51'),
(6, 'yamada', '987', 'yamada@gmail.com', 0, 6, '2020-08-01', 0, '2020-08-23 02:33:18', '2020-08-23 02:33:18'),
(7, 'ゆき', '900', 'yukitest@gmail.com', 0, 6, '1992-12-13', 0, '2020-08-23 20:50:22', '2020-08-23 20:50:22');

-- --------------------------------------------------------

--
-- テーブルの構造 `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `subject_code` varchar(100) CHARACTER SET utf8 DEFAULT '',
  `valid_flg` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `subject_code`, `valid_flg`, `created_at`, `updated_at`) VALUES
(19, 'English', '001', 0, '2020-08-20 22:31:49', '2020-08-20 22:31:49'),
(20, 'Maths', '002', 0, '2020-08-20 22:32:02', '2020-08-20 22:32:02'),
(21, 'Science', '003', 0, '2020-08-20 22:32:14', '2020-08-20 22:32:14'),
(22, 'Social', '004', 0, '2020-08-20 22:32:27', '2020-08-20 22:32:27');

-- --------------------------------------------------------

--
-- テーブルの構造 `subject_class_relation`
--

CREATE TABLE `subject_class_relation` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `valid_flg` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `subject_class_relation`
--

INSERT INTO `subject_class_relation` (`id`, `class_id`, `subject_id`, `valid_flg`, `created_at`, `updated_at`) VALUES
(9, 6, 19, 1, '2020-08-20 22:32:44', '2020-08-22 06:08:56'),
(10, 6, 20, 0, '2020-08-20 22:33:04', '2020-08-20 22:33:04'),
(11, 6, 21, 0, '2020-08-20 22:33:19', '2020-08-20 22:33:19'),
(12, 7, 19, 0, '2020-08-20 22:33:33', '2020-08-20 22:33:33'),
(13, 7, 20, 0, '2020-08-20 22:33:43', '2020-08-20 22:33:43'),
(14, 7, 21, 0, '2020-08-20 22:33:56', '2020-08-20 22:33:56'),
(15, 7, 22, 0, '2020-08-20 22:34:07', '2020-08-20 22:34:07');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '連番',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ユーザー名',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'メールアドレス',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '生年月日',
  `gender` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `dob`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'sabari', 'sabari@gmail.com', NULL, '$2y$10$0RCFoTn1wNeMc9X4D68foeHl90iN2MyozpRvzhbPQDMmUsBytgAHW', NULL, NULL, NULL, '2020-08-07 04:37:07', '2020-08-07 04:37:07'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$fbdwBb/aIOZTfTLob244XOXw0gyQuBpX8gEIdQjtVthLmfVi0OZNW', '7QJxk04swyOWhoXVMNQRc4k6UDi6cCuPdlkxStmJfhqz4PjAo440UdBmbMFs', '2020-08-13', 0, '2020-08-07 06:27:53', '2020-08-22 06:28:19'),
(3, 'sabari', 'sabarisankaranarayanan@gmail.com', NULL, '$2y$10$QcZDbbyRAzAXGzWwVCjjIODvNyYATwHmC.cstRvx0pDFC.OFKZ9T2', NULL, NULL, NULL, '2020-08-18 07:37:33', '2020-08-18 07:37:33');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- テーブルのインデックス `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- テーブルのインデックス `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `subject_class_relation`
--
ALTER TABLE `subject_class_relation`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '連番ID', AUTO_INCREMENT=9;

--
-- テーブルのAUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- テーブルのAUTO_INCREMENT `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- テーブルのAUTO_INCREMENT `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- テーブルのAUTO_INCREMENT `subject_class_relation`
--
ALTER TABLE `subject_class_relation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- テーブルのAUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '連番', AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

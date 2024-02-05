-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2024 at 10:59 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librrry`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'adityasuryana', NULL, '2024-02-04 08:38:47', 0),
(2, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 08:38:55', 1),
(3, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:23:39', 1),
(4, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:25:31', 1),
(5, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:26:05', 1),
(6, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:27:11', 1),
(7, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:29:36', 1),
(8, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:34:24', 1),
(9, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:36:47', 1),
(10, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:39:10', 1),
(11, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:40:21', 1),
(12, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:40:53', 1),
(13, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:41:34', 1),
(14, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:45:25', 1),
(15, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:49:14', 1),
(16, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:49:47', 1),
(17, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 09:51:39', 1),
(18, '::1', 'admin@mail.com', NULL, '2024-02-04 10:12:48', 0),
(19, '::1', 'adityasuryana', NULL, '2024-02-04 10:12:55', 0),
(20, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 10:13:10', 1),
(21, '::1', 'admin@mail.com', NULL, '2024-02-04 10:14:10', 0),
(22, '::1', 'adityasuryana', NULL, '2024-02-04 10:14:14', 0),
(23, '::1', 'adityasuryana', NULL, '2024-02-04 10:14:19', 0),
(24, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 10:14:28', 1),
(25, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 10:37:40', 1),
(26, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 10:38:21', 1),
(27, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 10:38:33', 1),
(28, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 10:39:08', 1),
(29, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 11:16:18', 1),
(30, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-04 11:30:40', 1),
(31, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-05 08:07:47', 1),
(32, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-05 08:10:05', 1),
(33, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-05 08:25:19', 1),
(34, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-05 08:25:31', 1),
(35, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-05 08:25:46', 1),
(36, '::1', 'adityasuryanaa', NULL, '2024-02-05 08:27:23', 0),
(37, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-05 08:27:43', 1),
(38, '::1', 'adityasuryanaa', NULL, '2024-02-05 08:27:47', 0),
(39, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-05 08:30:06', 1),
(40, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-05 08:44:10', 1),
(41, '::1', 'adityasuryana12@gmail.com', 1, '2024-02-05 08:57:42', 1),
(42, '::1', 'aditya@gmail.com', 2, '2024-02-05 09:10:16', 1),
(43, '::1', 'aditya@gmail.com', 2, '2024-02-05 09:11:20', 1),
(44, '::1', 'aditya@gmail.com', 2, '2024-02-05 09:15:06', 1),
(45, '::1', 'aditya@gmail.com', 2, '2024-02-05 09:36:03', 1),
(46, '::1', 'aditya@gmail.com', 2, '2024-02-05 09:40:47', 1),
(47, '::1', 'aditya@gmail.com', 2, '2024-02-05 09:48:38', 1),
(48, '::1', 'aditya@gmail.com', 2, '2024-02-05 09:52:08', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1707035516, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'adityasuryana12@gmail.com', 'adityasuryana', '$2y$10$cHHVoCl3My7w/x9zghW/b.KTW./Isu/0aL8eNMq/9hKIdj48Eppgu', '742076897c2d774a25e5bf573a4bdc2c', NULL, '2024-02-04 09:59:00', NULL, NULL, NULL, 1, 0, '2024-02-04 08:38:42', '2024-02-04 08:59:00', NULL),
(2, 'aditya@gmail.com', 'asur', '$2y$10$i/NWs4qhNKscgajcWvQt3ugQKjde.s58.Tndeek9pbWtM.MG/rbHa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-02-05 09:10:10', '2024-02-05 09:10:10', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

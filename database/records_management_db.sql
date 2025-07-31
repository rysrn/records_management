-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2024 at 10:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;

--
-- Database: `records_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `offenders_list`
--

CREATE TABLE `offenders_list` (
    `id` int(30) NOT NULL,
    `ID_no` varchar(100) NOT NULL,
    `name` text NOT NULL,
    `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 = suspended, 3 = banned',
    `date_created` datetime NOT NULL DEFAULT current_timestamp(),
    `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `offenders_list`
--

INSERT INTO
    `offenders_list` (
        `id`,
        `ID_no`,
        `name`,
        `status`,
        `date_created`,
        `date_updated`
    )
VALUES (
        1,
        '32623148',
        'Mwakaburi, Johnny D',
        1,
        '2024-07-15 10:45:48',
        NULL
    ),
    (
        2,
        '31001253',
        'Asenath, Kiptoo K',
        1,
        '2024-07-08 10:30:18',
        NULL
    ),
    (
        3,
        '34452224',
        'Edward, Kocha D',
        1,
        '2024-07-12 10:50:48',
        NULL
    ),
    (
        4,
        '37140715',
        'Simiyu, Claire C',
        1,
        '2024-07-01 14:56:09',
        NULL
    );

-- --------------------------------------------------------

--
-- Table structure for table `offenders_meta`
--

CREATE TABLE `offenders_meta` (
    `offender_id` int(30) DEFAULT NULL,
    `meta_field` text NOT NULL,
    `meta_value` text NOT NULL,
    `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `offenders_meta`
--

INSERT INTO
    `offenders_meta` (
        `offender_id`,
        `meta_field`,
        `meta_value`,
        `date_updated`
    )
VALUES (
        1,
        'lastname',
        'Mwakaburi',
        '2024-07-01 14:07:37'
    ),
    (
        1,
        'firstname',
        'Johnny',
        '2024-07-01 14:10:08'
    ),
    (
        1,
        'middlename',
        'D',
        '2024-07-01 14:10:08'
    ),
    (
        1,
        'license_type',
        'Category B',
        '2024-07-01 14:14:28'
    ),
    (
        1,
        'civil_status',
        'Single',
        '2024-07-01 14:14:28'
    ),
    (
        1,
        'dob',
        '06-23-1997',
        '2024-07-01 14:15:40'
    ),
    (
        1,
        'present_address',
        '00600',
        '2024-07-01 14:15:40'
    ),
    (
        1,
        'permanent_address',
        '00800',
        '2024-07-01 14:16:55'
    ),
    (
        1,
        'nationality',
        'Kenyan',
        '2024-07-01 14:16:55'
    ),
    (
        1,
        'image_path',
        'uploads\\offenders\\1.jpg',
        '2024-07-01 14:22:16'
    ),
    (
        1,
        'contact',
        '0723901247',
        '2024-07-01 14:22:16'
    ),
    (
        1,
        'ID_no',
        '32623148',
        '2024-07-03 21:49:07'
    ),
    (
        2,
        'image_path',
        'uploads\\offenders\\2.jpg',
        '2024-07-03 22:07:05'
    ),
    (
        2,
        'ID_no',
        '31001253',
        '2024-07-03 22:07:05'
    ),
    (
        2,
        'lastname',
        'Kiptoo',
        '2024-07-03 22:10:10'
    ),
    (
        2,
        'firstname',
        'Asenath',
        '2024-07-03 22:10:10'
    ),
    (
        2,
        'middlename',
        'K',
        '2024-07-03 22:13:58'
    ),
    (
        2,
        'dob',
        '07-13-1988',
        '2024-07-03 22:13:58'
    ),
    (
        2,
        'present_address',
        '000700',
        '2024-07-03 22:15:16'
    ),
    (
        2,
        'permanent_address',
        '00700',
        '2024-07-03 22:15:16'
    ),
    (
        2,
        'civil_status',
        'Married',
        '2024-07-03 22:17:29'
    ),
    (
        2,
        'nationality',
        'Kenyan',
        '2024-07-03 22:17:29'
    ),
    (
        2,
        'contact',
        '0745198062',
        '2024-07-03 22:18:37'
    ),
    (
        2,
        'license_type',
        'Category E',
        '2024-07-03 22:18:37'
    ),
    (
        3,
        'image_path',
        'uploads\\offenders\\3.jpg',
        '2024-07-03 22:21:38'
    ),
    (
        3,
        'ID_no',
        '34452224',
        '2024-07-03 22:21:38'
    ),
    (
        3,
        'lastname',
        'Kocha',
        '2024-07-03 22:24:21'
    ),
    (
        3,
        'firstname',
        'Edward',
        '2024-07-03 22:24:21'
    ),
    (
        3,
        'middlename',
        'D',
        '2024-07-03 22:25:37'
    ),
    (
        3,
        'dob',
        '09-18-1999',
        '2024-07-03 22:25:37'
    ),
    (
        3,
        'permanent_address',
        '00100',
        '2024-07-03 22:27:24'
    ),
    (
        3,
        'present_address',
        '00100',
        '2024-07-03 22:27:24'
    ),
    (
        3,
        'civil_status',
        'Married',
        '2024-07-03 22:29:51'
    ),
    (
        3,
        'nationality',
        'Kenyan',
        '2024-07-03 22:29:51'
    ),
    (
        3,
        'contact',
        '0746895412',
        '2024-07-03 22:32:27'
    ),
    (
        3,
        'license_type',
        'Category B',
        '2024-07-03 22:32:27'
    ),
    (
        4,
        'image_path',
        'uploads\\offenders\\4.jpg',
        '2024-07-03 22:35:13'
    ),
    (
        4,
        'ID_no',
        '37140715',
        '2024-07-03 22:35:13'
    ),
    (
        4,
        'lastname',
        'Simuyu',
        '2024-07-03 22:36:00'
    ),
    (
        4,
        'firstname',
        'Claire',
        '2024-07-03 22:36:00'
    ),
    (
        4,
        'middlename',
        'C',
        '2024-07-03 22:36:42'
    ),
    (
        4,
        'dob',
        '09-12-1996',
        '2024-07-03 22:36:42'
    ),
    (
        4,
        'present_address',
        '00900',
        '2024-07-03 22:37:27'
    ),
    (
        4,
        'permanent _address',
        '00900',
        '2024-07-03 22:37:27'
    ),
    (
        4,
        'civil_status',
        'Single',
        '2024-07-03 22:38:08'
    ),
    (
        4,
        'nationality',
        'Kenyan',
        '2024-07-03 22:38:08'
    ),
    (
        4,
        'contact',
        '0714482103',
        '2024-07-03 22:38:52'
    ),
    (
        4,
        'license_type',
        'Category B',
        '2024-07-03 22:38:52'
    );

-- --------------------------------------------------------

--
-- Table structure for table `offenses`
--

CREATE TABLE `offenses` (
    `id` int(30) NOT NULL,
    `code` varchar(50) NOT NULL,
    `name` text NOT NULL,
    `description` text NOT NULL,
    `fine` float NOT NULL,
    `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Inactive, 1=Active',
    `date_created` datetime NOT NULL DEFAULT current_timestamp(),
    `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `offenses`
--

INSERT INTO
    `offenses` (
        `id`,
        `code`,
        `name`,
        `description`,
        `fine`,
        `status`,
        `date_created`,
        `date_updated`
    )
VALUES (
        1,
        'OT-1001',
        'Drunken violence.',
        'This is where people engage in physical violence outside bars or at parties',
        2500,
        1,
        '2024-07-08 09:14:43',
        '2024-07-08 09:17:50'
    ),
    (
        2,
        'OT-1002',
        'Stealing.',
        'This involves taking people\'s possessions.',
        2000,
        1,
        '2024-07-08 13:54:51',
        '2024-07-22 06:41:52'
    ),
    (
        3,
        'OT-1003',
        'Selling illicit liquour.',
        'This involves selling brews that have been produced at home.',
        2700,
        1,
        '2024-07-08 15:30:51',
        '2024-07-22 06:43:18'
    ),
    (
        4,
        'OT-1004',
        'Reckless Driving',
        'Not using a signal to indicate turn &Sudden braking. Not observing road rules and speed limits within the estates.',
        1600,
        1,
        '2024-07-08 10:14:43',
        NULL
    ),
    (
        5,
        'OT-1005',
        'Possession of marijuana',
        'Possession of marijuana for selling or personal use.',
        2500,
        1,
        '2024-07-08 11:15:40',
        NULL
    ),
    (
        6,
        'OT-1006',
        'Domestic violence',
        'Abusing of spouses or children.',
        3000,
        1,
        '2024-07-09 10:15:40',
        NULL
    );

-- --------------------------------------------------------

--
-- Table structure for table `offense_items`
--

CREATE TABLE `offense_items` (
    `offender_offense_id` int(30) NOT NULL,
    `offense_id` int(30) DEFAULT NULL,
    `fine` float NOT NULL,
    `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=paid',
    `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `offense_items`
--

INSERT INTO
    `offense_items` (
        `offender_offense_id`,
        `offense_id`,
        `fine`,
        `status`,
        `date_created`
    )
VALUES (
        3,
        6,
        3000,
        0,
        '2024-06-30 20:47:00'
    ),
    (
        3,
        4,
        1600,
        0,
        '2024-06-30 20:47:00'
    ),
    (
        1,
        6,
        3000,
        1,
        '2024-07-08 15:00:00'
    ),
    (
        1,
        5,
        2500,
        1,
        '2024-07-08 15:00:00'
    ),
    (
        4,
        4,
        1600,
        1,
        '2024-07-24 02:21:00'
    ),
    (
        4,
        1,
        2500,
        1,
        '2024-07-24 02:21:00'
    ),
    (
        5,
        5,
        2500,
        0,
        '2024-07-24 02:29:00'
    ),
    (
        5,
        3,
        2700,
        0,
        '2024-07-24 02:29:00'
    ),
    (
        6,
        4,
        1600,
        1,
        '2024-07-24 02:44:00'
    ),
    (
        6,
        2,
        2000,
        1,
        '2024-07-24 02:44:00'
    );

-- --------------------------------------------------------

--
-- Table structure for table `offense_list`
--

CREATE TABLE `offense_list` (
    `id` int(30) NOT NULL,
    `offender_id` int(30) NOT NULL,
    `officer_name` text NOT NULL,
    `officer_id` text NOT NULL,
    `ticket_no` text NOT NULL,
    `total_amount` float NOT NULL,
    `remarks` text NOT NULL,
    `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=paid',
    `date_created` datetime NOT NULL DEFAULT current_timestamp(),
    `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `offense_list`
--

INSERT INTO
    `offense_list` (
        `id`,
        `offender_id`,
        `officer_name`,
        `officer_id`,
        `ticket_no`,
        `total_amount`,
        `remarks`,
        `status`,
        `date_created`,
        `date_updated`
    )
VALUES (
        1,
        1,
        'Officer Wilson',
        'OFC-789456123',
        '00000789',
        5500,
        '',
        1,
        '2024-07-08 15:00:00',
        '2024-07-23 13:42:14'
    ),
    (
        3,
        3,
        'Officer Paul',
        'OFC-789456124',
        '00000299',
        4600,
        '',
        0,
        '2024-06-30 20:47:00',
        '2024-07-23 21:30:16'
    ),
    (
        4,
        3,
        'Officer Wilson',
        'OFC-789456780',
        '00000780',
        4100,
        'Repeat offender',
        1,
        '2024-07-24 02:21:00',
        NULL
    ),
    (
        5,
        4,
        'Officer Maxwell',
        'OFC-789456125',
        '0000908',
        5200,
        'Repeat offender',
        0,
        '2024-07-24 02:29:00',
        NULL
    ),
    (
        6,
        2,
        'Officer Marylin',
        'OFC-789456786',
        '00000309',
        3600,
        '',
        1,
        '2024-07-24 02:44:00',
        NULL
    );

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
    `id` int(30) NOT NULL,
    `meta_field` text NOT NULL,
    `meta_value` text NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO
    `system_info` (
        `id`,
        `meta_field`,
        `meta_value`
    )
VALUES (
        1,
        'name',
        'Records Management System'
    ),
    (6, 'short_name', 'RMS'),
    (
        11,
        'logo',
        'uploads/1629334140_traffic_light_logo.png'
    ),
    (
        13,
        'user_avatar',
        'uploads/user_avatar.jpg'
    ),
    (
        14,
        'cover',
        'uploads/1721618820_Academic Aesthetic.jpeg'
    );

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
    `id` int(50) NOT NULL,
    `firstname` varchar(250) NOT NULL,
    `lastname` varchar(250) NOT NULL,
    `username` text NOT NULL,
    `password` text NOT NULL,
    `avatar` text DEFAULT NULL,
    `last_login` datetime DEFAULT NULL,
    `type` tinyint(1) NOT NULL DEFAULT 0,
    `date_added` datetime NOT NULL DEFAULT current_timestamp(),
    `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO
    `users` (
        `id`,
        `firstname`,
        `lastname`,
        `username`,
        `password`,
        `avatar`,
        `last_login`,
        `type`,
        `date_added`,
        `date_updated`
    )
VALUES (
        1,
        'Adminstrator',
        'Admin',
        'admin',
        '0192023a7bbd73250516f069df18b500',
        'uploads/1624240500_avatar.png',
        NULL,
        1,
        '2023-07-20 14:02:37',
        NULL
    ),
    (
        9,
        'John',
        'Mwakaburi',
        'jmwakaburi',
        '1254737c076cf867dc53d60a0364f38e',
        'uploads/1629336240_avatar.jpg',
        NULL,
        2,
        '2024-07-15 09:24:25',
        '2024-07-22 22:04:02'
    );

--
-- Indexes for dumped tables
--

--
-- Indexes for table `offenders_list`
--
ALTER TABLE `offenders_list` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offenders_meta`
--
ALTER TABLE `offenders_meta`
ADD KEY `offender_id` (`offender_id`) USING BTREE;

--
-- Indexes for table `offenses`
--
ALTER TABLE `offenses` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offense_items`
--
ALTER TABLE `offense_items`
ADD KEY `offender_offense_id` (`offender_offense_id`),
ADD KEY `offense_id` (`offense_id`);

--
-- Indexes for table `offense_list`
--
ALTER TABLE `offense_list`
ADD PRIMARY KEY (`id`),
ADD KEY `offender_id` (`offender_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info` ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users` ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `offenders_list`
--
ALTER TABLE `offenders_list`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 5;

--
-- AUTO_INCREMENT for table `offenses`
--
ALTER TABLE `offenses`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 8;

--
-- AUTO_INCREMENT for table `offense_list`
--
ALTER TABLE `offense_list`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 7;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT = 10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `offenders_meta`
--
ALTER TABLE `offenders_meta`
ADD CONSTRAINT `offenders_meta_ibfk_1` FOREIGN KEY (`offender_id`) REFERENCES `offenders_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `offense_items`
--
ALTER TABLE `offense_items`
ADD CONSTRAINT `offense_items_ibfk_1` FOREIGN KEY (`offender_offense_id`) REFERENCES `offense_list` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `offense_items_ibfk_2` FOREIGN KEY (`offense_id`) REFERENCES `offenses` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `offense_list`
--
ALTER TABLE `offense_list`
ADD CONSTRAINT `offense_list_ibfk_1` FOREIGN KEY (`offender_id`) REFERENCES `offenders_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
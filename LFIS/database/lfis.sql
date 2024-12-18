


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Database: `lfis`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` bigint(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile Phones', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id est enim. Fusce malesuada dapibus lobortis. Maecenas commodo cursus ante, a efficitur lorem ultrices a. Cras tincidunt, leo at consequat viverra, lacus elit tempus diam, sed scelerisque turpis purus eu ex. Sed placerat, sem vel accumsan maximus, nibh massa rhoncus mi, quis lacinia nisl quam eu purus.&lt;/p&gt;', 1, '2023-05-01 10:32:44', NULL),
(2, 'Keys', '&lt;p&gt;Nulla at tellus tristique, venenatis mauris a, commodo urna. Integer arcu quam, maximus id nulla vitae, eleifend lacinia tellus. Proin nec consequat risus. Sed et felis justo. Duis quis magna vel felis volutpat consectetur ut et enim. Integer nec auctor felis. Fusce nec mauris luctus, lacinia erat in, porttitor tellus. Nunc quis mauris velit. Sed nec libero vitae leo blandit mattis.&lt;/p&gt;', 1, '2023-05-01 10:34:27', NULL),
(3, 'Watches', '&lt;p&gt;Etiam volutpat dictum tempor. Nulla rutrum arcu eu volutpat pharetra. Aliquam non luctus ex. Maecenas nibh ipsum, efficitur in dui at, rhoncus convallis orci. Duis bibendum tempor sapien, non sollicitudin massa porttitor sed.&lt;/p&gt;', 1, '2023-05-01 10:35:58', '2023-05-01 10:36:15'),
(5, 'caps', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id est enim. Fusce malesuada dapibus lobortis. Maecenas commodo cursus ante, a efficitur lorem ultrices a. Cras tincidunt, leo at consequat viverra, lacus elit tempus diam, sed scelerisque turpis purus eu ex. Sed placerat, sem vel accumsan maximus, nibh massa rhoncus mi, quis lacinia nisl quam eu purus.&lt;/p&gt;', 1, '2023-08-06 16:00:50', '2023-08-06 16:08:06'),
(6, 'Pens', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id est enim. Fusce malesuada dapibus lobortis. Maecenas commodo cursus ante, a efficitur lorem ultrices a. Cras tincidunt, leo at consequat viverra, lacus elit tempus diam, sed scelerisque turpis purus eu ex. Sed placerat, sem vel accumsan maximus, nibh massa rhoncus mi, quis lacinia nisl quam eu purus.&lt;/p&gt;', 1, '2023-08-06 16:01:16', '2023-08-06 16:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_list`
--

CREATE TABLE `inquiry_list` (
  `id` bigint(30) NOT NULL,
  `fullname` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry_list`
--

INSERT INTO `inquiry_list` (`id`, `fullname`, `contact`, `email`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Jane Doe', '09123546788', 'jdoe@mail.com', 'Vestibulum suscipit felis at magna congue gravida. Quisque interdum eu odio sed vulputate.', 1, '2023-05-01 14:11:19', '2023-05-01 14:25:47'),
(2, 'Victor', '123-456-7890', 'sam@mail.com', 'hjkm,', 1, '2023-08-06 16:43:49', '2023-08-06 16:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `item_list`
--

CREATE TABLE `item_list` (
  `id` bigint(30) NOT NULL,
  `category_id` bigint(30) NOT NULL,
  `fullname` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `contact` text NOT NULL,
  `image_path` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_list`
--

INSERT INTO `item_list` (`id`, `category_id`, `fullname`, `title`, `description`, `contact`, `image_path`, `status`, `created_at`, `updated`) VALUES
(1, 2, 'Mark Cooper', 'Found Keys at Central Park', 'Suspendisse nisl diam, pretium ut placerat nec, pellentesque in tortor. Suspendisse vitae arcu a mi dapibus elementum ac dignissim tellus. Duis vitae molestie lacus, porttitor lacinia justo. Ut vulputate, ipsum interdum consequat mollis, odio nisl vulputate est, quis ornare nisi massa a odio.', '09123564789', 'uploads/items/1.png?v=1682912925', 1, '2023-05-01 11:48:45', '2023-05-01 11:48:45'),
(3, 1, 'Claire Blake', 'Found an Android Phone @ Restaurant Parking Lot', 'Etiam accumsan quis augue a pulvinar. Etiam pretium sodales ipsum, cursus venenatis urna fringilla vel. Nunc fringilla non magna sit amet pharetra. Nam iaculis rutrum eleifend. Mauris rutrum, urna eget rhoncus consequat, purus mauris luctus orci, at venenatis ex elit sed risus.', '09123654897', 'uploads/items/3.png?v=1691334197', 1, '2023-05-01 12:55:48', '2023-08-06 16:03:17'),
(5, 3, 'Samantha Lou', 'Found a Watch left @ Room 101', 'Sed ultricies turpis eget commodo condimentum. Nam ac lorem vitae nulla fringilla imperdiet sit amet a arcu. Maecenas malesuada felis eleifend condimentum porttitor. Cras sed metus nec nibh interdum bibendum sit amet at sem.', '09457778988', 'uploads/items/5.png?v=1682917427', 1, '2023-05-01 13:03:47', '2023-05-01 13:03:47'),
(6, 1, 'Wilson Smith', 'Found Something @ The Mall', 'Donec metus sem, volutpat id mi in, fringilla aliquet odio. Donec eleifend sem et ex maximus tristique. Donec porttitor venenatis aliquet. Aliquam tristique est sed nulla fermentum aliquam eget sed ex', '09123564789', NULL, 2, '2023-05-01 13:34:29', '2023-05-01 14:04:10'),
(7, 1, 'Victor', 'Lost Phone', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id est enim. Fusce malesuada dapibus lobortis. Maecenas commodo cursus ante, a efficitur lorem ultrices a. Cras tincidunt, leo at consequat viverra, lacus elit tempus diam, sed scelerisque turpis purus eu ex. Sed placerat, sem vel accumsan maximus, nibh massa rhoncus mi, quis lacinia nisl quam eu purus.', '123-456-7890', 'uploads/items/7.png?v=1691334269', 1, '2023-08-06 16:04:28', '2023-08-06 16:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'City University Lost and Found Portal'),
(6, 'short_name', 'CU - LAFP'),
(11, 'logo', 'uploads/logo.png?v=1682908055'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1682908055'),
(17, 'phone', '111-111-000'),
(18, 'mobile', '01712345678'),
(19, 'email', 'bappylaylacse53@gmail.com'),
(20, 'address', 'Savar Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='2';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', '', 'Admin', 'admin', '$2y$10$JGtuRT4rlj7mpzTuT1cpLOWf2GUASWE89AokSwujbQI.36pyFzaYu', 'uploads/avatars/1.png?v=1691334403', NULL, 1, '2021-01-20 14:02:37', '2023-08-06 16:06:43'),
(9, 'Claire', '', 'Blake', 'cblake', '$2y$10$DFEet3AmXnsVKls912SbHey87bsXauL7nannya2CjtV7m37dNZhNe', 'uploads/avatars/9.png?v=1682495668', NULL, 2, '2023-04-26 15:54:27', '2023-04-26 16:02:36'),
(10, 'Davido', 'd', 'Test5', 'dav', '$2y$10$wxG/NVi2zZdN9Lg55CORY.GtzymYNZMjwTazeVJ1Z66lTrDJf6Rii', 'uploads/avatars/10.png?v=1691333827', NULL, 2, '2023-08-06 15:57:03', '2023-08-06 15:57:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_list`
--
ALTER TABLE `item_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category_id` (`category_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_list`
--
ALTER TABLE `item_list`
  MODIFY `id` bigint(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `item_list`
--
ALTER TABLE `item_list`
  ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;


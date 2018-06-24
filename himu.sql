-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2018 at 09:17 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `himu`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_company`
--

CREATE TABLE `about_company` (
  `id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `area` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about_company`
--

INSERT INTO `about_company` (`id`, `description`, `address`, `area`, `country`, `fname`, `lname`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', '36 North Kafrul\r\n', 'Dhaka Cantonment Area', 'Dhaka-1206, Bangladesh', 'Devs', 'Cluster');

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `img` varchar(100) NOT NULL,
  `position` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `description`, `link`, `img`, `position`) VALUES
(1, 'desc1', 'www.yourwebsite.com', 'client1.jpg', 'famous client'),
(2, 'desc2', 'www.yourwebsite.com', 'client2.jpg', 'famous client'),
(3, 'desc3', 'www.website.com', 'client3.jpg', 'famous client');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `id`) VALUES
('admin', '12345', 1),
('mohamed', '12345', 2);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(100) NOT NULL,
  `team_id` int(11) NOT NULL,
  `blog_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `description`, `img`, `team_id`, `blog_date`) VALUES
(1, 'Lorem1', 'description', '1.jpg', 4, '2018-04-14 17:40:48'),
(2, 'Lorem2', 'description', '2.jpg', 4, '2018-04-14 17:40:48'),
(3, 'lorem3', 'Description', '3.jpg', 1, '2018-04-14 17:42:16'),
(4, 'lorem4', 'Description', '2.jpg', 2, '2018-04-14 17:42:16'),
(5, 'lorem4', 'Description', '2.jpg', 3, '2018-04-14 17:43:13'),
(6, 'lorem5', 'Description', '1.jpg', 1, '2018-04-14 17:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `categ_project`
--

CREATE TABLE `categ_project` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `img` varchar(150) NOT NULL,
  `portofolio_id` int(11) NOT NULL,
  `description` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categ_project`
--

INSERT INTO `categ_project` (`id`, `name`, `img`, `portofolio_id`, `description`) VALUES
(1, 'novel', '1.jpg', 1, 'DESC'),
(2, 'novel', '2.jpg', 1, 'desc'),
(3, 'mohamed', '3.jpg', 2, 'desc'),
(4, 'novel', '4.jpg', 3, 'desc'),
(5, 'novel', '5.jpg', 4, 'desc'),
(6, 'novel', '6.jpg', 4, 'desc'),
(7, 'novel', '7.jpg', 3, 'desc'),
(8, 'novel', '8.jpg', 2, 'desc');

-- --------------------------------------------------------

--
-- Table structure for table `company_link`
--

CREATE TABLE `company_link` (
  `id` int(11) NOT NULL,
  `social_media_id` int(11) NOT NULL,
  `about_company_id` int(11) NOT NULL,
  `links` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_link`
--

INSERT INTO `company_link` (`id`, `social_media_id`, `about_company_id`, `links`) VALUES
(1, 1, 1, 'www.faceboo.com'),
(2, 2, 1, 'www.twitter.com');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `message`, `name`) VALUES
(1, 'M.Elmansy1@hotmail.com', 'asdddddddddddddd', 'nfgggggggggggg'),
(2, 'bfeeeeeeeeeee', 'kkkkkkkkkkkkkkfeja', 'faklnnnn'),
(3, 'awdda', 'sadasd', 'mohamed');

-- --------------------------------------------------------

--
-- Table structure for table `portofolio_catg`
--

CREATE TABLE `portofolio_catg` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portofolio_catg`
--

INSERT INTO `portofolio_catg` (`id`, `name`) VALUES
(1, 'html'),
(2, 'wordpress'),
(3, 'Joomla'),
(4, 'Megento');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`id`, `title`, `description`, `img`, `name`) VALUES
(2, 'Services', 'Lorem ipsum dolor sit amet', '', 'services'),
(3, 'meet the team', 'Team Desc', '', 'team'),
(4, 'PORTFOLIO', 'DEsc', '', 'PORTFOLIO'),
(5, 'Clients Say', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit', '', 'clients_say'),
(6, 'BLOG', 'BLOG desc', '', 'blog'),
(7, 'Contact With Us', 'Lorem ipsum dolor sit amet,', '', 'contact_with_us'),
(8, 'why with us !', 'we are the best', '', 'about_us');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(150) NOT NULL,
  `icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `description`, `icon`) VALUES
(1, 'Modern Design', 'desc Modern Design', 'fa-th'),
(2, 'Web Development', 'desc Web Development', 'fa-html5'),
(3, 'Online Marketing', 'desc Online Marketing', 'fa-users');

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `name`, `value`) VALUES
(1, 'HTML5 & CSS3', 90),
(2, 'php', 80),
(3, 'ui desgin', 70),
(4, 'jquery', 60),
(6, 'wordpress', 80);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `description`, `img`) VALUES
(1, 'slid1', 'description', 'slide1.jpg'),
(2, 'slid2', 'description', 'slide2.jpg'),
(3, 'slid3', 'description', 'slide3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `icon`) VALUES
(1, 'facebook', 'fa-facebook'),
(2, 'twitter', 'fa-twitter'),
(3, 'google-plus', 'fa-google-plus'),
(4, 'dribbble', 'fa-dribbble'),
(5, 'linkedin', 'fa-linkedin');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `img`, `position`, `description`) VALUES
(1, 'William ', 'member1.jpg', 'Sr. Web Developer', 'desc'),
(2, 'Alekjandra', 'member2.jpg', 'Creative Designer', 'desc'),
(3, 'Paul', 'member3.jpg', 'Skilled Programmer', 'Desc'),
(4, 'John', 'member4.jpg', 'Marketing Officer', 'Desc'),
(5, 'Paul', 'member3.jpg', 'Skilled Programmer\r\n', 'Desc'),
(6, 'Alekjandra', 'member2.jpg', 'Creative Designer', 'desc'),
(7, 'william', 'member1.jpg', 'Sr. Web Developer', 'desc'),
(8, 'john', 'member4.jpg', 'Marketing Officer', 'desc');

-- --------------------------------------------------------

--
-- Table structure for table `team_link`
--

CREATE TABLE `team_link` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `social_media_id` int(11) NOT NULL,
  `links` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team_link`
--

INSERT INTO `team_link` (`id`, `team_id`, `social_media_id`, `links`) VALUES
(1, 1, 1, 'facebook.com'),
(2, 1, 2, 'twitter.com'),
(3, 1, 5, ''),
(4, 2, 2, ''),
(5, 2, 4, ''),
(6, 3, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `with_us`
--

CREATE TABLE `with_us` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(150) NOT NULL,
  `icon` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `with_us`
--

INSERT INTO `with_us` (`id`, `name`, `description`, `img`, `icon`) VALUES
(2, 'About', 'about desc', 'about.jpg', 'fa-chain-broken'),
(3, 'mission ', 'mission desc', 'mission.jpg', 'fa-chain-broken'),
(4, 'community', 'community desc', 'community.jpg', 'fa-chain-broken');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_company`
--
ALTER TABLE `about_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `categ_project`
--
ALTER TABLE `categ_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portofolio_id` (`portofolio_id`);

--
-- Indexes for table `company_link`
--
ALTER TABLE `company_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_media_id` (`social_media_id`),
  ADD KEY `about_company_id` (`about_company_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portofolio_catg`
--
ALTER TABLE `portofolio_catg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_link`
--
ALTER TABLE `team_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `social_link` (`social_media_id`);

--
-- Indexes for table `with_us`
--
ALTER TABLE `with_us`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_company`
--
ALTER TABLE `about_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categ_project`
--
ALTER TABLE `categ_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portofolio_catg`
--
ALTER TABLE `portofolio_catg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `team_link`
--
ALTER TABLE `team_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `with_us`
--
ALTER TABLE `with_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categ_project`
--
ALTER TABLE `categ_project`
  ADD CONSTRAINT `categ_project_ibfk_1` FOREIGN KEY (`portofolio_id`) REFERENCES `portofolio_catg` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_link`
--
ALTER TABLE `company_link`
  ADD CONSTRAINT `company_link_ibfk_1` FOREIGN KEY (`social_media_id`) REFERENCES `social_media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `company_link_ibfk_2` FOREIGN KEY (`about_company_id`) REFERENCES `about_company` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `team_link`
--
ALTER TABLE `team_link`
  ADD CONSTRAINT `team_link_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_link_ibfk_2` FOREIGN KEY (`social_media_id`) REFERENCES `social_media` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

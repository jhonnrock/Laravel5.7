-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 05:08 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE DATABASE IF NOT EXISTS `music` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `music`;
--
-- Database: `musicl`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--


CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(10) unsigned NOT NULL,
  `song_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tittles` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `albumname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` date NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `song_id`, `genre_id`, `user_id`, `tittles`, `albumname`, `year`, `image`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 0, 'hand slip ', 'lifehouse', '2014-10-23', 'cover_0_1412639011.jpg', '0000-00-00 00:00:00', '2014-10-10 05:59:07'),
(3, 0, 0, 0, 'lady', 'adada', '2014-10-23', 'cover_1_1412639011.jpg', '2014-10-09 01:43:20', '2014-10-10 06:01:18'),
(4, 0, 0, 0, 'adad', 'adada', '2014-10-24', 'cover_1_1412639011.jpg', '2014-10-09 01:49:17', '2014-10-10 06:08:50'),
(5, 0, 0, 0, 'ada', 'adada', '2014-10-14', 'cover_1_1354582245.jpg', '2014-10-09 02:49:59', '2014-10-10 06:09:50'),
(6, 0, 0, 0, 'adad', 'adada', '2014-10-24', 'cover_1_1354582245.jpg', '2014-10-09 04:50:56', '2014-10-10 06:15:48'),
(7, 1, 1, 1, 'addad', 'adad', '0000-00-00', 'Zayn-Malik-Hairstyles-short.jpg', '2014-10-09 04:58:28', '2014-10-09 04:58:28'),
(8, 1, 5, 1, 'heart gold ', 'hhhj', '2014-10-24', 'cover_0_1412911887.jpg', '2014-10-09 06:48:18', '2014-10-10 07:04:11'),
(9, 0, 0, 0, 'ada', 'adad', '2014-10-23', 'cover_0_1412639011.jpg', '2014-10-09 07:21:28', '2014-10-10 06:17:20'),
(10, 1, 1, 1, 'calvin', 'nuebo', '2014-10-24', 'cover_4_1411349603.jpg', '2014-10-09 23:57:53', '2014-10-10 07:01:15'),
(11, 0, 0, 0, 'dada', 'adad', '2014-10-24', 'cover_1_1412639011.jpg', '2014-10-09 23:58:26', '2014-10-10 06:57:13'),
(12, 0, 0, 0, 'dad', 'adada', '2014-10-30', 'cover_1_1407200970.jpg', '2014-10-10 00:00:28', '2014-10-10 06:33:58'),
(13, 0, 0, 0, 'adad', 'adad', '2014-10-23', 'cover_1_1392933274.jpg', '2014-10-10 00:02:30', '2014-10-10 06:21:55'),
(14, 0, 0, 0, 'adada', 'adada', '2014-10-23', 'cover_3_1409616125.jpg', '2014-10-10 00:56:43', '2014-10-10 06:19:45'),
(15, 0, 0, 0, 'music', 'broken heart', '2014-10-24', 'cover_0_1397526303.jpg', '2014-10-10 05:18:41', '2014-10-10 06:31:55'),
(16, 1, 9, 3, 'new', 'soul', '2014-10-15', 'cover_10_1401155209.jpg', '2014-10-10 06:23:55', '2014-10-10 06:23:55'),
(17, 0, 0, 0, 'adada', 'addad', '2014-10-24', 'cover_0_1411430815.jpg', '2014-10-10 06:35:58', '2014-10-10 06:37:05'),
(18, 1, 1, 1, 'music', 'music', '2014-10-31', 'cover_1_1412911887.jpg', '2014-10-10 06:54:55', '2014-10-10 06:54:55'),
(21, 4, 1, 1, 'r5', 'soul', '2015-07-16', 'cover_8_1422392076.jpg', '2015-07-17 07:05:20', '2015-07-17 07:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `archivos`
--

CREATE TABLE IF NOT EXISTS `archivos` (
  `id` int(10) unsigned NOT NULL,
  `nombre_cancion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subir` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `etiqueta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `archivos`
--

INSERT INTO `archivos` (`id`, `nombre_cancion`, `subir`, `etiqueta`, `description`, `created_at`, `updated_at`) VALUES
(1, 'the vamps', 'Twenty One Pilots - Car Radio.mp3', '#rock ', 'new album', '2015-05-17 22:00:00', '2015-05-25 06:52:49'),
(2, 'twenty one pilots', 'Twenty One Pilots - Car Radio.mp3', '#rock', 'twenty new music', '2015-05-22 23:00:59', '2015-05-25 07:07:05'),
(10, 'benjamin', 'Benjamin Kheng - a love song .mp3', 'pop ', 'nuevo cancion', '2015-05-24 06:28:25', '2015-05-24 06:28:25'),
(17, 'Kris  allen', 'Kris_Allen__Parachute_.mp3', '#pop', 'bunisimo cancions', '2015-05-26 05:53:26', '2015-05-26 05:53:26'),
(18, 'Migel', 'Miguel - Adorn download mp3.MP3', 'Pop', 'nuevo', '2015-06-19 05:48:14', '2015-06-19 05:51:38'),
(19, 'taylor', 'Taylor Swift - Bad Blood Free Online Music.mp3', '#pop', 'New music', '2015-06-19 05:59:46', '2015-06-19 05:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
  `id` int(10) unsigned NOT NULL,
  `album_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `biografia` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `album_id`, `name`, `biografia`, `created_at`, `updated_at`) VALUES
(1, 1, 'jonas brother ', '1995 create the albumss\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 10, 'adad', 'adada', '2015-06-01 06:53:11', '2015-06-01 06:53:11'),
(3, 1, 'lawson ', 'musoc a', '2015-06-01 07:00:15', '2015-06-01 07:00:15'),
(4, 15, 'adada', 'dada', '2015-06-01 07:00:43', '2015-06-01 07:00:43'),
(5, 1, 'dada', 'nuevos', '2015-06-13 01:51:33', '2015-06-13 05:51:33'),
(6, 15, 'adada', 'neuvo', '2015-06-13 03:01:20', '2015-06-13 07:01:20'),
(7, 1, 'adada', 'mio', '2015-06-13 02:46:31', '2015-06-13 06:46:31'),
(8, 8, 'nuevos', 'mio', '2015-06-16 22:31:33', '2015-06-17 02:31:33'),
(9, 1, 'nuevo canciones ', 'prueba', '2015-06-13 03:01:44', '2015-06-13 07:01:44');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(10) unsigned NOT NULL,
  `genres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descrip` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genres`, `descrip`, `created_at`, `updated_at`) VALUES
(1, 'pop', 'genero pop', '0000-00-00 00:00:00', '2015-08-08 00:24:01'),
(2, 'rock', 'genero rock', '0000-00-00 00:00:00', '2015-08-08 01:05:02'),
(3, 'romantico', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'alternativo', 'genero alternativo', '0000-00-00 00:00:00', '2015-08-08 00:47:23'),
(5, 'k-pop', 'Musica koreana', '0000-00-00 00:00:00', '2015-08-05 02:00:25'),
(6, 'cumbia', 'genero cumbia', '0000-00-00 00:00:00', '2015-08-08 00:46:51'),
(7, 'salsa', 'genero salsa', '2014-09-28 03:00:54', '2014-09-28 03:00:54'),
(8, 'cumbia ', 'genero cumbia', '2014-09-28 03:02:19', '2014-09-28 03:02:19'),
(9, 'rock alternativo', 'genero RA', '2014-09-28 03:02:47', '2014-09-28 07:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_09_21_083342_create_albums_table', 1),
('2014_09_21_085721_create_artists_table', 2),
('2014_09_21_090333_create_genres_table', 3),
('2014_09_21_090752_create_songs_table', 4),
('2014_09_21_091327_create_tipousuarios_table', 5),
('2014_09_21_091733_create_users_table', 6),
('2015_05_18_082837_archivos', 7);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE IF NOT EXISTS `songs` (
  `id` int(10) unsigned NOT NULL,
  `genre_id` int(11) NOT NULL,
  `archivos_id` int(11) NOT NULL,
  `postion` int(11) NOT NULL,
  `cancion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lyrics` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dutation` time NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `year` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `genre_id`, `archivos_id`, `postion`, `cancion`, `title`, `lyrics`, `dutation`, `image`, `year`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 2, '', 'break wall', 'nuevo', '05:00:00', 'cover_0_1429846692.jpg', '2014-09-10', '0000-00-00 00:00:00', '2015-07-06 01:09:01'),
(2, 2, 0, 2, '', 'all time', 'lyrics', '04:00:00', 'cover_0_1429846692.jpg', '2014-09-04', '0000-00-00 00:00:00', '2015-07-06 01:05:02'),
(3, 1, 0, 5, '', 'hilary duff', 'fly', '05:10:00', 'hilarry', '2014-09-02', '0000-00-00 00:00:00', '2015-07-06 01:03:22'),
(4, 5, 17, 2, '', 'walk a my distation', 'sdfaf', '00:00:00', 'cover_11_1430434529.jpg', '2014-09-26', '2014-09-25 01:41:10', '2015-07-07 05:21:38'),
(5, 4, 18, 1, '', 'jessi carter', 'the fray', '11:00:00', 'cover_0_1412567790.jpg', '2014-09-25', '2014-09-25 01:52:05', '2015-07-07 05:20:41'),
(6, 2, 4, 3, '', 'hung up ', 'hot chelle ', '00:00:00', 'prueva', '2014-09-30', '2014-09-25 07:03:59', '2014-09-25 07:03:59'),
(10, 1, 0, 3, '', 'time', 'dada', '23:59:00', 'sdsdad', '2015-05-19', '2015-05-19 05:47:31', '2015-05-19 05:47:31'),
(11, 1, 0, 3, 'dada', '3asdada', '34343', '14:03:00', 'ModelDiagram.png', '2015-05-19', '2015-05-19 06:51:51', '2015-05-19 06:51:51'),
(12, 1, 3, 4, 'adada', 'adadad', 'adada', '14:23:00', 'Miley Cyrus Feat. Ariana Grande Dont Dream Its Over.mp3', '2015-05-19', '2015-05-19 06:52:28', '2015-05-19 06:52:28'),
(15, 1, 17, 3, 'new song', 'taylor ', 'nudsd', '03:03:00', 'cover_1_1432264699.jpg', '2015-06-30', '2015-07-01 07:01:39', '2015-07-01 07:01:39'),
(17, 1, 2, 2, 'adad', 'sdad', 'adad', '23:33:00', 'cover_1_1432264699.jpg', '2015-06-30', '2015-07-01 07:19:35', '2015-07-01 07:19:35'),
(19, 1, 19, 4, 'nuevo', 'cancion', 'teylor smit', '14:33:00', 'cover_1_1432264699.jpg', '2015-06-30', '2015-07-01 07:27:48', '2015-07-01 07:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `tipousuarios`
--

CREATE TABLE IF NOT EXISTS `tipousuarios` (
  `id` int(10) unsigned NOT NULL,
  `nombtipousuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descriptipousuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tipousuarios`
--

INSERT INTO `tipousuarios` (`id`, `nombtipousuario`, `descriptipousuario`, `created_at`, `updated_at`) VALUES
(1, 'administrador', 'encardado de manejar ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Usuario', 'solo puede aceder al portales3', '2014-10-02 00:50:35', '2014-10-02 06:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `tipousuario_id` int(11) NOT NULL,
  `cuentausuario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recordpass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `tipousuario_id`, `cuentausuario`, `username`, `password`, `email`, `recordpass`, `created_at`, `updated_at`) VALUES
(1, 1, 'jhonnadmin', 'admin', '$2y$10$MP9ctBz2xx85GP0VT6L9je3alV1n.MUXYK1PGCX54veFQ7GlC3k22', 'admin@admin.com', '$2y$10$iQ658hD.0uB5MNxxEmoBOeB/28Ytg2f2k9wNur6V9AbldNlnD1OQ2', '2014-09-30 00:18:04', '2014-09-30 00:18:04'),
(2, 1, 'jhonnrock', 'jhonny', '$2y$10$0p66WQMKRaxphb4kgjfUzeTHEjfSvXVx.0smKBlpIp0oJNUE/UMTC', 'jhonn_ty@hotmail.com', '$2y$10$6R88oC6rdQDpeWZm4yTE8uiGESHGef0u.4d597brO5.TBfjjlHtxy', '2014-10-05 07:23:43', '2014-10-05 07:23:43'),
(3, 1, 'fabiola', 'fabiola', '$2y$10$YLFvWqIG82RTd.Z5qyOL5OFE1GG.04cnbREP.Wx2oBYj1nttclQhm', 'fabiola@hotmail.com', '$2y$10$Wkj80iN8IMf32jvN0WVfN.NXtua0wqRzceSOtXbC1UOkWdZVAhVwK', '2014-10-05 07:25:17', '2014-10-05 07:25:17'),
(5, 1, 'diana', 'diana', '$2y$10$69zCgOlZIikRYvK1L.zaSeIZEUFQcMqV3nUiAa6TDVe8KA8uYhjrO', 'diana890@gmail.com', '$2y$10$5tjmLNKHyiOw7mP7p.Ar0e2uMBQSVa8dyylYXbF3MCoy7dMM7AS2a', '2015-05-11 01:59:01', '2015-05-11 01:59:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipousuarios`
--
ALTER TABLE `tipousuarios`
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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tipousuarios`
--
ALTER TABLE `tipousuarios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

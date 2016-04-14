-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 14, 2016 at 10:50 م
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2advanced`
--

-- --------------------------------------------------------

--
-- Table structure for table `annee_sco`
--

CREATE TABLE `annee_sco` (
  `id` int(11) NOT NULL,
  `annee` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `annee_sco`
--

INSERT INTO `annee_sco` (`id`, `annee`) VALUES
(1, '2015/2016'),
(2, '2016/2017'),
(3, '2017/2018');

-- --------------------------------------------------------

--
-- Table structure for table `attatechments`
--

CREATE TABLE `attatechments` (
  `id` int(11) NOT NULL,
  `attatechment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bloc`
--

CREATE TABLE `bloc` (
  `id` int(11) NOT NULL,
  `designation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cours`
--

CREATE TABLE `cours` (
  `id` int(11) NOT NULL,
  `texte` varchar(2000) NOT NULL,
  `id_att` int(11) NOT NULL,
  `id_ens` int(11) NOT NULL,
  `id_g` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE `date` (
  `id` int(11) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE `enseignant` (
  `firstname` varchar(80) NOT NULL,
  `lastname` varchar(80) NOT NULL,
  `adress` varchar(200) NOT NULL,
  `num_tel` varchar(15) NOT NULL,
  `cin` varchar(10) NOT NULL,
  `matricule` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ens_mat`
--

CREATE TABLE `ens_mat` (
  `id` int(11) NOT NULL,
  `id_mat` int(11) NOT NULL,
  `id_ens` int(11) NOT NULL,
  `id_g` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `cin` varchar(20) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `adresse` varchar(200) NOT NULL,
  `num_tel` int(15) NOT NULL,
  `ni` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`cin`, `firstname`, `lastname`, `adresse`, `num_tel`, `ni`) VALUES
('09411832', 'kjjj', 'jjjj', 'jhgjhgh', 0, '11111111');

-- --------------------------------------------------------

--
-- Table structure for table `Groupe`
--

CREATE TABLE `Groupe` (
  `id` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `id_s` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Groupe`
--

INSERT INTO `Groupe` (`id`, `designation`, `id_s`) VALUES
(1, 'FIA1-01-1', 1),
(2, 'FIA1-02-1', 1),
(3, 'FIA1-03-1', 1),
(4, 'LaEEA-A1-01-1', 3),
(5, 'LaEEA-A2-EII-01-1', 3),
(6, 'LaEm-A1-01-1', 3),
(7, 'MP-GM-A1-01-1', 2),
(8, 'MR-INFO-A1-01-1', 2),
(9, 'MR-A1-MSEE-01-1', 2),
(10, 'LFEEA-A3-01-1', 3),
(11, 'LFEEA-A3-02-1', 3),
(12, 'Prepa-A1-01-1', 4),
(13, 'Prepa-A1-02-1', 4),
(14, 'Prepa-A1-03-1', 4),
(15, 'Prepa-A2-02-1', 4),
(16, 'Prepa-A2-03-1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `list_insc_etud`
--

CREATE TABLE `list_insc_etud` (
  `id` int(11) NOT NULL,
  `id_etud` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `id_annee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `coef` double NOT NULL,
  `type` varchar(10) NOT NULL,
  `id_s` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1460046983),
('m130524_201442_init', 1460047020);

-- --------------------------------------------------------

--
-- Table structure for table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `id_b` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seance`
--

CREATE TABLE `seance` (
  `num` int(11) NOT NULL,
  `jour` varchar(20) NOT NULL,
  `id_mat` int(11) NOT NULL,
  `id_ens` int(11) NOT NULL,
  `id_s` int(11) NOT NULL,
  `regime` int(11) NOT NULL,
  `id_g` int(11) NOT NULL,
  `id_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Specialite`
--

CREATE TABLE `Specialite` (
  `id` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Specialite`
--

INSERT INTO `Specialite` (`id`, `designation`) VALUES
(1, 'Ingènieur'),
(2, 'Master'),
(3, 'LMD'),
(4, 'Preparatoire');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `matricule` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `image`, `role`, `matricule`) VALUES
(1, 'root', 'Xhpdfr8IIoBvYx4FB24ONHKO8x7E03uE', '$2y$13$efgTGlUs0EvRRl902yNxAOSvJeMejJMoq8dnrJwh5Wa3XL9JDMSIW', NULL, 'nasreddinejrebi@outlook.fr', 10, 1460047137, 1460047137, '', '', ''),
(5, 'nasri1993', 's6iUEhWTfEnWNQmCQF6AR9OEm55SvfqF', '$2y$13$2i.9Xr9S7lylYZCIOZuJFe4DY5L6SgrJWseK1R4PBsn8EhQjLSxCa', NULL, 'ess.nasri@yahoo.fr', 10, 1460242664, 1460242664, 'uploads/nasri1993.jpg', 'Student', ''),
(10, 'nasri', 'kJ5PKKup-vWhNv07YMm6gQeD7N9C_P8C', '$2y$13$J8d27tUtNhenThxIctJgX.ff3I5VNx1FDNzzJlroXpviHDwQi1UEC', NULL, 'nasri@gmail.com', 10, 1460655632, 1460655632, 'uploads/nasri.jpg', 'Student', '11111111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annee_sco`
--
ALTER TABLE `annee_sco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attatechments`
--
ALTER TABLE `attatechments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloc`
--
ALTER TABLE `bloc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`cin`);

--
-- Indexes for table `ens_mat`
--
ALTER TABLE `ens_mat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`cin`);

--
-- Indexes for table `Groupe`
--
ALTER TABLE `Groupe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_insc_etud`
--
ALTER TABLE `list_insc_etud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seance`
--
ALTER TABLE `seance`
  ADD PRIMARY KEY (`num`,`jour`,`id_mat`,`id_s`,`regime`,`id_g`);

--
-- Indexes for table `Specialite`
--
ALTER TABLE `Specialite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annee_sco`
--
ALTER TABLE `annee_sco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `attatechments`
--
ALTER TABLE `attatechments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bloc`
--
ALTER TABLE `bloc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `date`
--
ALTER TABLE `date`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ens_mat`
--
ALTER TABLE `ens_mat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Groupe`
--
ALTER TABLE `Groupe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `list_insc_etud`
--
ALTER TABLE `list_insc_etud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Specialite`
--
ALTER TABLE `Specialite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

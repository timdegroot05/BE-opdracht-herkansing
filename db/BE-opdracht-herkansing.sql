-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 02 nov 2023 om 13:20
-- Serverversie: 5.7.36
-- PHP-versie: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backendtoets`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `instructeur`
--

DROP TABLE IF EXISTS `instructeur`;
CREATE TABLE IF NOT EXISTS `instructeur` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Voornaam` varchar(50) NOT NULL,
  `Tussenvoegsel` varchar(10) DEFAULT NULL,
  `Achternaam` varchar(50) NOT NULL,
  `Mobiel` varchar(12) NOT NULL,
  `DatumInDienst` date NOT NULL,
  `AantalSterren` varchar(6) NOT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerkingen` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DatumGewijzigd` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `instructeur`
--

INSERT INTO `instructeur` (`Id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mobiel`, `DatumInDienst`, `AantalSterren`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 'Li', '', 'Zhan', '06-28493827', '2015-04-17', '3', 1, NULL, '2023-11-01 20:11:52', '2023-11-01 20:11:52'),
(2, 'Leroy', '', 'Boerhaven', '06-39398734', '2018-06-25', '1', 1, NULL, '2023-11-01 20:11:52', '2023-11-01 20:11:52'),
(3, 'Yoeri', 'van', 'Veen', '06-24383291', '2010-05-12', '3', 1, NULL, '2023-11-01 20:11:52', '2023-11-01 20:11:52'),
(4, 'Bert', 'van', 'Sali', '06-48293823', '2023-01-10', '4', 1, NULL, '2023-11-01 20:11:52', '2023-11-01 20:11:52'),
(5, 'Mohammed', 'El', 'Yassidi', '06-34291234', '2010-06-14', '5', 1, NULL, '2023-11-01 20:11:52', '2023-11-01 20:11:52');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(12, '2023_11_01_193527_create_instructeur_table', 1),
(13, '2023_11_01_193527_create_typevoertuig_table', 1),
(14, '2023_11_01_193528_create_voertuig_table', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `typevoertuig`
--

DROP TABLE IF EXISTS `typevoertuig`;
CREATE TABLE IF NOT EXISTS `typevoertuig` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `TypeVoertuig` varchar(20) NOT NULL,
  `Rijbewijscategorie` varchar(5) NOT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerkingen` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `DatumGewijzigd` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `typevoertuig`
--

INSERT INTO `typevoertuig` (`Id`, `TypeVoertuig`, `Rijbewijscategorie`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 'Personenauto', 'B', 1, NULL, '2023-10-24 08:15:14.632066', '2023-10-24 08:15:14.632068'),
(2, 'Vrachtwagen', 'C', 1, NULL, '2023-10-24 08:15:14.632135', '2023-10-24 08:15:14.632135'),
(3, 'Bus', 'D', 1, NULL, '2023-10-24 08:15:14.632144', '2023-10-24 08:15:14.632144'),
(4, 'Bromfiets', 'AM', 1, NULL, '2023-10-24 08:15:14.632147', '2023-10-24 08:15:14.632147');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `voertuig`
--

DROP TABLE IF EXISTS `voertuig`;
CREATE TABLE IF NOT EXISTS `voertuig` (
  `Id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Kenteken` varchar(12) NOT NULL,
  `Type` varchar(20) NOT NULL,
  `Bouwjaar` date NOT NULL,
  `Brandstof` varchar(20) NOT NULL,
  `TypeVoertuigId` tinyint(3) UNSIGNED NOT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerkingen` varchar(250) DEFAULT NULL,
  `DatumAangemaakt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `DatumGewijzigd` timestamp(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`Id`),
  KEY `voertuig_typevoertuigid_foreign` (`TypeVoertuigId`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `voertuig`
--

INSERT INTO `voertuig` (`Id`, `Kenteken`, `Type`, `Bouwjaar`, `Brandstof`, `TypeVoertuigId`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 'AU-67-IO', 'Golf', '2017-06-12', 'Diesel', 1, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000'),
(2, 'TR-24-OP', 'DAF', '2019-05-23', 'Diesel', 2, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000'),
(3, 'TH-78-KL', 'Mercedes', '2023-01-01', 'Benzine', 1, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000'),
(4, '90-KL-TR', 'Fiat 500', '2021-09-12', 'Benzine', 1, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000'),
(5, '34-TK-LP', 'Scania', '2015-03-13', 'Diesel', 2, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000'),
(6, 'YY-OP-78', 'BMW M5', '2022-05-13', 'Diesel', 1, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000'),
(7, 'UU-HH-JK', 'M.A.N', '2017-12-03', 'Diesel', 2, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000'),
(8, 'ST-FZ-28', 'Citroën', '2018-01-20', 'Elektrisch', 1, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000'),
(9, '123-FR-T', 'Piaggio ZIP', '2021-02-01', 'Benzine', 4, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000'),
(10, 'DRS-52-P', 'Vespa', '2022-03-21', 'Benzine', 4, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000'),
(11, 'STP-12-U', 'Vespa', '2022-07-02', 'Benzine', 4, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000'),
(12, '45-SD-23', 'Renault', '2023-01-01', 'Diesel', 3, 1, NULL, '2023-11-01 20:19:19.000000', '2023-11-01 20:19:19.000000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
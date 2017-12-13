-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 13 Ara 2017, 17:47:35
-- Sunucu sürümü: 10.1.28-MariaDB
-- PHP Sürümü: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `filmapp`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `filmler`
--

CREATE TABLE `filmler` (
  `id` int(11) NOT NULL,
  `film_adi` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `film_afis` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yonetmen` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `olusturuldu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `film_uye`
--

CREATE TABLE `film_uye` (
  `id` int(11) NOT NULL,
  `uye_id` int(11) NOT NULL,
  `film_id` int(11) NOT NULL,
  `puan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `id` int(11) NOT NULL,
  `kategori_adi` varchar(72) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_ikon` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` int(11) NOT NULL,
  `username` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adi` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profil_resmi` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parola` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `filmler`
--
ALTER TABLE `filmler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `film_uye`
--
ALTER TABLE `film_uye`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kategoriler`
--
ALTER TABLE `kategoriler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `filmler`
--
ALTER TABLE `filmler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `film_uye`
--
ALTER TABLE `film_uye`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

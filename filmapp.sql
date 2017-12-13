-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 13 Ara 2017, 19:30:11
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
  `film_hakkinda` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `yonetmen` int(11) NOT NULL,
  `kategori` int(11) NOT NULL,
  `olusturuldu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `filmler`
--

INSERT INTO `filmler` (`id`, `film_adi`, `film_afis`, `film_hakkinda`, `yonetmen`, `kategori`, `olusturuldu`) VALUES
(1, 'Inception', 'https://www.warnerbros.com/sites/default/files/styles/key_art_270x400/public/inception_keyart.jpg?itok=7jXiglyb', 'Başlangıç (İng: Inception), Christopher Nolan tarafından yazılan ve yönetilen bilim kurgu türündeki ABD filmidir. 8 Temmuz 2010 tarihinde İngiltere prömiyeri yapılmıştır.[1] Film yayınlanmasından kısa bir süre sonra son 25 yılın en iyi filmleri arasında gösterilmiştir.', 1, 3, '2017-12-13 16:53:51'),
(2, 'Harry Potter', 'https://vignette.wikia.nocookie.net/harrypotter/images/9/9d/Harry-Potter-Wizarding-World-Weekly.jpg/revision/latest/scale-to-width-down/670?cb=20160914202759', 'Harry Potter, İngiliz yazar J.K. Rowling tarafından yedi kitap hâlinde yazılan fantastik roman serisi ve bu kitaplardan uyarlanan film serisi. Dünya çapında elde ettiği başarı ve yakaladığı satış rakamlarıyla çığır açmayı başarmış ve edebiyat tarihine geçmiştir. Harry Potter serisinin yedinci kitabı piyasaya çıktığı ilk gün ABD\'de 8,5 milyonun üzerinde bir satış rakamı yakalayarak erişilmesi güç bir rekora imza atmıştır', 2, 5, '2017-12-13 16:53:51'),
(5, 'Captain America', 'http://www.cizgiromanvadisi.com/images/haber/3477180.jpg', 'http://www.cizgiromanvadisi.com/images/haber/3477180.jpg', 3, 6, '2017-12-13 17:34:29');

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

--
-- Tablo döküm verisi `film_uye`
--

INSERT INTO `film_uye` (`id`, `uye_id`, `film_id`, `puan`) VALUES
(5, 1, 2, 8),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategoriler`
--

CREATE TABLE `kategoriler` (
  `id` int(11) NOT NULL,
  `kategori_adi` varchar(72) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_ikon` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kategoriler`
--

INSERT INTO `kategoriler` (`id`, `kategori_adi`, `kategori_ikon`) VALUES
(1, 'Korku', 'fa-book'),
(2, 'Gerilim', 'fa-book'),
(3, 'Aksiyon', 'fa-bomb'),
(4, 'Drama', 'fa-book'),
(5, 'Fantastik', 'fa-book'),
(6, 'Bilim Kurgu', 'fa-bolt'),
(7, 'Romantik', 'fa-book'),
(8, 'Komedi', 'fa-birthday-cake'),
(9, 'Biyografi', 'fa-book'),
(10, 'Animasyon', 'fa-book'),
(11, 'Yeşilçam', 'fa-book'),
(12, 'Polisiye', 'fa-cab');

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
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `username`, `adi`, `profil_resmi`, `parola`) VALUES
(1, 'gurkansen', 'Gürkan', 'https://pbs.twimg.com/profile_images/708037743599874048/FgiS8VxX_400x400.jpg', '123123');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `film_uye`
--
ALTER TABLE `film_uye`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `kategoriler`
--
ALTER TABLE `kategoriler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

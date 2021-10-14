-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 14 Eki 2021, 20:56:34
-- Sunucu sürümü: 10.4.19-MariaDB
-- PHP Sürümü: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ngsi_case`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `answer1` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `answer2` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `answer3` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `answer4` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `answer5` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `true_answer` varchar(200) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `answer5`, `true_answer`) VALUES
(1, 'Türkiye\'nin başkenti?', 'İstanbul', 'Bursa', 'Ankara', 'İzmir', 'Adana', 'Ankara'),
(3, '\"Yirmi iki milyon iki yüz kırk bin beş\"\r\n\r\nYukarıda okunuşu verilen doğal sayının yazılışı aşağıdakilerden hangisidir?', '22 024 005', '22 024 500', '22 240 005', '22 240 050', '22 244 050', '22 240 005'),
(4, '2, 8, 0, 5, 7, 1, 3 rakamları kullanılarak yazılabilecek en büyük doğal sayı aşağıdakilerden hangisidir?\r\n', '8 752 301', '8 753 102', '8 753 201', '8 753 210', '8 753 200', '8 753 210'),
(5, '5- 25 -  125  -   ?\r\n\r\nYukarıdaki örüntüde  ‘‘?’’  yerine  hangi sayı yazılmalıdır?\r\n', '625', '515', '325', '225', '125', '625'),
(6, 'Aşağıdaki cümlelerin hangisinde “de, da” bağlacı yanlış yazılmıştır?', 'Onunla tatilde de karşılaştık.', 'O kitabı ikimizde okumalıyız.', 'Kedilerimi de çok seviyorum.', 'O kadarını da sen düşünmelisin.', 'Seninle otobüste de karşılaştık.', 'O kitabı ikimizde okumalıyız.'),
(7, 'Aşağıdaki cümlelerden hangisinde “sıcak” kelimesi gerçek anlamıyla kullanılmıştır?', 'Kardeşini çok sıcak buldum.', 'Sıcakkanlı insanları severim.', 'Bu kadar sıcakken çorbayı içemem ki.', 'Annen bana çok sıcak davrandı.', 'Ona karşı sıcak hissetmiyorum.', 'Bu kadar sıcakken çorbayı içemem ki.'),
(8, 'Daha bir ballanır uyku\r\nÇocuklar kardeş oldu mu\r\nBarışır artık kurt kuzu\r\nÇocuklar kardeş oldu mu\r\nYukarıdaki dizelerin vermek istediği mesaj nedir?', 'Adalet', 'Saygı', 'Doğruluk', 'Barış', 'Dürüstlük', 'Doğruluk'),
(10, 'Hangi cümlede nokta işareti gereksiz kullanılmıştır?', '5. inci blokta oturuyoruz.', 'Dr. Alev Hanım’ı görecektim.', 'Tren, 9.15’te kalktı.', 'Kısa sürede 1. sıraya yükseldi.', 'Kısa sürede 10. sıraya yükseldi.', '5. inci blokta oturuyoruz.'),
(11, '21 – 22– 25 – 30 – ? örüntüde “?“ yerine hangi sayı gelmelidir?', '34', '35', '36', '37', '38', '37'),
(12, '817 959 sayısındaki 9 rakamlarının basamak değerleri farkı kaçtır?', '891', '810', '270', '0', '1', '891'),
(13, '605 748 doğal sayısının birler ve binler bölüğü yer değiştirdiğinde oluşan yeni sayının binler basamağındaki rakamın basamak değeri kaçtır?', '9000', '8000', '7000', '5000', '4000', '8000'),
(14, '217 978 doğal sayısında basamak değeri en küçük rakam hangisidir?', '1', '7', '8', '9', '10', '8'),
(15, '9- 26- 22- 39 – 35 – 52 – 48 – 67- 61\r\n\r\nYukarıdaki örüntüde kuralı bozan sayı hangisidir?\r\n', '39', '48', '52', '67', '26', '67'),
(16, '186 – 216 -  ?  - 276 – 306 \r\n\r\nÖrüntüye göre   ?   yerine aşağıdakilerden hangisi gelmelidir?\r\n', '316', '266', '256', '246', '236', '246'),
(17, '5 x 4 = ? işlemin sonucu nedir', '10', '11', '12', '13', '20', '20'),
(18, '12 / 3 = ? işlemin sonucu nedir ?', '1', '2', '3', '4', '5', '4'),
(19, '1. Havalar yine soğudu.\r\n2. Yeni gelenlere soğuk davranırdı.\r\n3. Bu soğukta dışarı çıkmamalısın.\r\n4. Soğuktan ellerim dondu.\r\n\r\nHangisinde “soğuk” sözcüğü mecaz anlamıyla kullanılmıştır?\r\n', '1', '2', '3', '4', '5', '2'),
(20, 'Aşağıdaki cümlelerin hangisine terim anlamlı sözcük bulunmamaktadır?', 'Annem yıkadığı perdeleri bana astırdı.', 'Öğretmenimiz üçgen çizmemizi istedi.', 'Sene sonunda sınıfça bir skeç hazırladık.', 'Ofsayt olduğu için gol geçersiz sayıldı.', 'Faul olduğu için gol geçersiz sayıldı.', 'Annem yıkadığı perdeleri bana astırdı.'),
(21, 'Aşağıdakilerin hangisinde “dönmek” sözcüğü geri gelmek anlamında kullanılmıştır?', 'Yatağında sabaha kadar dönüp durdu.', 'Bir anda bütün bakışlar bana doğru döndü', 'Ertesi gün aynı yoldan Bodrum’a döndük.', 'Yorgunluktan başım döndü.', 'Karışıklıktan tersim döndü.', 'Ertesi gün aynı yoldan Bodrum’a döndük.'),
(22, '“çıkmak” sözcüğü hangisinde “bir şeyin yukarısına doğru yürümek” anlamında kullanılmıştır?', 'Arkadaşıma piyango çıktı.', 'Bu sıcakta dik bir yokuş çıktık.', 'Bebeğin patiği çıktı.', 'Bu araştırmadan bir sonuç çıkmadı.', 'Ayakkabım çıktı.', 'Bu sıcakta dik bir yokuş çıktık.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `true_score_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `scores`
--

INSERT INTO `scores` (`id`, `score`, `true_score_count`) VALUES
(2, 3, 30),
(3, 2, 20),
(4, 1, 10),
(8, 8, 80),
(55, 2, 20),
(56, 1, 10),
(57, 1, 10),
(58, 2, 20),
(59, 10, 100);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

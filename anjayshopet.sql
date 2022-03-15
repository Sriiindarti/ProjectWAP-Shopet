-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2021 pada 19.08
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anjayshopet`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbarang`
--

CREATE TABLE `tbbarang` (
  `id` int(50) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `harga` int(50) NOT NULL,
  `stok` int(200) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `deskripsi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbbarang`
--

INSERT INTO `tbbarang` (`id`, `nama`, `kategori`, `harga`, `stok`, `gambar`, `deskripsi`) VALUES
(10, 'Royal Canin Puppy 85g', 'Dog food', 15000, 100, 'Anjing1.png', 'Royal Canin Wet Mini Puppy provides your pet with the energy needed for healthy growth'),
(11, 'Royal Canin Puppy 85g\r\n', 'Dog food', 15000, 100, 'Anjing2.png', 'Royal Canin Wet Mini Puppy provides your pet with the energy needed for healthy growth'),
(12, 'Pedigree Adult 3kg', 'Dog food', 110000, 100, 'Anjing3.png', 'Used to meet nutritional needs, and includes bone development, cleaning dog plaque and tartar. With a delicious taste of meat and vegetables'),
(13, 'Royal Canin Chihuahua 3kg', 'Dog food', 275000, 100, 'Anjing4.png', 'Helps support your puppy\'s natural defenses, especially thanks to a patented complex of antioxidants* including vitamin E\r\n'),
(20, 'Ebod Love Bird 450g', 'Bird food', 10000, 100, 'Burung1.png', 'Streamlining the digestive system, Boost immunity, Increase bird\'s stamina. Suitable for birds: Canary, anis, magpie, turtledove, etc.'),
(21, 'Balibu 500g', 'Bird food', 30000, 100, 'Burung2.png', 'For lovebirds under 5 months, feed right at the time of growth, making the growth of piyik good, healthy & big fast.'),
(22, 'Fancy Canary 500g', 'Bird food', 20000, 100, 'Burung3.png', 'Contains ingredients: Canary Seed, flax seed to Clear bird sounds,Good for bird growth,Optimize feather color'),
(23, 'Chirpy Seaweed 400g', 'Bird food', 8000, 100, 'Burung4.png', 'Made with selected ingredients, enriched with balanced nutrition, and combined with advanced technology'),
(30, 'Felibite 500g', 'Cats Food', 15000, 100, 'Kucing1.png', 'Enriched with omega 3 and 6 which helps improve the health of the cat\'s skin and coat'),
(31, 'Royal Canin Savour 1kg', 'Cat food', 113000, 100, 'kucing2.png', 'With two synergistic kibbles of different shapes, compositions and textures, Savor Exigent stimulates these cats\' natural preferences'),
(32, 'Whiskas 1.2kg', 'Cat food', 95000, 100, 'Kucing3.png', 'Very suitable for all types of cats, suitable for cats over the age of 12 months with the content of tuna flavor that is very liked by your favorite cat'),
(33, 'Bol Salmon 1kg', 'Cat food', 25000, 100, 'Kucing4.png', 'Formulated to meet the nutritional standards of the Cat Food Nutrition Profile approved by the AAFCO (Association of American Feed Control Officials)\r\n'),
(40, 'Takari Fish Food 500g', 'Fish food', 5000, 100, 'Ikan1.png', 'Complete and balanced nutritional content, with added vitamins and minerals such as fish meal, shrimp meal, soybean meal, vitamins'),
(41, 'Akari Maggot Pro 130gr', 'Fish food', 25000, 100, 'Ikan2.png', 'This feed contains 45% HIGH PROTEIN to promote fish growth and brighten the color of your fish scales.'),
(42, 'Hiro Koi Food 1kg', 'Fish food', 60000, 100, 'Ikan3.png', 'Is a feed for Koi fish with complete and balanced nutrition to stimulate growth, maintain color, and good shape of fish.'),
(43, 'Beta Vit Super 50g', 'Fish food', 5000, 100, 'Ikan4.png', 'complete pellets that have many benefits such as: Protein, extract, minerals, spirulina, calcium and stamina');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpembayaran`
--

CREATE TABLE `tbpembayaran` (
  `total` int(50) NOT NULL,
  `namaawal` varchar(255) NOT NULL,
  `namaakhir` varchar(255) NOT NULL,
  `emailform` varchar(255) NOT NULL,
  `notelp` int(15) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbtransaksi`
--

CREATE TABLE `tbtransaksi` (
  `idtransaksi` int(50) NOT NULL,
  `idbarang` int(50) NOT NULL,
  `iduser` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbtransaksi`
--

INSERT INTO `tbtransaksi` (`idtransaksi`, `idbarang`, `iduser`) VALUES
(15, 13, 2),
(17, 13, 2),
(24, 22, 1),
(28, 22, 4),
(29, 33, 4),
(30, 41, 4),
(32, 33, 1),
(33, 40, 1),
(34, 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `iduser` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`iduser`, `email`, `username`, `password`) VALUES
(1, 'lol', 'lol', 'lol'),
(2, 'qwe', 'qwe', 'qwe'),
(3, 'lala', 'lala', 'lala'),
(4, 'sriiindarti03@gmail.com', 'sricantik', '123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbbarang`
--
ALTER TABLE `tbbarang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbtransaksi`
--
ALTER TABLE `tbtransaksi`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indeks untuk tabel `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbbarang`
--
ALTER TABLE `tbbarang`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123126;

--
-- AUTO_INCREMENT untuk tabel `tbtransaksi`
--
ALTER TABLE `tbtransaksi`
  MODIFY `idtransaksi` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `iduser` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

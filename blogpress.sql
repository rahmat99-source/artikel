-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 08:43 AM
-- Server version: 8.0.30
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal_publish` date NOT NULL,
  `kategori_id` int NOT NULL,
  `isi_artikel` text COLLATE utf8mb4_general_ci NOT NULL,
  `cover` text COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int NOT NULL,
  `status_aktif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `tanggal_publish`, `kategori_id`, `isi_artikel`, `cover`, `user_id`, `status_aktif`) VALUES
(11, 'Makanan Sehat untuk Meningkatkan Imunitas di Musim Flu', '2024-10-01', 1, 'Artikel ini membahas makanan seperti jeruk, yogurt, dan sayuran hijau yang kaya akan vitamin dan mineral, serta cara-cara praktis untuk meningkatkan sistem kekebalan tubuh selama musim flu.', '4.jpeg', 1, 1),
(12, '5 Manfaat Olahraga Pagi bagi Kesehatan Mental', '2024-10-02', 1, 'Menjelaskan manfaat olahraga pagi, termasuk peningkatan mood, energi, dan fokus, serta tips untuk memulai rutinitas olahraga pagi yang efektif.', '2.jpeg', 1, 1),
(13, 'Teknik Relaksasi yang Efektif', '2024-10-03', 1, 'Artikel ini menawarkan berbagai teknik relaksasi, seperti meditasi, pernapasan dalam, dan yoga, untuk membantu mengurangi stres di kehidupan sehari-hari.', '3.jpeg', 1, 1),
(14, 'Pentingnya Tidur Berkualitas untuk Kesehatan', '2024-10-04', 1, 'Menyoroti hubungan antara tidur yang cukup dan kesehatan fisik serta mental, serta tips untuk meningkatkan kualitas tidur.', '5.jpeg', 1, 1),
(15, 'Makanan yang Harus Dihindari untuk Kesehatan Jantung', '2024-10-05', 1, 'Memaparkan makanan tinggi lemak jenuh, garam, dan gula yang dapat memengaruhi kesehatan jantung, serta alternatif sehat.', '1.jpeg', 1, 1),
(16, 'Inovasi Terkini dalam Dunia Kecerdasan Buatan', '2024-10-06', 2, 'Artikel ini membahas perkembangan terbaru dalam kecerdasan buatan, termasuk aplikasi dalam berbagai industri dan dampaknya terhadap kehidupan sehari-hari.', 'ai.jpeg', 1, 1),
(17, '5 Aplikasi Terbaik untuk Meningkatkan Produktivitas', '2024-10-07', 2, 'Ulasan tentang aplikasi seperti Trello, Notion, dan Todoist yang dapat membantu pengguna mengelola tugas dan waktu dengan lebih efisien.', 'aplikasi.jpg', 1, 1),
(18, 'Dampak Teknologi 5G pada Kehidupan Sehari-hari', '2024-10-08', 2, ' Menjelaskan bagaimana teknologi 5G akan mengubah cara kita berkomunikasi, bekerja, dan berinteraksi dengan perangkat.', '5g.jpg', 1, 1),
(19, 'Keamanan Cyber: Cara Melindungi Data Pribadi Anda', '2024-10-09', 2, 'Tips dan strategi untuk menjaga keamanan data pribadi di dunia digital, termasuk penggunaan password yang kuat dan perangkat lunak antivirus.', 'cyber.png', 1, 1),
(20, 'Gadget Wajib untuk Pelajar di Era Digital', '2024-10-10', 2, 'Rekomendasi gadget seperti laptop, tablet, dan aksesori yang dapat membantu pelajar dalam belajar dan berkolaborasi secara online.\r\n', 'gadjet.jpg', 1, 1),
(21, 'Resep Mudah: Nasi Goreng Spesial dalam 30 Menit', '2024-10-11', 3, 'Panduan langkah demi langkah untuk membuat nasi goreng spesial dengan bahan-bahan sederhana dan cara penyajian yang menarik.', 'nasgor.jpg', 1, 1),
(22, '5 Restoran Terbaik untuk Mencoba Masakan Tradisional', '2024-10-12', 3, 'Ulasan tentang restoran yang menyajikan masakan tradisional Indonesia yang wajib dicoba, beserta rekomendasi menu andalan.', 'makanan.jpg', 1, 1),
(23, 'Tips Memasak Sehat untuk Keluarga', '2024-10-13', 3, ' Artikel ini membahas cara memasak yang sehat, memilih bahan makanan, dan tips untuk menghindari penggunaan bahan tambahan yang tidak sehat.', 'maknan keluarga.jpg', 1, 1),
(24, 'Makanan Penutup Sederhana: Brownies Cokelat', '2024-10-14', 3, 'Resep mudah untuk membuat brownies cokelat yang lezat dan cara penyajiannya yang menggugah selera.', 'brownis.jpg', 1, 1),
(25, 'Menyelami Dunia Kopi: Dari Biji hingga Secangkir', '2024-10-15', 3, 'Penjelasan tentang proses pembuatan kopi, dari pemilihan biji hingga metode penyeduhan yang menghasilkan cita rasa terbaik.', 'Dari-Biji-Hingga-Secangkir-Nikmat.jpg', 1, 1),
(26, 'Destinasi Liburan Terbaik di Indonesia untuk 2024', '2024-10-16', 4, 'Menyoroti tempat-tempat wisata unggulan di Indonesia, termasuk pantai, gunung, dan tempat bersejarah yang wajib dikunjungi.', 'destinasi.jpg', 1, 1),
(27, 'Tips Traveling Hemat: Cara Menyusun Anggaran Liburan', '2024-10-17', 4, 'Strategi untuk merencanakan perjalanan dengan anggaran terbatas, termasuk tips menghemat biaya transportasi dan akomodasi.', 'Featured-image-Tanah-Barak-Beach-Bali-Indonesia-1244x700.jpg', 1, 1),
(28, 'Mengungkap Keindahan Alam Bali: Panduan Wisata', '2024-10-18', 4, 'Artikel ini memberikan panduan lengkap tentang tempat wisata menarik di Bali, mulai dari pantai hingga pura yang harus dikunjungi.', 'Banyuwangi.jpg', 1, 1),
(29, 'Rekomendasi Hotel Ramah Lingkungan di Asia Tenggara', '2024-10-19', 4, 'Daftar hotel yang menerapkan praktik ramah lingkungan dan berkelanjutan untuk wisatawan yang peduli terhadap lingkungan.', 'hotel.png', 1, 1),
(30, 'Menjelajahi Keajaiban Alam: Taman Nasional di Indonesia', '2024-10-20', 4, 'Ulasan tentang taman nasional yang kaya akan biodiversitas dan keindahan alam, serta aktivitas yang dapat dilakukan di sana.', 'liburan.jpg', 1, 1),
(31, 'Cara Mengatur Keuangan Pribadi untuk Pemula', '2024-10-21', 5, 'Panduan praktis untuk mengelola anggaran, menabung, dan menghindari utang bagi yang baru mulai belajar tentang keuangan.', 'keuangan.jpg', 1, 1),
(32, 'Investasi Saham: Langkah Awal untuk Pemula', '2024-10-22', 5, 'Menjelaskan dasar-dasar investasi saham, termasuk cara memilih saham yang baik dan strategi untuk memulai.', 'saham.jpg', 1, 1),
(33, 'Mengelola Utang: Strategi untuk Membebaskan Diri dari Beban Keuangan', '2024-10-23', 5, 'Tips dan langkah-langkah untuk mengelola dan melunasi utang secara efektif, serta cara menghindari utang di masa depan.', 'hutang.jpg', 1, 1),
(34, 'Perencanaan Pensiun: Menyusun Rencana Sejak Dini', '2024-10-24', 5, 'Pentingnya merencanakan pensiun sejak muda dan cara-cara untuk mengumpulkan dana pensiun yang cukup.', 'pensiun.jpg', 1, 1),
(35, 'Cryptocurrency: Investasi Masa Depan atau Spekulasi?', '2024-10-25', 5, 'Artikel ini membahas prospek dan risiko investasi cryptocurrency, serta panduan bagi yang tertarik untuk memulai.', 'bitcoin-etf-1.jpg', 1, 1),
(36, 'Strategi Menabung untuk Liburan Impian', '2024-10-26', 5, 'Artikel ini memberikan tips tentang cara menabung secara efektif untuk mewujudkan liburan impian, termasuk metode anggaran dan alat bantu tabungan.', 'impian.jpg', 1, 1),
(37, 'Memahami Asuransi: Jenis dan Manfaatnya', '2024-10-27', 5, 'Menjelaskan berbagai jenis asuransi (jiwa, kesehatan, properti) dan bagaimana memilih asuransi yang tepat untuk melindungi keuangan Anda.', 'Apa-itu-Asuransi-Manfaat-Jenis-Beserta-Contohnya.jpg', 1, 1),
(38, 'Investasi Properti: Apa yang Perlu Diketahui Sebelum Memulai', '2024-10-28', 5, 'Panduan lengkap tentang investasi properti, termasuk langkah-langkah awal, risiko yang harus diperhatikan, dan cara memaksimalkan keuntungan.', 'properti.jpg', 1, 1),
(39, 'Menghadapi Krisis Keuangan: Langkah-langkah yang Harus Diambil', '2024-10-29', 5, 'Tips dan strategi untuk mengatasi krisis keuangan, mulai dari pengelolaan anggaran hingga cara mencari sumber pendapatan tambahan.', 'krisis-keuangan.jpg', 1, 1),
(40, 'Reksadana: Investasi yang Tepat untuk Pemula', '2024-10-30', 5, 'Memperkenalkan reksadana sebagai pilihan investasi yang cocok untuk pemula, menjelaskan jenis-jenisnya, dan cara memilih reksadana yang sesuai dengan tujuan keuangan.', 'tipsuang.jpg', 1, 1),
(42, 'abc', '2024-11-01', 6, 'abc', '', 1, 1),
(43, 'Marmut', '2024-11-01', 6, 'abc', '', 1, 1),
(44, 'Tarzan The Jungle', '2024-11-02', 6, 'abcdefghijklmnopq', 'pepsi.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `article_id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `comment` text COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `article_id`, `name`, `comment`, `created_at`) VALUES
(1, 15, 'fajar', 'oke', '2024-11-01 19:05:26'),
(2, 12, 'fajar', 'bagus', '2024-11-01 19:08:08'),
(3, 11, 'abdul', 'oke', '2024-11-01 19:14:44'),
(4, 11, 'abdul', 'oke', '2024-11-01 19:16:13'),
(5, 14, 'rini', 'lagi bobo', '2024-11-01 19:16:42'),
(6, 11, 'Dudul', 'Mantap', '2024-11-05 02:16:45');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(1, ' Kesehatan dan Kebugaran'),
(2, 'Teknologi dan Gadget'),
(3, 'Kuliner dan Resep'),
(4, 'Traveling dan Destinasi'),
(5, 'Keuangan Pribadi dan Investasi'),
(6, 'Hewan Peliharaan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `nama_user` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama_user`, `email`, `password`, `is_admin`) VALUES
(1, 'admin123', 'admin@gmail.com', '123', 1),
(2, 'jordan123', 'jordan@gmail.com', '123', 0),
(3, 'micheal123', 'micheal@gmail.com', '123', 0),
(5, 'micky123', 'micky@gmail.com', '123', 0),
(6, 'miketyson123', 'tysonmike@gmail.com', '123', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
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
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artikel_ibfk_2` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `artikel` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

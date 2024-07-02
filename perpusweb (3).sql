-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2024 at 10:18 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(40) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `notelp` varchar(13) DEFAULT NULL,
  `jk` varchar(30) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `tgllahir` varchar(50) DEFAULT NULL,
  `umur` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `foto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_lengkap`, `notelp`, `jk`, `tempat`, `tgllahir`, `umur`, `alamat`, `foto`) VALUES
('A0001', 'Radhian Sobarna', '087754224567', 'Laki-laki', 'Sumedang', '04/23/2000', '20', 'Desa Sukatali, Kec Situraja', 'radhian.jpg'),
('A0002', 'Dhea Mawarni', '087827817289', 'Perempuan', 'Sumedang', '04/14/2000', '20', 'Desa Cihanja, Kec ganeas', 'dhea.jpg'),
('A0003', 'Heri Perdi', '089980089789', 'Laki-laki', 'Sumedang', '04/12/2000', '20', 'Sumedang', 'man.png'),
('A0004', 'Zidan Setiawan', '08965544319', 'Laki - Laki', 'Cinere', '09/19/2000', '20', 'Cinere', 'user.png'),
('A0005', 'Fandika Syarif', '089123657815', 'Laki-laki', 'Pamulang', '04/28/2000', '20', 'Pamulang', 'user.png'),
('A0006', 'Riva Cristine', '085783659012', 'Perempuan', 'Pamulang', '03/18/2000', '20', 'Pamulang', 'user.png'),
('A0007', 'Fachri Malaya', '08965544319', 'Laki-laki', 'Ciputat', '06/21/2000', '20', 'Ciputat', 'user.png'),
('A0008', 'Fitri Riyani', '09876556781', 'Perempuan', 'Pamulang', '05/13/2000', '20', 'Pamulang', 'user.png'),
('A0009', 'Khoirur Reza', '09865638763', 'Laki-laki', 'Pamulang', '10/09/2000', '20', 'Pamulang', 'user.png'),
('A0010', 'Azka Yusuf', '08567829702', 'Laki-laki', 'Bojongsari', '11/09/2000', '20', 'Bojongsari', 'user.png');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(20) DEFAULT NULL,
  `id_kategori` varchar(20) DEFAULT NULL,
  `id_penerbit` varchar(20) DEFAULT NULL,
  `id_rak` varchar(20) DEFAULT NULL,
  `judul` varchar(60) DEFAULT NULL,
  `pengarang` varchar(60) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `jmlhal` int(4) DEFAULT NULL,
  `jmlbuku` int(4) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  `foto` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `id_penerbit`, `id_rak`, `judul`, `pengarang`, `isbn`, `jmlhal`, `jmlbuku`, `tahun`, `sinopsis`, `foto`) VALUES
('B0001', 'K0001', 'P0002', 'Rak-01', 'Lancar JavaScript', 'Jubile Enterprice', '12345678', 140, 56, 2019, '-', 'lancar_javascript.jpg'),
('B0002', 'K0001', 'P0002', 'Rak-01', 'Belajar Otodidak CodeIgniter', 'Budi Raharjo', '12345679', 130, 61, 2020, '-', 'belajar_codeigniter.jpg'),
('B0003', 'K0001', 'P0002', 'Rak-01', 'Pro PHP & Jquery 7 Hari', 'WARDANA', '12345681', 100, 15, 2020, '-', 'web_profesional_dengan_php_jquery.jpg'),
('B0004', 'K0006', 'P0004', 'Rak-04', 'Otodidak Web Programming', 'Muhammad Ibnu Sa\'ad', '123523453424', 100, 25, 2019, '-', 'ID_OWP2020MTH01WP.jpg'),
('B0005', 'K0006', 'P0002', 'Rak-02', 'Buku Dasar-Dasar Teknik Informatika', 'Novega Pratama Adiputra', '978-623-02-0819-5', 120, 10, 2020, 'Di buku ini kamu akan berkenalan dan belajar tentang pengolahahan data, pemprosesan data, penyimpanan data, manipulasi data dan masih banyak lagi yang akan kamu pelajari di sana.', 'book2.png'),
('B0006', 'K0006', 'P0003', 'Rak-04', 'Buku Pengantar Teknologi Informasi', 'Buhori Muslim', '978-602-453-242-0', 102, 10, 2017, 'Sesuai dengan judulnya, maka buku pengantar teknologi ini memang dipergunakan untuk pembuka dalam mata kuliah dibeberapa jurusan. Mulai dari jurusan organisasi komputer, maintenance, kemanan, arsitektur komputer, sistem operasi, jaringan dan masih banyak lagi.', 'Pengantar-Teknologi-Informasi-depan1.jpg'),
('B0007', 'K0002', 'P0001', 'Rak-02', 'Asal Mula Terjadinya Alam Semesta, Galaksi, Tata Surya, dan ', 'Neil Degrasse Tyson & Donald Goldsmith', 'SCOOPG183076', 340, 5, 2019, 'Manusia berusaha mencari tahu asal mula dirinya dan segalanya sejak dulu. Penelitian sains telah mengungkapkan bahwa asal mula manusia bukan hanya dari Bumi, melainkan juga bintang-bintang dan alam semesta. Kisah asal mula kita merentang sampai awal waktu serta kelahiran ruang dan seluruh zat. Asal Mula menceritakan bagaimana terjadinya alam semsta, bintang-bintang, planet-planet, dan kehidupan berdasarkan temuan-temuan sains, yang menunjukan betapa megahnya kosmos dan bagaimana kedudukan kita di dalamnya.', '9786024812034_asal-mula.jpg'),
('B0008', 'K0002', 'P0004', 'Rak-02', 'Wabah Dan Pandemi', 'Meera Senthilingam', '9786024816315', 144, 3, 2021, '“Bagi yang panik atau bingung karena pandemi sekarang, buku ini menunjukkan dengan jelas riwayat perkembangan penyakit menular dan cara mengatasinya.\" — Kirkus.\r\nKini manusia di berbagai dunia harus hidup berdampingan dengan pandemi Covid-19. Sebenarnya selama berabad-abad manusia telah menghadapi berbagai penyakit menular yang telah menyebabkan banyak korban jiwa, bahkan memusnahkan sejumlah masyarakat, seperti cacar, campak, kusta, malaria, polio, HIV, hingga Covid-19. Melalui vaksin, obat, dan berbagai cara lain, kita berusaha mengendalikan dan berharap memberantas penyakit menular. Namun, penyakit menular tidak mudah dihadapi dan sering terjadi perbedaan pendapat di antara orang awam, di antara pakar, maupun antara orang awam dan pakar. Padahal ketidaktahuan atau bahkan kebebalan dalam menghadapi penyakit menular bisa tidak kalah mematikan dengan penyakit itu sendiri.\r\nBuku Wabah dan Pandemi karya Meera Senthilingam akan menyajikan tinjauan atas perjuangan manusia melawan penyakit menular hingga saat ini. Berikut penjelasan berbagai istilahnya seperti wabah, epidemi, pandemi, isolasi, kekebalan kelompok, dan lain-lain. Buku ini juga menjelaskan bahwa penanganan penyakit menular bukan hanya soal medis, melainkan juga aspek sejarah, politik, sosial, dan lain-lain. Di tengah dunia yang sedang diancam penyakit menular mematikan, buku ini menjadi pegangan jernih yang memberi wawasan dan harapan, membantu kita mengerti apa yang kita hadapi, dan cara kita menghadapinya selama ini.', 'book1.png'),
('B0009', 'K0002', 'P0002', 'Rak-02', 'Kimia Forensik', 'Prof. Riyanto, Ph. D', '9786236572245', 180, 2, 2021, 'Kebutuhan untuk memiliki keterampilan berkualitas untuk menyelidiki masalah membutuhkan pelatihan ahli dan profesional. Kimia forensik dan bidang terkait merupakan cara terbaik bagi siapapun yang ingin terjun ke masalah investigasi. Dalam ilmu forensik, kimia diketahui memainkan peran yang sangat diperlukan. Bukti yang dikumpulkan dari TKP dianalisis melalui penerapan pengetahuan spesialis kimia.\r\n\r\nPenggunaan keterampilan dan teknik belajar melalui kimia forensik sangat penting selama investigasi semacam itu. Ada berbagai bukti kimia yang dapat dikumpulkan dari TKP termasuk obat-obatan, serat, cat, atau bahkan pigmen. Ada kebutuhan untuk memiliki keterampilan analitis yang penting dan latar belakang kimia yang terkait sehingga bisa memahami bukti semacam itu secara rinci. BSc Forensik Kimia adalah program gelar yang ditawarkan di tingkat sarjana untuk membantu siswa memperoleh pengetahuan kimia dasar dan kemampuan analisis yang relevan untuk ilmu forensik.\r\n\r\nKimia forensik adalah aplikasi ilmu kimia dan sub-bidangnya, toksikologi forensik, dalam ranah hukum. Seorang kimiawan forensik dapat membantu identifikasi material yang tidak diketahui yang ditemukan di tempat kejadian perkara . Spesialis forensik dalam bidang ini memiliki sejumlah metode dan peralatan yang berbeda untuk membantu mengidentifikasi bahan yang belum diketahui. Rentang metode yang beragam menjadi penting karena sifat destruktif beberapa instrumen dan probabilitas jumlah zat yang tidak diketahui yang dapat ditemukan di TKP. Pekerjaan yang dilakukan oleh kimiawan forensik terikat pada seperangkat standar yang telah diatur oleh berbagai agen dan badan pengatur, termasuk Kelompok Kerja Analisis Obat Sitaan. Sebagai tambahan dalam prosedur operasi standar yang diajukan oleh kelompok kerja tersebut, agensi tertentu memiliki standar tersendiri terkait dengan jaminan mutu dan pengendalian mutu untuk hasil dan peralatan mereka.', 'img20210607_17484047.jpg'),
('B0010', 'K0007', 'P0002', 'Rak-03', 'Tentang Kamu', 'Tere Liye', '9786020822341', 524, 10, 2016, 'Novel Tentang Kamu merupakan novel yang menceritakan tentang Zaman Zulkarnaen yang harus menelusuri hidup seorang kliennya, perempuan pemegang paspor Inggris yang barusan meninggal dan mewariskan harta yang jumlahnya bisa menyaingi kekayaan Ratu Inggris. Tiga negara, lima kota, beribu luka. Hingga akhirnya Zaman mengerti, bahwa ini bukan sekadar perkara mengerti jalan hidup seorang klien, melainkan pengejawantahan prinsip kuat di tengah cobaan yang terus mendera.', '9786020822341_Tentang-Kamu.jpg'),
('B0011', 'K0007', 'P0003', 'Rak-03', 'Rembulan Tenggelam Di Wajahmu', 'Tere Liye', '9786239607449', 436, 4, 2021, 'Tutup mata kita. Tutup pikiran kita dari carut marut kehidupan. Mari berpikir takzim sejenak. Bayangkan saat ini ada satu malaikat bersayap indah datang kepada kita, lantas lembut berkata: \"Aku memberikan kau kesempatan hebat. Lima kesempatan untuk bertanya tentang rahasia kehidupan, dan aku akan menjawabnya langsung sekarang. Lima pertanyaan. Lima jawaban. Apakah pertanyaan pertamamu?\"', 'REMBULAN_TENGGELAM_DIWAJAHMU.jpg'),
('B0012', 'K0007', 'P0003', 'Rak-03', 'Negeri Para Bedebah', 'Tere Liye', '9786238829620', 433, 7, 2023, 'Tere liye dan karyanya selalu menjadi legenda. Sebagai salah satu penulis asli Indonesia yang paling rajin menduduki jajaran best seller, Tere Liye kembali menyajikan sebuah karya tulis dengan warna yang berbeda, Negeri Para Bedebah. Jika biasanya kita selalu melihat kisah-kisah romantis anak manusia, kali ini Tere Liye mengajak kita masuk ke dalam dunia baru yang jauh lebih luas melalui karyanya ini. dunia politik, ekonomi hingga hukum. Seperti biasa, tanpa tanggung-tanggung Tere Liye memberikan berbagai hasil penelusuran, pembelajaran dan ilmunya pada kita melalui setiap inci cerita untuk memberikan nuansa baru yang terasa amat nyata.', 'hwwjhrajpbdc4ctutxpzxa.jpg'),
('B0013', 'K0004', 'P0003', 'Rak-02', 'INSIGHT KSN Ekonomi SMA', 'Nurul Fauziyyah, M. Sc., CT', '9786020528694', 280, 3, 2022, 'Kompetisi Sains Nasional (KSN) atau yang sebelumnya dikenal dengan Olimpiade Sains Nasional (OSN) merupakan salah satu ajang kompetisi bagi siswa SD, SMP, dan SMA. KSN diselenggarakan dengan tujuan untuk memfasilitasi bakat, minat, dan prestasi peserta didik di bidang sains. Selain itu, Kompetisi Sains diharapkan mampu membentuk siswa berprestasi yang jujur, disiplin, sportif, tekun, kreatif, tangguh, dan cinta tanah air. Adapun bidang yang dilombakan dalam KSN untuk tingkat SMA, meliputi Matematika, Fisika, Kimia, Biologi, Astronomi, Informatika, Ekonomi, Geografi, dan Kebumian. KSN adalah bagian upaya Kemendikbud membina dan membekali peserta didik agar kelak punya kompetensi dan karakter yang unggul, dan mampu berkompetisi di lingkup global. KSN juga membentuk peserta menjadi Pelajar Pancasila yang bertakwa, berbudi luhur, dan bernalar kritis. Seleksi KSN sendiri akan dimulai dari tingkat sekolah, kabupaten/kota, provinsi, nasional, dan internasional.', 'book3.png'),
('B0014', 'K0004', 'P0004', 'Rak-01', 'Belajar Mudah Hiragana dan Katakana', 'Munawaroh', '9786238186013', 128, 5, 2023, 'Buku Belajar Mudah Hiragana dan Katakana adalah panduan utama yang harus dimiliki dalam koleksi buku-buku Anda untuk belajar bahasa Jepang sebagai pemula. Menyajikan hal-hal yang menarik untuk dimiliki segera karena semua yang Anda butuhkan cukup ada dalam satu buku ini.', 'blkwtprhie7gddgyyc3fbu.jpg'),
('B0015', 'K0004', 'P0002', 'Rak-01', 'Desain dan Implementasi Blended Learning, Integrasi Teknolog', 'Dr, Ulfia Rahmi, M.Pd. Dan Dr. Azrul, M.Pd', '9786230131295', 288, 16, 2023, 'Blended learning mulai dikenal setelah ditemukan kelemahan pada pertemuan tatap muka dan kelemahan pada online learning oleh Bersin pada penelitiannya tahun 2004. Selanjutnya, dikembangkan pembelajaran yang mengombinasikan pertemuan tatap muka dan online learning yang kemudian dikenal dengan istilah blended learning. Blended learning dikembangkan dengan berbagai model, yaitu face-to-face driver model, rotation model, flex model, online lab model, self-blend model, dan driver model online. Pada setiap model tersebut, metode diskusi masiv digunakan oleh pendidik dalam memfasilitasi pembelajar untuk menyelesaikan masalah dan meningkatkan keterampilan berpikir tingkat tinggi.', 'nxxew7ezjxxvwokcqsaz9z.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(20) DEFAULT NULL,
  `kategori` varchar(40) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `keterangan`) VALUES
('K0001', 'Programing', ''),
('K0002', 'Sains', ''),
('K0004', 'Pendidikan', ''),
('K0006', 'Informatika', ''),
('K0007', 'Novel', '');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` varchar(10) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `id_anggota` varchar(5) DEFAULT NULL,
  `tempo` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `usr_input` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `tgl_pinjam`, `id_anggota`, `tempo`, `status`, `ket`, `usr_input`) VALUES
('PJM0001', '2024-06-25', 'A0010', '2024-06-28', 'Pinjam', '', 'Admin'),
('PJM0002', '2024-06-25', '', '2024-06-28', 'Pinjam', '', 'Admin'),
('PJM0003', '2024-06-25', 'A0006', '2024-06-28', 'Pinjam', '', 'Admin'),
('PJM0004', '2024-06-25', 'A0009', '2024-06-28', 'Pinjam', '', 'Admin'),
('PJM0005', '2024-06-25', 'A0010', '2024-06-28', 'Pinjam', '', 'Azka yusuf');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(20) DEFAULT NULL,
  `penerbit` varchar(60) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `penerbit`, `keterangan`) VALUES
('P0001', 'Ria Ricis', ''),
('P0002', 'Boy William', ''),
('P0003', 'Radhian Sobarna', ''),
('P0004', 'Widi P', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengadaan`
--

CREATE TABLE `pengadaan` (
  `id_pengadaan` varchar(10) DEFAULT NULL,
  `id_buku` varchar(60) DEFAULT NULL,
  `asal_buku` varchar(60) DEFAULT NULL,
  `jml` int(4) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `tgl` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengadaan`
--

INSERT INTO `pengadaan` (`id_pengadaan`, `id_buku`, `asal_buku`, `jml`, `ket`, `tgl`) VALUES
('PNG0001', 'B0003', 'Sumedang', 5, '-', '2020-04-15'),
('PNG0002', 'B0002', 'Sumedang', 6, '-', '2020-04-22'),
('PNG0003', 'B0001', 'Sumedang', 6, '-', '2020-04-21'),
('PNG0004', 'B0004', 'Sumedang', 5, '-', '2020-09-15');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_kembali` int(10) NOT NULL,
  `tgl_kembali` varchar(20) DEFAULT NULL,
  `id_pinjam` varchar(20) DEFAULT NULL,
  `terlambat` varchar(15) DEFAULT NULL,
  `denda` varchar(15) DEFAULT NULL,
  `id_admin` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` varchar(20) NOT NULL,
  `nama` varchar(60) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `notelp` varchar(13) DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') DEFAULT NULL,
  `level` enum('Petugas','Anggota','Administrasi') DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `nama`, `email`, `pass`, `notelp`, `status`, `level`, `foto`) VALUES
('0004', 'Radhian Sobarna', 'radhiantsobarna@gmail.com', 'radhiant99', '087817379229', 'Tidak Aktif', 'Anggota', 'aeng.jpeg'),
('0005', 'Zidan setiawan', 'zidan@gmail.com', 'zinesta', '08965544319', 'Aktif', 'Anggota', 'user.png'),
('0006', 'Fandika syarif', 'fandika@gmail.com', 'dikaganteng', '089123657815', 'Aktif', 'Anggota', 'user.png'),
('0007', 'Riva cristine', 'riva@gmail.com', 'ripa123', '085783659012', 'Aktif', 'Anggota', 'user.png'),
('0008', 'Fachri malaya', 'fahri@gmail.com', 'fahri123', '08965544319', 'Tidak Aktif', 'Anggota', 'user.png'),
('0009', 'Fitri riyani', 'fitri@gmail.com', 'fitri123', '09876556781', 'Tidak Aktif', 'Anggota', 'user.png'),
('0010', 'Khoirur Reza', 'reza@gmail.com', 'reza123', '09865638763', 'Aktif', 'Anggota', 'user.png'),
('0011', 'Azka yusuf', 'azka@gmail.com', 'azka123', '08567829702', 'Aktif', 'Anggota', 'user.png'),
('U0001', 'Admin', 'admin@gmail.com', 'admin123', '087892878222', 'Aktif', 'Administrasi', 'user.png'),
('U0003', 'Dhea Mawarni', 'dhea@gmail.com', 'petugas123', '087892871888', 'Aktif', 'Petugas', 'dhea.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `p_buku`
--

CREATE TABLE `p_buku` (
  `id_pbuku` int(5) NOT NULL,
  `id_pinjam` varchar(50) DEFAULT NULL,
  `id_buku` varchar(50) DEFAULT NULL,
  `qty` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rak`
--

CREATE TABLE `rak` (
  `id_rak` varchar(20) DEFAULT NULL,
  `rak` varchar(60) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rak`
--

INSERT INTO `rak` (`id_rak`, `rak`, `keterangan`) VALUES
('Rak-01', 'Khusus Pemula', ''),
('Rak-02', 'Khusus Pelajar', ''),
('Rak-03', 'Sastra', ''),
('Rak-04', 'Coding', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_kembali`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `p_buku`
--
ALTER TABLE `p_buku`
  ADD PRIMARY KEY (`id_pbuku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_kembali` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `p_buku`
--
ALTER TABLE `p_buku`
  MODIFY `id_pbuku` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

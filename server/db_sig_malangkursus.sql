-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jan 2020 pada 17.18
-- Versi Server: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sig_malangkursus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `geometry_columns`
--

CREATE TABLE `geometry_columns` (
  `F_TABLE_CATALOG` varchar(256) DEFAULT NULL,
  `F_TABLE_SCHEMA` varchar(256) DEFAULT NULL,
  `F_TABLE_NAME` varchar(256) NOT NULL,
  `F_GEOMETRY_COLUMN` varchar(256) NOT NULL,
  `COORD_DIMENSION` int(11) DEFAULT NULL,
  `SRID` int(11) DEFAULT NULL,
  `TYPE` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `geometry_columns`
--

INSERT INTO `geometry_columns` (`F_TABLE_CATALOG`, `F_TABLE_SCHEMA`, `F_TABLE_NAME`, `F_GEOMETRY_COLUMN`, `COORD_DIMENSION`, `SRID`, `TYPE`) VALUES
(NULL, NULL, 'puskesmas1', 'SHAPE', 2, 1, 'POINT'),
(NULL, NULL, 'rs', 'SHAPE', 2, 1, 'POINT'),
(NULL, NULL, 'dokter', 'SHAPE', 2, 1, 'POINT'),
(NULL, NULL, 'apotek', 'SHAPE', 2, 1, 'POINT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursus`
--

CREATE TABLE `kursus` (
  `label` varchar(30) NOT NULL,
  `nama_tabel` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kursus`
--

INSERT INTO `kursus` (`label`, `nama_tabel`, `icon`) VALUES
('Kursus Mengemudi', 'kursus_mengemudi', 'circle (1).png'),
('Kursus Musik', 'kursus_musik', 'circle (2).png'),
('Kursus Bola', 'kursus_bola', 'circle (3).png'),
('Kursus Akademik', 'kursus_akademik', 'circle (4).png'),
('Kursus Komputer', 'kursus_komputer', 'circle (5).png'),
('Kursus Menjahit', 'kursus_menjahit', 'circle (6).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursus_akademik`
--

CREATE TABLE `kursus_akademik` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `website` text NOT NULL,
  `tarif` varchar(50) NOT NULL,
  `keterangan_tarif` text,
  `fasilitas` text NOT NULL,
  `keterangan_fasilitas` text,
  `jadwal` varchar(50) NOT NULL,
  `keterangan_jadwal` text,
  `operasional` text NOT NULL,
  `keterangan_operasional` text,
  `kapasitas` varchar(50) NOT NULL,
  `keterangan_kapasitas` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kursus_akademik`
--

INSERT INTO `kursus_akademik` (`id`, `nama`, `kategori`, `alamat`, `lat`, `long`, `no_telpon`, `website`, `tarif`, `keterangan_tarif`, `fasilitas`, `keterangan_fasilitas`, `jadwal`, `keterangan_jadwal`, `operasional`, `keterangan_operasional`, `kapasitas`, `keterangan_kapasitas`) VALUES
(1, 'Les Privat Malang CSI Edu', 'Kursus Akademik', 'Jl. Danau Limboto A5K4, Sawojajar, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', -7.966687, 112.661977, '0851-0369-0103', 'lesprivatsekolahmalang.blogspot.com', '', NULL, '', NULL, '', NULL, 'Senin 07.30?17.00\nSelasa 07.30?17.00\nRabu 07.30?17.00\nKamis 07.30?17.00\nJumat 07.30?17.00\n', NULL, '', NULL),
(2, 'LBB Gold Generation (G2)', 'Kursus Akademik', 'Gg. Manunggal, Jl. Panglima Sudirman No.10, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', -7.975701, 112.637843, '0812-3288-2205', 'http://bimbelgoldgeneration.blogspot.com/', '', NULL, '', NULL, '', NULL, 'Senin 08.00?16.00\nSelasa 08.0?16.00\nRabu 08.00?16.00\nKamis 08.00?16.00\nJumat 08.00?16.00\nSabtu 08.00?16.00\n', NULL, '', NULL),
(3, 'Sandi Privat', 'Kursus Akademik', 'Jl. Simpang Bogor, Sumbersari, Kec. Klojen, Kota Malang, Jawa Timur 65145', -7.960048, 112.61987, '0813-5797-2228', '', '', NULL, '', NULL, '', NULL, 'Senin 08.00?16.00\nSelasa 08.0?16.00\nRabu 08.00?16.00\nKamis 08.00?16.00\nJumat 08.00?16.00\nSabtu 08.00?16.00\n', NULL, '', NULL),
(4, 'Kursus Bahasa Inggris EF', 'Kursus Akademik', 'Jl. Merbabu No.38, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65112', -7.965899, 112.625706, '1500 553', 'https://www.ef.co.id', '', NULL, '', NULL, '', NULL, 'Senin 09.00?16.00\nSelasa 09.0?16.00\nRabu 09.00?16.00\nKamis 09.00?16.00\nJumat 09.00?16.00\nSabtu 09.00?16.00\n', NULL, '', NULL),
(5, 'Bimbel One Smart', 'Kursus Akademik', 'perum graha pelita asri blok A no 22, Samaan, Kec. Klojen, Kota Malang, Jawa Timur 65149', -7.966633, 112.632635, '0857-3166-3111', '', '', NULL, '', NULL, '', NULL, 'Senin 14.00?20.00\nSelasa 14.0?20.00\nRabu 14.00?20.00\nKamis 14.00?20.00\nJumat 14.00?20.00\nSabtu 14.00?20.00\n', NULL, '', NULL),
(6, 'Bimbingan Belajar BLT', 'Kursus Akademik', 'Jl. Kahuripan No.16, 3, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', -7.976332, 112.631214, '(0341) 347108', '', '', NULL, '', NULL, '', NULL, 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', NULL, '', NULL),
(7, 'Neutron Yogyakarta', 'Kursus Akademik', 'Jl. Ronggo Warsito No.15, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', -7.976777, 112.63632, '(0341) 368223', '', '', NULL, '', NULL, '', NULL, 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', NULL, '', NULL),
(8, 'Avicenna - Private Lessons', 'Kursus Akademik', 'Jl. Ikan Tombro Barat, Puri Kartika Asri (Perum Puskopad) no D7, Tasikmadu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', -7.921333, 112.631017, '0812-3330-9365', '', '', NULL, '', NULL, '', NULL, 'Senin 09.00?16.00\nSelasa 09.0?16.00\nRabu 09.00?16.00\nKamis 09.00?16.00\nJumat 09.00?16.00\nSabtu 09.00?16.00\n', NULL, '', NULL),
(9, 'Mayantara School', 'Kursus Akademik', 'Jl. Puncak Mandala No.40A, Pisang Candi, Kec. Sukun, Kota Malang, Jawa Timur 65146', -7.964912, 112.604773, '(0341) 5081465', 'mayantara.sch.id', '', NULL, '', NULL, '', NULL, 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', NULL, '', NULL),
(10, 'SBS Malang', 'Kursus Akademik', 'Jl. Kepundung No.34a, Bareng, Kec. Klojen, Kota Malang, Jawa Timur 65116', -7.976133, 112.614616, '0856-4975-5952', 'sbsmalang.or.id', '', NULL, '', NULL, '', NULL, 'Senin 10.00?16.00\nSelasa 10.0?16.00\nRabu 10.00?16.00\nKamis 10.00?16.00\nJumat 10.00?16.00\nSabtu 10.00?16.00\n', NULL, '', NULL),
(11, 'Rumah Ilmu', 'Kursus Akademik', 'Jl. Gajayana No.1 No. 783, Dinoyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144', -7.946366, 112.609177, '0812-5249-017', '', '', NULL, '', NULL, '', NULL, 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', NULL, '', NULL),
(12, 'English Hut', 'Kursus Akademik', 'Jl. Dempo No.10, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65112', -7.968978, 112.620825, '0822-4470-2244', '', '', NULL, '', NULL, '', NULL, 'Senin 09.00?16.00\nSelasa 09.0?16.00\nRabu 09.00?16.00\nKamis 09.00?16.00\nJumat 09.00?16.00\nSabtu 09.00?16.00\n', NULL, '', NULL),
(13, 'Karisma Academy', 'Kursus Akademik', 'Jl. Watu Gong No.18, Ketawanggede, Kec. Lowokwaru, Kota Malang, Jawa Timur 65145', -7.948042, 112.611771, '0857-3144-4767', 'karisma-academy.business.site', '', NULL, '', NULL, '', NULL, 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', NULL, '', NULL),
(14, 'KBA UMM', 'Kursus Akademik', 'Jl. Bandung, RT.No.1/RW.3, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65113', -7.962241, 112.624547, '0878-5999-6123', 'kba.umm.ac.id', '', NULL, '', NULL, '', NULL, 'Senin 09.00?16.00\nSelasa 09.0?16.00\nRabu 09.00?16.00\nKamis 09.00?16.00\nJumat 09.00?16.00\nSabtu 09.00?16.00\n', NULL, '', NULL),
(15, 'Malang International School', 'Kursus Akademik', 'Jl. Kendalsari No.8A, Tulusrejo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', -7.944828, 112.626219, '0812-1604-0588', 'mislanguageschool.com', '', NULL, '', NULL, '', NULL, 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', NULL, '', NULL),
(16, 'Ganesha Operation', 'Kursus Akademik', 'Jl. Bandung No.18, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65113', -7.9613, 112.6239, '(0341) 573922', 'ganesha-operation.com', '', NULL, '', NULL, '', NULL, 'Senin 10.00?16.00\nSelasa 10.0?16.00\nRabu 10.00?16.00\nKamis 10.00?16.00\nJumat 10.00?16.00\nSabtu 10.00?16.00\n', NULL, '', NULL),
(17, 'LIA Malang', 'Kursus Akademik', 'Jl. Bandung No.1A, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65113', -7.962187, 112.62535, '(0341) 569822', 'liamalang.com', '', NULL, '', NULL, '', NULL, 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', NULL, '', NULL),
(18, 'LBB INTELLIGENT SMART SCHOOL (ISS)', 'Kursus Akademik', 'Jl. Brigjend Slamet Riadi No.154-B, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65119', -7.963477, 112.627137, '0852-3169-8927', '', '', NULL, '', NULL, '', NULL, 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', NULL, '', NULL),
(19, 'SONIC CLASS', 'Kursus Akademik', 'Perumahan Taman Janti Blok H No.3, Sukun, Gadang, Kec. Sukun, Kota Malang, Jawa Timur 65149', -8.008902, 112.62547, '0878-5917-0206', 'sonicclass.blogspot.com', '', NULL, '', NULL, '', NULL, 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursus_bola`
--

CREATE TABLE `kursus_bola` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `website` text NOT NULL,
  `tarif` varchar(50) NOT NULL,
  `keterangan_tarif` text,
  `fasilitas` text NOT NULL,
  `keterangan_fasilitas` text,
  `jadwal` varchar(50) NOT NULL,
  `keterangan_jadwal` text,
  `operasional` text NOT NULL,
  `keterangan_operasional` text,
  `kapasitas` varchar(50) NOT NULL,
  `keterangan_kapasitas` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kursus_bola`
--

INSERT INTO `kursus_bola` (`id`, `nama`, `kategori`, `alamat`, `lat`, `long`, `no_telpon`, `website`, `tarif`, `keterangan_tarif`, `fasilitas`, `keterangan_fasilitas`, `jadwal`, `keterangan_jadwal`, `operasional`, `keterangan_operasional`, `kapasitas`, `keterangan_kapasitas`) VALUES
(1, 'SSB Mitra Malang', 'Kursus Bola', 'Jl. Lap. Brawijaya No.39, Kesatrian, Kec. Blimbing, Kota Malang, Jawa Timur 65126', -7.971527, 112.640431, '(0341) 9857840', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(2, 'SSB Mulyorejo', 'Kursus Bola', 'JL. Mulyorejo, Sukun, Mulyorejo, Kec. Sukun, Kota Malang, Jawa Timur 65147', -7.986292, 112.599268, '(0341) 5456653', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(3, 'SSB Brazil Style Football', 'Kursus Bola', 'JL. Tlogomas, Dinoyo, Babatan, Tegalgondo, Kec. Karang Ploso, Malang, Jawa Timur 65144', -7.923321, 112.600117, '0856-4937-4098', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(4, 'SSB Tunjung Sekar', 'Kursus Bola', 'Jl. Ikan Piranha No.191, Tunjungsekar, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', -7.931851, 112.637294, '(0341) 9520878', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(5, 'SSB Halilintar', 'Kursus Bola', 'Jl. Bareng Raya, Bareng, Kec. Klojen, Kota Malang, Jawa Timur 65116', -7.980702, 112.622236, '(0341) 5342740', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(6, 'SSB UMM', 'Kursus Bola', 'Jl. Pekalongan No.10, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65113', -7.962107, 112.623009, '0811-360-323', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(7, 'SSB Unibraw', 'Kursus Bola', 'JL. Watu Jajar, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65143', -7.933416, 112.624451, '(0341) 572483', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(8, 'FORUM SEKOLAH SEPAK BOLA MALANG RAYA', 'Kursus Bola', 'Jl. Raya Langsep Gedung graha PWI Dieng No.2D, Bareng, Kec. Klojen, Kota Malang, Jawa Timur 65149', -7.97926, 112.613214, '(0341) 7757071', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(9, 'SSB STIEMARA', 'Kursus Bola', 'Jl. Tumapel No.2, RW.3, Kauman, Kec. Klojen, Kota Malang, Jawa Timur 65119', -7.978016, 112.631772, '(0341) 8658059', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(10, 'SSB Putra Arema', 'Kursus Bola', 'Jl. Lap. Rampal, Kesatrian, Kec. Blimbing, Kota Malang, Jawa Timur', -7.972207, 112.64159, '0852-9807-8165', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(11, 'SSB Mahaputra', 'Kursus Bola', 'Pertokoan Rampal, JL. Panglima Sudirman, Kesatrian, Kec. Blimbing, Kota Malang, Jawa Timur', -7.972319, 112.638859, '0816-554-690', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(12, 'SSB Putra Dewa', 'Kursus Bola', 'Jl. Mergan, Tanjungrejo, Kec. Sukun, Kota Malang, Jawa Timur 65147', -7.986234, 112.613026, '(0341) 3789808', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(13, 'SSB Providencia', 'Kursus Bola', 'Jl. R. Tumenggung Suryo, Rampal Celaket, Kec. Blimbing, Kota Malang, Jawa Timur 65111', -7.965584, 112.639355, '(0341) 9857840', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(14, 'SSB Sinarmas', 'Kursus Bola', 'JL Penisium II, Turen, Tanjungrejo, Kec. Sukun, Kota Malang, Jawa Timur 65147, Indonesia', -7.983908, 112.612639, '(0341) 9255444', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(15, 'SSB Tunas Bangsa', 'Kursus Bola', 'JL. Lowokdoro, Gadang, Kebonsari, Kec. Sukun, Kota Malang, Jawa Timur 65149', -8.024656, 112.62693, '(0341) 8658699', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(16, 'SSB Young Panzer', 'Kursus Bola', 'JL. Sebuku, Purwantoro, Bunulrejo, Kec. Blimbing, Kota Malang, Jawa Timur 65126', -7.965258, 112.646196, '(0341) 7700205', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(17, 'SSB Cobra', 'Kursus Bola', 'Jl. Cengger Ayam No.14, RW.02, Tulusrejo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', -7.94767, 112.631637, '(0341) 3152176', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(18, 'ASIFA - Aji Santoso International Football Academy', 'Kursus Bola', 'Kompleks, Lapangan Mojolangu, Griya Shanta Blk. J, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', -7.934966, 112.619215, '(0341) 489001', 'https://asifa.co.id/', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Kerja', 'Selasa        08.00–16.00\nRabu        08.00–16.00\nKamis        08.00–16.00\nJumat        08.00–16.00\nSabtu        08.00–16.00\nMinggu        Tutup\nSenin        08.00–16.00', 'Kelas', '-'),
(19, 'SSB Galaxy', 'Kursus Bola', 'Jl. Diponegoro No.7a, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', -7.96991, 112.634017, '0858-5387-9155', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Hari Libur', '-', 'Kelas', '-'),
(20, 'Tempat Pendaftaran SSB Arema Licek', 'Kursus Bola', 'Jl. Pelabuhan Tj. Emas No.192, Bakalankrajan, Kec. Sukun, Kota Malang, Jawa Timur 65148', -8.000028, 112.601896, '(0341) 8401931', '-', '-', '-', 'Tidak ada', '-', 'Pagi', '-', 'Setiap Hari', 'Selasa       07.00–15.00\nRabu         07.00–15.00\nKamis       07.00–15.00\nJumat       07.00–15.00\nSabtu        07.00–15.00\nMinggu      07.00–15.00\nSenin        07.00–15.00', 'Kelas', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursus_komputer`
--

CREATE TABLE `kursus_komputer` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `website` text NOT NULL,
  `tarif` varchar(50) NOT NULL,
  `keterangan_tarif` text,
  `fasilitas` text NOT NULL,
  `keterangan_fasilitas` text,
  `jadwal` varchar(50) NOT NULL,
  `keterangan_jadwal` text,
  `operasional` text NOT NULL,
  `keterangan_operasional` text,
  `kapasitas` varchar(50) NOT NULL,
  `keterangan_kapasitas` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kursus_komputer`
--

INSERT INTO `kursus_komputer` (`id`, `nama`, `kategori`, `alamat`, `lat`, `long`, `no_telpon`, `website`, `tarif`, `keterangan_tarif`, `fasilitas`, `keterangan_fasilitas`, `jadwal`, `keterangan_jadwal`, `operasional`, `keterangan_operasional`, `kapasitas`, `keterangan_kapasitas`) VALUES
(1, 'Kursus Komputer Malang', 'Kursus Komputer', 'Perum Dirgantara, Jl. Dirgantara I No.12 A, Lesanpuro, Kec. Kedungkandang, Kota Malang, Jawa Timur 65138, Indonesia', -7.9830347, 112.6453049, '(0341) 3789808', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Pagi', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '-'),
(2, 'LKP CITRA KOMPUTER KOTA MALANG', 'Kursus Komputer', 'Jl. Guntur No.33, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65112, Indonesia', -7.968293, 112.6271461, '(0341) 9857840', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Pagi', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '-'),
(3, 'Karisma Academy', 'Kursus Komputer', 'Jl. Watu Gong No.18, Ketawanggede, Kec. Lowokwaru, Kota Malang, Jawa Timur 65145, Indonesia', -7.9481978, 112.6095927, '(0341) 9255444', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Siang', '-', 'Setiap Hari', 'Selasa	09.00–20.00\r\nRabu	09.00–20.00\r\nKamis	09.00–20.00\r\nJumat	09.00–20.00\r\nSabtu	09.00–20.00\r\nMinggu	09.00–20.00\r\nSenin	09.00–20.00', 'Kelas', '-'),
(4, 'Solid Education Center', 'Kursus Komputer', 'Jl. Letjend S. Parman No.4, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65126, Indonesia', -7.9550056, 112.6364289, '(0341) 8658699', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Siang', '-', 'Setiap Hari', 'Selasa	09.00–20.00\r\nRabu	09.00–20.00\r\nKamis	09.00–20.00\r\nJumat	09.00–20.00\r\nSabtu	09.00–20.00\r\nMinggu	09.00–20.00\r\nSenin	09.00–20.00', 'Kelas', '-'),
(5, 'Kursus Komputer Malang', 'Kursus Komputer', 'Jl. Watu Gong No.18 A, Ketawanggede, Kec. Lowokwaru, Kota Malang, Jawa Timur 65145, Indonesia', -7.9481978, 112.6030267, '(0341) 3789808', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Siang', '-', 'Setiap Hari', 'Selasa	09.00–20.00\r\nRabu	09.00–20.00\r\nKamis	09.00–20.00\r\nJumat	09.00–20.00\r\nSabtu	09.00–20.00\r\nMinggu	09.00–20.00\r\nSenin	09.00–20.00', 'Kelas', '-'),
(6, 'Kursus Komputer Teknik & Bahasa NEC', 'Kursus Komputer', 'Jl danau bratan timur I blok H5C4 Sawojajar, Madyopuro, Kota Malang, Jawa Timur 65139, Indonesia', -7.9777684, 112.665491, '(0341) 9857840', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Pagi', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '-'),
(7, 'Hope Computer Training Center', 'Kursus Komputer', 'Pusat Grosir Matahari, Jl. Kyai Tamin Blok A No.30, Sukoharjo, Kec. Klojen, Kota Malang, Jawa Timur 65118, Indonesia', -7.9777669, 112.6326599, '(0341) 9255444', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Pagi', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '-'),
(8, 'Interaktif Pusat Pendidikan Komputer Anak', 'Kursus Komputer', 'Jl. Welirang No.20a, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65119, Indonesia', -7.977652, 112.6253336, '(0341) 8658699', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Siang', '-', 'Setiap Hari', 'Selasa	09.00–20.00\r\nRabu	09.00–20.00\r\nKamis	09.00–20.00\r\nJumat	09.00–20.00\r\nSabtu	09.00–20.00\r\nMinggu	09.00–20.00\r\nSenin	09.00–20.00', 'Kelas', '-'),
(9, 'Kursus Komputer Kilat Malang', 'Kursus Komputer', 'Jl. Sapudi No.5, Kasin, Kec. Klojen, Kota Malang, Jawa Timur 65117, Indonesia', -7.9776519, 112.6187675, '(0341) 3789808', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Siang', '-', 'Setiap Hari', 'Selasa	09.00–20.00\r\nRabu	09.00–20.00\r\nKamis	09.00–20.00\r\nJumat	09.00–20.00\r\nSabtu	09.00–20.00\r\nMinggu	09.00–20.00\r\nSenin	09.00–20.00', 'Kelas', '-'),
(10, 'SKOMTEK MALANG', 'Kursus Komputer', 'Jl. T.G.P. No.1, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65112, Indonesia', -7.964409, 112.6231553, '(0341) 9857840', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Pagi', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '-'),
(11, 'Ganeca', 'Kursus Komputer', 'Jl. Kertosentono No.68, Ketawanggede, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144, Indonesia', -7.948757, 112.6018773, '(0341) 9255444', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Pagi', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '-'),
(12, 'Siluet Computer Professional', 'Kursus Komputer', 'JL. Kertosentono, 96-A, 65113, Ketawanggede, Kec. Lowokwaru, Kota Malang, Jawa Timur 65145, Indonesia', -7.9485416, 112.6016265, '(0341) 8658699', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Pagi', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '-'),
(13, 'Interaktif Komputer', 'Kursus Komputer', 'Jl. Welirang No.20 A, RW.3, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65119, Indonesia', -7.9644089, 112.6165892, '(0341) 3789808', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Pagi', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '-'),
(14, 'Lembaga Pendidikan Komputer Kosayu', 'Kursus Komputer', 'Jl. Borobudur No.8A, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142, Indonesia', -7.9399543, 112.6294944, '(0341) 9857840', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Siang', '-', 'Setiap Hari', 'Selasa	09.00–20.00\r\nRabu	09.00–20.00\r\nKamis	09.00–20.00\r\nJumat	09.00–20.00\r\nSabtu	09.00–20.00\r\nMinggu	09.00–20.00\r\nSenin	09.00–20.00', 'Kelas', '-'),
(15, 'Inhuaschool', 'Kursus Komputer', 'Jalan Mayor Jenderal DI Panjaitan No 7 Kav 6, Penanggungan, Malang, Malang City, East Java 65113, Indonesia', -7.9644089, 112.6165892, '(0341) 9255444', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Pagi', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '-'),
(16, 'Paradise Computer Course', 'Kursus Komputer', 'Jl. Tlogo Suryo III No.10, Tlogomas, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144, Indonesia', -7.9363, 112.5909223, '(0341) 8658699', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Pagi', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '-'),
(17, 'Brawijaya Computer Education', 'Kursus Komputer', 'JL. Soekarno Hatta D/5-7 Lt 265141, Jatimulyo, Lowokwaru, Malang City, East Java 65141, Indonesia', -7.941445, 112.6133553, '(0341) 3789808', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Siang', '-', 'Setiap Hari', 'Selasa	09.00–20.00\r\nRabu	09.00–20.00\r\nKamis	09.00–20.00\r\nJumat	09.00–20.00\r\nSabtu	09.00–20.00\r\nMinggu	09.00–20.00\r\nSenin	09.00–20.00', 'Kelas', '-'),
(18, 'Bellcom Computer Palace', 'Kursus Komputer', 'Jl. Kahuripan No.1865119, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111, Indonesia', -7.9644089, 112.6165892, '(0341) 9857840', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Siang', '-', 'Setiap Hari', 'Selasa	09.00–20.00\r\nRabu	09.00–20.00\r\nKamis	09.00–20.00\r\nJumat	09.00–20.00\r\nSabtu	09.00–20.00\r\nMinggu	09.00–20.00\r\nSenin	09.00–20.00', 'Kelas', '-'),
(19, 'Nacita Training Center', 'Kursus Komputer', 'Jl. Gajayana Gg. II No.675b, RT.04/RW.02, Dinoyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144, Indonesia', -7.9443785, 112.6003804, '(0341) 9255444', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Pagi', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '-'),
(20, 'Edu Media Nusantara. PT', 'Kursus Komputer', 'JL Mayjen Panjaitan, No. 91 E, Penanggungan, Malang, Kota Malang, Jawa Timur 65113, Indonesia', -7.952926, 112.6106813, '(0341) 8658699', '-', '-', '-', 'Ada', 'WIFI, Buku', 'Siang', '-', 'Setiap Hari', 'Selasa	09.00–20.00\r\nRabu	09.00–20.00\r\nKamis	09.00–20.00\r\nJumat	09.00–20.00\r\nSabtu	09.00–20.00\r\nMinggu	09.00–20.00\r\nSenin	09.00–20.00', 'Kelas', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursus_mengemudi`
--

CREATE TABLE `kursus_mengemudi` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `website` text NOT NULL,
  `tarif` varchar(50) NOT NULL,
  `keterangan_tarif` text,
  `fasilitas` text NOT NULL,
  `keterangan_fasilitas` text,
  `jadwal` varchar(50) NOT NULL,
  `keterangan_jadwal` text,
  `operasional` text NOT NULL,
  `keterangan_operasional` text,
  `kapasitas` varchar(50) NOT NULL,
  `keterangan_kapasitas` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kursus_mengemudi`
--

INSERT INTO `kursus_mengemudi` (`id`, `nama`, `kategori`, `alamat`, `lat`, `long`, `no_telpon`, `website`, `tarif`, `keterangan_tarif`, `fasilitas`, `keterangan_fasilitas`, `jadwal`, `keterangan_jadwal`, `operasional`, `keterangan_operasional`, `kapasitas`, `keterangan_kapasitas`) VALUES
(1, 'Kursus Mengemudi ADHI', 'Kursus Mengemudi Mobil', 'JL. Danau Ranau III, Blok G I/A3, Sawojajar, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', -7.9674653, 112.647747, '(0341) 7700433', '-', '-', '-', 'Tidak Ada', '-', '-', '-', '-', '-', 'Privat', '1 Orang'),
(2, 'Kursus Mengemudi AZIZ', 'Kursus Mengemudi Mobil', 'Jl. Trunojoyo, Kiduldalem, Kec. Klojen, Kota Malang, Jawa Timur 65119', -7.9671698, 112.6333361, '0812-3292-897', 'http://kursusmengemudiaziz.com/', 'Paket', 'Paket Dasar Manual 2 x 90 menit Rp 250.000,-;Paket Dasar Manual 3 x 90 menit Rp 375.000,-;Paket Dasar Manual 4 x 90 menit Rp 500.000,-;Paket Dasar Manual 5 x 90 menit Rp 625.000,-;Paket Dasar Manual 7 x 90 menit Rp 750.000,-;', 'Ada', 'Materi Pelajaran lengkap (Ada Buku Panduan), Instruktur Tetap (Instruktur bisa sesuai dengan permintaan / By request), Jadwal Belajar Fleksibel (Sabtu, Minggu & hari libur tetap buka), Bebas Pilih Armada, Bisa Antar Jemput, BBM Tidak Dibatasi, Tepat Waktu dan Durasi Waktu Belajar Utuh', 'Pagi', '-', 'Setiap Hari', 'Senin        07.30–17.00\nSelasa        07.30–17.00\nRabu        07.30–17.00\nKamis        07.30–17.00\nJumat        07.30–17.00\nSabtu        07.30–17.00\nMinggu        07.30–17.00', 'Privat', '1 Orang'),
(3, 'Kursus Mengemudi AZIZ', 'Kursus Mengemudi Mobil', 'Jl. Danau Toba No.22, Lesanpuro, Kec. Kedungkandang, Kota Malang, Jawa Timur 65139', -7.9684501, 112.6374883, '(0341) 717099', 'http://kursusmengemudiaziz.com/', 'Paket', 'Paket Dasar Manual 2 x 90 menit Rp 250.000,-;Paket Dasar Manual 3 x 90 menit Rp 375.000,-;Paket Dasar Manual 4 x 90 menit Rp 500.000,-;Paket Dasar Manual 5 x 90 menit Rp 625.000,-;Paket Dasar Manual 7 x 90 menit Rp 750.000,-;', 'Ada', 'Materi Pelajaran lengkap (Ada Buku Panduan), Instruktur Tetap (Instruktur bisa sesuai dengan permintaan / By request), Jadwal Belajar Fleksibel (Sabtu, Minggu & hari libur tetap buka), Bebas Pilih Armada, Bisa Antar Jemput, BBM Tidak Dibatasi, Tepat Waktu dan Durasi Waktu Belajar Utuh', 'Pagi', '-', 'Setiap Hari', 'Selasa	07.30–17.00\r\nRabu	07.30–17.00\r\nKamis	07.30–17.00\r\nJumat	07.30–17.00\r\nSabtu	07.30–17.00\r\nMinggu	07.30–17.00\r\nSenin	07.30–17.00', 'Privat', '1 Orang'),
(4, 'Kursus Mengemudi AZIZ', 'Kursus Mengemudi Mobil', 'Jl. Mayjend. Panjaitan No.20, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65113', -7.9556767, 112.6150723, '0812-3292-897', 'http://kursusmengemudiaziz.com/', 'Paket', 'Paket Dasar Manual 2 x 90 menit Rp 250.000,-;Paket Dasar Manual 3 x 90 menit Rp 375.000,-;Paket Dasar Manual 4 x 90 menit Rp 500.000,-;Paket Dasar Manual 5 x 90 menit Rp 625.000,-;Paket Dasar Manual 7 x 90 menit Rp 750.000,-;', 'Ada', 'Materi Pelajaran lengkap (Ada Buku Panduan), Instruktur Tetap (Instruktur bisa sesuai dengan permintaan / By request), Jadwal Belajar Fleksibel (Sabtu, Minggu & hari libur tetap buka), Bebas Pilih Armada, Bisa Antar Jemput, BBM Tidak Dibatasi, Tepat Waktu dan Durasi Waktu Belajar Utuh', 'Pagi', '-', 'Setiap Hari', 'Selasa	07.30–17.00\r\nRabu	07.30–17.00\r\nKamis	07.30–17.00\r\nJumat	07.30–17.00\r\nSabtu	07.30–17.00\r\nMinggu	07.30–17.00\r\nSenin	07.30–17.00', 'Privat', '1 Orang'),
(5, 'Kursus Mengemudi AZIZ', 'Kursus Mengemudi Mobil', 'Jl. Bogor No.26, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65145', -7.9556767, 112.6150723, '0812-3292-897', 'http://kursusmengemudiaziz.com/', 'Paket', 'Paket Dasar Manual 2 x 90 menit Rp 250.000,-;Paket Dasar Manual 3 x 90 menit Rp 375.000,-;Paket Dasar Manual 4 x 90 menit Rp 500.000,-;Paket Dasar Manual 5 x 90 menit Rp 625.000,-;Paket Dasar Manual 7 x 90 menit Rp 750.000,-;', 'Ada', 'Materi Pelajaran lengkap (Ada Buku Panduan), Instruktur Tetap (Instruktur bisa sesuai dengan permintaan / By request), Jadwal Belajar Fleksibel (Sabtu, Minggu & hari libur tetap buka), Bebas Pilih Armada, Bisa Antar Jemput, BBM Tidak Dibatasi, Tepat Waktu dan Durasi Waktu Belajar Utuh', 'Pagi', '-', 'Setiap Hari', 'Selasa	07.30–17.00\r\nRabu	07.30–17.00\r\nKamis	07.30–17.00\r\nJumat	07.30–17.00\r\nSabtu	07.30–17.00\r\nMinggu	07.30–17.00\r\nSenin	07.30–17.00', 'Privat', '1 Orang'),
(6, 'Kursus Mengemudi AZIZ', 'Kursus Mengemudi Mobil', 'Jl. Tirto Joyo, Merjosari, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144', -7.9556756, 112.5772256, '0812-3292-897', 'http://kursusmengemudiaziz.com/', 'Paket', 'Paket Dasar Manual 2 x 90 menit Rp 250.000,-;Paket Dasar Manual 3 x 90 menit Rp 375.000,-;Paket Dasar Manual 4 x 90 menit Rp 500.000,-;Paket Dasar Manual 5 x 90 menit Rp 625.000,-;Paket Dasar Manual 7 x 90 menit Rp 750.000,-;', 'Ada', 'Materi Pelajaran lengkap (Ada Buku Panduan), Instruktur Tetap (Instruktur bisa sesuai dengan permintaan / By request), Jadwal Belajar Fleksibel (Sabtu, Minggu & hari libur tetap buka), Bebas Pilih Armada, Bisa Antar Jemput, BBM Tidak Dibatasi, Tepat Waktu dan Durasi Waktu Belajar Utuh', 'Pagi', '-', 'Setiap Hari', 'Selasa	07.30–17.00\r\nRabu	07.30–17.00\r\nKamis	07.30–17.00\r\nJumat	07.30–17.00\r\nSabtu	07.30–17.00\r\nMinggu	07.30–17.00\r\nSenin	07.30–17.00', 'Privat', '1 Orang'),
(7, 'Kursus Mengemudi CIPONDOH', 'Kursus Mengemudi Mobil', 'Gadang Gg. 19 No.2, Gadang, Kec. Sukun, Kota Malang, Jawa Timur 65149', -7.985816, 112.6262503, '(0341) 801870', '-', '-', '-', 'Tidak Ada', '-', '', '-', '-', '-', 'Privat', '1 Orang'),
(8, 'Kursus Mengemudi DEVHAS', 'Kursus Mengemudi Mobil', 'Jln teluk Bayur 2 rt:03/rw:08, Pandanwangi, Kec. Blimbing, Kota Malang, Jawa Timur 65125', -7.950492, 112.6459779, '0895-3223-56562', 'https://kursusmengemudidevhas.business.site/', '-', '-', 'Tidak Ada', '-', 'Pagi', '-', 'Setiap Hari', 'Selasa	06.00–20.00\r\nRabu	06.00–20.00\r\nKamis	06.00–20.00\r\nJumat	06.00–20.00\r\nSabtu	06.00–20.00\r\nMinggu	06.00–20.00\r\nSenin	06.00–20.00', 'Privat', '1 Orang'),
(9, 'Kursus Mengemudi LANCAR 28', 'Kursus Mengemudi Mobil', 'Jl. Terusan Sulfat No.3, Pandanwangi, Kec. Blimbing, Kota Malang, Jawa Timur 65124', -7.9589224, 112.6477831, '0878-0066-2828', 'http://kursusmengemudimurahlancar28.blogspot.com/', '-', '-', 'Tidak Ada', '-', 'Siang', '-', 'Setiap Hari', 'Selasa	08.00–20.00\r\nRabu	08.00–20.00\r\nKamis	08.00–20.00\r\nJumat	08.00–20.00\r\nSabtu	08.00–20.00\r\nMinggu	08.00–20.00\r\nSenin	08.00–20.00', 'Privat', '1 Orang'),
(10, 'Kursus Mengemudi LANCAR 28', 'Kursus Mengemudi Mobil', 'Jl. Bandung No.4, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65111', -7.9663603, 112.6190805, '0878-0066-2828', 'https://kursusmengemudilancar28.business.site/', '-', '-', 'Tidak Ada', '-', 'Siang', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '1 Orang'),
(11, 'Kursus Mengemudi NATUNA', 'Kursus Mengemudi Mobil', 'Depan Mc. Donals Kayutangan, Jl. Brigjend Slamet Riadi No.2a, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65119', -7.9681227, 112.6199612, '0823-3188-6990', 'https://business.google.com/website/kantor-pusat-kursus-mengemudi-natuna', 'Paket', 'Paket Dasar Manual 10 x 45 menit Rp 650.000,-;Paket Dasar Matic 10 x 45 menit Rp 725.000,-;Paket Dasar Mix (Manual - Matic) 12 x 45 menit Rp 650.000,-', 'Ada', 'Materi diajarkan sangat detail, Instruktur berpengalaman dan Sabar, Jam belajar bebas, menyesuaikan siswa, Biaya kursus mengemudi bisa diangsur, Mobil full AC, Antar jemput, 1 mobil 1 siswa 1 instruktur', 'Pagi', '-', 'Hari Kerja', 'Selasa	06.00–17.00\r\nRabu	06.00–17.00\r\nKamis	06.00–17.00\r\nJumat	06.00–17.00\r\nSabtu	06.00–17.00\r\nMinggu	Tutup\r\nSenin	06.00–17.00', 'Privat', '1 Orang'),
(12, 'Kursus Mengemudi NATUNA', 'Kursus Mengemudi Mobil', 'Jl. Mayjend. Panjaitan No.6, Samaan, Kec. Klojen, Kota Malang, Jawa Timur 65113', -7.9556767, 112.6150723, '0857-4843-0302', 'https://business.google.com/website/kantor-pusat-kursus-mengemudi-natuna', 'Paket', 'Paket Dasar Manual 10 x 45 menit Rp 650.000,-;Paket Dasar Matic 10 x 45 menit Rp 725.000,-;Paket Dasar Mix (Manual - Matic) 12 x 45 menit Rp 650.000,-', 'Ada', 'Materi diajarkan sangat detail, Instruktur berpengalaman dan Sabar, Jam belajar bebas, menyesuaikan siswa, Biaya kursus mengemudi bisa diangsur, Mobil full AC, Antar jemput, 1 mobil 1 siswa 1 instruktur', 'Pagi', '-', 'Setiap Hari', 'Selasa	06.00–17.00\r\nRabu	06.00–17.00\r\nKamis	06.00–17.00\r\nJumat	06.00–17.00\r\nSabtu	06.00–16.00\r\nMinggu	08.00–15.00\r\nSenin	06.00–17.00', 'Privat', '1 Orang'),
(13, 'Kursus Mengemudi NATUNA', 'Kursus Mengemudi Mobil', 'Jl. Raya Tlogomas No.10, Tlogomas, Kec. Lowokwaru, Kota Malang, Jawa Timur 65144', -7.9464253, 112.5911189, '0815-5635-550', 'https://business.google.com/website/kantor-pusat-kursus-mengemudi-natuna', 'Paket', 'Paket Dasar Manual 10 x 45 menit Rp 650.000,-;Paket Dasar Matic 10 x 45 menit Rp 725.000,-;Paket Dasar Mix (Manual - Matic) 12 x 45 menit Rp 650.000,-', 'Ada', 'Materi diajarkan sangat detail, Instruktur berpengalaman dan Sabar, Jam belajar bebas, menyesuaikan siswa, Biaya kursus mengemudi bisa diangsur, Mobil full AC, Antar jemput, 1 mobil 1 siswa 1 instruktur', '', '-', 'Hari Kerja', 'Selasa        08.00–16.00\nRabu        08.00–16.00\nKamis        08.00–16.00\nJumat        08.00–16.00\nSabtu        08.00–16.00\nMinggu        Tutup\nSenin        08.00–16.00', 'Privat', '1 Orang'),
(14, 'Kursus Mengemudi NATUNA', 'Kursus Mengemudi Mobil', 'Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65119', -7.9681227, 112.6199612, '-', 'https://business.google.com/website/kantor-pusat-kursus-mengemudi-natuna', 'Paket', 'Paket Dasar Manual 10 x 45 menit Rp 650.000,-;Paket Dasar Matic 10 x 45 menit Rp 725.000,-;Paket Dasar Mix (Manual - Matic) 12 x 45 menit Rp 650.000,-', 'Ada', 'Materi diajarkan sangat detail, Instruktur berpengalaman dan Sabar, Jam belajar bebas, menyesuaikan siswa, Biaya kursus mengemudi bisa diangsur, Mobil full AC, Antar jemput, 1 mobil 1 siswa 1 instruktur', '', '-', 'Hari Kerja', 'Selasa        08.00–16.00\nRabu        08.00–16.00\nKamis        08.00–16.00\nJumat        08.00–16.00\nSabtu        08.00–16.00\nMinggu        Tutup\nSenin        08.00–16.00', 'Privat', '1 Orang'),
(15, 'Kursus Mengemudi NATUNA', 'Kursus Mengemudi Mobil', 'Jl. Kawi No.22, Kauman, Kec. Klojen, Kota Malang, Jawa Timur 65116', -7.9684498, 112.6176274, '(0341) 581647', 'http://kursusmengemudinatuna.com/', 'Paket', 'Paket Dasar Manual 10 x 45 menit Rp 650.000,-;Paket Dasar Matic 10 x 45 menit Rp 725.000,-;Paket Dasar Mix (Manual - Matic) 12 x 45 menit Rp 650.000,-', 'Ada', 'Materi diajarkan sangat detail, Instruktur berpengalaman dan Sabar, Jam belajar bebas, menyesuaikan siswa, Biaya kursus mengemudi bisa diangsur, Mobil full AC, Antar jemput, 1 mobil 1 siswa 1 instruktur', 'Siang', '-', 'Hari Kerja', 'Selasa        08.00–16.00\nRabu        08.00–16.00\nKamis        08.00–16.00\nJumat        08.00–16.00\nSabtu        08.00–16.00\nMinggu        Tutup\nSenin        08.00–16.00', 'Privat', '1 Orang'),
(16, 'Kursus Mengemudi NATUNA', 'Kursus Mengemudi Mobil', 'Jl. Ranugrati No.31, Polehan, Kec. Blimbing, Kota Malang, Jawa Timur', -7.9683699, 112.6401884, '(0341) 328229', 'http://kursusmengemudinatuna.com/', 'Paket', 'Paket Dasar Manual 10 x 45 menit Rp 650.000,-;Paket Dasar Matic 10 x 45 menit Rp 725.000,-;Paket Dasar Mix (Manual - Matic) 12 x 45 menit Rp 650.000,-', 'Ada', 'Materi diajarkan sangat detail, Instruktur berpengalaman dan Sabar, Jam belajar bebas, menyesuaikan siswa, Biaya kursus mengemudi bisa diangsur, Mobil full AC, Antar jemput, 1 mobil 1 siswa 1 instruktur', 'Siang', '-', 'Hari Kerja', 'Selasa	08.00–16.00\r\nRabu	08.00–16.00\r\nKamis	08.00–16.00\r\nJumat	08.00–16.00\r\nSabtu	08.00–16.00\r\nMinggu	Tutup\r\nSenin	08.00–16.00', 'Privat', '1 Orang'),
(17, 'Kursus Mengemudi PRIVATE', 'Kursus Mengemudi Mobil', 'Jl. Mayjend. Panjaitan No.30A, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65113', -7.9554877, 112.6476174, '0811-3005-200', 'http://www.kursusmengemudiprivate.com/', 'Paket', 'Paket Pemula Manual Executive 12 x 45 menit Rp 780.000,-;Paket Pemula Manual Executive 10 x 45 menit Rp 680.000,-;Paket Pelancaran Manual Executive 8 x 45 menit Rp 575.000,-;Paket Pelancaran Executive 6 x 45 menit Rp 475.000,-;Paket Pemula Matic Executive 10 x 45 menit Rp 725.000,-;Paket Pemula Matic Executive 8 x 45 menit Rp 625.000,-;Paket Pelancaran Matic Executive 6 x 45 menit Rp 525.000,-;Paket Pelancaran Matic Executive 4 x 45 menit Rp 425.000,-', 'Ada', 'Bebas BBM (Tidak Dijatah), Bebas Pilih Mobil, Jadwal Belajar Fleksibel, Durasi Utuh, Gratis Biaya Penjemputan, Gratis Jika Kecewa\n', 'Pagi', '-', 'Setiap Hari', 'Senin        07.30–17.00\nSelasa        07.30–17.00\nRabu        07.30–17.00\nKamis        07.30–17.00\nJumat        07.30–17.00\nSabtu        07.30–17.00\nMinggu        07.30–17.00', 'Privat', '1 Orang'),
(18, 'Kursus Mengemudi PRIVATE', 'Kursus Mengemudi Mobil', 'Jl. Gadang Jl. Gadang Gg. VIII No.1, Gadang, Kec. Sukun, Kota Malang, Jawa Timur 65149', -7.9836665, 112.6267994, '(0341) 350500', 'https://kursusmengemudiprivate.business.site/', 'Paket', 'Paket Pemula Manual Executive 12 x 45 menit Rp 780.000,-;Paket Pemula Manual Executive 10 x 45 menit Rp 680.000,-;Paket Pelancaran Manual Executive 8 x 45 menit Rp 575.000,-;Paket Pelancaran Executive 6 x 45 menit Rp 475.000,-;Paket Pemula Matic Executive 10 x 45 menit Rp 725.000,-;Paket Pemula Matic Executive 8 x 45 menit Rp 625.000,-;Paket Pelancaran Matic Executive 6 x 45 menit Rp 525.000,-;Paket Pelancaran Matic Executive 4 x 45 menit Rp 425.000,-', 'Ada', 'Bebas BBM (Tidak Dijatah), Bebas Pilih Mobil, Jadwal Belajar Fleksibel, Durasi Utuh, Gratis Biaya Penjemputan, Gratis Jika Kecewa\n', 'Pagi', '-', 'Setiap Hari', 'Selasa	06.00–17.00\r\nRabu	06.00–17.00\r\nKamis	06.00–17.00\r\nJumat	06.00–17.00\r\nSabtu	06.00–17.00\r\nMinggu	06.00–17.00\r\nSenin	06.00–17.00', 'Privat', '1 Orang'),
(19, 'Kursus Mengemudi PRIVATE', 'Kursus Mengemudi Mobil', 'Jl. Cengger Ayam No.3, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65141', -7.9545781, 112.6301205, '0813-3332-8868', 'http://www.kursusmengemudiprivate.com/', 'Paket', 'Paket Pemula Manual Executive 12 x 45 menit Rp 780.000,-;Paket Pemula Manual Executive 10 x 45 menit Rp 680.000,-;Paket Pelancaran Manual Executive 8 x 45 menit Rp 575.000,-;Paket Pelancaran Executive 6 x 45 menit Rp 475.000,-;Paket Pemula Matic Executive 10 x 45 menit Rp 725.000,-;Paket Pemula Matic Executive 8 x 45 menit Rp 625.000,-;Paket Pelancaran Matic Executive 6 x 45 menit Rp 525.000,-;Paket Pelancaran Matic Executive 4 x 45 menit Rp 425.000,-', 'Ada', 'Bebas BBM (Tidak Dijatah), Bebas Pilih Mobil, Jadwal Belajar Fleksibel, Durasi Utuh, Gratis Biaya Penjemputan, Gratis Jika Kecewa\n', 'Siang', '-', 'Setiap Hari', 'Selasa	08.00–22.00\r\nRabu	08.00–22.00\r\nKamis	08.00–22.00\r\nJumat	08.00–22.00\r\nSabtu	08.00–22.00\r\nMinggu	08.00–22.00\r\nSenin	08.00–22.00', 'Privat', '1 Orang'),
(20, 'Kursus Mengemudi PRIVATE', 'Kursus Mengemudi Mobil', 'Jl. Perusahaan Raya No.15, Bodosari, Tanjungtirto, Kec. Singosari, Malang, Jawa Timur 65153', -7.9554877, 112.6476174, '(0341) 402703', 'https://kursus-mengemudi-private-driving-school.business.site/', 'Paket', 'Paket Pemula Manual Executive 12 x 45 menit Rp 780.000,-;Paket Pemula Manual Executive 10 x 45 menit Rp 680.000,-;Paket Pelancaran Manual Executive 8 x 45 menit Rp 575.000,-;Paket Pelancaran Executive 6 x 45 menit Rp 475.000,-;Paket Pemula Matic Executive 10 x 45 menit Rp 725.000,-;Paket Pemula Matic Executive 8 x 45 menit Rp 625.000,-;Paket Pelancaran Matic Executive 6 x 45 menit Rp 525.000,-;Paket Pelancaran Matic Executive 4 x 45 menit Rp 425.000,-', 'Ada', 'Bebas BBM (Tidak Dijatah), Bebas Pilih Mobil, Jadwal Belajar Fleksibel, Durasi Utuh, Gratis Biaya Penjemputan, Gratis Jika Kecewa\n', 'Siang', '-', 'Setiap Hari', 'Selasa	08.00–18.00\r\nRabu	08.00–18.00\r\nKamis	08.00–18.00\r\nJumat	08.00–18.00\r\nSabtu	08.00–18.00\r\nMinggu	08.00–18.00\r\nSenin	08.00–18.00', 'Privat', '1 Orang'),
(21, 'Kursus Mengemudi PRIVATE', 'Kursus Mengemudi Mobil', 'Jl. K.H. Hasyim Ashari No.30, Kauman, Kec. Klojen, Kota Malang, Jawa Timur 65119', -7.9697292, 112.6205098, '0816-551-753', 'http://www.kursusmengemudiprivate.com/', 'Paket', 'Paket Pemula Manual Executive 12 x 45 menit Rp 780.000,-;Paket Pemula Manual Executive 10 x 45 menit Rp 680.000,-;Paket Pelancaran Manual Executive 8 x 45 menit Rp 575.000,-;Paket Pelancaran Executive 6 x 45 menit Rp 475.000,-;Paket Pemula Matic Executive 10 x 45 menit Rp 725.000,-;Paket Pemula Matic Executive 8 x 45 menit Rp 625.000,-;Paket Pelancaran Matic Executive 6 x 45 menit Rp 525.000,-;Paket Pelancaran Matic Executive 4 x 45 menit Rp 425.000,-', 'Ada', 'Bebas BBM (Tidak Dijatah), Bebas Pilih Mobil, Jadwal Belajar Fleksibel, Durasi Utuh, Gratis Biaya Penjemputan, Gratis Jika Kecewa\n', 'Siang', '-', 'Setiap Hari', 'Selasa	08.00–16.00\r\nRabu	08.00–16.00\r\nKamis	08.00–16.00\r\nJumat	08.00–16.00\r\nSabtu	08.00–16.00\r\nMinggu	08.00–16.00\r\nSenin	08.00–16.00', 'Privat', '1 Orang'),
(22, 'Kursus Mengemudi PRIVATE', 'Kursus Mengemudi Mobil', 'Jl. Mayjen.M.Wiyono, Kesatrian, Kec. Blimbing, Kota Malang, Jawa Timur 65126', -7.9672858, 112.6377889, '(0341) 753916', 'http://www.kursusmengemudiprivate.com/', 'Paket', 'Paket Pemula Manual Executive 12 x 45 menit Rp 780.000,-;Paket Pemula Manual Executive 10 x 45 menit Rp 680.000,-;Paket Pelancaran Manual Executive 8 x 45 menit Rp 575.000,-;Paket Pelancaran Executive 6 x 45 menit Rp 475.000,-;Paket Pemula Matic Executive 10 x 45 menit Rp 725.000,-;Paket Pemula Matic Executive 8 x 45 menit Rp 625.000,-;Paket Pelancaran Matic Executive 6 x 45 menit Rp 525.000,-;Paket Pelancaran Matic Executive 4 x 45 menit Rp 425.000,-', 'Ada', 'Bebas BBM (Tidak Dijatah), Bebas Pilih Mobil, Jadwal Belajar Fleksibel, Durasi Utuh, Gratis Biaya Penjemputan, Gratis Jika Kecewa\n', 'Siang', '-', 'Hari Kerja', 'Selasa	09.00–17.00\r\nRabu	09.00–17.00\r\nKamis	09.00–17.00\r\nJumat	09.00–17.00\r\nSabtu	09.00–17.00\r\nMinggu	Tutup\r\nSenin	09.00–17.00', 'Privat', '1 Orang'),
(23, 'Kursus Mengemudi SURYA', 'Kursus Mengemudi Mobil', 'Jl. Kawi Atas No.22 A, Bareng, Kec. Klojen, Kota Malang, Jawa Timur 65119', -7.9684498, 112.6168218, '(0341) 581647', '-', '-', '-', 'Tidak Ada', '-', 'Siang', '-', 'Setiap Hari', 'Selasa	08.00–20.00\r\nRabu	08.00–20.00\r\nKamis	08.00–20.00\r\nJumat	08.00–20.00\r\nSabtu	08.00–20.00\r\nMinggu	08.00–20.00\r\nSenin	08.00–20.00', 'Privat', '1 Orang'),
(24, 'Kursus Mengemudi TIRTAJAYA', 'Kursus Mengemudi Mobil', 'Jl. Trunojoyo No.56, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 12630', -7.9654035, 112.634414, '(0341) 361069', '-', '-', '-', 'Tidak Ada', '-', '-', '-', '-', '-', 'Privat', '1 Orang'),
(25, 'Kursus Mengemudi YOPI 32', 'Kursus Mengemudi Mobil', 'Jl Raya sekarpuro 63A6, Dami, Ampeldento, Kec. Pakis, Malang, Jawa Timur 65154', -7.9603321, 112.6500778, '0888-0553-3335', '-', '-', '-', 'Tidak Ada', '-', 'Siang', '-', 'Setiap Hari', 'Selasa	08.00–17.00\r\nRabu	08.00–17.00\r\nKamis	08.00–17.00\r\nJumat	08.00–17.00\r\nSabtu	08.00–17.00\r\nMinggu	08.00–17.00\r\nSenin	08.00–17.00', 'Privat', '1 Orang'),
(26, 'Kursus Mengemudi YOPI 32', 'Kursus Mengemudi Mobil', 'Jl. Terusan Sulfat No.32, Pandanwangi, Kec. Blimbing, Kota Malang, Jawa Timur 65126', -7.9592613, 112.6479338, '0812-3262-9062', '-', '', '', 'Tidak Ada', '-', 'Pagi', '-', 'Setiap Hari', 'Selasa	07.30–16.30\r\nRabu	07.30–16.30\r\nKamis	07.30–16.30\r\nJumat	07.30–16.30\r\nSabtu	07.30–16.30\r\nMinggu	07.30–16.30\r\nSenin	07.30–16.30', 'Privat', '1 Orang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursus_menjahit`
--

CREATE TABLE `kursus_menjahit` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `website` text NOT NULL,
  `tarif` varchar(50) NOT NULL,
  `keterangan_tarif` text NOT NULL,
  `fasilitas` text NOT NULL,
  `keterangan_fasilitas` text NOT NULL,
  `jadwal` varchar(50) NOT NULL,
  `keterangan_jadwal` text NOT NULL,
  `operasional` text NOT NULL,
  `keterangan_operasional` text NOT NULL,
  `kapasitas` varchar(50) NOT NULL,
  `keterangan_kapasitas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kursus_menjahit`
--

INSERT INTO `kursus_menjahit` (`id`, `nama`, `kategori`, `alamat`, `lat`, `long`, `no_telpon`, `website`, `tarif`, `keterangan_tarif`, `fasilitas`, `keterangan_fasilitas`, `jadwal`, `keterangan_jadwal`, `operasional`, `keterangan_operasional`, `kapasitas`, `keterangan_kapasitas`) VALUES
(1, 'Sewing Lessons Elanda', 'Kursus Menjahit', 'Komp. Ruko Zeni, telp, 081335088971? Jl.Untung Suropati Utara No.7, Kesatrian, Blimbing, Malang City, East Java 65126', -7.980856, 112.641055, '(0341) 324502', '-', 'Reguler', 'Rp. 1.000.000', 'Ada', 'Ruang praktek, Mushola, Alat peraga jahitan, Meja pola', 'Siang', 'Siang (12.00 - 14.00)', 'Hari Kerja', 'Senin 10.00?16.00\nSelasa 10.0?16.00\nRabu 10.00?16.00\nKamis 10.00?16.00\nJumat 10.00?16.00\nSabtu 10.00?16.00\n', 'Kelas', '2-15 Orang'),
(2, 'Tunas Kursus Jahit', 'Kursus Menjahit', 'JL. RA. Tumenggung Suryo, No. 14, Bunulrejo, Kec. Blimbing, Kota Malang, Jawa Timur 11740', -7.961256, 112.641543, '(0341) 470214', '-', 'Reguler', 'Rp. 1.200.000', 'Tidak Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Hari Kerja', 'Senin 10.00?16.00\nSelasa 10.0?16.00\nRabu 10.00?16.00\nKamis 10.00?16.00\nJumat 10.00?16.00\nSabtu 10.00?16.00\n', 'Kelas', '2-15 Orang'),
(3, 'Kumala Kursus', 'Kursus Menjahit', 'Jl. Menari No.2 A, Kasin, Kec. Klojen, Kota Malang, Jawa Timur 65117', -7.992295, 112.628015, '(0341) 369647', 'https://www.facebook.com/Kursus.Modes.Kumala/', 'Reguler', 'Rp. 1.000.000', 'Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Siang', 'Siang (12.00 - 14.00)', 'Hari Kerja', 'Senin 09.00?16.00\nSelasa 09.0?16.00\nRabu 09.00?16.00\nKamis 09.00?16.00\nJumat 09.00?16.00\nSabtu 09.00?16.00\n', 'Kelas', '2-15 Orang'),
(4, 'Windya kursus Menjahit', 'Kursus Menjahit', 'Jl. Kemantren II No.11, RT.05/RW.03, Bandungrejosari, Kec. Sukun, Kota Malang, Jawa Timur 65148', -8.00081, 112.611655, '(0341) 832321', '-', 'Reguler', 'Rp. 1.250.000', 'Tidak Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Siang', 'Siang (12.00 - 14.00)', 'Hari Kerja', 'Senin 10.00?16.00\nSelasa 10.0?16.00\nRabu 10.00?16.00\nKamis 10.00?16.00\nJumat 10.00?16.00\nSabtu 10.00?16.00\n', 'Kelas', '2-15 Orang'),
(5, 'Kursus Menjahit Sajidah', 'Kursus Menjahit', 'Jl. Wonorejo No.96A, Arjowinangun, Kec. Kedungkandang, Kota Malang, Jawa Timur 65132', -8.03335, 112.630858, '0878-5987-0039', '-', 'Reguler', 'Rp. 1.150.000', 'Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Siang', 'Siang (12.00 - 14.00)', 'Hari Kerja', 'Senin 10.00?16.00\nSelasa 10.0?16.00\nRabu 10.00?16.00\nKamis 10.00?16.00\nJumat 10.00?16.00\nSabtu 10.00?16.00\n', 'Kelas', '2-15 Orang'),
(6, 'Arva School of Fashion', 'Kursus Menjahit', 'Jl. Raya Tidar No.21, Karangbesuki, Kec. Sukun, Kota Malang, Jawa Timur 65146', -7.966512, 112.610614, '(0341) 564910', 'arvaschooloffashion.com', 'Reguler', 'Rp. 1.100.000', 'Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Hari Kerja', 'Senin 09.00?16.00\nSelasa 09.0?16.00\nRabu 09.00?16.00\nKamis 09.00?16.00\nJumat 09.00?16.00\nSabtu 09.00?16.00\n', 'Kelas', '2-15 Orang'),
(7, 'SIMETRIKA-22', 'Kursus Menjahit', 'Jl. Tirto Taruno No.22A, Dusun Klandungan, Landungsari, Kec. Dau, Malang, Jawa Timur 65151', -7.930579, 112.591147, '0838-4815-7399', 'jasagrafisim22.blogspot.com', 'Reguler', 'Rp. 972.000', 'Tidak Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Hari Kerja', 'Senin 09.00?16.00\nSelasa 09.0?16.00\nRabu 09.00?16.00\nKamis 09.00?16.00\nJumat 09.00?16.00\nSabtu 09.00?16.00\n', 'Kelas', '2-15 Orang'),
(8, 'Modes Wijaya', 'Kursus Menjahit', 'Jl. Zaenal Zakse No.16, Jodipan, Kec. Blimbing, Kota Malang, Jawa Timur 65136', -7.987452, 112.636293, '0838-3448-0743', '-', 'Reguler', 'Rp. 800.000', 'Tidak Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Siang', 'Siang (12.00 - 14.00)', 'Hari Kerja', 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', 'Kelas', '2-15 Orang'),
(9, 'Kursus Menjahit Mujiati', 'Kursus Menjahit', 'Jl. Bhayangkara No.7, Turen, Kec. Turen, Malang, Jawa Timur 65175', -8.167666, 112.694976, '(0341) 824964', 'https://kursus-menjahit-mujiati.business.site/', 'Reguler', 'Rp. 1.550.000', 'Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Siang', 'Siang (12.00 - 14.00)', 'Setiap Har', 'Senin 10.00?16.00\nSelasa 10.0?16.00\nRabu 10.00?16.00\nKamis 10.00?16.00\nJumat 10.00?16.00\nSabtu 10.00?16.00\n', 'Kelas', '2-15 Orang'),
(10, 'LKP Mulyasari', 'Kursus Menjahit', 'Jl. Diponegoro No.15, RW.3, Klojen, Kec. Klojen, Kota Malang, Jawa Timur 65111', -7.969061, 112.633793, '(0341) 827199', '-', 'Reguler', 'Rp. 1.200.000', 'Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Siang', 'Siang (12.00 - 14.00)', 'Setiap Har', 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', 'Kelas', '2-15 Orang'),
(11, 'LPK Modes Shinta', 'Kursus Menjahit', 'Jl. Laksda Adi Sucipto No.45, Pandanwangi, Kec. Blimbing, Kota Malang, Jawa Timur 65126', -7.950001, 112.658241, '(0341) 482224', '-', 'Reguler', 'Rp. 1.400.000', 'Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Setiap Har', 'Senin 10.00?16.00\nSelasa 10.0?16.00\nRabu 10.00?16.00\nKamis 10.00?16.00\nJumat 10.00?16.00\nSabtu 10.00?16.00\n', 'Kelas', '2-15 Orang'),
(12, 'LKP Juwita', 'Kursus Menjahit', '65126, Jl. R. Tumenggung Suryo No.14, Rampal Celaket, Kec. Klojen, Kota Malang, Jawa Timur 65111', -7.966426, 112.639203, '0819-3775-4299', '-', 'Reguler', 'Rp. 1.200.000', 'Tidak Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Setiap Har', 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', 'Kelas', '2-15 Orang'),
(13, 'LKP Ganesha', 'Kursus Menjahit', 'Jl. Effendi No.68, Kepanjen, Kec. Kepanjen, Malang, Jawa Timur 65163', -8.130456, 112.571929, '0812-3380-329', '-', 'Reguler', 'Rp. 1.200.000', 'Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Setiap Har', 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', 'Kelas', '2-15 Orang'),
(14, 'LKP Remaja', 'Kursus Menjahit', 'Jl. Panglima Sudirman No.55, Kesatrian, Kec. Blimbing, Kota Malang, Jawa Timur 65111', -7.975221, 112.638336, '(0341) 824050', '-', 'Reguler', 'Rp. 1.550.000', 'Tidak Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Setiap Har', 'Senin 10.00?16.00\nSelasa 10.0?16.00\nRabu 10.00?16.00\nKamis 10.00?16.00\nJumat 10.00?16.00\nSabtu 10.00?16.00\n', 'Kelas', '2-15 Orang'),
(15, 'LKP Menjahit Rika', 'Kursus Menjahit', 'JL. Raya Jeruk No.51, Krajan, Jeru, Kec. Tumpang, Malang, Jawa Timur 65156', -7.989041, 112.761371, '(0341) 7733699', '-', 'Reguler', 'Rp. 1.200.000', 'Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Hari Kerja', 'Senin 10.00?16.00\nSelasa 10.0?16.00\nRabu 10.00?16.00\nKamis 10.00?16.00\nJumat 10.00?16.00\nSabtu 10.00?16.00\n', 'Privat', '2 Orang'),
(16, 'Kursus Menjahit Tata Busana', 'Kursus Menjahit', 'Jl. Mayjen Sungkono No.106, Buring, Kec. Kedungkandang, Kota Malang, Jawa Timur 65138', -8.004158, 112.644025, '0897-0444-276', 'https://kursus-menjahit-tata-busana.business.site/', 'Reguler', 'Rp. 1.550.007', 'Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Hari Kerja', 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', 'Privat', '3 Orang'),
(17, 'Kursus Menjahit Ibu Tini', 'Kursus Menjahit', 'Jl. Merak Utara No.8, Kiduldalem, Kec. Sukun, Kota Malang, Jawa Timur 65147', -7.991849, 112.616203, '', '-', 'Reguler', 'Rp. 1.550.008', 'Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Hari Kerja', 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', 'Privat', '4 Orang'),
(18, 'Kursus Menjahit Busana Wanita', 'Kursus Menjahit', 'Jl. Tirto Taruno No.22A, Dusun Klandungan, Landungsari, Kec. Dau, Malang, Jawa Timur 65151', -7.93064, 112.591163, '0822-5749-2481', 'https://mobile.facebook.com/kursusmenjahitmalang/?notif_t=page_user_activity&ref=m_notif', 'Reguler', 'Rp. 1.200.000', 'Tidak Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Hari Kerja', 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', 'Privat', '5 Orang'),
(19, 'Rista Kursus Menjahit', 'Kursus Menjahit', 'Jl. Hamid Rusdi No.66, Krajan, Ketindan, Kec. Lawang, Malang, Jawa Timur 65214', -7.832217, 112.689134, '0856-4985-6189', 'https://rista-kursus-menjahit.business.site/', 'Reguler', 'Rp. 1.000.000', 'Tidak Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Sore', 'Sore (15.00 - 16.00)', 'Hari Kerja', 'Senin 08.00?21.00\nSelasa 08.0?21.00\nRabu 08.00?21.00\nKamis 08.00?21.00\nJumat 08.00?21.00\nSabtu 08.00?21.00\n', 'Privat', '4 Orang'),
(20, 'Modes Ella', 'Kursus Menjahit', 'JL. Tumadel Barat V, No. 9 RW. 05 RW. 04, Pagentan Singosari, Pangetan, Pagentan, Malang, Jawa Timur 65153', -7.90151, 112.661896, '(0341) 458386', '-', 'Reguler', 'Rp. 2.500.000', 'Ada', 'Ruang praktek, Alat peraga jahitan, Meja pola', 'Siang', 'Siang (12.00 - 14.00)', 'Hari Kerja', 'Senin 10.00?16.00\nSelasa 10.0?16.00\nRabu 10.00?16.00\nKamis 10.00?16.00\nJumat 10.00?16.00\nSabtu 10.00?16.00\n', 'Privat', '2 Orang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kursus_musik`
--

CREATE TABLE `kursus_musik` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `no_telpon` varchar(20) NOT NULL,
  `website` text NOT NULL,
  `tarif` varchar(50) NOT NULL,
  `keterangan_tarif` text,
  `fasilitas` text NOT NULL,
  `keterangan_fasilitas` text,
  `jadwal` varchar(50) NOT NULL,
  `keterangan_jadwal` text,
  `operasional` text NOT NULL,
  `keterangan_operasional` text,
  `kapasitas` varchar(50) NOT NULL,
  `keterangan_kapasitas` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kursus_musik`
--

INSERT INTO `kursus_musik` (`id`, `nama`, `kategori`, `alamat`, `lat`, `long`, `no_telpon`, `website`, `tarif`, `keterangan_tarif`, `fasilitas`, `keterangan_fasilitas`, `jadwal`, `keterangan_jadwal`, `operasional`, `keterangan_operasional`, `kapasitas`, `keterangan_kapasitas`) VALUES
(1, 'Yamaha Music School Malang', 'Kursus Musik', 'Jl. Soekarno-Hatta, Ruko A-3, Mojolangu, Lowokwaru, Malang City, East Java 65142', -7.948875, 112.6282328, '(0341) 364356', 'https://id.yamaha.com/index.html', '-', '-', 'Pagi', '-', '-', '-', 'Setiap Hari', 'Selasa	08.00–20.00\r\nRabu	08.00–20.00\r\nKamis	08.00–20.00\r\nJumat	08.00–20.00\r\nSabtu	08.00–20.00\r\nMinggu	09.00–14.00\r\nSenin	08.00–20.00', 'Kelas', '15 Orang'),
(2, 'Les Drum Malang', 'Kursus Musik', 'Perum Sufelir Inside, Jl. Simpang Sufelir Dalam No.5, Tulusrejo, Lowokwaru, Malang City, East Java 65141', -7.9526296, 112.6323863, '0815-1591-0707', '-', '-', '-', 'Pagi', '-', '-', '-', 'Hari Kerja', 'Selasa	Tutup\r\nRabu	Tutup\r\nKamis	08.00–20.00\r\nJumat	08.00–20.00\r\nSabtu	08.00–20.00\r\nMinggu	08.00–20.00\r\nSenin	08.00–20.00', 'Privat', '1 Orang'),
(3, 'Jam Music School', 'Kursus Musik', 'Jl. Cibuni 1 No.1, Purwantoro, Kec. Blimbing, Kota Malang, Jawa Timur 65126', -7.9574723, 112.642201, '(0341) 484088', 'https://www.instagram.com/lesdrummalang/', '-', '-', 'Pagi', '-', '-', '-', 'Hari Kerja', 'Selasa	08.00–19.00\r\nRabu	08.00–19.00\r\nKamis	08.00–19.00\r\nJumat	08.00–19.00\r\nSabtu	08.00–19.00\r\nMinggu	Tutup\r\nSenin	08.00–19.00', 'Kelas', '15 Orang'),
(4, 'Orpheus Music Malang', 'Kursus Musik', 'Pisang Candi 56 Sukun,, Jl. Pisang Candi Barat, Pisang Candi, Kec. Sukun, Kota Malang, Jawa Timur 65146', -7.9684498, 112.6113019, '0856-4975-7509', '-', '-', '-', 'Pagi', '-', '-', '-', 'Setiap Hari', 'Selasa	08.00–20.00\r\nRabu	08.00–20.00\r\nKamis	08.00–20.00\r\nJumat	08.00–20.00\r\nSabtu	08.00–20.00\r\nMinggu	09.00–14.00\r\nSenin	08.00–20.00', 'Kelas', '15 Orang'),
(5, 'Malang Musik School', 'Kursus Musik', 'Jl. Sulawesi No.15, Kasin, Kec. Klojen, Kota Malang, Jawa Timur 65117', -7.9725676, 112.6252622, '(0341) 365280', 'https://malang-musik-school.business.site/', '-', '-', 'Pagi', '-', '-', '-', 'Setiap Hari', 'Selasa	08.00–20.00\r\nRabu	08.00–20.00\r\nKamis	08.00–20.00\r\nJumat	08.00–20.00\r\nSabtu	08.00–20.00\r\nMinggu	08.00–20.00\r\nSenin	08.00–20.00', 'Kelas', '15 Orang'),
(6, 'Delativa Music', 'Kursus Musik', 'Jl. C.Trowulan No.51, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', -7.9478282, 112.6342702, '(0341) 4374127', '-', '-', '-', 'Pagi', '-', '-', '-', 'Hari Kerja', 'Selasa	08.00–20.00\r\nRabu	08.00–20.00\r\nKamis	08.00–20.00\r\nJumat	08.00–20.00\r\nSabtu	08.00–20.00\r\nMinggu	Tutup\r\nSenin	08.00–20.00', 'Kelas', '15 Orang'),
(7, 'Sony Music School', 'Kursus Musik', 'Jl. Raung No.8, Oro-oro Dowo, Kec. Klojen, Kota Malang, Jawa Timur 65119', -7.9663603, 112.6197613, '0851-0040-4989', '-', '-', '-', 'Pagi', '-', '-', '-', 'Setiap Hari', 'Selasa	08.00–20.00\r\nRabu	08.00–20.00\r\nKamis	08.00–20.00\r\nJumat	08.00–20.00\r\nSabtu	08.00–20.00\r\nMinggu	09.00–14.00\r\nSenin	08.00–20.00', 'Kelas', '15 Orang'),
(8, 'Yamaha Music School/Metro Music', 'Kursus Musik', 'Jl. Kauman, Kauman, Malang, Kota Malang, Jawa Timur 65119', -7.963997, 112.621677, '(0341) 364347', 'https://id.yamaha.com/index.html', '-', '-', 'Pagi', '-', '-', '-', 'Setiap Hari', 'Selasa	08.00–20.00\r\nRabu	08.00–20.00\r\nKamis	08.00–20.00\r\nJumat	08.00–20.00\r\nSabtu	08.00–20.00\r\nMinggu	09.00–14.00\r\nSenin	08.00–20.00', 'Kelas', '15 Orang'),
(9, 'Purwa Caraka Music Studio', 'Kursus Musik', 'Ruko Taman Niaga, Jl. Soekarno Hatta Blok A No.12-15, Jatimulyo, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', -7.9468869, 112.6179894, '(0341) 404979', 'http://purwacarakamusicstudio.com/', '-', '-', 'Siang', '-', '-', '-', 'Setiap Hari', 'Selasa	09.00–20.00\r\nRabu	09.00–20.00\r\nKamis	09.00–20.00\r\nJumat	09.00–20.00\r\nSabtu	09.00–20.00\r\nMinggu	09.00–20.00\r\nSenin	09.00–20.00', 'Kelas', '15 Orang'),
(10, 'Citra School of Music', 'Kursus Musik', 'Jl. Banten No.mor 5, Penanggungan, Kec. Klojen, Kota Malang, Jawa Timur 65113', -7.9556767, 112.6150723, '0823-3665-7723', 'http://instagram.com/citramusic', '-', '-', 'Siang', '-', '-', '-', 'Hari Kerja', 'Selasa	10.00–19.00\r\nRabu	10.00–19.00\r\nKamis	10.00–19.00\r\nJumat	10.00–19.00\r\nSabtu	10.00–19.00\r\nMinggu	10.00–19.00\r\nSenin	Tutup', 'Kelas', '15 Orang'),
(11, 'Kaizen Music School', 'Kursus Musik', 'Ruko Borobudur Commercial Centre Kav. 3 & 4, Jalan Terusan Borobudur No.86, Mojolangu, Kecamatan Lowokwaru, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', -7.9487439, 112.6287479, '0823-2823-3000', 'https://kaizen-musicschool.business.site/', '-', '-', 'Siang', '-', '-', '-', 'Setiap Hari', 'Selasa	11.00–18.00\r\nRabu	11.00–18.00\r\nKamis	11.00–18.00\r\nJumat	11.00–18.00\r\nSabtu	09.00–17.00\r\nMinggu	09.00–15.00\r\nSenin	11.00–18.00', 'Kelas', '15 Orang'),
(12, 'Harmony Music Course', 'Kursus Musik', 'perumahan c1-257, Jl. Villa Bukit Tidar, Merjosari, Kec. Lowokwaru, Kota Malang, Jawa Timur 65146', -7.9479575, 112.5844729, '0856-4673-9063', '-', '-', '-', 'Pagi', '-', '-', '-', 'Hari Kerja', 'Selasa	08.00–14.00\r\nRabu	08.00–14.00\r\nKamis	08.00–14.00\r\nJumat	08.00–14.00\r\nSabtu	08.00–14.00\r\nMinggu	Tutup\r\nSenin	08.00–14.00', 'Privat', '1 Orang'),
(13, 'SWARA NARWASTU School Of Music & Enterprise', 'Kursus Musik', 'Jl. Raya Tidar No.101b, Lowokwaru, Kec. Sukun, Kota Malang, Jawa Timur 65146', -7.9602672, 112.6109771, '0817-384-069', 'https://business.google.com/website/swara-narwastu-school-of-music-enterprise', '-', '-', 'Siang', '-', '-', '-', 'Hari Kerja', 'Selasa	11.00–19.00\r\nRabu	11.00–19.00\r\nKamis	11.00–19.00\r\nJumat	11.00–19.00\r\nSabtu	12.00–17.00\r\nMinggu	Tutup\r\nSenin	11.00–19.00', 'Kelas', '15 Orang'),
(14, 'ERMS Music & Art School', 'Kursus Musik', 'Ruko WOW Blok N/Y 1 No, 6, Sawojajar, Kedungkandang, Malang City, East Java 65139', -7.9653063, 112.6404386, '0821-6559-2012', '-', '-', '-', 'Pagi', '-', '-', '-', 'Setiap Hari', 'Selasa	08.00–20.00\r\nRabu	08.00–20.00\r\nKamis	08.00–20.00\r\nJumat	08.00–20.00\r\nSabtu	08.00–20.00\r\nMinggu	08.00–20.00\r\nSenin	08.00–20.00', 'Kelas', '15 Orang'),
(15, 'Tangga Nada Music Center', 'Kursus Musik', 'Jl. Pulau Sayang No.24, Kasin, Kec. Klojen, Kota Malang, Jawa Timur 65117', -7.9770952, 112.6241392, '0812-3210-8150', 'http://www.tangganadamusic.com/', '-', '-', 'Siang', '-', '-', '-', 'Hari Kerja', 'Selasa	10.00–17.00\r\nRabu	10.00–17.00\r\nKamis	10.00–17.00\r\nJumat	10.00–17.00\r\nSabtu	10.00–17.00\r\nMinggu	Tutup\r\nSenin	10.00–17.00', 'Kelas', '15 Orang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spatial_ref_sys`
--

CREATE TABLE `spatial_ref_sys` (
  `SRID` int(11) NOT NULL,
  `AUTH_NAME` varchar(256) DEFAULT NULL,
  `AUTH_SRID` int(11) DEFAULT NULL,
  `SRTEXT` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `spatial_ref_sys`
--

INSERT INTO `spatial_ref_sys` (`SRID`, `AUTH_NAME`, `AUTH_SRID`, `SRTEXT`) VALUES
(1, NULL, NULL, 'GEOGCS["WGS 84",DATUM["WGS_1984",SPHEROID["WGS 84",6378137,298.257223563,AUTHORITY["EPSG","7030"]],AUTHORITY["EPSG","6326"]],PRIMEM["Greenwich",0,AUTHORITY["EPSG","8901"]],UNIT["degree",0.01745329251994328,AUTHORITY["EPSG","9122"]],AUTHORITY["EPSG","4326"]]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kursus_akademik`
--
ALTER TABLE `kursus_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kursus_bola`
--
ALTER TABLE `kursus_bola`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kursus_komputer`
--
ALTER TABLE `kursus_komputer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kursus_mengemudi`
--
ALTER TABLE `kursus_mengemudi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kursus_menjahit`
--
ALTER TABLE `kursus_menjahit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kursus_musik`
--
ALTER TABLE `kursus_musik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kursus_akademik`
--
ALTER TABLE `kursus_akademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `kursus_bola`
--
ALTER TABLE `kursus_bola`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `kursus_komputer`
--
ALTER TABLE `kursus_komputer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `kursus_mengemudi`
--
ALTER TABLE `kursus_mengemudi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `kursus_menjahit`
--
ALTER TABLE `kursus_menjahit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `kursus_musik`
--
ALTER TABLE `kursus_musik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

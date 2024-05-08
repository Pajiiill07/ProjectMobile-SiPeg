-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Bulan Mei 2024 pada 08.47
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sipeg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absens`
--

CREATE TABLE `absens` (
  `absen_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `jam_datang` time DEFAULT NULL,
  `jam_pulang` time DEFAULT NULL,
  `keterangan` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `absens`
--

INSERT INTO `absens` (`absen_id`, `pegawai_id`, `tanggal`, `jam_datang`, `jam_pulang`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 1, '2024-05-01', '08:12:00', '15:55:15', 'hadir', '2024-05-06 10:57:20', '2024-05-06 10:58:34'),
(3, 2, '2024-05-01', NULL, NULL, 'sakit', '2024-05-06 10:58:53', '2024-05-06 10:58:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cutis`
--

CREATE TABLE `cutis` (
  `cuti_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `jatah_cuti` int(11) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `alasan` varchar(100) NOT NULL,
  `status_pengajuan` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cutis`
--

INSERT INTO `cutis` (`cuti_id`, `pegawai_id`, `jatah_cuti`, `tanggal_mulai`, `tanggal_selesai`, `alasan`, `status_pengajuan`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2024-05-08', '2024-05-13', 'mau hiling', 'approved', NULL, '2024-05-07 10:30:32'),
(3, 3, 6, '2024-06-04', '2024-06-11', 'lelah pak', 'approved', '2024-05-07 22:16:11', '2024-05-07 22:18:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `departments`
--

CREATE TABLE `departments` (
  `department_id` int(10) UNSIGNED NOT NULL,
  `nama_department` varchar(30) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `departments`
--

INSERT INTO `departments` (`department_id`, `nama_department`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Department Keuangan', 'Departemen Keuangan bertanggung jawab atas manajemen keuangan dan akuntansi perusahaan, termasuk pembukuan, pengelolaan arus kas, analisis keuangan, dan pelaporan keuangan.', NULL, NULL),
(2, 'Departemen Sumber Daya Manusia', 'Departemen SDM bertanggung jawab atas manajemen sumber daya manusia perusahaan, termasuk perekrutan, pelatihan, pengembangan karyawan, manajemen kinerja, dan administrasi personil.', NULL, NULL),
(3, 'Department Pemasaran', 'Departemen Pemasaran bertanggung jawab atas pengembangan strategi pemasaran, promosi produk atau layanan, branding, dan komunikasi dengan pelanggan.', '2024-05-06 10:34:41', '2024-05-06 10:34:41'),
(4, 'Department Produksi', 'Departemen Produksi bertanggung jawab atas proses produksi barang atau layanan perusahaan, termasuk perencanaan produksi, manufaktur, kualitas produk, dan pengendalian persediaan.', '2024-05-06 10:35:06', '2024-05-06 10:35:06'),
(5, 'Department TI', 'Departemen TI bertanggung jawab atas pengembangan, implementasi, dan pemeliharaan sistem informasi dan teknologi perusahaan, termasuk jaringan komputer, perangkat lunak, dan keamanan informasi.', '2024-05-06 10:35:40', '2024-05-06 10:35:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `evaluasis`
--

CREATE TABLE `evaluasis` (
  `evaluasi_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `tanggal_evaluasi` date NOT NULL,
  `penilaian_absensi` double(4,1) NOT NULL,
  `penilaian_pelaporan` double(4,1) NOT NULL,
  `catatan_dan_komentar` varchar(200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `evaluasis`
--

INSERT INTO `evaluasis` (`evaluasi_id`, `pegawai_id`, `tanggal_evaluasi`, `penilaian_absensi`, `penilaian_pelaporan`, `catatan_dan_komentar`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-10-03', 85.6, 92.0, 'mantap mantap', NULL, NULL),
(3, 2, '2024-05-07', 100.0, 100.0, 'Uih mantap uihh', '2024-05-07 00:21:58', '2024-05-07 00:21:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gajis`
--

CREATE TABLE `gajis` (
  `gaji_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `posisi_id` int(10) UNSIGNED NOT NULL,
  `gaji_pokok` int(11) NOT NULL,
  `tunjangan` int(11) NOT NULL,
  `pph` int(11) NOT NULL,
  `total_gaji` int(11) NOT NULL,
  `periode_penggajian` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gajis`
--

INSERT INTO `gajis` (`gaji_id`, `pegawai_id`, `posisi_id`, `gaji_pokok`, `tunjangan`, `pph`, `total_gaji`, `periode_penggajian`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 10000000, 1000000, 500000, 10500000, 'oktober 2023', '2024-05-06 12:42:53', '2024-05-07 06:55:12'),
(5, 3, 1, 10000000, 1000000, 500000, 10500000, 'februari 2024', '2024-05-06 12:43:04', '2024-05-07 06:55:36'),
(6, 4, 3, 22000000, 2200000, 1100000, 23100000, 'januari 2023', '2024-05-06 12:43:18', '2024-05-07 06:55:26'),
(8, 8, 4, 9000000, 900000, 450000, 9450000, 'september 2023', '2024-05-07 04:14:13', '2024-05-07 06:26:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporans`
--

CREATE TABLE `laporans` (
  `laporan_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `tanggal_laporan` date NOT NULL,
  `tanggal_submit` date NOT NULL,
  `judul_laporan` varchar(100) NOT NULL,
  `isi_laporan` varchar(1200) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `laporans`
--

INSERT INTO `laporans` (`laporan_id`, `pegawai_id`, `tanggal_laporan`, `tanggal_submit`, `judul_laporan`, `isi_laporan`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-04-01', '2024-04-01', 'Update pekerjaan pengembangan project A', 'Melakukan debugging pada fitur pemesanan produk untuk menangani masalah validasi input yang tidak berfungsi dengan benar.\r\nMengimplementasikan fitur pencarian produk berdasarkan kategori menggunakan teknik AJAX untuk meningkatkan kinerja dan pengalaman pengguna.', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_05_062816_create_departments_table', 1),
(6, '2024_03_05_062829_create_posisis_table', 1),
(7, '2024_03_22_012134_create_pegawais_table', 1),
(8, '2024_03_22_012144_create_gajis_table', 1),
(9, '2024_03_22_012152_create_cutis_table', 1),
(10, '2024_03_22_012216_create_absens_table', 1),
(11, '2024_03_22_012249_create_laporans_table', 1),
(12, '2024_03_22_012258_create_evaluasis_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawais`
--

CREATE TABLE `pegawais` (
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `posisi_id` int(10) UNSIGNED NOT NULL,
  `manager_id` int(10) UNSIGNED DEFAULT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `no_hp` char(15) NOT NULL,
  `email` varchar(35) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `pendidikan_terakhir` varchar(10) NOT NULL,
  `foto_profile` varchar(700) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawais`
--

INSERT INTO `pegawais` (`pegawai_id`, `user_id`, `posisi_id`, `manager_id`, `nama_lengkap`, `no_hp`, `email`, `alamat`, `tanggal_lahir`, `jenis_kelamin`, `pendidikan_terakhir`, `foto_profile`, `tanggal_mulai`, `created_at`, `updated_at`) VALUES
(1, 4, 3, NULL, 'AJiihhh', '08977564342', 'alexsap@gmail.com', 'jalan kejaksaan timur no.29', '2001-05-01', 'L', 'D4/S1', 'https://i.pinimg.com/564x/de/ad/05/dead05cd40977240507ea0d4e2c47c86.jpg', '2023-09-15', NULL, '2024-05-07 06:54:37'),
(2, 2, 2, NULL, 'Aling', '11111111111111', 'pajiilllalala@gmail.com', 'jalan kemerdekaan, gg. melati no.12', '2001-07-07', 'P', 'D4/S1', 'https://i.pinimg.com/564x/40/bd/d3/40bdd3ec298084e085257079ecf8fde7.jpg', '2024-05-01', NULL, '2024-05-07 06:54:50'),
(3, 2, 2, NULL, 'Pajiilll Lalalala', '08987654321', 'pajiilllalala@gmail.com', 'jalan kemerdekaan, gg. melati no.12', '2001-07-07', 'P', 'D4/S1', 'https://i.pinimg.com/564x/ec/76/20/ec76203caab3316a7ffed8fc251e7c67.jpg', '2024-05-01', NULL, '2024-05-07 06:10:45'),
(4, 4, 3, 1, 'Alexander Saputra ', '08977564342', 'alexsap@gmail.com', 'jalan kejaksaan timur no.29', '2001-05-01', 'L', 'D4/S1', 'https://i.pinimg.com/564x/0e/22/4c/0e224cd4865bef54aeb1f4cc110b78dd.jpg', '2023-09-15', NULL, NULL),
(8, 5, 3, NULL, 'Key zoey', '0875435687', 'kkozeyoas@gmail.com', 'jalan euy', '1998-01-01', 'L', 'D4/S1', 'https://i.pinimg.com/564x/50/e0/75/50e07577ad71a1b4351a687ae3cd407b.jpg', '2023-12-02', '2024-05-07 05:35:22', '2024-05-07 06:52:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posisis`
--

CREATE TABLE `posisis` (
  `posisi_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `nama_posisi` varchar(30) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `gaji_pokok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posisis`
--

INSERT INTO `posisis` (`posisi_id`, `department_id`, `nama_posisi`, `deskripsi`, `gaji_pokok`, `created_at`, `updated_at`) VALUES
(1, 1, 'Analis Keuangan', 'Melakukan analisis keuangan untuk memberikan wawasan tentang kinerja keuangan perusahaan dan membuat rekomendasi investasi atau kebijakan keuangan.', 10000000, '2024-05-06 10:33:38', '2024-05-06 10:33:38'),
(2, 3, 'Analis Pasar', 'Melakukan penelitian pasar untuk memahami kebutuhan pelanggan, tren industri, dan persaingan pasar.', 10000000, '2024-05-06 10:36:45', '2024-05-06 10:36:45'),
(3, 5, 'Pengembang Perangkat Lunak', 'Merancang, mengembangkan, dan menguji perangkat lunak aplikasi sesuai dengan kebutuhan bisnis.', 22000000, '2024-05-06 10:38:12', '2024-05-06 10:38:12'),
(4, 2, 'Rekrutmen dan Seleksi', 'Bertanggung jawab atas proses rekrutmen, seleksi, dan penempatan karyawan baru.', 9000000, '2024-05-07 04:10:40', '2024-05-07 04:10:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(35) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` varchar(10) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `email_verified_at`, `password`, `hak_akses`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'jiihhhhh', 'jiihhhhhhh@gmail.com', NULL, '$2y$10$6t5qEw7AziyGyGO55/I6wuH3joDWydmX5lEwzqPJxytJnxGjulfQy', 'Admin', NULL, NULL, NULL),
(2, 'pajiilll', 'pajiilllalala@gmail.com', NULL, '$2y$12$HyP2qURGPB56NaKSNWu/BuR0l2COMSJd3.GyqEamxAzZNiMI15aKK', 'Manager', NULL, '2024-05-06 10:46:12', '2024-05-06 10:46:12'),
(3, 'alingling', 'lingaling@gmail.com', NULL, '$2y$12$UpsnvWAgmojUtUZWgvB96.M4/3PvvT37DBHT2zKjS/GzB7BnY9786', 'Keuangan', NULL, '2024-05-06 10:59:49', '2024-05-06 10:59:49'),
(4, 'alexspt', 'alexsap@gmail.com', NULL, '$2y$12$AzkcLuUQJuOpD5vjxzZBee3Y.equgStxxp5fCgjvYZLqsDJyuW.wy', 'Karyawan', NULL, '2024-05-06 12:49:39', '2024-05-06 12:51:49'),
(5, 'kkozey', 'kkozeyoas@gmail.com', NULL, '$2y$12$ODVwnDXqocGoEUClSawueeuwMPfmUAVpp4YceqtdgEZQdEcJEahta', 'Karyawan', NULL, '2024-05-07 04:12:17', '2024-05-07 04:12:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absens`
--
ALTER TABLE `absens`
  ADD PRIMARY KEY (`absen_id`),
  ADD KEY `absens_pegawai_id_foreign` (`pegawai_id`);

--
-- Indeks untuk tabel `cutis`
--
ALTER TABLE `cutis`
  ADD PRIMARY KEY (`cuti_id`),
  ADD KEY `cutis_pegawai_id_foreign` (`pegawai_id`);

--
-- Indeks untuk tabel `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`department_id`);

--
-- Indeks untuk tabel `evaluasis`
--
ALTER TABLE `evaluasis`
  ADD PRIMARY KEY (`evaluasi_id`),
  ADD KEY `evaluasis_pegawai_id_foreign` (`pegawai_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gajis`
--
ALTER TABLE `gajis`
  ADD PRIMARY KEY (`gaji_id`),
  ADD KEY `gajis_posisi_id_foreign` (`posisi_id`),
  ADD KEY `gajis_pegawai_id_foreign` (`pegawai_id`);

--
-- Indeks untuk tabel `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`laporan_id`),
  ADD KEY `laporans_pegawai_id_foreign` (`pegawai_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`pegawai_id`),
  ADD KEY `pegawais_user_id_foreign` (`user_id`),
  ADD KEY `pegawais_posisi_id_foreign` (`posisi_id`),
  ADD KEY `pegawais_manager_id_foreign` (`manager_id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posisis`
--
ALTER TABLE `posisis`
  ADD PRIMARY KEY (`posisi_id`),
  ADD KEY `posisis_department_id_foreign` (`department_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absens`
--
ALTER TABLE `absens`
  MODIFY `absen_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `cutis`
--
ALTER TABLE `cutis`
  MODIFY `cuti_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `departments`
--
ALTER TABLE `departments`
  MODIFY `department_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `evaluasis`
--
ALTER TABLE `evaluasis`
  MODIFY `evaluasi_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gajis`
--
ALTER TABLE `gajis`
  MODIFY `gaji_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `laporans`
--
ALTER TABLE `laporans`
  MODIFY `laporan_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `pegawai_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posisis`
--
ALTER TABLE `posisis`
  MODIFY `posisi_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absens`
--
ALTER TABLE `absens`
  ADD CONSTRAINT `absens_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`pegawai_id`);

--
-- Ketidakleluasaan untuk tabel `cutis`
--
ALTER TABLE `cutis`
  ADD CONSTRAINT `cutis_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`pegawai_id`);

--
-- Ketidakleluasaan untuk tabel `evaluasis`
--
ALTER TABLE `evaluasis`
  ADD CONSTRAINT `evaluasis_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`pegawai_id`);

--
-- Ketidakleluasaan untuk tabel `gajis`
--
ALTER TABLE `gajis`
  ADD CONSTRAINT `gajis_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`pegawai_id`),
  ADD CONSTRAINT `gajis_posisi_id_foreign` FOREIGN KEY (`posisi_id`) REFERENCES `posisis` (`posisi_id`);

--
-- Ketidakleluasaan untuk tabel `laporans`
--
ALTER TABLE `laporans`
  ADD CONSTRAINT `laporans_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`pegawai_id`);

--
-- Ketidakleluasaan untuk tabel `pegawais`
--
ALTER TABLE `pegawais`
  ADD CONSTRAINT `pegawais_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `pegawais` (`pegawai_id`),
  ADD CONSTRAINT `pegawais_posisi_id_foreign` FOREIGN KEY (`posisi_id`) REFERENCES `posisis` (`posisi_id`),
  ADD CONSTRAINT `pegawais_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Ketidakleluasaan untuk tabel `posisis`
--
ALTER TABLE `posisis`
  ADD CONSTRAINT `posisis_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

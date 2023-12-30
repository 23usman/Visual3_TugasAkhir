-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Des 2023 pada 15.59
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perumahan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_angsuran`
--

CREATE TABLE `tbl_angsuran` (
  `id` int(11) NOT NULL,
  `id_rumah` int(11) NOT NULL,
  `pokok_pinjaman` varchar(20) NOT NULL,
  `3_tahun` varchar(20) NOT NULL,
  `5_tahun` varchar(20) NOT NULL,
  `10_tahun` varchar(20) NOT NULL,
  `15_tahun` varchar(20) NOT NULL,
  `20_tahun` varchar(20) NOT NULL,
  `25_tahun` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_angsuran`
--

INSERT INTO `tbl_angsuran` (`id`, `id_rumah`, `pokok_pinjaman`, `3_tahun`, `5_tahun`, `10_tahun`, `15_tahun`, `20_tahun`, `25_tahun`) VALUES
(1, 1, 'Rp.350.000.000', 'Rp.11.600.667', 'Rp.8.333.333', 'Rp.6.666.667', 'Rp.5.000.000', 'Rp.4.166.667', 'Rp.3.500.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kustomer`
--

CREATE TABLE `tbl_kustomer` (
  `id_kustomer` int(11) NOT NULL,
  `nm_kustomer` varchar(100) NOT NULL,
  `nik` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tempat_tanggal_lahir` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `usia` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kustomer`
--

INSERT INTO `tbl_kustomer` (`id_kustomer`, `nm_kustomer`, `nik`, `jenis_kelamin`, `pekerjaan`, `alamat`, `tempat_tanggal_lahir`, `no_telp`, `email`, `usia`, `status`) VALUES
(1, 'FIRDAUS', '473287464', 'LAKI-LAKI', 'MANAGER DEVELOPMENT', 'JL.BELITUNG DARAT', 'KTB, 15 MARET 2002', '086567556372', 'DAUS@GMAIL.COM', '21', 'BELUM MENIKAH'),
(2, 'USMAN SYAPOTRO', '8765467876', 'LAKI-LAKI', 'BOS', 'KAPUAS EVERYBODY', 'KAPUAS, 12-02-2001', '0876534567', 'USMAN@GMAIL.COM', '22', 'MENIKAH');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_layanan`
--

CREATE TABLE `tbl_layanan` (
  `id` int(11) NOT NULL,
  `nm_keperluan` varchar(100) NOT NULL,
  `jlh` int(15) NOT NULL,
  `status` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_layanan`
--

INSERT INTO `tbl_layanan` (`id`, `nm_keperluan`, `jlh`, `status`, `keterangan`) VALUES
(1, 'Fasilitas Masjid', 2, 'Penting', 'Perlu AC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pemesanan_rumah`
--

CREATE TABLE `tbl_pemesanan_rumah` (
  `id` int(11) NOT NULL,
  `id_kustomer` int(11) NOT NULL,
  `alamat_rumah` varchar(100) NOT NULL,
  `tgl_pemesanan` varchar(100) NOT NULL,
  `jlh_dp` varchar(20) NOT NULL,
  `lama_pesanan` varchar(100) NOT NULL,
  `type_rumah` varchar(100) NOT NULL,
  `status_syarat` varchar(50) NOT NULL,
  `jlh_beli` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pemesanan_rumah`
--

INSERT INTO `tbl_pemesanan_rumah` (`id`, `id_kustomer`, `alamat_rumah`, `tgl_pemesanan`, `jlh_dp`, `lama_pesanan`, `type_rumah`, `status_syarat`, `jlh_beli`) VALUES
(1, 1, 'Jl.Bumi Indah', '1 oktober 2023', 'Rp.3.000.000', '7 hari', '36', 'booking', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengajuan`
--

CREATE TABLE `tbl_pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `nm_pemohon` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status_pengajuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pengajuan`
--

INSERT INTO `tbl_pengajuan` (`id_pengajuan`, `nm_pemohon`, `pekerjaan`, `alamat`, `status_pengajuan`) VALUES
(1, 'MAULIDIA PUTRI', 'DOKTER', 'PUDI EVERYBODY', 'DISETUJUI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_profil_perumahan`
--

CREATE TABLE `tbl_profil_perumahan` (
  `id` int(11) NOT NULL,
  `nm_perumahan` varchar(50) NOT NULL,
  `nm_developer` varchar(100) NOT NULL,
  `nm_direktur` varchar(50) NOT NULL,
  `kontak_pemasaran` varchar(15) NOT NULL,
  `kontak_perusahaan` varchar(15) NOT NULL,
  `alamat_kantor` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_profil_perumahan`
--

INSERT INTO `tbl_profil_perumahan` (`id`, `nm_perumahan`, `nm_developer`, `nm_direktur`, `kontak_pemasaran`, `kontak_perusahaan`, `alamat_kantor`, `deskripsi`) VALUES
(1, 'Grand Asri', 'Maju Jaya Abadi', 'Miftah Firdaus', '084567654567', '053456434', 'Jl. Pahlawan No.5', 'Perumahan ini dibangun bla bla bla');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rumah`
--

CREATE TABLE `tbl_rumah` (
  `id_rumah` int(11) NOT NULL,
  `ukuran_rumah` varchar(100) NOT NULL,
  `ket_rumah` varchar(100) NOT NULL,
  `alamat_rumah` varchar(100) NOT NULL,
  `pln` varchar(100) NOT NULL,
  `pdam` varchar(100) NOT NULL,
  `type_rumah` varchar(100) NOT NULL,
  `ukuran_tanah` varchar(100) NOT NULL,
  `jlh_rumah` int(20) NOT NULL,
  `harga_jual` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_rumah`
--

INSERT INTO `tbl_rumah` (`id_rumah`, `ukuran_rumah`, `ket_rumah`, `alamat_rumah`, `pln`, `pdam`, `type_rumah`, `ukuran_tanah`, `jlh_rumah`, `harga_jual`) VALUES
(1, '6x6', 'Subsidi', 'jl.bumi indah permai blok a', '900 watt', 'Gol.A', '36', '60', 10, 'Rp.500.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sarana_prasarana`
--

CREATE TABLE `tbl_sarana_prasarana` (
  `id` int(11) NOT NULL,
  `nm_sarana_prasana` varchar(50) NOT NULL,
  `jlh` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_sarana_prasarana`
--

INSERT INTO `tbl_sarana_prasarana` (`id`, `nm_sarana_prasana`, `jlh`, `status`, `keterangan`) VALUES
(1, 'MASJID', 1, 'BAIK', 'PERLU PENAMBAHAN FASILITAS DI MASJID');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_syarat_pemesanan_rmh`
--

CREATE TABLE `tbl_syarat_pemesanan_rmh` (
  `id` int(11) NOT NULL,
  `id_kustomer` int(11) NOT NULL,
  `ktp` varchar(50) NOT NULL,
  `slip_gaji` varchar(50) NOT NULL,
  `kk` varchar(50) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  `buku_nikah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_syarat_pemesanan_rmh`
--

INSERT INTO `tbl_syarat_pemesanan_rmh` (`id`, `id_kustomer`, `ktp`, `slip_gaji`, `kk`, `npwp`, `buku_nikah`) VALUES
(1, 1, 'sudah', 'sudah', 'sudah', 'sudah', 'sudah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_syarat_pengajuan`
--

CREATE TABLE `tbl_syarat_pengajuan` (
  `id` int(11) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `ktp_pemohon` varchar(50) NOT NULL,
  `ktp_suami_istri` varchar(50) NOT NULL,
  `kk` varchar(50) NOT NULL,
  `surat_nikah_cerai` varchar(50) NOT NULL,
  `slip_gaji` varchar(50) NOT NULL,
  `rek_koran` varchar(50) NOT NULL,
  `npwp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_syarat_pengajuan`
--

INSERT INTO `tbl_syarat_pengajuan` (`id`, `id_pengajuan`, `ktp_pemohon`, `ktp_suami_istri`, `kk`, `surat_nikah_cerai`, `slip_gaji`, `rek_koran`, `npwp`) VALUES
(1, 1, 'sudah', 'sudah', 'sudah', 'sudah', 'sudah', 'sudah', 'sudah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'usman', 'usman123', 'user'),
(3, 'daus', 'daus77', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_angsuran`
--
ALTER TABLE `tbl_angsuran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kustomer`
--
ALTER TABLE `tbl_kustomer`
  ADD PRIMARY KEY (`id_kustomer`);

--
-- Indeks untuk tabel `tbl_layanan`
--
ALTER TABLE `tbl_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_pemesanan_rumah`
--
ALTER TABLE `tbl_pemesanan_rumah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indeks untuk tabel `tbl_profil_perumahan`
--
ALTER TABLE `tbl_profil_perumahan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_rumah`
--
ALTER TABLE `tbl_rumah`
  ADD PRIMARY KEY (`id_rumah`);

--
-- Indeks untuk tabel `tbl_sarana_prasarana`
--
ALTER TABLE `tbl_sarana_prasarana`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_syarat_pemesanan_rmh`
--
ALTER TABLE `tbl_syarat_pemesanan_rmh`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_syarat_pengajuan`
--
ALTER TABLE `tbl_syarat_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_angsuran`
--
ALTER TABLE `tbl_angsuran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_kustomer`
--
ALTER TABLE `tbl_kustomer`
  MODIFY `id_kustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_layanan`
--
ALTER TABLE `tbl_layanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pemesanan_rumah`
--
ALTER TABLE `tbl_pemesanan_rumah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengajuan`
--
ALTER TABLE `tbl_pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_profil_perumahan`
--
ALTER TABLE `tbl_profil_perumahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_rumah`
--
ALTER TABLE `tbl_rumah`
  MODIFY `id_rumah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_sarana_prasarana`
--
ALTER TABLE `tbl_sarana_prasarana`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_syarat_pemesanan_rmh`
--
ALTER TABLE `tbl_syarat_pemesanan_rmh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_syarat_pengajuan`
--
ALTER TABLE `tbl_syarat_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 26, 2024 lúc 02:17 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_nls_nhom_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `IDBaiViet` int(11) NOT NULL,
  `IDNguoiDung` int(11) DEFAULT NULL,
  `IDChuDe` int(11) DEFAULT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `NoiDung` text DEFAULT NULL,
  `NgayDang` datetime DEFAULT current_timestamp(),
  `SoLuotLike` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `IDBinhLuan` int(11) NOT NULL,
  `IDBaiViet` int(11) DEFAULT NULL,
  `IDNguoiDung` int(11) DEFAULT NULL,
  `NoiDung` text DEFAULT NULL,
  `NgayDang` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `IDCauHoi` int(11) NOT NULL,
  `IDChuDe` int(11) DEFAULT NULL,
  `NoiDungCauHoi` text DEFAULT NULL,
  `anhmh` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cauhoi`
--

INSERT INTO `cauhoi` (`IDCauHoi`, `IDChuDe`, `NoiDungCauHoi`, `anhmh`) VALUES
(1, 3, 'Trong các ảnh trên ảnh nào là giao diện của Email?', '1.png'),
(2, 3, 'Email là gì?', ''),
(3, 3, 'Đâu là icon của Email?', '3.png'),
(4, 3, 'Trường nào là địa chỉ của người nhận Email?', '4.png'),
(5, 3, 'Trong các địa chỉ dưới đây đâu là địa chỉ của Email?', ''),
(6, 3, 'Anna Đang đăng kí tài khoản Email hãy chọn tên người dùng phù hợp cho cô ấy', '6.png'),
(7, 3, 'Trong các mật khẩu ở hình ảnh dưới đây, đâu là mật khẩu mạnh nhất?', '7.png'),
(8, 3, 'Điều gì sẽ sảy ra khi bạn cung cấp số điện thoại cho nhà cung cấp dịch vụ Email?', ''),
(9, 3, 'Giao diện trên cần bạn làm gì', '9.png'),
(10, 3, 'Giao diện trên cần bạn làm gì', '10.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cautraloi`
--

CREATE TABLE `cautraloi` (
  `IDLuaChon` int(11) NOT NULL,
  `IDPhien` int(11) DEFAULT NULL,
  `IDCauHoi` int(11) DEFAULT NULL,
  `IDDapAnChon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

CREATE TABLE `chude` (
  `IDChuDe` int(11) NOT NULL,
  `IDChuDeChinh` int(11) DEFAULT NULL,
  `TenChuDe` varchar(255) DEFAULT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`IDChuDe`, `IDChuDeChinh`, `TenChuDe`, `MoTa`) VALUES
(1, 2, 'Basic Computer Skills', NULL),
(2, 2, 'Internet Basics', NULL),
(3, 2, 'Using Email', NULL),
(4, 2, 'Windows 10', NULL),
(5, 2, 'Mac OS', NULL),
(6, 3, 'Microsoft Word', NULL),
(7, 3, 'Microsoft Excel', NULL),
(8, 3, 'Microsoft PowerPoint', NULL),
(9, 3, 'Google Docs', NULL),
(10, 4, 'Social Media', NULL),
(11, 4, 'Information Literacy', NULL),
(12, 4, 'Career Search Skills', NULL),
(13, 4, 'Accessing Telehealth Appointments', NULL),
(14, 4, 'Your Digital Footprint', NULL),
(15, 4, 'Supporting K-12 Distance Learning', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chudebaiviet`
--

CREATE TABLE `chudebaiviet` (
  `IDChuDeBaiViet` int(11) NOT NULL,
  `TenChuDe` varchar(255) NOT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chudechinh`
--

CREATE TABLE `chudechinh` (
  `IDChuDeChinh` int(11) NOT NULL,
  `TenChuDe` varchar(255) DEFAULT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chudechinh`
--

INSERT INTO `chudechinh` (`IDChuDeChinh`, `TenChuDe`, `MoTa`) VALUES
(2, 'Essential Computer Skills', 'Includes basic skills and operating system usage'),
(3, 'Essential Software Skills', 'Includes proficiency in key software'),
(4, 'Using Technology in Daily Life', 'Covers daily technology applications');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dapan`
--

CREATE TABLE `dapan` (
  `IDDapAn` int(11) NOT NULL,
  `IDCauHoi` int(11) DEFAULT NULL,
  `NoiDungDapAn` text DEFAULT NULL,
  `LaDapAnDung` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dapan`
--

INSERT INTO `dapan` (`IDDapAn`, `IDCauHoi`, `NoiDungDapAn`, `LaDapAnDung`) VALUES
(1, 1, 'Ảnh 1', 1),
(2, 1, 'Ảnh 2', 0),
(3, 1, 'Ảnh 3', 0),
(4, 1, 'Ảnh 4', 0),
(5, 2, 'Một chương trình dùng để tìm kiếm trên internet', 0),
(6, 2, 'Một chương trình dùng để tại ra tài liệu', 0),
(7, 2, 'Dùng để trò chuyện với mọi người thông qua video', 0),
(8, 2, 'Một chương trình dùng để gửi thư qua internet', 1),
(9, 3, 'Icon 1', 1),
(10, 3, 'Icon 2', 0),
(11, 3, 'Icon 3', 0),
(12, 3, 'Icon 4', 0),
(13, 4, 'Trường \"URL\"', 0),
(14, 4, 'Trường \"To:\"', 1),
(15, 4, 'Trường \"Subject:\"', 0),
(16, 4, 'Trường \"From:\"', 0),
(17, 5, 'anna789@gmail.com', 1),
(18, 5, 'https://facebook.com', 0),
(19, 5, 'johnsun234@yahoo.com', 0),
(20, 5, 'Không có đáp án nào đúng', 0),
(21, 6, 'anna247', 1),
(22, 6, 'Shama.nana', 0),
(23, 6, 'Dũng sĩ', 0),
(24, 6, '<123456>', 0),
(25, 7, 'Add Numbers', 0),
(26, 7, 'Add Symbols', 0),
(27, 7, 'Add Family\'s Names', 1),
(28, 7, 'Make it Shorter và Add Capital Letters', 0),
(29, 8, 'Dùng để đăng nhập khi bạn quên mật khẩu', 0),
(30, 8, 'Bán nó cho các nhà quảng cáo', 0),
(31, 8, 'Báo cho bạn những hoạt động đáng ngờ', 0),
(32, 8, 'Tất cả đáp án trên', 1),
(33, 9, 'Cung cấp tài khoản Email để đăng nhập', 1),
(34, 9, 'Cung cấp tài khoản Email để gửi tin trên internet', 0),
(35, 9, 'Dùng để quên mật khẩu', 0),
(36, 9, 'Dùng để đăng kí tài khoản', 0),
(37, 10, 'Cung cấp tài khoản Email để gửi tin trên internet', 0),
(38, 10, 'Cung cấp mật khẩu của bạn để đăng nhập', 1),
(39, 10, 'Dùng để quên mật khẩu', 0),
(40, 10, 'Dùng để đăng kí tài khoản', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `file`
--

CREATE TABLE `file` (
  `IDFile` int(11) NOT NULL,
  `IDBaiViet` int(11) DEFAULT NULL,
  `DuongDanFile` varchar(255) NOT NULL,
  `LoaiFile` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ketqua`
--

CREATE TABLE `ketqua` (
  `IDKetQua` int(11) NOT NULL,
  `IDPhien` int(11) DEFAULT NULL,
  `Diem` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `IDLike` int(11) NOT NULL,
  `IDBaiViet` int(11) DEFAULT NULL,
  `IDNguoiDung` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_04_12_073114_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `IDNguoiDung` int(11) NOT NULL,
  `Ten` varchar(50) DEFAULT NULL,
  `GioiTinh` int(2) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(255) DEFAULT NULL,
  `Avata` varchar(255) DEFAULT NULL,
  `MSV` varchar(50) DEFAULT NULL,
  `StatusOnline` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phien`
--

CREATE TABLE `phien` (
  `IDPhien` int(11) NOT NULL,
  `IDNguoiDung` int(11) DEFAULT NULL,
  `NgayGioBatDau` datetime DEFAULT NULL,
  `NgayGioKetThuc` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('YFzBTVVOJrced9jwnJR9XZtymfEKaAnClxrLjPbe', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieDNhVDN1dHJJdFBad1h2S1lrSnNaVE11aHNER0czaUsxTDU2UFdxTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vbnRhcC0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6MjI4OiJleUpwZGlJNklsRjZiMlk1UlZSaWFXeDBVbkJoTTNkWFNrbEhTMmM5UFNJc0luWmhiSFZsSWpvaWJFa3lSRFY0VUhNNU16QnhTbVpqV1ZaamVYSXhSRkpuVFhKbVkyMDRaMlYzVlcxcVRERTNVSEY1UVQwaUxDSnRZV01pT2lKak1UUmpOakF6TjJWaE5qZG1aRFkyWkRBM1pEVmxOVFk1WTJJeVl6Rm1ZemN6Tm1GaE56Tm1ZVEEyT1RCbVlURXdZVFptWkRFNE1HRmpOemN3TWpneElpd2lkR0ZuSWpvaUluMD0iO30=', 1714133634);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongbao`
--

CREATE TABLE `thongbao` (
  `IDThongBao` int(11) NOT NULL,
  `IDNguoiDung` int(11) DEFAULT NULL,
  `LoaiThongBao` varchar(255) DEFAULT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `NoiDung` text DEFAULT NULL,
  `NgayThoiGian` datetime DEFAULT current_timestamp(),
  `DaDoc` tinyint(1) DEFAULT 0,
  `Link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(2048) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(2048) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `google_id`) VALUES
(1, 'Đức Anh _ K23HTTTB Trần', 'tranducanh619@gmail.com', NULL, 'eyJpdiI6IlF6b2Y5RVRiaWx0UnBhM3dXSklHS2c9PSIsInZhbHVlIjoibEkyRDV4UHM5MzBxSmZjWVZjeXIxRFJnTXJmY204Z2V3VW1qTDE3UHF5QT0iLCJtYWMiOiJjMTRjNjAzN2VhNjdmZDY2ZDA3ZDVlNTY5Y2IyYzFmYzczNmFhNzNmYTA2OTBmYTEwYTZmZDE4MGFjNzcwMjgxIiwidGFnIjoiIn0=', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-12 01:08:26', '2024-04-26 00:51:31', '108468412934413434472'),
(2, 'ducanh tran', 'tranducanh617@gmail.com', NULL, 'eyJpdiI6IkQ1QXRENGJhU0h2ZEhVWldtTEloTGc9PSIsInZhbHVlIjoic2VlRFVONk1oUHlQMXRvbitsbENYeFBRV0dRRnV6dll1QkRpWU9LcVl1dz0iLCJtYWMiOiJmZjBhZWE5MDI0NGQ0MGZhNWIzNDY1NjFkNTNjYTM1MWM0MjA4MzQzYjA0YjNhYzE0YzRjMGYwNTA3N2RlZDNiIiwidGFnIjoiIn0=', NULL, NULL, NULL, NULL, NULL, NULL, '2024-04-12 01:25:56', '2024-04-12 01:28:17', '117846530714050588624');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vaitro`
--

CREATE TABLE `vaitro` (
  `IDVaiTro` int(11) NOT NULL,
  `TenVaiTro` varchar(255) NOT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vaitronguodung`
--

CREATE TABLE `vaitronguodung` (
  `IDNguoiDung` int(11) NOT NULL,
  `IDVaiTro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`IDBaiViet`),
  ADD KEY `IDNguoiDung` (`IDNguoiDung`),
  ADD KEY `IDChuDe` (`IDChuDe`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`IDBinhLuan`),
  ADD KEY `IDBaiViet` (`IDBaiViet`),
  ADD KEY `IDNguoiDung` (`IDNguoiDung`);

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`IDCauHoi`),
  ADD KEY `IDChuDe` (`IDChuDe`);

--
-- Chỉ mục cho bảng `cautraloi`
--
ALTER TABLE `cautraloi`
  ADD PRIMARY KEY (`IDLuaChon`),
  ADD KEY `IDPhien` (`IDPhien`),
  ADD KEY `IDCauHoi` (`IDCauHoi`),
  ADD KEY `IDDapAnChon` (`IDDapAnChon`);

--
-- Chỉ mục cho bảng `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`IDChuDe`),
  ADD KEY `IDChuDeChinh` (`IDChuDeChinh`);

--
-- Chỉ mục cho bảng `chudebaiviet`
--
ALTER TABLE `chudebaiviet`
  ADD PRIMARY KEY (`IDChuDeBaiViet`);

--
-- Chỉ mục cho bảng `chudechinh`
--
ALTER TABLE `chudechinh`
  ADD PRIMARY KEY (`IDChuDeChinh`);

--
-- Chỉ mục cho bảng `dapan`
--
ALTER TABLE `dapan`
  ADD PRIMARY KEY (`IDDapAn`),
  ADD KEY `IDCauHoi` (`IDCauHoi`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`IDFile`),
  ADD KEY `IDBaiViet` (`IDBaiViet`);

--
-- Chỉ mục cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`IDKetQua`),
  ADD KEY `IDPhien` (`IDPhien`);

--
-- Chỉ mục cho bảng `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`IDLike`),
  ADD KEY `IDBaiViet` (`IDBaiViet`),
  ADD KEY `IDNguoiDung` (`IDNguoiDung`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`IDNguoiDung`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `phien`
--
ALTER TABLE `phien`
  ADD PRIMARY KEY (`IDPhien`),
  ADD KEY `IDSinhVien` (`IDNguoiDung`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`IDThongBao`),
  ADD KEY `IDNguoiDung` (`IDNguoiDung`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `vaitro`
--
ALTER TABLE `vaitro`
  ADD PRIMARY KEY (`IDVaiTro`);

--
-- Chỉ mục cho bảng `vaitronguodung`
--
ALTER TABLE `vaitronguodung`
  ADD PRIMARY KEY (`IDNguoiDung`,`IDVaiTro`),
  ADD KEY `IDVaiTro` (`IDVaiTro`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `IDBaiViet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `IDBinhLuan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `IDCauHoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `cautraloi`
--
ALTER TABLE `cautraloi`
  MODIFY `IDLuaChon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `IDChuDe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `chudebaiviet`
--
ALTER TABLE `chudebaiviet`
  MODIFY `IDChuDeBaiViet` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chudechinh`
--
ALTER TABLE `chudechinh`
  MODIFY `IDChuDeChinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dapan`
--
ALTER TABLE `dapan`
  MODIFY `IDDapAn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `file`
--
ALTER TABLE `file`
  MODIFY `IDFile` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  MODIFY `IDKetQua` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `likes`
--
ALTER TABLE `likes`
  MODIFY `IDLike` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `IDNguoiDung` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phien`
--
ALTER TABLE `phien`
  MODIFY `IDPhien` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `IDThongBao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vaitro`
--
ALTER TABLE `vaitro`
  MODIFY `IDVaiTro` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`IDNguoiDung`) REFERENCES `nguoidung` (`IDNguoiDung`),
  ADD CONSTRAINT `baiviet_ibfk_2` FOREIGN KEY (`IDChuDe`) REFERENCES `chudebaiviet` (`IDChuDeBaiViet`);

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`IDBaiViet`) REFERENCES `baiviet` (`IDBaiViet`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`IDNguoiDung`) REFERENCES `nguoidung` (`IDNguoiDung`);

--
-- Các ràng buộc cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `cauhoi_ibfk_1` FOREIGN KEY (`IDChuDe`) REFERENCES `chude` (`IDChuDe`);

--
-- Các ràng buộc cho bảng `cautraloi`
--
ALTER TABLE `cautraloi`
  ADD CONSTRAINT `cautraloi_ibfk_1` FOREIGN KEY (`IDPhien`) REFERENCES `phien` (`IDPhien`),
  ADD CONSTRAINT `cautraloi_ibfk_2` FOREIGN KEY (`IDCauHoi`) REFERENCES `cauhoi` (`IDCauHoi`),
  ADD CONSTRAINT `cautraloi_ibfk_3` FOREIGN KEY (`IDDapAnChon`) REFERENCES `dapan` (`IDDapAn`);

--
-- Các ràng buộc cho bảng `chude`
--
ALTER TABLE `chude`
  ADD CONSTRAINT `chude_ibfk_1` FOREIGN KEY (`IDChuDeChinh`) REFERENCES `chudechinh` (`IDChuDeChinh`);

--
-- Các ràng buộc cho bảng `dapan`
--
ALTER TABLE `dapan`
  ADD CONSTRAINT `dapan_ibfk_1` FOREIGN KEY (`IDCauHoi`) REFERENCES `cauhoi` (`IDCauHoi`);

--
-- Các ràng buộc cho bảng `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `file_ibfk_1` FOREIGN KEY (`IDBaiViet`) REFERENCES `baiviet` (`IDBaiViet`);

--
-- Các ràng buộc cho bảng `ketqua`
--
ALTER TABLE `ketqua`
  ADD CONSTRAINT `ketqua_ibfk_1` FOREIGN KEY (`IDPhien`) REFERENCES `phien` (`IDPhien`);

--
-- Các ràng buộc cho bảng `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`IDBaiViet`) REFERENCES `baiviet` (`IDBaiViet`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`IDNguoiDung`) REFERENCES `nguoidung` (`IDNguoiDung`);

--
-- Các ràng buộc cho bảng `phien`
--
ALTER TABLE `phien`
  ADD CONSTRAINT `phien_ibfk_1` FOREIGN KEY (`IDNguoiDung`) REFERENCES `nguoidung` (`IDNguoiDung`);

--
-- Các ràng buộc cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  ADD CONSTRAINT `thongbao_ibfk_1` FOREIGN KEY (`IDNguoiDung`) REFERENCES `nguoidung` (`IDNguoiDung`);

--
-- Các ràng buộc cho bảng `vaitronguodung`
--
ALTER TABLE `vaitronguodung`
  ADD CONSTRAINT `vaitronguodung_ibfk_1` FOREIGN KEY (`IDNguoiDung`) REFERENCES `nguoidung` (`IDNguoiDung`),
  ADD CONSTRAINT `vaitronguodung_ibfk_2` FOREIGN KEY (`IDVaiTro`) REFERENCES `vaitro` (`IDVaiTro`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 10, 2024 lúc 07:42 AM
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
-- Cơ sở dữ liệu: `ilyoushoesshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gia`
--

CREATE TABLE `danh_gia` (
  `id_danh_gia` int(10) UNSIGNED NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `ten_danh_gia` varchar(255) NOT NULL,
  `danh_gia` varchar(255) NOT NULL,
  `danh_gia_binh_luan` longtext DEFAULT NULL,
  `id_giay` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_gia`
--

INSERT INTO `danh_gia` (`id_danh_gia`, `id_user`, `ten_danh_gia`, `danh_gia`, `danh_gia_binh_luan`, `id_giay`, `created_at`, `updated_at`) VALUES
(1, '1', 'Admin', '4.5', 'cũng ok phết', '1', '2022-05-02 08:04:28', '2022-05-02 08:04:28'),
(2, '1', 'Admin', '4.5', 'Kha ok', '2', '2022-05-02 11:09:19', '2022-05-02 11:09:19'),
(3, '2', 'Phan Văn Bằng', '4.5', 'Giá rẻ lại đẹp, nên mua', '2', '2022-05-02 11:18:06', '2022-05-02 11:18:06'),
(4, '2', 'Phan Văn Bằng', '4.5', 'Giá ok, đẹp', '1', '2022-05-02 11:18:27', '2022-05-02 11:18:27'),
(5, '2', 'Phan Văn Bằng', '3', 'Nhìn ok phết, như đi bộ đội luôn :)))', '3', '2022-05-02 11:19:03', '2022-05-02 11:19:03'),
(6, '1', 'Admin', '4.5', 'dd', '34', '2024-10-09 09:11:17', '2024-10-09 10:58:23'),
(7, '1', 'Admin', '5', 'okok', '35', '2024-10-09 09:16:37', '2024-10-09 09:16:37'),
(8, '1', 'Admin', '4.5', 'dd', '34', '2024-10-09 10:58:23', '2024-10-09 10:58:23'),
(9, '1', 'Admin', '4.5', 'tốt', '35', '2024-10-09 10:59:13', '2024-10-09 10:59:13'),
(10, '1', 'Admin', '4.5', 'oke', '34', '2024-10-09 11:14:52', '2024-10-09 11:14:52'),
(11, '1', 'Admin', '4.5', 'duoc', '44', '2024-10-09 11:19:43', '2024-10-09 11:19:43'),
(12, '1', 'Admin', '4.5', 'aaa', '35', '2024-10-09 11:47:43', '2024-10-09 11:47:43'),
(13, '1', 'Admin', '4.5', 'sss', '41', '2024-10-09 11:58:19', '2024-10-09 12:13:00'),
(14, '1', 'Admin', '4.5', 'okokok', '34', '2024-10-09 12:13:28', '2024-10-09 12:13:28'),
(15, '1', 'Admin', '4.5', 'okokokk', '44', '2024-10-09 12:13:46', '2024-10-09 12:13:46'),
(16, '1', 'Admin', '4.5', 'hiih', '33', '2024-10-09 12:16:03', '2024-10-09 12:22:58'),
(17, '1', 'Admin', '4.5', 'ddd', '37', '2024-10-09 12:25:21', '2024-10-09 12:25:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doanh_thus`
--

CREATE TABLE `doanh_thus` (
  `tongdoanhthu` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doanh_thus`
--

INSERT INTO `doanh_thus` (`tongdoanhthu`, `created_at`, `updated_at`) VALUES
(0, '2024-10-05 13:07:14', '2024-10-05 13:07:14'),
(0, '2024-10-05 13:08:53', '2024-10-05 13:08:53'),
(0, '2024-10-05 13:09:21', '2024-10-05 13:09:21'),
(0, '2024-10-05 13:09:57', '2024-10-05 13:09:57'),
(1161000, '2024-10-05 13:11:22', '2024-10-05 13:11:22'),
(1161000, '2024-10-05 13:11:55', '2024-10-05 13:11:55'),
(1161000, '2024-10-05 13:26:12', '2024-10-05 13:26:12'),
(2322000, '2024-10-05 13:26:21', '2024-10-05 13:26:21'),
(2468550, '2024-10-05 13:30:45', '2024-10-05 13:30:45'),
(1161000, '2024-10-05 13:35:11', '2024-10-05 13:35:11'),
(1161000, '2024-10-05 19:41:54', '2024-10-05 19:41:54'),
(1161000, '2024-10-05 19:46:48', '2024-10-05 19:46:48'),
(1020000, '2024-10-05 21:33:38', '2024-10-05 21:33:38'),
(49000, '2024-10-05 21:38:00', '2024-10-05 21:38:00'),
(340000, '2024-10-05 22:03:55', '2024-10-05 22:03:55'),
(218250, '2024-10-05 22:18:21', '2024-10-05 22:18:21'),
(654750, '2024-10-06 01:15:17', '2024-10-06 01:15:17'),
(0, '2024-10-06 01:37:51', '2024-10-06 01:37:51'),
(1020000, '2024-10-06 01:37:55', '2024-10-06 01:37:55'),
(1499150, '2024-10-06 01:41:23', '2024-10-06 01:41:23'),
(1700000, '2024-10-06 02:13:32', '2024-10-06 02:13:32'),
(1700000, '2024-10-06 02:15:32', '2024-10-06 02:15:32'),
(0, '2024-10-06 02:15:52', '2024-10-06 02:15:52'),
(0, '2024-10-06 02:17:09', '2024-10-06 02:17:09'),
(0, '2024-10-06 02:23:00', '2024-10-06 02:23:00'),
(1700000, '2024-10-06 02:23:08', '2024-10-06 02:23:08'),
(0, '2024-10-06 03:11:49', '2024-10-06 03:11:49'),
(340000, '2024-10-06 03:11:52', '2024-10-06 03:11:52'),
(340000, '2024-10-06 03:12:34', '2024-10-06 03:12:34'),
(1020000, '2024-10-06 08:23:24', '2024-10-06 08:23:24'),
(218250, '2024-10-06 10:59:02', '2024-10-06 10:59:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_da_dats`
--

CREATE TABLE `don_da_dats` (
  `ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) NOT NULL,
  `dia_chi_nhan` varchar(255) NOT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `tong_tien` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_da_dats`
--

INSERT INTO `don_da_dats` (`ten_nguoi_nhan`, `sdt`, `dia_chi_nhan`, `ghi_chu`, `tong_tien`, `created_at`, `updated_at`) VALUES
('Admin', '0123456789', 'hn', 'hn', '', '2024-10-06 02:23:00', '2024-10-06 02:23:00'),
('Admin', '0123456789', 'th', 'th', '1700000VNĐ', '2024-10-06 02:23:08', '2024-10-06 02:23:08'),
('Admin', '0123456789', 'hn', 'hn', '', '2024-10-06 03:11:49', '2024-10-06 03:11:49'),
('Admin', '0123456789', 'aa', 'aaa', '340000VNĐ', '2024-10-06 03:11:52', '2024-10-06 03:11:52'),
('Admin', '0123456789', 'aa', 'aaa', '340000VNĐ', '2024-10-06 03:12:34', '2024-10-06 03:12:34'),
('Admin', '0123456789', 'hn', 'hn', '1020000VNĐ', '2024-10-06 08:23:24', '2024-10-06 08:23:24'),
('Admin', '0123456789', 'hn', 'qq', '218250VNĐ', '2024-10-06 10:59:02', '2024-10-06 10:59:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id_don_hang` int(10) UNSIGNED NOT NULL,
  `ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `dia_chi_nhan` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `tong_tien` varchar(255) DEFAULT NULL,
  `hinh_thuc_thanh_toan` varchar(255) DEFAULT NULL,
  `hoa_don` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id_don_hang`, `ten_nguoi_nhan`, `sdt`, `dia_chi_nhan`, `ghi_chu`, `tong_tien`, `hinh_thuc_thanh_toan`, `hoa_don`, `created_at`, `updated_at`) VALUES
(101, 'Admin', '0123456789', 'hn', 'hn', '286,150 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:41;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay10.jpg\";s:8:\"ten_giay\";s:17:\"Giày chạy bộ\";s:7:\"don_gia\";s:6:\"295000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-06 10:29:06', '2024-10-06 10:29:06'),
(102, 'Admin', '0123456789', 'hn', '11', '340,000 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:44;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay14.jpg\";s:8:\"ten_giay\";s:18:\"Áo chống nắng\";s:7:\"don_gia\";s:6:\"400000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"15\";}}', '2024-10-06 10:45:12', '2024-10-06 10:45:12'),
(104, 'vt', '1234567890', 'hn', 'dd', '572,300 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:41;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay10.jpg\";s:8:\"ten_giay\";s:17:\"Giày chạy bộ\";s:7:\"don_gia\";s:6:\"295000\";s:8:\"so_luong\";s:1:\"2\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-07 05:34:21', '2024-10-07 05:34:21'),
(105, 'vt', '1234567890', 'hn', 'sss', '218,250 VNĐ', 'Đã thanh toán online qua MOMO', 'a:1:{i:34;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay2.jpg\";s:8:\"ten_giay\";s:10:\"Kính bơi\";s:7:\"don_gia\";s:6:\"225000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-07 05:51:19', '2024-10-07 05:51:19'),
(106, 'vt', '1234567890', 'ok', 'ss', '218,250 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:34;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay2.jpg\";s:8:\"ten_giay\";s:10:\"Kính bơi\";s:7:\"don_gia\";s:6:\"225000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-07 06:35:43', '2024-10-07 06:35:43'),
(107, 'Admin', '0123456789', 'test', 'test', '286,150 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:41;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay10.jpg\";s:8:\"ten_giay\";s:17:\"Giày chạy bộ\";s:7:\"don_gia\";s:6:\"295000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-07 06:37:20', '2024-10-07 06:37:20'),
(108, 'Admin', '0123456789', 'test', 'test', '286,150 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:41;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay10.jpg\";s:8:\"ten_giay\";s:17:\"Giày chạy bộ\";s:7:\"don_gia\";s:6:\"295000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-07 06:37:45', '2024-10-07 06:37:45'),
(109, 'Admin', '0123456789', 'momo', 'momo', '286,150 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:41;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay10.jpg\";s:8:\"ten_giay\";s:17:\"Giày chạy bộ\";s:7:\"don_gia\";s:6:\"295000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-07 06:42:11', '2024-10-07 06:42:11'),
(110, 'Admin', '0123456789', 'momo', 'momo', '286,150 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:41;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay10.jpg\";s:8:\"ten_giay\";s:17:\"Giày chạy bộ\";s:7:\"don_gia\";s:6:\"295000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-07 06:42:21', '2024-10-07 06:42:21'),
(111, 'Admin', '0123456789', 'ddd', 'ddd', '218,250 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:34;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay2.jpg\";s:8:\"ten_giay\";s:10:\"Kính bơi\";s:7:\"don_gia\";s:6:\"225000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-07 06:53:12', '2024-10-07 06:53:12'),
(112, 'Admin', '0123456789', 'hn', 'dd', '218,250 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:34;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay2.jpg\";s:8:\"ten_giay\";s:10:\"Kính bơi\";s:7:\"don_gia\";s:6:\"225000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-07 06:57:36', '2024-10-07 06:57:36'),
(113, 'Admin', '0123456789', 'hn', 'sss', '49,000 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:35;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay3.jpg\";s:8:\"ten_giay\";s:22:\"Mũ bơi vải lưới\";s:7:\"don_gia\";s:5:\"49000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"0\";}}', '2024-10-07 07:50:47', '2024-10-07 07:50:47'),
(114, 'Admin', '0123456789', 'hn', 'sss', '49,000 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:35;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay3.jpg\";s:8:\"ten_giay\";s:22:\"Mũ bơi vải lưới\";s:7:\"don_gia\";s:5:\"49000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"0\";}}', '2024-10-07 07:50:59', '2024-10-07 07:50:59'),
(115, 'Admin', '0123456789', 'hn', 'ss', '1,360,000 VNĐ', 'Thanh toán online bằng MOMO', 'a:1:{i:44;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay14.jpg\";s:8:\"ten_giay\";s:18:\"Áo chống nắng\";s:7:\"don_gia\";s:6:\"400000\";s:8:\"so_luong\";s:1:\"4\";s:10:\"khuyen_mai\";s:2:\"15\";}}', '2024-10-07 10:41:07', '2024-10-07 10:41:07'),
(116, 'Admin', '0123456789', 'hn', 'jj', '218,250 VNĐ', 'Thanh toán online bằng MOMO', 'a:1:{i:34;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay2.jpg\";s:8:\"ten_giay\";s:10:\"Kính bơi\";s:7:\"don_gia\";s:6:\"225000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-08 01:49:01', '2024-10-08 01:49:01'),
(117, 'Admin', '0123456789', 'danh gia', 'danh gia', '654,750 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:34;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay2.jpg\";s:8:\"ten_giay\";s:10:\"Kính bơi\";s:7:\"don_gia\";s:6:\"225000\";s:8:\"so_luong\";i:3;s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-09 08:48:35', '2024-10-09 08:48:35'),
(118, 'Admin', '0123456789', 'danh gia', 'danh gia', '654,750 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:34;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay2.jpg\";s:8:\"ten_giay\";s:10:\"Kính bơi\";s:7:\"don_gia\";s:6:\"225000\";s:8:\"so_luong\";i:3;s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-09 08:48:40', '2024-10-09 08:48:40'),
(119, 'Admin', '0123456789', 'qqq', 'qqq', '290,000 VNĐ', 'Sau khi nhận hàng', 'a:2:{i:33;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay1.jpg\";s:8:\"ten_giay\";s:11:\"Khăn tắm\";s:7:\"don_gia\";s:6:\"145000\";s:8:\"so_luong\";i:2;s:10:\"khuyen_mai\";s:1:\"0\";}i:35;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay3.jpg\";s:8:\"ten_giay\";s:22:\"Mũ bơi vải lưới\";s:7:\"don_gia\";s:5:\"49000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"0\";}}', '2024-10-09 09:15:21', '2024-10-09 09:15:21'),
(120, 'Admin', '0123456789', 's', 's', '340,000 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:44;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay14.jpg\";s:8:\"ten_giay\";s:18:\"Áo chống nắng\";s:7:\"don_gia\";s:6:\"400000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"15\";}}', '2024-10-09 11:19:23', '2024-10-09 11:19:23'),
(121, 'Admin', '0123456789', 's', 's', '286,150 VNĐ', 'Thanh toán online bằng MOMO', 'a:1:{i:41;a:5:{s:10:\"hinh_anh_1\";s:10:\"giay10.jpg\";s:8:\"ten_giay\";s:17:\"Giày chạy bộ\";s:7:\"don_gia\";s:6:\"295000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:1:\"3\";}}', '2024-10-09 11:57:54', '2024-10-09 11:57:54'),
(122, 'Admin', '0123456789', 'ss', 'sss', '8,995,500 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:37;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay7.jpg\";s:8:\"ten_giay\";s:9:\"Xe đạp\";s:7:\"don_gia\";s:7:\"9995000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"10\";}}', '2024-10-09 12:24:58', '2024-10-09 12:24:58'),
(123, 'Admin', '0123456789', 'ss', 'sss', '8,995,500 VNĐ', 'Sau khi nhận hàng', 'a:1:{i:37;a:5:{s:10:\"hinh_anh_1\";s:9:\"giay7.jpg\";s:8:\"ten_giay\";s:9:\"Xe đạp\";s:7:\"don_gia\";s:7:\"9995000\";s:8:\"so_luong\";s:1:\"1\";s:10:\"khuyen_mai\";s:2:\"10\";}}', '2024-10-09 12:25:02', '2024-10-09 12:25:02');

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
-- Cấu trúc bảng cho bảng `giay`
--

CREATE TABLE `giay` (
  `id_giay` int(10) UNSIGNED NOT NULL,
  `ten_giay` varchar(255) NOT NULL,
  `ten_loai_giay` varchar(255) NOT NULL,
  `ten_thuong_hieu` varchar(255) NOT NULL,
  `mo_ta` longtext DEFAULT NULL,
  `don_gia` varchar(255) NOT NULL,
  `so_luong` varchar(255) DEFAULT NULL,
  `hinh_anh_1` varchar(255) DEFAULT NULL,
  `hinh_anh_2` varchar(255) DEFAULT NULL,
  `hinh_anh_3` varchar(255) DEFAULT NULL,
  `hinh_anh_4` varchar(255) DEFAULT NULL,
  `ten_khuyen_mai` varchar(255) DEFAULT NULL,
  `so_luong_mua` varchar(255) DEFAULT NULL,
  `so_luot_xem` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giay`
--

INSERT INTO `giay` (`id_giay`, `ten_giay`, `ten_loai_giay`, `ten_thuong_hieu`, `mo_ta`, `don_gia`, `so_luong`, `hinh_anh_1`, `hinh_anh_2`, `hinh_anh_3`, `hinh_anh_4`, `ten_khuyen_mai`, `so_luong_mua`, `so_luot_xem`, `created_at`, `updated_at`) VALUES
(33, 'Khăn tắm', 'Bơi lội', 'Panatta Sport', '<h2><strong>Khăn tắm Microfibre thấm hút cỡ L 80 x 130 cm - Xanh dương</strong></h2>', '145000', '50', 'giay1.jpg', 'giay24.jpg', 'giay25.jpg', 'giay24.jpg', 'Không khuyễn mãi', '1', 0, '2024-10-05 20:51:23', '2024-10-09 09:15:21'),
(34, 'Kính bơi', 'Bơi lội', 'Panatta Sport', '<h2><strong>Kính bơi cận tròng kính trong suốt một cỡ - Optical Xbase 100 đen</strong></h2>', '225000', '50', 'giay2.jpg', 'giay26.jpg', 'giay27.jpg', 'giay28.jpg', 'Chủ vui nên khuyến mãi', '14', 0, '2024-10-05 20:54:53', '2024-10-09 08:48:40'),
(35, 'Mũ bơi vải lưới', 'Bơi lội', 'Panatta Sport', '<h2><strong>Mũ bơi vải lưới cỡ S/L - Đen</strong></h2>', '49000', '50', 'giay3.jpg', 'giay29.jpg', 'giay30.jpg', 'giay31.jpg', 'Không khuyễn mãi', '5', 0, '2024-10-05 20:56:56', '2024-10-09 09:15:21'),
(36, 'Túi đi bơi', 'Bơi lội', 'Panatta Sport', '<h2><strong>Túi đi bơi 7L chống thấm nước trong suốt</strong></h2>', '225000', '50', 'giay4.jpg', 'giay32.jpg', 'giay33.jpg', 'giay34.jpg', NULL, '0', 0, '2024-10-05 20:58:44', '2024-10-05 20:58:44'),
(37, 'Xe đạp', 'Leo núi', 'Precor Fitness', '<h2><strong>Xe đạp hybrid - Riverside 500 xám/đỏ</strong></h2>', '9995000', '50', 'giay7.jpg', 'giay35.jpg', 'giay36.jpg', 'giay37.jpg', 'Mới ra mắt', '2', 0, '2024-10-05 21:02:35', '2024-10-09 12:25:02'),
(39, 'Ghế gấp', 'Cắm trại', 'True Fitness', '<h2><strong>Ghế gấp cắm trại MH100 - Vàng</strong></h2>', '345000', '50', 'giay8.jpg', 'giay38.jpg', 'giay39.jpg', 'giay40.jpg', 'Ngày lễ', '0', 0, '2024-10-05 21:05:03', '2024-10-05 21:05:03'),
(40, 'Lều cắm trại', 'Cắm trại', 'Life Fitness', '<h2><strong>Lều cắm trại cho 2 người - MH100 xám</strong></h2>', '745000', '50', 'giay9.jpg', 'giay41.jpg', 'giay42.jpg', 'giay43.jpg', 'Mới ra mắt', '0', 0, '2024-10-05 21:07:18', '2024-10-05 21:07:18'),
(41, 'Giày chạy bộ', 'Leo núi', 'Precor Fitness', '<h2><strong>Giày chạy bộ Run One cho Nam - Xám</strong></h2>', '295000', '50', 'giay10.jpg', 'giay10.jpg', 'giay10.jpg', 'giay10.jpg', 'Chủ vui nên khuyến mãi', '10', 0, '2024-10-05 21:08:50', '2024-10-09 11:57:54'),
(42, 'Áo thun', 'Leo núi', 'Life Fitness', '<h2><strong>Áo thun chạy bộ thoáng khí Run Dry cho nữ - Cam</strong></h2>', '99000', '50', 'giay11.jpg', 'giay11.jpg', 'giay11.jpg', 'giay11.jpg', 'Không khuyễn mãi', '0', 0, '2024-10-05 21:10:11', '2024-10-05 21:10:11'),
(43, 'Balo', 'Leo núi', 'Life Fitness', '<h2><strong>Balo dã ngoại 20L - NH100 Arpenaz đen</strong></h2>', '195000', '50', 'giay12.jpg', 'giay44.jpg', 'giay44.jpg', 'giay44.jpg', 'Không khuyễn mãi', '0', 0, '2024-10-05 21:12:03', '2024-10-05 21:12:03'),
(44, 'Áo chống nắng', 'Leo núi', 'Precor Fitness', '<h2><strong>Áo khoác leo núi nam chống nắng - Helium 500 xanh dương</strong></h2>', '400000', '50', 'giay14.jpg', 'giay46.jpg', 'giay47.jpg', 'giay46.jpg', 'Ngày lễ', '11', 0, '2024-10-05 21:14:07', '2024-10-09 11:19:23'),
(45, 'Tay cầm', 'Tập Gym', 'Gym 80', '<h2><strong>Thanh tập chống đẩy có tay cầm</strong></h2>', '125000', '50', 'giay18.jpg', 'giay48.jpg', 'giay49.jpg', 'giay50.jpg', 'Không khuyễn mãi', '0', 0, '2024-10-05 21:16:24', '2024-10-05 21:16:24'),
(46, 'Xe đạp', 'Leo núi', 'Matrix Fitness', '<p>Xe Đạp Mẫu</p>', '900000', '50', 'giay23.jpg', 'giay23.jpg', 'giay23.jpg', 'giay23.jpg', 'Ngày lễ', '0', 0, '2024-10-06 08:25:35', '2024-10-06 08:25:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyen_mai`
--

CREATE TABLE `khuyen_mai` (
  `id_khuyen_mai` int(10) UNSIGNED NOT NULL,
  `ten_khuyen_mai` varchar(255) NOT NULL,
  `gia_tri_khuyen_mai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyen_mai`
--

INSERT INTO `khuyen_mai` (`id_khuyen_mai`, `ten_khuyen_mai`, `gia_tri_khuyen_mai`) VALUES
(1, 'Không khuyễn mãi', '0'),
(2, 'Ngày lễ', '15'),
(3, 'Mới ra mắt', '10'),
(4, 'Sale cuối năm', '5'),
(5, 'Chủ vui nên khuyến mãi', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_giay`
--

CREATE TABLE `loai_giay` (
  `id_loai_giay` int(10) UNSIGNED NOT NULL,
  `ten_loai_giay` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_giay`
--

INSERT INTO `loai_giay` (`id_loai_giay`, `ten_loai_giay`, `created_at`, `updated_at`) VALUES
(1, 'Tập Gym', NULL, '2024-10-05 20:33:15'),
(2, 'Bơi lội', NULL, '2024-10-05 20:33:26'),
(3, 'Cắm trại', NULL, '2024-10-05 20:33:37'),
(4, 'Leo núi', NULL, '2024-10-05 20:33:48');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_02_024954_create_sessions_table', 1),
(6, '2021_11_15_125359_giay_table', 1),
(7, '2021_11_15_125523_loai_giay_table', 1),
(8, '2021_11_15_125541_thuong_hieu_table', 1),
(9, '2021_11_16_082748_khuyen_mai_table', 1),
(10, '2021_11_16_101507_phan_quyen_table', 1),
(11, '2021_11_21_025722_create_don_hang_table', 1),
(12, '2021_12_02_143926_create_danh_gia_table', 1),
(14, '2024_10_05_181843_doanh_thu', 2),
(15, '2024_10_05_184036_doanh_thu', 3),
(16, '2024_10_05_200218_create_doanh_thus_table', 4),
(17, '2024_10_06_085301_create_don_da_dats_table', 5),
(18, '2024_10_06_092031_create_don_da_dats_table', 6);

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
-- Cấu trúc bảng cho bảng `phan_quyen`
--

CREATE TABLE `phan_quyen` (
  `id_phan_quyen` int(10) UNSIGNED NOT NULL,
  `ten_phan_quyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phan_quyen`
--

INSERT INTO `phan_quyen` (`id_phan_quyen`, `ten_phan_quyen`) VALUES
(1, 'Quản trị viên'),
(2, 'Người dùng'),
(3, 'Nhân viên'),
(4, 'quan ly');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('v9voo7utT7AXnDWPp1WEsklymp6PXUbBtEtV2Zu1', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiZUVkSlVDM2lSbHAyQ3V6RU4zcHY5VjE2ajZhaFhpd2FETlFTWElXdyI7czo4OiJnaW9faGFuZyI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToiY2hlY2siO3M6MToiMSI7czo5OiJkYW5oX2dpYXMiO2E6Njp7aTozNDthOjU6e3M6MTA6ImhpbmhfYW5oXzEiO3M6OToiZ2lheTIuanBnIjtzOjg6InRlbl9naWF5IjtzOjEwOiJLw61uaCBixqFpIjtzOjc6ImRvbl9naWEiO3M6NjoiMjI1MDAwIjtzOjg6InNvX2x1b25nIjtpOjM7czoxMDoia2h1eWVuX21haSI7czoxOiIzIjt9aTozMzthOjU6e3M6MTA6ImhpbmhfYW5oXzEiO3M6OToiZ2lheTEuanBnIjtzOjg6InRlbl9naWF5IjtzOjExOiJLaMSDbiB04bqvbSI7czo3OiJkb25fZ2lhIjtzOjY6IjE0NTAwMCI7czo4OiJzb19sdW9uZyI7aToyO3M6MTA6ImtodXllbl9tYWkiO3M6MToiMCI7fWk6MzU7YTo1OntzOjEwOiJoaW5oX2FuaF8xIjtzOjk6ImdpYXkzLmpwZyI7czo4OiJ0ZW5fZ2lheSI7czoyMjoiTcWpIGLGoWkgduG6o2kgbMaw4bubaSI7czo3OiJkb25fZ2lhIjtzOjU6IjQ5MDAwIjtzOjg6InNvX2x1b25nIjtzOjE6IjEiO3M6MTA6ImtodXllbl9tYWkiO3M6MToiMCI7fWk6NDQ7YTo1OntzOjEwOiJoaW5oX2FuaF8xIjtzOjEwOiJnaWF5MTQuanBnIjtzOjg6InRlbl9naWF5IjtzOjE4OiLDgW8gY2jhu5FuZyBu4bqvbmciO3M6NzoiZG9uX2dpYSI7czo2OiI0MDAwMDAiO3M6ODoic29fbHVvbmciO3M6MToiMSI7czoxMDoia2h1eWVuX21haSI7czoyOiIxNSI7fWk6NDE7YTo1OntzOjEwOiJoaW5oX2FuaF8xIjtzOjEwOiJnaWF5MTAuanBnIjtzOjg6InRlbl9naWF5IjtzOjE3OiJHacOgeSBjaOG6oXkgYuG7mSI7czo3OiJkb25fZ2lhIjtzOjY6IjI5NTAwMCI7czo4OiJzb19sdW9uZyI7czoxOiIxIjtzOjEwOiJraHV5ZW5fbWFpIjtzOjE6IjMiO31pOjM3O2E6NTp7czoxMDoiaGluaF9hbmhfMSI7czo5OiJnaWF5Ny5qcGciO3M6ODoidGVuX2dpYXkiO3M6OToiWGUgxJHhuqFwIjtzOjc6ImRvbl9naWEiO3M6NzoiOTk5NTAwMCI7czo4OiJzb19sdW9uZyI7czoxOiIxIjtzOjEwOiJraHV5ZW5fbWFpIjtzOjI6IjEwIjt9fXM6ODoiRGFuZ05oYXAiO2k6MTt9', 1728501926);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuong_hieu`
--

CREATE TABLE `thuong_hieu` (
  `id_thuong_hieu` int(10) UNSIGNED NOT NULL,
  `ten_thuong_hieu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuong_hieu`
--

INSERT INTO `thuong_hieu` (`id_thuong_hieu`, `ten_thuong_hieu`) VALUES
(1, 'Panatta Sport'),
(2, 'Gym 80'),
(3, 'Matrix Fitness'),
(4, 'Life Fitness'),
(5, 'Precor Fitness'),
(6, 'True Fitness');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten_nguoi_dung` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(255) DEFAULT NULL,
  `Ten_dang_nhap` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_phan_quyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ten_nguoi_dung`, `email`, `sdt`, `Ten_dang_nhap`, `password`, `id_phan_quyen`) VALUES
(1, 'Admin', 'admin@gmail.com', '0123456789', 'admin', '$2y$10$SqPrRKfIpryuVTt3zmFYT.e6QD5t.yAiNAHO0KKkWt9LynVBbkvv2', '1'),
(14, 'Phan Văn Bằng', 'pvbang23092002@gmail.com', '0123456789', 'pvbang', '$2y$10$3GYHvTG089yZ0XAhKpPUluK8maVkaA7jTxLeoXy15oIzl9WrLaqse', '2'),
(15, 'a', 'pvthinh@gmail.com', '1111111111', 'thinh', '$2y$10$rtcSvxjS7YcL/ZQUVJ3RFu7RgMrzzGMygn0EXOCEG16yRFAFSaZlG', '2'),
(17, 'vt', 'butngao12345@gmail.com', '1234567890', 'hi', '$2y$10$TbVz3EwTzihz8WPl7pZyuO958U.4KbVou2/wPVHiuiPFIxs5dNhOa', '2');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD PRIMARY KEY (`id_danh_gia`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id_don_hang`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `giay`
--
ALTER TABLE `giay`
  ADD PRIMARY KEY (`id_giay`);

--
-- Chỉ mục cho bảng `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  ADD PRIMARY KEY (`id_khuyen_mai`);

--
-- Chỉ mục cho bảng `loai_giay`
--
ALTER TABLE `loai_giay`
  ADD PRIMARY KEY (`id_loai_giay`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `phan_quyen`
--
ALTER TABLE `phan_quyen`
  ADD PRIMARY KEY (`id_phan_quyen`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `thuong_hieu`
--
ALTER TABLE `thuong_hieu`
  ADD PRIMARY KEY (`id_thuong_hieu`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_ten_dang_nhap_unique` (`Ten_dang_nhap`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  MODIFY `id_danh_gia` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id_don_hang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giay`
--
ALTER TABLE `giay`
  MODIFY `id_giay` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `khuyen_mai`
--
ALTER TABLE `khuyen_mai`
  MODIFY `id_khuyen_mai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loai_giay`
--
ALTER TABLE `loai_giay`
  MODIFY `id_loai_giay` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phan_quyen`
--
ALTER TABLE `phan_quyen`
  MODIFY `id_phan_quyen` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `thuong_hieu`
--
ALTER TABLE `thuong_hieu`
  MODIFY `id_thuong_hieu` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

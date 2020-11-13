-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2020 lúc 05:41 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sinhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('Le Thi Lieu', '0709'),
('Le Thi Lieu', '0709'),
('admin', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangsinhvien`
--

CREATE TABLE `bangsinhvien` (
  `maso` varchar(10) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `gioitinh` varchar(3) NOT NULL,
  `khoa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bangsinhvien`
--

INSERT INTO `bangsinhvien` (`maso`, `hoten`, `gioitinh`, `khoa`) VALUES
('102', 'anh', 'Nam', 'CNTT'),
('102122234', 'Le A', 'Nam', 'DTVT'),
('1021508', 'hi hi', 'Nam', 'KTXD'),
('102170', 'hihi', 'Nam', 'CNTT'),
('10217009', 'nhan', 'Nu', 'DTVT'),
('102170093', 'khon', 'Nam', 'DTVT'),
('102170098', 'lieu le', 'Nu', 'CNTT'),
('102221', 'abc', 'Nu', 'KTXD');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangsinhvien`
--
ALTER TABLE `bangsinhvien`
  ADD PRIMARY KEY (`maso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

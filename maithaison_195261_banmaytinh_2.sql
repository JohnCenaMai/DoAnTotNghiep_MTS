-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 04, 2021 lúc 11:38 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `maithaison_195261_banmaytinh_2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banphim`
--

CREATE TABLE `banphim` (
  `mabanphim` varchar(25) NOT NULL,
  `kieubanphim` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `banphimso` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `loaidenbanphim` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `maudenled` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `congnghedenbanphim` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `touchpad` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `banphim`
--

INSERT INTO `banphim` (`mabanphim`, `kieubanphim`, `banphimso`, `loaidenbanphim`, `maudenled`, `congnghedenbanphim`, `touchpad`) VALUES
('banphim_01', 'Đang cập nhật', 'Có', 'Không', 'Không', 'Không', 'Đang cập nhật'),
('banphim_02', 'Đang cập nhật', 'Không', 'LED', 'White', 'Đơn sắc', 'Đang cập nhật'),
('banphim_03', 'Đang cập nhật', 'Có', 'Không', 'Không', 'Không', 'Đang cập nhật'),
('banphim_04', 'Đang cập nhật', 'Có', 'LED', 'Red', 'Đơn sắc', 'Đang cập nhật'),
('banphim_05', 'Đang cập nhật', 'Có', 'LED', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật'),
('banphim_06', 'Đang cập nhật', 'Không', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật'),
('banphim_07', 'Đang cập nhật', 'Có', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật'),
('banphim_08', 'Chiclet Keyboard', 'Không', 'Đang cập nhật', 'Đang cập nhật', 'Không', 'Đang cập nhật'),
('banphim_09', 'Chiclet Keyboard', 'Không', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật'),
('banphim_10', 'Chiclet Keyboard', 'Không', 'Không', 'Không', 'Không', 'Đang cập nhật'),
('banphim_11', 'Chiclet Keyboard', 'Có', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật'),
('banphim_12', 'Đang cập nhật', 'Có', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'bật/tắt, hỗ trợ đa cảm ứng'),
('banphim_13', 'Đang cập nhật', 'Có', 'Không', 'Không', 'Không', 'Multi-touch touchpad'),
('banphim_14', 'English International Non', 'Có', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Multi-touch touchpad'),
('banphim_15', 'English International Non', 'Có', 'Không', 'Không', 'Không', 'Multi-touch touchpad'),
('banphim_16', 'QWERTY', 'Không', 'Đang cập nhật', 'Không', 'Không', 'Đang cập nhật'),
('banphim_17', 'Full-size', 'Có', 'Không', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật'),
('banphim_18', 'Full-size', 'Không', 'LED', 'White', 'Đơn sắc', 'Multi-touch touchpad'),
('banphim_19', '6-row, multimedia Fn keys', 'Không', 'Không', 'Blue', 'Không', 'Multi-touch touchpad'),
('banphim_20', '6-row, multimedia Fn keys', 'Có', 'LED', 'Blue', 'Đơn sắc', 'Buttonless Mylar surface multi-touch touchpad'),
('banphim_21', 'Multimedia Fn keys, numer', 'Có', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Buttonless Mylar surface multi-touch touchpad'),
('banphim_22', '6-row, multimedia Fn keys', 'Có', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Buttonless Mylar surface multi-touch touchpad'),
('banphim_23', '6-row, multimedia Fn keys', 'Không', 'LED', 'White', 'Đơn sắc', 'Buttonless Mylar surface multi-touch touchpad'),
('banphim_24', '6-row, multimedia Fn keys', 'Không', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Buttonless Mylar surface multi-touch touchpad'),
('banphim_25', '6-row, multimedia Fn keys', 'Có', 'LED', 'White', 'Đơn sắc', 'Buttonless Mylar surface multi-touch touchpad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `mabinhluan` int(11) NOT NULL,
  `makhachhang` int(11) DEFAULT NULL,
  `masanpham` varchar(25) NOT NULL,
  `ngaybinhluan` date DEFAULT NULL,
  `noidung` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `chophepan` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`mabinhluan`, `makhachhang`, `masanpham`, `ngaybinhluan`, `noidung`, `chophepan`) VALUES
(1, 2, 'mt_26', '2020-12-22', 'Sản phẩm tốt, giá cả phải chăng', b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bonho`
--

CREATE TABLE `bonho` (
  `mabonho` varchar(25) NOT NULL,
  `kieu` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `dungluong` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `tocdodocghi` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `sokhecam` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bonho`
--

INSERT INTO `bonho` (`mabonho`, `kieu`, `dungluong`, `tocdodocghi`, `sokhecam`) VALUES
('bonho_01', 'M2.PCIe', '256', 'Đang cập nhật', '2'),
('bonho_02', 'M2.PCIe', '512', 'Đang cập nhật', '2'),
('bonho_03', 'M2.PCIe', '512', 'Đang cập nhật', '3'),
('bonho_04', 'M2.PCIe', '512', 'Đang cập nhật', '1'),
('bonho_05', 'M2.PCIe', '256', 'Đang cập nhật', '1'),
('bonho_06', 'SATA 3', '1000', 'Đang cập nhật', 'Đang cập nhật'),
('bonho_07', 'M2. PCIe', '128', 'Đang cập nhật', 'Đang cập nhật'),
('bonho_08', 'M2. PCIe', '256', '3000', '2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bonhodienthoai`
--

CREATE TABLE `bonhodienthoai` (
  `mabonho` varchar(25) NOT NULL,
  `dungluongbonho` varchar(5) DEFAULT NULL,
  `thenhongoai` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `hotrothenhotoida` varchar(5) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bonhodienthoai`
--

INSERT INTO `bonhodienthoai` (`mabonho`, `dungluongbonho`, `thenhongoai`, `hotrothenhotoida`) VALUES
('bonho_01', '64', 'Không', 'Không'),
('bonho_06', '32', 'Micro', '512'),
('bonho_07', '32', 'Micro', '400'),
('bonho_08', '64', 'Micro', '512'),
('bonho_10', '128', 'Micro', '400'),
('bonho_11', '128', 'Micro', '256'),
('bonho_15', '256', 'Micro', '256'),
('bonho_16', '256', 'Không', 'Không'),
('bonho_21', '64', 'Micro', '256');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `boxuly`
--

CREATE TABLE `boxuly` (
  `macpu` varchar(15) NOT NULL,
  `congnghecpu` varchar(12) DEFAULT NULL,
  `loaicpu` varchar(10) NOT NULL,
  `hangcpu` varchar(10) DEFAULT NULL,
  `tocdo` float DEFAULT NULL,
  `tocdotoida` float DEFAULT NULL,
  `bonhodem` int(11) DEFAULT NULL,
  `tocdobus` float DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `soloi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `boxuly`
--

INSERT INTO `boxuly` (`macpu`, `congnghecpu`, `loaicpu`, `hangcpu`, `tocdo`, `tocdotoida`, `bonhodem`, `tocdobus`, `soluong`, `soloi`) VALUES
('cpu_01', 'Core i5', '1035G1', 'Intel', 1, 3.6, 6, 4, 8, 4),
('cpu_02', 'Ryzen 5', '3500U', 'AMD', 2.1, 3.7, 4, 0, 8, 4),
('cpu_03', 'Core i3', '1005G1', 'Intel', 1.2, 3.4, 4, 4, 4, 2),
('cpu_04', 'Pentium', 'N5000', 'Intel', 1.1, 2.7, 4, 4, 4, 4),
('cpu_05', 'Ryzen 7', '3750H', 'AMD', 2.3, 4, 4, 8, 8, 4),
('cpu_06', 'Ryzen 7', '3750H', 'AMD', 2.3, 4, 4, 8, 8, 4),
('cpu_07', 'Core i5', '9300H', 'Intel', 2.4, 4.1, 8, 8, 8, 4),
('cpu_08', 'Core i5', '1035G1', 'Intel', 1, 3.6, 6, 4, 8, 4),
('cpu_09', 'Core i5', '8265U', 'Intel', 1.6, 3.9, 6, 4, 8, 4),
('cpu_10', 'Core i7', '8550U', 'Intel', 1.8, 4, 8, 4, 8, 4),
('cpu_11', 'Pentium', 'N5000', 'Intel', 1.1, 2.7, 4, 4, 4, 4),
('cpu_12', 'Ryzen 5', '3500U', 'AMD', 2.1, 3.7, 4, 2.4, 8, 4),
('cpu_13', 'Ryzen 3', '3200U', 'AMD', 2.6, 3.5, 4, 2.4, 4, 2),
('cpu_14', 'Ryzen 5', '3500U', 'AMD', 2.1, 3.7, 4, 0, 8, 4),
('cpu_15', 'Ryzen 3', '3200U', 'AMD', 2.6, 3.5, 4, 0, 4, 2),
('cpu_16', 'Core i3', '8145U', 'Intel', 2.1, 3.9, 4, 4, 4, 2),
('cpu_17', 'Core i3', '7020U', 'Intel', 2.3, 0, 3, 4, 4, 2),
('cpu_18', 'Core i3', '8145U', 'Intel', 2.1, 3.9, 4, 4, 4, 2),
('cpu_19', 'Core i5', '1035G1', 'Intel', 1, 3.6, 6, 4, 8, 4),
('cpu_20', 'Pentium', 'N5000', 'Intel', 1.1, 2.7, 4, 4, 4, 4),
('cpu_21', 'Core i3', '7020U', 'Intel', 2.3, 0, 3, 4, 4, 2),
('cpu_22', 'Core i3', '7020U', 'Intel', 2.3, 0, 3, 4, 4, 2),
('cpu_23', 'Core i5', '10210U', 'Intel', 1.6, 4.2, 6, 4, 8, 4),
('cpu_24', 'Core i7', '9750U', 'Intel', 2.6, 4.5, 12, 8, 12, 6),
('cpu_25', 'Core i3', '7020U', 'Intel', 2.3, 0, 3, 4, 4, 2),
('cpu_26', 'Core i5', '1035G1', 'Intel', 1, 3.6, 6, 4, 8, 4),
('cpu_27', 'Core i5', '8265U', 'Intel', 1.6, 3.9, 6, 4, 8, 4),
('cpu_28', 'Core i5', '1035G1', 'Intel', 1, 3.6, 6, 4, 8, 4),
('cpu_29', 'Core i7', '1065G7', 'Intel', 1.3, 3.9, 8, 2.666, 8, 4),
('cpu_30', 'Core i3', '1005G1', 'Intel', 1.2, 3.4, 4, 4, 4, 2),
('cpu_31', 'Core i3', '7020U', 'Intel', 2.3, 0, 3, 4, 4, 2),
('cpu_32', 'Core i3', '10110U', 'Intel', 2.1, 4.1, 4, 4, 4, 2),
('cpu_33', 'Core i5', '10210U', 'Intel', 1.6, 4.2, 6, 4, 8, 4),
('cpu_34', 'Ryzen 3', '3200U', 'AMD', 2.6, 3.5, 4, 0, 4, 2),
('cpu_35', 'Core i3', '7020U', 'Intel', 2.3, 0, 3, 4, 4, 2),
('cpu_36', 'Core i7', '10510U', 'Intel', 1.8, 4.9, 8, 4, 8, 4),
('cpu_37', 'Core i3', '8145U', 'Intel', 2.1, 3.9, 4, 0, 4, 2),
('cpu_38', 'Ryzen 7', '3700U', 'AMD', 2.3, 4, 4, 4, 8, 4),
('cpu_39', 'RyzenTM5', '4500U', 'AMD', 2.3, 4, 8, 0, 6, 6),
('cpu_40', 'Core i7', '9750HF', 'Intel', 2.6, 4.5, 12, 8, 12, 6),
('cpu_41', 'Core i3', '8130U', 'Intel', 2.2, 3.4, 4, 0, 4, 2),
('cpu_42', 'Ryzen 5', '4600H', 'AMD', 3, 4, 8, 8, 12, 6),
('cpu_43', 'Ryzen 7', '4800H', 'AMD', 2.9, 4.2, 8, 8, 16, 8),
('cpu_44', 'Core i5', '1035G1', 'Intel', 1, 3.6, 6, 4, 6, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `boxulydienthoai`
--

CREATE TABLE `boxulydienthoai` (
  `macpu` varchar(15) NOT NULL,
  `chitietcpu` varchar(60) DEFAULT NULL,
  `loai` varchar(15) DEFAULT NULL,
  `sonhancpu` varchar(5) DEFAULT NULL,
  `tocdotoida` varchar(5) DEFAULT NULL,
  `phienban` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `boxulydienthoai`
--

INSERT INTO `boxulydienthoai` (`macpu`, `chitietcpu`, `loai`, `sonhancpu`, `tocdotoida`, `phienban`) VALUES
('cpu_01', '2 x Thunder 2.65 GHz + 4 x Lightning 1.8 GHz', 'Hexa-Core', '6', '2.65', 'A13 Bionic'),
('cpu_02', '2 x Firestorm 3.1 GHz + 4 x Icestorm 1.8 GHz', 'Hexa-Core', '6', '3.1', 'A14 Bionic'),
('cpu_06', '2 x Firestorm 3.1 GHz + 4 x Icestorm 1.8 GHz', 'Octa-Core', '6', '2.0', 'Helio P22'),
('cpu_07', '4 x Cortex A53 1.8 GHz', 'Quad-Core', '4', '1.8', 'Helio P22'),
('cpu_08', '4 x Cortex A53 1.8 GHz + 4 x Cortex A53 1.8 GHz', 'Octa-Core', '8', '2.0', 'Snapdragon'),
('cpu_09', '4 x Kryo 260 2.20 GHz + 4 x Kryo 260 1.80 GHz', 'Octa-Core', '8', '2.0', 'Snapdragon'),
('cpu_10', '4 x Kryo 260 2.20 GHz + 4 x Kryo 260 1.80 GHz', 'Octa-Core', '8', '2.4', 'Snapdragon'),
('cpu_12', '4 x Kryo 240 1.8 GHz + 4 x Kryo 240 1.6 GHz', 'Octa-Core', '8', '1.8', 'Snapdragon'),
('cpu_13', '2 x Cortex A75 2.2 GHz + 6 x Cortex A55 2.0 GHz', 'Octa-Core', '8', '2.2', 'Mediatek H'),
('cpu_14', '2 x Kryo 465 2.3 GHz + 6 x Kryo 465 1.8 GHz', 'Octa-Core', '8', '2.3', 'Snapdragon'),
('cpu_16', '2 x Exynos M5 2.73 GHz + 2 x Cortex A76 2.5 GHz + 4 x Cortex', 'Octa-Core', '8', '2.73', 'Exynos 990'),
('cpu_20', '1 x Kryo 585 3.09 GHz + 3 x Kryo 585 2.42 GHz + 4 x Kryo 585', 'Octa-Core', '8', '2.73', 'Snapdragon'),
('cpu_21', '4 x Cortex-A73 + 4 x Cortex-A53', 'Octa-Core', '8', '2.0', 'Helio P60'),
('cpu_25', '2 x Cortex-A76 2.20 GHz + 6 x Cortex-A55 1.70 GHz', 'Octa-Core', '8', '2.2', 'Snapdragon');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cameradienthoai`
--

CREATE TABLE `cameradienthoai` (
  `macamera` varchar(25) NOT NULL,
  `loaicamera` varchar(25) DEFAULT NULL,
  `dophangiai` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cameradienthoai`
--

INSERT INTO `cameradienthoai` (`macamera`, `loaicamera`, `dophangiai`) VALUES
('camera_01', 'Double rear camera', '12.0 MP'),
('camera_02', 'Quad rear camera', '12.0 MP'),
('camera_03', 'Triple rear camera', '13.0 MP'),
('camera_04', 'Triple rear camera', '108.0 MP'),
('camera_05', 'Quad rear camera', '16.0 MP');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatlieu`
--

CREATE TABLE `chatlieu` (
  `machatlieu` varchar(25) NOT NULL,
  `chatlieumatbenngoaicung` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `chatlieukhungmanhinh` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `chatlieumatbanphim` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `chatlieumatlung` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chatlieu`
--

INSERT INTO `chatlieu` (`machatlieu`, `chatlieumatbenngoaicung`, `chatlieukhungmanhinh`, `chatlieumatbanphim`, `chatlieumatlung`) VALUES
('chatlieu_01', 'Nhựa', 'Nhựa', 'Nhựa', 'Nhựa'),
('chatlieu_02', 'Nhôm', 'Nhựa', 'Nhựa', 'Nhựa'),
('chatlieu_03', 'Hợp kim Magie và nhô', 'Nhựa', 'Hợp kim Magie và nhô', 'Nhựa'),
('chatlieu_04', 'Hợp kim Magie và nhô', 'Nhựa', 'Hợp kim Magie và nhô', 'Nhựa'),
('chatlieu_05', 'Nhôm', 'Nhôm', 'Nhôm', 'Nhôm'),
('chatlieu_06', 'Kim loại', 'Nhựa', 'Kim loại', 'Nhựa'),
('chatlieu_07', 'Nhựa', 'Nhựa', 'ABS plastic', 'ABS plastic'),
('chatlieu_08', 'ABS plastic', 'ABS plastic', 'ABS plastic', 'ABS plastic'),
('chatlieu_09', 'Nhôm', 'ABS plastic', 'ABS plastic', 'ABS plastic'),
('chatlieu_10', 'Nhôm', 'Kính', 'Nhôm', 'Nhôm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chatlieudienthoai`
--

CREATE TABLE `chatlieudienthoai` (
  `machatlieu` varchar(25) NOT NULL,
  `tenchatlieu` varchar(30) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chatlieudienthoai`
--

INSERT INTO `chatlieudienthoai` (`machatlieu`, `tenchatlieu`) VALUES
('chatlieu_01', 'Viền nhôm, mặt lưng kính'),
('chatlieu_04', 'Viền thép, mặt lưng kính mờ'),
('chatlieu_07', 'Khung và mặt lưng nhựa'),
('chatlieu_09', 'Nhựa'),
('chatlieu_10', 'Khung kim loại và Mặt lưng kín'),
('chatlieu_12', 'Khung hợp kim nhôm và Mặt lưng'),
('chatlieu_13', 'Khung hợp kim phủ nhựa và Mặt '),
('chatlieu_17', 'Khung nhôm và Mặt lưng kính cư'),
('chatlieu_22', 'Khung kim loại và mặt lưng kín');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `machitiethoadon` int(11) NOT NULL,
  `mahoadon` int(11) DEFAULT NULL,
  `masanpham` varchar(25) NOT NULL,
  `soluongmua` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`machitiethoadon`, `mahoadon`, `masanpham`, `soluongmua`) VALUES
(1, 3, 'mt_26', 1),
(2, 4, 'dt_01', 1),
(3, 4, 'mt_26', 1),
(4, 5, 'mt_26', 1),
(5, 5, 'dt_01', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienthoai`
--

CREATE TABLE `dienthoai` (
  `madienthoai` varchar(25) NOT NULL,
  `tensanpham` varchar(60) NOT NULL,
  `xuatxu` varchar(20) NOT NULL,
  `thoigianbaohanh` tinyint(4) DEFAULT NULL,
  `chieurong` float DEFAULT NULL,
  `chieucao` float DEFAULT NULL,
  `chieusau` float DEFAULT NULL,
  `namramat` varchar(4) NOT NULL,
  `trongluong` float DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dienthoai`
--

INSERT INTO `dienthoai` (`madienthoai`, `tensanpham`, `xuatxu`, `thoigianbaohanh`, `chieurong`, `chieucao`, `chieusau`, `namramat`, `trongluong`, `soluong`, `gia`, `hinhanh`) VALUES
('dt_01', 'iPhone 11 64GB', 'china', 12, 75.7, 150.9, 8.3, '2019', 194, 19, 725, '/Điện thoại/Apple/iPhone 11 64GB/anh1.PNG'),
('dt_02', 'iPhone 12 64GB', 'china', 12, 71.5, 146.7, 7.4, '2020', 164, 29, 1000, '/Điện thoại/Apple/iPhone 12 64GB/anh1.PNG'),
('dt_03', 'iPhone 12 Mini 64GB', 'china', 12, 64.2, 131.5, 7.4, '2020', 135, 13, 847, '/Điện thoại/Apple/iPhone 12 Mini 64GB/anh1.PNG'),
('dt_04', 'iPhone 12 Pro 128GB', 'china', 12, 71.5, 146.7, 7.4, '2020', 135, 23, 1347, '/Điện thoại/Apple/iPhone 12 Pro 128GB/anh1.PNG'),
('dt_05', 'iPhone 12 Pro Max 128GB', 'china', 12, 78.1, 160.8, 7.4, '2020', 228, 27, 1477, '/Điện thoại/Apple/iPhone 12 Pro Max 128GB/anh1.PNG'),
('dt_06', 'Nokia 2.4', 'china', 12, 78.1, 160.8, 7.4, '2020', 189, 27, 108, '/Điện thoại/Nokia/Nokia 2.4/anh1.PNG'),
('dt_07', 'Nokia 3.2 3GB-32GB', 'china', 12, 76.2, 159.4, 8.6, '2019', 178, 27, 95, '/Điện thoại/Nokia/Nokia 3.2 3GB-32GB/anh1.PNG'),
('dt_08', 'Nokia 3.4 4GB - 64GB', 'china', 12, 76, 161.3, 8.7, '2019', 180, 37, 147, '/Điện thoại/Nokia/Nokia 3.4 4GB - 64GB/anh1.PNG'),
('dt_09', 'Nokia 5.3 3GB - 64GB', 'china', 12, 76.6, 164.3, 8.5, '2019', 180, 37, 126, '/Điện thoại/Nokia/Nokia 5.3 3GB - 64GB/anh1.PNG'),
('dt_10', 'Nokia 8.3 5G', 'china', 12, 76.6, 164.3, 8.5, '2019', 220, 35, 521, '/Điện thoại/Nokia/Nokia 8.3 5G/anh1.PNG'),
('dt_11', 'Oppo A52 6GB-128GB', 'china', 12, 75.5, 162, 8.9, '2020', 192, 35, 212, '/Điện thoại/Oppo/Oppo A52 6GB-128GB/anh1.PNG'),
('dt_12', 'Oppo A53 4GB-128GB', 'china', 12, 75.1, 163.9, 8.4, '2020', 186, 32, 195, '/Điện thoại/Oppo/Oppo A53 4GB-128GB/anh1.PNG'),
('dt_13', 'Oppo A93 8GB-128GB', 'china', 12, 73.8, 160.1, 7.5, '2020', 164, 42, 325, '/Điện thoại/Oppo/OPPO A93 8GB-128GB/anh1.PNG'),
('dt_14', 'Oppo Reno4', 'china', 12, 73.9, 160.3, 7.7, '2020', 165, 12, 335, '/Điện thoại/Oppo/OPPO Reno4/anh1.PNG'),
('dt_15', 'Oppo Reno4 Pro', 'china', 12, 73.2, 160.2, 7.7, '2020', 161, 13, 521, '/Điện thoại/Oppo/Oppo Reno4 Pro/anh1.PNG'),
('dt_16', 'Samsung Galaxy Note 20', 'china', 12, 75.2, 161.6, 8.3, '2020', 192, 43, 912, '/Điện thoại/Samsung/Samsung Galaxy Note 20/anh1.PNG'),
('dt_17', 'Samsung Galaxy Note 20 Ultra', 'china', 12, 77.2, 164.8, 8.1, '2020', 208, 43, 1173, '/Điện thoại/Samsung/Samsung Galaxy Note 20 Ultra/anh1.PNG'),
('dt_18', 'Samsung Galaxy Note 20 Ultra 5G', 'china', 12, 77.2, 164.8, 8.2, '2020', 208, 43, 1300, '/Điện thoại/Samsung/Samsung Galaxy Note 20 Ultra 5G/anh1.PNG'),
('dt_19', 'Samsung Galaxy S20+', 'china', 12, 73.7, 161.9, 7.8, '2020', 208, 30, 782, '/Điện thoại/Samsung/Samsung Galaxy S20+/anh1.PNG'),
('dt_20', 'Samsung Galaxy Z Fold2 5G', 'china', 12, 128.2, 159.2, 16.8, '2020', 282, 50, 2175, '/Điện thoại/Samsung/Samsung Galaxy Z Fold2 5G/anh1.PNG'),
('dt_21', 'Vsmart Active 3 6GB-64GB', 'china', 12, 75.7, 166.2, 8.9, '2020', 183, 50, 175, '/Điện thoại/Vsmart/Vsmart Active 3 6GB-64GB/anh1.PNG'),
('dt_22', 'Vsmart Aris 8GB-128GB', 'china', 18, 75.7, 166.2, 8.9, '2020', 178, 50, 325, '/Điện thoại/Vsmart/Vsmart Aris 8GB-128GB/anh1.PNG'),
('dt_23', 'Vsmart Aris Pro 8GB-128GB', 'china', 12, 73.2, 154.2, 8.1, '2020', 167, 50, 435, '/Điện thoại/Vsmart/Vsmart Aris Pro 8GB-128GB/anh1.PNG'),
('dt_24', 'Vsmart Joy 4 3GB-64GB', 'china', 18, 77.65, 163.65, 9.1, '2020', 167, 10, 143, '/Điện thoại/Vsmart/Vsmart Joy 4 3GB-64GB/anh1.PNG'),
('dt_25', 'Vsmart Live 4 6GB-64GB', 'china', 18, 76.5, 162.4, 8.9, '2020', 217, 16, 199, '/Điện thoại/Vsmart/Vsmart Live 4 6GB-64GB/anh1.PNG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienthoaichitiet`
--

CREATE TABLE `dienthoaichitiet` (
  `madienthoai` varchar(25) NOT NULL,
  `machatlieu` varchar(25) NOT NULL,
  `macpu` varchar(15) NOT NULL,
  `mamanhinh` varchar(15) NOT NULL,
  `madohoa` varchar(15) NOT NULL,
  `maram` varchar(15) NOT NULL,
  `mabonho` varchar(25) NOT NULL,
  `macamera` varchar(25) NOT NULL,
  `magiaotiep` varchar(25) NOT NULL,
  `mapin` varchar(25) DEFAULT NULL,
  `phienbanhedieuhanh` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dienthoaichitiet`
--

INSERT INTO `dienthoaichitiet` (`madienthoai`, `machatlieu`, `macpu`, `mamanhinh`, `madohoa`, `maram`, `mabonho`, `macamera`, `magiaotiep`, `mapin`, `phienbanhedieuhanh`) VALUES
('dt_01', 'chatlieu_01', 'cpu_01', 'manhinh_01', 'dohoa_01', 'ram_01', 'bonho_01', 'camera_01', 'giaotiep_01', 'pin_01', 'iOS 14'),
('dt_02', 'chatlieu_01', 'cpu_02', 'manhinh_02', 'dohoa_01', 'ram_01', 'bonho_01', 'camera_01', 'giaotiep_01', 'pin_02', 'iOS 14'),
('dt_03', 'chatlieu_01', 'cpu_02', 'manhinh_03', 'dohoa_01', 'ram_01', 'bonho_01', 'camera_01', 'giaotiep_01', 'pin_03', 'iOS 14'),
('dt_04', 'chatlieu_04', 'cpu_02', 'manhinh_02', 'dohoa_01', 'ram_04', 'bonho_01', 'camera_01', 'giaotiep_01', 'pin_03', 'iOS 14'),
('dt_05', 'chatlieu_04', 'cpu_02', 'manhinh_05', 'dohoa_01', 'ram_04', 'bonho_01', 'camera_01', 'giaotiep_01', 'pin_05', 'iOS 14'),
('dt_06', 'chatlieu_04', 'cpu_06', 'manhinh_06', 'dohoa_02', 'ram_06', 'bonho_06', 'camera_02', 'giaotiep_06', 'pin_06', 'iOS 14'),
('dt_07', 'chatlieu_07', 'cpu_07', 'manhinh_07', 'dohoa_02', 'ram_07', 'bonho_07', 'camera_02', 'giaotiep_06', 'pin_07', 'iOS 14'),
('dt_08', 'chatlieu_07', 'cpu_08', 'manhinh_08', 'dohoa_02', 'ram_07', 'bonho_08', 'camera_02', 'giaotiep_06', 'pin_07', 'Android 10.0'),
('dt_09', 'chatlieu_09', 'cpu_08', 'manhinh_08', 'dohoa_02', 'ram_09', 'bonho_08', 'camera_02', 'giaotiep_06', 'pin_07', 'Android 10.0'),
('dt_10', 'chatlieu_10', 'cpu_10', 'manhinh_10', 'dohoa_02', 'ram_10', 'bonho_10', 'camera_02', 'giaotiep_06', 'pin_07', 'Android 10.0'),
('dt_11', 'chatlieu_07', 'cpu_08', 'manhinh_11', 'dohoa_03', 'ram_04', 'bonho_11', 'camera_03', 'giaotiep_10', 'pin_11', 'Android 10.0'),
('dt_12', 'chatlieu_12', 'cpu_12', 'manhinh_12', 'dohoa_03', 'ram_01', 'bonho_11', 'camera_03', 'giaotiep_10', 'pin_11', 'Android 10.0'),
('dt_13', 'chatlieu_13', 'cpu_13', 'manhinh_13', 'dohoa_03', 'ram_10', 'bonho_11', 'camera_03', 'giaotiep_10', 'pin_11', 'Android 10.0'),
('dt_14', 'chatlieu_13', 'cpu_14', 'manhinh_14', 'dohoa_03', 'ram_10', 'bonho_11', 'camera_03', 'giaotiep_10', 'pin_11', 'Android 10.0'),
('dt_15', 'chatlieu_13', 'cpu_14', 'manhinh_15', 'dohoa_03', 'ram_10', 'bonho_15', 'camera_03', 'giaotiep_10', 'pin_11', 'Android 10.0'),
('dt_16', 'chatlieu_07', 'cpu_16', 'manhinh_16', 'dohoa_04', 'ram_16', 'bonho_11', 'camera_04', 'giaotiep_16', 'pin_16', 'Android 9.0'),
('dt_17', 'chatlieu_17', 'cpu_16', 'manhinh_17', 'dohoa_04', 'ram_16', 'bonho_21', 'camera_04', 'giaotiep_16', 'pin_16', 'Android 9.0'),
('dt_18', 'chatlieu_17', 'cpu_16', 'manhinh_17', 'dohoa_04', 'ram_18', 'bonho_21', 'camera_04', 'giaotiep_16', 'pin_16', 'Android 9.0'),
('dt_19', 'chatlieu_10', 'cpu_16', 'manhinh_19', 'dohoa_04', 'ram_16', 'bonho_11', 'camera_04', 'giaotiep_16', 'pin_16', 'Android 9.0'),
('dt_20', 'chatlieu_17', 'cpu_20', 'manhinh_20', 'dohoa_04', 'ram_18', 'bonho_11', 'camera_04', 'giaotiep_16', 'pin_16', 'Android 9.0'),
('dt_21', 'chatlieu_07', 'cpu_21', 'manhinh_20', 'dohoa_05', 'ram_10', 'bonho_21', 'camera_05', 'giaotiep_21', 'pin_21', 'Android 9.0'),
('dt_22', 'chatlieu_22', 'cpu_21', 'manhinh_20', 'dohoa_05', 'ram_10', 'bonho_21', 'camera_05', 'giaotiep_21', 'pin_21', 'Android 9.0'),
('dt_23', 'chatlieu_22', 'cpu_21', 'manhinh_20', 'dohoa_05', 'ram_16', 'bonho_21', 'camera_05', 'giaotiep_21', 'pin_21', 'Android 9.0'),
('dt_24', 'chatlieu_07', 'cpu_21', 'manhinh_24', 'dohoa_05', 'ram_18', 'bonho_21', 'camera_05', 'giaotiep_21', 'pin_21', 'Android 9.0'),
('dt_25', 'chatlieu_07', 'cpu_25', 'manhinh_24', 'dohoa_05', 'ram_18', 'bonho_21', 'camera_05', 'giaotiep_21', 'pin_21', 'Android 9.0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienthoaihinhanh`
--

CREATE TABLE `dienthoaihinhanh` (
  `stt` int(11) NOT NULL,
  `madienthoai` varchar(25) NOT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dienthoaihinhanh`
--

INSERT INTO `dienthoaihinhanh` (`stt`, `madienthoai`, `hinhanh`) VALUES
(1, 'dt_01', '/Điện thoại/Apple/iPhone 11 64GB/anh1.PNG'),
(2, 'dt_02', '/Điện thoại/Apple/iPhone 12 64GB/anh1.PNG'),
(3, 'dt_03', '/Điện thoại/Apple/iPhone 12 Mini 64GB/anh1.PNG'),
(4, 'dt_04', '/Điện thoại/Apple/iPhone 12 Pro 128GB/anh1.PNG'),
(5, 'dt_05', '/Điện thoại/Apple/iPhone 12 Pro Max 128GB/anh1.PNG'),
(6, 'dt_06', '/Điện thoại/Nokia/Nokia 2.4/anh1.PNG'),
(7, 'dt_06', '/Điện thoại/Nokia/Nokia 2.4/anh2.PNG'),
(8, 'dt_06', '/Điện thoại/Nokia/Nokia 2.4/anh3.PNG'),
(9, 'dt_07', '/Điện thoại/Nokia/Nokia 3.2 3GB-32GB/anh1.PNG'),
(10, 'dt_07', '/Điện thoại/Nokia/Nokia 3.2 3GB-32GB/anh2.PNG'),
(11, 'dt_07', '/Điện thoại/Nokia/Nokia 3.2 3GB-32GB/anh3.PNG'),
(12, 'dt_08', '/Điện thoại/Nokia/Nokia 3.4 4GB - 64GB/anh1.PNG'),
(13, 'dt_08', '/Điện thoại/Nokia/Nokia 3.4 4GB - 64GB/anh2.PNG'),
(14, 'dt_08', '/Điện thoại/Nokia/Nokia 3.4 4GB - 64GB/anh3.PNG'),
(15, 'dt_09', '/Điện thoại/Nokia/Nokia 5.3 3GB - 64GB/anh1.PNG'),
(16, 'dt_09', '/Điện thoại/Nokia/Nokia 5.3 3GB - 64GB/anh2.PNG'),
(17, 'dt_09', '/Điện thoại/Nokia/Nokia 5.3 3GB - 64GB/anh3.PNG'),
(18, 'dt_10', '/Điện thoại/Nokia/Nokia 8.3 5G/anh1.PNG'),
(19, 'dt_10', '/Điện thoại/Nokia/Nokia 8.3 5G/anh2.PNG'),
(20, 'dt_10', '/Điện thoại/Nokia/Nokia 8.3 5G/anh3.PNG'),
(21, 'dt_11', '/Điện thoại/Oppo/Oppo A52 6GB-128GB/anh1.PNG'),
(22, 'dt_11', '/Điện thoại/Oppo/Oppo A52 6GB-128GB/anh2.PNG'),
(23, 'dt_11', '/Điện thoại/Oppo/Oppo A52 6GB-128GB/anh3.PNG'),
(24, 'dt_12', '/Điện thoại/Oppo/Oppo A53 4GB-128GB/anh1.PNG'),
(25, 'dt_12', '/Điện thoại/Oppo/Oppo A53 4GB-128GB/anh2.PNG'),
(26, 'dt_12', '/Điện thoại/Oppo/Oppo A53 4GB-128GB/anh3.PNG'),
(27, 'dt_13', '/Điện thoại/Oppo/OPPO A93 8GB-128GB/anh1.PNG'),
(28, 'dt_13', '/Điện thoại/Oppo/OPPO A93 8GB-128GB/anh2.PNG'),
(29, 'dt_13', '/Điện thoại/Oppo/OPPO A93 8GB-128GB/anh3.PNG'),
(30, 'dt_14', '/Điện thoại/Oppo/OPPO Reno4/anh1.PNG'),
(31, 'dt_14', '/Điện thoại/Oppo/OPPO Reno4/anh2.PNG'),
(32, 'dt_14', '/Điện thoại/Oppo/OPPO Reno4/anh3.PNG'),
(33, 'dt_15', '/Điện thoại/Oppo/Oppo Reno4 Pro/anh1.PNG'),
(34, 'dt_15', '/Điện thoại/Oppo/Oppo Reno4 Pro/anh2.PNG'),
(35, 'dt_15', '/Điện thoại/Oppo/Oppo Reno4 Pro/anh3.PNG'),
(36, 'dt_16', '/Điện thoại/Samsung/Samsung Galaxy Note 20/anh1.PNG'),
(37, 'dt_16', '/Điện thoại/Samsung/Samsung Galaxy Note 20/anh2.PNG'),
(38, 'dt_16', '/Điện thoại/Samsung/Samsung Galaxy Note 20/anh3.PNG'),
(39, 'dt_17', '/Điện thoại/Samsung/Samsung Galaxy Note 20 Ultra/anh1.PNG'),
(40, 'dt_17', '/Điện thoại/Samsung/Samsung Galaxy Note 20 Ultra/anh2.PNG'),
(41, 'dt_17', '/Điện thoại/Samsung/Samsung Galaxy Note 20 Ultra/anh3.PNG'),
(42, 'dt_18', '/Điện thoại/Samsung/Samsung Galaxy Note 20 Ultra 5G/anh1.PNG'),
(43, 'dt_18', '/Điện thoại/Samsung/Samsung Galaxy Note 20 Ultra 5G/anh2.PNG'),
(44, 'dt_18', '/Điện thoại/Samsung/Samsung Galaxy Note 20 Ultra 5G/anh3.PNG'),
(45, 'dt_19', '/Điện thoại/Samsung/Samsung Galaxy S20+/anh1.PNG'),
(46, 'dt_19', '/Điện thoại/Samsung/Samsung Galaxy S20+/anh2.PNG'),
(47, 'dt_19', '/Điện thoại/Samsung/Samsung Galaxy S20+/anh3.PNG'),
(48, 'dt_20', '/Điện thoại/Samsung/Samsung Galaxy Z Fold2 5G/anh1.PNG'),
(49, 'dt_20', '/Điện thoại/Samsung/Samsung Galaxy Z Fold2 5G/anh2.PNG'),
(50, 'dt_20', '/Điện thoại/Samsung/Samsung Galaxy Z Fold2 5G/anh3.PNG'),
(51, 'dt_21', '/Điện thoại/Vsmart/Vsmart Active 3 6GB-64GB/anh1.PNG'),
(52, 'dt_21', '/Điện thoại/Vsmart/Vsmart Active 3 6GB-64GB/anh2.PNG'),
(53, 'dt_21', '/Điện thoại/Vsmart/Vsmart Active 3 6GB-64GB/anh3.PNG'),
(54, 'dt_22', '/Điện thoại/Vsmart/Vsmart Aris 8GB-128GB/anh1.PNG'),
(55, 'dt_22', '/Điện thoại/Vsmart/Vsmart Aris 8GB-128GB/anh2.PNG'),
(56, 'dt_22', '/Điện thoại/Vsmart/Vsmart Aris 8GB-128GB/anh3.PNG'),
(57, 'dt_23', '/Điện thoại/Vsmart/Vsmart Aris Pro 8GB-128GB/anh1.PNG'),
(58, 'dt_23', '/Điện thoại/Vsmart/Vsmart Aris Pro 8GB-128GB/anh2.PNG'),
(59, 'dt_23', '/Điện thoại/Vsmart/Vsmart Aris Pro 8GB-128GB/anh3.PNG'),
(60, 'dt_24', '/Điện thoại/Vsmart/Vsmart Joy 4 3GB-64GB/anh1.PNG'),
(61, 'dt_24', '/Điện thoại/Vsmart/Vsmart Joy 4 3GB-64GB/anh2.PNG'),
(62, 'dt_24', '/Điện thoại/Vsmart/Vsmart Joy 4 3GB-64GB/anh3.PNG'),
(63, 'dt_25', '/Điện thoại/Vsmart/Vsmart Live 4 6GB-64GB/anh1.PNG'),
(64, 'dt_25', '/Điện thoại/Vsmart/Vsmart Live 4 6GB-64GB/anh2.PNG'),
(65, 'dt_25', '/Điện thoại/Vsmart/Vsmart Live 4 6GB-64GB/anh3.PNG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dohoa`
--

CREATE TABLE `dohoa` (
  `madohoa` varchar(15) NOT NULL,
  `hang` varchar(10) DEFAULT NULL,
  `xungnhip` float DEFAULT NULL,
  `xungnhiptoida` float DEFAULT NULL,
  `model` varchar(10) DEFAULT NULL,
  `cardonboard` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dohoa`
--

INSERT INTO `dohoa` (`madohoa`, `hang`, `xungnhip`, `xungnhiptoida`, `model`, `cardonboard`) VALUES
('dohoa_01', 'Intel', 300, 1050, 'UHD', 'UHD Graphics'),
('dohoa_02', 'AMD', 0, 0, 'Vega 8', 'Radeon Graphics'),
('dohoa_03', 'Intel', 300, 900, 'UHD', 'UHD Graphics'),
('dohoa_04', 'Intel', 200, 750, '605', 'UHD Graphics'),
('dohoa_05', 'AMD', 0, 0, 'Vega 10', 'Radeon RX Graphics'),
('dohoa_07', 'Intel', 0, 0, '630', 'UHD Graphics'),
('dohoa_08', 'UHD', 300, 1050, 'UHD', 'UHD Graphics'),
('dohoa_09', 'UHD', 300, 1100, 'UHD', 'UHD Graphics'),
('dohoa_10', 'Intel', 300, 1100, '620', 'UHD Graphics'),
('dohoa_11', 'AMD', 300, 1100, 'Vega 8', 'Radeon Graphics'),
('dohoa_12', 'AMD', 192, 1200, 'Vega 3', 'Radeon Graphics'),
('dohoa_13', 'Intel', 300, 1000, '620', 'HD Graphics'),
('dohoa_14', 'Intel', 300, 1050, '620', 'UHD Graphics'),
('dohoa_15', 'Intel', 300, 1100, 'UHD', 'UHD Graphics'),
('dohoa_16', 'Intel', 350, 1150, '630', 'UHD Graphics'),
('dohoa_17', 'Intel', 0, 0, 'Iris Plus', NULL),
('dohoa_18', 'Intel', 300, 1150, 'UHD', 'UHD Graphics'),
('dohoa_19', 'AMD', 300, 1300, 'Vega 10', 'Radeon RX Graphics'),
('dohoa_20', 'AMD', 0, 1500, 'Vega 6', 'Radeon Graphics'),
('dohoa_21', 'Intel', 350, 0, NULL, NULL),
('dohoa_22', 'Intel', 300, 1500, 'Radeon', 'Radeon Graphics'),
('dohoa_23', 'AMD', 300, 1600, 'Radeon', 'Radeon Graphics');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dohoadienthoai`
--

CREATE TABLE `dohoadienthoai` (
  `madohoa` varchar(15) NOT NULL,
  `tengpu` varchar(15) DEFAULT NULL,
  `sonhangpu` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dohoadienthoai`
--

INSERT INTO `dohoadienthoai` (`madohoa`, `tengpu`, `sonhangpu`) VALUES
('dohoa_01', 'Apple GPU', '4'),
('dohoa_02', 'PowerVR', '8'),
('dohoa_03', 'Adreno 504', '4'),
('dohoa_04', 'Adreno 610', '6'),
('dohoa_05', 'Adreno 620', '6');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaotieketnoidienthoai`
--

CREATE TABLE `giaotieketnoidienthoai` (
  `magiaotiep` varchar(25) NOT NULL,
  `sokhesim` varchar(1) DEFAULT NULL,
  `loaisim` varchar(20) DEFAULT NULL,
  `hotro4g` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `hotro5g` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `wifi` varchar(35) DEFAULT NULL,
  `bluetooth` varchar(15) DEFAULT NULL,
  `congsac` varchar(15) DEFAULT NULL,
  `jack` varchar(15) DEFAULT NULL,
  `giaotieketnoidienthoai` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `giaotieketnoidienthoai`
--

INSERT INTO `giaotieketnoidienthoai` (`magiaotiep`, `sokhesim`, `loaisim`, `hotro4g`, `hotro5g`, `wifi`, `bluetooth`, `congsac`, `jack`, `giaotieketnoidienthoai`) VALUES
('giaotiep_01', '2', '1 eSIM, 1 Nano SIM', 'Hỗ trợ', 'Không hỗ trợ', '802.11ax', 'v5.0', 'Lightning', 'Lightning', ''),
('giaotiep_06', '2', '1 Nano SIM', 'Hỗ trợ', 'Không hỗ trợ', '802.11 a/b/g/n, Wi-Fi hotspot', 'v4.2', 'MicroUSB', 'Jack 3.5 mm', ''),
('giaotiep_10', '2', '1 Nano SIM', 'Hỗ trợ', 'Không hỗ trợ', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band,', 'v5.0', 'Type-C', 'Jack 3.5 mm', ''),
('giaotiep_16', '2', '2 Nano SIM hoặc 1 eS', 'Hỗ trợ', 'Không hỗ trợ', 'Wi-Fi 802.11 a/b/g/n/ac, Dual-band,', 'v5.0', 'Type-C', 'Jack 3.5 mm', ''),
('giaotiep_21', '2', '2 Nano SIM hoặc 1 eS', 'Hỗ trợ', 'Không hỗ trợ', '802.11 b/g/n/ac, Dual-band, Wi-Fi h', 'v4.1', 'Type-C', 'Jack 3.5 mm', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `idgio` int(11) NOT NULL,
  `masanpham` varchar(25) NOT NULL,
  `tensanpham` varchar(60) NOT NULL,
  `makh` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hedieuhanh`
--

CREATE TABLE `hedieuhanh` (
  `phienbanhedieuhanh` varchar(15) NOT NULL,
  `ten` varchar(25) NOT NULL,
  `kieu` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hedieuhanh`
--

INSERT INTO `hedieuhanh` (`phienbanhedieuhanh`, `ten`, `kieu`) VALUES
('Home', 'Windows 10', '64'),
('Home Single Lan', 'Windows 10 Home', '64');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hedieuhanhdienthoai`
--

CREATE TABLE `hedieuhanhdienthoai` (
  `phienbanhedieuhanh` varchar(15) NOT NULL,
  `kieu` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hedieuhanhdienthoai`
--

INSERT INTO `hedieuhanhdienthoai` (`phienbanhedieuhanh`, `kieu`) VALUES
('Android 10.0', '64'),
('Android 9.0', '64'),
('iOS 14', '64');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` int(11) NOT NULL,
  `makh` int(11) DEFAULT NULL,
  `ngaydathang` date NOT NULL,
  `trangthai` bit(1) DEFAULT NULL,
  `hinhthucthanhtoan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`mahoadon`, `makh`, `ngaydathang`, `trangthai`, `hinhthucthanhtoan`) VALUES
(3, 2, '2020-12-22', b'0', 0),
(4, 2, '2020-12-23', b'0', 0),
(5, 2, '2020-12-24', b'0', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopthu`
--

CREATE TABLE `hopthu` (
  `idhopthu` int(11) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `chude` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `noidunggui` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ngaygui` datetime DEFAULT NULL,
  `trangthai` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `tenkhachhang` varchar(30) CHARACTER SET utf8 NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `diachi` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sodienthoai` varchar(10) NOT NULL,
  `ngaysinh` date NOT NULL,
  `isaccountnonexpired` bit(1) DEFAULT NULL,
  `isaccountnonlocked` bit(1) DEFAULT NULL,
  `iscredentialsnonexpired` bit(1) DEFAULT NULL,
  `isenabled` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`makh`, `email`, `tenkhachhang`, `matkhau`, `diachi`, `sodienthoai`, `ngaysinh`, `isaccountnonexpired`, `isaccountnonlocked`, `iscredentialsnonexpired`, `isenabled`) VALUES
(1, 'maithaison1998@gmail.com', 'Mai Thái Sơn', '$2a$10$WfGYK2oP3NKF.uUGPn3FKe.PJy5qfzWmQvogEt0WbAKYzTOc2pKGq', '196 Trần Duy Hưng, Thanh Xuân, Hà Nội', '0398851616', '1998-10-10', b'1', b'1', b'1', b'1'),
(2, 'trinhdinhnam1998@gmail.com', 'Trịnh Đình Nam', '$2a$10$2P43dn8cdwUY/zLUO5DpyOtHHvxpnpwZ2eQg9tHmSadC5h9nboJ6S', '70 Bui Ngoc Duong, Ha Noi', '0398851617', '1998-08-19', b'1', b'1', b'1', b'1'),
(3, 'hoangphihung1998@gmail.com', 'Hoàng Phi Hùng', '$2a$10$WfGYK2oP3NKF.uUGPn3FKe.PJy5qfzWmQvogEt0WbAKYzTOc2pKGq', '45 Lê Thanh Nghị, Hà Nội', '0394851616', '1998-01-15', b'1', b'1', b'1', b'1'),
(4, 'dotrungkien1998@gmail.com', 'Đỗ Trung Kiên', '$2a$10$WfGYK2oP3NKF.uUGPn3FKe.PJy5qfzWmQvogEt0WbAKYzTOc2pKGq', '45 Lê Thanh Nghị, Hà Nội', '0384851616', '1998-03-04', b'1', b'1', b'1', b'1'),
(5, 'luuvanhoang1998@gmail.com', 'Lưu Văn Hoàng', '$2a$10$WfGYK2oP3NKF.uUGPn3FKe.PJy5qfzWmQvogEt0WbAKYzTOc2pKGq', '45 Lê Thanh Nghị, Hà Nội', '0384851626', '1998-11-21', b'1', b'1', b'1', b'1'),
(6, 'hoangthanhphuong1998@gmail.com', 'Hoàng Thanh Phương', '$2a$10$WfGYK2oP3NKF.uUGPn3FKe.PJy5qfzWmQvogEt0WbAKYzTOc2pKGq', '45 Lê Thanh Nghị, Hà Nội', '0374851626', '1998-12-01', b'1', b'1', b'1', b'1'),
(7, 'phamminhsang1998@gmail.com', 'Phạm Minh Sang', '$2a$10$WfGYK2oP3NKF.uUGPn3FKe.PJy5qfzWmQvogEt0WbAKYzTOc2pKGq', '455/60 Lạc Long Quân, Hồ Tây', '0374851625', '1998-04-06', b'1', b'1', b'1', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang_vaitro`
--

CREATE TABLE `khachhang_vaitro` (
  `id` int(11) NOT NULL,
  `makh` int(11) DEFAULT NULL,
  `id_vaitro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khachhang_vaitro`
--

INSERT INTO `khachhang_vaitro` (`id`, `makh`, `id_vaitro`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loa`
--

CREATE TABLE `loa` (
  `maloa` varchar(15) NOT NULL,
  `soloa` tinyint(4) DEFAULT NULL,
  `congngheamthanh` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loa`
--

INSERT INTO `loa` (`maloa`, `soloa`, `congngheamthanh`) VALUES
('loa_01', 2, 'Acer TrueHarmony'),
('loa_02', 2, 'Dang cap nhat'),
('loa_03', 1, 'ASUS SonicMaster ste'),
('loa_04', 2, 'Realtek High Definit'),
('loa_05', 2, 'Realtek ALC3246'),
('loa_06', 2, 'Realtek ALC3204'),
('loa_07', 2, 'HP audio boost'),
('loa_08', 2, 'Audio by B&O'),
('loa_09', 2, 'Dolby Audio'),
('loa_10', 2, 'Harman Kardon speake');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manhinh`
--

CREATE TABLE `manhinh` (
  `mamanhinh` varchar(15) NOT NULL,
  `loaicamung` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `manhinhcamung` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `dotuongphan` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `tylemanhinh` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `dophumau` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `congnghe` varchar(15) DEFAULT NULL,
  `dosang` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `dophangiai` varchar(25) DEFAULT NULL,
  `tansoquet` tinyint(4) DEFAULT NULL,
  `loaimanhinh` varchar(20) DEFAULT NULL,
  `kichthuocmanhinh` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `manhinh`
--

INSERT INTO `manhinh` (`mamanhinh`, `loaicamung`, `manhinhcamung`, `dotuongphan`, `tylemanhinh`, `dophumau`, `congnghe`, `dosang`, `dophangiai`, `tansoquet`, `loaimanhinh`, `kichthuocmanhinh`) VALUES
('manhinh_01', 'không', 'không', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'LED-backlit', 'Đang cập nhật', '1920x1080', 60, 'LED', '15.6'),
('manhinh_02', 'không', 'không', 'Đang cập nhật', 'Đang cập nhật', '45% NTSC', 'Acer CómfyView ', 'Đang cập nhật', '1920x1080', 60, 'LED', '15.6'),
('manhinh_03', 'không', 'không', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'LED-backlit', 'Đang cập nhật', '1920x1080', 0, 'LED', '14.0'),
('manhinh_10', 'không', 'không', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'LED-backlit', 'Đang cập nhật', '1920x1080', 0, 'LED', '14.0'),
('manhinh_11', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'LED-backlit', 'Đang cập nhật', '1920x1080', 60, 'LED', '14.0'),
('manhinh_12', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'LED-backlit', '200 nits', '1920x1080', 60, 'LED', '14.0'),
('manhinh_13', 'Đang cập nhật', 'Có', 'Đang cập nhật', '16:09', '45% NTSC', 'LED-backlit', '250 nits', '1920x1080', 60, 'LED', '14.0'),
('manhinh_14', 'không', 'không', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'LED-backlit', 'Đang cập nhật', '1366x768', 0, 'LED', '14.0'),
('manhinh_15', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'LED-backlit', '200 nits', '1920x1080', 60, 'LED', '15.6'),
('manhinh_16', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'Anti-glare LED-', 'Đang cập nhật', '1366x768', 60, 'LED', '15.6'),
('manhinh_17', 'không', 'không', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'Anti-glare LED-', 'Đang cập nhật', '1366x768', 60, 'LED', '15.6'),
('manhinh_18', 'không', 'không', 'Đang cập nhật', 'Đang cập nhật', '45% NTSC', 'LED-backlit', 'Đang cập nhật', '1920x1080', 60, 'LED', '14.0'),
('manhinh_19', 'không', 'không', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'LED-backlit', 'Đang cập nhật', '1920x1080', 0, 'LED', '15.6'),
('manhinh_20', 'không', 'không', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Anti-glare LED-', 'Đang cập nhật', '1366x768', 0, 'LED', '14.0'),
('manhinh_21', 'không', 'không', '600:1', '16:09', '45% NTSC', 'Anti-glare LED-', '220 nits', '1920x1080', 60, 'LED', '14.0'),
('manhinh_22', 'không', 'không', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'Anti-glare LED-', 'Đang cập nhật', '1920x1080', 60, 'LED', '15.6'),
('manhinh_23', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'LED-backlit', 'Đang cập nhật', '1920x1080', 60, 'LED', '15.6'),
('manhinh_24', 'không', 'không', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'Anti - Glare', 'Đang cập nhật', '1920x1080', 60, 'LED', '15.6'),
('manhinh_25', 'không', 'không', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'LED-backlit', 'Đang cập nhật', '1366x768', 60, 'LED', '14.0'),
('manhinh_26', 'không', 'không', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'Anti-glare LED-', '300 nits', '1920x1080', 60, 'LED', '15.6'),
('manhinh_27', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'Anti-glare LED-', '220 nits', '1920x1080', 60, 'LED', '15.6'),
('manhinh_28', 'không', 'không', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'LED-backlit', '220 nits', '1366x768', 60, 'LED', '14.0'),
('manhinh_29', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'BrightView WLED', '220 nits', '1366x768', 60, 'LED', '15.6'),
('manhinh_30', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'Anti-glare Micr', '220 nits', '1366x768', 60, 'LED', '15.6'),
('manhinh_31', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'Micro-edge WLED', '220 nits', '1366x768', 60, 'LED', '15.6'),
('manhinh_32', 'đa điểm', 'có', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'LED-backlit', '300 nits', '1920x1080', 60, 'LED', '13.3'),
('manhinh_33', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'Anti-glare Micr', '220 nits', '1920x1080', 60, 'LED', '14.0'),
('manhinh_34', 'không', 'không', 'Đang cập nhật', 'Đang cập nhật', 'Đang cập nhật', 'Anti-glare LED-', 'Đang cập nhật', '1920x1080', 0, 'LED', '15.6'),
('manhinh_35', 'Đang cập nhật', 'Có', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'LED-backlit', '220 nits', '1920x1080', 60, 'LED', '14.0'),
('manhinh_36', 'không', 'có', 'Đang cập nhật', '16:09', '45% NTSC', 'FHD Touch', '220 nits', '1920x1080', 60, 'LED', '14.0'),
('manhinh_37', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'LED-backlit', '250 nits', '1920x1080', 60, 'LED', '15.6'),
('manhinh_38', 'không', 'không', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'LED-backlit', '220 nits', '1920x1080', 60, 'LED', '15.6'),
('manhinh_39', 'không', 'không', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'LED-backlit', '250 nits', '1920x1080', 0, 'LED', '15.6'),
('manhinh_40', 'không', 'không', 'Đang cập nhật', '16:09', 'Đang cập nhật', 'LED-backlit', '220 nits', '1920x1080', 0, 'LED', '15.6'),
('manhinh_41', 'không', 'không', 'Đang cập nhật', '16:09', '72% NTSC', 'LED-backlit', '300 nits', '2560x1600', 0, 'LED', '13.3'),
('manhinh_42', 'không', 'không', 'Đang cập nhật', '16:09', '45% NTSC', 'LED-backlit', '220 nits', '1920x1080', 0, 'LED', '14.0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manhinhdienthoai`
--

CREATE TABLE `manhinhdienthoai` (
  `mamanhinh` varchar(15) NOT NULL,
  `congnghemanhinh` varchar(20) DEFAULT NULL,
  `kichthuoc` varchar(5) DEFAULT NULL,
  `chuanmanhinh` varchar(20) DEFAULT NULL,
  `dophangiai` varchar(15) DEFAULT NULL,
  `maumanhinh` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chatlieumatkinh` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `manhinhdienthoai`
--

INSERT INTO `manhinhdienthoai` (`mamanhinh`, `congnghemanhinh`, `kichthuoc`, `chuanmanhinh`, `dophangiai`, `maumanhinh`, `chatlieumatkinh`) VALUES
('manhinh_01', 'IPS LCD', '6.1', 'Liquid Retina HD', '828 x 1792', '16 Triệu', 'Kính Cường Lực'),
('manhinh_02', 'AMOLED', '6.1', 'Super Retina XDR', '828 x 1792', '16 Triệu', 'Phủ Ceramic'),
('manhinh_03', 'AMOLED', '5.4', 'Super Retina XDR', '1080 x 2340', '16 Triệu', 'Phủ Ceramic'),
('manhinh_05', 'AMOLED', '6.7', 'Super Retina XDR', '1080 x 2340', '16 Triệu', 'Phủ Ceramic'),
('manhinh_06', 'IPS LCD', '6.5', 'Super Retina XDR', '720 x 1600', '16 Triệu', 'Phủ Ceramic'),
('manhinh_07', 'IPS LCD', '6.26', 'HD+', '720 x 1520', '16 Triệu', 'Kính cường lực'),
('manhinh_08', 'IPS LCD', '6.39', 'HD+', '720 x 1520', '16 Triệu', 'Kính cường lực'),
('manhinh_10', 'IPS LCD', '6.8', 'FHD+', '1080 x 2400', '16 Triệu', 'Kính Cường Lực'),
('manhinh_11', 'TFT LCD', '6.5', 'FHD+', '1080 x 2400', '16 Triệu', 'Gorilla Glass 3'),
('manhinh_12', 'IPS LCD', '6.5', 'HD+', '720 x 1600', '16 Triệu', 'Gorilla Glass 3'),
('manhinh_13', 'AMOLED', '6.43', 'FHD+', '1080 x 2400', '16 Triệu', 'Gorilla Glass 3'),
('manhinh_14', 'AMOLED', '6.4', 'FHD+', '1080 x 2400', '16 Triệu', 'Gorilla Glass 3+'),
('manhinh_15', 'AMOLED', '6.5', 'FHD+', '1080 x 2400', '16 Triệu', 'Gorilla Glass 5'),
('manhinh_16', 'Super AMOLED Plus', '6.7', 'FHD+', '1080 x 2400', '16 Triệu', 'Gorilla Glass 5'),
('manhinh_17', 'Dynamic AMOLED 2X', '6.9', '2K+', '1440 x 3088', '16 Triệu', 'Gorilla Glass Victus'),
('manhinh_19', 'Dynamic AMOLED 2X', '6.7', 'QHD+', '1440 x 3200', '16 Triệu', 'Gorilla Glass 6'),
('manhinh_20', 'Dynamic AMOLED 2X', '6.2', 'QHD+', '1768 x 2208', '16 Triệu', 'Gorilla Glass Victus'),
('manhinh_24', 'TFT LCD', '6.53', 'FHD+', '1080 x 2340', '16 Triệu', 'Gorilla Glass 3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maytinh`
--

CREATE TABLE `maytinh` (
  `mamaytinh` varchar(25) NOT NULL,
  `tensanpham` varchar(60) NOT NULL,
  `xuatxu` varchar(20) NOT NULL,
  `thoigianbaohanh` tinyint(4) DEFAULT NULL,
  `chieurong` float DEFAULT NULL,
  `chieucao` float DEFAULT NULL,
  `chieusau` float DEFAULT NULL,
  `namramat` varchar(4) NOT NULL,
  `trongluong` float DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `maytinh`
--

INSERT INTO `maytinh` (`mamaytinh`, `tensanpham`, `xuatxu`, `thoigianbaohanh`, `chieurong`, `chieucao`, `chieusau`, `namramat`, `trongluong`, `soluong`, `gia`, `hinhanh`) VALUES
('mt_01', 'Acer Aspire 3 A315 56 59XY i5 1035G14GB256GB15.6FHDWin 10', 'china', 12, 0, 0, 0, '2020', 1.7, 15, 570, '/Máy tính/ACER/Acer Aspire 3 A315 56 59XY i5 1035G14GB256GB15.6FHDWin 10/anh1.PNG'),
('mt_02', 'Acer Aspire 3 A315-23G-R33Y R5 3500U8G512G SSD15.6 FHDRadeon', 'china', 12, 363.4, 19.9, 250.2, '2018', 1.7, 12, 560, '/Máy tính/ACER/Acer Aspire 3 A315-23G-R33Y R5 3500U8G512G SSD15.6 FHDRadeon625-2GBWin10/anh1.PNG'),
('mt_03', 'Acer Aspire 5 A514 53 3821 i3 1005G14GB256GB14FHDWin 10', 'china', 12, 0, 0, 0, '2020', 1.5, 12, 524, '/Máy tính/ACER/Acer Aspire 5 A514 53 3821 i3 1005G14GB256GB14FHDWin 10/anh1.PNG'),
('mt_04', 'Acer Aspire A315-34-P3LCPentium N5000NX.HE3SV.004', 'china', 12, 0, 0, 0, '2020', 1.7, 12, 350, '/Máy tính/ACER/Acer Aspire A315-34-P3LCPentium N5000NX.HE3SV.004/anh1.PNG'),
('mt_05', 'Acer Aspire Gaming 7 A715-41G-R1AZ R7 3750H8GB512GB SSD15.6F', 'china', 12, 363.4, 254.5, 23.25, '2020', 2.1, 12, 650, '/Máy tính/ACER/Acer Aspire Gaming 7 A715-41G-R1AZ R7 3750H8GB512GB SSD15.6FHDGTX1650-4GBW10/anh1.PNG'),
('mt_06', 'Acer Nitro 5 AN515 43 R65L R7 3750H8GB256GB15.6FHDRX560X 4GB', 'china', 12, 363.96, 225.5, 25.8, '2019', 2.2, 12, 857, '/Máy tính/ACER/Acer Nitro 5 AN515 43 R65L R7 3750H8GB256GB15.6FHDRX560X 4GBWin 10/anh1.PNG'),
('mt_07', 'Acer Nitro AN515 54 595D i5-9300H8Gb512GbGTX 1650 4Gb15.6FHD', 'china', 12, 0, 0, 0, '2019', 2.3, 27, 954, '/Máy tính/ACER/Acer Nitro AN515 54 595D i5-9300H8Gb512GbGTX 1650 4Gb15.6FHDWin 10/anh1.PNG'),
('mt_08', 'Acer Swift 3S SF314 57 52GB i5 1035G18Gb512Gb14FHDWin 10', 'china', 12, 0, 0, 0, '2019', 1.19, 27, 756, '/Máy tính/ACER/Acer Swift 3S SF314 57 52GB i5 1035G18Gb512Gb14FHDWin 10/anh1.PNG'),
('mt_09', 'Acer Swift 5 SF514-53T-58PNCore i5-8265UNX.H7HSV.001', 'china', 12, 0, 0, 0, '2019', 0.97, 21, 812, '/Máy tính/ACER/Acer Swift 5 SF514-53T-58PNCore i5-8265UNX.H7HSV.001/anh1.PNG'),
('mt_10', 'Acer Swift 5 SF514-53T-720RCore i7-8565UNX.H7HSV.002', 'china', 12, 0, 0, 0, '2019', 0.97, 21, 990, '/Máy tính/ACER/Acer Swift 5 SF514-53T-720RCore i7-8565UNX.H7HSV.002/anh1.PNG'),
('mt_11', 'Acer Swift SF114-32-P2SG N50004Gb64Gb EMMC14FHDWin 10', 'china', 12, 0, 0, 0, '2019', 1.3, 21, 353, '/Máy tính/ACER/Acer Swift 5 SF514-53T-720RCore i7-8565UNX.H7HSV.002/anh1.PNG'),
('mt_12', 'Asus Vivobook A412DA-EK160TR5-3500U8GB512GB SSDWIN10', 'china', 24, 0, 0, 0, '2019', 1.5, 23, 571, '/Máy tính/ASUS/Asus Vivobook A412DA-EK160TR5-3500U8GB512GB SSDWIN10/anh1.PNG'),
('mt_13', 'Asus Vivobook A412DA-EK347T R3 3200U4GB512GBWIN10', 'china', 24, 0, 0, 0, '2019', 1.5, 23, 495, '/Máy tính/ASUS/Asus Vivobook A412DA-EK347T R3 3200U4GB512GBWIN10/anh1.PNG'),
('mt_14', 'Asus Vivobook D409DA-EK109T R5-3500U4GB512GB SSDWIN10', 'china', 24, 360, 216, 23.1, '2020', 1.9, 23, 523, '/Máy tính/ASUS/Asus Vivobook D409DA-EK109T R5-3500U4GB512GB SSDWIN10/anh1.PNG'),
('mt_15', 'Asus Vivobook D409DA-EK110T R3 3200U4GB256GB SSDWIN10', 'china', 24, 325, 216, 23.1, '2020', 1.9, 30, 356, '/Máy tính/ASUS/Asus Vivobook D409DA-EK110T R3 3200U4GB256GB SSDWIN10/anh1.PNG'),
('mt_16', 'Asus Vivobook TP412FA-EC268T I3 8145U4GB512GB SSDWIN10', 'china', 24, 327, 225, 17.5, '2020', 1.5, 30, 500, '/Máy tính/ASUS/Asus Vivobook TP412FA-EC268T I3 8145U4GB512GB SSDWIN10/anh1.PNG'),
('mt_17', 'Asus Vivobook X407UA-BV537TCore i3-7020U4GB1TBWIN10', 'china', 24, 0, 0, 0, '2019', 1.5, 30, 348, '/Máy tính/ASUS/Asus Vivobook X407UA-BV537TCore i3-7020U4GB1TBWIN10/anh1.PNG'),
('mt_18', 'Asus Vivobook X409FA-EK470T i3-8145U4G512GB SSD14FHDWin10', 'china', 24, 0, 0, 0, '2020', 1.6, 37, 487, '/Máy tính/ASUS/Asus Vivobook X409FA-EK470T i3-8145U4G512GB SSD14FHDWin10/anh1.PNG'),
('mt_19', 'Asus Vivobook X509JA-EJ171T i5 1035G14GB512GB SSD15.6FHDWin1', 'china', 24, 360, 235, 22.9, '2020', 1.9, 37, 600, '/Máy tính/ASUS/Asus Vivobook X509JA-EJ171T i5 1035G14GB512GB SSD15.6FHDWin10/anh1.PNG'),
('mt_20', 'Asus Vivobook X509MA-BR063T N50004G256GB SSDWin 10', 'china', 24, 0, 0, 0, '2020', 1.7, 37, 299, '/Máy tính/ASUS/Asus Vivobook X509MA-BR063T N50004G256GB SSDWin 10/anh1.PNG'),
('mt_21', 'Asus Vivobook X509UA-BR011TCore i3-7020U4GB1TBWIN10', 'china', 24, 360, 234, 23.4, '2019', 1.9, 14, 331, '/Máy tính/ASUS/Asus Vivobook X509UA-BR011TCore i3-7020U4GB1TBWIN10/anh1.PNG'),
('mt_22', 'Asus Vivobook X509UA-BR236TCore i3-7020U4G512GB SSDWIN10', 'china', 24, 0, 0, 0, '2019', 1.9, 14, 331, '/Máy tính/ASUS/Asus Vivobook X509UA-BR236TCore i3-7020U4G512GB SSDWIN10/anh1.PNG'),
('mt_23', 'Dell Inspiron 14 N5490 i5 10210U8Gb512Gb14.0FHD2Gb_MX230Win ', 'china', 24, 0, 0, 0, '2019', 1.442, 18, 934, '/Máy tính/DELL/Dell Inspiron 14 N5490 i5 10210U8Gb512Gb14.0FHD2Gb_MX230Win 10/anh1.PNG'),
('mt_24', 'Dell Inspiron G7 N7591Core i7-9750HKJ2G41', 'china', 12, 0, 0, 0, '2019', 1.8, 18, 1098, '/Máy tính/DELL/Dell Inspiron G7 N7591Core i7-9750HKJ2G41/anh1.PNG'),
('mt_25', 'Dell Inspiron N3481Core i3-7020U4Gb1Tb14HD3cellWin 10030CX2', 'china', 12, 0, 0, 0, '2019', 1.711, 21, 489, '/Máy tính/DELL/Dell Inspiron N3481Core i3-7020U4Gb1Tb14HD3cellWin 10030CX2/anh1.PNG'),
('mt_26', 'Dell Inspiron N3493 i5 1035G18Gb256Gb14FHDWin 10', 'china', 12, 339, 241.9, 19.9, '2020', 1.79, 17, 579, '/Máy tính/DELL/Dell Inspiron N3493 i5 1035G18Gb256Gb14FHDWin 10/anh1.PNG'),
('mt_27', 'Dell Inspiron N3580Core i5-8265U70184569', 'china', 12, 0, 0, 0, '2020', 2.28, 26, 711, '/Máy tính/DELL/Dell Inspiron N3580Core i5-8265U70184569/anh1.PNG'),
('mt_28', 'Dell Inspiron N3593 i5 1035G14Gb256GbNvidia MX230 2Gb15.6FHD', 'china', 12, 0, 0, 0, '2020', 2, 26, 674, '/Máy tính/DELL/Dell Inspiron N3593 i5 1035G14Gb256GbNvidia MX230 2Gb15.6FHDWin 10/anh1.PNG'),
('mt_29', 'Dell Inspiron N3593 i7 1065G78GB512GB15.6FHDNVIDIA MX230 2GB', 'china', 12, 380, 0, 0, '2020', 2.2, 43, 884, '/Máy tính/DELL/Dell Inspiron N3593 i7 1065G78GB512GB15.6FHDNVIDIA MX230 2GBWin 10/anh1.PNG'),
('mt_30', 'Dell Inspiron N5584Core i5-8265U4GBN5I5384W', 'china', 12, 0, 0, 0, '2020', 1.95, 3, 793, '/Máy tính/DELL/Dell Inspiron N5584Core i5-8265U4GBN5I5384W/anh1.PNG'),
('mt_31', 'Dell Inspiron N5593 i3 1005G14Gb128Gb15.6FHDWin 10', 'china', 12, 0, 0, 0, '2020', 2.05, 9, 526, '/Máy tính/DELL/Dell Inspiron N5593 i3 1005G14Gb128Gb15.6FHDWin 10/anh1.PNG'),
('mt_32', 'Dell Vostro V3481Core i3-7020U4Gb1Tb14.0HDWin 10Đen70187645', 'china', 12, 0, 0, 0, '2020', 1.79, 19, 501, '/Máy tính/DELL/Dell Vostro V3481Core i3-7020U4Gb1Tb14.0HDWin 10Đen70187645/anh1.PNG'),
('mt_33', 'Dell Vostro V3580ICore i5-8265UP75F010V80I', 'china', 12, 380, 258, 22.6, '2019', 2.28, 14, 775, '/Máy tính/DELL/Dell Vostro V3580ICore i5-8265UP75F010V80I/anh1.PNG'),
('mt_34', 'Dell Vostro V3590 i3-10110U4GB256GB15.6FHDWin 10', 'china', 12, 380, 258, 20, '2020', 1.99, 18, 500, '/Máy tính/DELL/Dell Vostro V3590 i3-10110U4GB256GB15.6FHDWin 10/anh1.PNG'),
('mt_35', 'Dell Vostro V5590 i5 10210U8Gb256Gb15.6FHDWin 10', 'china', 12, 0, 0, 0, '2020', 1.66, 5, 873, '/Máy tính/DELL/Dell Vostro V5590 i5 10210U8Gb256Gb15.6FHDWin 10/anh1.PNG'),
('mt_36', 'HP 14s-dk0117AU R3 3200U4GB256GB SSDWIN10', 'china', 12, 324, 225, 19.9, '2020', 1.47, 15, 350, '/Máy tính/HP/HP 14s-dk0117AU R3 3200U4GB256GB SSDWIN10/anh1.PNG'),
('mt_37', 'HP 15-da0037TXi3 7020U', 'china', 12, 376, 246, 22.5, '2020', 1.77, 16, 345, '/Máy tính/HP/HP 15-da0037TXi3 7020U/anh1.PNG'),
('mt_38', 'HP 15s-du1040TX i7-10510U8GB512GB SSD2GB MX130WIN10', 'china', 12, 358.5, 242, 19.9, '2020', 1.78, 26, 874, '/Máy tính/HP/HP 15s-du1040TX i7-10510U8GB512GB SSD2GB MX130WIN10/anh1.PNG'),
('mt_39', 'HP 15s-du2049TX i3 1005G14GB256GB SSDMX130 2GBWIN10', 'china', 12, 358.5, 242, 19.9, '2020', 1.75, 36, 512, '/Máy tính/HP/HP 15s-du2049TX i3 1005G14GB256GB SSDMX130 2GBWIN10/anh1.PNG'),
('mt_40', 'HP ENVY X360-AR0071AUR5-3500U8GB256G SSDWIN10', 'china', 12, 306, 212, 147, '2019', 1.31, 31, 1035, '/Máy tính/HP/HP ENVY X360-AR0071AUR5-3500U8GB256G SSDWIN10/anh1.PNG'),
('mt_41', 'HP Pavilion 14-ce2041TUCore i5-8265U4GB1TBWIN10', 'china', 12, 326.8, 225.5, 17.9, '2019', 1.59, 42, 599, '/Máy tính/HP/HP Pavilion 14-ce2041TUCore i5-8265U4GB1TBWIN10/anh1.PNG'),
('mt_42', 'HP Pavilion 15-cs2056TXi5-8265U4GB1TBMX130 2GBWIN10', 'china', 12, 361.6, 245.6, 17.9, '2019', 1.825, 42, 612, '/Máy tính/HP/HP Pavilion 15-cs2056TXi5-8265U4GB1TBMX130 2GBWIN10/anh1.PNG'),
('mt_43', 'HP Pavilion 15-cs3060TXi5-1035G18GB512GSSD2GB MX250WIN10', 'china', 12, 361.6, 245.6, 17.9, '2019', 1.761, 22, 801, '/Máy tính/HP/HP Pavilion 15-cs3060TXi5-1035G18GB512GSSD2GB MX250WIN10/anh1.PNG'),
('mt_44', 'Lenovo Ideadpad S340-15IWLCore I3 8145U4GB256G SSDWIN10', 'china', 12, 358, 245, 17.9, '2019', 1.8, 24, 465, '/Máy tính/LENOVO/Lenovo Ideadpad S340-15IWLCore I3 8145U4GB256G SSDWIN10/anh1.PNG'),
('mt_45', 'Lenovo Ideapad C340-14API R7 3700U8GB512GB SSD14.0FHD TouchW', 'china', 12, 0, 0, 0, '2019', 1.604, 27, 780, '/Máy tính/LENOVO/Lenovo Ideapad C340-14API R7 3700U8GB512GB SSD14.0FHD TouchWIN10/anh1.PNG'),
('mt_46', 'Lenovo IdeaPad Flex 5 14ARE05 R5 4500U8GB512GB14.0FHD TouchP', 'china', 24, 320.2, 210.5, 17.9, '2020', 1.556, 27, 589, '/Máy tính/LENOVO/Lenovo IdeaPad Flex 5 14ARE05 R5 4500U8GB512GB14.0FHD TouchPenWin 10/anh1.PNG'),
('mt_47', 'Lenovo Ideapad L340-15IRH i7 9750HF8GB512GB SSD3GB GTX1050WI', 'china', 12, 0, 0, 0, '2020', 2.19, 22, 874, '/Máy tính/LENOVO/Lenovo Ideapad L340-15IRH i7 9750HF8GB512GB SSD3GB GTX1050WIN10/anh1.PNG'),
('mt_48', 'Lenovo Ideapad S145-15API R5 3500U4GB256GB SSDWIN10', 'china', 12, 0, 0, 0, '2019', 1.85, 25, 350, '/Máy tính/LENOVO/Lenovo Ideapad S145-15API R5 3500U4GB256GB SSDWIN10/anh1.PNG'),
('mt_49', 'Lenovo IdeaPad S145-15IIL i5 1035G18GB512GB SSDWIN10', 'china', 12, 0, 0, 0, '2020', 1.85, 25, 545, '/Máy tính/LENOVO/Lenovo IdeaPad S145-15IIL i5 1035G18GB512GB SSDWIN10/anh1.PNG'),
('mt_50', 'Lenovo Ideapad S145-15IKB i3 8130U4GB256GB SSDWIN10', 'china', 12, 327.1, 241, 19.93, '2020', 1.85, 35, 390, '/Máy tính/LENOVO/Lenovo Ideapad S145-15IKB i3 8130U4GB256GB SSDWIN10/anh1.PNG'),
('mt_51', 'Lenovo Ideapad S340-15IWLi5-8265U4G256GBMX230 2GBWIN10', 'china', 12, 0, 0, 0, '2020', 1.8, 32, 525, '/Máy tính/LENOVO/Lenovo Ideapad S340-15IWLi5-8265U4G256GBMX230 2GBWIN10/anh1.PNG'),
('mt_52', 'Lenovo Ideapad S340R5-3500U4GB256GSSDWIN10', 'china', 12, 0, 0, 0, '2019', 1.8, 2, 515, '/Máy tính/LENOVO/Lenovo Ideapad S340R5-3500U4GB256GSSDWIN10/anh1.PNG'),
('mt_53', 'Lenovo IdeaPad S540-13API R5 3550H8GB512GB SSDWIN10', 'china', 12, 0, 0, 0, '2020', 1.25, 11, 743, '/Máy tính/LENOVO/Lenovo IdeaPad S540-13API R5 3550H8GB512GB SSDWIN10/anh1.PNG'),
('mt_54', 'Lenovo ideapad Slim 3-14IIL05 i3-1005G18GB512GB SSDWIN10', 'china', 24, 0, 0, 0, '2020', 1.6, 12, 529, '/Máy tính/LENOVO/Lenovo ideapad Slim 3-14IIL05 i3-1005G18GB512GB SSDWIN10/anh1.PNG'),
('mt_55', 'Lenovo Legion 5-15ARH05 R5 4600H8GB512GB4GB GTX1650WIN10', 'china', 24, 0, 0, 0, '2020', 2.3, 12, 901, '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R5 4600H8GB512GB4GB GTX1650WIN10/anh1.PNG'),
('mt_56', 'Lenovo Legion 5-15ARH05 R7 4800H8GB512GB SSD4GB GTX1650WIN10', 'china', 24, 363, 260, 25.4, '2020', 2.3, 15, 1019, '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R7 4800H8GB512GB SSD4GB GTX1650WIN10/anh1.PNG'),
('mt_57', 'Lenovo ThinkBook 14 i5 10210U8GB512GB SSDWIN10', 'china', 12, 0, 0, 0, '2020', 1.5, 15, 600, '/Máy tính/LENOVO/Lenovo ThinkBook 14 i5 10210U8GB512GB SSDWIN10/anh1.PNG'),
('mt_58', 'Lenovo ThinkPad E14 i5 10210U8GB512GB SSDWIN10', 'china', 12, 0, 0, 0, '2020', 1.77, 19, 790, '/Máy tính/LENOVO/Lenovo ThinkPad E14 i5 10210U8GB512GB SSDWIN10/anh1.PNG'),
('mt_59', 'Acer The he 6 core i7', 'china', 12, 2, 3, 1, '2020', 2.3, 12, 321, '/Máy tính/ACER/Acer The he 6 core i7/Đăng nhập.jpg'),
('mt_60', 'Acer The he 6 core i9', 'china', 12, 3.21, 2, 1.43, '2020', 1.3, 13, 654, '/Máy tính/ACER/Acer The he 6 core i9/Đăng nhập.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maytinhchitiet`
--

CREATE TABLE `maytinhchitiet` (
  `mamaytinh` varchar(25) NOT NULL,
  `macpu` varchar(25) NOT NULL,
  `maram` varchar(25) NOT NULL,
  `madohoa` varchar(25) NOT NULL,
  `mamanhinh` varchar(25) NOT NULL,
  `maloa` varchar(25) NOT NULL,
  `mapin` varchar(25) NOT NULL,
  `phienbanhedieuhanh` varchar(25) NOT NULL,
  `machatlieu` varchar(25) NOT NULL,
  `mabanphim` varchar(25) NOT NULL,
  `mabonho` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `maytinhchitiet`
--

INSERT INTO `maytinhchitiet` (`mamaytinh`, `macpu`, `maram`, `madohoa`, `mamanhinh`, `maloa`, `mapin`, `phienbanhedieuhanh`, `machatlieu`, `mabanphim`, `mabonho`) VALUES
('mt_01', 'cpu_01', 'ram_01', 'dohoa_01', 'manhinh_01', 'loa_01', 'pin_01', 'Home', 'chatlieu_01', 'banphim_02', 'bonho_01'),
('mt_02', 'cpu_02', 'ram_02', 'dohoa_02', 'manhinh_02', 'loa_02', 'pin_02', 'Home', 'chatlieu_02', 'banphim_02', 'bonho_01'),
('mt_03', 'cpu_03', 'ram_03', 'dohoa_03', 'manhinh_03', 'loa_02', 'pin_02', 'Home', 'chatlieu_01', 'banphim_02', 'bonho_01'),
('mt_04', 'cpu_04', 'ram_04', 'dohoa_04', 'manhinh_04', 'loa_01', 'pin_03', 'Home', 'chatlieu_02', 'banphim_03', 'bonho_02'),
('mt_05', 'cpu_01', 'ram_01', 'dohoa_01', 'manhinh_01', 'loa_01', 'pin_01', 'Home Single Lan', 'chatlieu_01', 'banphim_02', 'bonho_01'),
('mt_06', 'cpu_02', 'ram_02', 'dohoa_02', 'manhinh_02', 'loa_02', 'pin_02', 'Home', 'chatlieu_02', 'banphim_02', 'bonho_05'),
('mt_07', 'cpu_03', 'ram_03', 'dohoa_03', 'manhinh_03', 'loa_02', 'pin_02', 'Home', 'chatlieu_01', 'banphim_02', 'bonho_03'),
('mt_08', 'cpu_04', 'ram_04', 'dohoa_04', 'manhinh_04', 'loa_01', 'pin_03', 'Home Single Lan', 'chatlieu_02', 'banphim_03', 'bonho_02'),
('mt_09', 'cpu_09', 'ram_09', 'dohoa_08', 'manhinh_09', 'loa_02', 'pin_02', 'Home', 'chatlieu_02', 'banphim_02', 'bonho_05'),
('mt_10', 'cpu_10', 'ram_10', 'dohoa_09', 'manhinh_10', 'loa_02', 'pin_02', 'Home Single Lan', 'chatlieu_01', 'banphim_02', 'bonho_03'),
('mt_11', 'cpu_11', 'ram_10', 'dohoa_10', 'manhinh_09', 'loa_01', 'pin_03', 'Home Single Lan', 'chatlieu_02', 'banphim_03', 'bonho_01'),
('mt_12', 'cpu_12', 'ram_11', 'dohoa_11', 'manhinh_11', 'loa_03', 'pin_07', 'Home', 'chatlieu_03', 'banphim_08', 'bonho_06'),
('mt_13', 'cpu_13', 'ram_12', 'dohoa_11', 'manhinh_12', 'loa_03', 'pin_07', 'Home', 'chatlieu_03', 'banphim_09', 'bonho_06'),
('mt_14', 'cpu_14', 'ram_12', 'dohoa_12', 'manhinh_13', 'loa_03', 'pin_07', 'Home', 'chatlieu_03', 'banphim_10', 'bonho_06'),
('mt_15', 'cpu_15', 'ram_13', 'dohoa_12', 'manhinh_17', 'loa_03', 'pin_07', 'Home Single Lan', 'chatlieu_03', 'banphim_11', 'bonho_06'),
('mt_16', 'cpu_12', 'ram_11', 'dohoa_11', 'manhinh_11', 'loa_03', 'pin_07', 'Home', 'chatlieu_03', 'banphim_08', 'bonho_06'),
('mt_17', 'cpu_13', 'ram_12', 'dohoa_11', 'manhinh_12', 'loa_03', 'pin_07', 'Home', 'chatlieu_03', 'banphim_09', 'bonho_06'),
('mt_18', 'cpu_14', 'ram_12', 'dohoa_12', 'manhinh_13', 'loa_03', 'pin_07', 'Home', 'chatlieu_03', 'banphim_10', 'bonho_06'),
('mt_19', 'cpu_15', 'ram_13', 'dohoa_12', 'manhinh_17', 'loa_03', 'pin_07', 'Home Single Lan', 'chatlieu_03', 'banphim_11', 'bonho_06'),
('mt_20', 'cpu_13', 'ram_12', 'dohoa_11', 'manhinh_12', 'loa_03', 'pin_07', 'Home', 'chatlieu_03', 'banphim_09', 'bonho_06'),
('mt_21', 'cpu_14', 'ram_12', 'dohoa_12', 'manhinh_13', 'loa_03', 'pin_07', 'Home', 'chatlieu_03', 'banphim_10', 'bonho_06'),
('mt_22', 'cpu_15', 'ram_13', 'dohoa_12', 'manhinh_17', 'loa_03', 'pin_07', 'Home Single Lan', 'chatlieu_03', 'banphim_11', 'bonho_06'),
('mt_23', 'cpu_23', 'ram_19', 'dohoa_15', 'manhinh_18', 'loa_04', 'pin_08', 'Home', 'chatlieu_02', 'banphim_12', 'bonho_07'),
('mt_24', 'cpu_24', 'ram_20', 'dohoa_15', 'manhinh_18', 'loa_04', 'pin_09', 'Home', 'chatlieu_02', 'banphim_13', 'bonho_07'),
('mt_25', 'cpu_25', 'ram_21', 'dohoa_15', 'manhinh_18', 'loa_05', 'pin_09', 'Home Single Lan', 'chatlieu_02', 'banphim_14', 'bonho_07'),
('mt_26', 'cpu_26', 'ram_22', 'dohoa_15', 'manhinh_18', 'loa_05', 'pin_10', 'Home', 'chatlieu_02', 'banphim_12', 'bonho_07'),
('mt_27', 'cpu_27', 'ram_23', 'dohoa_15', 'manhinh_18', 'loa_04', 'pin_08', 'Home Single Lan', 'chatlieu_02', 'banphim_15', 'bonho_07'),
('mt_28', 'cpu_23', 'ram_06', 'dohoa_15', 'manhinh_19', 'loa_04', 'pin_08', 'Home', 'chatlieu_01', 'banphim_12', 'bonho_07'),
('mt_29', 'cpu_24', 'ram_07', 'dohoa_15', 'manhinh_19', 'loa_04', 'pin_09', 'Home', 'chatlieu_02', 'banphim_13', 'bonho_07'),
('mt_30', 'cpu_25', 'ram_09', 'dohoa_15', 'manhinh_24', 'loa_05', 'pin_09', 'Home Single Lan', 'chatlieu_02', 'banphim_14', 'bonho_07'),
('mt_31', 'cpu_26', 'ram_09', 'dohoa_15', 'manhinh_18', 'loa_05', 'pin_10', 'Home', 'chatlieu_03', 'banphim_12', 'bonho_07'),
('mt_32', 'cpu_27', 'ram_09', 'dohoa_15', 'manhinh_24', 'loa_04', 'pin_08', 'Home Single Lan', 'chatlieu_02', 'banphim_15', 'bonho_07'),
('mt_33', 'cpu_25', 'ram_09', 'dohoa_15', 'manhinh_24', 'loa_05', 'pin_09', 'Home Single Lan', 'chatlieu_02', 'banphim_14', 'bonho_07'),
('mt_34', 'cpu_26', 'ram_09', 'dohoa_15', 'manhinh_18', 'loa_05', 'pin_10', 'Home', 'chatlieu_03', 'banphim_12', 'bonho_07'),
('mt_35', 'cpu_27', 'ram_09', 'dohoa_15', 'manhinh_24', 'loa_04', 'pin_08', 'Home Single Lan', 'chatlieu_02', 'banphim_15', 'bonho_07'),
('mt_36', 'cpu_34', 'ram_26', 'dohoa_18', 'manhinh_28', 'loa_07', 'pin_12', 'Home', 'chatlieu_02', 'banphim_16', 'bonho_08'),
('mt_37', 'cpu_34', 'ram_26', 'dohoa_18', 'manhinh_28', 'loa_07', 'pin_12', 'Home', 'chatlieu_02', 'banphim_16', 'bonho_08'),
('mt_38', 'cpu_34', 'ram_26', 'dohoa_18', 'manhinh_28', 'loa_07', 'pin_12', 'Home', 'chatlieu_02', 'banphim_16', 'bonho_08'),
('mt_39', 'cpu_34', 'ram_26', 'dohoa_18', 'manhinh_28', 'loa_07', 'pin_12', 'Home', 'chatlieu_02', 'banphim_16', 'bonho_08'),
('mt_40', 'cpu_34', 'ram_26', 'dohoa_18', 'manhinh_28', 'loa_07', 'pin_12', 'Home', 'chatlieu_02', 'banphim_16', 'bonho_08'),
('mt_41', 'cpu_34', 'ram_26', 'dohoa_18', 'manhinh_28', 'loa_07', 'pin_12', 'Home', 'chatlieu_02', 'banphim_16', 'bonho_08'),
('mt_42', 'cpu_34', 'ram_26', 'dohoa_18', 'manhinh_28', 'loa_07', 'pin_12', 'Home', 'chatlieu_02', 'banphim_16', 'bonho_08'),
('mt_43', 'cpu_34', 'ram_26', 'dohoa_18', 'manhinh_28', 'loa_07', 'pin_12', 'Home', 'chatlieu_02', 'banphim_16', 'bonho_08'),
('mt_44', 'cpu_37', 'ram_32', 'dohoa_19', 'manhinh_35', 'loa_09', 'pin_14', 'Home', 'chatlieu_07', 'banphim_18', 'bonho_08'),
('mt_45', 'cpu_38', 'ram_32', 'dohoa_19', 'manhinh_35', 'loa_10', 'pin_14', 'Home', 'chatlieu_08', 'banphim_18', 'bonho_06'),
('mt_46', 'cpu_39', 'ram_33', 'dohoa_20', 'manhinh_36', 'loa_10', 'pin_15', 'Home', 'chatlieu_07', 'banphim_18', 'bonho_11'),
('mt_47', 'cpu_40', 'ram_34', 'dohoa_21', 'manhinh_37', 'loa_07', 'pin_10', 'Home', 'chatlieu_08', 'banphim_21', 'bonho_07'),
('mt_48', 'cpu_41', 'ram_35', 'dohoa_21', 'manhinh_37', 'loa_09', 'pin_14', 'Home', 'chatlieu_07', 'banphim_18', 'bonho_08'),
('mt_49', 'cpu_37', 'ram_32', 'dohoa_19', 'manhinh_35', 'loa_09', 'pin_14', 'Home', 'chatlieu_07', 'banphim_18', 'bonho_08'),
('mt_50', 'cpu_38', 'ram_32', 'dohoa_19', 'manhinh_35', 'loa_10', 'pin_14', 'Home', 'chatlieu_08', 'banphim_18', 'bonho_06'),
('mt_51', 'cpu_39', 'ram_33', 'dohoa_20', 'manhinh_36', 'loa_10', 'pin_15', 'Home', 'chatlieu_07', 'banphim_18', 'bonho_11'),
('mt_52', 'cpu_40', 'ram_34', 'dohoa_21', 'manhinh_37', 'loa_07', 'pin_10', 'Home', 'chatlieu_08', 'banphim_21', 'bonho_07'),
('mt_53', 'cpu_41', 'ram_35', 'dohoa_21', 'manhinh_37', 'loa_09', 'pin_14', 'Home', 'chatlieu_07', 'banphim_18', 'bonho_08'),
('mt_54', 'cpu_37', 'ram_32', 'dohoa_19', 'manhinh_35', 'loa_09', 'pin_14', 'Home', 'chatlieu_07', 'banphim_18', 'bonho_08'),
('mt_55', 'cpu_38', 'ram_32', 'dohoa_19', 'manhinh_35', 'loa_10', 'pin_14', 'Home', 'chatlieu_08', 'banphim_18', 'bonho_06'),
('mt_56', 'cpu_39', 'ram_33', 'dohoa_20', 'manhinh_36', 'loa_10', 'pin_15', 'Home', 'chatlieu_07', 'banphim_18', 'bonho_11'),
('mt_57', 'cpu_40', 'ram_34', 'dohoa_21', 'manhinh_37', 'loa_07', 'pin_10', 'Home', 'chatlieu_08', 'banphim_21', 'bonho_07'),
('mt_58', 'cpu_41', 'ram_35', 'dohoa_21', 'manhinh_37', 'loa_09', 'pin_14', 'Home', 'chatlieu_07', 'banphim_18', 'bonho_08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maytinhhinhanh`
--

CREATE TABLE `maytinhhinhanh` (
  `stt` int(11) NOT NULL,
  `mamaytinh` varchar(25) NOT NULL,
  `hinhanh` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `maytinhhinhanh`
--

INSERT INTO `maytinhhinhanh` (`stt`, `mamaytinh`, `hinhanh`) VALUES
(1, 'mt_01', '/Máy tính/ACER/Acer Aspire 3 A315 56 59XY i5 1035G14GB256GB15.6FHDWin 10/anh1.PNG'),
(2, 'mt_01', '/Máy tính/ACER/Acer Aspire 3 A315 56 59XY i5 1035G14GB256GB15.6FHDWin 10/anh2.PNG'),
(3, 'mt_01', '/Máy tính/ACER/Acer Aspire 3 A315 56 59XY i5 1035G14GB256GB15.6FHDWin 10/anh3.PNG'),
(4, 'mt_01', '/Máy tính/ACER/Acer Aspire 3 A315 56 59XY i5 1035G14GB256GB15.6FHDWin 10/anh4.PNG'),
(5, 'mt_01', '/Máy tính/ACER/Acer Aspire 3 A315 56 59XY i5 1035G14GB256GB15.6FHDWin 10/anh5.PNG'),
(6, 'mt_02', '/Máy tính/ACER/Acer Aspire 3 A315-23G-R33Y R5 3500U8G512G SSD15.6 FHDRadeon625-2GBWin10/anh1.PNG'),
(7, 'mt_02', '/Máy tính/ACER/Acer Aspire 3 A315-23G-R33Y R5 3500U8G512G SSD15.6 FHDRadeon625-2GBWin10/anh2.PNG'),
(8, 'mt_02', '/Máy tính/ACER/Acer Aspire 3 A315-23G-R33Y R5 3500U8G512G SSD15.6 FHDRadeon625-2GBWin10/anh3.PNG'),
(9, 'mt_02', '/Máy tính/ACER/Acer Aspire 3 A315-23G-R33Y R5 3500U8G512G SSD15.6 FHDRadeon625-2GBWin10/anh4.PNG'),
(10, 'mt_02', '/Máy tính/ACER/Acer Aspire 3 A315-23G-R33Y R5 3500U8G512G SSD15.6 FHDRadeon625-2GBWin10/anh5.PNG'),
(11, 'mt_02', '/Máy tính/ACER/Acer Aspire 3 A315-23G-R33Y R5 3500U8G512G SSD15.6 FHDRadeon625-2GBWin10/anh6.PNG'),
(12, 'mt_03', '/Máy tính/ACER/Acer Aspire 5 A514 53 3821 i3 1005G14GB256GB14FHDWin 10/anh1.PNG'),
(13, 'mt_03', '/Máy tính/ACER/Acer Aspire 5 A514 53 3821 i3 1005G14GB256GB14FHDWin 10/anh2.PNG'),
(14, 'mt_03', '/Máy tính/ACER/Acer Aspire 5 A514 53 3821 i3 1005G14GB256GB14FHDWin 10/anh3.PNG'),
(15, 'mt_03', '/Máy tính/ACER/Acer Aspire 5 A514 53 3821 i3 1005G14GB256GB14FHDWin 10/anh4.PNG'),
(16, 'mt_03', '/Máy tính/ACER/Acer Aspire 5 A514 53 3821 i3 1005G14GB256GB14FHDWin 10/anh5.PNG'),
(17, 'mt_04', '/Máy tính/ACER/Acer Aspire A315-34-P3LCPentium N5000NX.HE3SV.004/anh1.PNG'),
(18, 'mt_04', '/Máy tính/ACER/Acer Aspire A315-34-P3LCPentium N5000NX.HE3SV.004/anh2.PNG'),
(19, 'mt_04', '/Máy tính/ACER/Acer Aspire A315-34-P3LCPentium N5000NX.HE3SV.004/anh3.PNG'),
(20, 'mt_04', '/Máy tính/ACER/Acer Aspire A315-34-P3LCPentium N5000NX.HE3SV.004/anh4.PNG'),
(21, 'mt_04', '/Máy tính/ACER/Acer Aspire A315-34-P3LCPentium N5000NX.HE3SV.004/anh5.PNG'),
(22, 'mt_05', '/Máy tính/ACER/Acer Aspire Gaming 7 A715-41G-R1AZ R7 3750H8GB512GB SSD15.6FHDGTX1650-4GBW10/anh1.PNG'),
(23, 'mt_05', '/Máy tính/ACER/Acer Aspire Gaming 7 A715-41G-R1AZ R7 3750H8GB512GB SSD15.6FHDGTX1650-4GBW10/anh2.PNG'),
(24, 'mt_05', '/Máy tính/ACER/Acer Aspire Gaming 7 A715-41G-R1AZ R7 3750H8GB512GB SSD15.6FHDGTX1650-4GBW10/anh3.PNG'),
(25, 'mt_05', '/Máy tính/ACER/Acer Aspire Gaming 7 A715-41G-R1AZ R7 3750H8GB512GB SSD15.6FHDGTX1650-4GBW10/anh4.PNG'),
(26, 'mt_05', '/Máy tính/ACER/Acer Aspire Gaming 7 A715-41G-R1AZ R7 3750H8GB512GB SSD15.6FHDGTX1650-4GBW10/anh5.PNG'),
(27, 'mt_06', '/Máy tính/ACER/Acer Nitro 5 AN515 43 R65L R7 3750H8GB256GB15.6FHDRX560X 4GBWin 10/anh1.PNG'),
(28, 'mt_06', '/Máy tính/ACER/Acer Nitro 5 AN515 43 R65L R7 3750H8GB256GB15.6FHDRX560X 4GBWin 10/anh2.PNG'),
(29, 'mt_06', '/Máy tính/ACER/Acer Nitro 5 AN515 43 R65L R7 3750H8GB256GB15.6FHDRX560X 4GBWin 10/anh3.PNG'),
(30, 'mt_06', '/Máy tính/ACER/Acer Nitro 5 AN515 43 R65L R7 3750H8GB256GB15.6FHDRX560X 4GBWin 10/anh4.PNG'),
(31, 'mt_06', '/Máy tính/ACER/Acer Nitro 5 AN515 43 R65L R7 3750H8GB256GB15.6FHDRX560X 4GBWin 10/anh5.PNG'),
(32, 'mt_07', '/Máy tính/ACER/Acer Nitro AN515 54 595D i5-9300H8Gb512GbGTX 1650 4Gb15.6FHDWin 10/anh1.PNG'),
(33, 'mt_07', '/Máy tính/ACER/Acer Nitro AN515 54 595D i5-9300H8Gb512GbGTX 1650 4Gb15.6FHDWin 10/anh2.PNG'),
(34, 'mt_07', '/Máy tính/ACER/Acer Nitro AN515 54 595D i5-9300H8Gb512GbGTX 1650 4Gb15.6FHDWin 10/anh3.PNG'),
(35, 'mt_07', '/Máy tính/ACER/Acer Nitro AN515 54 595D i5-9300H8Gb512GbGTX 1650 4Gb15.6FHDWin 10/anh4.PNG'),
(36, 'mt_07', '/Máy tính/ACER/Acer Nitro AN515 54 595D i5-9300H8Gb512GbGTX 1650 4Gb15.6FHDWin 10/anh5.PNG'),
(37, 'mt_08', '/Máy tính/ACER/Acer Swift 3S SF314 57 52GB i5 1035G18Gb512Gb14FHDWin 10/anh1.PNG'),
(38, 'mt_08', '/Máy tính/ACER/Acer Swift 3S SF314 57 52GB i5 1035G18Gb512Gb14FHDWin 10/anh2.PNG'),
(39, 'mt_08', '/Máy tính/ACER/Acer Swift 3S SF314 57 52GB i5 1035G18Gb512Gb14FHDWin 10/anh3.PNG'),
(40, 'mt_09', '/Máy tính/ACER/Acer Swift 5 SF514-53T-58PNCore i5-8265UNX.H7HSV.001/anh1.PNG'),
(41, 'mt_09', '/Máy tính/ACER/Acer Swift 5 SF514-53T-58PNCore i5-8265UNX.H7HSV.001/anh2.PNG'),
(42, 'mt_09', '/Máy tính/ACER/Acer Swift 5 SF514-53T-58PNCore i5-8265UNX.H7HSV.001/anh3.PNG'),
(43, 'mt_09', '/Máy tính/ACER/Acer Swift 5 SF514-53T-58PNCore i5-8265UNX.H7HSV.001/anh4.PNG'),
(44, 'mt_09', '/Máy tính/ACER/Acer Swift 5 SF514-53T-58PNCore i5-8265UNX.H7HSV.001/anh5.PNG'),
(45, 'mt_10', '/Máy tính/ACER/Acer Swift 5 SF514-53T-720RCore i7-8565UNX.H7HSV.002/anh1.PNG'),
(46, 'mt_10', '/Máy tính/ACER/Acer Swift 5 SF514-53T-720RCore i7-8565UNX.H7HSV.002/anh2.PNG'),
(47, 'mt_10', '/Máy tính/ACER/Acer Swift 5 SF514-53T-720RCore i7-8565UNX.H7HSV.002/anh3.PNG'),
(48, 'mt_10', '/Máy tính/ACER/Acer Swift 5 SF514-53T-720RCore i7-8565UNX.H7HSV.002/anh4.PNG'),
(49, 'mt_10', '/Máy tính/ACER/Acer Swift 5 SF514-53T-720RCore i7-8565UNX.H7HSV.002/anh5.PNG'),
(50, 'mt_11', '/Máy tính/ACER/Acer Swift SF114-32-P2SG N50004Gb64Gb EMMC14FHDWin 10/anh1.PNG'),
(51, 'mt_11', '/Máy tính/ACER/Acer Swift SF114-32-P2SG N50004Gb64Gb EMMC14FHDWin 10/anh2.PNG'),
(52, 'mt_11', '/Máy tính/ACER/Acer Swift SF114-32-P2SG N50004Gb64Gb EMMC14FHDWin 10/anh3.PNG'),
(53, 'mt_11', '/Máy tính/ACER/Acer Swift SF114-32-P2SG N50004Gb64Gb EMMC14FHDWin 10/anh4.PNG'),
(54, 'mt_12', '/Máy tính/ASUS/Asus Vivobook A412DA-EK160TR5-3500U8GB512GB SSDWIN10/anh1.PNG'),
(55, 'mt_12', '/Máy tính/ASUS/Asus Vivobook A412DA-EK160TR5-3500U8GB512GB SSDWIN10/anh2.PNG'),
(56, 'mt_12', '/Máy tính/ASUS/Asus Vivobook A412DA-EK160TR5-3500U8GB512GB SSDWIN10/anh3.PNG'),
(57, 'mt_12', '/Máy tính/ASUS/Asus Vivobook A412DA-EK160TR5-3500U8GB512GB SSDWIN10/anh4.PNG'),
(58, 'mt_12', '/Máy tính/ASUS/Asus Vivobook A412DA-EK160TR5-3500U8GB512GB SSDWIN10/anh5.PNG'),
(59, 'mt_13', '/Máy tính/ASUS/Asus Vivobook A412DA-EK347T R3 3200U4GB512GBWIN10/anh1.PNG'),
(60, 'mt_13', '/Máy tính/ASUS/Asus Vivobook A412DA-EK347T R3 3200U4GB512GBWIN10/anh2.PNG'),
(61, 'mt_13', '/Máy tính/ASUS/Asus Vivobook A412DA-EK347T R3 3200U4GB512GBWIN10/anh3.PNG'),
(62, 'mt_13', '/Máy tính/ASUS/Asus Vivobook A412DA-EK347T R3 3200U4GB512GBWIN10/anh4.PNG'),
(63, 'mt_14', '/Máy tính/ASUS/Asus Vivobook D409DA-EK109T R5-3500U4GB512GB SSDWIN10/anh1.PNG'),
(64, 'mt_14', '/Máy tính/ASUS/Asus Vivobook D409DA-EK109T R5-3500U4GB512GB SSDWIN10/anh2.PNG'),
(65, 'mt_14', '/Máy tính/ASUS/Asus Vivobook D409DA-EK109T R5-3500U4GB512GB SSDWIN10/anh3.PNG'),
(66, 'mt_14', '/Máy tính/ASUS/Asus Vivobook D409DA-EK109T R5-3500U4GB512GB SSDWIN10/anh4.PNG'),
(67, 'mt_15', '/Máy tính/ASUS/Asus Vivobook D409DA-EK110T R3 3200U4GB256GB SSDWIN10/anh1.PNG'),
(68, 'mt_15', '/Máy tính/ASUS/Asus Vivobook D409DA-EK110T R3 3200U4GB256GB SSDWIN10/anh2.PNG'),
(69, 'mt_15', '/Máy tính/ASUS/Asus Vivobook D409DA-EK110T R3 3200U4GB256GB SSDWIN10/anh3.PNG'),
(70, 'mt_15', '/Máy tính/ASUS/Asus Vivobook D409DA-EK110T R3 3200U4GB256GB SSDWIN10/anh4.PNG'),
(71, 'mt_16', '/Máy tính/ASUS/Asus Vivobook TP412FA-EC268T I3 8145U4GB512GB SSDWIN10/anh1.PNG'),
(72, 'mt_16', '/Máy tính/ASUS/Asus Vivobook TP412FA-EC268T I3 8145U4GB512GB SSDWIN10/anh2.PNG'),
(73, 'mt_16', '/Máy tính/ASUS/Asus Vivobook TP412FA-EC268T I3 8145U4GB512GB SSDWIN10/anh3.PNG'),
(74, 'mt_16', '/Máy tính/ASUS/Asus Vivobook TP412FA-EC268T I3 8145U4GB512GB SSDWIN10/anh4.PNG'),
(75, 'mt_16', '/Máy tính/ASUS/Asus Vivobook TP412FA-EC268T I3 8145U4GB512GB SSDWIN10/anh5.PNG'),
(76, 'mt_17', '/Máy tính/ASUS/Asus Vivobook X407UA-BV537TCore i3-7020U4GB1TBWIN10/anh1.PNG'),
(77, 'mt_17', '/Máy tính/ASUS/Asus Vivobook X407UA-BV537TCore i3-7020U4GB1TBWIN10/anh2.PNG'),
(78, 'mt_17', '/Máy tính/ASUS/Asus Vivobook X407UA-BV537TCore i3-7020U4GB1TBWIN10/anh3.PNG'),
(79, 'mt_17', '/Máy tính/ASUS/Asus Vivobook X407UA-BV537TCore i3-7020U4GB1TBWIN10/anh4.PNG'),
(80, 'mt_17', '/Máy tính/ASUS/Asus Vivobook X407UA-BV537TCore i3-7020U4GB1TBWIN10/anh5.PNG'),
(81, 'mt_18', '/Máy tính/ASUS/Asus Vivobook X409FA-EK470T i3-8145U4G512GB SSD14FHDWin10/anh1.PNG'),
(82, 'mt_18', '/Máy tính/ASUS/Asus Vivobook X409FA-EK470T i3-8145U4G512GB SSD14FHDWin10/anh2.PNG'),
(83, 'mt_18', '/Máy tính/ASUS/Asus Vivobook X409FA-EK470T i3-8145U4G512GB SSD14FHDWin10/anh3.PNG'),
(84, 'mt_18', '/Máy tính/ASUS/Asus Vivobook X409FA-EK470T i3-8145U4G512GB SSD14FHDWin10/anh4.PNG'),
(85, 'mt_18', '/Máy tính/ASUS/Asus Vivobook X409FA-EK470T i3-8145U4G512GB SSD14FHDWin10/anh5.PNG'),
(86, 'mt_19', '/Máy tính/ASUS/Asus Vivobook X509JA-EJ171T i5 1035G14GB512GB SSD15.6FHDWin10/anh1.PNG'),
(87, 'mt_19', '/Máy tính/ASUS/Asus Vivobook X509JA-EJ171T i5 1035G14GB512GB SSD15.6FHDWin10/anh2.PNG'),
(88, 'mt_19', '/Máy tính/ASUS/Asus Vivobook X509JA-EJ171T i5 1035G14GB512GB SSD15.6FHDWin10/anh3.PNG'),
(89, 'mt_19', '/Máy tính/ASUS/Asus Vivobook X509JA-EJ171T i5 1035G14GB512GB SSD15.6FHDWin10/anh4.PNG'),
(90, 'mt_19', '/Máy tính/ASUS/Asus Vivobook X509JA-EJ171T i5 1035G14GB512GB SSD15.6FHDWin10/anh5.PNG'),
(91, 'mt_20', '/Máy tính/ASUS/Asus Vivobook X509MA-BR063T N50004G256GB SSDWin 10/anh1.PNG'),
(92, 'mt_20', '/Máy tính/ASUS/Asus Vivobook X509MA-BR063T N50004G256GB SSDWin 10/anh2.PNG'),
(93, 'mt_20', '/Máy tính/ASUS/Asus Vivobook X509MA-BR063T N50004G256GB SSDWin 10/anh3.PNG'),
(94, 'mt_20', '/Máy tính/ASUS/Asus Vivobook X509MA-BR063T N50004G256GB SSDWin 10/anh4.PNG'),
(95, 'mt_20', '/Máy tính/ASUS/Asus Vivobook X509MA-BR063T N50004G256GB SSDWin 10/anh5.PNG'),
(96, 'mt_21', '/Máy tính/ASUS/Asus Vivobook X509UA-BR011TCore i3-7020U4GB1TBWIN10/anh1.PNG'),
(97, 'mt_21', '/Máy tính/ASUS/Asus Vivobook X509UA-BR011TCore i3-7020U4GB1TBWIN10/anh2.PNG'),
(98, 'mt_21', '/Máy tính/ASUS/Asus Vivobook X509UA-BR011TCore i3-7020U4GB1TBWIN10/anh3.PNG'),
(99, 'mt_21', '/Máy tính/ASUS/Asus Vivobook X509UA-BR011TCore i3-7020U4GB1TBWIN10/anh4.PNG'),
(100, 'mt_21', '/Máy tính/ASUS/Asus Vivobook X509UA-BR011TCore i3-7020U4GB1TBWIN10/anh5.PNG'),
(101, 'mt_22', '/Máy tính/ASUS/Asus Vivobook X509UA-BR236TCore i3-7020U4G512GB SSDWIN10/anh1.PNG'),
(102, 'mt_22', '/Máy tính/ASUS/Asus Vivobook X509UA-BR236TCore i3-7020U4G512GB SSDWIN10/anh2.PNG'),
(103, 'mt_22', '/Máy tính/ASUS/Asus Vivobook X509UA-BR236TCore i3-7020U4G512GB SSDWIN10/anh3.PNG'),
(104, 'mt_22', '/Máy tính/ASUS/Asus Vivobook X509UA-BR236TCore i3-7020U4G512GB SSDWIN10/anh4.PNG'),
(105, 'mt_22', '/Máy tính/ASUS/Asus Vivobook X509UA-BR236TCore i3-7020U4G512GB SSDWIN10/anh5.PNG'),
(106, 'mt_23', '/Máy tính/DELL/Dell Inspiron 14 N5490 i5 10210U8Gb512Gb14.0FHD2Gb_MX230Win 10/anh1.PNG'),
(107, 'mt_23', '/Máy tính/DELL/Dell Inspiron 14 N5490 i5 10210U8Gb512Gb14.0FHD2Gb_MX230Win 10/anh2.PNG'),
(108, 'mt_23', '/Máy tính/DELL/Dell Inspiron 14 N5490 i5 10210U8Gb512Gb14.0FHD2Gb_MX230Win 10/anh3.PNG'),
(109, 'mt_23', '/Máy tính/DELL/Dell Inspiron 14 N5490 i5 10210U8Gb512Gb14.0FHD2Gb_MX230Win 10/anh4.PNG'),
(110, 'mt_23', '/Máy tính/DELL/Dell Inspiron 14 N5490 i5 10210U8Gb512Gb14.0FHD2Gb_MX230Win 10/anh5.PNG'),
(111, 'mt_24', '/Máy tính/DELL/Dell Inspiron G7 N7591Core i7-9750HKJ2G41/anh1.PNG'),
(112, 'mt_24', '/Máy tính/DELL/Dell Inspiron G7 N7591Core i7-9750HKJ2G41/anh2.PNG'),
(113, 'mt_24', '/Máy tính/DELL/Dell Inspiron G7 N7591Core i7-9750HKJ2G41/anh3.PNG'),
(114, 'mt_24', '/Máy tính/DELL/Dell Inspiron G7 N7591Core i7-9750HKJ2G41/anh4.PNG'),
(115, 'mt_25', '/Máy tính/DELL/Dell Inspiron N3481Core i3-7020U4Gb1Tb14HD3cellWin 10030CX2/anh1.PNG'),
(116, 'mt_25', '/Máy tính/DELL/Dell Inspiron N3481Core i3-7020U4Gb1Tb14HD3cellWin 10030CX2/anh2.PNG'),
(117, 'mt_25', '/Máy tính/DELL/Dell Inspiron N3481Core i3-7020U4Gb1Tb14HD3cellWin 10030CX2/anh3.PNG'),
(118, 'mt_25', '/Máy tính/DELL/Dell Inspiron N3481Core i3-7020U4Gb1Tb14HD3cellWin 10030CX2/anh4.PNG'),
(119, 'mt_25', '/Máy tính/DELL/Dell Inspiron N3481Core i3-7020U4Gb1Tb14HD3cellWin 10030CX2/anh5.PNG'),
(120, 'mt_26', '/Máy tính/DELL/Dell Inspiron N3493 i5 1035G18Gb256Gb14FHDWin 10/anh1.PNG'),
(121, 'mt_26', '/Máy tính/DELL/Dell Inspiron N3493 i5 1035G18Gb256Gb14FHDWin 10/anh2.PNG'),
(122, 'mt_26', '/Máy tính/DELL/Dell Inspiron N3493 i5 1035G18Gb256Gb14FHDWin 10/anh3.PNG'),
(123, 'mt_27', '/Máy tính/DELL/Dell Inspiron N3580Core i5-8265U70184569/anh1.PNG'),
(124, 'mt_27', '/Máy tính/DELL/Dell Inspiron N3580Core i5-8265U70184569/anh2.PNG'),
(125, 'mt_27', '/Máy tính/DELL/Dell Inspiron N3580Core i5-8265U70184569/anh3.PNG'),
(126, 'mt_27', '/Máy tính/DELL/Dell Inspiron N3580Core i5-8265U70184569/anh4.PNG'),
(127, 'mt_28', '/Máy tính/DELL/Dell Inspiron N3593 i5 1035G14Gb256GbNvidia MX230 2Gb15.6FHDWin 10/anh1.PNG'),
(128, 'mt_28', '/Máy tính/DELL/Dell Inspiron N3593 i5 1035G14Gb256GbNvidia MX230 2Gb15.6FHDWin 10/anh2.PNG'),
(129, 'mt_28', '/Máy tính/DELL/Dell Inspiron N3593 i5 1035G14Gb256GbNvidia MX230 2Gb15.6FHDWin 10/anh3.PNG'),
(130, 'mt_28', '/Máy tính/DELL/Dell Inspiron N3593 i5 1035G14Gb256GbNvidia MX230 2Gb15.6FHDWin 10/anh4.PNG'),
(131, 'mt_29', '/Máy tính/DELL/Dell Inspiron N3593 i7 1065G78GB512GB15.6FHDNVIDIA MX230 2GBWin 10/anh1.PNG'),
(132, 'mt_29', '/Máy tính/DELL/Dell Inspiron N3593 i7 1065G78GB512GB15.6FHDNVIDIA MX230 2GBWin 10/anh2.PNG'),
(133, 'mt_29', '/Máy tính/DELL/Dell Inspiron N3593 i7 1065G78GB512GB15.6FHDNVIDIA MX230 2GBWin 10/anh3.PNG'),
(134, 'mt_29', '/Máy tính/DELL/Dell Inspiron N3593 i7 1065G78GB512GB15.6FHDNVIDIA MX230 2GBWin 10/anh4.PNG'),
(135, 'mt_30', '/Máy tính/DELL/Dell Inspiron N5584Core i5-8265U4GBN5I5384W/anh1.PNG'),
(136, 'mt_30', '/Máy tính/DELL/Dell Inspiron N5584Core i5-8265U4GBN5I5384W/anh2.PNG'),
(137, 'mt_30', '/Máy tính/DELL/Dell Inspiron N5584Core i5-8265U4GBN5I5384W/anh3.PNG'),
(138, 'mt_30', '/Máy tính/DELL/Dell Inspiron N5584Core i5-8265U4GBN5I5384W/anh4.PNG'),
(139, 'mt_31', '/Máy tính/DELL/Dell Inspiron N5593 i3 1005G14Gb128Gb15.6FHDWin 10/anh1.PNG'),
(140, 'mt_31', '/Máy tính/DELL/Dell Inspiron N5593 i3 1005G14Gb128Gb15.6FHDWin 10/anh2.PNG'),
(141, 'mt_31', '/Máy tính/DELL/Dell Inspiron N5593 i3 1005G14Gb128Gb15.6FHDWin 10/anh3.PNG'),
(142, 'mt_31', '/Máy tính/DELL/Dell Inspiron N5593 i3 1005G14Gb128Gb15.6FHDWin 10/anh4.PNG'),
(143, 'mt_31', '/Máy tính/DELL/Dell Inspiron N5593 i3 1005G14Gb128Gb15.6FHDWin 10/anh5.PNG'),
(144, 'mt_32', '/Máy tính/DELL/Dell Vostro V3481Core i3-7020U4Gb1Tb14.0HDWin 10Đen70187645/anh1.PNG'),
(145, 'mt_32', '/Máy tính/DELL/Dell Vostro V3481Core i3-7020U4Gb1Tb14.0HDWin 10Đen70187645/anh2.PNG'),
(146, 'mt_32', '/Máy tính/DELL/Dell Vostro V3481Core i3-7020U4Gb1Tb14.0HDWin 10Đen70187645/anh3.PNG'),
(147, 'mt_32', '/Máy tính/DELL/Dell Vostro V3481Core i3-7020U4Gb1Tb14.0HDWin 10Đen70187645/anh4.PNG'),
(148, 'mt_32', '/Máy tính/DELL/Dell Vostro V3481Core i3-7020U4Gb1Tb14.0HDWin 10Đen70187645/anh5.PNG'),
(149, 'mt_33', '/Máy tính/DELL/Dell Vostro V3580ICore i5-8265UP75F010V80I/anh1.PNG'),
(150, 'mt_33', '/Máy tính/DELL/Dell Vostro V3580ICore i5-8265UP75F010V80I/anh2.PNG'),
(151, 'mt_33', '/Máy tính/DELL/Dell Vostro V3580ICore i5-8265UP75F010V80I/anh3.PNG'),
(152, 'mt_33', '/Máy tính/DELL/Dell Vostro V3580ICore i5-8265UP75F010V80I/anh4.PNG'),
(153, 'mt_34', '/Máy tính/DELL/Dell Vostro V3590 i3-10110U4GB256GB15.6FHDWin 10/anh1.PNG'),
(154, 'mt_34', '/Máy tính/DELL/Dell Vostro V3590 i3-10110U4GB256GB15.6FHDWin 10/anh2.PNG'),
(155, 'mt_34', '/Máy tính/DELL/Dell Vostro V3590 i3-10110U4GB256GB15.6FHDWin 10/anh3.PNG'),
(156, 'mt_34', '/Máy tính/DELL/Dell Vostro V3590 i3-10110U4GB256GB15.6FHDWin 10/anh4.PNG'),
(157, 'mt_35', '/Máy tính/DELL/Dell Vostro V5590 i5 10210U8Gb256Gb15.6FHDWin 10/anh1.PNG'),
(158, 'mt_35', '/Máy tính/DELL/Dell Vostro V5590 i5 10210U8Gb256Gb15.6FHDWin 10/anh2.PNG'),
(159, 'mt_35', '/Máy tính/DELL/Dell Vostro V5590 i5 10210U8Gb256Gb15.6FHDWin 10/anh3.PNG'),
(160, 'mt_35', '/Máy tính/DELL/Dell Vostro V5590 i5 10210U8Gb256Gb15.6FHDWin 10/anh4.PNG'),
(161, 'mt_35', '/Máy tính/DELL/Dell Vostro V5590 i5 10210U8Gb256Gb15.6FHDWin 10/anh5.PNG'),
(162, 'mt_36', '/Máy tính/HP/HP 14s-dk0117AU R3 3200U4GB256GB SSDWIN10/anh1.PNG'),
(163, 'mt_36', '/Máy tính/HP/HP 14s-dk0117AU R3 3200U4GB256GB SSDWIN10/anh2.PNG'),
(164, 'mt_36', '/Máy tính/HP/HP 14s-dk0117AU R3 3200U4GB256GB SSDWIN10/anh3.PNG'),
(165, 'mt_36', '/Máy tính/HP/HP 14s-dk0117AU R3 3200U4GB256GB SSDWIN10/anh4.PNG'),
(166, 'mt_37', '/Máy tính/HP/HP 15-da0037TXi3 7020U/anh1.PNG'),
(167, 'mt_37', '/Máy tính/HP/HP 15-da0037TXi3 7020U/anh2.PNG'),
(168, 'mt_37', '/Máy tính/HP/HP 15-da0037TXi3 7020U/anh3.PNG'),
(169, 'mt_37', '/Máy tính/HP/HP 15-da0037TXi3 7020U/anh4.PNG'),
(170, 'mt_38', '/Máy tính/HP/HP 15s-du1040TX i7-10510U8GB512GB SSD2GB MX130WIN10/anh1.PNG'),
(171, 'mt_38', '/Máy tính/HP/HP 15s-du1040TX i7-10510U8GB512GB SSD2GB MX130WIN10/anh2.PNG'),
(172, 'mt_38', '/Máy tính/HP/HP 15s-du1040TX i7-10510U8GB512GB SSD2GB MX130WIN10/anh3.PNG'),
(173, 'mt_38', '/Máy tính/HP/HP 15s-du1040TX i7-10510U8GB512GB SSD2GB MX130WIN10/anh4.PNG'),
(174, 'mt_39', '/Máy tính/HP/HP 15s-du2049TX i3 1005G14GB256GB SSDMX130 2GBWIN10/anh1.PNG'),
(175, 'mt_39', '/Máy tính/HP/HP 15s-du2049TX i3 1005G14GB256GB SSDMX130 2GBWIN10/anh2.PNG'),
(176, 'mt_39', '/Máy tính/HP/HP 15s-du2049TX i3 1005G14GB256GB SSDMX130 2GBWIN10/anh3.PNG'),
(177, 'mt_39', '/Máy tính/HP/HP 15s-du2049TX i3 1005G14GB256GB SSDMX130 2GBWIN10/anh4.PNG'),
(178, 'mt_39', '/Máy tính/HP/HP 15s-du2049TX i3 1005G14GB256GB SSDMX130 2GBWIN10/anh5.PNG'),
(179, 'mt_40', '/Máy tính/HP/HP ENVY X360-AR0071AUR5-3500U8GB256G SSDWIN10/anh1.PNG'),
(180, 'mt_40', '/Máy tính/HP/HP ENVY X360-AR0071AUR5-3500U8GB256G SSDWIN10/anh2.PNG'),
(181, 'mt_40', '/Máy tính/HP/HP ENVY X360-AR0071AUR5-3500U8GB256G SSDWIN10/anh3.PNG'),
(182, 'mt_40', '/Máy tính/HP/HP ENVY X360-AR0071AUR5-3500U8GB256G SSDWIN10/anh4.PNG'),
(183, 'mt_40', '/Máy tính/HP/HP ENVY X360-AR0071AUR5-3500U8GB256G SSDWIN10/anh5.PNG'),
(184, 'mt_41', '/Máy tính/HP/HP Pavilion 14-ce2041TUCore i5-8265U4GB1TBWIN10/anh1.PNG'),
(185, 'mt_41', '/Máy tính/HP/HP Pavilion 14-ce2041TUCore i5-8265U4GB1TBWIN10/anh2.PNG'),
(186, 'mt_41', '/Máy tính/HP/HP Pavilion 14-ce2041TUCore i5-8265U4GB1TBWIN10/anh3.PNG'),
(187, 'mt_41', '/Máy tính/HP/HP Pavilion 14-ce2041TUCore i5-8265U4GB1TBWIN10/anh4.PNG'),
(188, 'mt_42', '/Máy tính/HP/HP Pavilion 15-cs2056TXi5-8265U4GB1TBMX130 2GBWIN10/anh1.PNG'),
(189, 'mt_42', '/Máy tính/HP/HP Pavilion 15-cs2056TXi5-8265U4GB1TBMX130 2GBWIN10/anh2.PNG'),
(190, 'mt_42', '/Máy tính/HP/HP Pavilion 15-cs2056TXi5-8265U4GB1TBMX130 2GBWIN10/anh3.PNG'),
(191, 'mt_42', '/Máy tính/HP/HP Pavilion 15-cs2056TXi5-8265U4GB1TBMX130 2GBWIN10/anh4.PNG'),
(192, 'mt_42', '/Máy tính/HP/HP Pavilion 15-cs2056TXi5-8265U4GB1TBMX130 2GBWIN10/anh5.PNG'),
(193, 'mt_43', '/Máy tính/HP/HP Pavilion 15-cs3060TXi5-1035G18GB512GSSD2GB MX250WIN10/anh1.PNG'),
(194, 'mt_43', '/Máy tính/HP/HP Pavilion 15-cs3060TXi5-1035G18GB512GSSD2GB MX250WIN10/anh2.PNG'),
(195, 'mt_43', '/Máy tính/HP/HP Pavilion 15-cs3060TXi5-1035G18GB512GSSD2GB MX250WIN10/anh3.PNG'),
(196, 'mt_43', '/Máy tính/HP/HP Pavilion 15-cs3060TXi5-1035G18GB512GSSD2GB MX250WIN10/anh4.PNG'),
(197, 'mt_43', '/Máy tính/HP/HP Pavilion 15-cs3060TXi5-1035G18GB512GSSD2GB MX250WIN10/anh5.PNG'),
(198, 'mt_44', '/Máy tính/LENOVO/Lenovo Ideadpad S340-15IWLCore I3 8145U4GB256G SSDWIN10/anh1.PNG'),
(199, 'mt_44', '/Máy tính/LENOVO/Lenovo Ideadpad S340-15IWLCore I3 8145U4GB256G SSDWIN10/anh2.PNG'),
(200, 'mt_44', '/Máy tính/LENOVO/Lenovo Ideadpad S340-15IWLCore I3 8145U4GB256G SSDWIN10/anh3.PNG'),
(201, 'mt_44', '/Máy tính/LENOVO/Lenovo Ideadpad S340-15IWLCore I3 8145U4GB256G SSDWIN10/anh4.PNG'),
(202, 'mt_44', '/Máy tính/LENOVO/Lenovo Ideadpad S340-15IWLCore I3 8145U4GB256G SSDWIN10/anh5.PNG'),
(203, 'mt_45', '/Máy tính/LENOVO/Lenovo Ideapad C340-14API R7 3700U8GB512GB SSD14.0FHD TouchWIN10/anh1.PNG'),
(204, 'mt_45', '/Máy tính/LENOVO/Lenovo Ideapad C340-14API R7 3700U8GB512GB SSD14.0FHD TouchWIN10/anh2.PNG'),
(205, 'mt_45', '/Máy tính/LENOVO/Lenovo Ideapad C340-14API R7 3700U8GB512GB SSD14.0FHD TouchWIN10/anh3.PNG'),
(206, 'mt_45', '/Máy tính/LENOVO/Lenovo Ideapad C340-14API R7 3700U8GB512GB SSD14.0FHD TouchWIN10/anh4.PNG'),
(207, 'mt_46', '/Máy tính/LENOVO/Lenovo IdeaPad Flex 5 14ARE05 R5 4500U8GB512GB14.0FHD TouchPenWin 10/anh1.PNG'),
(208, 'mt_46', '/Máy tính/LENOVO/Lenovo IdeaPad Flex 5 14ARE05 R5 4500U8GB512GB14.0FHD TouchPenWin 10/anh2.PNG'),
(209, 'mt_46', '/Máy tính/LENOVO/Lenovo IdeaPad Flex 5 14ARE05 R5 4500U8GB512GB14.0FHD TouchPenWin 10/anh3.PNG'),
(210, 'mt_46', '/Máy tính/LENOVO/Lenovo IdeaPad Flex 5 14ARE05 R5 4500U8GB512GB14.0FHD TouchPenWin 10/anh4.PNG'),
(211, 'mt_46', '/Máy tính/LENOVO/Lenovo IdeaPad Flex 5 14ARE05 R5 4500U8GB512GB14.0FHD TouchPenWin 10/anh5.PNG'),
(212, 'mt_46', '/Máy tính/LENOVO/Lenovo IdeaPad Flex 5 14ARE05 R5 4500U8GB512GB14.0FHD TouchPenWin 10/anh6.PNG'),
(213, 'mt_47', '/Máy tính/LENOVO/Lenovo Ideapad L340-15IRH i7 9750HF8GB512GB SSD3GB GTX1050WIN10/anh1.PNG'),
(214, 'mt_47', '/Máy tính/LENOVO/Lenovo Ideapad L340-15IRH i7 9750HF8GB512GB SSD3GB GTX1050WIN10/anh2.PNG'),
(215, 'mt_47', '/Máy tính/LENOVO/Lenovo Ideapad L340-15IRH i7 9750HF8GB512GB SSD3GB GTX1050WIN10/anh3.PNG'),
(216, 'mt_47', '/Máy tính/LENOVO/Lenovo Ideapad L340-15IRH i7 9750HF8GB512GB SSD3GB GTX1050WIN10/anh4.PNG'),
(217, 'mt_48', '/Máy tính/LENOVO/Lenovo Ideapad S145-15API R5 3500U4GB256GB SSDWIN10/anh1.PNG'),
(218, 'mt_48', '/Máy tính/LENOVO/Lenovo Ideapad S145-15API R5 3500U4GB256GB SSDWIN10/anh2.PNG'),
(219, 'mt_48', '/Máy tính/LENOVO/Lenovo Ideapad S145-15API R5 3500U4GB256GB SSDWIN10/anh3.PNG'),
(220, 'mt_49', '/Máy tính/LENOVO/Lenovo IdeaPad S145-15IIL i5 1035G18GB512GB SSDWIN10/anh1.PNG'),
(221, 'mt_49', '/Máy tính/LENOVO/Lenovo IdeaPad S145-15IIL i5 1035G18GB512GB SSDWIN10/anh2.PNG'),
(222, 'mt_49', '/Máy tính/LENOVO/Lenovo IdeaPad S145-15IIL i5 1035G18GB512GB SSDWIN10/anh3.PNG'),
(223, 'mt_50', '/Máy tính/LENOVO/Lenovo Ideapad S145-15IKB i3 8130U4GB256GB SSDWIN10/anh1.PNG'),
(224, 'mt_50', '/Máy tính/LENOVO/Lenovo Ideapad S145-15IKB i3 8130U4GB256GB SSDWIN10/anh2.PNG'),
(225, 'mt_50', '/Máy tính/LENOVO/Lenovo Ideapad S145-15IKB i3 8130U4GB256GB SSDWIN10/anh3.PNG'),
(226, 'mt_51', '/Máy tính/LENOVO/Lenovo Ideapad S340-15IWLi5-8265U4G256GBMX230 2GBWIN10/anh1.PNG'),
(227, 'mt_51', '/Máy tính/LENOVO/Lenovo Ideapad S340-15IWLi5-8265U4G256GBMX230 2GBWIN10/anh2.PNG'),
(228, 'mt_51', '/Máy tính/LENOVO/Lenovo Ideapad S340-15IWLi5-8265U4G256GBMX230 2GBWIN10/anh3.PNG'),
(229, 'mt_51', '/Máy tính/LENOVO/Lenovo Ideapad S340-15IWLi5-8265U4G256GBMX230 2GBWIN10/anh4.PNG'),
(230, 'mt_52', '/Máy tính/LENOVO/Lenovo Ideapad S340R5-3500U4GB256GSSDWIN10/anh1.PNG'),
(231, 'mt_52', '/Máy tính/LENOVO/Lenovo Ideapad S340R5-3500U4GB256GSSDWIN10/anh2.PNG'),
(232, 'mt_52', '/Máy tính/LENOVO/Lenovo Ideapad S340R5-3500U4GB256GSSDWIN10/anh3.PNG'),
(233, 'mt_52', '/Máy tính/LENOVO/Lenovo Ideapad S340R5-3500U4GB256GSSDWIN10/anh4.PNG'),
(234, 'mt_52', '/Máy tính/LENOVO/Lenovo Ideapad S340R5-3500U4GB256GSSDWIN10/anh5.PNG'),
(235, 'mt_53', '/Máy tính/LENOVO/Lenovo IdeaPad S540-13API R5 3550H8GB512GB SSDWIN10/anh1.PNG'),
(236, 'mt_53', '/Máy tính/LENOVO/Lenovo IdeaPad S540-13API R5 3550H8GB512GB SSDWIN10/anh2.PNG'),
(237, 'mt_53', '/Máy tính/LENOVO/Lenovo IdeaPad S540-13API R5 3550H8GB512GB SSDWIN10/anh3.PNG'),
(238, 'mt_53', '/Máy tính/LENOVO/Lenovo IdeaPad S540-13API R5 3550H8GB512GB SSDWIN10/anh4.PNG'),
(239, 'mt_53', '/Máy tính/LENOVO/Lenovo IdeaPad S540-13API R5 3550H8GB512GB SSDWIN10/anh5.PNG'),
(240, 'mt_54', '/Máy tính/LENOVO/Lenovo ideapad Slim 3-14IIL05 i3-1005G18GB512GB SSDWIN10/anh1.PNG'),
(241, 'mt_54', '/Máy tính/LENOVO/Lenovo ideapad Slim 3-14IIL05 i3-1005G18GB512GB SSDWIN10/anh2.PNG'),
(242, 'mt_54', '/Máy tính/LENOVO/Lenovo ideapad Slim 3-14IIL05 i3-1005G18GB512GB SSDWIN10/anh3.PNG'),
(243, 'mt_54', '/Máy tính/LENOVO/Lenovo ideapad Slim 3-14IIL05 i3-1005G18GB512GB SSDWIN10/anh4.PNG'),
(244, 'mt_54', '/Máy tính/LENOVO/Lenovo ideapad Slim 3-14IIL05 i3-1005G18GB512GB SSDWIN10/anh5.PNG'),
(245, 'mt_55', '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R5 4600H8GB512GB4GB GTX1650WIN10/anh1.PNG'),
(246, 'mt_55', '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R5 4600H8GB512GB4GB GTX1650WIN10/anh2.PNG'),
(247, 'mt_55', '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R5 4600H8GB512GB4GB GTX1650WIN10/anh3.PNG'),
(248, 'mt_55', '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R5 4600H8GB512GB4GB GTX1650WIN10/anh4.PNG'),
(249, 'mt_55', '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R5 4600H8GB512GB4GB GTX1650WIN10/anh5.PNG'),
(250, 'mt_56', '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R7 4800H8GB512GB SSD4GB GTX1650WIN10/anh1.PNG'),
(251, 'mt_56', '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R7 4800H8GB512GB SSD4GB GTX1650WIN10/anh2.PNG'),
(252, 'mt_56', '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R7 4800H8GB512GB SSD4GB GTX1650WIN10/anh3.PNG'),
(253, 'mt_56', '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R7 4800H8GB512GB SSD4GB GTX1650WIN10/anh4.PNG'),
(254, 'mt_56', '/Máy tính/LENOVO/Lenovo Legion 5-15ARH05 R7 4800H8GB512GB SSD4GB GTX1650WIN10/anh5.PNG'),
(255, 'mt_57', '/Máy tính/LENOVO/Lenovo ThinkBook 14 i5 10210U8GB512GB SSDWIN10/anh1.PNG'),
(256, 'mt_57', '/Máy tính/LENOVO/Lenovo ThinkBook 14 i5 10210U8GB512GB SSDWIN10/anh2.PNG'),
(257, 'mt_57', '/Máy tính/LENOVO/Lenovo ThinkBook 14 i5 10210U8GB512GB SSDWIN10/anh3.PNG'),
(258, 'mt_57', '/Máy tính/LENOVO/Lenovo ThinkBook 14 i5 10210U8GB512GB SSDWIN10/anh4.PNG'),
(259, 'mt_57', '/Máy tính/LENOVO/Lenovo ThinkBook 14 i5 10210U8GB512GB SSDWIN10/anh5.PNG'),
(260, 'mt_58', '/Máy tính/LENOVO/Lenovo ThinkPad E14 i5 10210U8GB512GB SSDWIN10/anh1.PNG'),
(261, 'mt_58', '/Máy tính/LENOVO/Lenovo ThinkPad E14 i5 10210U8GB512GB SSDWIN10/anh2.PNG'),
(262, 'mt_58', '/Máy tính/LENOVO/Lenovo ThinkPad E14 i5 10210U8GB512GB SSDWIN10/anh3.PNG'),
(263, 'mt_58', '/Máy tính/LENOVO/Lenovo ThinkPad E14 i5 10210U8GB512GB SSDWIN10/anh4.PNG'),
(264, 'mt_58', '/Máy tính/LENOVO/Lenovo ThinkPad E14 i5 10210U8GB512GB SSDWIN10/anh5.PNG'),
(266, 'mt_60', '/Máy tính/ACER/Acer The he 6 core i9/Đăng nhập.jpg'),
(267, 'mt_59', '/Máy tính/ACER/Acer The he 6 core i7/Đăng nhập.jpg'),
(268, 'mt_60', '/Máy tính/ACER/Acer The he 6 core i9/Đăng nhập.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanhoi`
--

CREATE TABLE `phanhoi` (
  `maphanhoi` int(11) NOT NULL,
  `mabinhluan` int(11) DEFAULT NULL,
  `makhachhang` int(11) DEFAULT NULL,
  `ngayphanhoi` date DEFAULT NULL,
  `noidung` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phanhoi`
--

INSERT INTO `phanhoi` (`maphanhoi`, `mabinhluan`, `makhachhang`, `ngayphanhoi`, `noidung`) VALUES
(1, 1, 1, '2020-12-22', 'Cảm ơn bạn đã phản hồi!!!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pin`
--

CREATE TABLE `pin` (
  `mapin` varchar(15) NOT NULL,
  `loaipin` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `cell` varchar(2) DEFAULT NULL,
  `thaoroi` bit(1) DEFAULT NULL,
  `powersupply` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `pin`
--

INSERT INTO `pin` (`mapin`, `loaipin`, `cell`, `thaoroi`, `powersupply`) VALUES
('pin_01', 'Lithium-ion', '2', b'0', NULL),
('pin_02', 'Lithium-ion, liền', '2', b'0', NULL),
('pin_03', 'Lithium-ion', '3', b'0', NULL),
('pin_04', 'Lithium-ion', '4', b'0', NULL),
('pin_05', 'Lithium-Polymer', '4', b'0', NULL),
('pin_07', 'Lithium-Polymer', '2', b'0', NULL),
('pin_08', 'Lithium-Polymer', NULL, b'0', NULL),
('pin_09', 'Lithium-ion', '3', b'0', NULL),
('pin_10', 'Lithium-ion, liền', '3', b'0', NULL),
('pin_11', 'Lithium-ion', '3', b'0', '65'),
('pin_12', 'Lithium-Polymer', '3', b'0', '65'),
('pin_13', 'Lithium-Polymer', '4', b'0', '65'),
('pin_14', 'Lithium-ion, liền', '3', b'0', '65'),
('pin_15', 'Lithium-ion', NULL, b'0', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pindienthoai`
--

CREATE TABLE `pindienthoai` (
  `mapin` varchar(25) NOT NULL,
  `dungluongpin` int(11) DEFAULT NULL,
  `loaipin` varchar(20) DEFAULT NULL,
  `congnghepin` varchar(40) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `pindienthoai`
--

INSERT INTO `pindienthoai` (`mapin`, `dungluongpin`, `loaipin`, `congnghepin`) VALUES
('pin_01', 3110, 'Lithium-ion', NULL),
('pin_02', 2815, 'Lithium-ion', NULL),
('pin_03', 2227, 'Lithium-ion', NULL),
('pin_05', 3687, 'Lithium polymer', NULL),
('pin_07', 4000, 'Lithium lion', NULL),
('pin_11', 5000, 'Lithium polymer', NULL),
('pin_16', 4300, 'Lithium-ion', 'Sạc siêu nhanh 25W, chia sẻ pin không dâ'),
('pin_21', 4020, 'Lithium Polymer', 'Sạc siêu nhanh 25W, chia sẻ pin không dâ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ram`
--

CREATE TABLE `ram` (
  `maram` varchar(15) NOT NULL,
  `dungluong` tinyint(4) DEFAULT NULL,
  `loairam` varchar(15) NOT NULL,
  `tocdoram` float DEFAULT NULL,
  `sokhecamroi` tinyint(4) DEFAULT NULL,
  `sokheramconlai` tinyint(4) DEFAULT NULL,
  `soramonboard` tinyint(4) DEFAULT NULL,
  `soramtoida` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ram`
--

INSERT INTO `ram` (`maram`, `dungluong`, `loairam`, `tocdoram`, `sokhecamroi`, `sokheramconlai`, `soramonboard`, `soramtoida`) VALUES
('ram_01', 4, 'DDR4', 2400, 2, 1, 0, 12),
('ram_02', 8, 'DDR4', 2400, 1, 0, 1, 12),
('ram_03', 4, 'DDR4', 2400, 2, 1, 1, 8),
('ram_04', 4, 'DDR4', 2400, 2, 1, 0, 8),
('ram_05', 8, 'DDR4', 2666, 2, 1, 0, 32),
('ram_06', 8, 'DDR4', 2400, 2, 0, 0, 32),
('ram_07', 8, 'DDR4', 2400, 2, 1, 0, 32),
('ram_08', 8, 'LPDDR4', 2666, 0, 0, 0, 8),
('ram_09', 8, 'DDR4', 2400, 0, 0, 0, 32),
('ram_10', 4, 'DDR4', 2133, 0, 0, 0, 0),
('ram_11', 4, 'DDR4', 2400, 1, 0, 1, 12),
('ram_12', 4, 'DDR4', 2400, 1, 1, 1, 12),
('ram_13', 4, 'DDR4', 2400, 0, 0, 0, 16),
('ram_14', 4, 'DDR4', 2400, 0, 0, 1, 20),
('ram_15', 4, 'DDR4', 2400, 1, 1, 1, 8),
('ram_16', 4, 'DDR4', 2400, 1, 0, 1, 8),
('ram_17', 4, 'DDR4', 2400, 1, 1, 0, 12),
('ram_18', 4, 'DDR4', 2400, 0, 0, 1, 12),
('ram_19', 8, 'DDR4', 2666, 0, 0, 0, 20),
('ram_20', 8, 'DDR4', 2666, 0, 0, 0, 32),
('ram_21', 4, 'DDR4', 2666, 0, 0, 0, 16),
('ram_22', 8, 'DDR4', 2666, 2, 1, 0, 16),
('ram_23', 4, 'DDR4', 2666, 2, 1, 0, 16),
('ram_24', 4, 'DDR4', 2400, 0, 0, 0, 32),
('ram_25', 4, 'DDR4', 2666, 1, 1, 0, 16),
('ram_26', 4, 'DDR4', 2400, 0, 1, 0, 16),
('ram_27', 4, 'DDR4', 2133, 2, 1, 0, 8),
('ram_28', 8, 'DDR4', 2400, 0, 0, 1, 8),
('ram_29', 4, 'DDR4', 2400, 1, 0, 0, 8),
('ram_30', 4, 'DDR4', 2666, 1, 1, 0, 32),
('ram_31', 8, 'DDR4', 2666, 1, 1, 0, 32),
('ram_32', 8, 'DDR4', 2400, 1, 0, 1, 32),
('ram_33', 8, 'DDR4', 3200, 0, 0, 1, 8),
('ram_34', 8, 'DDR4', 2400, 1, 0, 0, 16),
('ram_35', 4, 'DDR4', 2400, 1, 0, 0, 12),
('ram_36', 8, 'DDR4', 2666, 1, 0, 0, 12),
('ram_37', 4, 'DDR4', 2133, 1, 0, 1, 12),
('ram_38', 4, 'DDR4', 2400, 0, 0, 0, 12),
('ram_39', 8, 'DDR4', 2400, 0, 0, 0, 8),
('ram_40', 8, 'DDR4', 3200, 2, 0, 0, 16),
('ram_41', 8, 'DDR4', 3200, 2, 1, 0, 16),
('ram_42', 8, 'DDR4', 2666, 0, 0, 0, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ramdienthoai`
--

CREATE TABLE `ramdienthoai` (
  `maram` varchar(15) NOT NULL,
  `dungluongram` tinyint(4) DEFAULT NULL,
  `loairam` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ramdienthoai`
--

INSERT INTO `ramdienthoai` (`maram`, `dungluongram`, `loairam`) VALUES
('ram_01', 4, 'LPDDR4X'),
('ram_04', 6, 'LPDDR4X'),
('ram_06', 2, 'LPDDR4X'),
('ram_07', 3, 'LPDDR3'),
('ram_09', 3, 'LPDDR4X'),
('ram_10', 8, 'LPDDR4X'),
('ram_16', 8, 'LPDDR5'),
('ram_18', 12, 'LPDDR5');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id` int(11) NOT NULL,
  `hoten` varchar(25) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`id`, `hoten`) VALUES
(1, 'Thái sơn'),
(2, 'Phi hùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vaitro`
--

CREATE TABLE `vaitro` (
  `id_vaitro` int(11) NOT NULL,
  `tenvaitro` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vaitro`
--

INSERT INTO `vaitro` (`id_vaitro`, `tenvaitro`) VALUES
(1, 'ROLE_USER'),
(2, 'ROLE_ADMIN'),
(3, 'ROLE_SELLER');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banphim`
--
ALTER TABLE `banphim`
  ADD PRIMARY KEY (`mabanphim`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`mabinhluan`);

--
-- Chỉ mục cho bảng `bonho`
--
ALTER TABLE `bonho`
  ADD PRIMARY KEY (`mabonho`);

--
-- Chỉ mục cho bảng `bonhodienthoai`
--
ALTER TABLE `bonhodienthoai`
  ADD PRIMARY KEY (`mabonho`);

--
-- Chỉ mục cho bảng `boxuly`
--
ALTER TABLE `boxuly`
  ADD PRIMARY KEY (`macpu`);

--
-- Chỉ mục cho bảng `boxulydienthoai`
--
ALTER TABLE `boxulydienthoai`
  ADD PRIMARY KEY (`macpu`);

--
-- Chỉ mục cho bảng `cameradienthoai`
--
ALTER TABLE `cameradienthoai`
  ADD PRIMARY KEY (`macamera`);

--
-- Chỉ mục cho bảng `chatlieu`
--
ALTER TABLE `chatlieu`
  ADD PRIMARY KEY (`machatlieu`);

--
-- Chỉ mục cho bảng `chatlieudienthoai`
--
ALTER TABLE `chatlieudienthoai`
  ADD PRIMARY KEY (`machatlieu`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`machitiethoadon`);

--
-- Chỉ mục cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`madienthoai`);

--
-- Chỉ mục cho bảng `dienthoaichitiet`
--
ALTER TABLE `dienthoaichitiet`
  ADD PRIMARY KEY (`madienthoai`);

--
-- Chỉ mục cho bảng `dienthoaihinhanh`
--
ALTER TABLE `dienthoaihinhanh`
  ADD PRIMARY KEY (`stt`);

--
-- Chỉ mục cho bảng `dohoa`
--
ALTER TABLE `dohoa`
  ADD PRIMARY KEY (`madohoa`);

--
-- Chỉ mục cho bảng `dohoadienthoai`
--
ALTER TABLE `dohoadienthoai`
  ADD PRIMARY KEY (`madohoa`);

--
-- Chỉ mục cho bảng `giaotieketnoidienthoai`
--
ALTER TABLE `giaotieketnoidienthoai`
  ADD PRIMARY KEY (`magiaotiep`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`idgio`);

--
-- Chỉ mục cho bảng `hedieuhanh`
--
ALTER TABLE `hedieuhanh`
  ADD PRIMARY KEY (`phienbanhedieuhanh`);

--
-- Chỉ mục cho bảng `hedieuhanhdienthoai`
--
ALTER TABLE `hedieuhanhdienthoai`
  ADD PRIMARY KEY (`phienbanhedieuhanh`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`);

--
-- Chỉ mục cho bảng `hopthu`
--
ALTER TABLE `hopthu`
  ADD PRIMARY KEY (`idhopthu`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`),
  ADD UNIQUE KEY `sodienthoai` (`sodienthoai`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `khachhang_vaitro`
--
ALTER TABLE `khachhang_vaitro`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loa`
--
ALTER TABLE `loa`
  ADD PRIMARY KEY (`maloa`);

--
-- Chỉ mục cho bảng `manhinh`
--
ALTER TABLE `manhinh`
  ADD PRIMARY KEY (`mamanhinh`);

--
-- Chỉ mục cho bảng `manhinhdienthoai`
--
ALTER TABLE `manhinhdienthoai`
  ADD PRIMARY KEY (`mamanhinh`);

--
-- Chỉ mục cho bảng `maytinh`
--
ALTER TABLE `maytinh`
  ADD PRIMARY KEY (`mamaytinh`);

--
-- Chỉ mục cho bảng `maytinhchitiet`
--
ALTER TABLE `maytinhchitiet`
  ADD PRIMARY KEY (`mamaytinh`);

--
-- Chỉ mục cho bảng `maytinhhinhanh`
--
ALTER TABLE `maytinhhinhanh`
  ADD PRIMARY KEY (`stt`);

--
-- Chỉ mục cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  ADD PRIMARY KEY (`maphanhoi`);

--
-- Chỉ mục cho bảng `pin`
--
ALTER TABLE `pin`
  ADD PRIMARY KEY (`mapin`);

--
-- Chỉ mục cho bảng `pindienthoai`
--
ALTER TABLE `pindienthoai`
  ADD PRIMARY KEY (`mapin`);

--
-- Chỉ mục cho bảng `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`maram`);

--
-- Chỉ mục cho bảng `ramdienthoai`
--
ALTER TABLE `ramdienthoai`
  ADD PRIMARY KEY (`maram`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `vaitro`
--
ALTER TABLE `vaitro`
  ADD PRIMARY KEY (`id_vaitro`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `mabinhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `machitiethoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `dienthoaihinhanh`
--
ALTER TABLE `dienthoaihinhanh`
  MODIFY `stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `giohang`
--
ALTER TABLE `giohang`
  MODIFY `idgio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hopthu`
--
ALTER TABLE `hopthu`
  MODIFY `idhopthu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `khachhang_vaitro`
--
ALTER TABLE `khachhang_vaitro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `maytinhhinhanh`
--
ALTER TABLE `maytinhhinhanh`
  MODIFY `stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT cho bảng `phanhoi`
--
ALTER TABLE `phanhoi`
  MODIFY `maphanhoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `vaitro`
--
ALTER TABLE `vaitro`
  MODIFY `id_vaitro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

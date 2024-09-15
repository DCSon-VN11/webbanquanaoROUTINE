-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 02, 2024 lúc 08:00 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(255) NOT NULL,
  `cate_pr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`cate_id`, `cate_name`, `cate_pr`) VALUES
(1, 'Áo Nam', 0),
(2, 'Áo Thun', 1),
(3, 'Áo Polo', 1),
(4, 'Áo Sơ Mi', 1),
(5, 'Áo Khoác', 1),
(6, 'Vest', 1),
(7, 'Áo Len', 1),
(8, 'Quần Nam', 0),
(9, 'Quần Jeans Nam', 8),
(10, 'Quần Kaki Nam', 8),
(11, 'Quần Vải Nam', 8),
(12, 'Quần Short Nam', 8),
(13, 'Quần Lót Nam', 8),
(14, 'Giày / Dép Nam', 0),
(15, 'Áo Nữ', 0),
(16, 'Quần Nữ', 0),
(17, 'Đầm', 0),
(18, 'Chân Váy', 0),
(19, 'Phụ Kiện', 0),
(20, 'Thắt Lưng', 19),
(21, 'Vớ', 19),
(22, 'Mũ Thời Trang', 19),
(23, 'Ví', 19),
(24, 'Túi / Balo', 19),
(25, 'Mắt Kính', 19);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `cmt_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `cmt_content` text NOT NULL,
  `cmt_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`cmt_id`, `user_id`, `pro_id`, `cmt_content`, `cmt_date`) VALUES
(48, 42, 3, 'áo đẹp đúng form, chất liệu vải tốt, mặc rất thoải mái....', '2024-06-25 22:14:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `google_users`
--

CREATE TABLE `google_users` (
  `google_id` decimal(21,0) NOT NULL,
  `google_name` varchar(60) NOT NULL,
  `google_email` varchar(60) NOT NULL,
  `google_link` varchar(60) NOT NULL,
  `google_picture_link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_price` float NOT NULL,
  `order_date` date NOT NULL,
  `order_stt` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `order_price`, `order_date`, `order_stt`) VALUES
(68, 42, 1480000, '2024-06-10', 'Giao hàng thành công'),
(69, 42, 2070000, '2024-06-10', 'Đang chờ xử lý'),
(70, 43, 720000, '2024-06-10', 'Đang chờ xử lý'),
(71, 43, 240000, '2024-06-15', 'Giao hàng thành công'),
(72, 43, 350000, '2024-06-25', 'Giao hàng thành công'),
(73, 43, 350000, '2024-06-25', 'Đang chờ xử lý'),
(74, 44, 720000, '2024-06-26', 'Đang chờ xử lý');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `orderdt_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `size` varchar(4) NOT NULL,
  `orderdt_qty` int(11) NOT NULL,
  `orderdt_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`orderdt_id`, `order_id`, `pro_id`, `size`, `orderdt_qty`, `orderdt_price`) VALUES
(53, 44, 58, '2', 1, 200000),
(70, 60, 58, '3', 1, 200000),
(71, 61, 41, 'L', 1, 420000),
(72, 62, 54, 'L', 1, 630000),
(73, 63, 4, 'M', 1, 240000),
(74, 64, 23, '30', 1, 470000),
(75, 65, 60, '4', 4, 180000),
(76, 65, 21, '29', 1, 480000),
(77, 66, 21, '30', 14, 480000),
(79, 68, 18, 'L', 1, 200000),
(80, 68, 26, 'M', 1, 480000),
(81, 68, 40, '41', 1, 800000),
(82, 69, 11, 'M', 1, 350000),
(83, 69, 23, '30', 1, 470000),
(84, 69, 36, '41', 1, 1250000),
(85, 70, 3, 'L', 1, 240000),
(86, 70, 20, '30', 1, 480000),
(87, 71, 4, 'M', 1, 240000),
(88, 72, 10, 'XXL', 1, 350000),
(89, 73, 15, 'S', 1, 350000),
(90, 74, 3, 'XL', 1, 240000),
(91, 74, 21, '28', 1, 480000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `pro_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `pro_name` varchar(255) NOT NULL,
  `pro_image` varchar(255) NOT NULL,
  `pro_price` float NOT NULL,
  `pro_sale` float NOT NULL,
  `pro_intro` text NOT NULL,
  `pro_view` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`pro_id`, `cate_id`, `pro_name`, `pro_image`, `pro_price`, `pro_sale`, `pro_intro`, `pro_view`) VALUES
(3, 2, 'Áo thun cotton form fitted - 10S20TSH045', 'aothun_3.png', 270000, 240000, '<p>Chất liệu: 100% Cotton<br />\r\nĐặc t&iacute;nh: Cảm gi&aacute;c mềm mại, thoải m&aacute;i, c&oacute; độ thấm h&uacute;t tốt, chống nhăn cao v&agrave; tr&aacute;nh b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n', 19),
(4, 2, 'Áo thun ngắn tay form fitted - 10F19TSH001', 'aothun_4.png', 260000, 240000, '<p>Chất liệu: 57% cotton, 38% Modal, 5% Spandex<br />\r\nĐặc t&iacute;nh: Cảm gi&aacute;c mềm mại, thoải m&aacute;i, c&oacute; độ thấm h&uacute;t tốt, chống nhăn cao v&agrave; tr&aacute;nh b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n', 72),
(5, 2, 'Áo thun kẻ sọc ngang form regular - 10S20TSH019', 'aothun_5.png', 350000, 120000, '<p>Chất liệu: 100% cotton.<br />\r\nĐặc t&iacute;nh:&nbsp;Mềm mại, co gi&atilde;n tốt, c&oacute; độ thấm h&uacute;t mồ h&ocirc;i v&agrave; h&uacute;t ẩm cao, tho&aacute;ng m&aacute;t.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy, ủi ở nhiệt độ b&igrave;nh thường.</p>\r\n', 32),
(6, 2, 'Áo Thun Nam Kẻ Sọc Ngang Form Regular 10S20TSH018', 'aothun_6.png', 260000, 240000, '<p>Chất liệu: 100% cotton.<br />\r\nĐặc t&iacute;nh:&nbsp;Mềm mại, co gi&atilde;n tốt, c&oacute; độ thấm h&uacute;t mồ h&ocirc;i v&agrave; h&uacute;t ẩm cao, tho&aacute;ng m&aacute;t.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy, ủi ở nhiệt độ b&igrave;nh thường.</p>\r\n', 6),
(9, 2, 'Áo Thun Nam Tay Ngắn Sọc Dọc Form Regular 10S20TSH022', 'aothun_7.png', 320000, 290000, '<p>Chất liệu: 57% cotton, 5% Spandex,&nbsp;38% polyester.<br />\r\nĐặc t&iacute;nh: Cảm gi&aacute;c mềm mại, thoải m&aacute;i, c&oacute; độ thấm h&uacute;t tốt, chống nhăn cao v&agrave; tr&aacute;nh b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n', 7),
(10, 3, 'Áo polo, cổ áo phối màu form fitted - 10F20POL007', 'aopolo_1.png', 370000, 350000, '<p>Chất liệu: 100% cotton<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 13),
(11, 3, 'Áo thun polo form fitted - 10F20POL003', 'aopolo_2.png', 350000, 0, '<p>Chất liệu: 100% cotton.<br />\r\nĐặc t&iacute;nh: Mềm mại, độ bền cao, h&uacute;t ẩm v&agrave; h&uacute;t mồ h&ocirc;i tốt, hạ nhiệt v&agrave; l&agrave;m m&aacute;t cơ thể.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n', 22),
(12, 3, 'Áo polo phối màu form fitted - 10F20POL005', 'aopolo_3.png', 400000, 380000, '<p>Chất liệu: 60% cotton, 40% polyester<br />\r\nĐặc t&iacute;nh: Cảm gi&aacute;c mềm mại, thoải m&aacute;i, c&oacute; độ thấm h&uacute;t tốt.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n', 4),
(14, 3, 'Áo polo contrast sleeves form fitted - 10F20POL009', 'aopolo_4.png', 400000, 380000, '<p>Chất liệu: 60% cotton, 40% polyester<br />\r\nĐặc t&iacute;nh: Cảm gi&aacute;c mềm mại, thoải m&aacute;i, c&oacute; độ thấm h&uacute;t tốt.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n', 133),
(15, 3, 'Áo polo EMB form fitted - 10F20POL006', 'aopolo_5.png', 350000, 0, '<p>Chất liệu: 60% cotton, 40% polyester.<br />\r\nĐặc t&iacute;nh: Cảm gi&aacute;c mềm mại, thoải m&aacute;i, c&oacute; độ thấm h&uacute;t tốt, chống nhăn cao v&agrave; tr&aacute;nh b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp</p>\r\n', 64),
(16, 2, 'Áo thun cotton ngắn tay form fitted - 10S20TSH042', 'aothun_2.png', 220000, 0, '<p>Chất liệu: 100% Cotton<br />\r\nĐặc t&iacute;nh: Cảm gi&aacute;c mềm mại, thoải m&aacute;i, c&oacute; độ thấm h&uacute;t tốt, chống nhăn cao v&agrave; tr&aacute;nh b&aacute;m bụi<br />\r\n.Hướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n', 0),
(17, 2, 'Áo thun tay ngắn sọc đứng form regular - 10S20TSH021', 'ao_thun1.jpg', 250000, 200000, '<p>Chất liệu: 100% Cotton<br />\r\nĐặc t&iacute;nh: Cảm gi&aacute;c mềm mại, thoải m&aacute;i, c&oacute; độ thấm h&uacute;t tốt, chống nhăn cao v&agrave; tr&aacute;nh b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n', 6),
(18, 3, 'Áo Thun Polo Ngắn Tay Nam Form Fitted 10S20POL007', 'aopolo_6.png', 230000, 200000, '<p>Chất liệu: 96% cotton, 4% Spandex<br />\r\nĐặc t&iacute;nh: Cảm gi&aacute;c mềm mại, thoải m&aacute;i, c&oacute; độ thấm h&uacute;t tốt, chống nhăn cao v&agrave; tr&aacute;nh b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n', 9),
(19, 3, 'Áo polo phối màu - 10S20POL008', 'aopolo_7.png', 350000, 0, '<p>Chất liệu: 96% cotton, 4% Spandex<br />\r\nĐặc t&iacute;nh: Cảm gi&aacute;c mềm mại, thoải m&aacute;i, c&oacute; độ thấm h&uacute;t tốt, chống nhăn cao v&agrave; tr&aacute;nh b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường, với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy v&agrave; ủi ở nhiệt độ th&iacute;ch hợp.</p>\r\n', 0),
(20, 9, 'Quần jean trơn form jogger - 10F20DPA105', 'quanjean_1.png', 480000, 0, '<p>Chất liệu: 70% cotton, 20% polyester, 8% rayon, 2% spandex.<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy</p>\r\n', 6),
(21, 9, 'Quần jean rách gối form slim - 10F20DPA028', 'quanjean_2.png', 500000, 480000, '<p>Chất liệu: 100% cotton.<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 79),
(22, 9, 'Quần jean trơn form loose - 10F20DPA040', 'quanjean_3.png', 480000, 0, '<p>Chất liệu: 100% cotton.<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 5),
(23, 9, 'Quần Jean rách gối form jogger - 10F20DPA034', 'quanjean_4.png', 500000, 470000, '<p>Chất liệu: 70% cotton, 20% polyester, 8% rayon, 2% spandex<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 13),
(24, 9, 'Quần jean trơn form slim crop - 10F20DPA064', 'quanjean_5.png', 500000, 480000, '<p>Chất liệu: 98% cotton, 2% spandex.<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.&lt;&gt;Hướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 6),
(25, 9, 'Quần jean trơn form slim crop - 10F20DPA031', 'quanjean_6.png', 500000, 0, '<p>Chất liệu: 98% cotton, 2% spandex.<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 0),
(26, 9, 'Quần jean rách gối form slim crop - 10F20DPA017', 'quanjean_7.png', 500000, 480000, '<p>Chất liệu: 98% cotton, 2% spandex.<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 12),
(27, 10, 'Quần kaki nam trơn form slim fit - 10F20PCA017', 'quankaki_1.png', 450000, 420000, '<p>Chất liệu: 97% cotton, 3% spandex.<br />\r\nĐặc t&iacute;nh: Mềm nhẹ, co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ấm ở nhiệt độ kh&ocirc;ng qu&aacute; 40độC.<br />\r\n- Giặt mặt tr&aacute;i với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng sử dụng chất tẩy.<br />\r\n- Sấy ở nhiệt độ trung b&igrave;nh hoặc phơi trong b&oacute;ng r&acirc;m.</p>\r\n', 9),
(28, 10, 'Quần kaki form slim crop -10F20PCA005', 'quankaki_2.png', 480000, 450000, '<p>Chất liệu: 96% cotton,4% spandex<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ấm ở nhiệt độ kh&ocirc;ng qu&aacute; 40độC.<br />\r\n- Giặt mặt tr&aacute;i với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng sử dụng chất tẩy.<br />\r\n- Sấy ở nhiệt độ trung b&igrave;nh hoặc phơi trong b&oacute;ng r&acirc;m.</p>\r\n', 8),
(29, 10, 'Quần kaki form slim crop - 10F20PCA004', 'quankaki_3.png', 450000, 0, '<p>Chất liệu: 96% cotton, 4% spandex.<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ấm ở nhiệt độ kh&ocirc;ng qu&aacute; 40độC.<br />\r\n- Giặt mặt tr&aacute;i với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng sử dụng chất tẩy.<br />\r\n- Sấy ở nhiệt độ trung b&igrave;nh hoặc phơi trong b&oacute;ng r&acirc;m.</p>\r\n', 20),
(30, 10, 'Quần khaki form slim crop - 10F20PCA007', 'quankaki_4.png', 500000, 470000, '<p>Chất liệu: 96% Cotton, 4% Spandex<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, thấm h&uacute;t nhanh v&agrave; mềm nhẹ.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ấm ở nhiệt độ kh&ocirc;ng qu&aacute; 40độC.<br />\r\n- Giặt mặt tr&aacute;i với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng sử dụng chất tẩy.<br />\r\n- Sấy ở nhiệt độ trung b&igrave;nh hoặc phơi trong b&oacute;ng r&acirc;m.</p>\r\n', 1),
(31, 10, 'Quần kaki dài cotton form carrot - 10S20PCA002', 'quankaki_5.png', 450000, 430000, '<p>Chất liệu: 100% cotton<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ấm ở nhiệt độ kh&ocirc;ng qu&aacute; 40độC.<br />\r\n- Giặt mặt tr&aacute;i với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng sử dụng chất tẩy.<br />\r\n- Sấy ở nhiệt độ trung b&igrave;nh hoặc phơi trong b&oacute;ng r&acirc;m.</p>\r\n', 0),
(32, 10, 'Quần Kaki linen kẻ sọc - 10S20PCA007', 'quankaki_6.png', 340000, 0, '<p>Chất liệu: 49% Linen, 51% Viscose<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ấm ở nhiệt độ kh&ocirc;ng qu&aacute; 40độC.<br />\r\n- Giặt mặt tr&aacute;i với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng sử dụng chất tẩy.<br />\r\n- Sấy ở nhiệt độ trung b&igrave;nh hoặc phơi trong b&oacute;ng r&acirc;m.</p>\r\n', 0),
(33, 10, 'Quần Kaki Nam Form Carrot 10S20PCA002', 'quankaki_7.png', 650000, 600000, '<p>Chất liệu: 100% cotton.<br />\r\nĐặc t&iacute;nh: Co gi&atilde;n, h&uacute;t ẩm tốt v&agrave; thấm h&uacute;t mồ h&ocirc;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ấm ở nhiệt độ kh&ocirc;ng qu&aacute; 40độC.<br />\r\n- Giặt mặt tr&aacute;i với đồ c&oacute; m&agrave;u tương tự.<br />\r\n- Kh&ocirc;ng sử dụng chất tẩy.<br />\r\n- Sấy ở nhiệt độ trung b&igrave;nh hoặc phơi trong b&oacute;ng r&acirc;m.</p>\r\n', 0),
(34, 14, 'Giày Sneaker 10S20SHO001', 'giaydep_1.png', 700000, 680000, '<p>Chất liệu bền đẹp, form snecker &ocirc;m s&aacute;t b&agrave;n ch&acirc;n, tạo cảm gi&aacute;c &ecirc;m &aacute;i, dễ chịu.</p>\r\n', 0),
(35, 14, 'Giày Nam Slip On Da Lộn - GI107003', 'giaydep_2.png', 690000, 0, '<p>Slip on<br />\r\nMẫu gi&agrave;y ho&agrave;n to&agrave;n mới thiết kế đơn giản với m&agrave;u navy dễ phối đồ cho c&aacute;c ch&agrave;ng trai, chất&nbsp; da lộn mang lại sự tinh tế, mềm mại dễ chịu cho đ&ocirc;i b&agrave;n ch&acirc;n.</p>\r\n', 2),
(36, 14, 'Giày Nam Sneaker Đáp Xanh Rêu - GI212030', 'giaydep_3.png', 1300000, 1250000, '<p>White Sneaker<br />\r\nVới mẫu gi&agrave;y ho&agrave;n to&agrave;n mới thiết kế basic đ&aacute;p xanh r&ecirc;u ở ph&iacute;a sau gam m&agrave;u trắng tinh tế mềm mại, dễ chịu cho đ&ocirc;i ch&acirc;n.</p>\r\n', 6),
(37, 14, 'Giày Nam Chukka GI30700', 'giaydep_4.png', 1500000, 1300000, '<p>VŨ KH&Iacute; PH&Aacute;I MẠNH -&nbsp; CHUKKA<br />\r\n&ldquo;CHUKKA BOOTS Da Lộn&rdquo; l&agrave; sự lựa chọn th&uacute; vị cho phong c&aacute;ch h&agrave;ng ng&agrave;y với một ch&agrave;ng trai y&ecirc;u th&iacute;ch phong c&aacute;ch bụi bặm m&agrave; kh&ocirc;ng k&eacute;m phần &quot;bảnh bao&quot;<br />\r\nM&agrave;u đen cổ điển của da lộn ch&iacute;nh l&agrave; người bạn đồng h&agrave;nh trong lối mix đồ của nam giới. Nhưng bạn muốn tho&aacute;t khỏi v&ugrave;ng an to&agrave;n th&igrave; đừng qu&ecirc;n m&agrave;u Beige thời thượng v&agrave; th&acirc;n thiện.</p>\r\n', 2),
(38, 14, 'Dép Nam Xỏ Ngón Flip Flop - DE1170', 'giaydep_5.png', 150000, 0, '<p>&nbsp;D&eacute;p xỏ ng&oacute;n, họa tiết nhiệt đới, &ecirc;m nhẹ.</p>\r\n', 4),
(39, 14, 'Dép Nam Sandal 2 Bản Có Quai - DE312002', 'giaydep_6.png', 500000, 460000, '<p>Xăng đan nam m&agrave;u đen 2 bản, c&oacute; quai, đ&iacute;nh khuy kim loại loại tạo điểm nhấn.</p>\r\n', 0),
(40, 14, 'Giày Nam Sneaker Canvas GI207003', 'giaydep_7.png', 860000, 800000, '<p>SNEAKER CANVAS - Bước ch&acirc;n vững chắc cho ph&aacute;i mạnh!<br />\r\nChất liệu canvas v&agrave; da b&ograve; bền bỉ, cứng c&aacute;p. Thiết kế trẻ trung, năng động c&ugrave;ng đế gi&agrave;y b&aacute;m chắc, lớp l&oacute;t c&oacute; khả năng thấm h&uacute;t mồ h&ocirc;i tốt sẽ mang đến sự tự tin tr&ecirc;n mỗi bước ch&acirc;n của bạn.</p>\r\n', 3),
(41, 15, 'Áo sơ mi nữ, tay dài - 10F20SHLW044', 'aonu_1.png', 420000, 0, '<p>Chất liệu: 100% rayon.<br />\r\nĐặc t&iacute;nh: Mềm mại, h&uacute;t ẩm tốt, thấm h&uacute;t tốt.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy</p>\r\n', 41),
(42, 15, 'Áo khoác jean nữ - 10F20DJAW003', 'aonu_2.png', 500000, 470000, '<p>Chất liệu:<br />\r\nĐặc t&iacute;nh: Chống thấm nước tốt, tr&aacute;nh b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 35),
(43, 15, 'Áo thun nữ tay ngắn, cổ V - 10F20TSHW001', 'aonu_3.png', 180000, 0, '<p>Chất liệu:&lt;br&gt;Đặc t&iacute;nh: Chống thấm nước tốt, tr&aacute;nh b&aacute;m bụi.&lt;br&gt;Hướng dẫn sử dụng:&lt;br&gt;- Giặt ở nhiệt độ b&igrave;nh thường.&lt;br&gt;- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.&lt;br&gt;- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 11),
(44, 15, 'Áo thun tay ngắn nữ, có print - 10F20TSHW002', 'aonu_4.png', 210000, 195000, '<p>Chất lượng:<br />\r\nĐặc t&iacute;nh: Chống thấm nước tốt, tr&aacute;nh b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy</p>\r\n', 7),
(45, 16, ' Quần jean nữ destroy - 10F20DPAW042', 'quannu_1.png', 450000, 0, '<p>Chất liệu: 100% cotton.<br />\r\nĐặc t&iacute;nh: Mềm mại, h&uacute;t ẩm tốt, thấm h&uacute;t tốt.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy</p>\r\n', 8),
(46, 16, 'Quần jean nữ trơn form carrot - 10F20DPAW045', 'quannu_2.png', 480000, 460000, '<p>Chất liệu: 100% cotton.<br />\r\nĐặc t&iacute;nh: mềm mại, thấm h&uacute;t tốt, h&uacute;t ẩm tốt.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 61),
(47, 16, 'Quần jean nữ trơn form straight - 10F20DPAW024', 'quannu_3.png', 550000, 0, '<p>Chất liệu:<br />\r\nĐặc t&iacute;nh: Chống thấm nước tốt, tr&aacute;nh b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 1),
(48, 16, 'Quần jean nữ tưa lai - 10F20DPAW026', 'quannu_4.png', 410000, 390000, '<p>Chất liệu: 75% cotton, 23% polyester, 2% spandex.<br />\r\nĐặc t&iacute;nh: Mềm mại, thấm h&uacute;t nước, h&uacute;t ẩm tốt, &iacute;t b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 0),
(49, 16, 'Quần jeans nữ ống loe - 10F20DPAW027', 'quannu_5.png', 440000, 0, '<p>Chất liệu: 75% cotton, 23% polyester, 2% spandex.&lt;br&gt;Đặc t&iacute;nh: Thấm nước tốt, h&uacute;t ẩm tốt, &iacute;t b&aacute;m bụi.&lt;br&gt;Hướng dẫn sử dụng:br&lt;&gt;- Giặt ở nhiệt độ b&igrave;nh thường.&lt;br&gt;- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.&lt;br&gt;- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 0),
(50, 16, 'Quần jeans nữ ống loe - 10F20DPAW044', 'quannu_6.png', 650000, 635000, '<p>Chất liệu: 70% cotton, 20% polyester, 8% rayon, 2% spandex.<br />\r\nĐặc t&iacute;nh: Mềm mại, bền, h&uacute;t ẩm tốt, &iacute;t nhăn, &iacute;t b&aacute;m bụi.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy</p>\r\n', 2),
(51, 16, ' Quần kaki nữ thắt dây - 10F20PCAW003', 'quannu_7.png', 550000, 0, '<p>Chất liệu: 98% cotton, 2% spandex.<br />\r\nĐặc t&iacute;nh: Mềm mại, độ bền cao, h&uacute;t ẩm v&agrave; h&uacute;t mồ h&ocirc;i tốt, hạ nhiệt v&agrave; l&agrave;m m&aacute;t cơ thể.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp<br />\r\n- Hạn chế sử dụng m&aacute;y sấy.</p>\r\n', 3),
(52, 17, 'Đầm nữ dài sát nách, xẻ trụ - 10F20DREW023', 'dam_1.png', 500000, 480000, '<p>Chất liệu: 100% rayon.<br />\r\nĐặc t&iacute;nh: Mềm mại, m&aacute;t, thoải m&aacute;i, h&uacute;t ẩm tốt.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy</p>\r\n', 13),
(53, 17, 'Đầm nữ dài, 2 dây - 10F20DREW027', 'dam_2.png', 340000, 0, '<p>Chất liệu: 52% linen, 48% cotton.<br />\r\nĐặc t&iacute;nh: Mềm mại, h&uacute;t ẩm tốt, tho&aacute;ng kh&iacute;, m&aacute;t.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy</p>\r\n', 33),
(54, 17, 'Đầm nữ suông, xẻ trụ có lá cổ - 10F20DREW050', 'dam_3.png', 650000, 630000, '<p>Chất liệu: 55% linen, 45% viscose.<br />\r\nĐặc t&iacute;nh: Mềm mại, tho&aacute;ng kh&iacute;, thoải m&aacute;i.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy, ủi ở nhiệt độ th&iacute;ch hợp.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy</p>\r\n', 30),
(55, 21, 'Vớ dài họa tiết form freesize - 10F20SOC004', 'vo_1.png', 120000, 0, '<p>Chất liệu: 85% Polyester, 10% Linen, 5% Polyester&lt;br&gt;Giặt ở chế độ b&igrave;nh thường. &lt;br&gt;Kh&ocirc;ng sử dụng chất tẩy &lt;br&gt;Sấy ở nhiệt độ thấp&lt;br&gt;Kh&ocirc;ng ủi</p>\r\n', 3),
(56, 21, ' Vớ dài solid - 10F20SOC002', 'vo_2.png', 130000, 120000, '<p>Chất liệu: 85% Polyester, 10% Linen, 5% Polyester<br />\r\nGiặt ở chế độ b&igrave;nh thường.<br />\r\nKh&ocirc;ng sử dụng chất tẩy<br />\r\nSấy ở nhiệt độ thấp<br />\r\nKh&ocirc;ng ủi</p>\r\n', 1),
(57, 21, 'Vớ hài cotton - 10S20SOC009', 'vo_3.png', 85000, 80000, '<p>Chất liệu: 73% Cotton, 22% Polyester, 5% poly<br />\r\nGiặt ở chế độ b&igrave;nh thường.&nbsp;<br />\r\nKh&ocirc;ng sử dụng chất tẩy<br />\r\nSấy ở nhiệt độ thấp<br />\r\nKh&ocirc;ng ủi</p>\r\n', 12),
(58, 22, 'Nón lưỡi trai, có thêu form freesize - 10F20CAP013', 'mu_1.png', 210000, 200000, '<p>Ch&acirc;t liệu: 100% cotton.<br />\r\nĐặc t&iacute;nh:&nbsp;Mềm mại, c&oacute; độ thấm h&uacute;t mồ h&ocirc;i v&agrave; h&uacute;t ẩm cao, tho&aacute;ng m&aacute;t.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy, ủi ở nhiệt độ b&igrave;nh thường.</p>\r\n', 54),
(59, 22, 'Nón tròn không vành prints form freesize - 10F20CAP012', 'mu_2.png', 180000, 0, '<p>Ch&acirc;t liệu: 100% cotton.<br />\r\nĐặc t&iacute;nh:&nbsp;Mềm mại, c&oacute; độ thấm h&uacute;t mồ h&ocirc;i v&agrave; h&uacute;t ẩm cao, tho&aacute;ng m&aacute;t.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy, ủi ở nhiệt độ b&igrave;nh thường.</p>\r\n', 22),
(60, 22, 'Nón vành, nhãn point trang trí form freesize - 10F20CAP006', 'mu_3.png', 180000, 0, '<p>Ch&acirc;t liệu: 100% cotton.<br />\r\nĐặc t&iacute;nh:&nbsp;Mềm mại, c&oacute; độ thấm h&uacute;t mồ h&ocirc;i v&agrave; h&uacute;t ẩm cao, tho&aacute;ng m&aacute;t.<br />\r\nHướng dẫn sử dụng:<br />\r\n- Giặt ở nhiệt độ b&igrave;nh thường.<br />\r\n- Kh&ocirc;ng được d&ugrave;ng h&oacute;a chất tẩy.<br />\r\n- Hạn chế sử dụng m&aacute;y sấy, ủi ở nhiệt độ b&igrave;nh thường.</p>\r\n', 17),
(61, 1, 'Áo adidas', 'adidas1.jpg', 200000, 190000, 'AAAAAAAAAAAAA', 8),
(64, 20, 'Dây lưng da bò Routine', 'thatlungnam.jpg', 350000, 280000, '<p>D&acirc;y lưng da bò Routine, với ch&acirc;́t li&ecirc;̣u da bò cao c&acirc;́p đường may tỉ mỉ, bảo hành da và đường may 6 tháng...Đợt hàng này v&ecirc;̀ v&acirc;̃n nằm trong chương trình sale phụ ki&ecirc;̣n d&acirc;y lưng ví da 20% ( sale đ&ecirc;́n h&ecirc;́t tháng 10). Qua OZ shopping th&ocirc;i anh em...<br />\r\nOz - Homeland<br />\r\n* * *<br />\r\nOrder via&nbsp;<a href=\"https://www.facebook.com/ozhomelandstore/?__tn__=kK*F\">www.facebook.com/ozhomelandstore</a><br />\r\nHotline: 01686432123<br />\r\nAdd1: 07 Mai Hắc Đế, H&agrave; Nội - ĐT đặt h&agrave;ng 04.626.002.96<br />\r\nAdd2: 97 N&uacute;i Tr&uacute;c, H&agrave; Nội - ĐT đặt h&agrave;ng 04.626.002.97<br />\r\nAdd3: 78-80 Thạch Thị Thanh, p.T&acirc;n Định, Q.1, TPHCM - ĐT đặt h&agrave;ng 0838.205.730<br />\r\nAdd4: 589 Sư Vạn Hạnh, Q.10, TPHCM - ĐT đặt h&agrave;ng 0838.680.746<br />\r\nAdd5: 1166 C&aacute;ch Mạng Th&aacute;ng 8, p.4, Q.T&acirc;n B&igrave;nh, TPHCM - ĐT đặt hàng 08.668.651.29<br />\r\nOpen daily from 9:00am - 10:00pm</p>\r\n', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_detail`
--

CREATE TABLE `products_detail` (
  `prodt_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `size` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products_detail`
--

INSERT INTO `products_detail` (`prodt_id`, `pro_id`, `size`, `quantity`, `sold`) VALUES
(15, 15, 'S', 1, 0),
(16, 15, 'M', 4, 0),
(18, 3, 'M', 15, 0),
(19, 4, 'M', 10, 1),
(20, 3, 'L', 20, 0),
(21, 3, 'XL', 23, 0),
(22, 4, 'L', 12, 0),
(23, 5, 'S', 23, 0),
(24, 5, 'M', 2, 0),
(25, 4, 'XL', 34, 0),
(26, 4, 'XXL', 7, 0),
(27, 5, 'L', 2, 2),
(28, 5, 'XL', 10, 0),
(29, 6, 'M', 11, 0),
(30, 6, 'L', 3, 0),
(31, 6, 'XL', 5, 0),
(32, 9, 'S', 12, 0),
(33, 9, 'M', 19, 0),
(34, 9, 'L', 7, 0),
(35, 10, 'M', 11, 0),
(36, 10, 'L', 10, 0),
(37, 10, 'XL', 9, 0),
(38, 10, 'XXL', 8, 1),
(39, 11, 'S', 5, 0),
(40, 11, 'M', 5, 0),
(41, 11, 'L', 6, 1),
(42, 11, 'XL', 7, 0),
(43, 12, 'M', 45, 0),
(44, 12, 'L', 4, 0),
(45, 12, 'XL', 43, 0),
(46, 14, 'S', 1, 0),
(47, 14, 'M', 7, 0),
(48, 14, 'L', 7, 0),
(49, 16, 'L', 9, 0),
(50, 16, 'XL', 11, 0),
(51, 16, 'XXL', 9, 0),
(52, 16, '2XXL', 8, 0),
(53, 17, 'S', 9, 0),
(54, 17, 'M', 9, 0),
(55, 17, 'L', 14, 5),
(56, 18, 'M', 3, 0),
(57, 18, 'L', 6, 1),
(58, 18, 'XL', 7, 0),
(59, 19, 'M', 5, 0),
(60, 19, 'L', 5, 0),
(61, 19, 'XL', 9, 0),
(62, 20, '28', 6, 0),
(63, 20, '29', 32, 0),
(64, 20, '30', 3, 0),
(65, 20, '31', 8, 0),
(66, 21, '28', 7, 0),
(67, 21, '29', 5, 2),
(68, 21, '30', 0, 14),
(69, 22, '29', 54, 0),
(70, 22, '30', 5, 0),
(71, 22, '31', 9, 0),
(72, 23, '28', 7, 0),
(73, 23, '29', 23, 0),
(74, 23, '30', 1, 1),
(75, 23, '31', 21, 0),
(76, 24, '28', 32, 0),
(77, 24, '29', 3, 0),
(78, 24, '30', 9, 0),
(79, 25, '27', 8, 0),
(80, 25, '28', 8, 0),
(81, 25, '29', 5, 0),
(82, 25, '30', 5, 0),
(83, 31, '28', 22, 0),
(84, 31, '29', 20, 0),
(85, 31, '30', 26, 0),
(86, 32, '30', 6, 0),
(87, 32, '31', 8, 0),
(88, 33, '30', 8, 0),
(89, 33, '31', 8, 0),
(90, 34, '39', 32, 0),
(91, 34, '40', 7, 0),
(92, 34, '41', 34, 0),
(93, 34, '42', 23, 0),
(94, 35, '39', 8, 0),
(95, 35, '40', 9, 0),
(96, 35, '41', 4, 0),
(97, 36, '39', 3, 2),
(98, 36, '40', 4, 0),
(99, 36, '41', 4, 0),
(100, 37, '40', 5, 0),
(101, 37, '41', 6, 0),
(102, 37, '42', 9, 0),
(103, 38, '40', 7, 0),
(104, 38, '41', 7, 0),
(105, 39, '39', 22, 0),
(106, 39, '40', 2, 0),
(107, 39, '41', 7, 0),
(108, 40, '38', 5, 0),
(109, 40, '39', 7, 0),
(110, 40, '40', 4, 0),
(111, 40, '41', 6, 1),
(112, 40, '42', 7, 0),
(113, 41, 'M', 4, 0),
(114, 41, 'L', 6, 0),
(115, 41, 'XL', 5, 0),
(116, 42, 'S', 18, 0),
(117, 42, 'M', 19, 0),
(118, 42, 'L', 12, 0),
(119, 43, 'M', 8, 0),
(120, 43, 'L', 9, 0),
(121, 43, 'XL', 9, 0),
(122, 44, 'S', 43, 0),
(123, 44, 'M', 6, 0),
(124, 44, 'L', 6, 0),
(125, 45, '26', 6, 0),
(126, 45, '27', 8, 0),
(127, 45, '28', 9, 0),
(128, 45, '29', 9, 0),
(129, 46, '29', 34, 0),
(130, 46, '30', 3, 0),
(131, 46, '31', 13, 0),
(132, 47, '28', 33, 0),
(133, 47, '29', 32, 0),
(134, 47, '30', 12, 0),
(135, 48, '28', 28, 0),
(136, 48, '29', 2, 0),
(137, 48, '30', 2, 0),
(138, 49, '28', 12, 0),
(139, 49, '29', 15, 0),
(140, 49, '30', 15, 0),
(141, 50, '29', 12, 0),
(142, 50, '30', 4, 0),
(143, 50, '31', 4, 0),
(144, 51, '28', 4, 0),
(145, 51, '29', 9, 0),
(146, 51, '30', 8, 1),
(147, 52, 'M', 11, 0),
(148, 52, 'L', 12, 0),
(149, 52, 'XL', 11, 0),
(150, 53, 'L', 2, 0),
(151, 53, 'XL', 8, 1),
(152, 54, 'S', 23, 0),
(153, 54, 'M', 20, 0),
(154, 54, 'L', 2, 0),
(155, 55, '39', 100, 0),
(156, 55, '40', 80, 0),
(157, 56, '39', 77, 0),
(158, 56, '40', 20, 0),
(159, 57, '39', 5, 0),
(160, 57, '40', 8, 0),
(161, 57, '41', 40, 0),
(162, 58, '4', 78, 0),
(163, 58, '2', 76, 0),
(164, 58, '3', 9, 0),
(165, 59, '2', 56, 0),
(166, 59, '3', 5, 0),
(167, 59, '4', 22, 0),
(168, 60, '2', 9, 0),
(169, 60, '3', 50, 0),
(170, 60, '4', 19, 4),
(171, 26, 'M', 11, 1),
(172, 27, '28', 34, 0),
(173, 28, '28', 45, 0),
(174, 3, 'xxl', 23, 0),
(175, 64, 'Free size', 50, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `slide_id` int(11) NOT NULL,
  `slide_image` varchar(255) NOT NULL,
  `slide_link` varchar(255) NOT NULL,
  `slide_pr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`slide_id`, `slide_image`, `slide_link`, `slide_pr`) VALUES
(5, 'slide5.png', 'http://localhost/kienthph11085_pro1014/front-end/detail.php?cate_id=3&pro_id=10', 2),
(6, 'slide6.png', 'http://localhost/kienthph11085_pro1014/front-end/detail.php?cate_id=9&pro_id=26', 2),
(7, 'slide7.png', 'http://localhost/kienthph11085_pro1014/front-end/detail.php?cate_id=9&pro_id=26', 2),
(13, 'slider00.jpg', '', 1),
(14, 'slider01.jpg', '', 1),
(15, 'slider02.jpg', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theme`
--

CREATE TABLE `theme` (
  `theme_id` int(11) NOT NULL,
  `theme_logo` varchar(255) NOT NULL,
  `theme_phone` varchar(20) NOT NULL,
  `theme_email` varchar(100) NOT NULL,
  `theme_add` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theme`
--

INSERT INTO `theme` (`theme_id`, `theme_logo`, `theme_phone`, `theme_email`, `theme_add`) VALUES
(1, 'logo.png', '0358081876', 'cskh@routine.vn', 'Thôn làng Dọc - Xã Vũ Lăng - huyện Bắc Sơn - tỉnh Lạng Sơn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(70) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`, `avatar`, `email`, `role`) VALUES
(42, 'thangbsls', 'thangbsls', 'gfgf.jpg', 'thangthang1702@gmail.com', 0),
(43, 'admin', 'admin123', 'gfgf.jpg', 'admin@gmail.com', 2),
(44, 'khachhang', 'ad123', 'none.png', 'khach@gmail.com', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_detail`
--

CREATE TABLE `users_detail` (
  `userdt_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `user_add` varchar(255) NOT NULL,
  `fullname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users_detail`
--

INSERT INTO `users_detail` (`userdt_id`, `user_id`, `user_phone`, `user_add`, `fullname`) VALUES
(40, 42, '0358081876', 'Vũ Lăng - Bắc Sơn - Lạng Sơn', 'Nguyễn Văn Thắng'),
(41, 43, '0358081876', 'Lạng Sơn', 'Nguyễn Văn Thắng'),
(42, 44, '0358081876', 'Lạng Sơn', 'nguyễn Văn Thắng');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cmt_id`);

--
-- Chỉ mục cho bảng `google_users`
--
ALTER TABLE `google_users`
  ADD PRIMARY KEY (`google_id`);

--
-- Chỉ mục cho bảng `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`orderdt_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pro_id`);

--
-- Chỉ mục cho bảng `products_detail`
--
ALTER TABLE `products_detail`
  ADD PRIMARY KEY (`prodt_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`);

--
-- Chỉ mục cho bảng `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `users_detail`
--
ALTER TABLE `users_detail`
  ADD PRIMARY KEY (`userdt_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `cate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `orderdt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `products_detail`
--
ALTER TABLE `products_detail`
  MODIFY `prodt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `theme`
--
ALTER TABLE `theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `users_detail`
--
ALTER TABLE `users_detail`
  MODIFY `userdt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 23, 2025 lúc 01:58 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `DataWeb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(4, 'Nấm Tươi', 'Nấm tươi là một trong các loại thực phẩm ít calo, giảm cholesterol xấu trong máu, giúp cân bằng chế độ ăn kiêng, giữ gìn vóc dáng hiệu quả. Nấm tươi là món ăn có rất nhiều loại vitamin thiết yếu, các khoáng chất quý hiếm, chất đa lượng cần thiết cho cơ thể hoạt động.\r\n\r\nTrong nấm tươi có hàm lượng chất xơ khá cao, thậm chí còn cao hơn một số loại rau, củ và hạt, hoàn toàn thích hợp để ăn mỗi ngày, đặc biệt ăn chay. Bổ sung nấm tươi thường xuyên sẽ còn giúp cơ thể tích tụ được dưỡng chất có lợi, từ đó giúp khỏe mạnh, chống oxy hóa, chậm lão hóa bên trong và trẻ hóa làn da từ bên ngoài hay thậm chí là bảo vệ, ngăn ngừa các vấn đề nghiêm trọng tác động tới cơ thể như ung thư, tim mạch, huyết áp, tiểu đường.\r\n\r\nĂn nấm tươi cũng giúp cơ thể kháng khuẩn và kháng virus ở một số chủng nấm đặc biệt, từ đó giúp cơ thể tăng lớp phòng vệ để bảo vệ được cả bên trong lẫn bên ngoài cơ thể. Bạn cũng hoàn toàn có thể ăn nấm thay thế các loại thịt heo, thịt bò, cá, trứng gà, sữa bò mà vẫn đảm bảo dinh dưỡng tối ưu nhất.\r\n\r\nTrên thế giới có hàng ngàn chủng loại nấm khác nhau, ở Việt Nam người dân thường quan tâm và ăn nhiều nhất là các loại nấm ăn thông dụng trong bữa ăn thường ngày hoặc nấm ăn lẩu, như: Nấm Bào Ngư Xám, Nấm Sò Trắng, Nấm Mối Đen, Nấm Hương (Nấm Đông Cô), Nấm Rơm Búp, Nấm Hoàng Kim, Nấm Đùi Gà, Nấm Nấm Bạch Tuyết (Nấm Hải Sản), Nấm Hầu Thủ (Nấm Đầu Khỉ), Nấm Kim Châm, Nấm Mỡ Trắng và Nấm Mỡ Nâu, Nấm Linh Chi Nâu và Nấm Linh Chi Trắng (tự Nấm Ngọc Tẩm/Nấm Vị Cua/Nấm Thủy Tiên).'),
(5, 'Nấm Khô', 'Nấm Khô được sấy từ 100% từ Nấm Tươi, là món ăn với nhiều vitamin, khoáng chất và các axit amin có lợi cần thiết cho cơ thể. Với hàm lượng đạm phong phú giúp cơ thể có thêm nhiều năng lượng vận động.\r\n\r\nLà nấm được nuôi trồng tại Nông Trại Nấm Xanh và đối tác liên kết, đảm bảo vệ sinh ATTP và chất lượng tốt nhất cho người tiêu dùng.\r\n\r\nBổ sung nấm khô mỗi ngày sẽ giúp cơ thể khỏe mạnh, nhiều năng lượng hoạt động, chậm lão hóa cơ thể, trẻ hóa da hay thậm chí là ngăn ngừa bệnh tật. Hoàn toàn có thể ăn thay thế các loại thịt, trứng, sữa mà vẫn đảm bảo dinh dưỡng tối ưu.'),
(6, 'Phôi Nấm', 'Phôi tại Nấm Xanh cung cấp bao gồm các loại thông dụng nhất như Phôi Nấm Bào Ngư Xám, Phôi Nấm Linh Chi, Phôi Nấm Hoàng Đế, Phôi Nấm Mối Đen và nhiều loại phôi phù hợp cho các đối tượng thích trồng nấm tại nhà hoặc trồng mô hình nông trại với quy mô vừa và nhỏ.\r\n\r\nPhôi do Nấm Xanh cung cấp bao gồm loại phôi thường đạt tiêu chuẩn ViệtGAP và phôi hữu cơ đạt tiêu chuẩn nuôi trồng hữu cơ. Sản phẩm luôn cam kết đạt tiêu chuẩn chất lượng và nguyên liệu an toàn tiêu dùng, luôn được kiểm tra kỹ trước khi bàn giao cho khách hàng tận tay.\r\n\r\nThành phẩm từ các phôi là các loại nấm ăn đạt tiêu chuẩn về dinh dưỡng, dùng tốt cho sức khỏe và luôn an toàn với trẻ nhỏ. Một sản phẩm làm nên hệ sinh thái xanh cho khu vườn nhà bạn.'),
(7, 'Chà Bông Nấm', 'Chà Bông Nấm là một trong những món ăn cực ngon, giàu dinh dưỡng và tiện lợi. Được chế biến từ những chân Nấm Hương khô đạt chất lượng cao, trải qua quá trình chế biến với công thức cực đặc biệt của Nấm Xanh đã cho ra các sản phẩm chà bông nấm chay siêu ngon siêu hấp dẫn.\r\n\r\nThành phần trong chà bông có chứa đến 98% chân Nấm Hương khô và các gia vị chay đặc biệt từ thực vật, đảm bảo cho chế độ chay tịnh của bất kỳ ai đang ăn chay. Cùng với hạn sử dụng lên đến 6 tháng nên bạn hoàn toàn có thể bảo quản sử dụng lâu.'),
(8, 'Nấm Dược Liệu', 'Nấm dược liệu là một trong các loại nấm có nhiều thành phần dược tính cao và tốt cho sức khỏe, dược dùng như các loại thực phẩm bổ sung. Nấm dược liệu gồm rất nhiều loại như Nấm Linh Chi Đỏ (Xích Chi, Hồng Chi,…) hay các loại Nấm Đông Trùng Thảo, Bào Tử Nấm Linh Chi, Cao Nấm Linh Chi,…\n\nLoại nấm này không dùng để ăn mà thường dùng để pha nước dùng, giúp cơ thể bồi bổ khí huyết, tăng cường sức đề kháng tự nhiên, chống lão hóa, tốt cho gan, thận, tim mạch, giảm tiểu đường, huyết áp, ngăn ngừa ung thư,… và nhiều tác dụng tuyệt vời khác phù hợp cho người trên 25 tuổi sử dụng.\n\nCác sản phẩm Nấm Dược Liệu tại Nấm Xanh sẽ gồm có Nấm Linh Chi Đỏ Nguyên Tai, Linh Chi Thái Lát, Bào Tử Linh Chi, Đông Trùng Hạ Thảo, Hôp quà Bào Tử, Cao Nấm,…\n\nTất cả sản phẩm được nuôi trồng, sản xuất và thành phẩm tại Nông trại Nấm Xanh, đảm bảo chất lượng loại 1 tốt nhất và đầy đủ điều kiện vệ sinh ATTP, kiểm nghiệm Eurofins. Đảm bảo sẽ mang đến một nguồn sức khỏe tốt và sự an tâm tốt nhất cho người tiêu dùng.'),
(9, 'Bột Nấm Ăn', 'Bột nấm ăn với 100% từ nấm khô, để sử dụng chủ yếu thay thế bột ngọt, dùng trong các món canh, cháo vô cùng bổ dưỡng, thậm chí có thể dùng để ướp các loại thịt vô cùng ngon và ngọt thịt tự nhiên.\r\n\r\nLà nấm được nuôi trồng trực tiếp tại nông trại Nấm Xanh và nông trại đối tác liên kết, các loại nấm đều đảm bảo chất lượng tốt nhất, đảm bảo vệ sinh ATTP cho người tiêu dùng.\r\n\r\nVới hàm lượng dinh dưỡng như nấm khô, trong bột nấm có nhiều vitamin và khoáng chất, các axit amin cần thiết cho cơ thể.\r\n\r\nBổ sung bột nấm mỗi ngày sẽ giúp cơ thể khỏe mạnh, chậm lão hóa cơ thể, trẻ hóa da hay thậm chí là ngăn ngừa bệnh tật. Hoàn toàn có thể ăn thay thế các loại thịt, trứng, sữa mà vẫn đảm bảo dinh dưỡng tối ưu.'),
(10, 'Nấm Quà Tặng', 'Sản phẩm đi kèm khi mua bất kì sản phẩm nào của hệ thống Nấm Xanh.'),
(18, 'Xoaif', 'asdasd'),
(19, 'Xoaif', 'asdasd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discounts`
--

CREATE TABLE `discounts` (
  `id` int(11) NOT NULL,
  `discountCode` varchar(50) NOT NULL COMMENT 'Mã giảm giá',
  `discountPercentage` float DEFAULT 0 COMMENT 'Phần trăm giảm giá',
  `discountAmount` float DEFAULT 0 COMMENT 'Số tiền giảm giá (nếu có)',
  `startDate` datetime NOT NULL COMMENT 'Ngày bắt đầu có hiệu lực',
  `endDate` datetime NOT NULL COMMENT 'Ngày kết thúc',
  `isActive` bit(1) DEFAULT b'1' COMMENT 'Trạng thái hoạt động của mã giảm giá',
  `minOrderAmount` float DEFAULT 0 COMMENT 'Số tiền tối thiểu áp dụng giảm giá'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `discounts`
--

INSERT INTO `discounts` (`id`, `discountCode`, `discountPercentage`, `discountAmount`, `startDate`, `endDate`, `isActive`, `minOrderAmount`) VALUES
(1, 'SUMMER10', 10, 0, '2025-04-01 00:00:00', '2025-06-30 23:59:59', b'1', 200000),
(2, 'FREESHIP50', 0, 50000, '2025-04-01 00:00:00', '2025-04-30 23:59:59', b'1', 100000),
(3, 'WELCOME15', 15, 0, '2025-03-01 00:00:00', '2025-12-31 23:59:59', b'1', 500000),
(4, 'VIP20', 20, 0, '2025-05-01 00:00:00', '2025-07-01 23:59:59', b'1', 1000000),
(5, 'SALE30', 30, 0, '2025-08-01 00:00:00', '2025-08-31 23:59:59', b'1', 300000),
(6, 'NEWYEAR50', 50, 0, '2025-12-25 00:00:00', '2026-01-05 23:59:59', b'1', 500000),
(7, 'BACK2SCHOOL', 10, 0, '2025-09-01 00:00:00', '2025-09-15 23:59:59', b'1', 200000),
(8, 'BLACKFRIDAY', 40, 0, '2025-04-01 00:00:00', '2025-11-29 23:59:59', b'1', 400000),
(9, 'CYBERMONDAY', 35, 0, '2025-12-01 00:00:00', '2025-12-02 23:59:59', b'1', 250000),
(10, 'FLASHSALE100', 0, 100000, '2025-07-10 00:00:00', '2025-07-11 23:59:59', b'1', 500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_user_ranks`
--

CREATE TABLE `discount_user_ranks` (
  `discount_id` int(11) NOT NULL,
  `user_rank_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_user_ranks`
--

INSERT INTO `discount_user_ranks` (`discount_id`, `user_rank_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(7, 1),
(8, 2),
(9, 3),
(10, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `id_order_detail` int(11) DEFAULT NULL,
  `rating_rank` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `comment`, `create_date`, `id_order_detail`, `rating_rank`, `status`) VALUES
(1, 'Ngon', '2025-03-29', 85, 5, 'Sẽ mua tiếp'),
(2, 'TUyệt vời', '2025-03-29', 68, 5, 'Ngon lắm'),
(3, 'Khá tệ', '2025-03-29', 68, 5, 'Cần cải thiện'),
(5, 'Dở', '2025-03-29', 54, 3, 'Cần làm sạch'),
(6, 'Lần sau sẽ ủng hộ', '2025-04-01', 98, 5, 'Ngon'),
(10, 'ádasdasd', '2025-04-04', 107, 5, 'Mới'),
(11, 'ádasdasdasd', '2025-04-04', 103, 5, 'Mới'),
(12, 'Ngon', '2025-04-04', 63, 5, 'Mới'),
(13, 'ádkajhsdkjahskdjhas', '2025-04-07', 37, 5, 'Mới'),
(14, 'Ngon nha, lần sau sẽ ủng hộ', '2025-04-07', 100, 3, 'Mới'),
(15, 'Ngon lắm nhaa, mọi người nên mua', '2025-04-09', 102, 4, 'Đã sử dụng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback_images`
--

CREATE TABLE `feedback_images` (
  `id` int(11) NOT NULL,
  `feedback_id` bigint(20) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `uploaded_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `feedback_images`
--

INSERT INTO `feedback_images` (`id`, `feedback_id`, `image_url`, `uploaded_at`) VALUES
(2, 14, 'img/Ảnh màn hình 2025-03-01 lúc 01.06.44.png', '2025-04-07 13:50:42'),
(3, 14, 'img/Ảnh màn hình 2025-03-01 lúc 13.07.30.png', '2025-04-07 13:50:42'),
(4, 14, 'img/Ảnh màn hình 2025-03-01 lúc 16.30.26.png', '2025-04-07 13:50:42'),
(5, 15, 'frame-6626433_640.webp', '2025-04-09 18:46:44'),
(6, 15, 'Geometrie_carre.png', '2025-04-09 18:46:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Images`
--

CREATE TABLE `Images` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `imageData` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Images`
--

INSERT INTO `Images` (`id`, `idProduct`, `imageData`) VALUES
(132, 44, '1735387762935_nam-bao-ngu-xam-tuoi-06.jpg'),
(133, 44, '1735387762939_nam-bao-ngu-xam-tuoi-ngon-0.jpg'),
(134, 44, '1735387762940_nam-bao-ngu-xam-tuoi-ngon-02.jpg'),
(135, 44, '1735387762942_nam-bao-ngu-xam-tuoi-ngon-01.jpg'),
(140, 46, '1735388124771_nam-dui-ga-tuoi-loai-1-2-430x430.jpg'),
(141, 46, '1735388124774_nam-dui-ga-tuoi-loai-1-3-430x430.jpg'),
(142, 46, '1735388124775_nam-dui-ga-tuoi-loai-1-6-430x430.jpg'),
(143, 46, '1735388124777_nam-dui-ga-tuoi-loai-1-9-430x430.jpg'),
(144, 47, '1735389841193_nam-huong-tuoi-nam-dong-co-tuoi-1-430x430.jpg'),
(145, 47, '1735389841197_nam-huong-tuoi-nam-dong-co-tuoi-ngon-430x430.jpg'),
(146, 47, '1735389841198_nam-huong-tuoi-nam-dong-co-tuoi-ngon-2-430x430.jpg'),
(147, 47, '1735389841199_nam-huong-tuoi-nam-dong-co-tuoi-200gr-1-430x430.jpg'),
(152, 49, '1735482997932_nam-rom-tuoi-01-150x150.jpg'),
(153, 49, '1735482997939_nam-rom-tuoi-02-150x150.jpg'),
(154, 49, '1735482997941_nam-rom-tuoi-03-150x150.jpg'),
(155, 49, '1735482997942_nam-rom-tuoi-04-150x150.jpg'),
(156, 50, '1735642893351_nam-moi-den-tuoi-4.jpg'),
(157, 50, '1735642893357_nam-moi-den-tuoi-1-1-430x430.jpg'),
(158, 50, '1735642893358_nam-moi-den-tuoi-5-430x430.jpg'),
(159, 50, '1735642893358_nam-moi-den-tuoi-2-1-430x430.jpg'),
(164, 52, '1735643142778_nam-hoang-kim-tuoi.jpg'),
(165, 52, '1735643142782_nam-hoang-kim-tuoi-ngon-4-300x300.jpg'),
(166, 52, '1735643142783_nam-hoang-kim-tuoi-ngon-1-300x300.jpg'),
(167, 52, '1735643142784_nam-hoang-kim-tuoi-1-430x430.jpg'),
(168, 53, '1735643591341_nam-mo-nau-tuoi-1.jpg'),
(169, 53, '1735643591346_nam-mo-nau-tuoi-ngon-1-430x430.jpg'),
(170, 53, '1735643591347_nam-mo-nau-tuoi-ngon-4-430x430.jpg'),
(171, 53, '1735643591348_nam-mo-nau-tuoi-ngon-2-430x430.jpg'),
(172, 54, '1735644830383_nam-dui-ga-baby-tuoi-5.jpg'),
(173, 54, '1735644830391_nam-dui-ga-baby-tuoi-6-430x430.jpg'),
(174, 54, '1735644830392_nam-dui-ga-baby-tuoi-4-430x430.jpg'),
(175, 54, '1735644830393_nam-dui-ga-baby-tuoi-2-430x430.jpg'),
(176, 55, '1735645770116_nam-linh-chi-nau-tuoi-han-quoc-0.jpg'),
(177, 55, '1735645770124_nam-linh-chi-nau-tuoi-1-430x430.jpg'),
(178, 55, '1735645770124_nam-linh-chi-nau-tuoi-3-430x430.jpg'),
(179, 55, '1735645770126_nam-linh-chi-nau-tuoi-2-430x430.jpg'),
(180, 56, '1735646340837_nam-kim-cham-tuoi-vn-5.jpg'),
(181, 56, '1735646340842_nam-kim-cham-tuoi-vn-1-430x430.jpg'),
(182, 56, '1735646340843_nam-kim-cham-tuoi-vn-3-430x430.jpg'),
(183, 56, '1735646340843_nam-kim-cham-tuoi-vn-0-430x430.jpg'),
(184, 57, '1735646776412_nam-linh-chi-trang-tuoi-han-quoc-0.jpg'),
(185, 57, '1735646776417_nam-linh-chi-trang-tuoi-430x430.jpg'),
(186, 57, '1735646776417_nam-linh-chi-trang-tuoi-1-430x430.jpg'),
(187, 57, '1735646776419_nam-linh-chi-trang-tuoi-3-430x430.jpg'),
(188, 58, '1735894284112_nam-hau-thu-tuoi-2.1.jpg'),
(189, 58, '1735894284117_nam-hau-thu-tuoi-1.1-430x430.jpg'),
(190, 58, '1735894284117_nam-hau-thu-tuoi-3.1-430x430.jpg'),
(191, 58, '1735894284118_nam-hau-thu-tuoi-6.1-Copy-430x430.jpg'),
(192, 59, '1735898751794_nam-rom-kho-2.jpg'),
(193, 59, '1735898751800_nam-rom-kho-01-1-430x430.jpg'),
(194, 59, '1735898751801_nam-rom-kho-04-430x430.jpg'),
(195, 59, '1735898751802_nam-rom-kho-500gr-300x300.jpg'),
(196, 60, '1735899680246_nam-huong-kho-nam-dong-co-kho-2.jpg'),
(197, 60, '1735899680251_nam-huong-kho-3-1-430x430.jpg'),
(198, 60, '1735899680252_nam-huong-kho-1-1-430x430.jpg'),
(199, 60, '1735899680253_nam-huong-kho-nam-dong-co-kho-430x430.jpg'),
(200, 61, '1735900374371_dong-trung-ha-thao-kho-say-thang-hoa-10gr.jpg'),
(201, 61, '1735900374377_dong-trung-ha-thao-kho-say-thang-hoa-10gr-5-430x430.jpg'),
(202, 61, '1735900374378_dong-trung-ha-thao-kho-say-thang-hoa-10gr-6-430x430.jpg'),
(203, 61, '1735900374379_dong-trung-ha-thao-kho-say-thang-hoa-10gr-3-430x430.jpg'),
(204, 62, '1736127909430_nam-bung-de-kho-nam-morel-kho-8.jpg'),
(205, 62, '1736127909443_nam-bung-de-kho-nam-morel-kho-10-430x430.jpg'),
(206, 62, '1736127909445_nam-bung-de-kho-nam-morel-kho-9-430x430.jpg'),
(207, 62, '1736127909446_nam-bung-de-kho-nam-morel-kho-05-430x430.jpg'),
(208, 64, '1736128322402_cha-bong-nam-huong-nguyen-vi-150gr-1-430x430.jpg'),
(209, 64, '1736128322407_cha-bong-nam-huong-nguyen-vi-150gr-3-430x430.jpg'),
(210, 64, '1736128322410_cha-bong-nam-huong-nguyen-vi-150gr-1.jpg'),
(211, 64, '1736128322413_cha-bong-nam-huong-nguyen-vi-150gr-2-430x430.jpg'),
(212, 68, '1737010643828_chan-nam-huong-kho-01-430x430.jpg'),
(213, 68, '1737010643839_chan-nam-huong-kho-02-430x430.jpg'),
(214, 68, '1737010643840_chan-nam-huong-kho-05.jpg'),
(215, 68, '1737010643842_chan-nam-huong-kho-6-430x430.jpg'),
(216, 69, '1737010965775_nam-hau-thu-kho-nam-dau-khi-kho-01.jpg'),
(217, 69, '1737010965781_nam-hau-thu-kho-nam-dau-khi-kho-02-430x430.jpg'),
(218, 69, '1737010965784_nam-hau-thu-kho-nam-dau-khi-kho-03-430x430.jpg'),
(219, 69, '1737010965787_nam-hau-thu-kho-nam-dau-khi-kho-05-430x430.jpg'),
(220, 70, '1737011417795_nam-bao-ngu-kho-9.jpg'),
(221, 70, '1737011417801_nam-bao-ngu-kho-10-430x430.jpg'),
(222, 70, '1737011417803_nam-bao-ngu-xam-kho-4-300x300.jpg'),
(223, 70, '1737011417809_nam-bao-ngu-xam-kho-0-300x300.jpg'),
(224, 71, '1737011833319_nam-tuyet-kho-02.jpg'),
(225, 71, '1737011833324_nam-tuyet-kho-01-430x430.jpg'),
(226, 71, '1737011833325_nam-tuyet-kho-03-430x430.jpg'),
(227, 71, '1737011833326_nam-tuyet-kho-04-430x430.jpg'),
(228, 72, '1737012712822_nam-meo-soi-moc-nhi-thai-soi-5.jpg'),
(229, 72, '1737012712827_nam-meo-soi-moc-nhi-thai-soi-1-430x430.jpg'),
(230, 72, '1737012712828_nam-meo-soi-moc-nhi-thai-soi-2-430x430.jpg'),
(231, 72, '1737012712830_nam-meo-soi-moc-nhi-thai-soi-3-430x430.jpg'),
(232, 73, '1737012894627_nam-moi-den-say-thang-hoa-1.jpg'),
(233, 73, '1737012894632_nam-moi-den-say-thang-hoa-3-430x430.jpg'),
(234, 73, '1737012894634_nam-moi-den-say-thang-hoa-2-430x430.jpg'),
(235, 73, '1737012894635_nam-moi-den-say-thang-hoa-4-430x430.jpg'),
(236, 74, '1737013113098_nam-so-trang-kho-3.jpg'),
(237, 74, '1737013113102_nam-so-trang-kho-4-430x430.jpg'),
(238, 74, '1737013113103_nam-so-trang-kho-2-430x430.jpg'),
(239, 74, '1737013113105_nam-so-trang-kho-1-430x430.jpg'),
(240, 75, '1737013254429_bao-tu-nam-linh-chi-do-0.jpg'),
(241, 75, '1737013254432_bao-tu-nam-linh-chi-do-50gr-1-430x430.jpg'),
(242, 75, '1737013254436_bao-tu-nam-linh-chi-do-50gr-4-430x430.jpg'),
(243, 75, '1737013254437_bao-tu-nam-linh-chi-do-50gr-5-430x430.jpg'),
(244, 76, '1737013688579_bot-nam-meo-kho-0-430x430.jpg'),
(245, 76, '1737013688585_bot-nam-meo-kho-1-430x430.jpg'),
(246, 76, '1737013688587_bot-nam-meo-kho-2.jpg'),
(247, 76, '1737013688590_bot-nam-meo-kho-3-430x430.jpg'),
(248, 77, '1737014189992_bot-nam-rom-50gr-430x430.jpg'),
(249, 77, '1737014189999_bot-nam-rom-100gr-4-430x430.jpg'),
(250, 77, '1737014190000_bot-nam-rom-200gr-1.jpg'),
(251, 77, '1737014190003_bot-nam-rom-430x430.jpg'),
(252, 78, '1737014679144_cha-bong-nam-huong-chay-toi-2.jpg'),
(253, 78, '1737014679153_cha-bong-nam-huong-chay-toi-150gr-1-430x430.jpg'),
(254, 78, '1737014679155_cha-bong-nam-huong-chay-toi-150gr-2-430x430.jpg'),
(255, 78, '1737014679156_cha-bong-nam-huong-chay-toi-150gr-3-430x430.jpg'),
(256, 79, '1737014849812_bot-nam-bao-ngu-xam-0-430x430.jpg'),
(257, 79, '1737014849815_bot-nam-bao-ngu-xam-1-2.jpg'),
(258, 79, '1737014849817_bot-nam-bao-ngu-xam-2-430x430.jpg'),
(259, 79, '1737014849818_bot-nam-bao-ngu-xam-3-430x430.jpg'),
(260, 80, '1737015174995_20220604_212908-01.jpg'),
(261, 80, '1737015174999_nam-linh-chi-do-thai-lat-0-430x430.jpg'),
(262, 80, '1737015175002_nam-linh-chi-do-thai-lat-02-430x430.jpg'),
(263, 80, '1737015175003_nam-linh-chi-do-thai-lat-03-430x430.jpg'),
(264, 81, '1737015484026_bot-nam-linh-chi-do-1.jpg'),
(265, 81, '1737015484030_bot-nam-linh-chi-do-2-430x430.jpg'),
(266, 81, '1737015484032_bot-nam-linh-chi-do-4-430x430.jpg'),
(267, 81, '1737015484034_bot-nam-linh-chi-do-3-430x430.jpg'),
(268, 82, '1737015780542_nam-linh-chi-do-nguyen-tai-50gr-3.jpg'),
(269, 82, '1737015780548_nam-linh-chi-do-nguyen-tai-3-430x430.jpg'),
(270, 82, '1737015780549_nam-linh-chi-do-nguyen-tai-2-430x430.jpg'),
(271, 82, '1737015780551_nam-linh-chi-do-nguyen-tai-1-430x430.jpg'),
(272, 83, '1737016036561_nam-tam-truc-kho-nam-truc-sanh-kho-6.jpg'),
(273, 83, '1737016036565_nam-tam-truc-kho-nam-truc-sanh-kho-9-430x430.jpg'),
(274, 83, '1737016036566_nam-tam-truc-kho-nam-truc-sanh-kho-1-430x430.jpg'),
(275, 83, '1737016036567_nam-tam-truc-kho-nam-truc-sanh-kho-8-430x430.jpg'),
(276, 84, '1737016225882_nam-moi-kho-2.jpg'),
(277, 84, '1737016225887_nam-moi-kho-1-430x430.jpg'),
(278, 84, '1737016225889_nam-moi-kho-3-430x430.jpg'),
(279, 84, '1737016225890_nam-moi-kho-say-thang-hoa-430x430.jpg'),
(288, 87, 'nam-moi-tuoi-tu-nhien-1-430x430.jpg'),
(289, 87, 'nam-moi-tuoi-tu-nhien-2-150x150.jpg'),
(290, 87, 'nam-moi-tuoi-tu-nhien-4.jpg'),
(291, 87, 'nam-moi-tuoi-tu-nhien-150x150.jpg'),
(292, 89, 'nam-chan-dai-tuoi-nam-loa-ken-tuoi-01.jpg'),
(293, 89, 'nam-chan-dai-tuoi-nam-loa-ken-tuoi-2-430x430.jpg'),
(294, 89, 'nam-chan-dai-tuoi-nam-loa-ken-tuoi-3-150x150.jpg'),
(295, 89, 'nam-chan-dai-tuoi-nam-loa-ken-tuoi-3-150x150.jpg'),
(296, 89, 'nam-chan-dai-tuoi-nam-loa-ken-tuoi-01.jpg'),
(297, 89, 'nam-chan-dai-tuoi-nam-loa-ken-tuoi-3-150x150.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `totalPrice` double NOT NULL,
  `isPaid` bit(1) DEFAULT b'0',
  `createDate` datetime DEFAULT current_timestamp(),
  `receiveDate` datetime DEFAULT NULL,
  `receiveAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isActive` int(1) DEFAULT 1,
  `idShipping` int(11) DEFAULT NULL,
  `idDiscount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `idUser`, `totalPrice`, `isPaid`, `createDate`, `receiveDate`, `receiveAddress`, `isActive`, `idShipping`, `idDiscount`) VALUES
(30, 5, 1908040, b'0', '2024-12-31 19:29:53', NULL, 'Nguyễn Bùi Hoàng VU, 09090900, jkjkjk@gmail.com, sadasd, Quận 3, Hồ Chí Minh. Notes: ádasdasdasd', 3, 1, NULL),
(33, 1, 1572000, b'0', '2025-01-01 09:49:51', NULL, 'Nguyễn Bùi Hoàng Vũ, 0868032463, hoangvu@gmail.com, 23, Đống Đa, Hà Nội', 3, 1, NULL),
(34, 3, 1031120, b'0', '2025-01-01 09:51:55', NULL, 'Nguyễn Bùi Hoàng Vũ, 0868032463, hoangvu@gmail.com, 23, Ninh Kiều, Cần Thơ', 3, 1, NULL),
(35, 2, 578520, b'0', '2025-01-01 09:59:40', NULL, 'Nguyễn Bùi Hoàng Vũ, 0868032463, hoangvu031020400@gmail.com, 32, Liên Chiểu, Đà Nẵng', 2, 1, NULL),
(36, 3, 482760, b'0', '2025-01-01 10:09:00', NULL, 'hkjashdkjh, 09898078, hjkhk@gmail.com, 43, Sơn Trà, Đà Nẵng', 1, 1, NULL),
(37, 3, 253440, b'0', '2025-01-01 10:32:44', NULL, 'Nguyễn Bùi Honagf Vu, 097898987, hoan@gmail.com, 23, Quận 2, Hồ Chí Minh', 1, 1, NULL),
(38, 2, 403200, b'0', '2025-01-01 10:35:51', NULL, 'dsfsdfsdf, 87234923, hh@gmail.com, 23, Quận 2, Hồ Chí Minh', 0, 1, NULL),
(45, 1, 184300, b'0', '2025-01-04 08:39:08', NULL, 'ádasdasd, 0867867654, nmbmn@gmail.com, 34234, Quận 4, Hồ Chí Minh. Notes: Giao chậm', 1, 1, NULL),
(46, 1, 218080, b'0', '2025-01-04 08:46:45', NULL, 'asdasdasd, 0875674574, hjkk@gmail.com, 24, Quận 3, Hồ Chí Minh. Notes: Giao nhanh', 0, 1, NULL),
(47, 2, 15480000, b'0', '2025-01-05 16:12:24', NULL, 'Nguyễn Bùi Hoàng Vũ, 0907440304, hoangvu@gmail.com, 199, Quận 1, Hồ Chí Minh. Notes: Che tên', 1, 1, NULL),
(48, 3, 1269730, b'0', '2025-01-05 19:16:43', NULL, 'Hoàng Vũ, 09780037978, hoangvu@gmail.com, 24, Quận 3, Hồ Chí Minh. Notes: Giao nhanh', 1, 1, NULL),
(49, 3, 470400, b'0', '2025-01-05 20:55:44', NULL, 'Hoangf Vux, 0988779878, hoangvu@gmail.com, 23, Quận 2, Hồ Chí Minh', 3, 1, NULL),
(50, 2, 5383440, b'0', '2025-01-06 08:15:27', NULL, 'Hoàng Vũ, 0868032463, hoangvu@gmail.com, 24, Quận 2, Hồ Chí Minh. Notes: Giao nhanh lên nhé', 1, 1, NULL),
(51, 3, 253440, b'0', '2025-01-06 12:28:33', NULL, 'NGadas, 908390284, jlkj@gmail.com, 23, Liên Chiểu, Đà Nẵng', 1, 1, NULL),
(52, 7, 253440, b'0', '2025-01-07 17:03:01', NULL, 'Nguyen Bui Honagf , 324234, hhh@gmail.com, qưe, Quận 4, Hồ Chí Minh', 1, 1, NULL),
(53, 7, 147840, b'0', '2025-01-12 22:51:24', NULL, 'Dung, 0909399199, hoangvu@gmail.com, Khu thảo điền , Quận 2, Hồ Chí Minh. Notes: Giao nhanh nha', 1, 1, NULL),
(54, 7, 3301280, b'0', '2025-01-12 23:40:55', NULL, 'Hoàng VŨ, 0909999999, hoangvu@gmail.com, 23, Quận 3, Hồ Chí Minh. Notes: Giao nhanh hộ ', 1, 1, NULL),
(55, 7, 3301280, b'0', '2025-01-12 23:43:26', NULL, 'Hoàng Vũ, 0909009009, hoangvu@gmail.com, 23, Sơn Trà, Đà Nẵng', 1, 1, NULL),
(56, 7, 3301280, b'0', '2025-01-12 23:52:36', NULL, 'Hoangf , 34234234, oijlWQ@gmail.com, 22, Quận 2, Hồ Chí Minh. Notes: asd', 1, 1, NULL),
(57, 7, 3301280, b'0', '2025-01-12 23:56:07', NULL, 'Hoàng , 3434433, hojk@gmail.com, 22, Quận 2, Hồ Chí Minh. Notes: s', 1, 1, NULL),
(58, 7, 3301280, b'0', '2025-01-12 23:57:36', NULL, 'Hoo, 09090909, jkkj@gmail.com, 223, Liên Chiểu, Đà Nẵng. Notes: 23', 1, 1, NULL),
(59, 7, 1470000, b'0', '2025-01-13 00:07:00', NULL, 'Hoàng Vũ, 0868032463, vufit2004@icloud.com, 23, Ninh Kiều, Cần Thơ. Notes: Giao nhanh nhé', 1, 1, NULL),
(60, 7, 1470000, b'0', '2025-01-13 00:09:25', NULL, 'Hoàng , 09090900, hjkjkkjk@gmail.com, 23, Quận 3, Hồ Chí Minh. Notes: ádasdasdasd', 1, 1, NULL),
(61, 7, 116400, b'0', '2025-01-13 00:15:48', NULL, 'Hoàng Vu, 0900909090, haiadasd@gmail.com, 32, Quận 3, Hồ Chí Minh. Notes: sédsdsd', 1, 1, NULL),
(62, 7, 47500, b'0', '2025-01-13 00:42:36', NULL, 'asdasdas, 2313, jhjh@gmail.com, asdasd, Sơn Trà, Đà Nẵng', 1, 1, NULL),
(63, 20, 491370, b'0', '2025-01-13 14:17:16', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: Giao nhanh hộ nha', 1, 1, NULL),
(64, 3, 6602560, b'0', '2025-01-14 19:30:09', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: Giao nhanh', 1, 1, NULL),
(65, 3, 220800, b'0', '2025-01-15 01:06:24', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Ba Đình, Hà Nội', 1, 1, NULL),
(66, 20, 114840, b'0', '2025-01-15 01:08:55', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Ba Đình, Hà Nội', 1, 1, NULL),
(67, 20, 38220, b'0', '2025-01-15 01:11:08', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội', 1, 8, NULL),
(68, 23, 27260, b'0', '2025-01-17 01:20:07', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: asdasdasd', 1, 9, NULL),
(69, 22, 29100, b'0', '2025-01-17 01:28:06', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Ba Đình, Hà Nội. Notes: sss', 1, 8, NULL),
(70, 22, 22310, b'0', '2025-01-17 01:29:24', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Ba Đình, Hà Nội. Notes: s', 1, 8, NULL),
(71, 22, 129100, b'0', '2025-01-17 01:33:56', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội', 1, 8, NULL),
(72, 22, 142540, b'0', '2025-01-17 01:37:28', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Ba Đình, Hà Nội. Notes: àdasf', 1, 9, NULL),
(73, 22, 219022, b'0', '2025-01-17 09:44:15', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội', 2, 3, NULL),
(74, 26, 234572, b'0', '2025-03-22 03:42:38', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: vx', 1, 3, NULL),
(75, 26, 163262, b'0', '2025-03-22 03:43:33', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: fvxcv', 1, 3, NULL),
(76, 26, 59482, b'0', '2025-03-22 03:46:37', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Cầu Giấy, Hà Nội. Notes: asdasd', 1, 3, NULL),
(77, 26, 59482, b'0', '2025-03-22 03:50:28', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Cầu Giấy, Hà Nội. Notes: asda', 1, 3, NULL),
(78, 26, 37260, b'0', '2025-03-22 03:54:42', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Đống Đa, Hà Nội', 1, 9, NULL),
(79, 26, 114002, b'0', '2025-03-22 04:08:00', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: asd', 1, 3, NULL),
(80, 27, 77822, b'0', '2025-03-22 06:46:01', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Đống Đa, Hà Nội', 1, 3, NULL),
(81, 27, 349923000, b'0', '2025-03-22 10:11:40', NULL, 'adasd, 0868032463, hao@gmail.com, 123, Ba Đình, Hà Nội. Notes: ádasdasd', 1, 13, NULL),
(82, 31, 225040, b'0', '2025-03-27 20:16:23', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội', 1, 9, NULL),
(83, 31, 604302, b'0', '2025-03-27 23:16:19', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Đống Đa, Hà Nội', 1, 3, NULL),
(84, 31, 4332972, b'0', '2025-03-31 23:09:50', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, 892, 89', 1, 3, NULL),
(85, 23, 122310, b'0', '2025-03-31 23:15:32', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, 889, 89', 1, 8, NULL),
(86, 31, 303822, b'0', '2025-03-31 23:17:06', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Huyện Long Điền, Tỉnh Bà Rịa - Vũng Tàu', 1, 3, NULL),
(87, 31, 237180, b'0', '2025-04-07 09:47:51', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Huyện Châu Đức, Tỉnh Bà Rịa - Vũng Tàu', 1, 8, NULL),
(88, 31, 237180, b'0', '2025-04-07 09:48:14', NULL, 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Huyện Châu Đức, Tỉnh Bà Rịa - Vũng Tàu', 1, 8, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `idOrder` int(11) DEFAULT NULL,
  `idProduct` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `nameProduct` varchar(50) NOT NULL,
  `weight` double NOT NULL,
  `isRated` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `idOrder`, `idProduct`, `quantity`, `price`, `nameProduct`, `weight`, `isRated`) VALUES
(37, 30, 46, 6, 39000, 'Nấm Đùi Gà Tươi (L1)', 0, 1),
(38, 30, 56, 32, 29000, 'Nấm Kim Châm Tươi (VN)', 0, 0),
(39, 30, 57, 24, 35000, 'Nấm Linh Chi Trắng Hàn Quốc Tươi', 0, 0),
(40, 33, 44, 24, 22000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(41, 33, 46, 4, 89000, 'Nấm Đùi Gà Tươi (L1)', 0, 0),
(42, 33, 47, 6, 58000, 'Nấm Hương Tươi – Nấm Đông Cô Tươi', 0, 0),
(43, 33, 57, 12, 35000, 'Nấm Linh Chi Trắng Hàn Quốc Tươi', 0, 0),
(44, 34, 52, 10, 19000, 'Nấm Hoàng Kim Tươi', 0, 0),
(45, 34, 50, 13, 50000, 'Nấm Mối Đen Tươi (L1)', 0, 0),
(46, 34, 46, 6, 39000, 'Nấm Đùi Gà Tươi (L1)', 0, 0),
(47, 35, 46, 6, 39000, 'Nấm Đùi Gà Tươi (L1)', 0, 0),
(48, 35, 54, 12, 30000, 'Nấm Đùi Gà Baby Tươi', 0, 0),
(49, 36, 44, 12, 22000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(50, 36, 46, 6, 39000, 'Nấm Đùi Gà Tươi (L1)', 0, 0),
(51, 37, 44, 12, 22000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(52, 38, 57, 12, 35000, 'Nấm Linh Chi Trắng Hàn Quốc Tươi', 0, 0),
(53, 45, 52, 10, 19000, 'Nấm Hoàng Kim Tươi', 0, 0),
(54, 46, 56, 8, 29000, 'Nấm Kim Châm Tươi (VN)', 0, 0),
(55, 47, 61, 5, 3440000, 'Đông Trùng Hạ Thảo Khô Sấy Thăng Hoa', 0, 0),
(56, 48, 54, 12, 30000, 'Nấm Đùi Gà Baby Tươi', 0, 0),
(57, 48, 54, 13, 73000, 'Nấm Đùi Gà Baby Tươi', 0, 0),
(58, 49, 58, 6, 80000, 'Nấm Hầu Thủ Tươi', 0, 0),
(59, 50, 44, 12, 22000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(60, 50, 59, 5, 1080000, 'Nấm Rơm Khô (Búp)', 0, 0),
(61, 51, 44, 12, 22000, 'Nấm Bào Ngư Xám Tươi', 0, 1),
(62, 52, 44, 12, 22000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(63, 53, 44, 7, 22000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(64, 54, 62, 2, 1756000, 'Nấm Bụng Dê Khô – Nấm Morel Khô', 0, 0),
(65, 55, 62, 2, 1756000, 'Nấm Bụng Dê Khô – Nấm Morel Khô', 0, 0),
(66, 56, 62, 2, 1756000, 'Nấm Bụng Dê Khô – Nấm Morel Khô', 0, 0),
(67, 57, 62, 2, 1756000, 'Nấm Bụng Dê Khô – Nấm Morel Khô', 0, 0),
(68, 58, 62, 2, 1756000, 'Nấm Bụng Dê Khô – Nấm Morel Khô', 0, 0),
(69, 59, 64, 3, 500000, 'Chà Bông Nấm Hương Nguyên Vị', 0, 0),
(70, 60, 64, 3, 500000, 'Chà Bông Nấm Hương Nguyên Vị', 0, 0),
(71, 61, 55, 1, 120000, 'Nấm Linh Chi Nâu Hàn Quốc Tươi', 0, 0),
(72, 62, 50, 1, 50000, 'Nấm Mối Đen Tươi (L1)', 0, 0),
(73, 63, 44, 1, 22000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(74, 63, 46, 3, 165000, 'Nấm Đùi Gà Tươi (L1)', 0, 0),
(75, 64, 62, 4, 1756000, 'Nấm Bụng Dê Khô – Nấm Morel Khô', 0, 0),
(76, 65, 59, 1, 230000, 'Nấm Rơm Khô (Búp)', 0, 0),
(77, 66, 60, 1, 116000, 'Nấm Hương Khô – Nấm Đông Cô Khô', 0, 0),
(78, 67, 46, 1, 39000, 'Nấm Đùi Gà Tươi (L1)', 0, 0),
(79, 68, 56, 1, 29000, 'Nấm Kim Châm Tươi (VN)', 0, 0),
(80, 69, 54, 1, 30000, 'Nấm Đùi Gà Baby Tươi', 0, 0),
(81, 70, 44, 1, 23000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(82, 71, 54, 1, 30000, 'Nấm Đùi Gà Baby Tươi', 0, 0),
(83, 72, 57, 1, 35000, 'Nấm Linh Chi Trắng Hàn Quốc Tươi', 0, 0),
(84, 72, 57, 1, 102000, 'Nấm Linh Chi Trắng Hàn Quốc Tươi', 0, 0),
(85, 73, 44, 1, 23000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(86, 73, 44, 1, 85000, 'Nấm Bào Ngư Xám Tươi', 500, 0),
(87, 73, 46, 1, 89000, 'Nấm Đùi Gà Tươi (L1)', 0, 0),
(88, 74, 44, 1, 48000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(89, 74, 46, 1, 165000, 'Nấm Đùi Gà Tươi (L1)', 0, 0),
(90, 75, 44, 1, 48000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(91, 75, 46, 1, 89000, 'Nấm Đùi Gà Tươi (L1)', 0, 0),
(92, 76, 56, 1, 29000, 'Nấm Kim Châm Tươi (VN)', 0, 0),
(93, 77, 56, 1, 29000, 'Nấm Kim Châm Tươi (VN)', 0, 0),
(94, 78, 56, 1, 29000, 'Nấm Kim Châm Tươi (VN)', 0, 0),
(95, 79, 56, 3, 29000, 'Nấm Kim Châm Tươi (VN)', 0, 0),
(96, 80, 44, 1, 48000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(97, 81, 75, 1, 6000000, 'Bào Tử Nấm Linh Chi Đỏ', 0, 0),
(98, 82, 46, 1, 89000, 'Nấm Đùi Gà Tươi (L1)', 0, 0),
(99, 82, 47, 1, 135000, 'Nấm Hương Tươi – Nấm Đông Cô Tươi', 0, 0),
(100, 83, 46, 2, 89000, 'Nấm Đùi Gà Tươi (L1)', 0, 1),
(101, 83, 60, 1, 280000, 'Nấm Hương Khô – Nấm Đông Cô Khô', 0, 0),
(102, 83, 47, 1, 135000, 'Nấm Hương Tươi – Nấm Đông Cô Tươi', 0, 1),
(103, 84, 44, 1, 48000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(104, 84, 46, 1, 165000, 'Nấm Đùi Gà Tươi (L1)', 0, 0),
(105, 84, 62, 1, 4360000, 'Nấm Bụng Dê Khô – Nấm Morel Khô', 0, 0),
(106, 85, 44, 1, 23000, 'Nấm Bào Ngư Xám Tươi', 0, 0),
(107, 86, 60, 1, 280000, 'Nấm Hương Khô – Nấm Đông Cô Khô', 500, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reset_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`id`, `user_id`, `reset_token`, `created_at`, `expires_at`) VALUES
(1, 27, '745e0474-62f7-45f6-888b-d3b278b473a8', '2025-04-03 20:50:34', '2025-04-03 21:05:34'),
(2, 27, 'e81ccd09-db76-4146-8d53-e9237a04fbac', '2025-04-03 20:53:03', '2025-04-03 21:08:03'),
(3, 27, '69a0ad9c-2b3d-496c-83a2-eaca7adcd38d', '2025-04-03 20:53:56', '2025-04-03 21:08:56'),
(4, 27, 'ed8e82d9-498c-416c-b130-93cabeeb8335', '2025-04-03 20:55:16', '2025-04-03 21:10:16'),
(5, 27, '0149b3b7-7896-4744-8d5a-0395e3f7ed93', '2025-04-03 21:44:45', '2025-04-03 21:59:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Payment`
--

CREATE TABLE `Payment` (
  `id` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idOrder` int(11) DEFAULT NULL,
  `methodPayment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Payment`
--

INSERT INTO `Payment` (`id`, `idUser`, `idOrder`, `methodPayment`) VALUES
(22, 5, 30, 'COD-Thanh toán khi nhận hàng'),
(23, 1, 33, 'COD-Thanh toán khi nhận hàng'),
(24, 3, 34, 'MOMO-Thanh toán MOMO'),
(25, 2, 35, 'COD-Thanh toán khi nhận hàng'),
(26, 3, 36, 'COD-Thanh toán khi nhận hàng'),
(27, 3, 37, 'COD-Thanh toán khi nhận hàng'),
(28, 2, 38, 'COD-Thanh toán khi nhận hàng'),
(29, 1, 45, 'BANK-Chuyển khoản ngân hàng'),
(30, 1, 46, 'BANK-Chuyển khoản ngân hàng'),
(31, 2, 47, 'COD-Thanh toán khi nhận hàng'),
(32, 3, 48, 'COD-Thanh toán khi nhận hàng'),
(33, 3, 49, 'COD-Thanh toán khi nhận hàng'),
(34, 2, 50, 'COD-Thanh toán khi nhận hàng'),
(35, 3, 51, 'COD-Thanh toán khi nhận hàng'),
(36, 7, 52, 'COD-Thanh toán khi nhận hàng'),
(37, 7, 53, 'COD-Thanh toán khi nhận hàng'),
(38, 7, 54, 'BANK-Chuyển khoản ngân hàng'),
(39, 7, 55, 'COD-Thanh toán khi nhận hàng'),
(40, 7, 56, 'BANK-Chuyển khoản ngân hàng'),
(41, 7, 57, 'COD-Thanh toán khi nhận hàng'),
(42, 7, 58, 'COD-Thanh toán khi nhận hàng'),
(43, 7, 59, 'BANK-Chuyển khoản ngân hàng'),
(44, 7, 60, 'MOMO-Thanh toán MOMO'),
(45, 7, 61, 'BANK-Chuyển khoản ngân hàng'),
(46, 7, 62, NULL),
(47, 20, 63, 'BANK-Chuyển khoản ngân hàng'),
(48, 3, 64, 'COD-Thanh toán khi nhận hàng'),
(49, 3, 65, 'COD-Thanh toán khi nhận hàng'),
(50, 20, 66, 'COD-Thanh toán khi nhận hàng'),
(51, 20, 67, 'MOMO-Thanh toán MOMO'),
(52, 23, 68, 'COD-Thanh toán khi nhận hàng'),
(53, 22, 69, 'COD-Thanh toán khi nhận hàng'),
(54, 22, 70, 'COD-Thanh toán khi nhận hàng'),
(55, 22, 71, 'COD-Thanh toán khi nhận hàng'),
(56, 22, 72, 'COD-Thanh toán khi nhận hàng'),
(57, 22, 73, 'COD-Thanh toán khi nhận hàng'),
(58, 26, 74, 'COD-Thanh toán khi nhận hàng'),
(59, 26, 75, 'COD-Thanh toán khi nhận hàng'),
(60, 26, 76, 'COD-Thanh toán khi nhận hàng'),
(61, 26, 77, 'MOMO-Thanh toán MOMO'),
(62, 26, 78, 'COD-Thanh toán khi nhận hàng'),
(63, 26, 79, 'COD-Thanh toán khi nhận hàng'),
(64, 27, 80, 'BANK-Chuyển khoản ngân hàng'),
(65, 27, 81, 'BANK-Chuyển khoản ngân hàng'),
(66, 31, 82, 'COD-Thanh toán khi nhận hàng'),
(67, 31, 83, 'MOMO-Thanh toán MOMO'),
(68, 31, 84, 'on'),
(69, 23, 85, 'on'),
(70, 31, 86, 'on'),
(71, 31, 87, NULL),
(72, 31, 88, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `idCategory` int(11) DEFAULT NULL,
  `idSupplier` int(11) DEFAULT NULL,
  `isActive` bit(1) DEFAULT b'1',
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `productName`, `idCategory`, `idSupplier`, `isActive`, `image`) VALUES
(44, 'Nấm Bào Ngư Xám Tươi', 4, 2, b'1', '1735387762935_nam-bao-ngu-xam-tuoi-06.jpg'),
(46, 'Nấm Đùi Gà Tươi (L1)', 4, 2, b'1', ''),
(47, 'Nấm Hương Tươi – Nấm Đông Cô Tươi', 4, 4, b'1', ''),
(49, 'Nấm Rơm Tươi (Búp)', 4, 4, b'1', ''),
(50, 'Nấm Mối Đen Tươi (L1)', 4, 4, b'1', ''),
(52, 'Nấm Hoàng Kim Tươi', 4, 6, b'1', ''),
(53, 'Nấm Mỡ Nâu Tươi', 4, 6, b'1', ''),
(54, 'Nấm Đùi Gà Baby Tươi', 4, 3, b'1', ''),
(55, 'Nấm Linh Chi Nâu Hàn Quốc Tươi', 4, 4, b'1', ''),
(56, 'Nấm Kim Châm Tươi (VN)', 4, 3, b'1', ''),
(57, 'Nấm Linh Chi Trắng Hàn Quốc Tươi', 4, 7, b'1', ''),
(58, 'Nấm Hầu Thủ Tươi', 4, 6, b'1', ''),
(59, 'Nấm Rơm Khô (Búp)', 5, 3, b'1', ''),
(60, 'Nấm Hương Khô – Nấm Đông Cô Khô', 5, 3, b'1', ''),
(61, 'Đông Trùng Hạ Thảo Khô Sấy Thăng Hoa', 8, 7, b'1', ''),
(62, 'Nấm Bụng Dê Khô – Nấm Morel Khô', 5, 3, b'1', ''),
(64, 'Chà Bông Nấm Hương Nguyên Vị', 7, 7, b'1', ''),
(68, 'Chân Nấm Hương Khô', 5, 4, b'1', ''),
(69, 'Nấm Hầu Thủ Khô', 5, 6, b'1', ''),
(70, 'Nấm Bào Ngư Xám Khô', 5, 4, b'1', ''),
(71, 'Nấm Tuyết Khô (Nguyên Bông)', 5, 4, b'1', ''),
(72, 'Nấm Mèo Sợi – Nấm Mộc Nhĩ Thái Sợi', 5, 7, b'1', ''),
(73, 'Nấm Mối Đen Sấy Thăng Hoa', 5, 6, b'1', ''),
(74, 'Nấm Sò Trắng Khô', 5, 4, b'1', ''),
(75, 'Bào Tử Nấm Linh Chi Đỏ', 8, 4, b'1', ''),
(76, 'Bột Nấm Mèo – Bột Nấm Mộc Nhĩ', 9, 7, b'1', ''),
(77, 'Bột Nấm Rơm', 9, 7, b'1', ''),
(78, 'Chà Bông Nấm Hương Cháy Tỏi', 7, 4, b'1', ''),
(79, 'Bột Nấm Bào Ngư Xám', 9, 4, b'1', ''),
(80, 'Nấm Linh Chi Đỏ Thái Lát', 8, 7, b'1', ''),
(81, 'Bột Nấm Linh Chi Đỏ', 8, 7, b'1', ''),
(82, 'Nấm Linh Chi Đỏ Nguyên Tai', 8, 4, b'1', ''),
(83, 'Nấm Tâm Trúc Khô – Nấm Trúc Sanh Khô', 5, 4, b'1', ''),
(84, 'Nấm Mối Khô (Tự Nhiên)', 5, 6, b'1', ''),
(87, 'Nấm Mối Tươi Búp Tự Nhiên', 4, 6, b'0', ''),
(88, 'Nấm Ma', 5, 2, b'0', ''),
(89, 'Nấm Chân Dài Tươi – Nấm Loa Kèn Tươi', 4, 6, b'1', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_descriptions`
--

CREATE TABLE `product_descriptions` (
  `id` bigint(20) NOT NULL,
  `content` text DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_descriptions`
--

INSERT INTO `product_descriptions` (`id`, `content`, `title`, `id_product`) VALUES
(1, 'Ngon ', 'Nấm', 88),
(2, 'sdkjfsldf', 'Khong', 88),
(3, 'ádasdasd', 'ádasdadsa', 88),
(4, 'Ngon ', 'Nấm', 88),
(5, 'sdkjfsldf', 'Khong', 88),
(6, 'ádasdasd', 'ádasdadsa', 88),
(7, 'Nấm Mối Trắng Tươi là loại nấm tự nhiên, chưa thể nuôi trồng được nên số lượng giới hạn, nấm chỉ mọc 2-3 tháng nên bạn sẽ bỏ lỡ nếu không nhanh tay.\nTrong Nấm Mối Trắng Tươi có rất nhiều dưỡng chất cần thiết cần thiết, hơn nhiều loại thịt, cá, trứng và sữa.\nCó tác dụng lợi kinh nguyệt cho phụ nữ, tăng tiết sữa cho mẹ bỉm.\nLà thực phẩm ít calo và giúp giảm cholesterol nên cực kỳ thích hợp chế độ ăn kiên, giảm cân, giữ vóc dáng.\nChế biến nấm cùng các món ăn dễ dàng, mùi vị lại cực kỳ tuyệt vời.\n', 'Nấm Mối Tươi có ưu điểm gì?', 87),
(8, 'Chính xác là Nấm Mối Tươi Tự Nhiên chỉ có duy nhất 1 loại duy nhất, chỉ mọc tự nhiên và nó chính là loại nấm này bạn đang xem. Vì chúng là loại nấm duy nhất tại Việt Nam chưa thể nuôi trồng nông nghiệp được nên vô cùng quý hiếm. Mỗi năm chúng chỉ nở rộ ra đúng 1 đợt và duy trì sự sinh tồn này vỏn vẹn 2-3 tháng từ giữa năm nên sản lượng có giới hạn, muốn ăn phải săn người bán và muốn bán phải săn người mua.\n\nNếu mua Nấm Mối Tươi này để sử dụng, bạn sẽ có 2 lựa chọn về loại nấm, đó là:\n\nNấm Mối Búp sẽ có giá thành cao hơn bởi vị ngọt tinh túy và độ ngon gần như tuyệt đối, dinh dưỡng tối đa, nấm còn nguyên búp ở mũ, chưa hề nở bung ra. Bạn nên chọn Nấm Mối Búp nếu có kinh tế để cảm nhận trọn vẹn tinh hoa đất trời của loại nấm này nhé.\nNấm Mối Nở sẽ có giá thành thấp hơn bởi mũ nấm đã nở xòe ra như cánh dù căng, vị ngọt và độ ngon lúc này dù đã giảm đi một phần nhỏ nhưng ăn vẫn ngon. Nên với tài chính không nhiều, bạn có thể chọn Nấm Mối Nở để dùng cho tiết kiệm nhé.', 'Nấm Mối Tươi Tự Nhiên có mấy loại?', 87),
(9, 'Nấm quý hiếm và số lượng rất giới hạn, mỗi năm chỉ có thể thưởng thức 1 lần.\nSản phẩm thiên nhiên, mùi vị đặc trưng thơm ngon hơn nhiều loại nấm bạn từng ăn, nhất định phải thưởng thức 1 lần trong đời.\nNấm Xanh cung cấp tới 90% Nấm Mối Búp, đảm vị độ ngon ưng ý nhất cho bạn và gia đình có một bữa ăn hết ý, nhiều dinh dưỡng.\nĐó cũng là lý do bạn có thể an tâm sử dụng Nấm Mối Tươi tại Nông trại Nấm Xanh cung cấp.', 'Tại sao bạn nên dùng Nấm Mối Tươi?', 87),
(10, 'Trong Nấm Mối Tươi Tự Nhiên có chứa:\n\nNhiều Protein, và các khoáng chất (canxi, sắt, photpho…) cần thiết cho cơ thể.\nGiàu vitamin, đặc biệt nhóm vitamin B tốt cho máu huyết và vitamin D tốt cho xương.\nCó các hoạt chất quan trọng như Polysaccharide giúp hoạt hóa miễn dịch và phát triển tế bào Lympho (B và T)\nLà thực phẩm có nhiều chất xơ và những axit amin hữu ích mà cơ thể không tự tổng hợp được.', 'Hàm lượng dinh dưỡng trong Nấm Mối Tươi Tự Nhiên', 87),
(11, 'Nấm Mối Trắng Tươi là loại nấm tự nhiên, chưa thể nuôi trồng được nên số lượng giới hạn, nấm chỉ mọc 2-3 tháng nên bạn sẽ bỏ lỡ nếu không nhanh tay.\nTrong Nấm Mối Trắng Tươi có rất nhiều dưỡng chất cần thiết cần thiết, hơn nhiều loại thịt, cá, trứng và sữa.\nCó tác dụng lợi kinh nguyệt cho phụ nữ, tăng tiết sữa cho mẹ bỉm.\nLà thực phẩm ít calo và giúp giảm cholesterol nên cực kỳ thích hợp chế độ ăn kiên, giảm cân, giữ vóc dáng.\nChế biến nấm cùng các món ăn dễ dàng, mùi vị lại cực kỳ tuyệt vời.\n', 'Nấm Mối Tươi có ưu điểm gì?', 87),
(12, 'Chính xác là Nấm Mối Tươi Tự Nhiên chỉ có duy nhất 1 loại duy nhất, chỉ mọc tự nhiên và nó chính là loại nấm này bạn đang xem. Vì chúng là loại nấm duy nhất tại Việt Nam chưa thể nuôi trồng nông nghiệp được nên vô cùng quý hiếm. Mỗi năm chúng chỉ nở rộ ra đúng 1 đợt và duy trì sự sinh tồn này vỏn vẹn 2-3 tháng từ giữa năm nên sản lượng có giới hạn, muốn ăn phải săn người bán và muốn bán phải săn người mua.\n\nNếu mua Nấm Mối Tươi này để sử dụng, bạn sẽ có 2 lựa chọn về loại nấm, đó là:\n\nNấm Mối Búp sẽ có giá thành cao hơn bởi vị ngọt tinh túy và độ ngon gần như tuyệt đối, dinh dưỡng tối đa, nấm còn nguyên búp ở mũ, chưa hề nở bung ra. Bạn nên chọn Nấm Mối Búp nếu có kinh tế để cảm nhận trọn vẹn tinh hoa đất trời của loại nấm này nhé.\nNấm Mối Nở sẽ có giá thành thấp hơn bởi mũ nấm đã nở xòe ra như cánh dù căng, vị ngọt và độ ngon lúc này dù đã giảm đi một phần nhỏ nhưng ăn vẫn ngon. Nên với tài chính không nhiều, bạn có thể chọn Nấm Mối Nở để dùng cho tiết kiệm nhé.', 'Nấm Mối Tươi Tự Nhiên có mấy loại?', 87),
(13, 'Nấm quý hiếm và số lượng rất giới hạn, mỗi năm chỉ có thể thưởng thức 1 lần.\nSản phẩm thiên nhiên, mùi vị đặc trưng thơm ngon hơn nhiều loại nấm bạn từng ăn, nhất định phải thưởng thức 1 lần trong đời.\nNấm Xanh cung cấp tới 90% Nấm Mối Búp, đảm vị độ ngon ưng ý nhất cho bạn và gia đình có một bữa ăn hết ý, nhiều dinh dưỡng.\nĐó cũng là lý do bạn có thể an tâm sử dụng Nấm Mối Tươi tại Nông trại Nấm Xanh cung cấp.', 'Tại sao bạn nên dùng Nấm Mối Tươi?', 87),
(14, 'Trong Nấm Mối Tươi Tự Nhiên có chứa:\n\nNhiều Protein, và các khoáng chất (canxi, sắt, photpho…) cần thiết cho cơ thể.\nGiàu vitamin, đặc biệt nhóm vitamin B tốt cho máu huyết và vitamin D tốt cho xương.\nCó các hoạt chất quan trọng như Polysaccharide giúp hoạt hóa miễn dịch và phát triển tế bào Lympho (B và T)\nLà thực phẩm có nhiều chất xơ và những axit amin hữu ích mà cơ thể không tự tổng hợp được.', 'Hàm lượng dinh dưỡng trong Nấm Mối Tươi Tự Nhiên', 87),
(19, 'Hương vị đặc biệt, thịt nấm ngon ngọt hơn một số loại nấm thân to khác.\nNhiều tác dụng cho sức khỏe và hỗ trợ hệ tiêu hóa.\nLà thực phẩm ít calo, phù hợp cho chế độ ăn kiên, giảm cân, giữ vóc dáng cơ thể hiệu quả.\nDễ dàng kết hợp với bất kỳ món ăn nào, thực đơn chay hay mặn đều dùng được.', 'Ưu điểm của Nấm Loa Kèn Tươi', 89);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_variants`
--

CREATE TABLE `product_variants` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `price` int(11) NOT NULL,
  `isActive` tinyint(2) DEFAULT 1,
  `productDescription` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `importDate` datetime DEFAULT current_timestamp(),
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_variants`
--

INSERT INTO `product_variants` (`id`, `idProduct`, `weight`, `price`, `isActive`, `productDescription`, `importDate`, `quantity`) VALUES
(27, 44, 500, 48000, 3, 'Nấm Bào Ngư Xám Tươi là nấm ăn giá rẻ phù hợp với mọi nhà, nấm có vị ngọt thanh tự nhiên, độ dai nhẹ, ăn ngon khó cưỡng, có thể chế biến được rất nhiều món ngon từ món chay đến món mặn. Trong nấm có hàm lượng dinh dưỡng phong phú, các vitamin, khoáng chất, đạm, chất xơ hữu ích.', '2025-01-16 19:45:59', 7),
(28, 44, 1000, 85000, 1, 'Nấm Bào Ngư Xám Tươi là nấm ăn giá rẻ phù hợp với mọi nhà, nấm có vị ngọt thanh tự nhiên, độ dai nhẹ, ăn ngon khó cưỡng, có thể chế biến được rất nhiều món ngon từ món chay đến món mặn. Trong nấm có hàm lượng dinh dưỡng phong phú, các vitamin, khoáng chất, đạm, chất xơ hữu ích.', '2024-12-28 00:00:00', 8),
(30, 46, 200, 39000, 1, 'Nấm Đùi Gà Tươi (L1) có vị ngon ngọt bùi và thịt nấm săn chắc, dễ ăn và dễ chế biến nhiều món, như nướng mỡ hành/phô mai, thả lẩu, xào xả ớt, nấu canh,… có thể làm được món chay và cả món mặn. Là loại nấm ăn có hàm lượng dinh dưỡng phong phú tốt cho sức khỏe.', '2024-12-28 00:00:00', 6),
(31, 46, 500, 89000, 2, 'Nấm Đùi Gà Tươi (L1) có vị ngon ngọt bùi và thịt nấm săn chắc, dễ ăn và dễ chế biến nhiều món, như nướng mỡ hành/phô mai, thả lẩu, xào xả ớt, nấu canh,… có thể làm được món chay và cả món mặn. Là loại nấm ăn có hàm lượng dinh dưỡng phong phú tốt cho sức khỏe.', '2025-01-16 20:06:54', 4),
(32, 46, 1000, 165000, 1, 'Nấm Đùi Gà Tươi (L1) có vị ngon ngọt bùi và thịt nấm săn chắc, dễ ăn và dễ chế biến nhiều món, như nướng mỡ hành/phô mai, thả lẩu, xào xả ớt, nấu canh,… có thể làm được món chay và cả món mặn. Là loại nấm ăn có hàm lượng dinh dưỡng phong phú tốt cho sức khỏe.', '2024-12-28 00:00:00', 7),
(33, 47, 200, 58000, 1, 'Nấm Hương tươi (Nấm Đông Cô tươi) sạch giàu dinh dưỡng, ngon ngọt với vị Umami tự nhiên như thịt, thanh đạm, tốt cho sức khỏe, chế biến được nhiều món ăn ngon. Là một trong các loại nấm có hoạt chất giúp cơ thể ngừa ung thư hiệu quả.', '2024-12-28 00:00:00', 6),
(34, 47, 500, 135000, 1, 'Nấm Hương tươi (Nấm Đông Cô tươi) sạch giàu dinh dưỡng, ngon ngọt với vị Umami tự nhiên như thịt, thanh đạm, tốt cho sức khỏe, chế biến được nhiều món ăn ngon. Là một trong các loại nấm có hoạt chất giúp cơ thể ngừa ung thư hiệu quả.', '2024-12-28 00:00:00', 4),
(35, 47, 1000, 250000, 1, 'Nấm Hương tươi (Nấm Đông Cô tươi) sạch giàu dinh dưỡng, ngon ngọt với vị Umami tự nhiên như thịt, thanh đạm, tốt cho sức khỏe, chế biến được nhiều món ăn ngon. Là một trong các loại nấm có hoạt chất giúp cơ thể ngừa ung thư hiệu quả.', '2024-12-28 00:00:00', 3),
(38, 49, 200, 39000, 1, 'Nấm Rơm tươi dạng búp có vị ngọt thanh, mùi thơm bùi, ăn ngon tuyệt và dễ chế biến được nhiều món ngon bổ dưỡng. Là loại nấm giàu dinh dưỡng, có tác dụng giải độc kim loại, khử nhiệt, tiêu thực, giảm huyết áp và ngừa nhồi máu cơ tim.', '2024-12-29 00:00:00', 12),
(39, 50, 200, 50000, 1, 'Nấm Mối Đen Tươi (L1) đã gọt gốc là nấm ăn có độ săn chắc, thớ thịt nấm xốp mềm ngon, vị nấm ngọt thanh nhẹ và giàu giá trị dinh dưỡng. Có thể chế biến được nhiều món ăn ngon như thả lẩu, canh, cháo, soup, xào, bánh xèo,…', '2024-12-31 00:00:00', 13),
(40, 50, 500, 235000, 1, 'Nấm Mối Đen Tươi (L1) đã gọt gốc là nấm ăn có độ săn chắc, thớ thịt nấm xốp mềm ngon, vị nấm ngọt thanh nhẹ và giàu giá trị dinh dưỡng. Có thể chế biến được nhiều món ăn ngon như thả lẩu, canh, cháo, soup, xào, bánh xèo,…', '2024-12-31 00:00:00', 20),
(41, 50, 1000, 450000, 1, 'Nấm Mối Đen Tươi (L1) đã gọt gốc là nấm ăn có độ săn chắc, thớ thịt nấm xốp mềm ngon, vị nấm ngọt thanh nhẹ và giàu giá trị dinh dưỡng. Có thể chế biến được nhiều món ăn ngon như thả lẩu, canh, cháo, soup, xào, bánh xèo,…', '2024-12-31 00:00:00', 5),
(43, 52, 200, 19000, 1, 'Nấm Hoàng Kim Tươi (Nấm Ngô Tươi) là nấm ăn có vị ngon đặc biệt, chế biến được một số món ăn hấp dẫn, thường được kết hợp trong món bánh xèo, thịt chưng trứng và nấm, các món xào bò,… Hàm lượng dinh dưỡng gồm đạm và chất xơ của loại nấm này có thể thay thế được nhiều món thịt, cá, trứng và sữa.', '2024-12-31 00:00:00', 10),
(44, 52, 500, 70000, 1, 'Nấm Hoàng Kim Tươi (Nấm Ngô Tươi) là nấm ăn có vị ngon đặc biệt, chế biến được một số món ăn hấp dẫn, thường được kết hợp trong món bánh xèo, thịt chưng trứng và nấm, các món xào bò,… Hàm lượng dinh dưỡng gồm đạm và chất xơ của loại nấm này có thể thay thế được nhiều món thịt, cá, trứng và sữa.', '2024-12-31 00:00:00', 13),
(45, 52, 1000, 125000, 1, 'Nấm Hoàng Kim Tươi (Nấm Ngô Tươi) là nấm ăn có vị ngon đặc biệt, chế biến được một số món ăn hấp dẫn, thường được kết hợp trong món bánh xèo, thịt chưng trứng và nấm, các món xào bò,… Hàm lượng dinh dưỡng gồm đạm và chất xơ của loại nấm này có thể thay thế được nhiều món thịt, cá, trứng và sữa.', '2024-12-31 00:00:00', 10),
(46, 53, 200, 79000, 1, 'Nấm Mỡ Nâu Tươi sạch, vị ngọt thanh, dễ chế biến nhiều món ăn thơm ngon bổ dưỡng và hấp dẫn như món xào, chiên, canh, nấu lẩu… Có tác dụng giảm mệt mỏi, tốt cho gan, giảm tiểu đường và hỗ trợ bồi bổ sức khỏe.', '2024-12-31 00:00:00', 23),
(47, 54, 200, 30000, 1, 'Nấm Đùi Gà Baby sạch thơm ngon, nấm loại 1 thân nhỏ, vị ngọt bùi, giàu dinh dưỡng và tốt cho sức khỏe. Chế biến được nhiều món ngon như xào, lẩu,…', '2024-12-31 00:00:00', 12),
(48, 54, 500, 73000, 1, 'Nấm Đùi Gà Baby sạch thơm ngon, nấm loại 1 thân nhỏ, vị ngọt bùi, giàu dinh dưỡng và tốt cho sức khỏe. Chế biến được nhiều món ngon như xào, lẩu,…', '2024-12-31 00:00:00', 13),
(49, 54, 1000, 145000, 1, 'Nấm Đùi Gà Baby sạch thơm ngon, nấm loại 1 thân nhỏ, vị ngọt bùi, giàu dinh dưỡng và tốt cho sức khỏe. Chế biến được nhiều món ngon như xào, lẩu,…', '2024-12-31 00:00:00', 8),
(50, 55, 200, 35000, 1, 'Nấm Linh Chi Nâu Hàn Quốc Tươi chuyên được chế biến cùng món lẩu, xào, canh… vị ngon ngọt. Là loại nấm giàu dinh dưỡng, giúp cải thiện trí nhớ, tốt cho tim mạch, chức năng gan, và thận.', '2024-12-31 00:00:00', 12),
(51, 55, 500, 120000, 1, 'Nấm Linh Chi Nâu Hàn Quốc Tươi chuyên được chế biến cùng món lẩu, xào, canh… vị ngon ngọt. Là loại nấm giàu dinh dưỡng, giúp cải thiện trí nhớ, tốt cho tim mạch, chức năng gan, và thận.', '2024-12-31 00:00:00', 13),
(52, 56, 200, 29000, 1, 'Nấm Kim Châm Tươi (VN) ngon thanh vị, chế biến được nhiều món ngon và là đệ nhất ăn lẩu, dùng mỗi ngày giúp bổ não, cải thiện trí nhớ, phòng tai biến và hạ huyết áp,…', '2024-12-31 00:00:00', 8),
(53, 56, 500, 65000, 1, 'Nấm Kim Châm Tươi (VN) ngon thanh vị, chế biến được nhiều món ngon và là đệ nhất ăn lẩu, dùng mỗi ngày giúp bổ não, cải thiện trí nhớ, phòng tai biến và hạ huyết áp,…', '2024-12-31 00:00:00', 12),
(54, 56, 1000, 115000, 1, 'Nấm Kim Châm Tươi (VN) ngon thanh vị, chế biến được nhiều món ngon và là đệ nhất ăn lẩu, dùng mỗi ngày giúp bổ não, cải thiện trí nhớ, phòng tai biến và hạ huyết áp,…', '2024-12-31 00:00:00', 5),
(55, 57, 200, 35000, 1, 'Nấm Linh Chi Trắng Hàn Quốc Tươi phù hợp chế biến cùng món xào, nhúng lẩu, nấu canh,… cực ngon ngọt và giàu giá trị dinh dưỡng. Có tác dụng cải thiện trí nhớ, tốt cho tim mạch, chức năng gan, thận và xương khớp.', '2024-12-31 00:00:00', 12),
(56, 57, 500, 102000, 1, 'Nấm Linh Chi Trắng Hàn Quốc Tươi phù hợp chế biến cùng món xào, nhúng lẩu, nấu canh,… cực ngon ngọt và giàu giá trị dinh dưỡng. Có tác dụng cải thiện trí nhớ, tốt cho tim mạch, chức năng gan, thận và xương khớp.', '2025-01-03 00:00:00', 13),
(57, 57, 1000, 230000, 1, 'Nấm Linh Chi Trắng Hàn Quốc Tươi phù hợp chế biến cùng món xào, nhúng lẩu, nấu canh,… cực ngon ngọt và giàu giá trị dinh dưỡng. Có tác dụng cải thiện trí nhớ, tốt cho tim mạch, chức năng gan, thận và xương khớp.', '2025-01-03 00:00:00', 6),
(58, 58, 200, 80000, 1, 'Nấm Hầu Thủ Tươi (hay Nấm Bờm Sư Tử Tươi, Nấm Đầu Khỉ Tươi) là nấm ăn giàu dinh dưỡng và dược chất, chuyên hỗ trợ cải thiện các vấn đề về dạ dày (bao tử) và ngừa khuẩn HP. Với lượng dược tính cao nên nấm có vị nhẫn (đắng nhẹ) và hậu vị sẽ ngọt thanh…', '2025-01-03 00:00:00', 6),
(59, 59, 200, 230000, 1, 'Nấm Rơm Khô sấy nhiệt loại BÚP có vị ngọt thanh tự nhiên, chế biến được nhiều món ăn thơm ngon bổ dưỡng, giúp khử nhiệt, tiêu thực, giảm huyết áp và ngừa nhồi máu cơ tim. Là sản phẩm nấm ăn thông dụng, bảo quản lâu, dễ dàng đem đi nhiều nơi và mang ra nước ngoài.', '2025-01-03 00:00:00', 10),
(60, 59, 500, 550000, 1, 'Nấm Rơm Khô sấy nhiệt loại BÚP có vị ngọt thanh tự nhiên, chế biến được nhiều món ăn thơm ngon bổ dưỡng, giúp khử nhiệt, tiêu thực, giảm huyết áp và ngừa nhồi máu cơ tim. Là sản phẩm nấm ăn thông dụng, bảo quản lâu, dễ dàng đem đi nhiều nơi và mang ra nước ngoài.', '2025-01-03 00:00:00', 24),
(61, 59, 1000, 1080000, 1, 'Nấm Rơm Khô sấy nhiệt loại BÚP có vị ngọt thanh tự nhiên, chế biến được nhiều món ăn thơm ngon bổ dưỡng, giúp khử nhiệt, tiêu thực, giảm huyết áp và ngừa nhồi máu cơ tim. Là sản phẩm nấm ăn thông dụng, bảo quản lâu, dễ dàng đem đi nhiều nơi và mang ra nước ngoài.', '2025-01-03 00:00:00', 5),
(62, 60, 200, 116000, 1, 'Nấm Hương Khô (Nấm Đông Cô Khô) dùng chế biến được rất nhiều món ăn thơm ngon, nấm giòn dai ngọt thanh, giàu dinh dưỡng, giúp ngăn ngừa ung thư, giảm tiểu đường, huyết áp và hỗ trợ tim mạch.', '2025-01-03 00:00:00', 19),
(63, 60, 500, 280000, 1, 'Nấm Hương Khô (Nấm Đông Cô Khô) dùng chế biến được rất nhiều món ăn thơm ngon, nấm giòn dai ngọt thanh, giàu dinh dưỡng, giúp ngăn ngừa ung thư, giảm tiểu đường, huyết áp và hỗ trợ tim mạch.', '2025-01-03 00:00:00', 23),
(64, 60, 1000, 540000, 1, 'Nấm Hương Khô (Nấm Đông Cô Khô) dùng chế biến được rất nhiều món ăn thơm ngon, nấm giòn dai ngọt thanh, giàu dinh dưỡng, giúp ngăn ngừa ung thư, giảm tiểu đường, huyết áp và hỗ trợ tim mạch.', '2025-01-03 00:00:00', 23),
(65, 61, 200, 3440000, 1, 'Nấm Đông Trùng Hạ Thảo Khô Sấy Thăng Hoa là nấm dược bổ dưỡng có thể chế biến nhiều món ăn ngon, món nước và món dược bồi bổ cho cơ thể, cải thiện sức khỏe và sinh lý hiệu quả.', '2025-01-03 00:00:00', 5),
(66, 62, 200, 1756000, 1, 'Nấm Bụng Dê Khô (hay Nấm Morel Khô) là nấm ăn thượng hạng có hương vị ngon ngọt tự nhiên hấp dẫn cùng hàm lượng dinh dưỡng phong phú, giúp giảm tiểu đường, hỗ trợ tim mạch và huyết áp, tăng cường sinh lý. Bạn có thể dễ dàng chế biến chỉ sau 5 phút ngâm tươi, làm được vô số món ăn từ món chay đến món mặn.', '2025-01-06 00:00:00', 4),
(68, 62, 500, 4360000, 1, 'Nấm Bụng Dê Khô (hay Nấm Morel Khô) là nấm ăn thượng hạng có hương vị ngon ngọt tự nhiên hấp dẫn cùng hàm lượng dinh dưỡng phong phú, giúp giảm tiểu đường, hỗ trợ tim mạch và huyết áp, tăng cường sinh lý. Bạn có thể dễ dàng chế biến chỉ sau 5 phút ngâm tươi, làm được vô số món ăn từ món chay đến món mặn.', '2025-01-06 00:00:00', 6),
(69, 62, 1000, 8640000, 1, 'Nấm Bụng Dê Khô (hay Nấm Morel Khô) là nấm ăn thượng hạng có hương vị ngon ngọt tự nhiên hấp dẫn cùng hàm lượng dinh dưỡng phong phú, giúp giảm tiểu đường, hỗ trợ tim mạch và huyết áp, tăng cường sinh lý. Bạn có thể dễ dàng chế biến chỉ sau 5 phút ngâm tươi, làm được vô số món ăn từ món chay đến món mặn.', '2025-01-06 00:00:00', 4),
(75, 44, 200, 23000, 1, 'Nấm Bào Ngư Xám Tươi là nấm ăn giá rẻ phù hợp với mọi nhà, nấm có vị ngọt thanh tự nhiên, độ dai nhẹ, ăn ngon khó cưỡng, có thể chế biến được rất nhiều món ngon từ món chay đến món mặn. Trong nấm có hàm lượng dinh dưỡng phong phú, các vitamin, khoáng chất, đạm, chất xơ hữu ích.', '2025-01-16 19:49:44', 6),
(76, 64, 200, 200000, 1, 'Chà bông Nấm Hương thuần chay, tiện lợi, dễ ăn, giàu dinh dưỡng, phù hợp cho nhu cầu ăn vặt lẫn ăn kèm các món với mọi món ăn như cơm, cháo, bánh cuốn, xôi,…', '2025-01-13 00:00:00', 5),
(77, 68, 200, 19000, 1, 'Chân Nấm Hương Khô hay Chân Nấm Đông Cô Khô giàu dinh dưỡng, dùng làm ruốc nấm hay chà bông nấm ăn cực thơm ngon và tiện lợi. Có thể làm lương khô cho các chuyến du lịch xa như picnic cùng gia đình hoặc bạn bè.\r\n', '2025-01-16 00:00:00', 10),
(78, 68, 500, 140000, 1, 'Chân Nấm Hương Khô hay Chân Nấm Đông Cô Khô giàu dinh dưỡng, dùng làm ruốc nấm hay chà bông nấm ăn cực thơm ngon và tiện lợi. Có thể làm lương khô cho các chuyến du lịch xa như picnic cùng gia đình hoặc bạn bè.', '2025-01-16 00:00:00', 8),
(79, 68, 1000, 265000, 1, 'Chân Nấm Hương Khô hay Chân Nấm Đông Cô Khô giàu dinh dưỡng, dùng làm ruốc nấm hay chà bông nấm ăn cực thơm ngon và tiện lợi. Có thể làm lương khô cho các chuyến du lịch xa như picnic cùng gia đình hoặc bạn bè.', '2025-01-16 00:00:00', 20),
(80, 69, 200, 360000, 1, 'Nấm Hầu Thủ Khô hay Nấm Đầu Khỉ Khô bổ dưỡng, chế biến được nhiều món ăn ngon, có dược tính tốt, hỗ trợ các vấn đề về dạ dày cực hiệu quả và giúp diệt vi khuẩn HP trong dạ dày.', '2025-01-16 00:00:00', 5),
(81, 69, 500, 905000, 1, 'Nấm Hầu Thủ Khô hay Nấm Đầu Khỉ Khô bổ dưỡng, chế biến được nhiều món ăn ngon, có dược tính tốt, hỗ trợ các vấn đề về dạ dày cực hiệu quả và giúp diệt vi khuẩn HP trong dạ dày.', '2025-01-16 00:00:00', 7),
(82, 69, 1000, 1790000, 1, 'Nấm Hầu Thủ Khô hay Nấm Đầu Khỉ Khô bổ dưỡng, chế biến được nhiều món ăn ngon, có dược tính tốt, hỗ trợ các vấn đề về dạ dày cực hiệu quả và giúp diệt vi khuẩn HP trong dạ dày.', '2025-01-16 00:00:00', 8),
(83, 70, 200, 180000, 1, 'Nấm Bào Ngư Xám Khô (L1) thơm ngon ngọt thanh, nấm có độ giòn dai sần sựt cực hấp dẫn. Chỉ với 30 phút ngâm nấm là bạn đã có thể chế biến nhiều món ăn bổ dưỡng. Trong nấm có hàm lượng dinh dưỡng phong phú, giúp cải thiện hệ tiêu hóa, kháng khuẩn và giảm cholesterol (giảm béo).', '2025-01-16 00:00:00', 5),
(84, 70, 500, 435000, 1, 'Nấm Bào Ngư Xám Khô (L1) thơm ngon ngọt thanh, nấm có độ giòn dai sần sựt cực hấp dẫn. Chỉ với 30 phút ngâm nấm là bạn đã có thể chế biến nhiều món ăn bổ dưỡng. Trong nấm có hàm lượng dinh dưỡng phong phú, giúp cải thiện hệ tiêu hóa, kháng khuẩn và giảm cholesterol (giảm béo).', '2025-01-16 00:00:00', 6),
(85, 70, 1000, 850000, 1, 'Nấm Bào Ngư Xám Khô (L1) thơm ngon ngọt thanh, nấm có độ giòn dai sần sựt cực hấp dẫn. Chỉ với 30 phút ngâm nấm là bạn đã có thể chế biến nhiều món ăn bổ dưỡng. Trong nấm có hàm lượng dinh dưỡng phong phú, giúp cải thiện hệ tiêu hóa, kháng khuẩn và giảm cholesterol (giảm béo).', '2025-01-16 00:00:00', 8),
(86, 71, 200, 25000, 1, 'Nấm Tuyết Khô (Nguyên Bông) hay Nấm Ngân Nhĩ Khô là nấm ăn giàu dinh dưỡng, tốt cho sức khỏe, giảm ho hiệu quả. Có thể chế biến nhiều món ăn hấp dẫn, đặc biệt với món chè dưỡng nhan vừa ngon vừa giúp đẹp da, thanh mát.', '2025-01-16 00:00:00', 7),
(87, 71, 500, 205000, 1, 'Nấm Tuyết Khô (Nguyên Bông) hay Nấm Ngân Nhĩ Khô là nấm ăn giàu dinh dưỡng, tốt cho sức khỏe, giảm ho hiệu quả. Có thể chế biến nhiều món ăn hấp dẫn, đặc biệt với món chè dưỡng nhan vừa ngon vừa giúp đẹp da, thanh mát.', '2025-01-16 00:00:00', 5),
(88, 71, 1000, 390000, 1, 'Nấm Tuyết Khô (Nguyên Bông) hay Nấm Ngân Nhĩ Khô là nấm ăn giàu dinh dưỡng, tốt cho sức khỏe, giảm ho hiệu quả. Có thể chế biến nhiều món ăn hấp dẫn, đặc biệt với món chè dưỡng nhan vừa ngon vừa giúp đẹp da, thanh mát.', '2025-01-16 00:00:00', 10),
(89, 72, 200, 60000, 1, 'Nấm Mèo Sợi là nấm ăn có dược tính, thơm ngon tự nhiên, giàu dinh dưỡng và dễ chế biến. Bên cạnh đó, dùng Nấm Mộc Nhĩ Thái Sợi còn giúp hỗ trợ sức khỏe tim mạch, bổ sung chất sắt và các vitamin cho cơ thể.', '2025-01-16 00:00:00', 8),
(90, 72, 500, 140000, 1, 'Nấm Mèo Sợi là nấm ăn có dược tính, thơm ngon tự nhiên, giàu dinh dưỡng và dễ chế biến. Bên cạnh đó, dùng Nấm Mộc Nhĩ Thái Sợi còn giúp hỗ trợ sức khỏe tim mạch, bổ sung chất sắt và các vitamin cho cơ thể.', '2025-01-16 00:00:00', 4),
(91, 72, 1000, 265000, 1, 'Nấm Mèo Sợi là nấm ăn có dược tính, thơm ngon tự nhiên, giàu dinh dưỡng và dễ chế biến. Bên cạnh đó, dùng Nấm Mộc Nhĩ Thái Sợi còn giúp hỗ trợ sức khỏe tim mạch, bổ sung chất sắt và các vitamin cho cơ thể.', '2025-01-16 00:00:00', 8),
(92, 73, 200, 780000, 1, 'Nấm Mối Đen Sấy Thăng Hoa là nấm khô thượng hạng loại ngon, với công nghệ sấy hiện đại giúp hoàn nguyên 99% chất lượng từ hình dáng tới dinh dưỡng. Có thể chế biến ngay chỉ sau 5 phút ngâm, cực nhanh và tiện lợi, dễ nấu được nhiều món ngon bổ dưỡng từ món chay đến món mặn.', '2025-01-16 00:00:00', 4),
(93, 73, 500, 1950000, 1, 'Nấm Mối Đen Sấy Thăng Hoa là nấm khô thượng hạng loại ngon, với công nghệ sấy hiện đại giúp hoàn nguyên 99% chất lượng từ hình dáng tới dinh dưỡng. Có thể chế biến ngay chỉ sau 5 phút ngâm, cực nhanh và tiện lợi, dễ nấu được nhiều món ngon bổ dưỡng từ món chay đến món mặn.', '2025-01-16 00:00:00', 4),
(94, 73, 1000, 3800000, 1, 'Nấm Mối Đen Sấy Thăng Hoa là nấm khô thượng hạng loại ngon, với công nghệ sấy hiện đại giúp hoàn nguyên 99% chất lượng từ hình dáng tới dinh dưỡng. Có thể chế biến ngay chỉ sau 5 phút ngâm, cực nhanh và tiện lợi, dễ nấu được nhiều món ngon bổ dưỡng từ món chay đến món mặn.', '2025-01-16 00:00:00', 7),
(95, 74, 200, 115000, 1, 'Nấm Sò Trắng Khô ngon ngọt thanh, thịt nấm giòn dai, thơm bùi, thường dùng làm chà bông (ruốc) hoặc chế biến với nhiều món ăn ngon bổ dưỡng, tốt cho sức khỏe, hỗ trợ hệ tiêu hóa. Loại 1 chuẩn thượng hạng, nấm lựa sạch đẹp nhất cho chế biến.', '2025-01-16 00:00:00', 12),
(96, 75, 200, 2500000, 1, 'Bào Tử Nấm Linh Chi Đỏ giúp tăng cường miễn dịch, hỗ trợ hạ huyết áp, ngừa ung thư, giảm triệu chứng tiểu đường và tăng cường chức năng gan hiệu quả. Người lớn tuổi ngủ ngon hơn, khỏe khoắn hơn.', '2025-01-16 00:00:00', 3),
(97, 75, 500, 6000000, 1, 'Bào Tử Nấm Linh Chi Đỏ giúp tăng cường miễn dịch, hỗ trợ hạ huyết áp, ngừa ung thư, giảm triệu chứng tiểu đường và tăng cường chức năng gan hiệu quả. Người lớn tuổi ngủ ngon hơn, khỏe khoắn hơn.', '2025-01-16 00:00:00', 1),
(98, 75, 1000, 10000000, 1, 'Bào Tử Nấm Linh Chi Đỏ giúp tăng cường miễn dịch, hỗ trợ hạ huyết áp, ngừa ung thư, giảm triệu chứng tiểu đường và tăng cường chức năng gan hiệu quả. Người lớn tuổi ngủ ngon hơn, khỏe khoắn hơn.', '2025-01-16 00:00:00', 1),
(99, 76, 200, 80000, 1, 'Bột Nấm Mèo (Bột Nấm Mộc Nhĩ) dùng làm gia vị nêm cho các món nước như soup, cháo hoặc canh,… thêm dinh dưỡng, còn có thể làm gia vị ướp đồ ăn như thịt, hải sản,… cực kỳ thơm ngon, tạo sự giòn dai cho món ăn, tiện lợi vô cùng, giàu chất sắt và bổ máu nhất trong các loại nấm.', '2025-01-16 00:00:00', 10),
(100, 76, 500, 175000, 1, 'Bột Nấm Mèo (Bột Nấm Mộc Nhĩ) dùng làm gia vị nêm cho các món nước như soup, cháo hoặc canh,… thêm dinh dưỡng, còn có thể làm gia vị ướp đồ ăn như thịt, hải sản,… cực kỳ thơm ngon, tạo sự giòn dai cho món ăn, tiện lợi vô cùng, giàu chất sắt và bổ máu nhất trong các loại nấm.', '2025-01-16 00:00:00', 12),
(101, 76, 1000, 325000, 1, 'Bột Nấm Mèo (Bột Nấm Mộc Nhĩ) dùng làm gia vị nêm cho các món nước như soup, cháo hoặc canh,… thêm dinh dưỡng, còn có thể làm gia vị ướp đồ ăn như thịt, hải sản,… cực kỳ thơm ngon, tạo sự giòn dai cho món ăn, tiện lợi vô cùng, giàu chất sắt và bổ máu nhất trong các loại nấm.', '2025-01-16 00:00:00', 4),
(102, 77, 200, 65000, 1, 'Bột Nấm Rơm được dùng để làm gia vị nêm (bột nêm) cho các món soup, cháo hoặc canh, hay còn có thể làm gia vị ướp đồ ăn như ướp thịt, hải sản,… cực kỳ thơm ngon và bổ dưỡng tuyệt đối, tiện lợi vô cùng.', '2025-01-16 00:00:00', 10),
(103, 77, 500, 550000, 1, 'Bột Nấm Rơm được dùng để làm gia vị nêm (bột nêm) cho các món soup, cháo hoặc canh, hay còn có thể làm gia vị ướp đồ ăn như ướp thịt, hải sản,… cực kỳ thơm ngon và bổ dưỡng tuyệt đối, tiện lợi vô cùng.', '2025-01-16 00:00:00', 12),
(104, 77, 1000, 950000, 1, 'Bột Nấm Rơm được dùng để làm gia vị nêm (bột nêm) cho các món soup, cháo hoặc canh, hay còn có thể làm gia vị ướp đồ ăn như ướp thịt, hải sản,… cực kỳ thơm ngon và bổ dưỡng tuyệt đối, tiện lợi vô cùng.', '2025-01-16 00:00:00', 2),
(105, 78, 200, 200000, 1, 'Chà Bông Nấm Hương Cháy Tỏi là món ăn nhanh và tiện lợi, thuần chay, có thể ăn kèm với bánh mì, cơm nóng, cháo,… rất ngon hoặc ăn vặt tùy thích mọi lúc với độ ngon dai của Nấm Hương và vị tỏi thơm phức.', '2025-01-16 00:00:00', 2),
(106, 78, 500, 450000, 1, 'Chà Bông Nấm Hương Cháy Tỏi là món ăn nhanh và tiện lợi, thuần chay, có thể ăn kèm với bánh mì, cơm nóng, cháo,… rất ngon hoặc ăn vặt tùy thích mọi lúc với độ ngon dai của Nấm Hương và vị tỏi thơm phức.', '2025-01-16 00:00:00', 2),
(107, 78, 1000, 900000, 1, 'Chà Bông Nấm Hương Cháy Tỏi là món ăn nhanh và tiện lợi, thuần chay, có thể ăn kèm với bánh mì, cơm nóng, cháo,… rất ngon hoặc ăn vặt tùy thích mọi lúc với độ ngon dai của Nấm Hương và vị tỏi thơm phức.', '2025-01-16 00:00:00', 4),
(108, 79, 200, 30000, 1, 'Bột Nấm Bào Ngư Xám mang vị ngọt thanh tự nhiên, dùng làm gia vị nêm giúp cho các món soup, cháo hoặc canh,… thêm vị ngọt nhẹ, hay còn có thể làm gia vị chay/mặn ướp đồ ăn như ướp thịt, hải sản,… cực kỳ thơm ngon, tiện lợi và giàu giá trị dinh dưỡng.', '2025-01-16 00:00:00', 4),
(109, 79, 500, 200000, 1, 'Bột Nấm Bào Ngư Xám mang vị ngọt thanh tự nhiên, dùng làm gia vị nêm giúp cho các món soup, cháo hoặc canh,… thêm vị ngọt nhẹ, hay còn có thể làm gia vị chay/mặn ướp đồ ăn như ướp thịt, hải sản,… cực kỳ thơm ngon, tiện lợi và giàu giá trị dinh dưỡng.', '2025-01-16 00:00:00', 2),
(110, 79, 1000, 400000, 1, 'Bột Nấm Bào Ngư Xám mang vị ngọt thanh tự nhiên, dùng làm gia vị nêm giúp cho các món soup, cháo hoặc canh,… thêm vị ngọt nhẹ, hay còn có thể làm gia vị chay/mặn ướp đồ ăn như ướp thịt, hải sản,… cực kỳ thơm ngon, tiện lợi và giàu giá trị dinh dưỡng.', '2025-01-16 00:00:00', 3),
(111, 80, 200, 300000, 1, 'Nấm Linh Chi Đỏ Thái Lát là nấm dược vị thuốc, đắng nhẹ như vị trà, cực tốt cho sức khỏe, giúp hạ huyết áp, ngừa ung thư, giảm tiểu đường và tăng cường chức năng gan hiệu quả.', '2025-01-16 00:00:00', 3),
(112, 80, 500, 600000, 1, 'Nấm Linh Chi Đỏ Thái Lát là nấm dược vị thuốc, đắng nhẹ như vị trà, cực tốt cho sức khỏe, giúp hạ huyết áp, ngừa ung thư, giảm tiểu đường và tăng cường chức năng gan hiệu quả.', '2025-01-16 00:00:00', 6),
(113, 80, 1000, 1000000, 1, 'Nấm Linh Chi Đỏ Thái Lát là nấm dược vị thuốc, đắng nhẹ như vị trà, cực tốt cho sức khỏe, giúp hạ huyết áp, ngừa ung thư, giảm tiểu đường và tăng cường chức năng gan hiệu quả.', '2025-01-16 00:00:00', 4),
(114, 81, 200, 60000, 1, 'Bột Nấm Linh Chi Đỏ dùng cực tốt cho sức khỏe, tăng sức đề kháng tự nhiên, giúp ngừa ung thư, giảm tiểu đường, hạ huyết áp và tăng cường chức năng gan hiệu quả.', '2025-01-16 00:00:00', 5),
(115, 81, 500, 400000, 1, 'Bột Nấm Linh Chi Đỏ dùng cực tốt cho sức khỏe, tăng sức đề kháng tự nhiên, giúp ngừa ung thư, giảm tiểu đường, hạ huyết áp và tăng cường chức năng gan hiệu quả.', '2025-01-16 00:00:00', 5),
(116, 81, 1000, 800000, 1, 'Bột Nấm Linh Chi Đỏ dùng cực tốt cho sức khỏe, tăng sức đề kháng tự nhiên, giúp ngừa ung thư, giảm tiểu đường, hạ huyết áp và tăng cường chức năng gan hiệu quả.', '2025-01-16 00:00:00', 1),
(117, 82, 200, 250000, 1, 'Nấm Linh Chi Đỏ (Xích Chi) Nguyên Tai là nấm dược liệu tốt cho sức khỏe với lớp Bào Tử dày còn trên tai nấm, giúp hỗ trợ tim mạch, huyết áp, tiểu đường, ngừa ung thư và tăng cường chức năng gan hiệu quả, cải thiện giấc ngủ ngon, bổ sung thêm năng lượng và đề kháng.', '2025-01-16 00:00:00', 4),
(118, 82, 500, 500000, 1, 'Nấm Linh Chi Đỏ (Xích Chi) Nguyên Tai là nấm dược liệu tốt cho sức khỏe với lớp Bào Tử dày còn trên tai nấm, giúp hỗ trợ tim mạch, huyết áp, tiểu đường, ngừa ung thư và tăng cường chức năng gan hiệu quả, cải thiện giấc ngủ ngon, bổ sung thêm năng lượng và đề kháng.', '2025-01-16 00:00:00', 5),
(119, 82, 1000, 1000000, 1, 'Nấm Linh Chi Đỏ (Xích Chi) Nguyên Tai là nấm dược liệu tốt cho sức khỏe với lớp Bào Tử dày còn trên tai nấm, giúp hỗ trợ tim mạch, huyết áp, tiểu đường, ngừa ung thư và tăng cường chức năng gan hiệu quả, cải thiện giấc ngủ ngon, bổ sung thêm năng lượng và đề kháng.', '2025-01-16 00:00:00', 1),
(120, 83, 200, 1000000, 1, 'Nấm Tâm Trúc Khô (hay Nấm Trúc Sanh Khô) là nấm ăn cao cấp và giàu dinh dưỡng, chế biến được nhiều món ăn chay hoặc mặn thơm ngon bổ dưỡng, giúp cải thiện và bồi bổ sức khỏe hiệu quả.', '2025-01-16 00:00:00', 3),
(121, 83, 1000, 2000000, 1, 'Nấm Tâm Trúc Khô (hay Nấm Trúc Sanh Khô) là nấm ăn cao cấp và giàu dinh dưỡng, chế biến được nhiều món ăn chay hoặc mặn thơm ngon bổ dưỡng, giúp cải thiện và bồi bổ sức khỏe hiệu quả.', '2025-01-16 00:00:00', 5),
(122, 83, 500, 1500000, 1, 'Nấm Tâm Trúc Khô (hay Nấm Trúc Sanh Khô) là nấm ăn cao cấp và giàu dinh dưỡng, chế biến được nhiều món ăn chay hoặc mặn thơm ngon bổ dưỡng, giúp cải thiện và bồi bổ sức khỏe hiệu quả.', '2025-01-16 00:00:00', 2),
(123, 84, 200, 3300000, 1, 'Nấm Mối Khô Tự Nhiên được sấy thăng hoa giúp bảo toàn trên 98% chất lượng từ độ ngon, vị ngọt tự nhiên đến giá trị dinh dưỡng. Nấm Mối Sấy Khô có thể dùng làm quà tặng, bảo quản dài hạn, dùng tiện lợi và dễ dàng ở bất cứ đâu. Đặc biệt, độ ngon còn giữ được 9/10 so với nấm tươi, ăn là ghiền.', '2025-01-16 00:00:00', 2),
(124, 84, 500, 8320000, 1, 'Nấm Mối Khô Tự Nhiên được sấy thăng hoa giúp bảo toàn trên 98% chất lượng từ độ ngon, vị ngọt tự nhiên đến giá trị dinh dưỡng. Nấm Mối Sấy Khô có thể dùng làm quà tặng, bảo quản dài hạn, dùng tiện lợi và dễ dàng ở bất cứ đâu. Đặc biệt, độ ngon còn giữ được 9/10 so với nấm tươi, ăn là ghiền.', '2025-01-16 00:00:00', 3),
(125, 84, 1000, 16000000, 1, 'Nấm Mối Khô Tự Nhiên được sấy thăng hoa giúp bảo toàn trên 98% chất lượng từ độ ngon, vị ngọt tự nhiên đến giá trị dinh dưỡng. Nấm Mối Sấy Khô có thể dùng làm quà tặng, bảo quản dài hạn, dùng tiện lợi và dễ dàng ở bất cứ đâu. Đặc biệt, độ ngon còn giữ được 9/10 so với nấm tươi, ăn là ghiền.', '2025-01-16 00:00:00', 1),
(126, 61, 500, 9000000, 1, 'Nấm Đông Trùng Hạ Thảo Khô Sấy Thăng Hoa là nấm dược bổ dưỡng có thể chế biến nhiều món ăn ngon, món nước và món dược bồi bổ cho cơ thể, cải thiện sức khỏe và sinh lý hiệu quả.', '2025-01-17 00:00:00', 4),
(127, 61, 1000, 18500000, 1, 'Nấm Đông Trùng Hạ Thảo Khô Sấy Thăng Hoa là nấm dược bổ dưỡng có thể chế biến nhiều món ăn ngon, món nước và món dược bồi bổ cho cơ thể, cải thiện sức khỏe và sinh lý hiệu quả.', '2025-01-17 00:00:00', 5),
(130, 87, 200, 270000, 1, 'Nấm Mối Tươi Búp Tự Nhiên là đặc sản miền quê, sản vật thiên nhiên ban tặng hàng năm. Tại Nấm Xanh, bạn sẽ được sở hữu Nấm Mối Tươi cực phẩm, đảm bảo được độ ngon và chất lượng tuyệt hảo với 90% Nấm Mối Búp có hàm lượng dinh dưỡng cao, vị ngọt thanh tự nhiên khó cưỡng.', '2025-04-10 00:00:00', 12),
(131, 88, 200, 120000, 1, 'Test', '2025-04-10 00:00:00', 12),
(132, 88, 200, 120000, 1, 'Test', '2025-04-10 00:00:00', 12),
(133, 87, 200, 270000, 1, 'Nấm Mối Tươi Búp Tự Nhiên là đặc sản miền quê, sản vật thiên nhiên ban tặng hàng năm. Tại Nấm Xanh, bạn sẽ được sở hữu Nấm Mối Tươi cực phẩm, đảm bảo được độ ngon và chất lượng tuyệt hảo với 90% Nấm Mối Búp có hàm lượng dinh dưỡng cao, vị ngọt thanh tự nhiên khó cưỡng.', '2025-04-10 00:00:00', 12),
(134, 87, 500, 540000, 1, 'Nấm Mối Tươi Búp Tự Nhiên là đặc sản miền quê, sản vật thiên nhiên ban tặng hàng năm. Tại Nấm Xanh, bạn sẽ được sở hữu Nấm Mối Tươi cực phẩm, đảm bảo được độ ngon và chất lượng tuyệt hảo với 90% Nấm Mối Búp có hàm lượng dinh dưỡng cao, vị ngọt thanh tự nhiên khó cưỡng.', '2025-04-10 00:00:00', 11),
(135, 87, 1000, 1080000, 1, 'Nấm Mối Tươi Búp Tự Nhiên là đặc sản miền quê, sản vật thiên nhiên ban tặng hàng năm. Tại Nấm Xanh, bạn sẽ được sở hữu Nấm Mối Tươi cực phẩm, đảm bảo được độ ngon và chất lượng tuyệt hảo với 90% Nấm Mối Búp có hàm lượng dinh dưỡng cao, vị ngọt thanh tự nhiên khó cưỡng.', '2025-04-10 00:00:00', 12),
(136, 87, 1000, 1080000, 1, 'Nấm Mối Tươi Búp Tự Nhiên là đặc sản miền quê, sản vật thiên nhiên ban tặng hàng năm. Tại Nấm Xanh, bạn sẽ được sở hữu Nấm Mối Tươi cực phẩm, đảm bảo được độ ngon và chất lượng tuyệt hảo với 90% Nấm Mối Búp có hàm lượng dinh dưỡng cao, vị ngọt thanh tự nhiên khó cưỡng.', '2025-04-10 00:00:00', 12),
(137, 89, 200, 34000, 1, 'Nấm Chân Dài Tươi (hay Nấm Loa Kèn Tươi) siêu ngon với chất thịt nấm chắc và ngọt vị dễ ghiền. Có thể chế biến được nhiều món ngon như lẩu, canh, xào,… chay mặn đều dùng được. Hàm lượng dinh dưỡng phong phú tốt cho sức khỏe.', '2025-04-10 00:00:00', 5),
(138, 89, 500, 68000, 1, 'Nấm Chân Dài Tươi (hay Nấm Loa Kèn Tươi) siêu ngon với chất thịt nấm chắc và ngọt vị dễ ghiền. Có thể chế biến được nhiều món ngon như lẩu, canh, xào,… chay mặn đều dùng được. Hàm lượng dinh dưỡng phong phú tốt cho sức khỏe.', '2025-04-10 00:00:00', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `ratingRank` int(11) NOT NULL,
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createDate` datetime DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `roleName` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `isActive` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `roleName`, `description`, `isActive`) VALUES
(1, 'Admin', 'Quản trị viên, có quyền quản lý toàn bộ hệ thống', b'1'),
(2, 'User', 'Khách hàng, có quyền mua sản phẩm và quản lý đơn hàng của mình', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `idVariant` int(11) DEFAULT NULL,
  `salePercent` int(11) DEFAULT NULL,
  `saleStartDate` datetime DEFAULT NULL,
  `saleEndDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sales`
--

INSERT INTO `sales` (`id`, `idVariant`, `salePercent`, `saleStartDate`, `saleEndDate`) VALUES
(18, 27, 5, '2024-12-28 00:00:00', '2024-12-30 00:00:00'),
(19, 28, 7, '2024-12-28 00:00:00', '2024-12-31 00:00:00'),
(20, 30, 2, '2024-12-28 00:00:00', '2024-12-31 00:00:00'),
(21, 31, 4, '2024-12-28 00:00:00', '2024-12-30 00:00:00'),
(22, 32, 5, '2024-12-28 00:00:00', '2024-12-29 00:00:00'),
(23, 33, 8, '2024-12-28 00:00:00', '2024-12-31 00:00:00'),
(24, 34, 4, '2024-12-28 00:00:00', '2024-12-30 00:00:00'),
(25, 35, 2, '2024-12-28 00:00:00', '2024-12-29 00:00:00'),
(28, 38, 4, '2024-12-29 00:00:00', '2024-12-29 00:00:00'),
(29, 39, 5, '2024-12-31 00:00:00', '2025-01-02 00:00:00'),
(30, 40, 3, '2024-12-31 00:00:00', '2025-01-02 00:00:00'),
(31, 41, 2, '2024-12-31 00:00:00', '2025-01-01 00:00:00'),
(32, 43, 3, '2024-12-31 00:00:00', '2025-01-03 00:00:00'),
(33, 44, 7, '2024-12-31 00:00:00', '2025-01-01 00:00:00'),
(34, 45, 9, '2024-12-31 00:00:00', '2025-01-02 00:00:00'),
(35, 46, 12, '2024-12-31 00:00:00', '2025-01-03 00:00:00'),
(36, 47, 3, '2024-12-31 00:00:00', '2025-01-01 00:00:00'),
(37, 48, 3, '2024-12-31 00:00:00', '2024-12-31 00:00:00'),
(38, 49, 3, '2024-12-31 00:00:00', '2024-12-31 00:00:00'),
(39, 50, 3, '2024-12-31 00:00:00', '2025-01-01 00:00:00'),
(40, 51, 3, '2024-12-31 00:00:00', '2025-01-02 00:00:00'),
(41, 52, 6, '2024-12-31 00:00:00', '2025-01-01 00:00:00'),
(42, 53, 3, '2024-12-31 00:00:00', '2025-01-01 00:00:00'),
(43, 54, 4, '2024-12-31 00:00:00', '2025-01-02 00:00:00'),
(44, 55, 4, '2024-12-31 00:00:00', '2025-01-01 00:00:00'),
(45, 56, 3, '2025-01-03 00:00:00', '2025-01-05 00:00:00'),
(46, 57, 5, '2025-01-03 00:00:00', '2025-01-05 00:00:00'),
(47, 58, 2, '2025-01-03 00:00:00', '2025-01-08 00:00:00'),
(48, 59, 4, '2025-01-03 00:00:00', '2025-01-05 00:00:00'),
(49, 60, 5, '2025-01-03 00:00:00', '2025-01-04 00:00:00'),
(50, 61, 5, '2025-01-04 00:00:00', '2025-01-04 00:00:00'),
(51, 62, 1, '2025-01-03 00:00:00', '2025-01-17 00:00:00'),
(52, 63, 3, '2025-01-03 00:00:00', '2025-01-11 00:00:00'),
(53, 64, 3, '2025-01-04 00:00:00', '2025-01-12 00:00:00'),
(54, 65, 10, '2025-01-03 00:00:00', '2025-01-05 00:00:00'),
(55, 66, 6, '2025-01-06 00:00:00', '2025-01-10 00:00:00'),
(56, 68, 6, '2025-01-06 00:00:00', '2025-01-09 00:00:00'),
(57, 69, 7, '2025-01-06 00:00:00', '2025-01-09 00:00:00'),
(59, 75, 3, '2025-01-13 00:00:00', '2025-01-15 00:00:00'),
(60, 76, 7, '2025-01-13 00:00:00', '2025-01-15 00:00:00'),
(61, 77, 5, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(62, 78, 6, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(63, 79, 7, '2025-01-16 00:00:00', '2025-01-18 00:00:00'),
(64, 80, 6, '2025-01-16 00:00:00', '2025-01-16 00:00:00'),
(65, 81, 6, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(66, 82, 10, '2025-01-16 00:00:00', '2025-01-16 00:00:00'),
(67, 83, 7, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(68, 84, 7, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(69, 85, 0, '2025-01-16 00:00:00', '2025-01-16 00:00:00'),
(70, 86, 8, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(71, 87, 4, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(72, 88, 4, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(73, 89, 1, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(74, 90, 5, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(75, 91, 7, '2025-01-16 00:00:00', '2025-01-18 00:00:00'),
(76, 92, 6, '2025-01-16 00:00:00', '2025-01-18 00:00:00'),
(77, 93, 7, '2025-01-16 00:00:00', '2025-01-18 00:00:00'),
(78, 94, 10, '2025-01-16 00:00:00', '2025-01-31 00:00:00'),
(79, 95, 3, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(80, 96, 5, '2025-01-17 00:00:00', '2025-01-18 00:00:00'),
(81, 97, 7, '2025-01-16 00:00:00', '2025-01-16 00:00:00'),
(82, 98, 7, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(83, 99, 1, '2025-01-16 00:00:00', '2025-01-16 00:00:00'),
(84, 100, 0, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(85, 101, 1, '2025-01-16 00:00:00', '2025-01-24 00:00:00'),
(86, 102, 1, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(87, 103, 5, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(88, 104, 3, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(89, 105, 3, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(90, 106, 3, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(91, 107, 4, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(92, 108, 5, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(93, 109, 2, '2025-01-16 00:00:00', '2025-01-18 00:00:00'),
(94, 110, 5, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(95, 111, 2, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(96, 112, 5, '2025-01-16 00:00:00', '2025-01-18 00:00:00'),
(97, 113, 6, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(98, 114, 4, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(99, 115, 6, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(100, 116, 5, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(101, 117, 8, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(102, 118, 7, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(103, 119, 3, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(104, 120, 7, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(105, 121, 6, '2025-01-16 00:00:00', '2025-01-25 00:00:00'),
(106, 122, 8, '2025-01-16 00:00:00', '2025-01-18 00:00:00'),
(107, 123, 7, '2025-01-16 00:00:00', '2025-01-17 00:00:00'),
(108, 124, 7, '2025-01-16 00:00:00', '2025-01-18 00:00:00'),
(109, 125, 10, '2025-01-16 00:00:00', '2025-01-19 00:00:00'),
(110, 126, 3, '2025-01-17 00:00:00', '2025-01-18 00:00:00'),
(111, 127, 3, '2025-01-17 00:00:00', '2025-01-17 00:00:00'),
(114, 132, 12, '2025-04-10 09:40:00', '2025-04-11 09:40:00'),
(115, 132, 11, '2025-04-12 09:40:00', '2025-04-15 09:40:00'),
(116, 133, 12, '2025-04-10 10:23:00', '2025-04-12 10:23:00'),
(117, 133, 20, '2025-04-13 10:23:00', '2025-04-16 10:23:00'),
(118, 134, 12, '2025-04-11 10:54:00', '2025-04-12 10:54:00'),
(119, 135, 12, '2025-04-10 10:23:00', '2025-04-12 10:23:00'),
(120, 135, 20, '2025-04-13 10:23:00', '2025-04-16 10:23:00'),
(121, 136, 12, '2025-04-10 10:23:00', '2025-04-12 10:23:00'),
(122, 136, 20, '2025-04-13 10:23:00', '2025-04-16 10:23:00'),
(123, 137, 12, '2025-04-10 15:11:00', '2025-04-11 15:11:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Shipping`
--

CREATE TABLE `Shipping` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shippingfee` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Shipping`
--

INSERT INTO `Shipping` (`id`, `name`, `shippingfee`) VALUES
(3, 'Vận Chuyển Nhanh', 32222),
(8, 'Hoả Tốc', 100000),
(9, 'Tiết Kiệm', 10000),
(13, 'Vận Chuyển Nhanh', 344343000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store`
--

CREATE TABLE `store` (
  `id` int(11) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `store`
--

INSERT INTO `store` (`id`, `store_name`, `address`, `phone`, `created_at`) VALUES
(1, 'Cửa Hàng Sài Gòn 1', '1 Lê Lợi, Quận 1, TP.HCM', '0903000001', '2025-03-23 17:00:00'),
(2, 'Cửa Hàng Sài Gòn 2', '2 Nguyễn Huệ, Quận 1, TP.HCM', '0903000002', '2025-03-23 17:00:00'),
(3, 'Cửa Hàng Tân Bình', '3 Trường Chinh, Quận Tân Bình, TP.HCM', '0903000003', '2025-03-23 17:00:00'),
(4, 'Cửa Hàng Gò Vấp', '4 Quang Trung, Quận Gò Vấp, TP.HCM', '0903000004', '2025-03-23 17:00:00'),
(5, 'Cửa Hàng Quận 3', '5 Cách Mạng Tháng 8, Quận 3, TP.HCM', '0903000005', '2025-03-23 17:00:00'),
(6, 'Cửa Hàng Quận 7', '6 Nguyễn Văn Linh, Quận 7, TP.HCM', '0903000006', '2025-03-23 17:00:00'),
(7, 'Cửa Hàng Đà Nẵng 1', '7 Lê Duẩn, Quận Hải Châu, Đà Nẵng', '0903000007', '2025-03-23 17:00:00'),
(8, 'Cửa Hàng Đà Nẵng 2', '8 Nguyễn Văn Thoại, Quận Ngũ Hành Sơn, Đà Nẵng', '0903000008', '2025-03-23 17:00:00'),
(9, 'Cửa Hàng Thanh Khê', '9 Điện Biên Phủ, Quận Thanh Khê, Đà Nẵng', '0903000009', '2025-03-23 17:00:00'),
(10, 'Cửa Hàng Huế', '10 Hùng Vương, TP. Huế', '0903000010', '2025-03-23 17:00:00'),
(11, 'Cửa Hàng Hoàn Kiếm', '11 Trần Phú, Quận Hoàn Kiếm, Hà Nội', '0903000011', '2025-03-23 17:00:00'),
(12, 'Cửa Hàng Thanh Xuân', '12 Nguyễn Trãi, Quận Thanh Xuân, Hà Nội', '0903000012', '2025-03-23 17:00:00'),
(13, 'Cửa Hàng Cầu Giấy', '13 Cầu Giấy, Quận Cầu Giấy, Hà Nội', '0903000013', '2025-03-23 17:00:00'),
(14, 'Cửa Hàng Xuân Thủy', '14 Xuân Thủy, Quận Cầu Giấy, Hà Nội', '0903000014', '2025-03-23 17:00:00'),
(15, 'Cửa Hàng Long Biên', '15 Nguyễn Văn Cừ, Quận Long Biên, Hà Nội', '0903000015', '2025-03-23 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `store_products`
--

CREATE TABLE `store_products` (
  `id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock` int(11) NOT NULL CHECK (`stock` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `supplierName` varchar(255) NOT NULL,
  `contactInfo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `isActive` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplierName`, `contactInfo`, `address`, `isActive`) VALUES
(1, 'ABC Supplies', 'contact@abc.com', '101 Supplier Lane', b'1'),
(2, 'XYZ Products', 'sales@xyz.com', '202 Supplier Blvd', b'1'),
(3, 'ABC Supplies', 'contact@hoaphat.vn', '56 Đường Cầu Giấy, Hà Nội', b'1'),
(4, 'Công Ty TNHH Minh Long', 'info@minhlong.vn', '102 Đường 3/2, TP. HCM', b'1'),
(5, 'Công Ty TNHH Thương Mại Nam Á', 'contact@nama.vn', '45 Đường Lê Lợi, Đà Nẵng', b'0'),
(6, 'Công Ty TNHH Dịch Vụ Thiên Hòa', 'support@thienhoa.vn', '78 Đường Nguyễn Huệ, Huế', b'1'),
(7, 'Công Ty TNHH Phương Đông Hoà', 'phuongdong@supply.vn', '12 Đường Trần Phú, Hải Phòng', b'1'),
(8, 'Công ty Hoàng Vũ', 'vufit2004@icloud.com', '24 QL80 Quận Ninh Kiều, TP.Cần thơ', b'1'),
(9, 'Công ty Hoàng Vũ Yasuo', 'vufit2004@icloud.com', 'asdasd', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactionHistory`
--

CREATE TABLE `transactionHistory` (
  `idHistory` int(11) NOT NULL,
  `transactionDate` date NOT NULL,
  `totalPrice` float NOT NULL,
  `idOrder` int(11) DEFAULT NULL,
  `idUser` int(11) DEFAULT NULL,
  `paymentMethod` varchar(255) DEFAULT NULL,
  `shippingAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `transactionHistory`
--

INSERT INTO `transactionHistory` (`idHistory`, `transactionDate`, `totalPrice`, `idOrder`, `idUser`, `paymentMethod`, `shippingAddress`) VALUES
(11, '2025-01-05', 1572000, 33, 1, 'COD-Thanh toán khi nhận hàng', 'Nguyễn Bùi Hoàng Vũ, 0868032463, hoangvu@gmail.com, 23, Đống Đa, Hà Nội'),
(12, '2025-01-05', 1031120, 34, 3, 'MOMO-Thanh toán MOMO', 'Nguyễn Bùi Hoàng Vũ, 0868032463, hoangvu@gmail.com, 23, Ninh Kiều, Cần Thơ'),
(13, '2025-01-05', 578520, 35, 2, 'COD-Thanh toán khi nhận hàng', 'Nguyễn Bùi Hoàng Vũ, 0868032463, hoangvu031020400@gmail.com, 32, Liên Chiểu, Đà Nẵng'),
(14, '2025-01-05', 482760, 36, 3, 'COD-Thanh toán khi nhận hàng', 'hkjashdkjh, 09898078, hjkhk@gmail.com, 43, Sơn Trà, Đà Nẵng'),
(15, '2025-01-05', 253440, 37, 3, 'COD-Thanh toán khi nhận hàng', 'Nguyễn Bùi Honagf Vu, 097898987, hoan@gmail.com, 23, Quận 2, Hồ Chí Minh'),
(16, '2025-01-05', 403200, 38, 2, 'COD-Thanh toán khi nhận hàng', 'dsfsdfsdf, 87234923, hh@gmail.com, 23, Quận 2, Hồ Chí Minh'),
(17, '2025-01-08', 184300, 45, 1, 'BANK-Chuyển khoản ngân hàng', 'ádasdasd, 0867867654, nmbmn@gmail.com, 34234, Quận 4, Hồ Chí Minh. Notes: Giao chậm'),
(18, '2025-01-08', 218080, 46, 1, 'BANK-Chuyển khoản ngân hàng', 'asdasdasd, 0875674574, hjkk@gmail.com, 24, Quận 3, Hồ Chí Minh. Notes: Giao nhanh'),
(19, '2025-01-09', 15480000, 47, 2, 'COD-Thanh toán khi nhận hàng', 'Nguyễn Bùi Hoàng Vũ, 0907440304, hoangvu@gmail.com, 199, Quận 1, Hồ Chí Minh. Notes: Che tên'),
(20, '2025-01-09', 1269730, 48, 3, 'COD-Thanh toán khi nhận hàng', 'Hoàng Vũ, 09780037978, hoangvu@gmail.com, 24, Quận 3, Hồ Chí Minh. Notes: Giao nhanh'),
(21, '2025-01-09', 470400, 49, 3, 'COD-Thanh toán khi nhận hàng', 'Hoangf Vux, 0988779878, hoangvu@gmail.com, 23, Quận 2, Hồ Chí Minh'),
(22, '2025-01-10', 5383440, 50, 2, 'COD-Thanh toán khi nhận hàng', 'Hoàng Vũ, 0868032463, hoangvu@gmail.com, 24, Quận 2, Hồ Chí Minh. Notes: Giao nhanh lên nhé'),
(23, '2025-01-10', 253440, 51, 3, 'COD-Thanh toán khi nhận hàng', 'NGadas, 908390284, jlkj@gmail.com, 23, Liên Chiểu, Đà Nẵng'),
(24, '2025-01-11', 253440, 52, 7, 'COD-Thanh toán khi nhận hàng', 'Nguyen Bui Honagf , 324234, hhh@gmail.com, qưe, Quận 4, Hồ Chí Minh'),
(25, '2025-01-16', 147840, 53, 7, 'COD-Thanh toán khi nhận hàng', 'Dung, 0909399199, hoangvu@gmail.com, Khu thảo điền , Quận 2, Hồ Chí Minh. Notes: Giao nhanh nha'),
(35, '2025-01-17', 491370, 63, 20, 'BANK-Chuyển khoản ngân hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: Giao nhanh hộ nha'),
(36, '2025-01-18', 6602560, 64, 3, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: Giao nhanh'),
(37, '2025-01-19', 220800, 65, 3, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Ba Đình, Hà Nội'),
(38, '2025-01-19', 114840, 66, 20, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Ba Đình, Hà Nội'),
(39, '2025-01-19', 38220, 67, 20, 'MOMO-Thanh toán MOMO', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội'),
(40, '2025-01-21', 27260, 68, 23, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: asdasdasd'),
(41, '2025-01-21', 29100, 69, 22, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Ba Đình, Hà Nội. Notes: sss'),
(42, '2025-01-21', 22310, 70, 22, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Ba Đình, Hà Nội. Notes: s'),
(43, '2025-01-21', 129100, 71, 22, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội'),
(44, '2025-01-21', 142540, 72, 22, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Ba Đình, Hà Nội. Notes: àdasf'),
(45, '2025-01-21', 219022, 73, 22, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội'),
(46, '2025-03-26', 234572, 74, 26, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: vx'),
(47, '2025-03-26', 163262, 75, 26, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: fvxcv'),
(48, '2025-03-26', 59482, 76, 26, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Cầu Giấy, Hà Nội. Notes: asdasd'),
(49, '2025-03-26', 59482, 77, 26, 'MOMO-Thanh toán MOMO', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Cầu Giấy, Hà Nội. Notes: asda'),
(50, '2025-03-26', 37260, 78, 26, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Đống Đa, Hà Nội'),
(51, '2025-03-26', 114002, 79, 26, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội. Notes: asd'),
(52, '2025-03-26', 77822, 80, 27, 'BANK-Chuyển khoản ngân hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Đống Đa, Hà Nội'),
(53, '2025-03-26', 349923000, 81, 27, 'BANK-Chuyển khoản ngân hàng', 'adasd, 0868032463, hao@gmail.com, 123, Ba Đình, Hà Nội. Notes: ádasdasd'),
(54, '2025-03-31', 225040, 82, 31, 'COD-Thanh toán khi nhận hàng', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Hoàn Kiếm, Hà Nội'),
(55, '2025-03-31', 604302, 83, 31, 'MOMO-Thanh toán MOMO', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Đống Đa, Hà Nội'),
(56, '2025-04-04', 4332970, 84, 31, 'on', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, 892, 89'),
(57, '2025-04-04', 122310, 85, 23, 'on', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, 889, 89'),
(58, '2025-04-04', 303822, 86, 31, 'on', 'Nguyên Bùi Hoàng Vũ, 0868032463, hvunguyen@icloud.com, 1222, Huyện Long Điền, Tỉnh Bà Rịa - Vũng Tàu');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `UserLog`
--

CREATE TABLE `UserLog` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `action_level` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `action_time` datetime DEFAULT current_timestamp(),
  `location` varchar(255) DEFAULT NULL,
  `old_data` text DEFAULT NULL,
  `new_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `userPassword` varchar(100) DEFAULT NULL,
  `userName` varchar(100) NOT NULL,
  `phoneNumber` char(10) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `companyName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT 0,
  `idFavoriteProduct` int(11) DEFAULT NULL,
  `idRole` int(11) DEFAULT 0,
  `createDate` datetime DEFAULT current_timestamp(),
  `isActive` bit(1) DEFAULT b'1',
  `isGoogle` bit(1) NOT NULL,
  `idRank` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `userPassword`, `userName`, `phoneNumber`, `birthDate`, `companyName`, `address`, `image`, `point`, `idFavoriteProduct`, `idRole`, `createDate`, `isActive`, `isGoogle`, `idRank`) VALUES
(1, 'john.doe@example.com', 'password123', 'hoangvu', '0123456789', '1990-01-01', 'Company A', '123 Main St', 'john_doe.jpg', 100, 1, 2, '2024-12-21 01:16:30', b'0', b'0', NULL),
(2, 'jane.doe@example.com', 'password456', 'Jane Doe', '0987654321', '1992-02-02', 'Company B', '456 Oak St', 'jane_doe.jpg', 200, 2, 2, '2024-12-21 01:16:30', b'1', b'0', NULL),
(3, '22130329@st.hcmuaf.edu.vn', 'fb0ed7c719baaf10b9836b0de5ad78f61121b6617ac2b7dd0376d80d4eace603', 'Vũ Nguyễn', '0909090909', '2004-10-03', 'Company C', '24 QL80 Quận Ninh Kiều Tp.Cần thơ', 'Geometrie_carre.png', 150, 3, 1, '2024-12-21 01:16:30', b'1', b'0', NULL),
(4, 'hoangvu@gmail.com', '$2a$10$a1kyFEFPE5oW1bJTGBHp0em/jvyTOWTw9v8GMPQyxV5gRAHk.F/72', 'Vũ', '086832463', NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-22 12:57:42', b'1', b'0', NULL),
(5, 'hoangvu123@gmail.com', '$2a$10$XWE.CerlkFkgmrAeuZqUuO0o4fGPzL.yztDkE.4XxFYa2KtG3slE6', 'hoangvu', '09090900', NULL, NULL, NULL, NULL, 0, NULL, 2, '2024-12-22 13:28:36', b'1', b'0', NULL),
(7, 'ducluong0876@gmail.com', '27b6e896f9358c97de1b4df790e440bd835b5afc4e197cde6ac3b69c0e5f5b74', 'Hoàng Vũ', '0868032463', '2025-01-03', NULL, '24 Tp.Cần thơ', '1355096.jpeg', 0, NULL, NULL, '2025-01-07 14:20:52', b'1', b'0', NULL),
(8, 'vufit2003@icloud.com', '25862f05ba944f12fa0d5a087495075418de2c0825247ffcb50dd03346b16fae', 'Hoàng Vũ', '0868032463', '2025-01-02', NULL, 'ádasd', 'Ảnh màn hình 2025-01-09 lúc 23.06.35.png', 0, NULL, NULL, '2025-01-09 23:36:45', b'1', b'0', NULL),
(20, 'best@gmail.com', 'fb0ed7c719baaf10b9836b0de5ad78f61121b6617ac2b7dd0376d80d4eace603', 'Vũ', '0909399199', '2004-10-03', NULL, '24 QL 80 Quận Ninh Kiều Tp,Cần thơ', 'shipping-and-logistics.jpg', 0, NULL, 2, '2025-01-13 13:32:27', b'1', b'0', NULL),
(22, 'user@gmail.com', 'fb0ed7c719baaf10b9836b0de5ad78f61121b6617ac2b7dd0376d80d4eace603', 'Nguyên Bùi Hoàng Vũ', '0868032463', '2004-10-03', NULL, '24 QL80 Quận Ninh Kiều Tp.Cần thơ', 'sudoku-solution-example.webp', 0, NULL, 2, '2025-01-17 00:50:31', b'1', b'0', NULL),
(23, 'admin@gmail.com', 'fb0ed7c719baaf10b9836b0de5ad78f61121b6617ac2b7dd0376d80d4eace603', 'Nguyên Bùi Hoàng Vũ', '0868032463', '2004-10-03', NULL, '199 Nguyễn Đình Chính, P11 Quận Phú Nhuận, Tp.HCM', 'Geometrie_carre.png', 0, NULL, 1, '2025-01-17 01:00:19', b'1', b'0', NULL),
(24, 'hvunguyensss@icloud.com', 'fb0ed7c719baaf10b9836b0de5ad78f61121b6617ac2b7dd0376d80d4eace603', 'Nguyên Bùi Hoàng Vũ', '0868032463', NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-01-17 09:03:13', b'1', b'0', NULL),
(25, 'hao@gmail.com', 'fb0ed7c719baaf10b9836b0de5ad78f61121b6617ac2b7dd0376d80d4eace603', 'hoanga', '0868032463', NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-01-27 15:02:46', b'0', b'0', NULL),
(26, 'hoangvu03102004@gmail.com', '6ef6d251573efbaaa03c371967a5199c4b76e92a7ca1a87024f864db8a8d63cb', 'Nguyên Bùi Hoàng Vũ', '0868032463', '2025-03-15', NULL, '1222', '1355096.jpeg', 0, NULL, 2, '2025-03-21 15:15:09', b'1', b'0', NULL),
(27, '22130328@st.hcmuaf.edu.vn', '90651c901348b5e70af8859077fe270f007c2685bf409f34b7fb9923238caa95', 'Nguyên Bùi Hoàng Vũ', '0868032463', '2025-03-09', NULL, '1222', 'Outlast 2-74508.jpg', 0, NULL, 1, '2025-03-22 06:40:07', b'1', b'1', NULL),
(28, 'vufit2004@icloud.com', '6ef6d251573efbaaa03c371967a5199c4b76e92a7ca1a87024f864db8a8d63cb', 'Hoàng Vũ', '0868032463', NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-03-22 17:17:49', b'0', b'0', NULL),
(31, 'hvunguyen@icloud.com', NULL, 'Hoàng Vũ', '0868032463', '2025-03-01', NULL, '1222', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=3715900748708113&height=200&width=200&ext=1745670854&hash=AbYoFBYbswav12NIHEJSmcos', 0, NULL, 2, '2025-03-27 19:34:14', b'1', b'0', 2),
(32, 'vue@gmail.com', '6ef6d251573efbaaa03c371967a5199c4b76e92a7ca1a87024f864db8a8d63cb', 'Nguyên Bùi Hoàng Vũ', '0868032463', NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-04-04 08:05:37', b'0', b'0', NULL),
(33, 'hy@gmail.com', '6ef6d251573efbaaa03c371967a5199c4b76e92a7ca1a87024f864db8a8d63cb', 'Nguyên Bùi Hoàng Vũ', '0868032463', NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-04-04 18:45:00', b'0', b'0', NULL),
(34, 'hy1@gmail.com', '6ef6d251573efbaaa03c371967a5199c4b76e92a7ca1a87024f864db8a8d63cb', 'Nguyên Bùi Hoàng Vũ', '0868032463', NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-04-04 18:46:54', b'0', b'0', NULL),
(35, 'hvunguyen1@icloud.com', '6ef6d251573efbaaa03c371967a5199c4b76e92a7ca1a87024f864db8a8d63cb', 'Nguyên Bùi Hoàng Vũ', '0868032463', NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-04-04 18:51:43', b'0', b'0', NULL),
(36, 'hvunguyen12@icloud.com', '6ef6d251573efbaaa03c371967a5199c4b76e92a7ca1a87024f864db8a8d63cb', 'Nguyên Bùi Hoàng Vũ', '0868032463', NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-04-04 18:52:06', b'0', b'0', NULL),
(37, '22130305@st.hcmuaf.edu.vn', '6ef6d251573efbaaa03c371967a5199c4b76e92a7ca1a87024f864db8a8d63cb', 'Nguyên Bùi Hoàng Vũ', '0868032463', NULL, NULL, NULL, NULL, 0, NULL, 2, '2025-04-09 13:23:29', b'1', b'0', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_ranks`
--

CREATE TABLE `user_ranks` (
  `id` int(11) NOT NULL,
  `rankName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_ranks`
--

INSERT INTO `user_ranks` (`id`, `rankName`) VALUES
(1, 'Thành viên'),
(2, 'Sliver'),
(3, 'Gold'),
(4, 'Gold'),
(5, 'Diamond');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_security_settings`
--

CREATE TABLE `user_security_settings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_2fa_enabled` tinyint(1) DEFAULT 0,
  `is_email_verified` tinyint(1) DEFAULT 0,
  `failed_attempts` int(11) DEFAULT 0,
  `last_failed_login` timestamp NULL DEFAULT NULL,
  `locked_until` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idProduct` int(11) DEFAULT NULL,
  `addDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `wishlists`
--

INSERT INTO `wishlists` (`id`, `idUser`, `idProduct`, `addDate`) VALUES
(6, 3, 44, '2025-01-06'),
(7, 3, 46, '2025-01-06'),
(8, 3, 52, '2025-01-06'),
(9, 3, 50, '2025-01-06'),
(10, 3, 61, '2025-01-06'),
(11, 3, 44, '2025-01-07'),
(12, 3, 47, '2025-01-07'),
(13, 7, 44, '2025-01-07'),
(14, 7, 62, '2025-01-12'),
(17, 20, 49, '2025-01-13'),
(18, 20, 44, '2025-01-13'),
(19, 20, 44, '2025-01-13'),
(20, 20, 64, '2025-01-13'),
(21, 22, 44, '2025-01-17'),
(22, 27, 60, '2025-03-22');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discountCode` (`discountCode`);

--
-- Chỉ mục cho bảng `discount_user_ranks`
--
ALTER TABLE `discount_user_ranks`
  ADD PRIMARY KEY (`discount_id`,`user_rank_id`),
  ADD KEY `user_rank_id` (`user_rank_id`);

--
-- Chỉ mục cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_detail` (`id_order_detail`);

--
-- Chỉ mục cho bảng `feedback_images`
--
ALTER TABLE `feedback_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_id` (`feedback_id`);

--
-- Chỉ mục cho bảng `Images`
--
ALTER TABLE `Images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `fk_orders_discount` (`idDiscount`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idOrder` (`idOrder`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `reset_token` (`reset_token`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `Payment`
--
ALTER TABLE `Payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idOrder` (`idOrder`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategory` (`idCategory`),
  ADD KEY `idSupplier` (`idSupplier`);

--
-- Chỉ mục cho bảng `product_descriptions`
--
ALTER TABLE `product_descriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`),
  ADD KEY `idUser` (`idUser`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVariant` (`idVariant`);

--
-- Chỉ mục cho bảng `Shipping`
--
ALTER TABLE `Shipping`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `store_products`
--
ALTER TABLE `store_products`
  ADD PRIMARY KEY (`store_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactionHistory`
--
ALTER TABLE `transactionHistory`
  ADD PRIMARY KEY (`idHistory`),
  ADD KEY `idOrder` (`idOrder`),
  ADD KEY `idUser` (`idUser`);

--
-- Chỉ mục cho bảng `UserLog`
--
ALTER TABLE `UserLog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idRole` (`idRole`),
  ADD KEY `fk_adds` (`idRank`);

--
-- Chỉ mục cho bảng `user_ranks`
--
ALTER TABLE `user_ranks`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_security_settings`
--
ALTER TABLE `user_security_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`),
  ADD KEY `idProduct` (`idProduct`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `feedback_images`
--
ALTER TABLE `feedback_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `Images`
--
ALTER TABLE `Images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `Payment`
--
ALTER TABLE `Payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `product_descriptions`
--
ALTER TABLE `product_descriptions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `Shipping`
--
ALTER TABLE `Shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `store`
--
ALTER TABLE `store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `transactionHistory`
--
ALTER TABLE `transactionHistory`
  MODIFY `idHistory` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `UserLog`
--
ALTER TABLE `UserLog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `user_ranks`
--
ALTER TABLE `user_ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user_security_settings`
--
ALTER TABLE `user_security_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `discount_user_ranks`
--
ALTER TABLE `discount_user_ranks`
  ADD CONSTRAINT `discount_user_ranks_ibfk_1` FOREIGN KEY (`discount_id`) REFERENCES `discounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discount_user_ranks_ibfk_2` FOREIGN KEY (`user_rank_id`) REFERENCES `user_ranks` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `fk_order_detail` FOREIGN KEY (`id_order_detail`) REFERENCES `order_details` (`id`);

--
-- Các ràng buộc cho bảng `feedback_images`
--
ALTER TABLE `feedback_images`
  ADD CONSTRAINT `feedback_images_ibfk_1` FOREIGN KEY (`feedback_id`) REFERENCES `feedbacks` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `Images`
--
ALTER TABLE `Images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_discount` FOREIGN KEY (`idDiscount`) REFERENCES `discounts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `Payment`
--
ALTER TABLE `Payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`idSupplier`) REFERENCES `suppliers` (`id`);

--
-- Các ràng buộc cho bảng `product_descriptions`
--
ALTER TABLE `product_descriptions`
  ADD CONSTRAINT `product_descriptions_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `product_variants`
--
ALTER TABLE `product_variants`
  ADD CONSTRAINT `product_variants_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`idVariant`) REFERENCES `product_variants` (`id`);

--
-- Các ràng buộc cho bảng `store_products`
--
ALTER TABLE `store_products`
  ADD CONSTRAINT `store_products_ibfk_1` FOREIGN KEY (`store_id`) REFERENCES `store` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `store_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `transactionHistory`
--
ALTER TABLE `transactionHistory`
  ADD CONSTRAINT `transactionhistory_ibfk_1` FOREIGN KEY (`idOrder`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `transactionhistory_ibfk_2` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `UserLog`
--
ALTER TABLE `UserLog`
  ADD CONSTRAINT `userlog_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_adds` FOREIGN KEY (`idRank`) REFERENCES `user_ranks` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idRole`) REFERENCES `roles` (`id`);

--
-- Các ràng buộc cho bảng `user_security_settings`
--
ALTER TABLE `user_security_settings`
  ADD CONSTRAINT `user_security_settings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

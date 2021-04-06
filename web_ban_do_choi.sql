-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 06, 2021 at 02:56 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `db_shop_ban_giay_dep`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Khôi', 'admin@gmail.com', '$2y$10$G6SZRH04A4kYRCp5sC7yauS591e2ou4rdV9OuN6PFpu6ISgK4tjVO', '0972236622', NULL, NULL, 'số 8 ngõ 59 lê văn hiến, đức thắng', '2021-03-04__dswh03401hod-7-ead78fcb663a44fd8b3a073831021d67-1024x1024.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT '0',
  `a_active` tinyint(4) NOT NULL DEFAULT '1',
  `a_menu_id` int(11) NOT NULL DEFAULT '0',
  `a_view` int(11) NOT NULL DEFAULT '0',
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `a_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Đồ chơi trẻ em My Talking Tom nói chuyện tục tĩu đằng sau vẻ đẹp bắt mắt, đáng yêu', 'do-choi-tre-em-my-talking-tom-noi-chuyen-tuc-tiu-dang-sau-ve-dep-bat-mat-dang-yeu', 1, 1, 3, 0, 'Sản phẩm My Talking Tom đã rất quen thuộc với người Việt, đặc biệt là trẻ em, nhưng loại đồ chơi hỗ trợ ngôn ngữ trẻ có hình dáng bắt mắt, ngộ nghĩnh, đáng yêu lại thoại những câu chuyện tục tĩu.', '2021-04-06__meotom.jpeg', '<h2>Sản phẩm My Talking Tom đ&atilde; rất quen thuộc với người Việt, đặc biệt l&agrave; trẻ em, nhưng loại đồ chơi hỗ trợ ng&ocirc;n ngữ trẻ c&oacute; h&igrave;nh d&aacute;ng bắt mắt, ngộ nghĩnh, đ&aacute;ng y&ecirc;u lại thoại những c&acirc;u chuyện tục tĩu.</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><a href=\"https://giadinh.net.vn/thi-truong/chi-can-nhin-vao-diem-nay-se-biet-ngay-dau-tay-trung-quoc-doi-lot-dau-da-lat-20200724211328733.htm\"><img alt=\"Chỉ cần nhìn vào điểm này, sẽ biết ngay dâu tây Trung Quốc “đội lốt” dâu tây Đà Lạt\" src=\"https://giadinh.mediacdn.vn/zoom/150_120/2020/7/24/dau-tay-da-lat-15955995960051877383061-crop-15955997577841750108016.jpg\" /></a><a href=\"https://giadinh.net.vn/thi-truong/chi-can-nhin-vao-diem-nay-se-biet-ngay-dau-tay-trung-quoc-doi-lot-dau-da-lat-20200724211328733.htm\">Chỉ cần nh&igrave;n v&agrave;o điểm n&agrave;y, sẽ biết ngay d&acirc;u t&acirc;y Trung Quốc &ldquo;đội lốt&rdquo; d&acirc;u t&acirc;y Đ&agrave; Lạt</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Những ng&agrave;y qua, chị B&ugrave;i Việt Hiền (33 tuổi, ở quận Long Bi&ecirc;n, TP H&agrave; Nội) vẫn chưa hết &aacute;m ảnh về sản phẩm đồ chơi c&oacute; t&ecirc;n gọi My Talking Tom ph&aacute;t ra những mẩu chuyện tục tĩu, kh&ocirc;ng ph&ugrave; hợp lứa tuổi trẻ em.</p>\r\n\r\n<p>Chị Hiền cho biết, do con g&aacute;i đang ở độ tuổi cần được hỗ trợ ph&aacute;t triển ng&ocirc;n ngữ n&ecirc;n chị Hiền đ&atilde; đặt mua m&oacute;n đồ chơi My Talking Tom cho con g&aacute;i tr&ecirc;n một s&agrave;n thương mại điện tử.</p>\r\n\r\n<p>Trước khi quyết định đặt mua, chị Hiền đ&atilde; ch&uacute; &yacute; đọc từng phản hồi, đ&aacute;nh gi&aacute; về m&oacute;n đồ chơi tại gian h&agrave;ng m&agrave; chị chuẩn bị mua.</p>\r\n\r\n<p><img alt=\"Đồ chơi trẻ em My Talking Tom nói chuyện tục tĩu đằng sau vẻ đẹp bắt mắt, đáng yêu - Ảnh 2.\" id=\"img_97404060-cf5d-11ea-be26-49c1e3c8cf70\" src=\"https://giadinh.mediacdn.vn/2020/7/26/1063494752934331551348323062092528696759463o-15957811444251274459628-1595781163224299123236.png\" title=\"Đồ chơi trẻ em My Talking Tom nói chuyện tục tĩu đằng sau vẻ đẹp bắt mắt, đáng yêu - Ảnh 2.\" /></p>\r\n\r\n<p>Sản phẩm đồ chơi c&oacute; t&ecirc;n gọi My Talking Tom c&oacute; gi&aacute; rất rẻ nhưng được cho l&agrave; chứa nhiều th&ocirc;ng tin độc hại.</p>\r\n\r\n<p>&quot;Tất cả c&aacute;c b&igrave;nh luận v&agrave; đ&aacute;nh gi&aacute; về sản phẩm đều rất t&iacute;ch cực. T&ocirc;i y&ecirc;n t&acirc;m đặt mua v&agrave; kh&ocirc;ng hề suy nghĩ, lấn cấn điều g&igrave;. Hơn nữa, đồ chơi n&agrave;y c&oacute; ngoại h&igrave;nh rất bắt mắt, ngộ nghĩnh v&agrave; đ&aacute;ng y&ecirc;u, chắc chắn sẽ được c&aacute;c con y&ecirc;u th&iacute;ch.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, khi mua về d&ugrave;ng th&igrave; rất bất ngờ l&agrave; sản phẩm n&agrave;y lại ph&aacute;t ra những lời rất tục tĩu, đưa v&agrave;o tai t&ocirc;i v&agrave; con g&aacute;i những mẩu chuyện rất kh&ocirc;ng ph&ugrave; hợp với người lớn chứ đừng n&oacute;i l&agrave; lứa tuổi của c&aacute;c b&eacute;&quot;, chị Hiền cho hay.</p>\r\n\r\n<p>Chị Hiền cho biết: &quot;Điển h&igrave;nh nhất l&agrave; chuyện ch&uacute; thỏ gặp ch&uacute; cọp đang h&uacute;t thuốc k&iacute;ch th&iacute;ch ở trong rừng v&agrave; sau khi thỏ khuy&ecirc;n ch&uacute; cọp bỏ thuốc lắc th&igrave; cọp đ&atilde; chửi ch&uacute; thỏ l&agrave; c&uacute;t x&eacute;o. Ngay lập tức, t&ocirc;i đ&atilde; viết đ&aacute;nh gi&aacute; về m&oacute;n đồ chơi n&agrave;y rồi gửi lại cho shop nhưng t&ocirc;i kh&ocirc;ng thấy shop phản hồi lại&quot;.</p>\r\n\r\n<p><img alt=\"Đồ chơi trẻ em My Talking Tom nói chuyện tục tĩu đằng sau vẻ đẹp bắt mắt, đáng yêu - Ảnh 3.\" id=\"img_30df2fb0-cf5e-11ea-b95f-f5944be05972\" src=\"https://giadinh.mediacdn.vn/2020/7/27/screen-shot-2020-07-26-at-113550-pm-15957814023691694574751-1595809123809521713979.png\" title=\"Đồ chơi trẻ em My Talking Tom nói chuyện tục tĩu đằng sau vẻ đẹp bắt mắt, đáng yêu - Ảnh 3.\" /></p>\r\n\r\n<p>H&igrave;nh ảnh con g&aacute;i chị Hiền đang chơi với ch&uacute; m&egrave;o Tom.</p>\r\n\r\n<p>Theo chị Hiền, để sớm ngăn chặn con g&aacute;i tiếp x&uacute;c với những th&ocirc;ng tin độc hại, kh&ocirc;ng ph&ugrave; hợp với lứa tuổi, chị Hiền đ&atilde; th&aacute;o pin của ch&uacute; m&egrave;o Tom.</p>\r\n\r\n<p>Li&ecirc;n quan đến sản phẩm đồ chơi chứa th&ocirc;ng tin độc hại, PGS.TS Trần Thu Hương, giảng vi&ecirc;n Khoa T&acirc;m l&yacute; học (ĐH Quốc gia H&agrave; Nội) cho biết, với những em b&eacute; đang trong giai đoạn học n&oacute;i n&ecirc;n việc lắng nghe ng&ocirc;n ngữ chuẩn l&agrave; rất quan trọng. Một đồ chơi d&agrave;nh cho trẻ em m&agrave; chứa những th&ocirc;ng tin lệch lạc, độc hại, kh&ocirc;ng ph&ugrave; hợp với sự ph&aacute;t triển của con người m&agrave; lưu th&ocirc;ng tr&ecirc;n thị trường th&igrave; cần phải xem tr&aacute;ch nhiệm của cơ quan quản l&yacute; về h&agrave;ng h&oacute;a.</p>\r\n\r\n<p>Theo b&agrave; Hương, sản phẩm đồ chơi My Talking Tom kh&ocirc;ng c&ograve;n xa lạ với người d&acirc;n Việt Nam, đặc biệt l&agrave; c&aacute;c em nhỏ. Cũng ch&iacute;nh bởi sự y&ecirc;u th&iacute;ch của c&aacute;c em nhỏ d&agrave;nh cho ch&uacute; m&egrave;o n&agrave;y m&agrave; c&aacute;c nh&agrave; sản xuất đ&atilde; đưa m&egrave;o Tom ra ngo&agrave;i đời thực bằng sản phẩm ch&uacute; m&egrave;o c&oacute; h&igrave;nh d&aacute;ng bắt mắt, đ&aacute;ng y&ecirc;u với h&igrave;nh thức nhại lại tiếng v&agrave; ph&aacute;t &acirc;m thanh, h&aacute;t thậm ch&iacute; l&agrave; cả đọc truyện bằng pin.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, chuy&ecirc;n gia cho rằng, người ti&ecirc;u d&ugrave;ng đặc biệt l&agrave; c&aacute;c bậc phụ huynh cần kiểm tra, kiểm so&aacute;t kỹ sản phẩm trước khi cho con trẻ &quot;l&agrave;m bạn&quot;.</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:743px; position:absolute; top:-4.8px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '2020-06-19 08:46:51', 1, 1, '2021-04-06 10:34:51'),
(2, 'THÁNG VÀNG ĐẠI LỄ SĂN SALE CỰC DỄ - GHẾ MASSAGE GIẢM ĐẾN 42%', 'thang-vang-dai-le-san-sale-cuc-de-ghe-massage-giam-den-42', 1, 1, 1, 0, 'Hình ảnh cờ đỏ sao vàng tung bay trên mọi nẻo đường Tổ Quốc đã góp phần tạo nên một bầu không khí hào hùng trong đại lễ kỷ niệm 45 năm giải phóng Miền Nam thống nhất toàn vẹn lãnh thổ Việt Nam. Hòa cùng không khí chào mừng đại lễ 30/4 - 1/5 giúp quý khách có những phút giây mua sắm thoải mái, KINGSPORT triển khai chương trình mang tên THÁNG VÀNG ĐẠI LỄ - SĂN SALE CỰC DỄ.', '2020-06-19__360-crop-ctkm-kingsport-01.jpg', '<p><strong>H&igrave;nh ảnh cờ đỏ sao v&agrave;ng tung bay tr&ecirc;n mọi nẻo đường Tổ Quốc đ&atilde; g&oacute;p phần tạo n&ecirc;n một bầu kh&ocirc;ng kh&iacute; h&agrave;o h&ugrave;ng trong đại lễ kỷ niệm 45 năm giải ph&oacute;ng Miền Nam thống nhất to&agrave;n vẹn l&atilde;nh thổ Việt Nam. H&ograve;a c&ugrave;ng kh&ocirc;ng kh&iacute; ch&agrave;o mừng đại lễ&nbsp;30/4 - 1/5 gi&uacute;p qu&yacute; kh&aacute;ch c&oacute; những ph&uacute;t gi&acirc;y mua sắm thoải m&aacute;i, KINGSPORT triển khai chương tr&igrave;nh mang t&ecirc;n&nbsp;<em>TH&Aacute;NG V&Agrave;NG ĐẠI LỄ - SĂN SALE CỰC DỄ.</em></strong></p>\r\n\r\n<p>Với sứ mệnh mang sức khỏe &ndash; hạnh ph&uacute;c &ndash; thịnh vương đến mọi nh&agrave;. Đồng thời, gi&uacute;p qu&yacute; kh&aacute;ch tiết kiệm thời gian v&agrave; t&agrave;i ch&iacute;nh khi đầu tư v&agrave;o việc chăm s&oacute;c sức khỏe KINGSPORT đ&atilde; triển khai chương tr&igrave;nh &ldquo;<em>Th&aacute;ng v&agrave;ng đại lễ - Săn sale cực dễ&rdquo;</em>&nbsp;với&nbsp;<a href=\"https://www.kingsport.vn/ghe-massage-kingsport-g38.html\"><strong>ưu đ&atilde;i si&ecirc;u khủng l&ecirc;n đến 42%</strong></a>&nbsp;d&agrave;nh cho kh&aacute;ch h&agrave;ng tham gia mua sắm tại c&aacute;c k&ecirc;nh online hoặc offline của KINGSPORT. Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n quốc v&agrave; k&eacute;o d&agrave;i từ ng&agrave;y 20/4/2020 &ndash; 20/5/2020(*).</p>', '2020-06-19 08:49:50', 0, 0, '2020-06-19 08:49:59'),
(3, 'LỊCH SỬ MÔN CHẠY MARATHON', 'lich-su-mon-chay-marathon', 1, 1, 2, 0, 'Chạy marathon đã quá quen thuộc đến nỗi gần như chẳng ai quan tâm nó […]', '2020-06-19__philippides.jpg', '<div class=\"entry-wrap\">\r\n<h1>Lịch sử m&ocirc;n chạy Marathon</h1>\r\n<!-- End / Related Posts -->\r\n\r\n<div class=\"content entry-content\">\r\n<p>Chạy marathon đ&atilde; qu&aacute; quen thuộc đến nỗi gần như chẳng ai quan t&acirc;m n&oacute; l&agrave; g&igrave; v&agrave; bắt đầu từ bao giờ. C&ugrave;ng t&igrave;m hiểu một ch&uacute;t về lịch sử m&ocirc;n chạy marathon nh&eacute;.</p>\r\n\r\n<p><strong>Ch</strong><strong>ạy marathon l</strong><strong>&agrave; g&igrave;</strong>? Marathon l&agrave; một cuộc đua đường d&agrave;i với một khoảng c&aacute;ch ch&iacute;nh thức của 42,195 km&nbsp; (khoảng 26, 385 dặm), thường chạy như một cuộc chạy đua đường bằng. <strong>L</strong><strong>ịch sử m</strong><strong>&ocirc;n ch</strong><strong>ạy Marathon</strong> được gắn liền với sự kiện n&agrave;y, n&oacute; được tổ chức để kỷ niệm cuộc chạy đua huyền thoại của người l&iacute;nh Hy Lạp t&ecirc;n l&agrave; Pheidippides, một sứ giả từ Trận chiến Marathon đến Athens để b&aacute;o kết quả chiến thằng của trận chiến. Cuộc đua marathon c&oacute; thể được ho&agrave;n th&agrave;nh bằng c&aacute;ch chạy hoặc với chiến lược chạy / đi bộ.</p>\r\n\r\n<p><strong>Ch</strong><strong>ạy marathon bắt </strong><strong>đ</strong><strong>ầu từ bao giờ?</strong></p>\r\n\r\n<p><strong>Ch</strong><strong>ạy marathon</strong> l&agrave; một trong những sự kiện Olympic hiện đại v&agrave;o năm 1896, mặc d&ugrave; khoảng c&aacute;ch kh&ocirc;ng được chuẩn h&oacute;a cho đến năm 1921. Hơn 800 cuộc đua được tổ chức tr&ecirc;n khắp thế giới mỗi năm, với đại đa số c&aacute;c đối thủ l&agrave; vận động vi&ecirc;n, v&igrave; c&aacute;c cuộc đua lớn hơn c&oacute; thể c&oacute; h&agrave;ng chục ng&agrave;n người tham gia.</p>\r\n\r\n<p>Nếu x&eacute;t về<strong> lịch sử m&ocirc;n chạy Marathon</strong>, th&igrave; mới biết c&aacute;i t&ecirc;n Marathon xuất ph&aacute;t từ truyền thuyết về Philippides (hay Pheidippides), sứ giả Hy Lạp. Truyền thuyết n&oacute;i rằng &ocirc;ng được gửi từ chiến trường Marathon đến Athens để th&ocirc;ng b&aacute;o rằng người Ba Tư đ&atilde; bị đ&aacute;nh bại trong trrận chiến Marathon (trong đ&oacute; &ocirc;ng vừa mới chiến đấu),&nbsp; diễn ra v&agrave;o th&aacute;ng 8 hoặc th&aacute;ng 9 năm 490 trước C&ocirc;ng nguy&ecirc;n.&nbsp; Người ta n&oacute;i rằng anh ta đ&atilde; chạy to&agrave;n bộ qu&atilde;ng đường m&agrave; kh&ocirc;ng dừng lại v&agrave; x&ocirc;ng v&agrave;o hội nghị, k&ecirc;u l&ecirc;n &epsilon;&epsilon;&epsilon;&kappa;ή&kappa;&kappa;ή&kappa; (nenikēkamen, &ldquo;ch&uacute;ng t&ocirc;i đ&atilde; thắng!&rdquo;), Trước khi quỵ gối v&agrave; chết.&nbsp;</p>\r\n<img alt=\"\" class=\"wp-image-9916\" src=\"https://runningstore.vn/wp-content/uploads/2020/04/Philippides.jpg\" />\r\n<p>H&igrave;nh ảnh Philippides trong truyền thuyết</p>\r\n\r\n<p>C&oacute; nhiều cuộc tranh luận về t&iacute;nh ch&iacute;nh x&aacute;c của truyền thuyết n&agrave;y. Nh&agrave; sử học Hy Lạp Herodotus, trong nguồn lịch sử ch&iacute;nh của Chiến tranh Greco-Ba Tư, đề cập đến Philippides l&agrave; sứ giả chạy từ Athens đến Sparta để nhờ gi&uacute;p đỡ, v&agrave; sau đ&oacute; chạy lại, khoảng c&aacute;ch hơn 240 km (150 dặm) mỗi chiều. Trong một số bản thảo Herodotus, t&ecirc;n của người chạy giữa Athens v&agrave; Sparta được đặt t&ecirc;n l&agrave; Philippides. Herodotus kh&ocirc;ng đề cập đến một sứ giả được gửi từ Marathon đến Athens, v&agrave; kể rằng phần ch&iacute;nh của qu&acirc;n đội Athen, đ&atilde; chiến đấu v&agrave; chiến thắng trong trận chiến mệt mỏi, v&agrave; sợ một cuộc đột k&iacute;ch của hải qu&acirc;n bởi hạm đội Ba Tư chống lại một Athens kh&ocirc;ng được bảo vệ, đ&atilde; nhanh ch&oacute;ng quay trở lại từ Athens.</p>\r\n<img alt=\"\" class=\"wp-image-9917\" src=\"https://runningstore.vn/wp-content/uploads/2020/04/Tuong-phelippides.jpg\" />\r\n<p>Tượng Philppides được dựng tại Hy Lạp</p>\r\n\r\n<p>N&uacute;i Pentelicus đứng giữa Marathon v&agrave; Athens, điều đ&oacute; c&oacute; nghĩa l&agrave; nếu Philippides thực hiện qu&atilde;ng đường chạy sau trận chiến, anh ta phải chạy quanh ngọn n&uacute;i, ở ph&iacute;a bắc hoặc ph&iacute;a nam. Tuyến đường sau v&agrave; r&otilde; r&agrave;ng hơn ph&ugrave; hợp với gần như ch&iacute;nh x&aacute;c đường cao tốc Marathon-Athens hiện đại, đi theo v&ugrave;ng đất ph&iacute;a nam từ Vịnh Marathon v&agrave; dọc theo bờ biển, sau đ&oacute; đi bộ nhẹ nh&agrave;ng nhưng k&eacute;o d&agrave;i về ph&iacute;a t&acirc;y về ph&iacute;a đ&ocirc;ng đến Athens, giữa c&aacute;c ch&acirc;n đồi của N&uacute;i Hymettus v&agrave; Penteli, v&agrave; sau đ&oacute; nhẹ nh&agrave;ng xuống dốc đến Athens. Tuyến đường n&agrave;y, như đ&atilde; tồn tại khi Thế vận hội được hồi sinh v&agrave;o năm 1896, d&agrave;i khoảng 40 km (25 dặm) v&agrave; đ&acirc;y l&agrave; khoảng c&aacute;ch gần đ&uacute;ng ban đầu được sử dụng cho c&aacute;c cuộc đua <strong>ch</strong><strong>ạy marathon</strong>. Tuy nhi&ecirc;n, đ&atilde; c&oacute; &yacute; kiến ​​cho rằng Philippides c&oacute; thể đ&atilde; đi theo một tuyến đường kh&aacute;c: leo l&ecirc;n ph&iacute;a t&acirc;y dọc theo sườn ph&iacute;a đ&ocirc;ng v&agrave; ph&iacute;a bắc của N&uacute;i Penteli đến đ&egrave;o Dionysos, v&agrave; sau đ&oacute; l&agrave; một con đường xuống dốc thẳng về ph&iacute;a nam đến Athens. Tuyến đường n&agrave;y ngắn hơn đ&aacute;ng kể, 35 km (22 mi), nhưng leo l&ecirc;n ban đầu rất dốc hơn 5 km (3,1 mi).</p>\r\n\r\n<p>Khi Thế vận hội hiện đại bắt đầu v&agrave;o năm 1896, những người khởi xướng v&agrave; tổ chức đang t&igrave;m kiếm một sự kiện phổ biến lớn, gợi lại vinh quang của Hy Lạp cổ đại v&agrave; gi&uacute;p người ta nhớ tới <strong>lịch sử của m&ocirc;n chạy marathon</strong>. &Yacute; tưởng về một cuộc đua marathon đến từ Michel Br&eacute;al, người muốn sự kiện n&agrave;y xuất hiện trong Thế vận hội Olympic hiện đại đầu ti&ecirc;n v&agrave;o năm 1896 tại Athens. &Yacute; tưởng n&agrave;y được Pierre de Coubertin, người s&aacute;ng lập Thế vận hội hiện đại, cũng như người Hy Lạp ủng hộ.&nbsp; Người Hy Lạp đ&atilde; tổ chức một cuộc đua tuyển chọn cho cuộc thi marathon Olympic v&agrave;o ng&agrave;y 22 th&aacute;ng 3 năm 1896, m&agrave; Charilaos Vasilakos đ&atilde; gi&agrave;nh chiến thắng trong 3 giờ v&agrave; 18 ph&uacute;t.&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<div class=\"wp-block-image\"><img alt=\"\" class=\"wp-image-9918\" src=\"https://runningstore.vn/wp-content/uploads/2020/04/Chaolios-vasilakos.jpg\" />\r\n<p>Charilaos Vasilakos &ndash; nh&agrave; v&ocirc; địch chạy marathon thế vận hội 1896</p>\r\n</div>\r\n\r\n<p>Sau n&agrave;y, n&oacute; đ&atilde; trở th&agrave;nh một truyền thống cho cuộc thi marathon Olympic nam l&agrave; sự kiện cuối c&ugrave;ng của lịch thi đấu điền kinh, v&agrave;o ng&agrave;y cuối c&ugrave;ng của Thế vận hội. Trong nhiều năm, cuộc đua kết th&uacute;c b&ecirc;n trong s&acirc;n vận động Olympic; tuy nhi&ecirc;n, tại Thế vận hội Lu&acirc;n Đ&ocirc;n 2012, điểm khởi đầu v&agrave; kết th&uacute;c l&agrave; ở Trung t&acirc;m thương mại,v&agrave; tại Rio 2016 (Rio de Janeiro), điểm khởi đầu v&agrave; kết th&uacute;c l&agrave; ở Samb&oacute;dromo.</p>\r\n</div>\r\n</div>', '2020-06-19 08:53:44', 1, 1, '2020-06-19 08:54:26');
INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(4, 'SĂN BITI’S – TRÚNG VINFAST 10/12/2020 - 10/01/2021', 'san-bitis-trung-vinfast-10122020-10012021', 1, 1, 3, 0, 'SĂN BITI’S – TRÚNG VINFAST 10/12/2020 - 10/01/2021', '2021-03-03__dswh03401hod-7-ead78fcb663a44fd8b3a073831021d67-1024x1024.jpg', '<ol>\r\n	<li><strong><u>T&ecirc;n chương tr&igrave;nh khuyến m&atilde;i</u></strong><u>:</u></li>\r\n</ol>\r\n\r\n<p>&quot;<strong>SĂN BITI&rsquo;S &ndash; TR&Uacute;NG VINFAST&rdquo;</strong></p>\r\n\r\n<ol>\r\n	<li><strong><u>H&agrave;ng ho&aacute;, dịch vụ khuyến m&atilde;i</u></strong><u>:</u>&nbsp;Tất cả sản phẩm gi&agrave;y, d&eacute;p mang thương hiệu Biti&rsquo;s (Danh mục đ&iacute;nh k&egrave;m)<strong>&nbsp;</strong></li>\r\n	<li><strong><u>Thời gian khuyến m&atilde;i:</u></strong>&nbsp;Từ ng&agrave;y&nbsp;<strong>10/12/2020&nbsp;</strong>đến hết ng&agrave;y&nbsp;<strong>10/01/2021.</strong></li>\r\n	<li><strong><u>Địa b&agrave;n (phạm vi) khuyến m&atilde;i</u></strong><u>:</u>&nbsp;C&aacute;c cửa h&agrave;ng tiếp thị Biti&rsquo;s (CHTT), đại l&yacute; Biti&rsquo;s (theo danh s&aacute;ch đ&iacute;nh k&egrave;m) tr&ecirc;n to&agrave;n quốc v&agrave; website:&nbsp;<u>www.bitis.com.vn</u>.</li>\r\n</ol>\r\n\r\n<ol>\r\n	<li><strong><u>H&igrave;nh thức khuyến m&atilde;i:</u>&nbsp;</strong>Khuyến m&atilde;i may mắn online.</li>\r\n	<li><strong><u>Kh&aacute;ch h&agrave;ng của chương tr&igrave;nh khuyến m&atilde;i&nbsp;</u></strong><strong><em><u>(Đối tượng hưởng khuyến m&atilde;i):</u></em></strong>&nbsp;Tất cả kh&aacute;ch h&agrave;ng mua sản phẩm theo&nbsp;<strong>mục 2</strong>, trừ c&aacute;n bộ nh&acirc;n vi&ecirc;n c&ocirc;ng ty Biti&rsquo;s.</li>\r\n	<li><strong><u>Cơ cấu giải thưởng:</u></strong></li>\r\n</ol>\r\n\r\n<p><img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202102\" src=\"https://file.hstatic.net/1000230642/file/ctkm_1_6c6075cc595e45969db24e032ad56714_large.png\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202102\" /></p>\r\n\r\n<ul>\r\n	<li>Giải thưởng của chương tr&igrave;nh được trao trực tiếp cho kh&aacute;ch h&agrave;ng v&agrave; kh&ocirc;ng c&oacute; gi&aacute; trị để quy đổi th&agrave;nh tiền.</li>\r\n	<li>Giải thưởng bằng hiện vật sẽ được bảo h&agrave;nh theo chế độ bảo h&agrave;nh của nh&agrave; cung cấp giải thưởng. Kh&aacute;ch h&agrave;ng c&oacute; vấn đề về bảo h&agrave;nh th&igrave; sẽ li&ecirc;n hệ với trung t&acirc;m bảo h&agrave;nh của đơn vị cung ứng.</li>\r\n</ul>\r\n\r\n<p><strong>Link v&agrave;o quay:&nbsp;</strong><a href=\"http://khuyenmai.bitisvn.com/\"><strong>http://khuyenmai.bitisvn.com</strong><strong>/</strong></a></p>\r\n\r\n<ol>\r\n	<li><strong><u>Nội dung chi tiết thể lệ chương tr&igrave;nh khuyến m&atilde;i:</u></strong></li>\r\n</ol>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; 8.1&nbsp;</strong><strong><u>Điều kiện, c&aacute;ch thức, thủ tục cụ thể kh&aacute;ch h&agrave;ng phải thực hiện để được tham gia Chương tr&igrave;nh khuyến m&atilde;i:</u></strong></p>\r\n\r\n<ul>\r\n	<li><strong>Địa điểm ph&aacute;t h&agrave;nh m&atilde; dự thưởng</strong>: Tất cả c&aacute;c cửa h&agrave;ng tiếp thị Biti&rsquo;s tr&ecirc;n to&agrave;n quốc, đại l&yacute; Biti&rsquo;s v&agrave; website:&nbsp;<u>bitis.com.vn</u>.</li>\r\n	<li><strong>C&aacute;ch thức, điều kiện ph&aacute;t h&agrave;nh</strong><strong>&nbsp;v&agrave; thủ tục kh&aacute;ch h&agrave;ng thực hiện để tham gia chương tr&igrave;nh</strong><strong>:</strong>&nbsp;Trong thời gian diễn ra chương tr&igrave;nh khuyến m&atilde;i khi kh&aacute;ch h&agrave;ng mua bất k&igrave; sản phẩm Biti&rsquo;s n&agrave;o tại địa điểm c&oacute; ph&aacute;t h&agrave;nh m&atilde; dự thưởng như tr&ecirc;n c&oacute; trị gi&aacute; h&oacute;a đơn tương ứng sẽ nhận được m&atilde; dự thưởng tham gia chương tr&igrave;nh &ldquo;SĂN BITI&rsquo;S &ndash; TR&Uacute;NG VINFAST&rdquo;. Kh&aacute;ch h&agrave;ng nhận được h&oacute;a đơn c&oacute; k&egrave;m m&atilde; dự thưởng tại quầy thu ng&acirc;n ngay sau khi ho&agrave;n tất qu&aacute; tr&igrave;nh mua h&agrave;ng (đối với hệ thống cửa h&agrave;ng tiếp thị), thẻ c&agrave;o chứa m&atilde; dự thưởng (đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại c&aacute;c đại l&yacute; Biti&rsquo;s tham gia chương tr&igrave;nh) hoặc nhận được tin nhắn c&oacute; k&egrave;m m&atilde; dự thưởng qua SMS Brandname BITIS (đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại website:&nbsp;<a href=\"http://www.bitis.com.vn/\">bitis.com.vn</a>)</li>\r\n</ul>\r\n\r\n<p>M&atilde; dự thưởng ph&aacute;t h&agrave;nh tại hệ thống CHTT bao gồm QR code v&agrave; m&atilde; số gồm 10 k&yacute; tự (c&oacute; gi&aacute; trị như nhau) được in trực tiếp l&ecirc;n h&oacute;a đơn với thể lệ sau (k&egrave;m h&igrave;nh minh họa h&oacute;a đơn):</p>\r\n\r\n<p><em>Với mỗi mức 300,000đ sẽ nh&acirc;̣n được 01 lượt tham gia dự thưởng. VD: H&oacute;a đơn 300,000đ sẽ nhận được 01 m&atilde; dự thưởng 01 lượt dự thưởng, h&oacute;a đơn</em><em>&nbsp;600.000đ sẽ nhận được 01 m&atilde; dự thưởng</em><em>&nbsp;gồm 02 lượt dự thưởng</em><em>, tương tự với c&aacute;c mức trị gi&aacute; h&oacute;a đơn kh&aacute;c</em><em>.</em></p>\r\n\r\n<p><img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202103\" src=\"https://file.hstatic.net/1000230642/file/ctkm_2_8706e48a774f48c2a384782c5d4ac9e0_large.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202103\" /></p>\r\n\r\n<p><em>(H&igrave;nh ảnh chỉ mang t&iacute;nh chất minh họa)</em></p>\r\n\r\n<p>M&atilde; dự thưởng ph&aacute;t h&agrave;nh tại đại l&yacute; Biti&rsquo;s (theo danh s&aacute;ch đ&iacute;nh k&egrave;m): Ph&aacute;t h&agrave;nh dưới dạng thẻ c&agrave;o, mỗi thẻ c&agrave;o gồm 01 m&atilde; dự thưởng. Kh&aacute;ch h&agrave;ng nhận được m&atilde; dự thưởng ngay khi ho&agrave;n tất mua h&agrave;ng. M&atilde; dự thưởng ph&aacute;t h&agrave;nh dưới dạng thẻ c&agrave;o chỉ c&oacute; 01 lượt tham gia dự thưởng tr&ecirc;n một m&atilde; theo thể lệ sau (k&egrave;m h&igrave;nh minh họa thẻ c&agrave;o):</p>\r\n\r\n<p><em>&nbsp;&nbsp;&nbsp; Với mỗi mức 300,000đ sẽ nh&acirc;̣n được 01&nbsp;</em><em>lượt</em><em>&nbsp;thưởng tham gia dự thưởng. VD: H&oacute;a đơn 300,000đ sẽ nhận được 01 lượt tham gia dự thưởng, h&oacute;a đơn</em><em>&nbsp;600.000đ sẽ nhận được 02 lượt tham gia dự thưởng, tương tự với c&aacute;c mức trị gi&aacute; h&oacute;a đơn kh&aacute;c</em><em>.</em></p>\r\n\r\n<p><img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202104\" src=\"https://file.hstatic.net/1000230642/file/ctkm_3_948c1fa1c0354a49837016240ca6d96e_large.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202104\" /><br />\r\n<em>(H&igrave;nh ảnh chỉ mang t&iacute;nh chất minh họa)</em></p>\r\n\r\n<p>M&atilde; dự thưởng ph&aacute;t h&agrave;nh tại website:&nbsp;<a href=\"http://www.bitis.com.vn/\">www.bitis.com.vn</a>: Ngay sau khi kh&aacute;ch h&agrave;ng thanh to&aacute;n th&agrave;nh c&ocirc;ng đơn h&agrave;ng, hệ thống SMS Brandname BITIS sẽ gửi m&atilde; dự thưởng k&egrave;m đường link tham gia đến số điện thoại kh&aacute;ch h&agrave;ng mua h&agrave;ng theo thể lệ sau (k&egrave;m h&igrave;nh minh họa SMS):</p>\r\n\r\n<p><br />\r\n<em>&nbsp;&nbsp;&nbsp; H&oacute;a</em><em>&nbsp;đơn từ 300,000đ trở l&ecirc;n sẽ nhận được 01 m&atilde; dự thưởng tham gia chương tr&igrave;nh. T&ugrave;y v&agrave;o trị gi&aacute; h&oacute;a đơn m&agrave; m&atilde; dự thưởng c&oacute; số lượt dự thưởng kh&aacute;c nhau. VD: H&oacute;a đơn 300,000đ sẽ nhận được 01 m&atilde; dự thưởng gồm 01 lượt tham gia dự thưởng, h&oacute;a đơn</em><em>&nbsp;600.000đ sẽ nhận được 01 m&atilde; dự thưởng</em><em>&nbsp;gồm 02 lượt dự thưởng</em><em>, tương tự với c&aacute;c mức trị gi&aacute; h&oacute;a đơn kh&aacute;c</em>.</p>\r\n\r\n<p><img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202105\" src=\"https://file.hstatic.net/1000230642/file/ctkm_4_a5124088e1b84573b77c4f1b306cb88a_large.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202105\" /></p>\r\n\r\n<p>(H&igrave;nh ảnh chỉ mang t&iacute;nh chất minh họa)</p>\r\n\r\n<ul>\r\n	<li><strong>Đối với QR code v&agrave; m&atilde; dự thưởng in tr&ecirc;n h&oacute;a đơn chỉ c&oacute; gi&aacute; trị trong v&ograve;ng 07 ng&agrave;y kể từ khi ph&aacute;t h&agrave;nh</strong>. Sau thời gian n&agrave;y QR code v&agrave; m&atilde; dự thưởng kh&ocirc;ng c&ograve;n hiệu lực tham gia chương tr&igrave;nh. Kh&aacute;ch h&agrave;ng c&oacute; thể quay ngay sau khi mua h&agrave;ng tại cửa h&agrave;ng hoặc quay sau, tuy nhi&ecirc;n kh&ocirc;ng vượt qu&aacute; 07 ng&agrave;y kể từ thời gian in h&oacute;a đơn (Tương ứng 168 giờ, bao gồm cả ng&agrave;y T7, CN v&agrave; lễ, Tết).</li>\r\n	<li><strong>Đối với thẻ c&agrave;o c&oacute; trị gi&aacute; xuy&ecirc;n suốt thời gian khuyến m&atilde;i</strong>.</li>\r\n</ul>\r\n\r\n<p><strong><em>&nbsp;&nbsp;&nbsp; *&nbsp;Lưu &yacute;:</em></strong>&nbsp;<em>Kh&ocirc;ng giới hạn s&ocirc;́&nbsp;m&atilde; dự thưởng&nbsp;tr&ecirc;n mỗi hóa đơn, chỉ c&acirc;̀n đủ trị giá 300.000 đ&ocirc;̀ng sẽ nh&acirc;̣n được m&atilde; dự thưởng, h&oacute;a đơn n&agrave;y đ&atilde; bao gồm VAT 10%.</em></p>\r\n\r\n<p><em>&nbsp; &nbsp; &nbsp; 8.2&nbsp;</em><strong><u>Thời gian, c&aacute;ch thức ph&aacute;t h&agrave;nh</u></strong>&nbsp;<strong><u>bằng chứng x&aacute;c định tr&uacute;ng thưởng:</u></strong></p>\r\n\r\n<ul>\r\n	<li><strong>Thời gian ph&aacute;t h&agrave;nh</strong><strong>&nbsp;m&atilde; dự thưởng</strong><strong>:&nbsp;</strong>Từ 00:00 ng&agrave;y 10/12/2020 đến 23:59:59 ng&agrave;y 10/01/2021.</li>\r\n	<li><strong>C&aacute;ch thức</strong><strong>&nbsp;ph&aacute;t h&agrave;nh</strong><strong>&nbsp;m&atilde; dự thưởng:&nbsp;</strong>In trực tiếp m&atilde; dự thưởng (bao gồm QR code v&agrave; d&atilde;y 10 k&yacute; tự ngẫu nhi&ecirc;n) l&ecirc;n h&oacute;a đơn (c&oacute; gi&aacute; trị từ 300.000đ trở l&ecirc;n) đối với hệ thống CHTT, thẻ c&agrave;o (một tờ giấy) đối với c&aacute;c đại l&yacute; Biti&rsquo;s tham gia chương tr&igrave;nh (danh s&aacute;ch đ&iacute;nh k&egrave;m), SMS Brandname BITIS th&ocirc;ng tin m&atilde; dự thưởng đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng qua website:&nbsp;<u>bitis.com.vn</u>&nbsp;theo thể lệ v&agrave; m&ocirc; tả tại&nbsp;<strong>mục 8.1</strong>. Kh&aacute;ch h&agrave;ng nhận được m&atilde; dự thưởng ngay khi ho&agrave;n tất qu&aacute; tr&igrave;nh mua h&agrave;ng khi mua h&agrave;ng tại hệ thống CHTT Biti&rsquo;s v&agrave; đại l&yacute; Biti&rsquo;s tham gia chương tr&igrave;nh hoặc ngay khi ho&agrave;n tất thanh to&aacute;n khi mua h&agrave;ng tại website&nbsp;<a href=\"http://www.bitis.com.vn/\">www.bitis.com.vn</a><u>.</u></li>\r\n	<li><strong>Thời gian ph&aacute;t h&agrave;nh bằng chứng tr&uacute;ng thưởng:&nbsp;</strong>Ngay sau khi kh&aacute;ch h&agrave;ng tr&uacute;ng giải.</li>\r\n	<li><strong>C&aacute;ch thức ph&aacute;t h&agrave;nh bằng chứng tr&uacute;ng thưởng</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- M&agrave;n h&igrave;nh thiết bị: Hiện cửa sổ th&ocirc;ng b&aacute;o tr&uacute;ng thưởng v&agrave; giải thưởng đ&atilde; tr&uacute;ng.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Tin nhắn SMS Brandname (BITIS): Nhắn tin th&ocirc;ng b&aacute;o tr&uacute;ng thưởng v&agrave; hướng dẫn c&aacute;ch thức nhận thưởng k&egrave;m m&atilde; nhận giải.</p>\r\n\r\n<p><strong>&nbsp; &nbsp; &nbsp;8.3&nbsp;<u>Thời gian địa đi&ecirc;̉m, cách thức và c&aacute;ch thức x&aacute;c định tr&uacute;ng thưởng:</u></strong></p>\r\n\r\n<ul>\r\n	<li><strong><u>Thời gian x&aacute;c định tr&uacute;ng thưởng:&nbsp;</u></strong>Từ 00:00:00 ng&agrave;y 10/12/2020 đến 23:59:59 ng&agrave;y 10/01/2021.</li>\r\n	<li><strong><u>C&aacute;ch thức dự thưởng:</u></strong>&nbsp;Sau khi nhận được m&atilde; dự thưởng, kh&aacute;ch h&agrave;ng c&oacute; 02 c&aacute;ch để quay thưởng:</li>\r\n	<li><strong>Bước 1:&nbsp;</strong>Nhận m&atilde; dự thưởng sau khi mua h&agrave;ng. Bao gồm:</li>\r\n	<li>M&atilde; dự thưởng v&agrave; QR code được in tr&ecirc;n h&oacute;a đơn đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại hệ thống CHTT Biti&rsquo;s (theo danh s&aacute;ch đ&iacute;nh k&egrave;m)</li>\r\n	<li>M&atilde; dự thưởng được ph&aacute;t h&agrave;nh dưới dạng thẻ c&agrave;o đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại hệ thống đại l&yacute; Biti&rsquo;s (theo danh s&aacute;ch đ&iacute;nh k&egrave;m)</li>\r\n	<li>M&atilde; dự thưởng được gửi qua SMS Brandname BITIS đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại website:&nbsp;<a href=\"http://www.bitis.com.vn/\">bitis.com.vn</a>&nbsp;như m&ocirc; tả tại&nbsp;<strong>mục 8.1.</strong></li>\r\n</ul>\r\n\r\n<p><br />\r\n<strong>Bước 2:&nbsp;</strong>Kh&aacute;ch h&agrave;ng truy cập v&agrave;o trang chủ của chương tr&igrave;nh theo đường link&nbsp;<u>http://khuyenmai.bitisvn.com</u><u>.</u>&nbsp;Ri&ecirc;ng đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại hệ thống CHTT Biti&rsquo;s c&oacute; thể qu&eacute;t QR code tr&ecirc;n h&oacute;a đơn để dẫn tới trang chủ của chương tr&igrave;nh</p>\r\n\r\n<p><img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202106\" src=\"https://file.hstatic.net/1000230642/file/ctkm_6_22df439d35224c4ab161896390f3d494_large.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202106\" /></p>\r\n\r\n<p>(H&igrave;nh ảnh chỉ mang t&iacute;nh chất minh họa)</p>\r\n\r\n<p><strong>Bước 2:&nbsp;</strong>Kh&aacute;ch h&agrave;ng bấm v&agrave;o biểu tượng&nbsp;<img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202107\" src=\"https://file.hstatic.net/1000230642/file/hut_a8e6e932fd784532ac487475c037fefc_icon.png\" style=\"height:34px; width:34px\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202107\" />&nbsp;tại m&agrave;n h&igrave;nh ch&iacute;nh để nhập th&ocirc;ng tin gồm m&atilde; dự thưởng (In tr&ecirc;n h&oacute;a đơn đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại hệ thống CHTT Biti&rsquo;s, m&atilde; dự thưởng in tr&ecirc;n thẻ c&agrave;o đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại hệ thống đại l&yacute;&nbsp;Biti&rsquo;s tham gia chương tr&igrave;nh, m&atilde; dự thưởng được gửi qua SMS Brandname BITIS. Đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại website:&nbsp;<u>bitis.com.vn</u>), họ v&agrave; t&ecirc;n, số điện thoại. Sau đ&oacute; nhấn&nbsp;<strong>x&aacute;c nhận</strong>&nbsp;để kiểm tra số lượt dự thưởng của m&atilde; dự thưởng. Như h&igrave;nh minh họa sau:</p>\r\n\r\n<p><img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202108\" src=\"https://file.hstatic.net/1000230642/file/ctkm_7_62d1c75a340841f78ec18221d96961d8_large.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202108\" /></p>\r\n\r\n<p>(H&igrave;nh ảnh chỉ mang t&iacute;nh chất minh họa)</p>\r\n\r\n<p><strong>Bước 3:&nbsp;</strong>Sau khi kh&aacute;ch h&agrave;ng x&aacute;c nhận, chương tr&igrave;nh sẽ hiện th&ocirc;ng b&aacute;o số lượt dự thưởng c&ograve;n lại của m&atilde; dự thưởng k&egrave;m th&ocirc;ng tin kh&aacute;ch h&agrave;ng, kh&aacute;ch h&agrave;ng kiểm tra lại th&ocirc;ng tin, đọc v&agrave; đồng &yacute; với thể lệ của chương tr&igrave;nh để chuyển sang m&agrave;n h&igrave;nh mở thưởng. Như h&igrave;nh minh họa sau:</p>\r\n\r\n<p><img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202109\" src=\"https://file.hstatic.net/1000230642/file/ctkm_8_401b5b43d3694b0688291c6ac3f43b2f_large.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202109\" /></p>\r\n\r\n<p>(H&igrave;nh ảnh chỉ mang t&iacute;nh chất minh họa)</p>\r\n\r\n<p><strong>Bước 4:&nbsp;</strong>Tại m&agrave;n h&igrave;nh mở thưởng, kh&aacute;ch h&agrave;ng chọn v&agrave;o 01 trong 09 h&igrave;nh ảnh đ&ocirc;i gi&agrave;y để trả kết quả dự thưởng.&nbsp;<strong>Trước khi kh&aacute;ch h&agrave;ng mở thưởng, hệ thống sẽ hiển thị số lượng giải thưởng c&ograve;n lại</strong>&nbsp;(kh&aacute;ch h&agrave;ng c&oacute; thể k&eacute;o xuống để xem đầy đủ số lượng c&aacute;c giải thưởng do diện t&iacute;ch m&agrave;n h&igrave;nh kh&ocirc;ng cho ph&eacute;p). Như h&igrave;nh minh họa sau:</p>\r\n\r\n<p><img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202110\" src=\"https://file.hstatic.net/1000230642/file/ctkm_9_b18ce383df2c4cc3bd6a3d593ececf08_large.png\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202110\" /><img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202111\" src=\"https://file.hstatic.net/1000230642/file/ctkm_10_419a983e2bde43fb8a4838641a8ea568_large.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202111\" /></p>\r\n\r\n<p>(H&igrave;nh ảnh chỉ mang t&iacute;nh chất minh họa)</p>\r\n\r\n<p><strong>Bước 5:&nbsp;</strong>Sau khi m&agrave;n h&igrave;nh thiết bị hiển thị kết quả mở thưởng, kh&aacute;ch h&agrave;ng bấm&nbsp;<strong>&ldquo;T</strong><strong>iếp tục</strong><strong>&rdquo;</strong>&nbsp;để kết th&uacute;c lượt mở thưởng v&agrave; chuyển về m&agrave;n h&igrave;nh mở thưởng (m&agrave;n h&igrave;nh 09 đ&ocirc;i gi&agrave;y). Nếu m&atilde; dự thưởng c&ograve;n lượt chơi, kh&aacute;ch h&agrave;ng tiếp tục chọn 01 trong 09 h&igrave;nh ảnh gi&agrave;y để tiếp tục dự thưởng lượt tiếp theo (Sau mỗi lần dự thưởng, m&agrave;n h&igrave;nh mở thưởng vẫn hiển thị 09 đ&ocirc;i gi&agrave;y như m&ocirc; tả tr&ecirc;n). Tương tự với c&aacute;c lượt mở thưởng sau đối với m&atilde; dự thưởng c&oacute; nhiều lượt dự thưởng.</p>\r\n\r\n<p><strong>Đối với kh&aacute;ch h&agrave;ng nhận được từ 02 m&atilde; dự thưởng trở l&ecirc;n:</strong>&nbsp;Sau khi kh&aacute;ch h&agrave;ng đ&atilde; quay lần đầu theo một trong hai c&aacute;ch như tr&ecirc;n, kh&aacute;ch h&agrave;ng c&oacute; 02 c&aacute;ch để tiếp tục tham gia dự thưởng:</p>\r\n\r\n<ul>\r\n	<li><strong>C&aacute;ch 1:</strong>&nbsp;Nhấp v&agrave;o biểu tượng&nbsp;<img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202112\" src=\"https://file.hstatic.net/1000230642/file/nut_351024ef40404137a194d3e159a90035_thumb.png\" style=\"height:36px; width:37px\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202112\" />tại g&oacute;c tr&ecirc;n b&ecirc;n phải m&agrave;n h&igrave;nh v&agrave; nhập m&atilde; dự thưởng kh&aacute;c. Như h&igrave;nh minh họa</li>\r\n</ul>\r\n\r\n<p><img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202113\" src=\"https://file.hstatic.net/1000230642/file/ctkm_11_b4f24e21cb7c4a82952cdd72bf518964_large.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202113\" /></p>\r\n\r\n<p>(H&igrave;nh ảnh chỉ mang t&iacute;nh chất minh họa)</p>\r\n\r\n<ul>\r\n	<li><strong>C&aacute;ch 2:</strong>&nbsp;Bắt đầu lại từ bước 1 theo c&aacute;ch thức như tr&ecirc;n.</li>\r\n</ul>\r\n\r\n<p><strong><u>C&aacute;ch thức x&aacute;c định tr&uacute;ng thưởng:</u></strong></p>\r\n\r\n<ul>\r\n	<li>Ngay khi kh&aacute;ch h&agrave;ng bấm v&agrave;o h&igrave;nh ảnh 01 trong 09 đ&ocirc;i gi&agrave;y như h&igrave;nh minh họa tr&ecirc;n, hệ thống tự động x&aacute;c định ngẫu nhi&ecirc;n kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng hay kh&ocirc;ng tr&uacute;ng thưởng. Nếu tr&uacute;ng thưởng, giải thưởng sẽ nhận được 01 trong c&aacute;c phần qu&agrave; c&ograve;n lại tại thời điểm kh&aacute;ch h&agrave;ng mở thưởng.</li>\r\n	<li>Khi số lượng giải thưởng A bất kỳ đ&atilde; hết theo cơ cấu tại&nbsp;<strong>mục 7</strong>&nbsp;của thể lệ n&agrave;y, hệ thống sẽ tự loại trừ v&agrave; kh&aacute;ch h&agrave;ng kh&ocirc;ng thể tr&uacute;ng giải thưởng đ&oacute;.</li>\r\n	<li>Ngay khi kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng, m&agrave;n h&igrave;nh thiết bị kh&aacute;ch h&agrave;ng đang sử dụng để tham gia chương tr&igrave;nh sẽ hiện l&ecirc;n cửa sổ th&ocirc;ng b&aacute;o kh&aacute;ch h&agrave;ng đ&atilde; tr&uacute;ng thưởng, phần qu&agrave; đ&atilde; tr&uacute;ng. Như h&igrave;nh minh họa sau:</li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202114\" src=\"https://file.hstatic.net/1000230642/file/sdb_9a47549db9d34f25a2bc1e1dfca84e2e_medium.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202114\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202115\" src=\"https://file.hstatic.net/1000230642/file/db_679e42fdda7743d4b3c3f2313ea14d3e_medium.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202115\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202116\" src=\"https://file.hstatic.net/1000230642/file/g1_677fd07b0e824fbdbdbf8efd3ff28c46_medium.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202116\" /></p>\r\n\r\n<p><em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giải đặc si&ecirc;u đặc biệt&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giải đặc đặc biệt&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</em><em>Giải nhất</em></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202117\" src=\"https://file.hstatic.net/1000230642/file/g2_0429a3eeb21e42b3acb4116a314e776f_medium.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202117\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202118\" src=\"https://file.hstatic.net/1000230642/file/g3_ba58c4d93d974b3bbafe3dd530cc0b5c_medium.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202118\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202119\" src=\"https://file.hstatic.net/1000230642/file/g4_3426051003b9414688f76ebbe6832476_medium.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202119\" /></p>\r\n\r\n<p><em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giải nh&igrave;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Giải ba&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Giải tư&nbsp;&nbsp;&nbsp;</em></p>\r\n\r\n<p><strong>8.4<u>&nbsp;Th&ocirc;ng b&aacute;o tr&uacute;ng thưởng:</u></strong></p>\r\n\r\n<ul>\r\n	<li><strong><u>Thời gian, c&aacute;ch thức th&ocirc;ng b&aacute;o tr&uacute;ng thưởng:</u></strong>&nbsp;Th&ocirc;ng b&aacute;o ngay khi kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng theo 02 c&aacute;ch thức: m&agrave;n h&igrave;nh thiết bị, tin nhắn SMS Brandname BITIS như đ&atilde; m&ocirc; tả tại&nbsp;<strong>mục 8.4</strong>.</li>\r\n	<li><strong><u>Thời gian tiếp nhận th&ocirc;ng tin tr&uacute;ng thưởng từ kh&aacute;ch h&agrave;ng:</u></strong>&nbsp;Trong v&ograve;ng 07 ng&agrave;y kể từ khi kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng.</li>\r\n	<li><strong><u>Địa điểm tiếp nhận th&ocirc;ng tin tr&uacute;ng thưởng từ kh&aacute;ch h&agrave;ng:</u></strong></li>\r\n	<li><strong>Đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại hệ thống CHTT v&agrave; đại l&yacute; Biti&rsquo;s tham gia chương tr&igrave;nh:&nbsp;</strong>Tiếp nhận th&ocirc;ng tin tr&uacute;ng thưởng tại nơi kh&aacute;ch h&agrave;ng đ&atilde; mua h&agrave;ng (t&iacute;nh theo h&oacute;a đơn c&oacute; m&atilde; dự thưởng kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng).</li>\r\n	<li><strong>Đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại website Biti&rsquo;s:</strong>&nbsp;Tiếp nhận th&ocirc;ng tin tr&uacute;ng thưởng tại tất cả cửa h&agrave;ng tiếp thị Biti&rsquo;s.</li>\r\n</ul>\r\n\r\n<p><strong>8.5&nbsp;<u>Thời gian, địa điểm v&agrave; c&aacute;ch thức trao thưởng:</u></strong></p>\r\n\r\n<p><strong>&nbsp; &nbsp;&nbsp;Trường hợp 1: Đối với giải Năm đến giải Nhất:</strong></p>\r\n\r\n<ul>\r\n	<li>Kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng đến cửa h&agrave;ng đ&atilde; mua h&agrave;ng (căn cứ theo h&oacute;a đơn c&oacute; m&atilde; dự thưởng đ&atilde; tr&uacute;ng giải) th&ocirc;ng b&aacute;o tr&uacute;ng thưởng trong v&ograve;ng&nbsp;<strong>07 ng&agrave;y</strong>&nbsp;kể từ ng&agrave;y tr&uacute;ng giải.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng cung cấp m&atilde; nhận giải (gửi qua SMS Brandname) cho nh&acirc;n vi&ecirc;n cửa h&agrave;ng để x&aacute;c nhận. Sau khi nh&acirc;n vi&ecirc;n kiểm tra th&ocirc;ng tin, nếu th&ocirc;ng tin ch&iacute;nh x&aacute;c, nh&acirc;n vi&ecirc;n cửa h&agrave;ng sẽ trao giải cho kh&aacute;ch h&agrave;ng ngay tại thời điểm đ&oacute; v&agrave; kh&aacute;ch h&agrave;ng k&iacute; v&agrave;o&nbsp;<strong>Bi&ecirc;n bản b&agrave;n giao giải thưởng BM 01 (đối với hệ thống CHTT) hoặc Bảng x&aacute;c nhận giải thưởng BM02 (đối với hệ thống đại l&yacute; Biti&rsquo;s).</strong></li>\r\n	<li>Trong trường hợp qu&agrave; tặng chưa chuyển đến kịp cửa h&agrave;ng th&igrave; nh&acirc;n vi&ecirc;n cửa h&agrave;ng hẹn kh&aacute;ch h&agrave;ng nhận qu&agrave; v&agrave;o những ng&agrave;y tiếp theo, kh&aacute;ch h&agrave;ng k&iacute; v&agrave;o&nbsp;<strong>Bi&ecirc;n bản hẹn ng&agrave;y trao giải BM 03&nbsp;</strong>ngay sau khi nh&acirc;n vi&ecirc;n tại cửa h&agrave;ng x&aacute;c nhận th&ocirc;ng tin tr&uacute;ng thưởng của kh&aacute;ch h&agrave;ng (Tối đa kh&ocirc;ng qu&aacute; 07 ng&agrave;y l&agrave;m việc kể từ ng&agrave;y k&iacute; bi&ecirc;n bản).</li>\r\n	<li>Kh&aacute;ch h&agrave;ng nhận qu&agrave; đ&atilde; tr&uacute;ng thưởng tại Cửa h&agrave;ng tiếp thị đ&atilde; mua h&agrave;ng (kh&ocirc;ng được nhận thưởng tại cửa h&agrave;ng kh&aacute;c)<strong>.</strong></li>\r\n	<li>Khi đến ng&agrave;y hẹn kh&aacute;ch h&agrave;ng đến trao giải, nh&acirc;n vi&ecirc;n cửa h&agrave;ng trao giải cho kh&aacute;ch h&agrave;ng v&agrave; kh&aacute;ch h&agrave;ng k&iacute; v&agrave;o&nbsp;<strong>Bảng x&aacute;c nhận nhận giải thưởng BM 02.</strong></li>\r\n</ul>\r\n\r\n<p><strong>&nbsp; &nbsp;&nbsp;Trường hợp 2: Đối với&nbsp;</strong><strong>Giải Si&ecirc;u Đặc Biệt v&agrave; Giải Đặc Biệt.</strong></p>\r\n\r\n<ul>\r\n	<li>Kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng đến cửa h&agrave;ng đ&atilde; mua h&agrave;ng (dựa theo h&oacute;a đơn c&oacute; m&atilde; dự thưởng đ&atilde; tr&uacute;ng giải) th&ocirc;ng b&aacute;o tr&uacute;ng thưởng trong v&ograve;ng&nbsp;<strong>07 ng&agrave;y</strong>&nbsp;kể từ ng&agrave;y tr&uacute;ng giải.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng cung cấp m&atilde; nhận thưởng (gửi qua SMS Brandname) cho nh&acirc;n vi&ecirc;n cửa h&agrave;ng.</li>\r\n	<li>Nh&acirc;n vi&ecirc;n cửa h&agrave;ng tiếp nhận, kiểm tra th&ocirc;ng tin. Nếu th&ocirc;ng tin ch&iacute;nh x&aacute;c, sẽ thực hiện bi&ecirc;n bản hẹn thời gian nhận giải (Kh&ocirc;ng qu&aacute; 45 ng&agrave;y kể từ ng&agrave;y kết th&uacute;c chương tr&igrave;nh).</li>\r\n	<li>Đại diện c&ocirc;ng ty Biti&rsquo;s trao giải cho kh&aacute;ch h&agrave;ng theo thời gian v&agrave; địa điểm đ&atilde; thỏa thuận. Sau đ&oacute; kh&aacute;ch h&agrave;ng k&iacute; v&agrave;o&nbsp;<strong>Bi&ecirc;n bản b&agrave;n giao giải thưởng BM01.</strong></li>\r\n	<li>Địa điểm tiếp nhận th&ocirc;ng tin: Tại địa điểm đ&atilde; mua h&agrave;ng (Đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại hệ thống CHTT v&agrave; đại l&yacute; Biti&rsquo;s tham gia chương tr&igrave;nh) hoặc cửa h&agrave;ng tiếp thị Biti&rsquo;s bất kỳ đối với kh&aacute;ch h&agrave;ng mua h&agrave;ng tại website:<u>bitis.com.vn.</u></li>\r\n</ul>\r\n\r\n<p><strong>&nbsp; &nbsp;&nbsp;Trường hợp 3: Đối với giải khuyến kh&iacute;ch:</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Ngay sau khi kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng,</strong>&nbsp;hệ thống sẽ trao giải cho kh&aacute;ch h&agrave;ng bằng c&aacute;ch gửi tin nhắn SMS Brandname c&oacute; nội dung l&agrave; m&atilde; giảm gi&aacute; 50,000đ tới số điện thoại đ&atilde; đăng k&yacute; tham gia chương tr&igrave;nh.</li>\r\n	<li>M&atilde; giảm gi&aacute; gồm 10 k&yacute; tự ngẫu nhi&ecirc;n bao gồm chữ c&aacute;i v&agrave; số.</li>\r\n	<li>Địa điểm &aacute;p dụng m&atilde; giảm gi&aacute;:</li>\r\n	<li>Tất cả cửa h&agrave;ng tiếp thị Biti&rsquo;s v&agrave; website&nbsp;<a href=\"http://www.bitis.com.vn/\">bitis.com.vn</a>&nbsp;đối với m&atilde; giảm gi&aacute; tr&uacute;ng thưởng tại hệ thống cửa h&agrave;ng tiếp thị Biti&rsquo;s v&agrave; website&nbsp;<a href=\"http://www.bitis.com.vn/\">www.bitis.com.vn</a>.</li>\r\n	<li>Sử dụng tại địa điểm mua h&agrave;ng đối với m&atilde; giảm gi&aacute; tr&uacute;ng thưởng tại hệ thống đại l&yacute; Biti&rsquo;s tham gia chương tr&igrave;nh.</li>\r\n	<li>M&atilde; giảm gi&aacute; c&oacute; hiệu lực 30 ng&agrave;y kể từ thời điểm kh&aacute;ch h&agrave;ng nhận được m&atilde; giảm gi&aacute;.</li>\r\n</ul>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202120\" src=\"https://file.hstatic.net/1000230642/file/maonl_ab1bd200a97744319fe66ee828d117fd_medium.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202120\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202121\" src=\"https://file.hstatic.net/1000230642/file/maoff_5deafe1d30b74f78b186604d258abad4_medium.jpg\" title=\"bitis_san_biti_s_trung_vinfast_10_12_2020_10_01_202121\" /></p>\r\n\r\n<p><em>(H&igrave;nh ảnh chỉ mang t&iacute;nh chất minh họa)</em></p>\r\n\r\n<p><strong><u>Tr&aacute;ch nhiệm của kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng đối với chi ph&iacute; ph&aacute;t sinh khi nhận thưởng, thuế thu nhập kh&ocirc;ng thường xuy&ecirc;n:</u></strong></p>\r\n\r\n<ul>\r\n	<li><strong>Kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng phải chịu mọi chi ph&iacute; li&ecirc;n quan đến việc nhận giải thưởng</strong>&nbsp;như chi ph&iacute; đi lại, ăn ở, chi ph&iacute; l&agrave;m giấy tờ xe (nếu c&oacute;), nộp thuế thu nhập kh&ocirc;ng thường xuy&ecirc;n (nếu c&oacute;), c&aacute;c khoản thuế kh&aacute;c (nếu c&oacute;) theo quy định ph&aacute;p luật hiện h&agrave;nh.&nbsp;<strong><em>C&aacute;c kh&aacute;ch h&agrave;ng từ chối nộp thuế sẽ kh&ocirc;ng được nhận giải thưởng.</em></strong></li>\r\n	<li>Khi nhận giải, kh&aacute;ch h&agrave;ng phải cung cấp những giấy tờ sau cho Ban tổ chức:\r\n	<ul>\r\n		<li><strong>Tin nhắn</strong><strong>&nbsp;th&ocirc;ng b&aacute;o</strong><strong>&nbsp;k&egrave;m m&atilde; code tr&uacute;ng thưởng</strong><em>.</em></li>\r\n		<li><strong>Bản gốc&nbsp;<em>(để đối chứng)&nbsp;</em>Giấy tờ t&ugrave;y th&acirc;n li&ecirc;n quan (giấy CMND) hoặc giấy ủy quyền c&oacute; x&aacute;c nhận của ch&iacute;nh quyền địa phương (nếu nhờ đối tượng kh&aacute;c nhận giải hộ).</strong></li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong><em>Khi trao giải thưởng: Kh&aacute;ch h&agrave;ng c&oacute; tr&aacute;ch nhiệm k&yacute; x&aacute;c nhận v&agrave;o bi&ecirc;n bản b&agrave;n giao giải thưởng</em></strong><strong><em>&nbsp;hoặc bảng x&aacute;c nhận nhận thưởng t&ugrave;y v&agrave;o giải thưởng kh&aacute;ch h&agrave;ng nhận.&nbsp; Bi&ecirc;n bản v&agrave; bảng mẫu đ&iacute;nh k&egrave;m.</em></strong></p>\r\n\r\n<ol>\r\n	<li><strong><u>Đầu mối giải đ&aacute;p thắc mắc cho kh&aacute;ch h&agrave;ng về c&aacute;c vấn đề li&ecirc;n quan đến chương tr&igrave;nh khuyến m&atilde;i:</u></strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Giải thưởng kh&ocirc;ng được quy đổi th&agrave;nh tiền mặt.</li>\r\n	<li>Giải thưởng kh&ocirc;ng c&oacute; người tr&uacute;ng thưởng của chương tr&igrave;nh khuyến mại mang t&iacute;nh may rủi sẽ được tr&iacute;ch nộp 50% gi&aacute; trị đ&atilde; c&ocirc;ng bố v&agrave;o ng&acirc;n s&aacute;ch nh&agrave; nước (Khoản 5 Điều 12 Nghị định 37 ng&agrave;y 4/4/2006).</li>\r\n	<li>Quy định về đầu mối giải đ&aacute;p thắc mắc cho kh&aacute;ch h&agrave;ng về c&aacute;c vấn đề li&ecirc;n quan đến chương tr&igrave;nh khuyến mại (người li&ecirc;n hệ, điện thoại&hellip;):</li>\r\n	<li>C&ocirc;ng ty tiếp nhận v&agrave; giải đ&aacute;p thắc mắc của kh&aacute;ch h&agrave;ng qua: Số điện thoại quầy Dịch vụ kh&aacute;ch h&agrave;ng&nbsp;<strong>1900 2126.</strong></li>\r\n	<li>Email:&nbsp;<strong>chamsockhachhang@bitis.com.vn</strong></li>\r\n	<li>C&aacute;c khiếu nại, tranh chấp ph&aacute;t sinh li&ecirc;n quan đến giải thưởng v&agrave; chương tr&igrave;nh khuyến m&atilde;i n&agrave;y sẽ được C&ocirc;ng ty TNH Sản Xu&acirc;́t Hàng Ti&ecirc;̀u Dùng Bình Ti&ecirc;n trực ti&ecirc;́p giải quy&ecirc;́t, n&ecirc;́u kh&ocirc;ng thỏa thu&acirc;̣n được thì mọi tranh ch&acirc;́p sẽ được xử lý theo c&aacute;c quy định của ph&aacute;p luật hi&ecirc;̣n hành.</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong><u>Tr&aacute;ch nhiệm c&ocirc;ng bố th&ocirc;ng tin:</u></strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>Thể lệ của chương tr&igrave;nh khuyến m&atilde;i sẽ được c&ocirc;ng ty Biti&rsquo;s th&ocirc;ng b&aacute;o chi tiết tại c&aacute;c cửa h&agrave;ng tiếp thị, chi nh&aacute;nh của c&ocirc;ng ty v&agrave; tr&ecirc;n website:&nbsp;<a href=\"http://www.bitis.com.vn/\">com.vn</a>,&nbsp;<a href=\"http://www.facebook.com/bitisshoes\">www.facebook.com/bitisshoes</a>, tr&ecirc;n một số phương tiện truyền th&ocirc;ng đại ch&uacute;ng.</li>\r\n	<li>Hình ảnh và th&ocirc;ng tin khách hàng trúng thưởng tại m&ocirc;̣t s&ocirc;́ khu vực sẽ được c&ocirc;ng ty Biti&rsquo;s th&ocirc;ng báo chi ti&ecirc;́t tại&nbsp;<a href=\"http://www.facebook.com/bitisshoes\">com/bitisshoes</a>và website:&nbsp;<a href=\"http://www.bitis.com.vn/\">www.bitis.com.vn</a>.</li>\r\n</ul>\r\n\r\n<ol>\r\n	<li><strong><u>C&aacute;c qui định kh&aacute;c:</u></strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>C&aacute;n bộ c&ocirc;ng nh&acirc;n vi&ecirc;n tr&ecirc;n to&agrave;n hệ thống của c&ocirc;ng ty Biti&rsquo;s, kh&aacute;ch h&agrave;ng đang được hưởng c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c của Biti&rsquo;s kh&ocirc;ng được tham gia chương tr&igrave;nh khuyến m&atilde;i n&agrave;y.</li>\r\n	<li>C&ocirc;ng ty TNHH SX HTD Bình Ti&ecirc;n được ph&eacute;p sử dụng h&igrave;nh ảnh của kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng với mục đ&iacute;ch quảng c&aacute;o m&agrave; kh&ocirc;ng phải chịu th&ecirc;m bất cứ chi ph&iacute; n&agrave;o.</li>\r\n	<li>C&ocirc;ng ty TNHH SX HTD Bình Ti&ecirc;n có quy&ecirc;̀n từ ch&ocirc;́i tặng quà cho b&acirc;́t kỳ khách hàng nào cung c&acirc;́p th&ocirc;ng tin kh&ocirc;ng hợp l&ecirc;̣, kh&ocirc;ng đ&acirc;̀y đủ hoặc vi phạm b&acirc;́t kỳ Đi&ecirc;̀u khoản và Đi&ecirc;̀u ki&ecirc;̣n nào của chương trình.</li>\r\n	<li>Sau khi k&ecirc;́t thúc chương trình khuy&ecirc;́n mãi, C&ocirc;ng ty TNHH SX HTD Bình Ti&ecirc;n có trách nhi&ecirc;̣m báo cáo k&ecirc;́t quả thực hi&ecirc;̣n chương trình khuy&ecirc;́n mãi tr&ecirc;n chậm nhất 45 ng&agrave;y kể từ ng&agrave;y kết th&uacute;c chương tr&igrave;nh theo đúng quy định tại khoản 2 Điều 21 Nghị định số 81/2018/NĐ-CP.</li>\r\n</ul>', '2021-03-03 10:30:24', 1, 1, '2021-03-04 08:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type_id`, `created_at`, `updated_at`) VALUES
(2, '36', '36', 1, '2020-06-18 07:09:47', NULL),
(3, '37', '37', 1, '2020-06-18 07:09:51', NULL),
(4, '38', '38', 1, '2020-06-18 07:09:55', NULL),
(5, '39', '39', 1, '2020-06-18 07:09:58', NULL),
(6, '40', '40', 1, '2020-06-18 07:10:03', NULL),
(7, '41', '41', 1, '2020-06-18 07:10:07', NULL),
(8, '42', '42', 1, '2020-06-18 07:10:11', NULL),
(9, '43', '43', 1, '2020-06-18 07:10:15', NULL),
(10, '44', '44', 1, '2020-06-18 07:10:18', NULL),
(11, '45', '45', 1, '2020-06-18 07:10:21', NULL),
(17, '47', '47', 1, '2020-06-18 09:08:35', NULL),
(18, 'Màu xanh', 'mau-xanh', 2, '2020-07-03 17:34:22', NULL),
(19, 'Màu đỏ', 'mau-do', 2, '2020-07-03 17:34:32', NULL),
(20, 'Màu Tím', 'mau-tim', 2, '2020-07-03 17:52:57', NULL),
(21, 'Màu đỏ đen', 'mau-do-den', 2, '2020-07-03 17:53:08', NULL),
(22, 'Màu vàng', 'mau-vang', 2, '2020-07-03 17:53:31', NULL),
(24, 'Màu Đen', 'mau-den', 2, '2021-03-04 06:06:54', NULL),
(25, '16', '16', 1, '2021-03-04 08:53:07', NULL),
(26, '17', '17', 1, '2021-03-04 08:53:11', NULL),
(27, '18', '18', 1, '2021-03-04 08:53:14', NULL),
(28, '19', '19', 1, '2021-03-04 08:53:17', NULL),
(29, '20', '20', 1, '2021-03-04 08:53:21', NULL),
(30, '21', '21', 1, '2021-03-04 08:53:26', NULL),
(31, '22', '22', 1, '2021-03-04 08:53:29', NULL),
(32, '23', '23', 1, '2021-03-04 08:53:32', NULL),
(33, '34', '34', 1, '2021-03-04 08:53:35', NULL),
(34, '24', '24', 1, '2021-03-04 08:53:39', NULL),
(35, '25', '25', 1, '2021-03-04 08:53:43', NULL),
(36, '26', '26', 1, '2021-03-04 08:53:47', NULL),
(37, '27', '27', 1, '2021-03-04 08:54:18', NULL),
(38, '28', '28', 1, '2021-03-04 08:54:22', NULL),
(39, '29', '29', 1, '2021-03-04 08:54:25', NULL),
(40, '30', '30', 1, '2021-03-04 08:54:29', NULL),
(41, '31', '31', 1, '2021-03-04 08:54:32', NULL),
(42, '32', '32', 1, '2021-03-04 08:54:35', NULL),
(43, '33', '33', 1, '2021-03-04 08:54:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT '0',
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT '0',
  `c_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Đồ chơi vận đông', 0, 'do-choi-van-dong', '2021-03-24__giay-adidas-fortarun-x-legor-ninjagor-jay-mau-xanh-da-troi-fy6528-01-standard.jpg', NULL, NULL, 1, 1, '2020-06-18 06:38:24', '2021-04-06 09:31:35'),
(2, 'Vẽ , Tô màu', 6, 've-to-mau', '2021-03-24__dswh03401hod-7-ead78fcb663a44fd8b3a073831021d67-1024x1024.jpg', NULL, NULL, 1, 1, '2020-06-18 06:38:35', '2021-04-06 09:38:32'),
(3, 'Thế giới động vật', 6, 'the-gioi-dong-vat', '2021-03-24__.jpg', NULL, NULL, 1, 1, '2020-06-18 06:38:51', '2021-04-06 09:39:07'),
(4, 'Đồ chơi dã ngoại', 1, 'do-choi-da-ngoai', '2021-03-24__giay-adidas-superstar-eg4958-mau-trang-5f0c2453e76ee-13072020160731.jpg', NULL, NULL, 1, 1, '2020-06-18 06:50:34', '2021-04-06 09:35:37'),
(5, 'Đồ chơi nhà bếp', 1, 'do-choi-nha-bep', '2021-03-24__giay-nike-air-jordan-1-mid-chicago-toe.jpg', NULL, NULL, 1, 1, '2020-06-18 06:50:42', '2021-04-06 09:36:09'),
(6, 'Đồ chơi trí tuệ', 0, 'do-choi-tri-tue', NULL, NULL, NULL, 1, 1, '2020-06-18 06:50:50', '2021-04-06 09:32:52'),
(7, 'Phương tiện giao thông', 0, 'phuong-tien-giao-thong', NULL, NULL, NULL, 1, 1, '2020-06-18 06:51:01', '2021-04-06 09:33:22'),
(8, 'Phụ kiện', 0, 'phu-kien', NULL, NULL, NULL, 1, 1, '2020-06-18 06:51:16', '2021-04-06 09:33:43'),
(11, 'Giày bitis', 2, 'giay-bitis', '2021-03-03__images.png', NULL, NULL, 1, 0, '2021-03-03 10:42:44', '2021-04-06 10:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci,
  `cmt_parent_id` int(11) NOT NULL DEFAULT '0',
  `cmt_product_id` int(11) NOT NULL DEFAULT '0',
  `cmt_admin_id` int(11) NOT NULL DEFAULT '0',
  `cmt_user_id` int(11) NOT NULL DEFAULT '0',
  `cmt_like` int(11) NOT NULL DEFAULT '0',
  `cmt_disk_like` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(4, NULL, NULL, 'Giày này có free ship không shop', 0, 1, 0, 4, 0, 0, '2021-03-04 02:18:20', NULL),
(5, NULL, NULL, 'San pham dep qua', 0, 1, 0, 5, 0, 0, '2021-03-30 08:11:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `c_title`, `c_phone`, `c_email`, `c_content`, `created_at`, `updated_at`) VALUES
(2, 'Thanh', '0972236622', 'thanh9746@gmail.com', 'Toi muon mua so luong lon', '2021-03-25 04:21:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT '0',
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(1, 'Code1', 1, '2021-03-21 23:13:00', '2021-03-23 23:13:00', 10, '2021-03-21 16:14:07', '2021-03-24 07:45:04'),
(2, 'Code2', 87, '2021-03-22 08:53:00', '2021-03-24 08:53:00', 15, '2021-03-22 01:53:52', '2021-03-31 17:32:10'),
(3, 'MAGIAMGIATHANG4', 100, '2021-04-06 01:16:00', '2021-04-30 01:16:00', 10, '2021-04-05 18:16:43', '2021-04-05 18:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_2` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_3` tinyint(4) NOT NULL DEFAULT '0',
  `e_position_4` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'sale 1', '2020-06-18__mau-banner-quang-cao-3.jpg', '/', 1, 0, 0, 0, '2021-03-30 08:08:05', '2021-03-30 08:08:05'),
(2, 'sale 2', '2021-04-06__morinaga-mb-379x197.png', '/', 0, 0, 1, 0, '2021-04-06 10:15:36', '2021-04-06 10:15:36'),
(3, 'sale 3', '2021-04-06__goon-premium-mien-bac-768-x-399-1.jpeg', '/', 0, 1, 0, 0, '2021-04-06 10:16:51', '2021-04-06 10:16:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(1, 'Giày thể thao', 'giay-the-thao', NULL, 0, '2020-06-18 07:36:27', '2021-03-04 07:45:47'),
(2, 'Giày thể thao nam', 'giay-the-thao-nam', NULL, 0, '2020-06-18 07:36:30', '2021-03-30 07:35:34'),
(3, 'Giày thể thao nữ', 'giay-the-thao-nu', NULL, 0, '2020-06-18 07:36:34', '2021-03-04 06:16:34'),
(4, 'Giày lười', 'giay-luoi', NULL, 0, '2020-06-18 07:36:38', '2021-03-30 07:56:15'),
(5, 'Giày lười nam', 'giay-luoi-nam', NULL, 0, '2020-06-18 07:36:42', '2021-03-04 06:16:38'),
(6, 'Giày lười nữ', 'giay-luoi-nu', NULL, 0, '2020-06-18 07:36:50', '2021-03-04 06:16:39'),
(7, 'Giày gia cao cấp', 'giay-gia-cao-cap', NULL, 0, '2020-06-18 07:37:00', '2021-03-04 06:16:47'),
(8, 'Giày trẻ em', 'giay-tre-em', 'Giày trẻ em', 0, '2021-03-04 07:56:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT '0',
  `mn_status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 1, 1, '2020-06-19 08:38:59', '2021-03-03 04:54:37'),
(2, 'Sự Kiện', 'su-kien', NULL, NULL, NULL, 0, 1, '2020-06-19 08:39:22', NULL),
(3, 'Hot', 'hot', NULL, NULL, NULL, 1, 1, '2021-03-03 04:54:28', '2021-03-04 08:48:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_02_02_041429_create_categories_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_04_09_231820_create_producer_table', 1),
(31, '2020_04_11_010440_create_types_table', 1),
(32, '2021_03_14_204259_create_discount_code_table', 2),
(33, '2021_03_30_105937_create_payments_table', 3),
(34, '2021_03_30_190556_add_tst_code_to_transactions_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT '0',
  `od_product_id` int(11) NOT NULL DEFAULT '0',
  `od_sale` int(11) NOT NULL DEFAULT '0',
  `od_qty` tinyint(4) NOT NULL DEFAULT '0',
  `od_price` int(11) NOT NULL DEFAULT '0',
  `od_size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `od_color` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `od_gender` tinyint(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('duocnvoit@gmail.com', '$2y$10$pbrzwKceNbJ/t6ay5uJODOz4bweHblK6bPysnuctlVyCFO58YkoSq', '2020-05-03 15:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_vnp_response_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `p_transaction_id`, `p_user_id`, `p_money`, `p_note`, `p_transaction_code`, `p_vnp_response_code`, `p_code_vnpay`, `p_code_bank`, `p_time`, `created_at`, `updated_at`) VALUES
(1, 33, 4, 680000.00, 'sdsad', '0NHZqxnXj920dYG', '00', '13483498', 'NCB', '2021-04-01 00:22:00', NULL, NULL),
(2, 40, 4, 578000.00, 'thanh', '5QxCwcAXf6L2iyL', '00', '13483503', 'NCB', '2021-04-01 00:34:00', NULL, NULL),
(3, 42, 6, 999999.99, 'asd', 'KRNCDiGdrkJpE26', '00', '13485575', 'NCB', '2021-04-05 23:52:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdr_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`id`, `pdr_name`, `pdr_slug`, `pdr_email`, `pdr_phone`, `created_at`, `updated_at`) VALUES
(5, 'SUPERWINGS', 'superwings', 'SUPERWINGS@gmail.com', '1900178256', '2020-06-19 08:09:53', '2021-04-06 10:05:06'),
(6, 'CRAYOLA', 'crayola', 'CRAYOLA@gmail.com', '0359020898', '2020-06-19 08:10:40', '2021-04-06 10:04:16'),
(7, 'BATTAT', 'battat', 'BATTAT@gmail.com', '0972236622', '2021-03-04 06:06:31', '2021-04-06 09:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT '0',
  `pro_price_entry` int(11) NOT NULL DEFAULT '0' COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT '0',
  `pro_admin_id` int(11) NOT NULL DEFAULT '0',
  `pro_sale` tinyint(4) NOT NULL DEFAULT '0',
  `pro_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT '0',
  `pro_hot` tinyint(4) NOT NULL DEFAULT '0',
  `pro_active` tinyint(4) NOT NULL DEFAULT '1',
  `pro_pay` int(11) NOT NULL DEFAULT '0',
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `pro_content` text COLLATE utf8mb4_unicode_ci,
  `pro_review_total` int(11) NOT NULL DEFAULT '0',
  `pro_review_star` int(11) NOT NULL DEFAULT '0',
  `pro_age_review` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT '0',
  `pro_country` tinyint(4) NOT NULL DEFAULT '0',
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(1, 'Bút lông 20 màu vẽ nét dày, mảnh(có thể tẩy rửa được)', 'but-long-20-mau-ve-net-day-manhco-the-tay-rua-duoc', 199000, 0, 2, 0, 0, '2021-04-06__but-long.jpeg', 23, 0, 1, 13, '<p>CRAYOLA l&agrave; thương hiệu chuy&ecirc;n sản xuất b&uacute;t t&ocirc; m&agrave;u nổi tiếng của Mỹ với lịch sử ra đời v&agrave; ph&aacute;t triển hơn 100 năm qua. Điều l&agrave;m n&ecirc;n th&agrave;nh c&ocirc;ng của Crayola ch&iacute;nh l&agrave; những sản phẩm b&uacute;t ch&igrave; m&agrave;u, b&uacute;t s&aacute;p, b&uacute;t l&ocirc;ng, giấy tập t&ocirc; m&agrave; chất lượng v&agrave; được l&agrave;m ho&agrave;n to&agrave;n từ chất liệu tự nhi&ecirc;n, an to&agrave;n với trẻ nhỏ v&agrave; m&ocirc;i trường. B&eacute; sẽ c&oacute; thể thỏa th&iacute;ch t&ocirc; m&agrave;u v&agrave; s&aacute;ng tạo với rất nhiều m&agrave;u sắc hấp dẫn.</p>', '<h3>M&ocirc; tả sản phẩm</h3>\r\n\r\n<h2>CRAYOLA B&uacute;t l&ocirc;ng 20 m&agrave;u vẽ n&eacute;t d&agrave;y, mảnh (c&oacute; thể tẩy rửa được) 588106</h2>\r\n\r\n<p>Được vẽ ở khắp mọi nơi, tr&ecirc;n mọi bề mặt, mọi chất liệu ngay khi con c&oacute; &yacute; tưởng, sẽ gi&uacute;p ph&aacute;t triển sự s&aacute;ng tạo của b&eacute;. B&eacute; c&oacute; thể diễn đạt ra b&ecirc;n ngo&agrave;i những suy nghĩ, &yacute; tưởng mới lạ của m&igrave;nh, cụ thể h&oacute;a những điều trẻ quan s&aacute;t được. Ngo&agrave;i ra vẽ thường xuy&ecirc;n c&ograve;n gi&uacute;p b&eacute; n&acirc;ng cao nhận thức, thị gi&aacute;c ph&aacute;t triển v&agrave; tăng khả năng vận động, tư duy.<br />\r\nBộ sản phẩm gồm 20 c&acirc;y ch&igrave; với những m&agrave;u sắc tươi s&aacute;ng.<br />\r\nĐầu b&uacute;t được thiết kế để b&eacute; c&oacute; thể vẽ n&eacute;t mảnh hoặc t&ocirc; m&agrave;u bằng n&eacute;t d&agrave;y.<br />\r\nMực Crayola với c&ocirc;ng thức đặc biệt gi&uacute;p dễ d&agrave;ng rửa sạch (bằng nước n&oacute;ng) khi d&iacute;nh v&agrave;o da hoặc quần &aacute;o của b&eacute;. Đồng thời, mực cũng kh&ocirc;ng hề lem tr&ecirc;n giấy, cho b&eacute; vui học với những quyển s&aacute;ch t&ocirc; m&agrave;u.</p>\r\n\r\n<h3>Th&ocirc;ng tin sản phẩm:</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Thương hiệu: CRAYOLA</li>\r\n	<li>Xuất xứ thương hiệu: Mỹ</li>\r\n	<li>Tuổi: 1-6 tuổi</li>\r\n	<li>Chất liệu: B&uacute;t l&ocirc;ng</li>\r\n	<li>Giới t&iacute;nh: unisex</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://u6wdnj9wggobj.vcdn.cloud/media/wysiwyg/content/588106_2.jpg\" style=\"height:233px; width:350px\" /><br />\r\nCRAYOLA l&agrave; thương hiệu chuy&ecirc;n sản xuất b&uacute;t t&ocirc; m&agrave;u nổi tiếng của Mỹ với lịch sử ra đời v&agrave; ph&aacute;t triển hơn 100 năm qua. Điều l&agrave;m n&ecirc;n th&agrave;nh c&ocirc;ng của Crayola ch&iacute;nh l&agrave; những sản phẩm b&uacute;t ch&igrave; m&agrave;u, b&uacute;t s&aacute;p, b&uacute;t l&ocirc;ng, giấy tập t&ocirc; m&agrave; chất lượng v&agrave; được l&agrave;m ho&agrave;n to&agrave;n từ chất liệu tự nhi&ecirc;n, an to&agrave;n với trẻ nhỏ v&agrave; m&ocirc;i trường. B&eacute; sẽ c&oacute; thể thỏa th&iacute;ch t&ocirc; m&agrave;u v&agrave; s&aacute;ng tạo với rất nhiều m&agrave;u sắc hấp dẫn.</p>\r\n\r\n<h3>Th&ocirc;ng tin sản phẩm</h3>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<caption>Th&ecirc;m th&ocirc;ng tin</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Chủ đề</th>\r\n			<td>CRAYOLA MARKER</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">M&atilde; VT</th>\r\n			<td>588106</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thương hiệu</th>\r\n			<td>CRAYOLA</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Xuất xứ thương hiệu</th>\r\n			<td>Mỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tuổi</th>\r\n			<td>1-3 tuổi, 4-6 tuổi, 6-11 tuổi, 12 tuổi trở l&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>B&uacute;t l&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>UNISEX</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"ddict_btn\" style=\"left:709.844px; top:703px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/16.png\" /></div>', 1, 5, 5, '2020-06-18 07:45:09', 105, 7, '2021-04-06 10:19:46'),
(2, 'Bút lông 12 màu nét mảnh (tẩy rửa được)', 'but-long-12-mau-net-manh-tay-rua-duoc', 90000, 0, 2, 0, 50, '2021-04-06__but-12-mau.jpeg', 10, 1, 1, 0, '<div class=\"ddict_btn\" style=\"left:685px; top:-4px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/16.png\" /></div>', '<h3>Th&ocirc;ng tin sản phẩm</h3>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<caption>Th&ecirc;m th&ocirc;ng tin</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Chủ đề</th>\r\n			<td>CRAYOLA MARKER</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">M&atilde; VT</th>\r\n			<td>587813</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thương hiệu</th>\r\n			<td>CRAYOLA</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Xuất xứ thương hiệu</th>\r\n			<td>Mỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tuổi</th>\r\n			<td>1-3 tuổi, 4-6 tuổi, 6-11 tuổi, 12 tuổi trở l&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>B&uacute;t l&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>UNISEX</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 2, 10, 5, '2020-06-18 07:48:45', 150, 3, '2021-04-06 10:00:24'),
(3, 'Bút lông nét dày 12 màu(có thể tẩy rửa được)', 'but-long-net-day-12-mauco-the-tay-rua-duoc', 179000, 0, 2, 0, 0, '2021-04-06__but12-mau-day-net.jpeg', 7, 0, 1, 0, NULL, '<h3>Th&ocirc;ng tin sản phẩm</h3>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<caption>Th&ecirc;m th&ocirc;ng tin</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Chủ đề</th>\r\n			<td>CRAYOLA MARKER</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">M&atilde; VT</th>\r\n			<td>587812</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thương hiệu</th>\r\n			<td>CRAYOLA</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Xuất xứ thương hiệu</th>\r\n			<td>Mỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tuổi</th>\r\n			<td>1-3 tuổi, 4-6 tuổi, 6-11 tuổi, 12 tuổi trở l&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>B&uacute;t l&ocirc;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>UNISEX</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2020-06-18 08:10:09', 50, 5, '2021-04-06 10:02:40'),
(9, 'Bộ bột nặn siêu thị vui vẻ', 'bo-bot-nan-sieu-thi-vui-ve', 599000, 0, 5, 0, 1, '2021-04-06__bo-dat-nan.jpeg', 5, 1, 1, 0, NULL, '<h3>M&ocirc; tả sản phẩm</h3>\r\n\r\n<p>Ch&agrave;o mừng bạn đến với si&ecirc;u thị vui vẻ của Playdoh. Những đầu bếp nh&iacute; giờ đ&acirc;y c&oacute; thể thoải m&aacute;i chọn lựa v&agrave; s&aacute;ng tạo những nguy&ecirc;n vật liệu tươi ngon nhất cho m&oacute;n ăn tuyệt vời của m&igrave;nh rồi nh&eacute;. Trứng, quả mọng, ngũ cốc, thịt, rau v&agrave; cả tr&aacute;i c&acirc;y nữa&hellip; b&eacute; c&oacute; thể thoải m&aacute;i s&aacute;ng tạo với hơn 20 khu&ocirc;n tạo h&igrave;nh đa dạng nữa nh&eacute;. Sản phẩm bao gồm: - hơn 20 khu&ocirc;n ấn v&agrave; tạo h&igrave;nh nguy&ecirc;n vật liệu: thịt, c&aacute;, rau, tr&aacute;i c&acirc;y... - 3 hũ bột PD v&agrave; 4 hũ mini đủ m&agrave;u - 1 dụng cụ tạo h&igrave;nh m&igrave; - 2 thẻ gợi &yacute;</p>\r\n\r\n<h3>Th&ocirc;ng tin sản phẩm</h3>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<caption>Th&ecirc;m th&ocirc;ng tin</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Chủ đề</th>\r\n			<td>PD KITCHEN COOKING</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Xuất xứ</th>\r\n			<td>Trung Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">M&atilde; VT</th>\r\n			<td>E1936</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thương hiệu</th>\r\n			<td>PLAYDOH</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Xuất xứ thương hiệu</th>\r\n			<td>Mỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tuổi</th>\r\n			<td>1-3 tuổi, 4-6 tuổi, 6-11 tuổi, 12 tuổi trở l&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Nhựa, bột</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>UNISEX</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"ddict_btn\" style=\"left:724.578px; top:29px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/16.png\" /></div>', 0, 0, 0, '2020-06-19 08:26:45', 50, 1, '2021-04-06 09:51:03'),
(10, 'Bếp nấu tiện lợi', 'bep-nau-tien-loi', 759000, 0, 5, 0, 30, '2021-04-06__bo-nau-an.jpeg', 3, 0, 1, 0, NULL, '<h3>M&ocirc; tả sản phẩm</h3>\r\n\r\n<p>Bộ đồ chơi đất nặn Bếp Nấu Tiện Lợi&nbsp;<strong>Playdoh B9014</strong>&nbsp;d&agrave;nh cho trẻ em tr&ecirc;n 3 tuổi. Bữa ăn thật hấp dẫn v&agrave; đầy m&agrave;u sắc với rất nhiều loại rau củ, thịt v&agrave; c&aacute;. Bộ sản phẩm gồm c&oacute; bếp nấu ăn với &acirc;m thanh mi&ecirc;u tả như bếp thật, 5 hộp bột nặn đủ m&agrave;u v&agrave; những dụng cụ l&agrave;m bếp đi k&egrave;m. Playdoh l&agrave; bột nặn an to&agrave;n cho b&eacute; với nguồn gốc từ bột m&igrave;, m&agrave;u thực phẩm, muối, dầu v&agrave; nước.<br />\r\nBộ sản phẩm kh&ocirc;ng chỉ đơn giản l&agrave; m&oacute;n đồ chơi cho trẻ nhỏ, th&ocirc;ng qua việc tạo h&igrave;nh bột nặn sẽ gi&uacute;p b&eacute; x&acirc;y dựng được về c&aacute;ch phối m&agrave;u, tạo h&igrave;nh đồ vật, sự vật&hellip;<br />\r\nBộ đồ chơi c&ograve;n gi&uacute;p cho trẻ mở rộng hơn về tr&iacute; tưởng tượng v&agrave; định h&igrave;nh được c&aacute;c vật xung quanh.</p>\r\n\r\n<p><img src=\"https://u6wdnj9wggobj.vcdn.cloud/media/wysiwyg/playdoh-B9014.jpg\" style=\"height:1200px; width:1200px\" /></p>\r\n\r\n<h3>Th&ocirc;ng tin sản phẩm</h3>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<caption>Th&ecirc;m th&ocirc;ng tin</caption>\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Chủ đề</th>\r\n			<td>PD KITCHEN COOKING</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Xuất xứ</th>\r\n			<td>TRUNG QUỐC</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">M&atilde; VT</th>\r\n			<td>B9014</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thương hiệu</th>\r\n			<td>PLAYDOH</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Xuất xứ thương hiệu</th>\r\n			<td>Mỹ</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tuổi</th>\r\n			<td>1-3 tuổi, 4-6 tuổi, 6-11 tuổi, 12 tuổi trở l&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>Nhựa, bột</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>UNISEX</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div class=\"ddict_btn\" style=\"left:710px; top:17px\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/16.png\" /></div>', 0, 0, 0, '2020-06-19 08:28:10', 50, 1, '2021-04-06 09:54:06'),
(13, 'Xe máy xúc', 'xe-may-xuc', 399000, 0, 4, 0, 0, '2021-04-06__oto1.jpeg', 6, 1, 1, 1, NULL, '<p><strong>TRẢI NGHIỆM THẾ GIỚI XE SI&Ecirc;U TO WONDER WHEELS TỪ CANADA</strong></p>\r\n\r\n<p><strong>XE X&Uacute;C VE1005Z_XE KH&Ocirc;NG ỐC V&Iacute;T SI&Ecirc;U AN TO&Agrave;N CHO B&Eacute;</strong></p>\r\n\r\n<ul>\r\n	<li>Cabin c&oacute; thể xoay gi&uacute;p m&aacute;y x&uacute;c đ&agrave;o bới dễ d&agrave;ng hơn, b&eacute; c&oacute; thể đ&agrave;o 1 hố đất nhỏ v&agrave; chơi tr&ograve; giấu kho b&aacute;u.</li>\r\n	<li>C&oacute; thể chơi trong nh&agrave;, ngo&agrave;i trời, đi biển</li>\r\n	<li>Gi&uacute;p b&eacute; ph&aacute;t triển vận động tinh v&agrave; tư duy.</li>\r\n	<li>Học về c&aacute;c loại phương tiện giao th&ocirc;ng, chức năng của từng loại xe.</li>\r\n	<li>Thiết kế bo tr&ograve;n c&aacute;c g&oacute;c cạnh, đảm bảo an to&agrave;n cho b&eacute; khi chơi</li>\r\n	<li>Th&acirc;n thiện với m&ocirc;i trường - Được l&agrave;m từ nguy&ecirc;n liệu nhựa c&oacute; thể t&aacute;i chế được.</li>\r\n</ul>\r\n\r\n<h3>Th&ocirc;ng tin sản phẩm</h3>\r\n\r\n<table id=\"product-attribute-specs-table\">\r\n	<tbody>\r\n		<tr>\r\n			<th scope=\"row\">Chủ đề</th>\r\n			<td>BATTAT WONDERWHEEL</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Xuất xứ</th>\r\n			<td>Trung Quốc</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">M&atilde; VT</th>\r\n			<td>VE1005Z</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Thương hiệu</th>\r\n			<td>BATTAT</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Xuất xứ thương hiệu</th>\r\n			<td>Cannada</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Tuổi</th>\r\n			<td>1-3 tuổi, 4-6 tuổi, 6-11 tuổi, 12 tuổi trở l&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Chất liệu</th>\r\n			<td>multi color &amp; plastic</td>\r\n		</tr>\r\n		<tr>\r\n			<th scope=\"row\">Giới t&iacute;nh</th>\r\n			<td>UNISEX</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 0, 0, 0, '2021-03-03 12:31:36', 99, 2, '2021-04-06 09:46:03');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT '0',
  `pa_attribute_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(61, 4, 3),
(62, 4, 4),
(63, 4, 5),
(64, 4, 6),
(65, 4, 7),
(66, 4, 8),
(67, 4, 9),
(68, 4, 10),
(69, 5, 2),
(70, 5, 3),
(71, 5, 4),
(72, 5, 5),
(73, 6, 2),
(74, 6, 3),
(75, 6, 4),
(76, 6, 5),
(77, 6, 6),
(78, 6, 7),
(79, 7, 2),
(80, 7, 3),
(81, 7, 4),
(82, 7, 5),
(83, 7, 6),
(84, 7, 7),
(98, 8, 2),
(99, 8, 3),
(100, 8, 4),
(101, 8, 5),
(102, 8, 6),
(103, 8, 7),
(104, 8, 8),
(139, 11, 6),
(140, 11, 7),
(141, 11, 8),
(142, 11, 9),
(143, 11, 18),
(158, 12, 6),
(159, 12, 7),
(160, 12, 8),
(161, 12, 9),
(162, 12, 10),
(163, 12, 18),
(171, 14, 6),
(172, 14, 7),
(173, 14, 8),
(174, 14, 9),
(175, 14, 10),
(176, 14, 11),
(177, 14, 21),
(178, 15, 6),
(179, 15, 7),
(180, 15, 8),
(181, 15, 9),
(182, 15, 10),
(183, 15, 21),
(190, 16, 6),
(191, 16, 21),
(192, 17, 6),
(193, 18, 2),
(194, 18, 18),
(195, 19, 26),
(196, 19, 27),
(197, 19, 28),
(198, 19, 29),
(199, 19, 30),
(200, 19, 31),
(201, 19, 32),
(202, 19, 34),
(203, 19, 35),
(204, 19, 36),
(205, 19, 37),
(206, 19, 38),
(207, 19, 39),
(208, 19, 40),
(209, 19, 41),
(210, 19, 42),
(211, 19, 43),
(212, 19, 18),
(213, 19, 19),
(214, 19, 20),
(215, 19, 21),
(216, 19, 22),
(217, 19, 24),
(226, 20, 26),
(227, 20, 27),
(228, 20, 28),
(229, 20, 29),
(230, 20, 30),
(231, 20, 31),
(232, 20, 32),
(233, 20, 18),
(253, 21, 25),
(254, 21, 26),
(255, 21, 27),
(256, 21, 28),
(257, 21, 29),
(258, 21, 30),
(259, 21, 31),
(260, 21, 32),
(261, 21, 34),
(262, 21, 35),
(263, 21, 36),
(264, 21, 37),
(265, 21, 38),
(266, 21, 39),
(267, 21, 40),
(268, 21, 41),
(269, 21, 42),
(270, 21, 43),
(271, 21, 33),
(272, 21, 18),
(273, 22, 25),
(274, 22, 26),
(275, 22, 27),
(276, 22, 28),
(277, 22, 29),
(278, 22, 30),
(279, 22, 31),
(280, 22, 32),
(281, 22, 34),
(282, 22, 35),
(283, 22, 36),
(284, 22, 37),
(285, 22, 38),
(286, 22, 39),
(287, 22, 40),
(288, 22, 41),
(289, 22, 22),
(290, 23, 25),
(291, 23, 26),
(292, 23, 27),
(293, 23, 28),
(294, 23, 29),
(295, 23, 30),
(296, 23, 31),
(297, 23, 32),
(298, 23, 34),
(299, 23, 35),
(300, 23, 36),
(301, 23, 37),
(302, 23, 38),
(303, 23, 39),
(304, 23, 40),
(305, 23, 41),
(306, 23, 24),
(313, 24, 6),
(314, 24, 7),
(315, 24, 8),
(316, 24, 9),
(317, 13, 6),
(318, 13, 21),
(319, 9, 2),
(320, 9, 3),
(321, 9, 4),
(322, 9, 5),
(323, 10, 6),
(324, 10, 8),
(325, 10, 24),
(326, 1, 9),
(327, 1, 19),
(328, 2, 6),
(329, 2, 7),
(330, 2, 8),
(331, 2, 9),
(332, 2, 10),
(333, 3, 6),
(334, 3, 7),
(335, 3, 8),
(336, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT '0',
  `pk_keyword_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(26, 3, 1),
(27, 3, 2),
(28, 4, 1),
(29, 4, 2),
(30, 4, 3),
(31, 5, 3),
(32, 6, 3),
(33, 2, 1),
(34, 2, 2),
(38, 8, 3),
(47, 11, 1),
(51, 12, 2),
(53, 14, 7),
(57, 16, 7),
(58, 17, 4),
(59, 18, 8),
(60, 19, 8),
(62, 20, 1),
(63, 20, 8),
(66, 21, 1),
(67, 21, 8),
(68, 22, 1),
(69, 22, 8),
(70, 23, 1),
(71, 23, 8),
(75, 24, 2),
(76, 13, 2),
(77, 9, 4),
(78, 10, 3),
(79, 1, 1),
(80, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT '0',
  `r_product_id` int(11) NOT NULL DEFAULT '0',
  `r_number` tinyint(4) NOT NULL DEFAULT '0',
  `r_status` tinyint(4) NOT NULL DEFAULT '0',
  `r_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(4, 4, 1, 5, 0, 'Sản phẩm đẹp', '2021-03-04 02:20:21', '2021-03-04 02:20:21'),
(5, 4, 2, 5, 0, 'san pham tot', '2021-03-04 03:32:09', '2021-03-04 03:32:09'),
(6, 4, 2, 5, 0, 'sAN PHAM XIN', '2021-04-05 18:18:01', '2021-04-05 18:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT '1',
  `sd_active` tinyint(4) NOT NULL DEFAULT '1',
  `sd_sort` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'slide 1', 'menu/tin-tuc-moi-1', '2021-04-06__dai-tiec-sinh-nhat-9b7-luu-huu-phuoc-768-x-399.png', 1, 1, 1, '2021-04-06 10:10:20', '2021-04-06 10:10:20'),
(2, 'slide 2', 'menu/tin-tuc-moi-1', '2021-04-06__goon-premium-mien-bac-768-x-399-1.jpeg', 1, 1, 0, '2021-04-06 10:10:37', '2021-04-06 10:10:37'),
(3, 'slide 3', 'menu/tin-tuc-moi-1', '2021-04-06__mua-bim-merries-tang-bvs-laurier-768-x-399-1.png', 1, 1, 0, '2021-04-06 10:10:51', '2021-04-06 10:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT '0',
  `s_md5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<p>Khi mua h&agrave;ng bạn k&iacute;ch chọn size sản phẩm</p>\r\n\r\n<p>Tiếp theo đ&oacute; k&iacute;ch v&agrave;o mua ngay&nbsp;</p>', '2020-06-19 08:41:33', NULL),
(2, 'Trang tinh', NULL, 1, NULL, '<p><strong>Giày SIGO C&Ocirc;̉ THẤP C&Ocirc;̉ THUN GIỮ CHẮC C&Ocirc;̉ CH&Acirc;N</strong></p>\r\n\r\n<ul>\r\n	<li>DA: PU CAO C&Acirc;́P</li>\r\n	<li>Đ&Ecirc;́: ĐINH NHỎ TPA SI&Ecirc;U BÁM CỎ BÁM GIÀY KH&Acirc;U SI&Ecirc;U CHẮC</li>\r\n	<li>SIZE 39-43</li>\r\n	<li>BẢO HÀNH KỸ THU&Acirc;̣T 6 THÁNG</li>\r\n</ul>\r\n\r\n<p>C&oacute; thể đ&aacute; tr&ecirc;n mọi loại s&acirc;n, mọi loại thời tiết. Cỏ nh&acirc;n tạo hay cỏ tự nhi&ecirc;n, trời mưa hay trời nắng đều cho cảm gi&aacute;c banh v&agrave; b&aacute;m s&acirc;n cực tốt, cực kỳ thoải m&aacute;i.</p>\r\n\r\n<p>Với thiết kế trẻ trung năng động ph&ugrave; hợp với giới trẻ Việt Nam, nhiều m&agrave;u sắc h&agrave;i h&ograve;a v&agrave; rực rỡ. Gi&agrave;y Đ&aacute; B&oacute;ng Sigo sẽ kh&ocirc;ng l&agrave;m bạn thất vọng.</p>\r\n\r\n<p>Mẫu mới ra mắt tr&ecirc;n thị trường Việt Nam. n&ecirc;n si&ecirc;u độc lạ v&agrave; kh&ocirc;ng bị đụng h&agrave;ng với bạn b&egrave; đồng đội cũng như l&agrave; đối thủ. Gi&agrave;y Đ&aacute; B&oacute;ng Sigo sẽ n&acirc;ng bạn l&ecirc;n một tầm cao mới.</p>\r\n\r\n<p><img alt=\"Giày đá bóng Sigo cổ thấp - Màu Xanh Dương\" src=\"https://muagiaynam.com/wp-content/uploads/2020/01/giay-da-bong-sigo-co-thap-1.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>Gi&agrave;y đ&aacute; b&oacute;ng Sigo cổ thấp &ndash; M&agrave;u Xanh Dương</p>', '2021-03-03 10:27:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT '0',
  `tst_total_money` int(11) NOT NULL DEFAULT '0',
  `tst_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT '1',
  `tst_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tst_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `t_name`, `t_slug`, `created_at`, `updated_at`) VALUES
(1, 'Size', 'size', '2020-06-18 07:09:10', NULL),
(2, 'Màu sắc', 'mau-sac', '2020-07-03 17:28:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci,
  `count_comment` tinyint(4) NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Thanh', 'khach1@gmail.com', NULL, '$2y$10$QK71faS.PB17NxhD.FlBpu58XvTy0P0Yt6NnB9RAx6E6u1BGDWI/O', '0972236621', NULL, 0, NULL, NULL, NULL, '2021-02-25 08:27:44', NULL),
(4, 'Thanh', 'thanh@gmail.com', NULL, '$2y$10$nOydTcpndvgm.AJUByme9eeK8ZmujZ447J1HO04OT0rBZ98/bwJ6i', '0972236622', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.182\",\"time\":\"2021-03-03T04:56:56.056476Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.182\",\"time\":\"2021-03-03T10:05:46.269640Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.182\",\"time\":\"2021-03-03T14:54:31.144312Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.182\",\"time\":\"2021-03-04T02:18:04.636020Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.182\",\"time\":\"2021-03-04T08:18:16.395692Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.182\",\"time\":\"2021-03-04T08:51:18.806308Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.190\",\"time\":\"2021-03-05T03:04:36.550129Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"88.0.4324.190\",\"time\":\"2021-03-21T16:14:36.766230Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.90\",\"time\":\"2021-03-22T02:00:19.918243Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.90\",\"time\":\"2021-03-24T06:09:43.824378Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.90\",\"time\":\"2021-03-24T07:20:21.107525Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.90\",\"time\":\"2021-03-25T05:12:32.965679Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.90\",\"time\":\"2021-03-25T05:25:07.386123Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.90\",\"time\":\"2021-03-28T01:10:16.118615Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.90\",\"time\":\"2021-03-31T16:59:50.975170Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.90\",\"time\":\"2021-04-03T16:52:45.595608Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.114\",\"time\":\"2021-04-05T17:17:29.254518Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.114\",\"time\":\"2021-04-05T17:28:25.093200Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.114\",\"time\":\"2021-04-06T03:16:39.144187Z\"}]', 1, '82 dich vong hau', '2021-03-03__vitamen-mobv2-6d633a48-e7bc-412f-ae50-75fb2529f651-x1500.jpg', NULL, '2021-02-25 08:32:28', '2021-03-03 15:25:07'),
(5, 'Quang', 'Quang@gmail.com', NULL, '$2y$10$3hf124gf8S3b4sLw..lEPuY9YK/t36AHQsruaIjXbrw7DRbUO6aEq', '0972236623', NULL, 1, '82 Dich Vong Hau, Cau Giay', NULL, NULL, '2021-03-30 08:10:15', '2021-03-30 08:11:17'),
(6, 'thanh', 'thanh9746@gmail.com', NULL, '$2y$10$nOydTcpndvgm.AJUByme9eeK8ZmujZ447J1HO04OT0rBZ98/bwJ6i', '0972236633', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"89.0.4389.114\",\"time\":\"2021-04-05T16:50:24.077393Z\"}]', 0, NULL, NULL, NULL, '2021-04-05 16:49:46', NULL),
(7, 'tuyennh123', 'tuyennh@gmail.com', NULL, '$2y$10$Ouzi1KT6aK1e9qH85UNN3OQ5TESIKAGbllm.GaoX3crJrpV0RzB1e', '0976801728', NULL, 0, NULL, NULL, NULL, '2021-04-06 10:23:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT '0',
  `uf_user_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(4, 1, 4),
(1, 2, 1),
(2, 10, 2),
(8, 11, 4),
(6, 12, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_type_id_index` (`atb_type_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producer_pdr_slug_unique` (`pdr_slug`),
  ADD UNIQUE KEY `producer_pdr_email_unique` (`pdr_email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_t_name_unique` (`t_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

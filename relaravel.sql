-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 06:07 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `relaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `img_product`
--

CREATE TABLE `img_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `img_product`
--

INSERT INTO `img_product` (`id`, `product_id`, `url`) VALUES
(1, 2, 'chitiet1.jpg '),
(2, 2, 'chitiet1.1.jpg');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_12_063053_create_tbl_admin_table', 1),
(6, '2022_05_16_033455_create_tbl_all_users', 2),
(7, '2022_05_16_063806_create_tbl_all_category_product', 3),
(8, '2022_05_20_010929_tbl_all_custom', 4),
(9, '2022_05_23_030046_create_products_table', 5),
(10, '2022_06_22_044234_create_ca_mobile_table', 6),
(11, '2022_06_22_044453_create_ca_laptop_table', 7),
(12, '2022_06_22_044612_create_ca_desktop_table', 8),
(13, '2022_06_22_044646_create_ca_accessories_table', 9),
(14, '2022_06_23_082703_create_tbl_contact_user', 10);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(10,0) NOT NULL DEFAULT 0,
  `product_qty` int(11) NOT NULL DEFAULT 0,
  `product_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_file` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_slug`, `product_price`, `product_qty`, `product_desc`, `product_file`, `created_at`, `updated_at`) VALUES
(2, 2, 'Laptop Acer Nitro Gaming', 'laptop-acer-nitro-gaming-an515-57-5669-i5-11400h8gb512gb-ssd', '8900000', 21, 'Đang bán', 'acer-nitro-5-2021-fpt-24.jpg', NULL, NULL),
(4, 2, 'Laptop Lenovo IdeaPad Slim 3', 'laptop-lenovo-ideapad-slim-3-15itl6-i3-1115g48gb512gb156f', '9900000', 10, 'Đang bán', 'Lenovo-IdeaPad-Slim-3-15ITL6-gold-2.jpg', NULL, NULL),
(7, 3, 'Máy tính để bàn HP Pavilion', 'may-tinh-de-ban-hp-pavilion-tp01-1003d-i3-101054gb256gb-ssd', '11980000', 11, 'Đang bán', 'Lenovo-IdeaPad-Slim-3-15ITL6-gold-2.jpg', NULL, NULL),
(8, 3, 'Máy tính All in one HP 205', 'may-tinh-all-in-one-hp-205-pro-g8-nt-r3-3250u4gb256gb', '11490000', 5, 'Đang bán', 'HP-205-Pro-G8-fpt-13.jpg', NULL, NULL),
(19, 4, 'Tai nghe Bluetooth AirPods 3 Apple MME73 Trắng', 'tai-nghe-bluetooth-airpods-3-apple-mme73-trang', '8900000', 21, 'Đang bán', 'bluetooth-airpods-3-211021-065125.jpg', NULL, NULL),
(20, 4, 'Chuột Bluetooth Apple MK2E3 Trắng', 'chuot-bluetooth-apple-mk2e3-trang', '1615000', 10, 'Đang bán', 'chuot-bluetooth-apple-mk2e3-trang-221021-053217.jpg', NULL, NULL),
(21, 4, 'Cáp Type-C - Type-C 80 cm Apple MQ4H2', 'cap-type-c-type-c-80-cm-apple-mq4h2', '1166000', 10, 'Đang bán', 'cap-type-c-type-c-80cm-apple-mq4h2-1-org.jpg', NULL, NULL),
(22, 5, 'Máy tính bảng Samsung Galaxy Tab A7 Lite', 'may-tinh-bang-samsung-galaxy-tab-a7-lite', '4490000', 14, 'Đang bán', 'samsung-galaxy-tab-a7-lite-009.jpg', NULL, NULL),
(23, 5, 'Máy tính bảng iPad 9 WiFi Cellular 64GB', 'may-tinh-bang-ipad-9-wifi-cellular-64gb', '4300000', 10, 'Đang bán', 'ipad-9-wifi-cellular-64gb-3.jpg', NULL, NULL),
(24, 5, 'Máy tính bảng Samsung Galaxy Tab S7 FE WiFi', 'may-tinh-bang-samsung-galaxy-tab-s7-fe-wifi', '11990000', 12, 'Đang bán', 'samsung-galaxy-tab-s7-fe-wifi1.jpg', NULL, NULL),
(25, 6, 'Đồng hồ MVW 42 mm Nam MS075-01', 'dong-ho-mvw-42-mm-nam-ms075-01', '89000', 19, 'Đang bán', 'dong-ho-nam-mvw-ms075-01-111121-025207.jpg', NULL, NULL),
(26, 6, 'Đồng hồ BABY-G 37.9 mm Nữ BGD-565-4DR', 'dong-ho-baby-g-379-mm-nu-bgd-565-4dr', '2300000', 11, 'Đang bán', 'baby-g-bgd-565-4dr-nu-1.jpg', NULL, NULL),
(27, 6, 'Apple Watch SE 40mm viền nhôm dây silicone', 'apple-watch-se-40mm-vien-nhom-day-silicone', '7800000', 10, 'Đang bán', 'se-40mm-vien-nhom-day-cao-su-tongquan-780x433.jpg', NULL, NULL),
(28, 6, 'Apple Watch S6 LTE 40mm', 'apple-watch-s6-lte-40mm', '650000', 6, 'Đang bán', 'beu-active-1-01-1020x574.jpg', NULL, NULL),
(29, 7, 'Tất nam nữ cổ ngắn chất Cotton 100% vớ co giãn', 'tat-nam-nu-co-ngan-chat-cotton-100-vo-co-gian', '12000', 11, 'Đang bán', '0b6200ffb9381c41c412f7fb8e716b70.jpg', NULL, NULL),
(31, 7, 'Vớ cổ cao tới mắt cá chân bằng cotton', 'vo-co-cao-toi-mat-ca-chan-bang-cotton', '23000', 30, 'Đang bán', 'ac91c4759013900a24e9136ad16b04a1.jpg', NULL, NULL),
(32, 7, 'Vớ nhung dày giữ ấm in họa tiết chân mèo', 'vo-nhung-day-giu-am-in-hoa-tiet-chan-meo', '16000', 80, 'Đang bán', 'f3b99ca2df2964a85b82738656a418da.jpg', NULL, NULL),
(33, 8, 'Giỏ hoa treo tường kèm hoa giả, để bàn trang trí cắm sẵn', 'gio-hoa-treo-tuong-kem-hoa-gia-de-ban-trang-tri-cam-san', '200000', 13, 'Đang bán', 'fd0d135d6b06d70248ada82f3b8dbc19.jpg', NULL, NULL),
(34, 8, 'Đèn ngủ để bàn đẹp trang trí phòng ngủ cầu mây hình', 'den-ngu-de-ban-dep-trang-tri-phong-ngu-cau-may-hinh', '130000', 45, 'Đang bán', 'vn-11134103-22060-3wz4rt3jhudva6.jpg', NULL, NULL),
(35, 5, 'Máy tính bảng Samsung Galaxy Tab S7 FE WiFi', 'may-tinh-bang-samsung-galaxy-tab-s7-fe-wifi', '980000', 14, 'Đang bán', 'vi-vn-samsung-galaxy-tab-s7-fe-wifi-thietke-.jpg', NULL, NULL),
(36, 9, 'Kem chống nắng innisfree', 'kem-chong-nang-innisfree', '230000', 11, 'Đang bán', 'cong-dung-kem-chong-nang-innisfree-long-lasting_542ca00e362a4f3aaabc6552d90714ac_master.jpg', NULL, NULL),
(37, 10, 'Áo khoát đội bóng Việt Nam', 'ao-khoat-doi-bong-viet-nam', '530000', 21, 'Đang bán', 'd0abb9f35fb4b8cbf6463a4b14ef5f8a.jpg', NULL, NULL),
(38, 11, 'Đồ chơi trẻ em xe cẩu bằng nhưa', 'do-choi-tre-em-xe-cau-bang-nhua', '52000', 10, 'Đang bán', '7302e0770a2e6f1a806907e15918c0e3.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'badman@gmail.com', '12345678', 'dat', '03339999', '2022-05-12 08:54:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_all_category_product`
--

CREATE TABLE `tbl_all_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_chucnang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_all_category_product`
--

INSERT INTO `tbl_all_category_product` (`category_id`, `category_name`, `category_slug`, `category_chucnang`, `created_at`, `updated_at`) VALUES
(2, 'laptop', 'laptop', 'laptop', NULL, NULL),
(3, 'Desktop', 'desktop', 'Desktop', NULL, NULL),
(4, 'Accessories', 'accessories', 'Accessories', NULL, NULL),
(5, 'Tablet', 'soflware', 'Tablet', NULL, NULL),
(6, 'Clock & Smartwatch', 'sports-fitness', 'Clock & Smartwatch', NULL, NULL),
(7, 'Footwear', 'footwear', 'Footwear', NULL, NULL),
(8, 'Home Decor & Kitchen', 'home-decor-kitchen', 'Home Decor & Kitchen', NULL, NULL),
(9, 'Beauty & Healthcare', 'beauty-healthcare', 'Beauty & Healthcare', NULL, NULL),
(10, 'Clothing', 'clothing', 'Clothing', NULL, NULL),
(11, 'Toys, Kids & Babies', 'toys-kids-babies', 'Toys, Kids & Babies', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_all_custom`
--

CREATE TABLE `tbl_all_custom` (
  `custom_id` int(10) UNSIGNED NOT NULL,
  `custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_phone` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_all_custom`
--

INSERT INTO `tbl_all_custom` (`custom_id`, `custom_name`, `custom_email`, `custom_address`, `custom_phone`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn Bô', 'nguyenvanbo@gmail.com', '566 U Văn Khiêm, phường 5, Quận Bình Thạnh,TP.Hồ Chí Minh', 123456789, NULL, NULL),
(2, 'Lê Thị Hương', 'huonglethi@gmail.com', '555, phường 1, Quận 4, TP.Hồ Chí Minh', 565124789, NULL, NULL),
(3, 'Võ Văn Bảy', 'vovanbay11@gmail.com', '123, Hàm Nghi, Quận 1, TP.Hồ Chí Minh', 567856124, NULL, NULL),
(4, 'Nguyễn Minh Khôi', 'khoiminhnguyen22@gmail.com', '156 Hàm Nghi, Quận 1, TP.Hồ Chí Minh', 892345678, NULL, NULL),
(5, 'ádasdadad', 'jakakakakaka@gmail.com', '123123123123123', 131234567, NULL, NULL),
(6, 'qưeqweqweqwe', 'jakakakakqweqweaka@gmail.com', '1212312312312312asda', 131234567, NULL, NULL),
(7, 'ádasdadad12121', 'jakakakaka1211ka@gmail.com', '1212312312312312asda', 2147483647, NULL, NULL),
(8, 'ádasdadadádasd', 'jakakakakaádasdka@gmail.com', '1212312312312312asdaádasdasd', 131234567, NULL, NULL),
(9, 'ádasdadad', 'jakakaksssakaka@gmail.com', '1212312312312312asda', 1234657981, NULL, NULL),
(10, 'asdasdasdasd', 'jakakakakssssssaka@gmail.com', 'asdasdasd', 123456789, NULL, NULL),
(11, 'Hádasdasd', 'jakakakaddkaka@gmail.com', '1212312312312312asda', 131234567, NULL, NULL),
(12, 'H1111', 'jakakaka11kaka@gmail.com', '1212312312312312asda', 131234567, NULL, NULL),
(13, 'H1212', 'sjaskakakakaka@gmail.com', '1212312312312312asda', 131234567, NULL, NULL),
(14, 'sdfsdf', 'sdfsdfds@gmail.com', 'asdsjhdjqe1k2123', 998765634, NULL, NULL),
(15, 'asdasd', 'sdfdddsdfds@gmail.com', 'asdsjhdjqe1k2123', 998765634, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_all_users`
--

CREATE TABLE `tbl_all_users` (
  `users_id` int(10) UNSIGNED NOT NULL,
  `users_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_gmail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_group` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_all_users`
--

INSERT INTO `tbl_all_users` (`users_id`, `users_name`, `users_gmail`, `users_group`, `users_desc`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', 'nguyenvana13@gmail.com', 'Admin', 'Tạm khóa', NULL, NULL),
(2, 'Nguyễn Văn B', 'nguyenvanb123@gmail.com', 'Admin', 'Đang hoạt động', NULL, NULL),
(4, 'Nguyễn Văn C', 'nguyenvanc111@gmail.com', 'Reviewer', 'Đang hoạt động', NULL, NULL),
(5, 'Nguyễn Văn DDDĐ', 'nguyenvandddddd33@gmail.com', 'Admin', 'Tạm khóa', NULL, NULL),
(6, 'Nguyễn Văn GGGGG', 'nguyenvangggggg44@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(7, 'nguyen van cu', 'adsada@gmail.com', 'Admin', 'Đang hoạt động', NULL, NULL),
(8, 'nguyenthinguyen', 'eeeeeeda@gmail.com', 'Admin', 'Đang hoạt động', NULL, NULL),
(9, 'nguyen van cusdsdad', 'eeeeedasdasdaddadeda@gmail.com', 'Admin', 'Đang hoạt động', NULL, NULL),
(10, 'nguyenthinguyen22222', 'adsad45454545a@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(11, 'letandat139', 'letandat139@gmail.com', 'Reviewer', 'Đang hoạt động', NULL, NULL),
(12, 'nguyen van cusdsdad', 'eeeeeeda@gmail.com', 'Admin', 'Đang hoạt động', NULL, NULL),
(16, 'asd', 'adsada@gmail.com', 'Reviewer', 'Đang hoạt động', NULL, NULL),
(19, 'sd', 'sss@asdsd.com', 'Reviewer', 'Đang hoạt động', NULL, NULL),
(21, 'nguyen van cu', 'adsada@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(22, 'nguyen van cuqqqq', 'adsaqqqqqqda@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(24, 'nguyen van cu1212', 'adsad1212a@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(25, 'nguyen van cu', 'adsada@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(27, 'levanluyen', 'levanluyen13@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(28, 'qweqweqwewq', 'adsada@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(29, 'nguyen van cuqq', 'adqqqsada@gmail.com', 'Admin', 'Đang hoạt động', NULL, NULL),
(33, 'Nguyễn Văn kkkkkkkk', 'nguyenvaaang44kkkkkk@gmail.com', 'Reviewer', 'Đang hoạt động', NULL, NULL),
(34, 'Nguyễn Văn GGGGGaaaaaaa', 'nguyenvaaansssg44@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(35, 'Nguyễn Văn GGGGGaaaaaaa', 'nguyenvaaansssg44@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(36, 'ssssssss', 'ssssssss@gmail.com', 'Editor', 'Tạm khóa', NULL, NULL),
(37, 'Nguyễn Văn GGGGGasas', 'nguyenvaasssang44@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(38, 'Nguyễn Văn GGGGG', 'letandat139@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(39, 'Nguyễn Văn GGGGGdd', 'letandat139sss@gmail.com', 'Editor', 'Đang hoạt động', NULL, NULL),
(48, 'asdasdasdasdasd', 'nguyenvaaang44@gmail.com', 'Reviewer', 'Đang hoạt động', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_user`
--

CREATE TABLE `tbl_contact_user` (
  `custom_id` int(10) UNSIGNED NOT NULL,
  `contact_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_company` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_subj` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_contact_user`
--

INSERT INTO `tbl_contact_user` (`custom_id`, `contact_name`, `contact_email`, `contact_company`, `contact_subj`, `created_at`, `updated_at`) VALUES
(1, 'asdasd', 'letandat139@gmail.com', 'asasd', 'asdasdasd', NULL, NULL),
(2, 'asdasd', 'letandat139@gmail.com', 'asasd', 'asdasdasd', NULL, NULL);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_all_category_product`
--
ALTER TABLE `tbl_all_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_all_custom`
--
ALTER TABLE `tbl_all_custom`
  ADD PRIMARY KEY (`custom_id`);

--
-- Indexes for table `tbl_all_users`
--
ALTER TABLE `tbl_all_users`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `tbl_contact_user`
--
ALTER TABLE `tbl_contact_user`
  ADD PRIMARY KEY (`custom_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_all_category_product`
--
ALTER TABLE `tbl_all_category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_all_custom`
--
ALTER TABLE `tbl_all_custom`
  MODIFY `custom_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_all_users`
--
ALTER TABLE `tbl_all_users`
  MODIFY `users_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_contact_user`
--
ALTER TABLE `tbl_contact_user`
  MODIFY `custom_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

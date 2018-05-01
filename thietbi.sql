-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 01, 2018 lúc 06:17 AM
-- Phiên bản máy phục vụ: 10.1.31-MariaDB
-- Phiên bản PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thietbi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(10000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(1, 5, 20, 'Laptop Dell', 699000, 1),
(2, 5, 21, 'Xiaomi Redmi', 499000, 3),
(3, 5, 20, 'Laptop Dell', 699000, 1),
(4, 5, 21, 'Xiaomi Redmi', 499000, 3),
(5, 3, 3, 'Laptop Dell Vostro 3468 70088614 14inch', 11599000, 1),
(6, 4, 16, 'Dell Inspiron 5567 i5 7200U/4GB/1TB/2G', 16790000, 1),
(7, 5, 16, 'Dell Inspiron 5567 i5 7200U/4GB/1TB/2G', 16790000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `diachi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `sodienthoai`, `diachi`) VALUES
(1, 'Hau', 904877306, 'wanriky2998@gmail.com'),
(2, 'Hau', 123, 'hau@gmail.com'),
(3, 'Hau', 456, '456@gmail.com'),
(4, 'Hau', 1234, '280 An Duong Vuong'),
(5, 'abc', 1234, '5486sa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Điện Thoại', 'https://i.imgur.com/hxtCl6J.jpg'),
(2, 'Laptop', 'https://i.imgur.com/z8LYYg2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idsanpham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`) VALUES
(1, 'Xiaomi Redmi 5 Plus', 3600000, 'https://i.imgur.com/uEcnJrO.jpg', 'Xiaomi Redmi 5 Plus là phiên bản cao cấp hơn của chiếc Xiaomi Redmi 5 với màn hình kích thước lớn hơn cùng hiệu năng được nâng cấp.\r\nThiết kế tinh tế\r\nXiaomi Redmi 5 Plus sở hữu cho mình vẻ bề ngoài sang trọng và tinh tế không kém gì các thiết bị cao cấp. Máy sở hữu thiết kế nguyên khối với khung kim loại chắc chắn.', 1),
(2, 'Samsung Galaxy S7 edge 32GB', 7690000, 'https://i.imgur.com/YhpFRYu.jpg', 'Trải nghiệm cùng sản phẩm Galaxy S7 Edge\r\n \r\n\r\nBộ đôi siêu phẩm của Galaxy S7 và S7 Edge sẽ được ra mắt vào đầu năm 2016 hứa hẹn với người sử dụng nhiều bất ngờ đầy thú vị. Cho đến thời điểm này mọi tính năng trên cặp đôi sản phẩm này vẫn được dấu kín.\r\n\r\nTheo như một số nguồn tin rò rỉ cho biết, S7 và S7 Edge sẽ được thừa hưởng toàn bộ thiết kế từ chiếc Galaxy S6 trước đó và phát huy những điểm mới nhằm đem lại một siêu phẩm hoàn hảo về thiết kế.\r\n\r\nThiết kế Samsung Galaxy S7 Edge\r\nSamsung Galaxy S7 Edge sẽ kế thừa thiết kế kim loại. Toàn bộ khung viền máy sẽ được làm bằng kim loại nguyên khối, kết hợp với 2 mặt phủ kính cường lực giúp chống trầy xước và chống va đập tốt bảo đảm an toàn cho máy.', 1),
(3, 'Laptop Dell Vostro 3468 70088614 14inch', 11599000, 'https://i.imgur.com/Z1Ut8KE.jpg', 'Cấu hình mạnh mẽ cho công việc và giải trí\r\nLà dòng sản phẩm hướng đến người dùng doanh nhân với thiết kế đẹp mắt và chắc chắn. Dell Vostro 3468 còn có cấu hình ấn tượng với bộ xử lý thế hệ mới nhất của Intel, Kaby Lake, bộ nhớ RAM lớn. Máy trang bị đồ họa tích hợp cung cấp hiệu suất xử lý đồ họa vượt trội và tiết kiệm điện năng.\r\nLưu trữ thoải mái với ổ cứng 1TB\r\nCho dù dữ liệu của bạn là gì, tài liệu, video, bảng thiết kế... tất cả đều có thể lưu gọn trong không gian rộng rãi của ổ cứng dung lương cực lớn. Bạn không phải lo lắng về dung lượng lưu trữ nữa, an tâm lưu mọi dữ liệu quan trọng và mang theo bên mình.', 2),
(4, 'Bphone 2017', 9790000, 'https://i.imgur.com/LCKIMFo.jpg', 'Bphone 2017 là chiếc smartphone thế hệ thứ 2 được nhà sản xuất Việt Nam Bkav trình làng với hàng loạt cải tiến vượt trội, tối ưu tốt nhất cho người Việt và giá bán rất tốt.\r\nThiết kế cao cấp\r\n+Bphone 2017 là chiếc smartphone cận cao cấp nhưng mang trong mình thiết kế của một chiếc máy cao cấp. Với độ hoàn thiện cao, chau chuốt và tỉ mỉ, bạn sẽ thấy các đường ghép nối giữa các thành phần trên máy đạt độ kín khít và chính xác gần như hoàn hảo.\r\n+Bộ khung kim loại chắc chắn kết hợp với 2 mặt kính cường lực tôn lên sự sang trọng và thời trang, các góc cạnh được bo cong mềm mại hơn mang lại cảm giác cầm nắm thoải mái cho người dùng.\r\n+Phím home cảm ứng cho thao tác sử dụng nhanh và dễ dàng hơn, cùng với việc được tích hợp cảm biến vân tay cho tốc độ nhận diện nhanh, chính xác, bảo mật cực cao.\r\nMàn hình sắc nét\r\nMáy sở hữu màn hình 5.5 inch độ phân giải Full HD trên tấm nền IPS, được bảo vệ với kính cường lực Corning Gorilla Glass 3 bo cong 2.5D thời thượng \"chất từng chi tiết\". Điểm đáng nói nhất trên màn hình này là độ phủ màu rộng, cho khả năng hiển thị màu cực kì chân thực.\r\nCamera chất lượng tốt\r\nBphone 2017 mang trong mình camera chính 16 MP, sử dụng cảm biến chất lượng cao Sony IMX298 đi kèm công nghệ chống rung quang học OIS và lấy nét theo pha, cho phép quay video 4K. Những trang bị thường chỉ xuất hiện trên các smartphone cao cấp.\r\nHiệu năng đáp ứng tốt nhu cầu\r\nBphone 2017 sử dụng con chip xử lý Qualcomm Snapdragon 625 tiên tiến sản xuất trên tiến trình 14 nm hiệu năng cao và tiết kiệm pin. Bộ nhớ RAM 3 GB và 32 GB bộ nhớ trong.\r\nMáy sẽ được chạy trên giao diện BOS 2.0 \"chất từng trải nghiệm\" tùy biến trên nền Android 7.1 Nougat, vẫn lối thiết kế tối giản để tối ưu cho trải nghiệm dễ dàng, nay Bkav còn áp dụng những công nghệ đoán nhận giao tiếp thông minh cho thao tác nhanh chóng, thuận tiện hơn.\r\n\r\nTrải nghiệm âm thanh chất lượng\r\nBphone 2017 chăm chút đến từng trải nghiệm của người dùng. Về âm thanh, máy được trang bị DAC rời \"chất từng thanh âm\" hỗ trợ xử lý nhạc 32-bit và tần số 384 KHz, mang đến trải nghiệm tốt hơn khi nghe nhạc, xem phim, chơi game...\r\n\r\nThời lượng pin tối ưu, sạc cực nhanh\r\nMáy trang bị viên pin có dung lượng 3.000 mAh và hỗ trợ công nghệ sạc nhanh Quick Charge 3.0. Theo công bố của hãng thì bạn có thể sử dụng trong khoảng 2 ngày và sạc từ 0% đến 80% chỉ trong 35 phút. Bên cạnh đó là các công nghệ bảo vệ pin, sạc.\r\nTrang bị chuẩn kháng nước\r\nĐặc biệt, Bphone 2017 cũng sẽ được trang bị tính năng kháng nước và kháng bụi cao cấp bảo vệ máy trong các trường hợp như sử dụng dưới trời mưa hay rơi xuống nước.\r\n', 1),
(5, 'Motozola X4 3GB RAM', 9990000, 'https://i.imgur.com/efkEqtf.jpg', 'Motorola Moto X4 là một chiếc smartphone tầm trung với điểm nhấn tới từ cụm camera kép ở mặt lưng.\r\nThiết kế quen thuộc\r\nMoto X4 có thiết kế cao cấp với khung nhôm nguyên khối và mặt trước được làm bằng kính cường lực Gorilla Glass 3. Mặt trước là màn hình có kích thước 5.2 inch độ phân giải Full HD cho khả năng hiển thị tốt và sắc nét.\r\n+Các góc cạnh của máy cũng được bo cong mềm mại cho cảm giác cầm nắm khá thoải mái.\r\nCấu hình mạnh mẽ\r\n+Cung cấp sức mạnh cho máy là con chip Qualcomm Snapdragon 630 8 nhân với 4 GB RAM và 64 GB bộ nhớ trong.\r\n+Máy chạy trên hệ điều hành Android 7.1 Nougat và dự kiến sẽ được lên đời Oreo trong thời gian sắp tới đây.\r\nDung lượng pin của máy có dung lượng lên tới 3000 mAh hứa hẹn cho bạn sử dụng thoải mái trong hơn 1 ngày.\r\n', 1),
(6, 'Laptop gaming Acer VX5-591G', 20899000, 'https://i.imgur.com/1xbKxy0.jpg', 'Acer Aspire VX5 là dòng laptop chơi game mới nhất của hãng Acer. Máy gây ấn tượng với cấu hình “khủng” và thiết kế mạnh mẽ đầy nam tính. Máy mang đến trải nghiệm chơi game mượt mà không chỉ ở cấu hình mạnh mẽ mà còn bởi bằng màn hình tuyệt đẹp bên cạnh công nghệ âm thanh đỉnh cao. VX5 có trái tim mới là Intel Kabylake, chip HQ và card đồ họa rời thế hệ mới GTX 1050. Toàn bộ hệ thống được làm mát bởi bộ quạt tản nhiệt kép giúp tản nhiệt nhanh chóng qua hệ ống bô ở phía sau nổi bật.\r\n\r\nVẻ ngoài hầm hố\r\nĐược làm từ nhôm phủ ngoài lớp in nano tĩnh điện. Toàn bộ nắp ngoài có gam màu đen, phần khớp nối phía sau màu bạc kết hợp 2 cái ống bô thoát gió trông rất có điểm nhấn. Kích cỡ máy vừa phải 15.6 inch, độ dày ở mức thông thường và đặc biệt bàn phím phát sáng long lanh, rất hợp phong cách game thủ.', 2),
(7, 'Sony Xperia XZ', 9990000, 'https://i.imgur.com/nfoBdSi.jpg', 'ony Xperia XZ là smartphone cao cấp mới nhất của hãng công nghệ Nhật. Sản phẩm được cải thiện nhiều về thiết kế, nâng cấp camera và cấu hình so với chiếc Xperia Z5 cũ.\r\nTrong dải sản phẩm smartphone của Sony, Xperia XZ hiện được xem là thiết bị cao cấp nhất, là quân bài của Sony để cạnh tranh với các đối thủ như Galaxy S7/S7 Edge của Samsung hay iPhone 7 của Apple. Mặc dù đã khai tử dòng Z, song có thể xem Xperia XZ là hậu duệ của Xperia Z5 và chữ \"Z\" có trong tên phần nào thể hiện điều đó.\r\nXperia XZ duy trì kích cỡ và độ phân giải màn hình của Xperia Z5, cả dung lượng RAM vẫn là 3GB hơi thấp so với những máy Android đầu bảng hiện nay. Tuy vậy, sản phẩm có nhiều nâng cấp và cập nhật mới: thiết kế tinh chỉnh nhiều, vi xử lý Snapdragon 820 cao cấp, camera 23MP quay phim 4K, camera trước 13MP, hỗ trợ cổng USB Type C, cảm biến vân tay, chống bụi nước chuẩn IP68 và loa kép.\r\n', 1),
(8, 'Iphone 6s 32GB', 1249000, 'https://i.imgur.com/zjyBFDp.jpg', 'iPhone 6S là phiên bản nâng cấp của dòng iPhone 6 đã ra mắt trong năm 2014 trước đó.\r\nVẫn giữ nguyên thiết kế cũ nhưng iPhone 6S nhanh hơn 70% so với bản cũ, khả năng xử lý đồ họa nhanh hơn 90% cùng với các tính năng mới độc đáo và thú vị.\r\nƯu điểm:\r\n– Hiệu năng đã được cải thiện đáng kể\r\n– Tính năng Touch ID nâng cấp nhiều hơn\r\n– Công nghệ 3D Touch hữu ích\r\n– Camera đã được cải thiện\r\nNhược điểm:\r\n– Phiên bản iPhone 6S màu vàng hồng không nam tính như Apple đã quảng cáo trước đó.\r\n– Nhà sản xuất vẫn giữ dung lượng bộ nhớ trong ở con số 16GB.\r\n', 1),
(9, 'Dell Vostro 3568 i5 7200U/4GB/1TB/2GB', 15490000, 'https://i.imgur.com/EEESFRz.jpg', 'Đặc điểm nổi bật\r\nThiết kế lịch lãm, sang trọng\r\nHiệu năng mạnh mẽ với vi xử lý Core i5 thứ hệ thứ 7 mới nhất\r\nDung lượng Pin lớn cho thời gian hoạt động và làm việc lâu.', 2),
(10, 'Samsung Galaxy A8', 10990000, 'https://i.imgur.com/LzQFqIu.jpg', 'Samsung Galaxy A8: Cấu hình khủng long, thiết kế mượt mà\r\nSamsung Galaxy A8 là chiếc điện thoại tiếp theo trong dòng Galaxy A, chiếc điện thoại này được người dùng đánh giá cao nhờ thiết kế đẹp mắt và cấu hình khủng.\r\nMới được cho ra mắt đầu tháng 7, Samsung Galaxy A8 đã không làm người dùng thất vọng, chiếc điện thoại này ngay lập tức thu hút người dùng nhờ thiết kế đẹp mắt với kích thước siêu mỏng cùng với một màn hình rộng sắc nét.\r\n-Thiết kế sang trọng, tinh tế\r\nSamsung Galaxy A8 mang những nét thiết kế đặc trưng của những sản phẩm trong dòng Galaxy A, máy sở hữu thiết kế nguyên khối với chất liệu hoàn toàn làm từ kim loại, tuy nhiên cạnh viền của máy đã được làm “chau chuốt” hơn so với người đàn anh Galaxy A7. Viền của máy được bo tròn hơn, giúp người dùng thoải mái hơn khi cầm trên tay mặc dù máy khá mỏng.Mặt trước của Galaxy A8 là màn hình rộng với các cạnh viền bezel khá mỏng, khiến cho máy càng trở lên sang trọng hơn, phía dưới của màn hình vẫn là ba phím Android đặc trưng của Samsung, tuy nhiên có một điểm mới trên phím Home của Galaxy A8 với các sản phẩm khác trong dòng Galaxy A đó tính năng cảm biến vân tay mới được Samsung thêm vào. Mặt sau của máy là tấm kim loại được thiết kế nhám, giúp tăng ma sát chống trầy xước, bám bụi và dấu vân tay khá tốt.\r\n-Màn hình hiển thị sống động\r\nSamsung Galaxy A8 được trang bị màn hình Super AMOLED 5.7 inch với độ phân giải 1920 x 1080 pixel và mật độ điểm ảnh 386 ppi, màn hình của máy được bảo vệ bởi tấm kính cường lực Corning thế hệ thứ 4, giúp mặt trước của máy trở lên vững chắc không kém gì siêu phẩmSamsung Galaxy S6.\r\n-Hiệu năng hoạt động\r\nSamsung Galaxy A8 được trang bị bộ vi xử lý lõi tám Qualcomm Snapdragon 615, gồm 4 nhân Cortex A53 chạy với xung nhịp 1.5 GHz và 4 nhân Cortex A53 chạy xung nhịp 1 GHz, kèm theo đó là nhân đồ họa Adreno 405. Máy được trang bị RAM 2GB và sở hữu hai phiên bản bộ nhớ trong là 16/32 GB, tuy nhiên điều này dường như không quá quan trọng khi chiếc điện thoại này còn được trang bị khe cắm thẻ nhớ ngoài\r\n', 1),
(11, 'Asus X510UQ i5 8250U/4GB', 15190000, 'https://i.imgur.com/usUlfLX.jpg', 'Đặc điểm nổi bật\r\nTiếp nối với sự phát triển của chip xử lý thế hệ thứ 8 mới nhất của Intel, Asus X510UQ i5 8250U ra đời và được định hướng là chiếc máy tính xách tay lí tưởng cho các hoạt động học - làm và giải trí hàng ngày.', 2),
(12, 'Samsung Galaxy Note 8', 22490000, 'https://i.imgur.com/mDkWMuw.jpg', 'Galaxy Note 8 là niềm hy vọng vực lại dòng Note danh tiếng của Samsung với diện mạo nam tính, sang trọng. Trang bị camera kép xóa phông thời thượng, màn hình vô cực như trên S8 Plus, bút Spen với nhiều tính năng mới và nhiều công nghệ được Samsung ưu ái đem lên Note 8:\r\n-Dù được giới thiệu là màn hình lên tới 6.3 inch nhưng thực sự máy khi cầm trên tay rất nhỏ gọn nhờ vào công nghệ “màn hình vô cực” tiên tiến nhất hiện nay của Samsung.\r\n-Các cạnh bên máy được làm cong đều khiến mình khi cầm có cảm giác ôm tay rất thoải mái và không hề bị cấn.\r\n-Cả mặt trước và mặt sau máy đều được phủ kín bằng lớp kính phản chiếu rất đẹp như đã từng xuất hiện ở bộ đôi S8/S8+\r\n-Và màn hình 2K trên Note 8 hoạt động tốt, góc nhìn sắc nét.\r\n-Galaxy Note 8 được cài sẵn hệ điều hành Android Nougat đi kèm với giao diện Samsung Experience mới nhất. Theo nhiều người dùng đánh giá thì đây có thể nói là bộ giao diện đẹp và hiệu quả nhất của Samsung tới tận bây giờ.\r\n-Với cấu hình khủng long Exynos 8895 8 nhân và RAM 6 GB, Note 8 hỗ trợ chạy đa nhiệm rất tốt, đáp ứng hầu hết các nhu cầu chơi game 3D nặng.\r\n-Camera kép xóa phông trên Note 8 có thể nói là … cảm giác như mình đang sử dụng một chiếc máy ảnh thực thụ vậy.\r\n-S-Pen sẽ càng ngày càng “khôn” với những tính năng như viết ngay cả khi màn hình đã tắt, live message,… và điều thú vị nữa là S-Pen sẽ có cùng với màu máy luôn.\r\n-Pin 3.300 mAh trên Note 8 được cho là đuối hơn so với S8+ nhưng qua một số bài thử nghiệm cho thấy, khả năng trụ vững của Note 8 cũng khá đáng nể, khi vượt qua cả iPhone 7 Plus và Galaxy S8.\r\n', 1),
(13, 'Asus S510UA i5 8250U/4GB/1TB/Win10', 16290000, 'https://i.imgur.com/maztMGG.jpg', 'Đặc điểm nổi bật\r\nLaptop Asus S510UA i5 trang bị chip xử lý thế hệ thứ 8 mới nhất của Intel không quá hầm hố nhưng vẫn đem đến hiệu năng vượt trội, đáp ứng tốt cho bạn trong các nhu cầu làm việc, học tập, giải trí hằng ngày', 2),
(14, 'Xiaomi Mi Note 3 64GB Ram 6GB 2017 ', 7190000, 'https://i.imgur.com/X1faPRM.jpg', 'Về thiết kế, Xiaomi tiếp tục làm vát cong nhẹ đều trên Mi Note 3 để tăng cường trải nghiệm của người dùng. Bảo vệ cho máy là khung viền kim loại bền bỉ.\r\nCó thể nói Xiaomi Mi Note 3 là một phiên bản phóng to của Xiaomi Mi6. Máy sở hữu màn hình 5.5 inch, độ phân giải Full HD. So với thế hệ trước, Mi Note 3 có màn hình với kích thước nhỏ hơn ( 5.5 inch < 5.7 inch).\r\n', 1),
(15, 'Acer Aspire E5 575G', 16490000, 'https://i.imgur.com/ZwoWafU.gifv', 'Dòng máy chuyên giải trí, công việc\r\nAcer Aspire E5 575G là dòng laptop được tạo nên để phục vụ nhu cầu chơi game, đồ họa hay làm những công việc đòi hỏi cấu hình tốt nhưng lại có giá rẻ. Cấu hình máy rất tốt với CPU Core i7, card đồ họa rời Geforce 940MX mạnh mẽ chuyên game, đồ họa.\r\n\r\nTuy nhiên máy khá dày (30.4 mm) và nặng 2.2 kg hơi kém thuận tiện khi di chuyển.', 2),
(16, 'Dell Inspiron 5567 i5 7200U/4GB/1TB/2G', 16790000, 'https://i.imgur.com/uQLvSEF.jpg', 'Thiết kế cơ bản\r\nDell Inspiron 5567 có thiết kế không quá sang trọng hay nổi bật cao cấp, bù lại chất liệu nhựa cứng chống chịu va đập khá tốt đồng thời máy cũng không quá nặng, thuận lợi để sử dụng và di chuyển trong nhiều điều kiện khác nhau.', 2),
(17, 'Lenovo Yoga 520 14IKBR i5', 15490000, 'https://i.imgur.com/iT3MG45.jpg', 'Đặc điểm nổi bật\r\nLaptop Lenovo Yoga 520 14IKBR I5 8250U là mẫu máy laptop tầm trung nhưng có thiết kế mang xu hướng hiện đại, có kiểu dáng xoay 360 độ, cấu hình thế hệ mới đáng giá.', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2024 lúc 06:38 PM
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
  `IDNguoiDung` bigint(20) UNSIGNED NOT NULL,
  `IDChuDe` int(11) NOT NULL,
  `TieuDe` text DEFAULT NULL,
  `NoiDung` text NOT NULL,
  `NgayDang` datetime DEFAULT current_timestamp(),
  `SoLuotLike` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`IDBaiViet`, `IDNguoiDung`, `IDChuDe`, `TieuDe`, `NoiDung`, `NgayDang`, `SoLuotLike`) VALUES
(1, 1, 9, 'demo', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '2024-04-28 11:02:52', 0),
(3, 1, 9, 'đang sửa', 'thử', '2024-04-28 17:21:08', 0),
(5, 1, 12, 'khoa học', 'ádsadasdas', '2024-04-29 16:21:16', 0),
(6, 1, 11, 'khoa học', 'sssssssssssssssss', '2024-04-29 16:23:53', 0),
(7, 1, 10, 'khoa học', 'aaaaaaaaaaaaaaaaaaaa', '2024-04-29 16:32:56', 0),
(8, 1, 10, 'khoa học', 'aaaaaaaaaaaaaaaaaaaaaaaa', '2024-04-29 16:34:08', 0),
(9, 1, 10, 'khoa học', 'aksjdkasdjaskdasdhaskdj', '2024-04-29 16:34:46', 0),
(10, 1, 8, 'demo', 'test', '2024-04-29 16:36:59', 0),
(11, 1, 8, 'không', 'aaaaaaaaaa', '2024-04-29 16:37:31', 0);

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
(1, 3, 'Trong các ảnh trên ảnh nào là giao diện của Email? (chỉnh sửa)', '1714969316.png'),
(2, 3, 'Email là gì?', ''),
(3, 3, 'Đâu là icon của Email?', '3.png'),
(4, 3, 'Trường nào là địa chỉ của người nhận Email?', '4.png'),
(5, 3, 'Trong các địa chỉ dưới đây đâu là địa chỉ của Email?', ''),
(6, 3, 'Anna Đang đăng kí tài khoản Email hãy chọn tên người dùng phù hợp cho cô ấy', '6.png'),
(7, 3, 'Trong các mật khẩu ở hình ảnh dưới đây, đâu là mật khẩu mạnh nhất?', '7.png'),
(8, 3, 'Điều gì sẽ sảy ra khi bạn cung cấp số điện thoại cho nhà cung cấp dịch vụ Email?', ''),
(9, 3, 'Giao diện trên cần bạn làm gì', '9.png'),
(10, 3, 'Giao diện trên cần bạn làm gì', '10.png'),
(11, 3, 'Button nào dùng để tạo một Email mới', '11.png'),
(12, 3, 'Lựa chọn vị trí đúng cho các nội dung trong ảnh dưới đây', '12.png'),
(13, 3, 'Đâu là nút gửi tin nhắn', '13.png'),
(14, 3, 'Đâu là Email của \"Job Opening at City Hall\" gửi cho bạn?', '14.png'),
(15, 3, 'Nút nào trong ảnh dưới đây sẽ chỉ gửi tin nhắn đến người gửi Email này?', '15.png'),
(16, 3, 'Nút nào trong ảnh dưới đây sẽ gửi tin nhắn đến người gửi Email này và những người khác đã nhận được nó?', '15.png'),
(17, 3, 'Nút nào trong ảnh dưới đây sẽ giúp bạn gửi tin nhắn này đến một người mới chưa nhìn thấy nó.', '15.png'),
(18, 3, 'Bấm vào nút để đính kèm tập tin vào email.', '13.png'),
(19, 3, 'Mở tệp có tên \"references\"', '19.png'),
(20, 3, 'Mở email có tệp đính kèm.', '20.png'),
(21, 3, 'Tải xuống file W-4.docx', '21.png'),
(22, 3, 'Xóa email trong hộp thư đến có tên \"Meeting Next Week\"', '22.png'),
(23, 3, 'Nơi bạn có thể xem các Email bạn đã xóa', '23.png'),
(25, 1, 'Nhấp vào máy tính xách tay.', '1.png'),
(26, 1, 'Bấm vào màn hình cảm ứng trong hình.', '3.png'),
(27, 1, 'Bấm vào nút home trong hình.', '3.png'),
(28, 1, 'Bấm vào cổng USB.', '5.png'),
(29, 1, 'Bấm vào camera của máy tính xách tay.', '6.png'),
(30, 1, 'Bấm vào cổng sạc.', '7.png'),
(31, 1, 'Bấm vào đơn vị hệ thống hoặc vỏ máy tính.', '8.png'),
(32, 1, 'Bấm vào màn hình.', '8.png'),
(33, 1, 'Bấm vào nút trong hình để bật máy tính.', '10.png'),
(34, 1, 'Bấm vào nút trong hình để bật và tắt màn hình.', '10.png'),
(35, 1, 'Đăng nhập vào máy tính bằng tên người dùng thư viện và mật khẩu 53476. Nhấp vào Đăng nhập khi bạn hoàn tất.', '12.png'),
(36, 1, 'Nhấn phím làm cho tất cả các chữ cái bạn gõ thành chữ in hoa cho đến khi bạn nhấn lại.', '13.png'),
(37, 1, 'Nhấn phím sẽ bắt đầu một dòng hoặc đoạn mới trong văn bản của bạn.', '13.png'),
(38, 1, 'Bấm phím bạn cần sử dụng để gõ ? thay vì /.', '13.png'),
(39, 1, 'Nhấn phím xóa các ký tự bên trái con trỏ của bạn.', '13.png'),
(40, 1, 'Nhấn phím di chuyển con trỏ lên một dòng.', '13.png'),
(41, 1, 'Nhấn phím di chuyển con trỏ đến điểm dừng tab tiếp theo.', '13.png'),
(42, 1, 'Tắt âm lượng bằng một cú nhấp chuột vào hình ảnh hộp âm thanh.', '19.png'),
(43, 1, 'Bấm vào biểu tượng trong hình để mở trình duyệt internet.', '20.png'),
(44, 1, 'Bấm vào bất kỳ biểu tượng nào trên màn hình nền trong hình.', '21.png'),
(45, 1, 'Di chuyển tài liệu có tên \"September Calenda\" vào Thùng rác.', '22.png'),
(46, 1, 'Bấm vào biểu tượng cài đặt trong hình có thể giúp máy tính dễ sử dụng hơn (ví dụ: làm cho con trỏ chuột to hơn).', '23.png'),
(47, 1, 'Hình ảnh này có ý nghĩa gì? Lựa câu trả lời đúng.', '24.png'),
(48, 1, 'Trong bàn phím di động trong hình, nhấp vào phím hiển thị bàn phím khác với nhiều lựa chọn ký tự hơn.', '25.png'),
(49, 1, 'Bấm vào chuột.', '26.png'),
(50, 1, 'Bấm vào Touchpad.', '26.png'),
(51, 1, 'Bấm vào con trỏ chuột sẽ mở một thư mục tập tin.', '28.png'),
(52, 1, 'Bấm vào con trỏ chuột cho thấy bạn có thể chèn hoặc thay đổi văn bản trong vùng này.', '29.png'),
(53, 1, 'Nhấp đúp chuột vào This PC trong hình để mở nó.', '30.png'),
(54, 1, 'Click chuột phải vào thư mục User trong hình.', '31.png'),
(55, 1, 'Di chuyển tài liệu trong ảnh vào thư mục.', '32.png'),
(56, 1, 'Chọn tất cả các hộp kiểm trong hình. Sau đó, nhấp vào nút \"OK\".', '33.png'),
(57, 2, 'Chọn tất cả các biểu tượng trình duyệt internet. Sau đó, nhấp vào Tiếp theo', '1.png'),
(58, 2, 'Chọn ba cách bạn có thể kết nối với internet. Sau đó, nhấp vào Tiếp theo', NULL),
(59, 2, 'Trong hình, hãy nhấp vào nút trong cửa sổ trình duyệt để quay lại trang cuối cùng bạn đã truy cập', '3.png'),
(60, 2, 'Trong hình, nhấp vào nút trong cửa sổ trình duyệt để làm mới trang đó', '3.png'),
(61, 2, 'Trong hình, nhấp vào nút trong cửa sổ trình duyệt để thêm trang đó vào mục yêu thích của bạn', '3.png'),
(62, 2, 'Trong hình, nhấp vào nút trong cửa sổ trình duyệt để tìm các tệp bạn đã tải xuống', '3.png'),
(63, 2, 'Bấm vào thanh địa chỉ', '7.png'),
(64, 2, 'Bấm vào các vị trí trong hình nơi bạn có thể nhập cụm từ tìm kiếm. Sau đó, nhấp vào Tiếp theo', '8.png'),
(65, 2, 'Chọn tất cả các câu trả lời đúng. Sau đó, nhấp vào Tiếp theo', '9.png'),
(66, 2, 'Nhấp vào liên kết sẽ chỉ cho phép tôi tìm kiếm hình ảnh', '10.png'),
(67, 2, 'Nhấp vào điều khiển trong hình sẽ phóng to bản đồ để biết thêm chi tiết', '11.png'),
(68, 2, 'Cuộn xuống cuối trang', '12.png'),
(69, 2, 'Nhấp vào phần trang web trong hình sẽ đưa bạn đến trang chủ của trang web đó', '13.png'),
(70, 2, 'Nhấp vào phần trang web trong hình sẽ đưa bạn đến trang web của nhà quảng cáo', NULL),
(71, 2, 'Bấm vào một siêu liên kết trong hình ảnh', '15.png'),
(72, 2, 'Nhấp vào vị trí trong ảnh nơi bạn có thể bắt đầu video', '16.png'),
(73, 2, 'Chọn hai địa chỉ web sử dụng tên miền phổ biến. Sau đó, nhấp vào Tiếp theo', NULL),
(74, 2, 'Chọn thêm hai địa chỉ web sử dụng tên miền phổ biến. Sau đó, nhấp vào Tiếp theo', NULL),
(75, 2, 'Chọn công cụ trình duyệt trong hình sẽ cho phép bạn xem các trang web mà không cần theo dõi lịch sử duyệt web của mình', '19.png'),
(76, 2, 'Bạn đang ở thư viện và vừa đăng nhập vào tài khoản ngân hàng của mình. Câu hỏi này bật lên. Trả lời đi', '20.png'),
(77, 2, 'Loại phần mềm nào sau đây là loại phần mềm có chức năng ngăn chặn, tìm và loại bỏ các phần mềm nguy hiểm trên máy tính và mạng', NULL),
(78, 2, 'Chọn câu trả lời đúng, Đúng hoặc Sai', '22.png'),
(79, 2, 'Chọn câu trả lời đúng, Đúng hoặc Sai', NULL),
(80, 2, 'Hoàn tất các bước còn lại để đăng nhập vào website trong hình', '24.png'),
(81, 2, 'Lựa câu trả lời đúng', '25.png'),
(82, 2, 'Kéo thông tin vào đúng vị trí trên biểu mẫu. Sau đó, nhấp vào Tiếp theo', '26.png'),
(83, 2, 'Làm cho văn bản lớn hơn', '27.png'),
(84, 2, 'Mở công cụ cho phép bạn tìm một từ cụ thể trong trang', '28.png'),
(85, 2, 'Nhấn vào để tạo tab trống mới trên trình duyệt như trong hình', '29.png'),
(86, 2, 'Mở “How to Write a Resume, from Monster.com” trong tab mới', '30.png'),
(87, 2, 'Chuyển đến tab đầu tiên có tiêu đề “Google”', '31.png'),
(88, 2, 'Đóng tab thứ hai có tiêu đề “write a resume - Google Search”', '32.png'),
(89, 2, 'Kích hoạt cửa sổ bật lên', '33.png'),
(90, 2, 'Đóng cửa sổ bật lên', '34.png'),
(91, 10, 'Lựa chọn thiết lập bảo mật cho nơi Anna ở hiện tại sẽ cho phép mọi người nhìn thấy thông tin của cô ấy', '6-17.png'),
(92, 10, 'Mạng xã hội nào mà nơi người dùng giao tiếp qua các đoạn tus cập nhật ngắn gọi là \"Tweets\"', NULL),
(93, 10, 'Mạng xã hội nào thường dùng trong môi trường làm việc chuyên nghiệp', NULL),
(94, 10, 'Mạng xã hội lớn nhất thế giới hiện nay', NULL),
(95, 10, 'Mạng xã hội nào được tạo ra để chia sẻ hình ảnh và clip từ smartphone', NULL),
(96, 10, 'Cho các thông tin sau: (1) minh@hvnh.edu.vn, (2) Trần, (3) Minh, (4) Password. Nhìn hình ảnh sau và sắp xếp theo thứ tự từ trái sang phải từ trên xuống dưới', 'https://drive.google.com/file/d/1-i3rPQplTMwDaEcStI05z0Bp1fbia_U7/view?usp=drive_link'),
(97, 10, 'Nhìn hình ảnh minh họa sau và xem ai mới là người nên kết bạn', 'https://drive.google.com/file/d/1FGlnep0rBDl3ZKerbavU8w7MH1pqRi8o/view?usp=drive_link'),
(98, 10, 'Nhìn ảnh minh họa, chọn thiết lập thay đổi để chỉ có bạn bè xem được trạng thái', 'https://drive.google.com/file/d/1HCS6cLXAr-d7USLlpGXDMmFk5OwXfAle/view?usp=drive_link'),
(99, 10, 'Nhìn ảnh minh họa, chọn thiết lập thay đổi để chỉ có chính người dùng xem được trạng thái', 'https://drive.google.com/file/d/1WFgxk9T7iyxiLFU_jyJsvpenc65_u9Wn/view?usp=drive_link'),
(100, 10, 'Nhìn ảnh minh họa, chọn thiết lập để tất cả mọi người xem được thông tin', 'https://drive.google.com/file/d/1gEaUp12ReLAVXkiGno2TEhkQ1kcuevvH/view?usp=drive_link'),
(101, 10, 'Chọn vào đâu để có thể thay đổi được avatar', 'https://drive.google.com/file/d/1aoV6R1Lntv-HP2lgH_5XIblPi0JN9y1G/view?usp=drive_link'),
(102, 10, 'Đúng hay sai? Việc sử dụng tài khoản Facebook của bạn để đăng nhập vào các trang web khác có thể gặp rủi ro', 'https://drive.google.com/file/d/1tRabN0wpbak56jt5w2qU74_GqORlBJaM/view?usp=drive_link'),
(103, 10, 'Đọc thông tin. Nó có an toàn không?', 'https://drive.google.com/file/d/1ISRhfB4S26C_7phtZ-3Oj-aTHD46MeXq/view?usp=drive_link'),
(104, 10, 'Điều gì xảy ra khi bạn \"Thích\" một trang trên Facebook? Chọn mọi câu trả lời đúng', NULL),
(105, 10, 'Nhấp vào một địa điểm trong cửa sổ Facebook này nơi bạn có thể gửi tin nhắn riêng tư cho một người', 'https://drive.google.com/file/d/1PtiFBrOTJAGgAe_6YmQkLFB7U571c1O9/view?usp=drive_link'),
(106, 10, 'Nhấp vào vị trí nào trong cửa sổ Facebook này nơi bạn có thể đăng tin nhắn công khai', 'https://drive.google.com/file/d/1ISRhfB4S26C_7phtZ-3Oj-aTHD46MeXq/view?usp=drive_link'),
(107, 10, 'Nếu bạn đưa ra một lựa chọn thiếu khôn ngoan và đăng một bức ảnh không phù hợp lên mạng xã hội, các nhà tuyển dụng trong tương lai sẽ không bao giờ có thể nhìn thấy được nó', NULL),
(108, 10, 'Chia sẻ tin tuyển dụng này với bạn của bạn, bằng tin nhắn riêng. bước đầu tiên là gì?', 'https://drive.google.com/file/d/1n4P5OFF4zW-QcxYBsN2XTwr0tlt0lual/view?usp=drive_link'),
(109, 12, 'Jan và Benjamin đồng ý rằng điều đầu tiên cả hai cần làm là lập một kế hoạch. Đọc hai kế hoạch. Cái nào có nhiều khả năng thành công hơn? Lựa câu trả lời đúng.', 'https://drive.google.com/file/d/17D7l2YrbSx-KmpA7yENW3LcWBVF0BbvJ/view?usp=drive_link'),
(110, 12, 'Những nhiệm vụ nào có thể giúp cải thiện cả kế hoạch của Jan và kế hoạch của Benjamin? Chọn ba câu trả lời đúng nhất.', NULL),
(111, 12, 'Thời gian thất nghiệp của Benjamin đã khiến anh ấy nhận ra rằng anh ấy không thích công việc trước đây của mình đến mức nào. Nhưng anh ấy chưa bao giờ thực sự nghĩ nhiều về việc mình có thể tận hưởng điều gì tốt hơn. Chọn hai phát biểu đúng.', NULL),
(112, 12, 'Benjamin quyết định tình nguyện giúp đỡ khu vườn cộng đồng ở khu phố của mình. Chọn ba câu phát biểu đúng.', NULL),
(113, 12, 'Benjamin có rất nhiều nghiên cứu cần thực hiện về nghề làm vườn. Anh ấy có thể học thêm bằng cách nào? Chọn ba câu trả lời đúng nhất.', NULL),
(114, 12, 'Đâu là nơi tốt nhất để tìm việc làm trong lĩnh vực sản xuất? Chọn ba câu trả lời đúng nhất.', NULL),
(115, 12, 'Jan có quá nhiều kết quả từ trang tìm kiếm việc làm này. Thay đổi tìm kiếm để nó chỉ hiển thị các công việc đã được đăng trong tuần trước.', 'https://drive.google.com/file/d/1YnObo28DhrOa8oW9J63AIQNdwpI1Nowr/view?usp=drive_link'),
(116, 12, 'Nhiều kết quả mà Jan nhận được bây giờ là từ những công việc chỉ cung cấp 20 giờ mỗi tuần. Cô ấy thà có 40 giờ với các quyền lợi. Thay đổi tìm kiếm lại để nó chỉ hiển thị những công việc đó.', 'https://drive.google.com/file/d/1NpH0mFfdGDa3qDMkyrpU30RBNPA-z0pB/view?usp=drive_link'),
(117, 12, 'Jan tìm hiểu về một hội chợ nghề nghiệp sản xuất gần đó. Cô quyết định đi. Những điều cô ấy cần làm để chuẩn bị là gì? Chọn 6 câu trả lời đúng nhất.', NULL),
(118, 12, 'Chuyến thăm hội chợ nghề nghiệp của Jan có thể mang lại những kết quả gì? Chọn ba câu trả lời đúng nhất.', NULL),
(119, 12, 'Đây là sơ yếu lý lịch của Jan. Benjamin ngay lập tức phát hiện ra một số vấn đề. Bạn thấy vấn đề gì? Tìm và bấm vào ba.', NULL),
(120, 12, 'Những kỹ năng nào trong sơ yếu lý lịch cũ của Benjamin có thể chuyển sang sơ yếu lý lịch làm vườn? Bấm vào ba dấu đầu dòng sẽ dễ dàng chuyển sang công việc ở các ngành khác.', 'https://drive.google.com/file/d/1Q_H5_JZpJ45o6mx9ybVcUcqh1szgEHe2/view?usp=drive_link'),
(121, 12, 'Benjamin quyết định tạo một danh mục đầu tư. Những điều tốt đẹp nào để Benjamin đưa vào danh mục làm vườn của mình? Chọn ba câu trả lời đúng.', NULL),
(122, 12, 'Bạn nghĩ Jan nên nêu bật những tiêu chuẩn nào trong tin tuyển dụng này trong thư xin việc của mình? Hãy nhấp vào năm dấu đầu dòng mà Jan cần giải quyết.', 'https://drive.google.com/file/d/1PGtecpb_xtu9ph3HbOw5rK8Qx6UnvCIi/view?usp=drive_link'),
(123, 12, 'Một lá thư xin việc cần có những yếu tố gì? Kéo từng cái vào đúng thứ tự trong tài liệu.', 'https://drive.google.com/file/d/1-OemTuE9Jv744MeIS8k7EsCOQW2jQYYG/view?usp=drive_link'),
(124, 12, 'Kéo từng phần chữ cái của Benjamin vào thuật ngữ đặt tên cho nó.', 'https://drive.google.com/file/d/1Z92yvUNapY4WGOWhoOh1mdAJb5A3n9LR/view?usp=drive_link'),
(125, 12, 'Jan đã thử hai bản nháp bức thư của mình. Cái nào mạnh hơn? Lựa câu trả lời đúng.', 'https://drive.google.com/file/d/1QWrtjwqVnWDeZBZLpMoI--Vedp0C20SY/view?usp=drive_link'),
(126, 12, 'Jan nghe được từ một người bạn cũng làm việc trong lĩnh vực sản xuất rằng công ty của anh ấy có thể sắp tuyển dụng nhân viên. Anh ấy khuyến khích Jan liên hệ với người quản lý của anh ấy trước khi công việc được đăng. Cách tốt nhất để Jan liên lạc là gì? Lựa câu trả lời đúng.', NULL),
(127, 12, 'Một người mà Benjamin gặp qua khu vườn cộng đồng đã yêu cầu anh gửi sơ yếu lý lịch. Benjamin nên làm theo lời khuyên nào? Chọn hai câu trả lời đúng.', NULL),
(128, 12, 'Jan và Benjamin đều được mời phỏng vấn! Bây giờ họ cần phải chuẩn bị. Cả Jan và Benjamin nên làm gì trước buổi phỏng vấn? Chọn mỗi câu trả lời đúng.', NULL),
(129, 12, 'Họ sẽ phải trả lời những câu hỏi nào trong cuộc phỏng vấn? Chọn mỗi câu trả lời đúng.', NULL),
(130, 13, 'Bắt đầu cuộc hẹn', 'https://drive.google.com/file/d/1SosVlq7-w4Ax8KT6A6SaVkctrZGYuAr1/view?usp=drive_link'),
(131, 13, 'Luis nhìn thấy màn hình này. Giúp Luis đăng ký.', 'https://drive.google.com/file/d/1UHTZXTAWomvKIJD5_EZF-PwxIaS0Yp8P/view?usp=drive_link'),
(132, 13, 'Thêm Ibuprofen vào danh sách thuốc của Luis.', 'https://drive.google.com/file/d/1G0vVmCsiZnUBdgY_FRJTcGNj2SxwAWRL/view?usp=sharing'),
(133, 13, 'Bắt đầu cuộc hẹn trực tuyến.', 'https://drive.google.com/file/d/1mzUVKSiFZJE60Gijw4rpMWn-3AW1YK80/view?usp=drive_link'),
(134, 13, 'Luis nhìn thấy màn hình này. Giúp Luis chuẩn bị thiết bị của anh ấy.', ''),
(135, 13, 'Luis nên làm gì để bác sĩ có thể khám cho cậu ấy rõ hơn?', 'https://drive.google.com/file/d/1aD56NAzxIYOQbW2cWaKQ8Pd4YshwMczg/view?usp=drive_link'),
(136, 13, 'Bác sĩ không thể nghe thấy Luis! Khắc phục sự cố.', 'https://drive.google.com/file/d/1tRyUSXl5kZ0ZZcj409Apg6ErVJgIfl23/view?usp=drive_link'),
(137, 13, 'Bác sĩ gửi cho Luis một tin nhắn. Mở tin nhắn.', 'https://drive.google.com/file/d/1N_SNM3FOjLFRLETwTknz7y6tcvhctYhi/view?usp=drive_link'),
(138, 13, 'Trong cuộc hẹn của anh ấy, video bị treo. Sau đó, Luis nhìn thấy thông báo này trên màn hình. Rất có thể vấn đề là gì?', 'https://drive.google.com/file/d/1azjFTaSIrkGEN6lDKoG-GjtYtHSslE1d/view?usp=drive_link'),
(139, 13, 'Mở ứng dụng sẽ hiển thị cho Luis thêm thông tin về kết nối internet và di động của anh ấy.', 'https://drive.google.com/file/d/1k-D1hjrjdQizZ1nX0K3CuNVVEtkymczf/view?usp=drive_link'),
(140, 13, 'Luis nhìn thấy màn hình này. Tại sao Luis không thể kết nối với cuộc hẹn ảo của mình?', ''),
(141, 13, 'Kết nối điện thoại với WiFi.', 'https://drive.google.com/file/d/12T57rXLIXVCTFc-NXjAXk21Bu7RpGgrX/view?usp=drive_link'),
(142, 13, 'Tìm kiếm và tải xuống ứng dụng Northstar Health.', 'https://drive.google.com/file/d/1T1850yK4MkynR8_Z_TDjtcfHwTu-aPXP/view?usp=drive_link'),
(143, 13, 'Mở email từ Northstar Health và kích hoạt tài khoản của Luis.', 'https://drive.google.com/file/d/1WNZyEIUqMAIFldhBNnQkUpErqfLxW5k_/view?usp=drive_link'),
(144, 13, 'Luis cần tạo mật khẩu. Nhập mật khẩu theo yêu cầu.( Mật khẩu nào phù hợp)', 'https://drive.google.com/file/d/1-Eq91K__ZU27cqnXhP1IWPZjXrbLJpKA/view?usp=drive_link'),
(145, 13, 'Giúp Luis sắp xếp cuộc hẹn với Eve Loggins vào một ngày trong tuần trước 12 giờ trưa.', 'https://drive.google.com/file/d/1MlzfzXIQQXkG8lx7qYoci7mcOxQaVii6/view?usp=drive_link'),
(146, 13, 'Luis cần một thông dịch viên tiếng Tây Ban Nha. Yêu cầu một thông dịch viên tiếng Tây Ban Nha cho cuộc hẹn này.', 'https://drive.google.com/file/d/1wAs0627OzKJtYLVqFLpf4EV8hNRlWBKV/view?usp=drive_link'),
(147, 13, 'Đăng xuất khỏi cổng thông tin y tế.', 'https://drive.google.com/file/d/19JYtRYWIZ-bxWDjBKMP_PdC6k-QXEbEy/view?usp=drive_link'),
(148, 13, 'Luis gặp sự cố khi đăng nhập. Hãy giúp anh ấy đặt lại mật khẩu.', 'https://drive.google.com/file/d/1wSqHfY338-yavsEuBGwupwSTgJ9DwNn8/view?usp=drive_link'),
(149, 13, 'Luis vừa tạo mật khẩu mới. Lưu mật khẩu trên trình duyệt để Luis đăng nhập dễ dàng hơn.', 'https://drive.google.com/file/d/1KrT-G5jh40k7ACMDUuM2KaLhtKWrtn6c/view?usp=drive_link'),
(150, 13, 'Luis đã đăng xuất. Giúp Luis đăng nhập lại bằng mật khẩu đã lưu.', 'https://drive.google.com/file/d/1z_xAkkhaNsff26upAF5sR0Cu8mgP6xqk/view?usp=drive_link'),
(151, 13, 'Luis đang gặp sự cố với ứng dụng! Giúp Luis tìm nơi để đặt câu hỏi về tài khoản của anh ấy.', 'https://drive.google.com/file/d/1wJ9J6oNLQUzOM3JT0hIBdbb-PzROlBi9/view?usp=drive_link'),
(152, 15, 'Ý nghĩa của việc học tổng hợp là gì ?', 'Ảnh 1'),
(153, 15, 'Lớp đồng bộ ảo là gì?', 'Ảnh 2'),
(154, 15, 'Sắp xếp những lợi ích và thách thức của việc học từ xa vào các cột', 'Ảnh 3'),
(155, 15, 'Đâu là điều mà gia đình Jan cần để bắt đầu việc học từ xa', 'Ảnh 4'),
(156, 15, 'Chọn 2 cách để kết nối internet', 'Ảnh 5'),
(157, 15, 'Kết nối mạng Wi-fi cho máy tính', 'Ảnh 6.1 - 6.2'),
(158, 15, 'Làm thế nào để những cài đặt kiểm soát của phụ huynh có thể bảo đảm an toàn cho những đứa trẻ sử dụng', 'Ảnh 7'),
(159, 15, 'Chọn đường dẫn cho học sinh đăng nhập trang', 'Ảnh 8'),
(160, 15, 'Giúp học sinh đăng nhập vào tài khoản học từ xa theo thông tin đã được đưa', 'Ảnh 9'),
(161, 15, 'Chọn 1 nơi mà Jan và Eve có thể tìm thấy bài tập Eve cần làm', 'Ảnh 10'),
(162, 15, 'Chọn 1 nơi có thể xem được những hoạt động học Eve đã hoàn thành', 'Ảnh 11'),
(163, 15, 'Eve muốn hoàn thành hoạt động này. Chọn để bắt đầu bài tập', 'Ảnh 12'),
(164, 15, 'Chọn biểu tượng để đăng tải hình ảnh công việc của Eve', 'Ảnh 13'),
(165, 15, 'Lưu thông tin mật khẩu đăng nhập vào trình duyệt', 'Ảnh 14'),
(166, 15, 'Sắp xếp những hoạt động Elena nên làm và không nên làm trong lớp học trực tuyến của cô ấy', 'Ảnh 15'),
(167, 15, 'Tham gia cuộc học với mã ID = 12345', 'Ảnh 16'),
(168, 15, 'Chọn biểu tượng để tắt microphone của Elena', 'Ảnh 17'),
(169, 15, 'Chọn biểu tượng để mở khung trò chuyện', 'Ảnh 18'),
(170, 15, 'Cuộc họp lớp đang diễn ra. Elena có thể nghe giáo viên đang nói, nhưng cô ấy không thể xem được video. Giúp Elena sửa chữa vấn đề này', 'Ảnh 19'),
(171, 15, 'David có thể làm gì để giảm bớt thời gian màn hình mày tính của Elena', 'Ảnh 20'),
(172, 15, 'Elena cảm thấy bị căng thẳng. Cô áy nhắn tin cho giáo viên. Tìm cách để nhận phản hồi từ giáo viên của cô ấy', 'Ảnh 21'),
(173, 15, 'Giáo viên của Elena gửi cho cô ấy một danh sách những cách giúp Elena giảm căng thẳng và tập trung vào lớp học từ xa. Elena sẽ cải thiện gì nếu cô ấy cố gắng theo những ý tưởng này', 'Ảnh 22'),
(174, 15, 'David biết rằng sự tương tác xã hội rất quan trọng cho việc học và phát triển của Elena. Anh ấy biết rằng sự tương tác xã hội có giúp Elena giảm căng thẳng. David có thể làm gì để giúp Elena có nhiều tương tác xã hội hơn', 'Ảnh 23'),
(175, 14, 'Deka nói với Casey về việc cô ấy cần làm sạch những \"dấu chân điện tử số\" của cô ấy. Định nghĩa nào đúng về \"dấu chân điện tử số\"', 'Ảnh 1'),
(176, 14, 'Deka nói với Casey rằng \"dấu chân điện tử số\" rất quan trọng. Vậy tại sao \"dấu chân điện tử số quan trọng\"', 'Ảnh 2'),
(177, 14, 'Casey nói rằng \"dấu chân điện tử số\" có thể cũng có lợi ích. Làm thế nào để \"dấu chân điện tử số\" có ích cho bạn.', 'Ảnh 3'),
(178, 14, 'Deka đồng ý, nhưng không phải tất cả những \"dấu chân điện tử số\" đều có ích. Đâu là hậu quả tiêu cực có thể xảy ra của \"dấu chân điện tử số\"', 'Ảnh 4'),
(179, 14, 'Casey muốn kiểm soát \"dấu chân điện tử số\" của cô ấy. Đầu tiên, cô ấy cần hiểu \"dấu chân điện tử số\" của cô ấy đến từ đâu.', 'Ảnh 5'),
(180, 14, 'Đâu là những điều có thể xảy ra như là một kết quả của những hành động trực tuyến của bạn', 'Ảnh 6'),
(181, 14, 'Casey tìm kiếm một ban nhạc mới trên điện thoại của cô ấy. Bây giờ, Casey liên tục nhìn thấy quảng cáo của ban nhạc đó. Đâu là nguyên nhân Casey nhìn thấy nhiều hơn quảng cáo trực tuyến của ban đó sau khi tìm kiếm thông tin về họ', 'Ảnh 7'),
(182, 14, 'Đâu là cách để thêm thông tin định danh cá nhân trực tuyến', 'Ảnh 8'),
(183, 14, 'Casey nói với Deka rằng từ khi xuất hiện \"dấu chân điện tử số\" trên trực tuyến, nó không có những hậu quả thực sự, nhưng Deka phản đối rằng không đúng. Deka nói rằng, \"dấu chân điện tử số\" của bạn có thể thực sự gây nhiều hậu quả.', 'Ảnh 9'),
(184, 14, 'Deka khuyên Casey nên xóa những hình ảnh không chuyên nghiệp trên trang mạng xã hội của cô ấy. Chỉ ra 2 trong những bức ảnh dưới đây thể hiện không chuyên nghiệp', 'Ảnh 10'),
(185, 14, 'Casey quyết định tạo tài khoản Instagram cá nhân riêng tư, chỉ bạn bè của cô ấy có thể nhìn thấy nó. Đánh giá những cài đặt để tạo nên tài khoản riêng tư', 'Ảnh 11'),
(186, 14, 'Casey cũng muốn chắc chắn rằng mọi người không nhìn thấy những danh sách phát cô ấy lưu trên Youtube. Đánh giá những cài đặt để những danh sách phát của cô ấy lưu được riêng tư', 'Ảnh 12'),
(187, 14, 'Deka tells Casey rằng đôi khi những thông tin bị đánh cắp trực tuyến. Những loại thông tin nào có thể bị đánh cắp trực tuyến.', 'Ảnh 13'),
(188, 14, 'Điều gì có thể xảy ra nếu thông tin của Casey bị đánh cắp trực tuyến', 'Ảnh 14'),
(189, 14, 'Làm thế nào để mỗi tổ chức sau đây có thể sử dụng \"dấu chân điện tử số\" của bạn.', 'Ảnh 15'),
(190, 14, 'Casey học về những tệp tin máy tính. Đâu là định nghĩa đúng về những tệp tin đó', 'Ảnh 16'),
(191, 14, 'Đâu ra cách 1 tệp tin có thể được sử dụng để theo dõi \"dấu chân điện tử số\"', 'Ảnh 17'),
(192, 6, 'Làm sao để tạo một tài liệu mới?', '01_Word_Question_01.png'),
(193, 6, 'Đâu là Quick Access Tool Bar?', '02_Word_Question_02.png'),
(194, 6, 'Làm thế nào để mở File tài liệu có tên 2022 Resume?', '03_Word_Question_03.png'),
(195, 6, 'Để lưu lại những thay đổi vừa được thực hiện trên tài liệu mà không thay đổi tên hoặc nơi lưu trữ thì chọn tính năng nào trong 2 tính năng sau?', '04_Word_Question_04.png'),
(196, 6, 'Lưu tài liệu này với tên là \"2024 Resume\" trong thư mục trên máy tính có tên là \"Employment.\"', '05_Word_Question_05.png'),
(197, 6, 'Bản \"Resume\" nào là tài liệu Microsoft Word', '06_Word_Question_06.png'),
(198, 6, 'Xác định thanh Ribbon', '07_Word_Question_07.png'),
(199, 6, 'Dòng chữ được đánh dấu màu đỏ có phải lỗi chính tả không?', '08_Word_Question_08.png'),
(200, 6, 'Chuyển định dạng của Document sang định dạng dọc', '09_Word_Question_09.png'),
(201, 6, 'Phần nào trên màn hình làm việc của Word để chỉnh màu chữ', '11_Word_Question_11.png'),
(202, 6, 'Phần nào trên màn hình làm việc của word để chỉnh cỡ chữ', '10_Word_Question_10.png'),
(203, 6, 'Chọn công cụ trên thanh công cụ để in đậm dòng chữ được bôi đen', '13_Word_Question_13.png'),
(204, 6, 'Chọn vào đâu để căn giữa đoạn văn được bôi đen', '14_Word_Question_14.png'),
(205, 6, 'Chọn vào đâu để căn trái đoạn văn được bôi đen', '14_Word_Question_14.png'),
(206, 6, 'Đâu là biểu tượng để thực hiện chỉnh khoảng cách dãn cách dòng', '17_Word_Question_17.png'),
(207, 6, 'Làm sao để thêm bullets cho đoạn văn bản', '18_Word_Question_18.png'),
(208, 6, 'Thay đổi định dạng đầu dòng của đoạn văn bản thành đánh số', '19_Word_Question_19.png'),
(209, 6, 'Chọn biểu tượng nào để quay trở lại tác vụ vừa chỉnh sửa', '20_Word_Question_20.png'),
(210, 6, 'Làm thế nào để gán link từ website vào tài liệu Word', '21_Word_Question_21.png'),
(211, 6, 'Cắt đoạn văn bản được bôi đen', '22_Word_Question_22.png'),
(212, 6, 'Dán đoạn văn bản vừa được cắt', '23_Word_Question_23.png'),
(213, 6, 'Chuyển căn lề văn bản về dạng Normal', '24_Word_Question_24.png'),
(214, 6, 'Chọn biểu tượng nào để có thể thực hiện lưu và đóng văn bản cùng một lúc', '26_Word_Question_26.png'),
(215, 9, 'Đăng nhập vào tài khoản Google ngoại trừ tên đăng nhập thì có cần nhập mật khẩu hay không?', '01_Docs_Question.png'),
(216, 9, 'Để truy cập docs và tạo mới một tài liệu ở màn hình này thì cần làm như thế nào', '02_Docs_Question.png'),
(217, 9, 'Đâu là Menu bar', '03_Docs_Question.png'),
(218, 9, 'Đâu là Tool bar', '03_Docs_Question.png'),
(219, 9, 'Thực hiện chèn một bảng vào văn bản', '05_Docs_Question.png'),
(220, 9, 'Chỉnh sửa định dạng trang văn bản sang nằm ngang', '06_Docs_Question.png'),
(221, 9, 'In văn bản', '07_Docs_Question.png'),
(222, 9, 'Để mở file 2024 Resume ta nhấn đúp chuột vào file có tên 2024 Resume đúng hay không?', '08_Docs_Question.png'),
(223, 9, 'Để thực hiện việc sửa tên thì ta chọn vào đâu trên màn hình', '09_Docs_Question.png'),
(224, 9, 'Docs có thực hiện đánh dấu lỗi sai chính tả hay không', '10_Docs_Question.png'),
(225, 9, 'Đăng nhập vào tài khoản Google ngoại trừ tên đăng nhập thì có cần nhập mật khẩu hay không?', '01_Docs_Question.png'),
(226, 9, 'Để truy cập docs và tạo mới một tài liệu ở màn hình này thì cần làm như thế nào', '02_Docs_Question.png'),
(227, 9, 'Đâu là Menu bar', '03_Docs_Question.png'),
(228, 9, 'Đâu là Tool bar', '03_Docs_Question.png'),
(229, 9, 'Thực hiện chèn một bảng vào văn bản', '05_Docs_Question.png'),
(230, 9, 'Chỉnh sửa định dạng trang văn bản sang nằm ngang', '06_Docs_Question.png'),
(231, 9, 'In văn bản', '07_Docs_Question.png'),
(232, 9, 'Để mở file 2024 Resume ta nhấn đúp chuột vào file có tên 2024 Resume đúng hay không?', '08_Docs_Question.png'),
(233, 9, 'Để thực hiện việc sửa tên thì ta chọn vào đâu trên màn hình', '09_Docs_Question.png'),
(234, 9, 'Docs có thực hiện đánh dấu lỗi sai chính tả hay không', '10_Docs_Question.png'),
(235, 5, 'Cái nào trong số này là một hệ điều hành?', 'MacOS'),
(236, 5, 'Chọn hình ảnh máy tính đang sử dụng hệ điều hành Mac.', 'https://drive.google.com/file/d/1-jZQk6inqdvu3oJAlUD4zJUoULbkOM3T/view?usp=drive_link'),
(237, 5, 'Bấm vào Dock.', 'Thanh dưới'),
(238, 5, 'Nhấp vào thanh Menu.', 'Thanh trên'),
(239, 5, 'Bấm vào Màn hình nền.', 'Màn hình nền'),
(240, 5, 'Mở Notes', 'Trên thanh Dock, click Notes'),
(241, 5, 'Phóng to cửa sổ Ghi chú.', 'Nhấn Maximize'),
(242, 5, 'Đóng cửa sổ Ghi chú', 'Nhấn Close'),
(243, 5, 'Bạn có thể sử dụng ứng dụng nào để thay đổi các cài đặt như trình bảo vệ màn hình hoặc quyền kiểm soát? Chọn câu trả lời đúng bằng cách sử dụng Dock.', 'System settings'),
(244, 5, 'Bạn có thể nhấp vào biểu tượng nào để xem tất cả các tệp, thư mục và ứng dụng trên máy tính của mình? Chọn câu trả lời đúng bằng cách sử dụng Dock.', 'Finder'),
(245, 5, 'Bạn có thể sử dụng ứng dụng nào để làm slide show? Chọn câu trả lời đúng bằng cách sử dụng Dock.', 'Microsof Powerpoint'),
(246, 5, 'Bạn có thể sử dụng ứng dụng nào để tạo tài liệu? Chọn câu trả lời đúng bằng cách sử dụng Dock.', 'Microsoft Word'),
(247, 5, 'Bạn có thể sử dụng ứng dụng nào để tạo bảng tính? Chọn câu trả lời đúng bằng cách sử dụng Dock.', 'Microsof Excel'),
(248, 5, 'Bạn có thắc mắc về việc sử dụng hệ điều hành Mac. Nhấp vào menu sẽ trả lời câu hỏi của bạn.', 'Help'),
(249, 5, 'Tìm kiếm tài liệu có tên job-app.pdf. Sau đó, mở nó ra.', 'Search > gõ \"Job-app.pdf\" > Open it'),
(250, 5, 'Sử dụng cửa sổ Finder đang mở để tìm và mở iTunes.', 'Cả A và C'),
(251, 5, 'Thu nhỏ cửa sổ Safari.', 'Nhấn Minimize'),
(252, 5, 'Mở cửa sổ Safari thu nhỏ.', 'Cả 2 đáp án trên'),
(253, 5, 'Thoát Safari bằng thanh Menu', 'Nhấn chuột trái Safari > Quit'),
(254, 5, 'Di chuyển job-app.pdf vào thư mục Documents.', 'Nhấn job-app.pdf kéo thả đến Documents'),
(255, 5, 'Chọn thiết bị lưu trữ di động trong hình.', 'USB Drive'),
(256, 5, 'Xóa job-app.pdf khỏi thư mục Tài liệu.', 'Click Documents > chuột trái job-app.pdf > Move to trash'),
(257, 5, 'Bạn đã xóa tệp có tên job-app.pdf. Tìm tập tin và đặt nó trở lại vị trí cũ.', 'Click trash > chuột trái file > Put back'),
(258, 5, 'Cài đặt ứng dụng \"Evernote\" bằng App Store.', 'Appstore  > Search Evernote > Install'),
(259, 5, 'Đăng xuất', 'Mac > Log out'),
(260, 5, 'Tắt máy tính', 'Shut down');

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

--
-- Đang đổ dữ liệu cho bảng `cautraloi`
--

INSERT INTO `cautraloi` (`IDLuaChon`, `IDPhien`, `IDCauHoi`, `IDDapAnChon`) VALUES
(25, 10, 1, 1),
(26, 10, 2, 8),
(27, 10, 3, 9),
(28, 10, 4, 14),
(29, 10, 5, 17),
(30, 10, 6, 21),
(31, 10, 7, 27),
(32, 10, 8, 32),
(33, 10, 9, 33),
(34, 10, 10, 38),
(35, 12, 20, 83),
(36, 12, 21, 86),
(37, 12, 22, 88),
(38, 12, 23, 95),
(39, 13, 25, 103),
(40, 13, 38, 141),
(41, 13, 41, 144),
(42, 13, 42, 145),
(43, 13, 49, 156),
(44, 13, 53, 175),
(45, 13, 54, 178),
(46, 13, 56, 181);

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

--
-- Đang đổ dữ liệu cho bảng `chudebaiviet`
--

INSERT INTO `chudebaiviet` (`IDChuDeBaiViet`, `TenChuDe`, `MoTa`) VALUES
(8, 'khoa học', ''),
(9, 'Ôn tập', ''),
(10, 'Công nghệ', ''),
(11, 'Thư viện', ''),
(12, 'Thắc mắc', '');

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
(40, 10, 'Dùng để đăng kí tài khoản', 0),
(41, 11, 'Click vào ô 1', 0),
(42, 11, 'Click vào ô 2', 0),
(43, 11, 'Click vào ô 3', 1),
(44, 11, 'Click vào ô 4', 0),
(45, 12, 'To: 1, Subject: 3, Closing: 4, Greeting: 2, Text: 5', 0),
(46, 12, 'To: 1, Subject: 2, Closing: 4, Greeting: 3, Text: 5', 0),
(47, 12, 'To: 1, Subject: 2, Greeting: 3, Text: 5, Closing: 4', 0),
(48, 12, 'To: 1, Subject: 2, Closing: 3, Greeting: 4, Text: 5', 1),
(49, 13, 'click 2', 0),
(50, 13, 'click 3', 0),
(51, 13, 'click 1', 1),
(52, 13, 'click 4', 0),
(53, 14, '1', 0),
(54, 14, '2', 0),
(55, 14, '3', 1),
(57, 15, 'Click nút \"Send\"', 0),
(58, 15, 'Click nút \"Reply\"', 0),
(59, 15, 'Click nút \"Reply to all\"', 0),
(60, 15, 'Click nút \"Forward\"', 0),
(61, 15, 'Click nút \"Reply\"', 1),
(62, 16, 'Click nút \"Send\"', 0),
(63, 16, 'Click nút \"Reply\"', 0),
(64, 16, 'Click nút \"Reply to all\"', 0),
(65, 16, 'Click nút \"Forward\"', 0),
(66, 16, 'Click nút \"Reply to all\"', 1),
(67, 17, 'Click nút \"Send\"', 0),
(68, 17, 'Click nút \"Reply\"', 0),
(69, 17, 'Click nút \"Reply to all\"', 0),
(70, 17, 'Click nút \"Forward\"', 0),
(71, 17, 'Click nút \"Forward\"', 1),
(72, 18, '1', 0),
(73, 18, '2', 0),
(74, 18, '3', 1),
(75, 18, '4', 0),
(76, 19, 'Chọn file \"references\" --> Open', 0),
(77, 19, 'Chọn file \"resumé\" --> Open', 0),
(78, 19, 'Chọn file \"references\" --> Cancel', 0),
(79, 19, 'Không có file \"references\" trong ổ', 1),
(80, 20, '1', 0),
(81, 20, '2', 1),
(82, 20, '3', 0),
(83, 20, '4', 0),
(84, 21, 'Chọn 1 --> nhấn biểu tượng mũi tên trỏ xuống', 0),
(85, 21, 'Chọn 2 --> nhấn biểu tượng mũi tên trỏ xuống', 0),
(86, 21, 'Chọn 3 --> nhấn biểu tượng mũi tên trỏ xuống', 0),
(87, 21, 'Chọn 4 --> nhấn biểu tượng mũi tên trỏ xuống', 1),
(88, 22, 'Chọn 1', 0),
(89, 22, 'Chọn 2', 1),
(90, 22, 'Chọn 3', 0),
(91, 22, 'Chọn 4', 0),
(100, 25, 'Máy tính để bàn', 0),
(101, 25, 'Máy tính bảng', 0),
(102, 25, 'Laptop', 1),
(103, 25, 'Điện thoại', 0),
(104, 26, 'Màn hình', 1),
(105, 26, 'Nút home', 0),
(106, 27, 'Màn hình', 0),
(107, 27, 'Nút home', 1),
(108, 28, 'Cổng HDMI', 0),
(109, 28, 'Cổng USB', 1),
(110, 28, 'Cổng sạc', 0),
(111, 28, 'Cổng tai nghe', 0),
(112, 29, 'Camera', 1),
(113, 29, 'Màn hình', 0),
(114, 29, 'Bàn phím', 0),
(115, 29, 'Touchpad', 0),
(116, 30, 'Cổng tai nghe', 0),
(117, 30, 'Cổng loa trái', 0),
(118, 30, 'Cổng sạc', 1),
(119, 30, 'Cổng loa phải', 0),
(120, 31, 'Máy in', 0),
(121, 31, 'Vỏ máy tính', 1),
(122, 31, 'Màn hình', 0),
(123, 31, 'Chuột', 0),
(124, 31, 'Bàn phím', 0),
(125, 32, 'Máy in', 0),
(126, 32, 'Vỏ máy tính', 0),
(127, 32, 'Màn hình', 1),
(128, 32, 'Chuột', 0),
(129, 32, 'Bàn phím', 0),
(130, 33, 'Nút nguồn máy tính', 1),
(131, 33, 'Nút nguồn màn hình', 0),
(132, 33, 'Menu màn hình', 0),
(133, 33, 'Phím điều chỉnh màn hình', 0),
(134, 34, 'Nút nguồn máy tính', 0),
(135, 34, 'Nút nguồn màn hình', 1),
(136, 34, 'Menu màn hình', 0),
(137, 34, 'Phím điều chỉnh màn hình', 0),
(138, 35, NULL, 0),
(139, 36, 'CapLock', 0),
(140, 37, 'Enter', 0),
(141, 38, 'Shift', 1),
(142, 39, 'BackSpace', 1),
(143, 40, 'Phím điều hướng trên', 0),
(144, 41, 'Tab', 0),
(145, 42, 'Ấn vào hình loa', 1),
(146, 43, 'Safari', 1),
(147, 44, 'My Resume', 1),
(148, 45, 'User', 0),
(149, 45, 'Recycle Bin', 0),
(150, 46, 'khong có', 0),
(151, 47, 'Systems', 1),
(152, 48, 'Bạn có một email mới', 0),
(153, 48, 'Điện thoại của bạn bị hỏng', 0),
(154, 48, 'Đã có bản cập nhật phần mềm', 1),
(155, 48, 'Điện thoại của bạn đã bị hack', 0),
(156, 49, '?123', 0),
(157, 49, 'Shift', 1),
(158, 49, 'Enter', 0),
(159, 49, 'BackSpace', 0),
(160, 49, 'BackSpace', 0),
(161, 50, 'Chuột', 1),
(162, 50, 'Touchpad', 0),
(163, 50, 'Laptop', 0),
(164, 50, 'Gimbal', 0),
(165, 51, 'Chuột', 0),
(166, 51, 'Touchpad', 1),
(167, 51, 'Laptop', 0),
(168, 51, 'Gimbal', 0),
(169, 52, 'Ảnh 1', 0),
(170, 52, 'Ảnh 2', 1),
(171, 52, 'Ảnh 3', 0),
(172, 52, 'Ảnh 4', 0),
(173, 53, 'Ảnh 1', 0),
(174, 53, 'Ảnh 2', 0),
(175, 53, 'Ảnh 3', 1),
(176, 53, 'Ảnh 4', 0),
(177, 54, 'Nhấn đúp chuột vào This PC', 1),
(178, 54, 'Nhấn đúp chuột vào This PC', 0),
(179, 55, 'Click chuột phải vào User', 1),
(180, 55, 'Click chuột phải vào User', 0),
(181, 56, 'Kéo tài liệu vào thư mục', NULL),
(182, 57, 'Chorme', 1),
(183, 57, 'FireFox', 1),
(184, 57, 'Các ứng dụng khác', 0),
(185, 58, 'Điện thoại di động', 1),
(186, 58, 'Dây cáp', 1),
(187, 58, 'Ổ điện', 0),
(188, 58, 'Wireless', 1),
(189, 58, 'Flash Drive', 0),
(190, 59, 'Nút back', 1),
(191, 59, 'Nút next', 0),
(192, 59, 'Nút Reload', 0),
(193, 60, 'Nút back', 0),
(194, 60, 'Nút next', 0),
(195, 60, 'Nút Reload', 1),
(196, 60, 'Nút hình sao', 0),
(197, 61, 'Nút back', 0),
(198, 61, 'Nút next', 0),
(199, 61, 'Nút Reload', 0),
(200, 61, 'Nút hình sao', 1),
(201, 62, 'Ấn vào dấu 3 chấm bên phải màn hình, chọn Downloads', NULL),
(202, 63, 'Thanh URL', 1),
(203, 63, 'Thanh tìm kiếm', 1),
(204, 64, 'Bưu điện ở Washington D.C.', 1),
(205, 64, 'Bưu điện ở bang Washington', 1),
(206, 64, 'Bưu điện trên Đại lộ Washington', 1),
(207, 65, 'All', 0),
(208, 65, 'Map', 0),
(209, 65, 'News', 0),
(210, 65, 'Image', 1),
(211, 66, 'Nút +', 1),
(212, 66, 'Nút -', 0),
(213, 67, 'NULL', 0),
(214, 68, 'Subcrice', 0),
(215, 68, 'Logo Web', 1),
(216, 68, 'Menu', 0),
(217, 69, 'Link màu xanh dương', 1),
(218, 70, 'Nút play', 1),
(219, 71, 'spoonflower.dotcom', 0),
(220, 71, 'www.pbs.org', 0),
(221, 71, 'd.umn.edu', 0),
(222, 71, 'www.hhs.fed', 1),
(223, 72, 'spoonflower.dotcom', 0),
(224, 72, 'www.pbs.org', 0),
(225, 72, 'd.umn.edu', 0),
(226, 72, 'www.hhs.fed', 1),
(227, 73, 'New Private Window', 1),
(228, 73, 'New Window', 0),
(229, 74, 'NULL', 1),
(230, 75, 'NULL', 0),
(231, 76, 'NULL', 1),
(232, 91, 'Lựa chọn Public / Public', 1),
(233, 91, 'Lựa chọn Public / Friends', 0),
(234, 91, 'Lựa chọn Public / Only me', 0),
(235, 91, 'Không có lựa chọn nào phù hợp', 0),
(236, 92, 'Facebook', 0),
(237, 92, 'LinkedIn', 0),
(238, 92, 'Instagram', 0),
(239, 92, 'Twitter', 1),
(240, 93, 'Facebook', 0),
(241, 93, 'LinkedIn', 1),
(242, 93, 'Instagram', 0),
(243, 93, 'Twitter', 0),
(244, 94, 'Facebook', 1),
(245, 94, 'LinkedIn', 0),
(246, 94, 'Instagram', 0),
(247, 94, 'Twitter', 0),
(248, 95, '(1) -> (3) -> (4) -> (2)', 1),
(249, 95, '(4) -> (1) -> (2) -> (3)', 0),
(250, 95, '(1) -> (2) -> (3) -> (4)', 0),
(251, 95, '(3) -> (1) -> (4) -> (2)', 0),
(252, 96, 'David Gimenez, Audrey Frank, Felicia Gimenez', 0),
(253, 96, 'David Gimenez, Rayn Green', 1),
(254, 96, 'Miranda Burroughs', 0),
(255, 96, 'Tất cả', 0),
(256, 97, 'Public', 0),
(257, 97, 'Friend', 1),
(258, 97, 'Only me', 0),
(259, 98, 'Public', 0),
(260, 98, 'Friend', 0),
(261, 98, 'Only me', 1),
(262, 99, 'Update cover photo', 0),
(263, 99, 'Update Info', 1),
(264, 99, 'Activity log', 0),
(265, 99, 'Photos', 0),
(266, 100, 'Đúng', 1),
(267, 100, 'Sai', 0),
(268, 101, 'Có', 0),
(269, 101, 'Không', 1),
(270, 102, 'Nó gửi tin nhắn riêng tới page', 0),
(271, 102, 'Bạn có thể nhìn thấy quảng cáo từ page này', 0),
(272, 102, 'Bạn bè trên Facebook của bạn có thể thấy bạn like page này', 0),
(273, 102, 'Chủ page có thể thấy bạn \"like\" page của họ', 1),
(274, 103, 'News Feed', 0),
(275, 103, 'Page', 0),
(276, 103, 'Groups', 0),
(277, 103, 'Messenger', 1),
(278, 104, 'Create post', 1),
(279, 104, 'Anna', 0),
(280, 104, 'Home', 0),
(281, 104, 'Find friends', 0),
(282, 105, 'Đúng', 1),
(283, 105, 'Sai', 0),
(284, 106, 'Share Now (Friends)', 0),
(285, 106, 'Share...', 0),
(286, 106, 'Send in Messenger', 1),
(287, 106, 'Share in group', 0),
(288, 109, NULL, 0),
(289, 110, 'Tham dự hội chợ việc làm', 0),
(290, 110, 'Tình Nguyện Viên', 1),
(291, 110, 'Liên hệ với nhà tuyển dụng tiềm năng', 1),
(292, 111, 'Một bài kiểm tra xác định kỹ năng có thể giúp anh ta hiểu được loại công việc nào anh ta có thể làm tốt', 1),
(293, 111, 'Việc tự đánh giá tốt có thể giúp anh ấy xác định nghề nghiệp và công việc phù hợp với cả những điều ấy giỏi và những điều anh ấy quan tâm', 1),
(294, 112, 'Công việc tình nguyện mang lại cho anh ấy kinh nghiệm để bổ sung vào lý lịch của mình', 1),
(295, 112, 'Hoạt động tình nguyện kết nối anh ấy với những người có thể đóng vai trò là người giới thiệu', 1),
(296, 112, 'Hoạt động tình nguyện cho thấy các nhà tuyển dụng tương lại rằng anh ta không coi trọng thời gian hoặc kỹ năng của mình', 1),
(297, 113, 'Đăng trên mạng xã hội để tìm hiểu xem anh ấy có mỗi liên hệ nào với những người làm nghề làm vườn hay không', 1),
(298, 113, 'Tìm kiếm thông tin thị trường lao động địa phương về nghề làm vườn', 1),
(299, 113, 'Thực hiện tìm kiếm trên internet các tổ chức và công ty làm vườn trong khu vực của anh ấy', 1),
(300, 114, 'Hội chợ việc làm', 1),
(301, 114, 'Bảng việc làm giáo dục', 0),
(302, 114, 'Sản xuất bài viết trực tuyến', 0),
(303, 115, '1', 1),
(304, 116, 'Toàn thời gian', 1),
(305, 117, 'Tìm hiểu những công ty nào sẽ có mặt tại hội chợ việc làm', 1),
(306, 117, 'Cập nhật sơ yếu lý lịch của cô ấy và sao chép nhiều bản', 1),
(307, 117, 'Nghiên cứu các công ty quyết định xem công ty nào có thể phù hợp', 1),
(308, 117, 'Mời bạn bè đi cùng và cho tài liệu tham khảo', 1),
(309, 117, 'Thực hành giới thiệu bản thân và trình độ của cô ấy', 1),
(310, 117, 'Hiểu thời gian và địa điểm của hội chợ và cách cô ấy sẽ đến đố', 1),
(311, 118, 'Jan sẽ tạo ra những kết nối mới', 1),
(312, 118, 'Jan sẽ được bỏ qua bước đăng ký', 0),
(313, 118, 'Jan sẽ có nhiều lời mời làm việc', 1),
(314, 118, 'Jan sẽ tạo ấn tượng tốt và khiến họ có nhiều khả năng xin phỏng vấn hơn', 1),
(315, 119, NULL, 0),
(316, 120, '1,5,6', 1),
(317, 121, '1,5,6', 0),
(318, 122, '2,3,5', 0),
(319, 123, NULL, 1),
(320, 124, '1,4', 1),
(321, 125, '1,3', 1),
(322, 130, '1', 1),
(323, 130, '2', 0),
(324, 130, '3', 0),
(325, 130, '4', 0),
(326, 131, 'Đăng ký ngay bây giờ', 1),
(327, 131, 'Chi tiết', 0),
(328, 131, 'Huỷ cuộc hẹn', 0),
(329, 131, 'Bắt đầu lúc 9:20', 0),
(330, 132, '1', 1),
(331, 132, '2', 0),
(332, 132, '3', 0),
(333, 132, '4', 0),
(334, 133, '1', 1),
(335, 133, '2', 0),
(336, 133, '3', 0),
(337, 133, '4', 0),
(338, 134, '1', 1),
(339, 134, '2', 0),
(340, 134, '3', 0),
(341, 134, '4', 0),
(342, 135, 'Điều chỉnh camera của anh ấy', 1),
(343, 135, 'Tắt mic', 0),
(344, 135, 'Đi ra ngoài', 0),
(345, 135, 'Tắt đèn', 0),
(346, 136, '1', 1),
(347, 136, '2', 0),
(348, 136, '3', 0),
(349, 136, '4', 0),
(350, 137, '1', 1),
(351, 137, '2', 0),
(352, 137, '3', 0),
(353, 137, '4', 0),
(354, 138, '1', 1),
(355, 138, '2', 0),
(356, 138, '3', 0),
(357, 138, '4', 0),
(358, 139, 'Bác sĩ đã kết thúc cuộc gọi', 1),
(359, 139, 'Phòng khám đang mất điện', 0),
(360, 139, 'Có vấn đề với tín hiệu internet của Luis', 0),
(361, 139, 'Điện thoại của Luis kém chất lượng', 0),
(362, 140, '1', 1),
(363, 140, '2', 0),
(364, 140, '3', 0),
(365, 140, '4', 0),
(366, 141, 'Wifi trên điện thoại của Luis đang tắt và tín hiệu điện thoại yếu', 1),
(367, 141, 'Luis cần sạc pin điện thoại', 0),
(368, 141, 'Luis cần bật blutooth lên', 0),
(369, 141, 'Luis cần mở chế độ máy bay', 0),
(370, 142, '1', 1),
(371, 142, '2', 0),
(372, 142, '3', 0),
(373, 142, '4', 0),
(374, 143, '1', 1),
(375, 143, '2', 0),
(376, 143, '3', 0),
(377, 143, '4', 0),
(378, 144, 'Kích hoạt tài khoản NorthStar Health', 1),
(379, 144, 'Máy tính CC', 0),
(380, 144, 'Deka Abi', 0),
(381, 144, 'Thư viện computer', 0),
(382, 145, 'lulumarin10', 1),
(383, 145, 'Luiss10', 0),
(384, 145, 'luis10', 0),
(385, 145, 'lulumarinrin', 0),
(386, 146, '1', 1),
(387, 146, '2', 0),
(388, 146, '3', 0),
(389, 146, '4', 0),
(390, 147, '1', 1),
(391, 147, '2', 0),
(392, 147, '3', 0),
(393, 147, '4', 0),
(394, 148, 'Lưu mật khẩu', 1),
(395, 148, 'Không bao giờ cho trang web này', 0),
(396, 148, 'Không phải bây giờ', 0),
(397, 148, 'Bỏ qua', 0),
(398, 149, '1', 1),
(399, 149, '2', 0),
(400, 149, '3', 0),
(401, 149, '4', 0),
(402, 150, 'Luis cần tạo mật khẩu mới. Lưu mật khẩu trên trình duyệt để Luis đăng nhập dễ dàng hơn.', 1),
(403, 150, 'Máy tính CC', 0),
(404, 150, 'Kích hoạt tài khoản NorthStar Health', 0),
(405, 150, 'Thư viện computer', 0),
(406, 151, '4', 1),
(407, 151, '1', 0),
(408, 151, '2', 0),
(409, 151, '3', 0),
(410, 151, 'Đứa trẻ của cô ấy sẽ đến trường học trực tiếp một vài ngày và học ở nhà những ngày còn lại', 1),
(411, 151, 'Đứa trẻ của cô ấy sẽ chỉ học ở nhà ở trên máy tính', 0),
(412, 151, 'Đứa trẻ của cô ấy sẽ đến trường học trực tiếp từ thứ 2 đến thứ 5', 0),
(413, 152, 'Eve sẽ tham gia với cô giáo của cô ấy và 1 nhóm những học sinh khác trên trực tuyến để học cùng nhau trong cùng khoảng thời gian', 1),
(414, 152, 'Eve sẽ đến trường học trực tiếp', 0),
(415, 152, 'Eve sẽ đăng nhập vào tài khoản học từ xa của cô ấy và kết thúc bài báo cáo về nhà của cô ấy', 0),
(416, 153, 'Lợi ích', 1),
(417, 153, 'Thách thức', 0),
(418, 153, 'Lợi ích', 0),
(419, 153, 'Thách thức', 1),
(420, 154, 'Wifi hoặc các thiết bị kết nối internet', 1),
(421, 154, 'Điện thoại di động cho mỗi học sinh', 0),
(422, 154, 'Máy tính hoặc tablet', 1),
(423, 154, 'Học sinh có email và mật khẩu để đăng nhập vào nền tảng học từ xa', 1),
(424, 154, 'Máy phát thanh', 0),
(425, 155, 'Bộ phát wifi', 1),
(426, 155, 'Điểm phát Wi-fi di động', 1),
(427, 155, 'Ổ cắm điện', 0),
(428, 156, 'Click button Quả cầu ( theo hình 6.1)', 0),
(429, 156, 'Chọn tên wi-fi : Home Internet ( theo hình 6.1)', 0),
(430, 156, 'Click button \"Next\" ( theo hình 6.2)', 0),
(431, 156, 'Kiểm tra biểu tượng Wi-Fi đã kết nối', 1),
(432, 157, 'Thay đổi màu sắc cho màn hình máy tính', 0),
(433, 157, 'Cài đặt giới hạn thời gian màn hình', 1),
(434, 157, 'Ngăn chặn đứa trẻ mua sắm trực tuyến, ví dụ các phần mềm', 1),
(435, 157, 'Cài đặt chữ to hoặc nhỏ trên màn hình máy tính', 0),
(436, 157, 'Chặn những trang web người lớn', 1),
(437, 158, 'Click đường dẫn: \"https://chalkboard.nsdla.ord/login \"', 1),
(438, 159, 'Tại trường Email, nhập giá trị: eveloggins@gmail.com', 1),
(439, 159, 'Tại trường Password, nhập giá trị: 56@learn', 1),
(440, 159, 'Click button \"LOG IN\"', 1),
(441, 160, 'Click chọn \"All Assignments\"', 1),
(442, 161, 'Chọn \"Done/Grades\"', 1),
(443, 162, 'Chọn \"ADD RESPONSE\"', 1),
(444, 163, 'Chọn biểu tượng \"UPLOAD\"', 1),
(445, 164, 'Chọn nút \"Save\" ở popup \"Save password\"', 1),
(446, 165, 'Elena nên làm', 1),
(447, 165, 'Elena không nên làm', 0),
(448, 165, 'Elena không nên làm', 0),
(449, 165, 'Elena nên làm', 1),
(450, 166, 'Nhập giá trị \"123456\"', 0),
(451, 166, 'Click \"Join\"', 1),
(452, 167, 'Chọn biểu tượng microphone', 1),
(453, 168, 'Chọn biểu tượng Chat', 1),
(454, 169, 'Thoát chương trình cuộc họp lớp trực tuyến. Sau đó tham gia lại vào cuộc họp lớp', 1),
(455, 170, 'Gửi thư cho giáo viên. Bắt đầu cuộc hội thoại về khoảng thời gian Elena nên sử dụng máy tính cho việc học của cô ấy mỗi ngày', 1),
(456, 171, 'Click biểu tượng \"Inbox\"', 1),
(457, 172, 'Khả năng giúp bản thân cô ấy và quản lý tâm trạng của cô ấy', 1),
(458, 173, 'Khuyến khích Elena viết thư cho những người bạn và gia đình', 1),
(459, 173, 'Giúp Elena lên thời gian biểu để nói chuyện với bạn của cô ấy qua điện thoại', 1),
(460, 175, '\"Dấu chân điện tử số\" là thông tin về khách hàng thông qua sự tồn tại về những hoạt động trực tuyến của họ', 1),
(461, 175, '\"Dấu chân điện tử số\" chỉ bao gồm thông tin tích cực', 0),
(462, 175, '\"Dấu chân điện tử số\" không làm tổn hại danh tiếng của bạn', 0),
(463, 176, 'Tất cả những lí do trên về tầm quan trọng của \"dấu chân điện tử số\" đều quan trọng', 1),
(464, 176, 'Nhà tuyển dụng đôi khi sử dụng \"dấu chân điện tử số để đưa ra quyết định tuyển dụng', 0),
(465, 176, 'Thông tin bạn đăng tải trên trực tuyến có thể tồn tại mãi mãi', 0),
(466, 176, 'Trường đại học đôi khi sử dụng \"dấu chân điện tử số\" để đưa ra những quyết định chấp nhận', 0),
(467, 177, 'Tất cả những lí do trên giải thích cho việc \"dấu chân điện tử số\" có thể mang lại lợi ích', 1),
(468, 177, 'Sơ đồ trực tuyến có thể ghi nhớ địa điểm bạn có thể tìm kiếm nên bạn không cần nhập địa chỉ nhiều lần', 0),
(469, 177, 'Nhà tuyển dụng có thể thấy thông tin bạn đăng tải trên trực tuyến và ấn tượng tích cực của bạn', 0),
(470, 177, 'Sự hiện diện trực tuyến có thể kết nối bạn với những người cùng sở thích', 0),
(471, 178, 'Mất tính riêng tư', 1),
(472, 178, 'Tổn hại danh tiếng', 1),
(473, 178, 'Mất kiểm soát về thông tin cá nhân của bạn', 1),
(474, 179, 'Đăng tải thông tin cá nhân trực tuyến', 1),
(475, 179, 'Gắn thẻ hình ảnh trực tuyến', 0),
(476, 179, 'Mua sắm trực tuyến', 0),
(477, 179, 'Thanh toán tiền mặt tại cửa hàng', 0),
(478, 180, 'Mua sắm trực tuyến sau đó bạn sẽ thấy quảng cáo của những sản phẩm tương tự', 1),
(479, 180, 'Nhận báo giá bảo hiểm ô tô từ một trang mạng, sau đó bạn sẽ nhận được mail từ những công ty bảo hiểm xe ô tô khác', 1),
(480, 180, 'Đọc thông tin về 1 chính trị gia trên trực tuyến, sau đó bạn sẽ nhận được yêu cầu trả lời về sự đồng thuận phiếu bầu của bạn', 1),
(481, 181, 'Sự vô tình của \"dấu chân điện tử số\"', 1),
(482, 181, 'Quảng cáo không cụ thể', 0),
(483, 181, 'Biển hiệu quảng cáo', 0),
(484, 182, 'Đăng tải hình ảnh', 0),
(485, 182, 'Viết bình luận trực tuyến', 0),
(486, 182, 'Tạo trang thông tin cá nhân mạng xã hội điện tử', 1),
(487, 182, 'Mua sắm trực tuyến ở trạng thái riêng tư', 0),
(488, 183, 'Nếu bạn làm vài điều không chuyên nghiệp trên trực tuyến, sếp của bạn có thể đuổi việc bạn', 1),
(489, 183, 'Nếu bạn nhận được báo giá bảo hiểm ô tô trực tuyến, nhân viên kinh doanh bảo hiểm có thể liên hệ với bạn trong vài ngày tới', 1),
(490, 183, 'Nếu bạn để lại một bình luận thô lỗ và xóa nó, sau đó một vài người vẫn có thể nhìn thấy nó', 1),
(491, 183, 'Nếu bạn quyết định gỡ hình ảnh của bạn lên Facebook, không ai có thể nhìn thấy nó lần nào nữa', 1),
(492, 184, 'Ảnh thứ 1: https://drive.google.com/drive/folders/1ibX8kUE9jO1oQVNM_T08MMCMMXf9_q2g', 1),
(493, 184, 'Ảnh thứ 2: https://drive.google.com/drive/folders/1ibX8kUE9jO1oQVNM_T08MMCMMXf9_q2g', 1),
(494, 184, 'Ảnh thứ 3: https://drive.google.com/drive/folders/1ibX8kUE9jO1oQVNM_T08MMCMMXf9_q2g', 0),
(495, 184, 'Ảnh thứ 4: https://drive.google.com/drive/folders/1ibX8kUE9jO1oQVNM_T08MMCMMXf9_q2g', 0),
(496, 185, 'Click \"Private Account\"', 1),
(497, 185, 'Click \"Account Status\"', 0),
(498, 186, 'Click \"Keep all my saved playlists private\"', 1),
(499, 186, 'Click \"Keep all my subscriptions private\"', 0),
(500, 187, 'Tất cả những thông tin đều có thể bị đánh cắp trực tuyến', 1),
(501, 187, 'Mật khẩu thư điện tử', 0),
(502, 187, 'Số tài khoản thẻ tín dụng', 0),
(503, 187, 'Số tài khoản ngân hàng', 0),
(504, 188, 'Những trên trộm có thể dùng thẻ tín dụng của Casey để mua sắm', 1),
(505, 188, 'Những tên trộm có thể lấy được chìa khóa căn hộ của Casey', 0),
(506, 188, 'Những tên trộm có thể ăn cắp lương trả qua thư của Casey', 0),
(507, 189, 'Nhà tuyển dụng', 1),
(508, 189, 'Những cửa hàng', 1),
(509, 189, 'Chính phủ', 1),
(510, 190, 'Những tệp tin có thể bị xóa', 1),
(511, 190, 'Những tệp tin được lưu trữ ở 1 tệp trong trình duyệt trang web của bạn', 0),
(512, 190, 'Những tệp tin giúp trang web ghi nhớ sở thích của bạn', 0),
(513, 190, 'Bạn nên không bao giờ cho phép máy tính gửi những tệp tin', 0),
(514, 191, 'Những trang web có thể sử dụng những tệp tin để giữ bản ghi về vị trí của bạn', 1),
(515, 191, 'Những tệp tin có thể không bao giờ có ích cho trang web yêu thích của người dùng', 0),
(516, 191, 'Trình duyệt mạng có thể sử dụng tệp tin để nhớ ngôn ngữ ưu thích của bạn', 1),
(517, 191, 'Cửa hàng trực tuyến có thể sử dụng tệp tin để giữ theo dõi những sản phẩm có trong giỏ hàng của bạn', 1),
(1182, 192, 'Microsoft Word ⇨ Home ⇨ Blank document', 0),
(1299, 192, 'Excel ⇨ Home ⇨ Blank workbook', 0),
(1300, 193, '02_Word_Question_02_1.png', 0),
(1301, 193, '02_Word_Question_02_2.png', 0),
(1302, 193, '02_Word_Question_02_3.png', 0),
(1303, 193, '02_Word_Question_02_4.png', 0),
(1304, 194, 'Click chuột vào file có tên \"2022 Resume\"', 0),
(1305, 194, 'Click chuột vào file có tên \"References\"', 0),
(1306, 194, 'Click chuột vào \"Latest Resume\"', 0),
(1307, 194, 'Click chuột vào \"Blank document\"', 0),
(1308, 195, 'Save', 1),
(1309, 195, 'Save As', 0),
(1310, 196, 'File ⇨ Save as ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 1),
(1311, 196, 'File ⇨ Save hoặc nhấn chọn biểu tượng Save 💾 ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 0),
(1312, 197, '2024 Resume.docx', 1),
(1313, 197, '2024 Resume.rsm', 0),
(1314, 197, '2024 Resume.pptx', 0),
(1315, 197, '2024 Resume.xlsx', 0),
(1316, 198, '2', 1),
(1317, 198, '1', 0),
(1318, 198, '3', 0),
(1319, 198, '4', 0),
(1320, 199, '1', 0),
(1321, 199, '2', 0),
(1322, 199, '3', 1),
(1323, 199, '4', 0),
(1324, 200, '1', 0),
(1325, 200, '2', 0),
(1326, 200, '3', 0),
(1327, 200, '4', 1),
(1328, 201, 'Microsoft Word ⇨ Home ⇨ Blank document', 1),
(1329, 201, 'Powerpoint ⇨ Home ⇨ Blank presentation', 0),
(1330, 201, 'Excel ⇨ Home ⇨ Blank workbook', 0),
(1331, 202, '02_Word_Question_02_1.png', 0),
(1332, 202, '02_Word_Question_02_2.png', 0),
(1333, 202, '02_Word_Question_02_3.png', 0),
(1334, 202, '02_Word_Question_02_4.png', 1),
(1335, 203, 'Click chuột vào file có tên \"References\"', 0),
(1336, 203, 'Click chuột vào file có tên \"2022 Resume\"', 1),
(1337, 203, 'Click chuột vào \"Latest Resume\"', 0),
(1338, 203, 'Click chuột vào \"Blank document\"', 0),
(1339, 204, 'Save', 1),
(1340, 204, 'Save As', 0),
(1341, 205, 'File ⇨ Save as ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 1),
(1342, 205, 'File ⇨ Save hoặc nhấn chọn biểu tượng Save 💾 ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 0),
(1343, 206, '2024 Resume.docx', 1),
(1344, 206, '2024 Resume.rsm', 0),
(1345, 206, '2024 Resume.pptx', 0),
(1346, 206, '2024 Resume.xlsx', 0),
(1347, 207, '2', 1),
(1348, 207, '1', 0),
(1349, 207, '3', 0),
(1350, 207, '4', 0),
(1351, 208, 'Có', 1),
(1352, 208, 'Không', 0),
(1353, 209, 'Layout ⇨ Orientation ⇨ Portrait', 1),
(1354, 209, 'Insert ⇨ Orientation ⇨ Portrait', 0),
(1355, 209, 'Design ⇨ Orientation ⇨ Portrait', 0),
(1356, 209, 'File ⇨ Orientation ⇨ Portrait', 0),
(1357, 210, '2', 1),
(1358, 210, '1', 0),
(1359, 210, '3', 0),
(1360, 211, '4', 1),
(1361, 211, '3', 0),
(1362, 211, '2', 0),
(1363, 211, '1', 0),
(1364, 212, '3', 1),
(1365, 212, '2', 0),
(1366, 212, '1', 0),
(1367, 213, '1', 1),
(1368, 213, '2', 0),
(1369, 213, '3', 0),
(1370, 213, '4', 0),
(1371, 214, '2', 1),
(1372, 214, '1', 0),
(1373, 214, '3', 0),
(1374, 214, '4', 0),
(1378, 194, 'Click chuột vào file có tên \"2022 Resume\"', 0),
(1379, 194, 'Click chuột vào file có tên \"References\"', 0),
(1380, 194, 'Click chuột vào \"Latest Resume\"', 0),
(1381, 194, 'Click chuột vào \"Blank document\"', 0),
(1382, 195, 'Save', 1),
(1383, 195, 'Save As', 0),
(1384, 196, 'File ⇨ Save as ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 1),
(1385, 196, 'File ⇨ Save hoặc nhấn chọn biểu tượng Save 💾 ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 0),
(1386, 197, '2024 Resume.docx', 1),
(1387, 197, '2024 Resume.rsm', 0),
(1388, 197, '2024 Resume.pptx', 0),
(1389, 197, '2024 Resume.xlsx', 0),
(1390, 198, '2', 1),
(1391, 198, '1', 0),
(1392, 198, '3', 0),
(1393, 198, '4', 0),
(1394, 199, '1', 0),
(1395, 199, '2', 0),
(1396, 199, '3', 1),
(1397, 199, '4', 0),
(1398, 200, '1', 0),
(1399, 200, '2', 0),
(1400, 200, '3', 0),
(1401, 200, '4', 1),
(1402, 201, 'Microsoft Word ⇨ Home ⇨ Blank document', 1),
(1403, 201, 'Powerpoint ⇨ Home ⇨ Blank presentation', 0),
(1404, 201, 'Excel ⇨ Home ⇨ Blank workbook', 0),
(1405, 202, '02_Word_Question_02_1.png', 0),
(1406, 202, '02_Word_Question_02_2.png', 0),
(1407, 202, '02_Word_Question_02_3.png', 0),
(1408, 202, '02_Word_Question_02_4.png', 1),
(1409, 203, 'Click chuột vào file có tên \"References\"', 0),
(1410, 203, 'Click chuột vào file có tên \"2022 Resume\"', 1),
(1411, 203, 'Click chuột vào \"Latest Resume\"', 0),
(1412, 203, 'Click chuột vào \"Blank document\"', 0),
(1413, 204, 'Save', 1),
(1414, 204, 'Save As', 0),
(1415, 205, 'File ⇨ Save as ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 1),
(1416, 205, 'File ⇨ Save hoặc nhấn chọn biểu tượng Save 💾 ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 0),
(1417, 206, '2024 Resume.docx', 1),
(1418, 206, '2024 Resume.rsm', 0),
(1419, 206, '2024 Resume.pptx', 0),
(1420, 206, '2024 Resume.xlsx', 0),
(1421, 207, '2', 1),
(1422, 207, '1', 0),
(1423, 207, '3', 0),
(1424, 207, '4', 0),
(1425, 208, 'Có', 1),
(1426, 208, 'Không', 0),
(1427, 209, 'Layout ⇨ Orientation ⇨ Portrait', 1),
(1428, 209, 'Insert ⇨ Orientation ⇨ Portrait', 0),
(1429, 209, 'Design ⇨ Orientation ⇨ Portrait', 0),
(1430, 209, 'File ⇨ Orientation ⇨ Portrait', 0),
(1431, 210, '2', 1),
(1432, 210, '1', 0),
(1433, 210, '3', 0),
(1434, 211, '4', 1),
(1435, 211, '3', 0),
(1436, 211, '2', 0),
(1437, 211, '1', 0),
(1438, 212, '3', 1),
(1439, 212, '2', 0),
(1440, 212, '1', 0),
(1441, 213, '1', 1),
(1442, 213, '2', 0),
(1443, 213, '3', 0),
(1444, 213, '4', 0),
(1445, 214, '2', 1),
(1446, 214, '1', 0),
(1447, 214, '3', 0),
(1448, 214, '4', 0),
(1453, 194, 'Click chuột vào file có tên \"2022 Resume\"', 0),
(1454, 194, 'Click chuột vào file có tên \"References\"', 0),
(1455, 194, 'Click chuột vào \"Latest Resume\"', 0),
(1456, 194, 'Click chuột vào \"Blank document\"', 0),
(1457, 195, 'Save', 1),
(1458, 195, 'Save As', 0),
(1459, 196, 'File ⇨ Save as ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 1),
(1460, 196, 'File ⇨ Save hoặc nhấn chọn biểu tượng Save 💾 ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 0),
(1461, 197, '2024 Resume.docx', 1),
(1462, 197, '2024 Resume.rsm', 0),
(1463, 197, '2024 Resume.pptx', 0),
(1464, 197, '2024 Resume.xlsx', 0),
(1465, 198, '2', 1),
(1466, 198, '1', 0),
(1467, 198, '3', 0),
(1468, 198, '4', 0),
(1469, 199, '1', 0),
(1470, 199, '2', 0),
(1471, 199, '3', 1),
(1472, 199, '4', 0),
(1473, 200, '1', 0),
(1474, 200, '2', 0),
(1475, 200, '3', 0),
(1476, 200, '4', 1),
(1477, 201, 'Microsoft Word ⇨ Home ⇨ Blank document', 1),
(1478, 201, 'Powerpoint ⇨ Home ⇨ Blank presentation', 0),
(1479, 201, 'Excel ⇨ Home ⇨ Blank workbook', 0),
(1480, 202, '02_Word_Question_02_1.png', 0),
(1481, 202, '02_Word_Question_02_2.png', 0),
(1482, 202, '02_Word_Question_02_3.png', 0),
(1483, 202, '02_Word_Question_02_4.png', 1),
(1484, 203, 'Click chuột vào file có tên \"References\"', 0),
(1485, 203, 'Click chuột vào file có tên \"2022 Resume\"', 1),
(1486, 203, 'Click chuột vào \"Latest Resume\"', 0),
(1487, 203, 'Click chuột vào \"Blank document\"', 0),
(1488, 204, 'Save', 1),
(1489, 204, 'Save As', 0),
(1490, 205, 'File ⇨ Save as ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 1),
(1491, 205, 'File ⇨ Save hoặc nhấn chọn biểu tượng Save 💾 ⇨ Employment. Thực hiện lưu với tên \"2024 Resume\"', 0),
(1492, 206, '2024 Resume.docx', 1),
(1493, 206, '2024 Resume.rsm', 0),
(1494, 206, '2024 Resume.pptx', 0),
(1495, 206, '2024 Resume.xlsx', 0),
(1496, 207, '2', 1),
(1497, 207, '1', 0),
(1498, 207, '3', 0),
(1499, 207, '4', 0),
(1500, 208, 'Có', 1),
(1501, 208, 'Không', 0),
(1502, 209, 'Layout ⇨ Orientation ⇨ Portrait', 1),
(1503, 209, 'Insert ⇨ Orientation ⇨ Portrait', 0),
(1504, 209, 'Design ⇨ Orientation ⇨ Portrait', 0),
(1505, 209, 'File ⇨ Orientation ⇨ Portrait', 0),
(1506, 210, '2', 1),
(1507, 210, '1', 0),
(1508, 210, '3', 0),
(1509, 211, '4', 1),
(1510, 211, '3', 0),
(1511, 211, '2', 0),
(1512, 211, '1', 0),
(1513, 212, '3', 1),
(1514, 212, '2', 0),
(1515, 212, '1', 0),
(1516, 213, '1', 1),
(1517, 213, '2', 0),
(1518, 213, '3', 0),
(1519, 213, '4', 0),
(1520, 214, '2', 1),
(1521, 214, '1', 0),
(1522, 214, '3', 0),
(1523, 214, '4', 0),
(1524, 215, 'Có', 1),
(1525, 215, 'Không', 0),
(1526, 216, 'Chọn biểu tượng ⁝⁝⁝ sau đó chọn Docs và thực hiện thêm một tài liệu mới', 1),
(1527, 216, 'Chọn Cài đặt sau đó chọn Docs và thực hiện thêm một tài liệu mới', 0),
(1528, 217, '1', 0),
(1529, 217, '2', 1),
(1530, 217, '3', 0),
(1531, 217, '4', 0),
(1532, 218, '1', 0),
(1533, 218, '2', 0),
(1534, 218, '3', 1),
(1535, 218, '4', 0),
(1536, 219, 'Insert/Table', 1),
(1537, 219, 'Insert/Comment', 0),
(1538, 219, 'Insert/Image', 0),
(1539, 219, 'Home/Table', 0),
(1540, 220, 'File/Page Setup/ Landscape', 1),
(1541, 220, 'Insert/Page Setup/ Landscape', 0),
(1542, 220, 'Tool/Page Setup/ Landscape', 0),
(1543, 221, 'Sử dụng tổ hợp phím Ctrl P hoặc File/Print', 0),
(1544, 221, 'Sử dụng tổ hợp phím Ctrl H hoặc File/Print', 0),
(1545, 221, 'Sử dụng tổ hợp phím Ctrl V hoặc File/Print', 0),
(1546, 221, 'Sử dụng tổ hợp phím Ctrl D hoặc File/Print', 1),
(1547, 222, 'Đúng', 1),
(1548, 222, 'Sai', 0),
(1549, 223, '1', 1),
(1550, 223, '2', 0),
(1551, 223, '3', 0),
(1552, 224, 'Có', 1),
(1553, 224, 'Không', 0);

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
  `Diem` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ketqua`
--

INSERT INTO `ketqua` (`IDKetQua`, `IDPhien`, `Diem`) VALUES
(3, 10, '10/10'),
(4, 12, '0.43478260869565/23'),
(5, 13, '0.9375/32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `likes`
--

CREATE TABLE `likes` (
  `IDLike` int(11) NOT NULL,
  `IDBaiViet` int(11) DEFAULT NULL,
  `IDNguoiDung` int(11) DEFAULT NULL,
  `IDBinhLuan` int(11) DEFAULT NULL
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
  `IDNguoiDung` bigint(20) UNSIGNED DEFAULT NULL,
  `NgayGioBatDau` datetime DEFAULT NULL,
  `NgayGioKetThuc` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phien`
--

INSERT INTO `phien` (`IDPhien`, `IDNguoiDung`, `NgayGioBatDau`, `NgayGioKetThuc`) VALUES
(7, 12, '2024-05-04 12:56:53', '2024-05-04 13:00:35'),
(8, 12, '2024-05-04 13:00:57', '2024-05-04 13:01:29'),
(9, 12, '2024-05-04 13:04:54', '2024-05-04 13:05:46'),
(10, 12, '2024-05-04 13:07:26', '2024-05-04 13:07:51'),
(12, 12, '2024-05-04 13:17:44', '2024-05-05 12:24:42'),
(13, 12, '2024-05-06 13:58:59', '2024-05-06 15:27:55');

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
('8rWr0M4rFOnq9k8YTFhNf0uQHnWLR7baTgauevtK', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUmVWa1dKWFFIRTVJamQ2eXhkU2JUOUEzbk10Z25KSEpGcUtVU1RqVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vbnRhcC0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtOO30=', 1715009276);

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
  `password` varchar(2048) DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `avatar` varchar(2048) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` varchar(2048) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `avatar`, `created_at`, `updated_at`, `google_id`, `role`) VALUES
(1, 'Đức Anh _ K23HTTTB Trần', 'tranducanh619@gmail.com', NULL, 'eyJpdiI6IkxKcmVxeWRkWkZ2UmM1TE5YTjdTMmc9PSIsInZhbHVlIjoiWXZ4YkFxeUVUbGFHZ0J1dGx4MzVBZU5Rd2wvSDNCUHNZYUxVbHFPQnlQTT0iLCJtYWMiOiJiMmY5ZTU5NzQyNTM5NmJhOTdlZWYwOWExM2VkNGY4YTdmODFhZTJmOWI1ZThhMTgzYWJiMmM5ZDNhNjczNDBiIiwidGFnIjoiIn0=', NULL, NULL, NULL, NULL, NULL, '', '2024-04-12 01:08:26', '2024-04-30 01:03:05', '108468412934413434472', 'admin'),
(8, 'ducanh tran', 'tranducanh617@gmail.com', NULL, '$2y$10$m1emYM7ycgBGPC7Apq4TJ.aJ1dbmHKQ6LqwkHM7R3P.xAQonqUnO2', NULL, NULL, NULL, NULL, NULL, '', '2024-04-30 01:49:12', '2024-04-30 01:49:12', '117846530714050588624', NULL),
(12, 'Tran Duc Anh', '23a4040009@hvnh.edu.vn', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ACg8ocKma4o5YKtuPK1y0NTL01blESefs6yMJ7GKoawu0N5hoekf-Q=s96-c', '2024-05-01 20:08:23', '2024-05-01 20:08:23', '104419043618398015507', 'sinhvien');

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
  ADD KEY `IDChuDe` (`IDChuDe`),
  ADD KEY `IDNguoiDung` (`IDNguoiDung`);

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
  ADD KEY `IDPhien` (`IDPhien`);

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
  ADD KEY `IDNguoiDung` (`IDNguoiDung`),
  ADD KEY `IDBinhLuan` (`IDBinhLuan`);

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
  ADD PRIMARY KEY (`IDPhien`);

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
  MODIFY `IDBaiViet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `IDBinhLuan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `IDCauHoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT cho bảng `cautraloi`
--
ALTER TABLE `cautraloi`
  MODIFY `IDLuaChon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `IDChuDe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `chudebaiviet`
--
ALTER TABLE `chudebaiviet`
  MODIFY `IDChuDeBaiViet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `chudechinh`
--
ALTER TABLE `chudechinh`
  MODIFY `IDChuDeChinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dapan`
--
ALTER TABLE `dapan`
  MODIFY `IDDapAn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1554;

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
  MODIFY `IDKetQua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `IDPhien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `IDThongBao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`IDNguoiDung`) REFERENCES `users` (`id`);

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
  ADD CONSTRAINT `cautraloi_ibfk_1` FOREIGN KEY (`IDPhien`) REFERENCES `phien` (`IDPhien`);

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
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`IDNguoiDung`) REFERENCES `nguoidung` (`IDNguoiDung`),
  ADD CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`IDBinhLuan`) REFERENCES `binhluan` (`IDBinhLuan`);

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

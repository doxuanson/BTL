/*
 Navicat MySQL Data Transfer

 Source Server         : KTPM
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : 172.16.69.101:3306
 Source Schema         : lab

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 21/05/2018 18:24:28
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for BAIVIET
-- ----------------------------
DROP TABLE IF EXISTS `BAIVIET`;
CREATE TABLE `BAIVIET`  (
  `MABV` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TIEUDE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NOIDUNG` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NGAYDANG` date NULL DEFAULT NULL,
  `NGAYSUA` date NULL DEFAULT NULL,
  `SOLUOTXEM` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`MABV`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of BAIVIET
-- ----------------------------
INSERT INTO `BAIVIET` VALUES ('BV0001', 'Linux command line', 'Học cách sử dụng các lệnh Linux cơ bản và nâng cao', '2013-04-08', '2013-12-10', 29);
INSERT INTO `BAIVIET` VALUES ('BV0002', 'Sử dụng VMWare Workstation 10', 'Biết cách sử dụng VMWare tạo máy ảo , kết nối các máy ảo thông qua virtual switch', '2013-05-05', '2013-06-15', 20);
INSERT INTO `BAIVIET` VALUES ('BV0003', 'DHCP', 'Tiìm hiểu giao thức DHCP , xây dựng mô hình lab nhỏ ứng dụng tính năng giao thức DHCP', '2013-05-09', '2013-10-14', 20);
INSERT INTO `BAIVIET` VALUES ('BV0004', 'KVM', 'KVM là 1 công nghệ hỗ trợ ảo hóa được tích hợp sẵn trên nhân Linux .Biết cách sử dụng KVM tạo máy ảo , kết nối các máy ảo thông qua virtual switch', '2013-05-10', '2013-12-10', 23);
INSERT INTO `BAIVIET` VALUES ('BV0005', 'Ghi chép bash shell', 'Viết script trong Linux phục vụ mục đích tiết kiệm thời gian gõ lệnh', '2013-05-10', '2013-12-10', 18);
INSERT INTO `BAIVIET` VALUES ('BV0006', 'Linuxbridge', 'Linuxbride là công nghệ tạo switch ảo được cài đặt sẵn trên kernel Linux ', '2014-07-05', '2016-05-16', 28);
INSERT INTO `BAIVIET` VALUES ('BV0007', 'Cài đặt Openstakc mitaka ', 'Làm theo hướng dẫn: \nhttp://docs.openstack.org/mitaka/install-guide-ubuntu/', '2014-07-05', '2014-05-16', 10);
INSERT INTO `BAIVIET` VALUES ('BV0008', 'Tìm hiểu các project trong OPS', 'Các project chính trong OpenStack bao gồm : Keystone , Nova , Neutron , Glance , Cinder , Swift , Horizon , …', '2014-07-05', '2016-05-16', 17);
INSERT INTO `BAIVIET` VALUES ('BV0009', 'Wireshark', 'Sử dụng thành thạo để bắt và phân tích gói tin', '2014-08-05', '2014-09-15', 13);
INSERT INTO `BAIVIET` VALUES ('BV0010', 'Giới thiệu về Internet of thing', ' Internet of Things là khi tất cả mọi thứ đều được kết nối với nhau qua mạng Internet, người dùng (chủ) có thể kiểm soát mọi đồ vật của mình qua mạng mà chỉ bằng một thiết bị thông minh, chẳng hạn như smartphone, tablet, PC hay thậm chí chỉ bằng một chiếc smartwatch nhỏ bé trên tay', '2016-05-03', '2016-09-15', 8);
INSERT INTO `BAIVIET` VALUES ('BV0011', 'SDN', 'Software Defined Network (SDN) là một cấu trúc mới, được thiết kế cho phép hệ thống mạng trở nên linh động và có hiệu quả chi phí hơn (Fig.1). SDN là một khái niệm mang tính lý thuyết, về mặt bản chất, SDN tách riêng các control plane phân tán (distributed) từ các forwarding plane và đưa (offload) các chức năng của control plane vào trong control plane tập trung (centralized).', '2016-08-06', '2016-09-10', 15);
INSERT INTO `BAIVIET` VALUES ('BV0012', 'Tìm hiểu chi tiết project Glance trong OpenStack', 'Là Image services bao gồm việc tìm kiếm, đăng ký, thu thập các images của các máy ảo. Glance cung cấp RESTful API cho phép truy vấn metadata của image máy ảo cũng như thu thập image thực sự', '2015-10-14', '2015-11-16', 8);
INSERT INTO `BAIVIET` VALUES ('BV0013', 'Iptables', 'Sử dụng thành thạo Iptables trên nền Ubuntu 14.04', '2013-05-15', '2013-05-11', 15);
INSERT INTO `BAIVIET` VALUES ('BV0014', 'SSH', 'Tim hiểu giao thức ssh và ứng dụng trong thực tế', '2014-07-15', '2014-08-09', 26);
INSERT INTO `BAIVIET` VALUES ('BV0015', 'Openvswitch', 'Sử dụng Openvswitch để tạo switch ảo phục vụ mục đích kết nối các máy ảo', '2013-02-17', '2013-06-03', 12);
INSERT INTO `BAIVIET` VALUES ('BV0016', 'NFV', 'Network Functions Virtualization (NFV) chính là việc ảo hóa các chứ năng mạng như firewall, NAT, load balancer, etc. để đạt được tính linh động cao cũng như thúc đẩy việc triển khai các dịch vụ mới trong lĩnh vực cung cấp dịch vụ mạng.', '2016-08-18', '2016-09-10', 13);
INSERT INTO `BAIVIET` VALUES ('BV0017', 'Tìm hiểu Cloud Computing và OpenStack', 'Cloud Computing là mô hình cho phép truy cập qua mạng để lựa chọn và sử dụng tài nguyên có thể được tính toán (ví dụ: mạng, máy chủ, lưu trữ, ứng dụng và dịch vụ) theo nhu cầu một cách thuận tiện và nhanh chóng; đồng thời cho phép kết thúc sử dụng dịch vụ, giải phóng tài nguyên dễ dàng, giảm thiểu các giao tiếp với nhà cung cấp”', '2014-03-26', '2014-07-09', 15);
INSERT INTO `BAIVIET` VALUES ('BV0018', 'Các distro Linux', 'Debian : Debian, Ubuntu, Knoppix, Linux Mint, Kali, …\nRPM: Red Hat, Fedora, CentOS, Mandriva\nPacman : Arch Linux, Antergos, ArchBang, Chakra\n', '2014-05-26', '2014-04-09', 23);
INSERT INTO `BAIVIET` VALUES ('BV0019', 'Giới thiệu công nghệ 5G ', '5G (Thế hệ mạng di động thứ 5 hoặc hệ thống không dây thứ 5) là thế hệ tiếp theo của công nghệ truyền thông di động sau thế hệ 4G. Theo các nhà phát minh, mạng 5G sẽ có tốc độ nhanh hơn khoảng 100 lần so với mạng 4G hiện nay, giúp mở ra nhiều khả năng mới và hấp dẫn.', '2014-05-26', '2014-04-09', 5);
INSERT INTO `BAIVIET` VALUES ('BV0020', 'Project Heat trong OpenStack', 'Heat là sự phối hợp giữa các project của OpenStack .\nHeat cung cấp khả năng cho phép người dùng tự định nghĩa ứng dụng của mình thông qua template ( VD : tạo network , router , instance , ... )', '2016-03-28', '2016-06-07', 13);

-- ----------------------------
-- Table structure for CHUCVU
-- ----------------------------
DROP TABLE IF EXISTS `CHUCVU`;
CREATE TABLE `CHUCVU`  (
  `MACV` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TENCV` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MOTA` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`MACV`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of CHUCVU
-- ----------------------------
INSERT INTO `CHUCVU` VALUES ('CV0', 'giảng viên', 'giảng viên');
INSERT INTO `CHUCVU` VALUES ('CV1', 'trưởng lab', 'giúp giảng viên quản lí lab');
INSERT INTO `CHUCVU` VALUES ('CV2', 'nhóm trưởng', 'quản lí hoạt động của nhóm , phân chia công việc cho thành viên');
INSERT INTO `CHUCVU` VALUES ('CV3', 'thành viên', 'tham gia vào các hoạt động của nhóm và lab ');
INSERT INTO `CHUCVU` VALUES ('CV4', 'thủ quỹ', 'quản lí tiền chung của cả lớp ( tiền do thành viên đóng hoặc được thưởng trong các cuộc thi )');

-- ----------------------------
-- Table structure for CSVC
-- ----------------------------
DROP TABLE IF EXISTS `CSVC`;
CREATE TABLE `CSVC`  (
  `MATB` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TENTB` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HANGSX` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `THONGTINTB` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `NGAYNHAP` date NULL DEFAULT NULL,
  `TINHTRANG_TB` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `MATHELOAI` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `MATV` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MATB`) USING BTREE,
  INDEX `MATHELOAI-F1`(`MATHELOAI`) USING BTREE,
  CONSTRAINT `MATHELOAI-F1` FOREIGN KEY (`MATHELOAI`) REFERENCES `THELOAI_TB` (`MATHELOAI`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of CSVC
-- ----------------------------
INSERT INTO `CSVC` VALUES ('AC1', 'air conditioning', 'Panasonic', 'ĐIỀU HÒA 1 CHIỀU PANASONIC KC9QKH-8 - 9.000 BTU', '2012-10-05', 'Hỏng', 'AC', '19981001');
INSERT INTO `CSVC` VALUES ('AC2', 'air conditioning', 'Panasonic', 'ĐIỀU HÒA 1 CHIỀU PANASONIC KC9QKH-8 - 9.000 BTU', '2012-05-10', 'Hỏng', 'AC', '19981001');
INSERT INTO `CSVC` VALUES ('CH1', 'Chair', 'Xuân Hòa', 'Ghế xoay, lưng ghế bọc vải nỉ hoặc da ngoại nhập, nệm dày.', '2012-05-28', 'Tốt', 'CH', '19981001');
INSERT INTO `CSVC` VALUES ('CH10', 'Chair', 'Xuân Hòa', 'Ghế xoay, lưng ghế bọc vải nỉ hoặc da ngoại nhập, nệm dày.', '2012-05-28', 'Tốt', 'CH', '19981001');
INSERT INTO `CSVC` VALUES ('CH2', 'Chair', 'Xuân Hòa', 'Ghế xoay, lưng ghế bọc vải nỉ hoặc da ngoại nhập, nệm dày.', '2012-05-28', 'Tốt', 'CH', '19981001');
INSERT INTO `CSVC` VALUES ('CH3', 'Chair', 'Xuân Hòa', 'Ghế xoay, lưng ghế bọc vải nỉ hoặc da ngoại nhập, nệm dày.', '2012-05-28', 'Tốt', 'CH', '19981001');
INSERT INTO `CSVC` VALUES ('CH4', 'Chair', 'Xuân Hòa', 'Ghế xoay, lưng ghế bọc vải nỉ hoặc da ngoại nhập, nệm dày.', '2012-05-28', 'Tốt', 'CH', '19981001');
INSERT INTO `CSVC` VALUES ('CH5', 'Chair', 'Xuân Hòa', 'Ghế xoay, lưng ghế bọc vải nỉ hoặc da ngoại nhập, nệm dày.', '2012-05-28', 'Tốt', 'CH', '19981001');
INSERT INTO `CSVC` VALUES ('CH6', 'Chair', 'Xuân Hòa', 'Ghế xoay, lưng ghế bọc vải nỉ hoặc da ngoại nhập, nệm dày.', '2012-05-28', 'Tốt', 'CH', '19981001');
INSERT INTO `CSVC` VALUES ('CH7', 'Chair', 'Xuân Hòa', 'Ghế xoay, lưng ghế bọc vải nỉ hoặc da ngoại nhập, nệm dày.', '2012-05-28', 'Tốt', 'CH', '19981001');
INSERT INTO `CSVC` VALUES ('CH8', 'Chair', 'Xuân Hòa', 'Ghế xoay, lưng ghế bọc vải nỉ hoặc da ngoại nhập, nệm dày.', '2012-05-28', 'Tốt', 'CH', '19981001');
INSERT INTO `CSVC` VALUES ('CH9', 'Chair', 'Xuân Hòa', 'Ghế xoay, lưng ghế bọc vải nỉ hoặc da ngoại nhập, nệm dày.', '2012-05-28', 'Tốt', 'CH', '19981001');
INSERT INTO `CSVC` VALUES ('PC1', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2012-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC10', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2012-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC11', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2012-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC12', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2013-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC13', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2013-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC14', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2013-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC2', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2012-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC3', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2012-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC4', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2012-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC5', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2012-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC6', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2012-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC7', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2012-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC8', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2012-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('PC9', ' Personal Computer', 'Dell', 'Máy tính để bàn Dell Optiplex 3046SFF-70086073', '2012-04-15', 'Tốt', 'PC', '19981001');
INSERT INTO `CSVC` VALUES ('RT1', 'Router', 'Tenda', '\nThiết bị phát sóng WIFI 2 anten tốc độ 300M TENDA N301 (Trắng)  ', '2012-02-15', 'Tốt', 'RT', '19981001');
INSERT INTO `CSVC` VALUES ('RT2', 'Router', 'Tenda', '\nThiết bị phát sóng WIFI 2 anten tốc độ 300M TENDA N301 (Trắng)  ', '2012-02-15', 'Tốt', 'RT', '19981001');
INSERT INTO `CSVC` VALUES ('RT3', 'Router', 'Tenda', '\nThiết bị phát sóng WIFI 2 anten tốc độ 300M TENDA N301 (Trắng)  ', '2012-02-15', 'Tốt', 'RT', '19981001');
INSERT INTO `CSVC` VALUES ('SV1', 'Server', 'Dell', 'POWEREDGE R330 RACK SERVER', '2012-02-15', 'Tốt', 'SV', '19981001');
INSERT INTO `CSVC` VALUES ('SV2', 'Server', 'Dell', 'POWEREDGE R330 RACK SERVER', '2012-02-15', 'Tốt', 'SV', '19981001');
INSERT INTO `CSVC` VALUES ('SW1', 'Switch', 'Tenda', 'Switch Tenda 24 port (Vỏ sắt )', '2012-03-26', 'Tốt', 'SW', '19981001');
INSERT INTO `CSVC` VALUES ('SW2', 'Switch', 'Tenda', 'Switch Tenda 24 port (Vỏ sắt )', '2012-03-26', 'Tốt', 'SW', '19981001');
INSERT INTO `CSVC` VALUES ('SW3', 'Switch', 'Tenda', 'Switch Tenda 24 port (Vỏ sắt )', '2012-03-26', 'Tốt', 'SW', '19981001');
INSERT INTO `CSVC` VALUES ('SW4', 'Switch', 'Tenda', 'Switch Tenda 24 port (Vỏ sắt )', '2012-03-26', 'Tốt', 'SW', '19981001');
INSERT INTO `CSVC` VALUES ('TB1', 'Table', 'Xuân Hòa', 'Kích thước: Rộng 1200 – sâu 500 – cao 1200\nBàn học khung sắt sơn, mặt bàn gỗ, vách ngăn kính + gỗ', '2012-05-28', 'Tốt', 'TB', '19981001');
INSERT INTO `CSVC` VALUES ('TB10', 'Table', 'Xuân Hòa', 'Kích thước: Rộng 1200 – sâu 500 – cao 1200\nBàn học khung sắt sơn, mặt bàn gỗ, vách ngăn kính + gỗ', '2012-05-28', 'Tốt', 'TB', '19981001');
INSERT INTO `CSVC` VALUES ('TB2', 'Table', 'Xuân Hòa', 'Kích thước: Rộng 1200 – sâu 500 – cao 1200\nBàn học khung sắt sơn, mặt bàn gỗ, vách ngăn kính + gỗ', '2012-05-28', 'Tốt', 'TB', '19981001');
INSERT INTO `CSVC` VALUES ('TB3', 'Table', 'Xuân Hòa', 'Kích thước: Rộng 1200 – sâu 500 – cao 1200\nBàn học khung sắt sơn, mặt bàn gỗ, vách ngăn kính + gỗ', '2012-05-28', 'Tốt', 'TB', '19981001');
INSERT INTO `CSVC` VALUES ('TB4', 'Table', 'Xuân Hòa', 'Kích thước: Rộng 1200 – sâu 500 – cao 1200\nBàn học khung sắt sơn, mặt bàn gỗ, vách ngăn kính + gỗ', '2012-05-28', 'Tốt', 'TB', '19981001');
INSERT INTO `CSVC` VALUES ('TB5', 'Table', 'Xuân Hòa', 'Kích thước: Rộng 1200 – sâu 500 – cao 1200\nBàn học khung sắt sơn, mặt bàn gỗ, vách ngăn kính + gỗ', '2012-05-28', 'Tốt', 'TB', '19981001');
INSERT INTO `CSVC` VALUES ('TB6', 'Table', 'Xuân Hòa', 'Kích thước: Rộng 1200 – sâu 500 – cao 1200\nBàn học khung sắt sơn, mặt bàn gỗ, vách ngăn kính + gỗ', '2012-05-28', 'Tốt', 'TB', '19981001');
INSERT INTO `CSVC` VALUES ('TB7', 'Table', 'Xuân Hòa', 'Kích thước: Rộng 1200 – sâu 500 – cao 1200\nBàn học khung sắt sơn, mặt bàn gỗ, vách ngăn kính + gỗ', '2012-05-28', 'Tốt', 'TB', '19981001');
INSERT INTO `CSVC` VALUES ('TB8', 'Table', 'Xuân Hòa', 'Kích thước: Rộng 1200 – sâu 500 – cao 1200\nBàn học khung sắt sơn, mặt bàn gỗ, vách ngăn kính + gỗ', '2012-05-28', 'Tốt', 'TB', '19981001');
INSERT INTO `CSVC` VALUES ('TB9', 'Table', 'Xuân Hòa', 'Kích thước: Rộng 1200 – sâu 500 – cao 1200\nBàn học khung sắt sơn, mặt bàn gỗ, vách ngăn kính + gỗ', '2012-05-28', 'Tốt', 'TB', '19981001');

-- ----------------------------
-- Table structure for DUAN
-- ----------------------------
DROP TABLE IF EXISTS `DUAN`;
CREATE TABLE `DUAN`  (
  `MADA` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TENDA` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DOITAC` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NGAYBATDAU` date NULL DEFAULT NULL,
  `NGAYKETTHUC` date NULL DEFAULT NULL,
  `MOTA` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `TRANGTHAI_DA` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MADA`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DUAN
-- ----------------------------
INSERT INTO `DUAN` VALUES ('DA1', 'Opendaylight', 'Viettel', '2016-02-12', NULL, 'Nghiên cứu và triển khai Opendaylight trên quy mô nhỏ', 'Doing');
INSERT INTO `DUAN` VALUES ('DA2', 'Bảo mật Server', 'VNPT', '2015-05-30', NULL, 'Đây là dự án nghiên cứu tăng hiệu bảo mật đối với các máy chủ của VNPT', 'Doing');
INSERT INTO `DUAN` VALUES ('DA3', 'OpenStack', 'VNPT', '2014-09-25', NULL, 'Nghiên cứu và triển khai Open Stack trên quy mô doanh nghiệp', 'Doing');

-- ----------------------------
-- Table structure for DUAN_TV
-- ----------------------------
DROP TABLE IF EXISTS `DUAN_TV`;
CREATE TABLE `DUAN_TV`  (
  `MADA` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MATV` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MADA`, `MATV`) USING BTREE,
  INDEX `MATV-F2`(`MATV`) USING BTREE,
  CONSTRAINT `MADA-F1` FOREIGN KEY (`MADA`) REFERENCES `DUAN` (`MADA`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `MATV-F2` FOREIGN KEY (`MATV`) REFERENCES `THANHVIEN` (`MATV`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of DUAN_TV
-- ----------------------------
INSERT INTO `DUAN_TV` VALUES ('DA1', '19981001');
INSERT INTO `DUAN_TV` VALUES ('DA3', '19981001');
INSERT INTO `DUAN_TV` VALUES ('DA2', '20021001');
INSERT INTO `DUAN_TV` VALUES ('DA3', '20111357');
INSERT INTO `DUAN_TV` VALUES ('DA2', '20111981');
INSERT INTO `DUAN_TV` VALUES ('DA2', '20112579');
INSERT INTO `DUAN_TV` VALUES ('DA1', '20121282');
INSERT INTO `DUAN_TV` VALUES ('DA3', '20121282');
INSERT INTO `DUAN_TV` VALUES ('DA1', '20121988');
INSERT INTO `DUAN_TV` VALUES ('DA3', '20121988');
INSERT INTO `DUAN_TV` VALUES ('DA1', '20122445');
INSERT INTO `DUAN_TV` VALUES ('DA3', '20122445');
INSERT INTO `DUAN_TV` VALUES ('DA2', '20122544');
INSERT INTO `DUAN_TV` VALUES ('DA3', '20131548');
INSERT INTO `DUAN_TV` VALUES ('DA3', '20131906');
INSERT INTO `DUAN_TV` VALUES ('DA1', '20131929');
INSERT INTO `DUAN_TV` VALUES ('DA3', '20131929');
INSERT INTO `DUAN_TV` VALUES ('DA1', '20132393');
INSERT INTO `DUAN_TV` VALUES ('DA3', '20132393');
INSERT INTO `DUAN_TV` VALUES ('DA1', '20132537');
INSERT INTO `DUAN_TV` VALUES ('DA3', '20132537');
INSERT INTO `DUAN_TV` VALUES ('DA2', '20133190');
INSERT INTO `DUAN_TV` VALUES ('DA2', '20134545');
INSERT INTO `DUAN_TV` VALUES ('DA2', '20136243');

-- ----------------------------
-- Table structure for NHOM
-- ----------------------------
DROP TABLE IF EXISTS `NHOM`;
CREATE TABLE `NHOM`  (
  `MANHOM` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TENNHOM` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HUONG_NC` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `MOTA` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `MANT` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MANHOM`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of NHOM
-- ----------------------------
INSERT INTO `NHOM` VALUES ('5G', 'Wireless 4G 5G', 'Triển khai 5G trên thực tế tại Việt Nam', 'Triển khai 5G trên thực tế tại Việt Nam', '20121282');
INSERT INTO `NHOM` VALUES ('GV', 'GV', NULL, 'Giảng viên', '19981001');
INSERT INTO `NHOM` VALUES ('IoT', 'Internet of Thing', 'Nghiên cứu giao thức lớp trên', 'Nghiên cứu giao thức lớp trên', '20130634');
INSERT INTO `NHOM` VALUES ('NFV', 'Network Function Virtualization', 'Kết hợp NVF và Cloud để triển khai mô hình SFC ', 'Kết hợp NVF và Cloud để triển khai mô hình SFC ', '20131929');
INSERT INTO `NHOM` VALUES ('QoS', 'Quality of Service', 'Nâng cao chất lượng dịch vụ', 'Nâng cao chất lượng dịch vụ', '20136316');
INSERT INTO `NHOM` VALUES ('SE', 'Security', 'Chống DDoS', 'Chống DDoS', '20132719');

-- ----------------------------
-- Table structure for SUDUNG_CSVC
-- ----------------------------
DROP TABLE IF EXISTS `SUDUNG_CSVC`;
CREATE TABLE `SUDUNG_CSVC`  (
  `MATB` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MATV` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NGAYNHAN` date NULL DEFAULT NULL,
  `NGAYTRA` date NULL DEFAULT NULL,
  PRIMARY KEY (`MATB`, `MATV`) USING BTREE,
  INDEX `MATV-F1`(`MATV`) USING BTREE,
  CONSTRAINT `MATB-F1` FOREIGN KEY (`MATB`) REFERENCES `CSVC` (`MATB`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `MATV-F1` FOREIGN KEY (`MATV`) REFERENCES `THANHVIEN` (`MATV`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SUDUNG_CSVC
-- ----------------------------
INSERT INTO `SUDUNG_CSVC` VALUES ('PC1', '20133299', '2012-05-05', NULL);
INSERT INTO `SUDUNG_CSVC` VALUES ('PC1', '20133430', '2012-05-05', NULL);
INSERT INTO `SUDUNG_CSVC` VALUES ('PC2', '20132719', '2012-05-05', NULL);
INSERT INTO `SUDUNG_CSVC` VALUES ('PC3', '20132719', '2012-05-05', NULL);
INSERT INTO `SUDUNG_CSVC` VALUES ('SV1', '20133299', '2013-04-20', NULL);
INSERT INTO `SUDUNG_CSVC` VALUES ('SV1', '20133430', '2013-04-20', NULL);
INSERT INTO `SUDUNG_CSVC` VALUES ('SV2', '20132719', '2013-04-20', NULL);
INSERT INTO `SUDUNG_CSVC` VALUES ('SW1', '20133299', '2012-05-05', NULL);
INSERT INTO `SUDUNG_CSVC` VALUES ('SW1', '20133430', '2015-10-20', NULL);
INSERT INTO `SUDUNG_CSVC` VALUES ('SW2', '20132719', '2012-05-05', NULL);

-- ----------------------------
-- Table structure for THANHVIEN
-- ----------------------------
DROP TABLE IF EXISTS `THANHVIEN`;
CREATE TABLE `THANHVIEN`  (
  `MATV` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TENDN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MK` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HOTEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `EMAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NS` date NULL DEFAULT NULL,
  `LOP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `KHOA` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `QUE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `SODT` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NGAYVAOLAB` date NULL DEFAULT NULL,
  `NGAYROILAB` date NULL DEFAULT NULL,
  `AVATAR` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `MAVIEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `MACV` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `MATT` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `MANHOM` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MATV`) USING BTREE,
  UNIQUE INDEX `TENDN`(`TENDN`) USING BTREE,
  INDEX `MATT-F1`(`MATT`) USING BTREE,
  INDEX `MAVIEN-F1`(`MAVIEN`) USING BTREE,
  INDEX `MACV-F1`(`MACV`) USING BTREE,
  INDEX `MANHOM-F1`(`MANHOM`) USING BTREE,
  CONSTRAINT `MACV-F1` FOREIGN KEY (`MACV`) REFERENCES `CHUCVU` (`MACV`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `MANHOM-F1` FOREIGN KEY (`MANHOM`) REFERENCES `NHOM` (`MANHOM`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `MATT-F1` FOREIGN KEY (`MATT`) REFERENCES `TRANGTHAI` (`MATT`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `MAVIEN-F1` FOREIGN KEY (`MAVIEN`) REFERENCES `VIEN` (`MAVIEN`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of THANHVIEN
-- ----------------------------
INSERT INTO `THANHVIEN` VALUES ('19981001', '19981001', '19981001', 'Nguyễn Hữu Thanh', 'thanh.nguyenhuu@hust.edu.vn', '1972-05-06', NULL, '38', 'Hà Nội', '0912523624', '2012-05-04', NULL, '19981001.jpg', 'ET', 'CV0', 'TT1', 'GV');
INSERT INTO `THANHVIEN` VALUES ('20021001', '20021001', '20021001', 'Trương Thu Hương', 'huong.truongthu@hust.edu.vn', '1972-06-09', NULL, '38', 'Hà Nội', '096 379 5367', '2012-05-04', NULL, '20021001.jpg', 'ET', 'CV0', 'TT1', 'GV');
INSERT INTO `THANHVIEN` VALUES ('20101391', '20101391', '20101391', 'Dương Minh Đức', 'minhducduong92@gmail.com,', '1992-03-22', 'DTTT06', '55', 'Hà Nội', '1664073009', '2012-05-04', '2015-06-30', NULL, 'ET', 'CV3', 'TT2', '5G');
INSERT INTO `THANHVIEN` VALUES ('20101765', '20101765', '20101765', 'Lý Bình Lập', 'lybinhlap@gmail.com,', '1992-03-04', 'DTTT02', '55', 'Thái Bình', '1666033066', '2012-09-10', '2015-06-30', NULL, 'ET', 'CV3', 'TT2', '5G');
INSERT INTO `THANHVIEN` VALUES ('20111263', '20111263', '20111263', 'Nguyễn Văn Dậu', 'nguyenvandau.hut@gmail.com', '1993-06-03', 'DTTT09', '56', 'Bắc Giang', '1689571732', '2012-04-25', '2016-06-30', NULL, 'ET', 'CV3', 'TT2', '5G');
INSERT INTO `THANHVIEN` VALUES ('20111357', '20111357', '20111357', 'Lê Quang Đại', 'quangdai.et.hust@gmail.com', '1993-03-25', 'DTTT04', '56', 'Nghệ An', '1647539093', '2012-10-25', '2016-06-30', NULL, 'ET', 'CV3', 'TT2', '5G');
INSERT INTO `THANHVIEN` VALUES ('20111712', '20111712', '20111712', 'Trần Đình Khoa', 'khoatrandinh94@gmail.com', '1993-03-27', 'DTTT03', '56', 'Thanh Hóa', '1653016394', '2012-04-25', '2016-06-30', NULL, 'ET', 'CV3', 'TT2', 'IoT');
INSERT INTO `THANHVIEN` VALUES ('20111726', '20111726', '20111726', 'Phạm Duy Kiên', 'kienpham@mail.com', '1993-10-07', 'DTTT07', '56', 'Bắc Ninh', '903479896', '2012-10-15', '2016-06-30', NULL, 'ET', 'CV3', 'TT2', 'IoT');
INSERT INTO `THANHVIEN` VALUES ('20111981', '20111981', '20111981', 'Phan Hải Phong', 'haiphong0912@gmail.com', '1993-09-12', 'DTTT03', '56', 'Hà Nội', '903479596', '2012-04-25', '2016-06-30', NULL, 'ET', 'CV3', 'TT2', 'IoT');
INSERT INTO `THANHVIEN` VALUES ('20112579', '20112579', '20112579', 'Trần Khánh Đức', 'trankhanh.duc@gmail.com', '1993-05-01', 'DTTT04', '56', 'Thái Nguyên', '968000974', '2012-10-25', '2016-06-30', NULL, 'ET', 'CV3', 'TT2', 'IoT');
INSERT INTO `THANHVIEN` VALUES ('20115532', '20115532', '20115532', 'Nguyễn Mạnh Đoàn', 'doannmbk@gmail.com', '1993-07-14', 'DTTT03', '56', 'Hà Nội', '979753120', '2013-04-15', '2016-06-30', NULL, 'ET', 'CV3', 'TT2', 'IoT');
INSERT INTO `THANHVIEN` VALUES ('20121282', '20121282', '20121282', 'Nguyễn Thái Bình', 'nguyenthaibinhbk@gmail.com', '1994-10-22', 'DTTT01', '57', 'Lạng Sơn', '916221094', '2013-04-15', '2017-06-30', NULL, 'ET', 'CV2', 'TT2', '5G');
INSERT INTO `THANHVIEN` VALUES ('20121988', '20121988', '20121988', 'Nguyễn Thị Thùy Linh', 'nguyenthuylinh183168', '1994-11-29', 'DTTT2', '57', 'Hà Tĩnh', '916281094', '2013-04-15', '2017-06-30', NULL, 'ET', 'CV4', 'TT2', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20122445', '20122445', '20122445', 'Phạm Hồng Thái', 'thaiph.hust@gmail.com', '1994-12-31', 'DTTT06', '57', 'Hải Dương', '1645406425', '2013-04-15', '2017-06-30', NULL, 'ET', 'CV1', 'TT2', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20122544', '20122544', '20122544', 'Đỗ Trọng Tiến', 'dotrongtien94@gmail.com', '1994-06-14', 'DTTT04', '57', 'Nghệ An', '949214694', '2013-04-15', '2017-06-30', NULL, 'ET', 'CV3', 'TT2', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20130634', '20130634', '20130634', 'Đào Khánh Dũng', 'dungdaobg1995@gmail.com', '1995-01-24', 'DTTT06', '58', 'Bắc Giang', '1667656674', '2015-10-25', NULL, NULL, 'ET', 'CV2', 'TT1', 'IoT');
INSERT INTO `THANHVIEN` VALUES ('20130762', '20130762', '20130762', 'Vũ Hoàng Dương', 'vuhoangduong95@gmail.com', '1995-10-26', 'DTTT04', '58', 'Nghệ An', '964581624', '2015-04-15', NULL, NULL, 'ET', 'CV3', 'TT1', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20131053', '20131053', '20131053', 'Phạm Minh Đức', 'minhduc1013@gmail.com', '1995-11-11', 'DTTT03', '58', 'Nam Định', '1249798689', '2015-04-15', NULL, NULL, 'ET', 'CV3', 'TT1', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20131548', '20131548', '20131548', 'Lê Quang Hoàn', 'lequanghoanS@gmail.com', '1995-05-05', 'DTTT07', '58', 'Hà Nội', '988105595', '2015-10-25', NULL, NULL, 'ET', 'CV3', 'TT1', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20131906', '20131906', '20131906', 'Phạm Huy Hùng', 'phamhung3589@gmail.com', '5199-01-03', 'DTTT03', '58', 'Thái Nguyên', '1649587967', '2015-04-15', NULL, NULL, 'ET', 'CV3', 'TT1', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20131929', '20131929', '20131929', 'Đinh Tiến Hưng', 'dinhtienhung4795@gmail.com', '1995-04-07', 'DTTT05', '58', 'Hà Nội', '962864795', '2015-04-15', NULL, NULL, 'ET', 'CV1', 'TT1', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20132393', '20132393', '20132393', 'Nguyễn Văn Long', 'longbn95@gmail.com', '1995-10-09', 'DTTT01', '58', 'Nam Định', '966041060', '2015-04-15', NULL, NULL, 'ET', 'CV3', 'TT1', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20132537', '20132537', '20132537', 'Nguyễn Tiến Mạnh', 'tienmanhhust@gmail.com', '1995-05-06', 'DTTT2', '58', 'Hà Nội', '962861795', '2015-04-15', NULL, NULL, 'ET', 'CV2', 'TT1', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20132719', '20132719', '20132719', 'Vương Bá Nam', 'vuongbanam1995@gmail.com', '1995-01-02', 'DTTT06', '58', 'Bắc Ninh', '0169 888 8669', '2015-04-15', NULL, NULL, 'ET', 'CV2', 'TT1', 'SE');
INSERT INTO `THANHVIEN` VALUES ('20133190', '20133190', '20133190', 'Nguyễn Mạnh Quyền', 'manhquyen12a10@gmail.com', '1995-03-22', 'DTTT05', '58', 'Nghệ An', '1672038959', '2015-04-15', NULL, NULL, 'ET', 'CV2', 'TT1', 'QoS');
INSERT INTO `THANHVIEN` VALUES ('20133299', '20133299', '20133299', 'Đỗ Xuân Sơn', 'do.xuanson181295@gmail.com', '1995-12-18', 'DTTT06', '58', 'Hà Nội', '0169 677 8619', '2015-10-15', NULL, NULL, 'ET', 'CV3', 'TT1', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20133430', '20133430', '20133430', 'Nguyễn Thị Thanh Tâm', 'thanhtampotter285@gmail.com', '1995-05-28', 'DTTT06', '58', 'Thái Bình', '963795367', '2015-10-15', NULL, NULL, 'ET', 'CV4', 'TT1', 'NFV');
INSERT INTO `THANHVIEN` VALUES ('20133659', '20133659', '20133659', 'Đinh Trọng Thắng', 'dinhthangbkhn@gmail.com', '1995-12-25', 'DTTT06', '58', 'Nghệ An', '1654049026', '2015-10-15', NULL, NULL, 'ET', 'CV3', 'TT1', 'QoS');
INSERT INTO `THANHVIEN` VALUES ('20134545', '20134545', '20134545', 'Nguyễn Thị Vân', 'vannguyen4395@gmail.com', '1995-04-03', 'DTTT02', '58', 'Thanh Hóa', '949334394', '2014-10-15', NULL, NULL, 'ET', 'CV2', 'TT1', 'IoT');
INSERT INTO `THANHVIEN` VALUES ('20136243', '20136243', '20136243', 'Nguyễn Lê Quang', 'quangkeu95@gmail.com', '1995-10-17', 'DTTT09', '58', 'Bắc Ninh', '1668717668', '2014-10-15', NULL, NULL, 'ET', 'CV3', 'TT1', 'SE');
INSERT INTO `THANHVIEN` VALUES ('20136316', '20136316', '20136316', 'Đỗ Phúc Sơn', 'dpson1995@gmail.com', '1995-05-14', 'DTTT04', '58', 'Hà Nội', '964967779', '2015-10-15', NULL, NULL, 'ET', 'CV2', 'TT1', 'SE');
INSERT INTO `THANHVIEN` VALUES ('20136342', '20136342', '20136342', 'Vũ Ngọc Sơn', 'vungocson1106@gmail.com', '1995-11-06', 'DTTT02', '58', 'Thanh Hóa', '1666350311', '2015-10-15', NULL, NULL, 'ET', 'CV3', 'TT1', 'SE');

-- ----------------------------
-- Table structure for THELOAI_TB
-- ----------------------------
DROP TABLE IF EXISTS `THELOAI_TB`;
CREATE TABLE `THELOAI_TB`  (
  `MATHELOAI` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TENLOAI` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MOTA` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`MATHELOAI`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of THELOAI_TB
-- ----------------------------
INSERT INTO `THELOAI_TB` VALUES ('AC', 'air conditioning', 'điều hòa là thiết bị điều chỉnh nhiệt độ không khí');
INSERT INTO `THELOAI_TB` VALUES ('CH', 'Chair', 'Ghế là dụng cụ để ngồi');
INSERT INTO `THELOAI_TB` VALUES ('PC', 'Personal Computer', '\"PC - hay Personal Computer\" là máy tính máy tính cá nhân, được dùng phổ biến trong lĩnh vực công nghệ thông tin phát triển như ngày nay, ngày càng có nhiều người sử dụng máy tính như một công cụ học tập, phục vụ công việc và giải trí một cách hiệu quả.');
INSERT INTO `THELOAI_TB` VALUES ('RT', 'Router', 'Router, hay thiết bị định tuyến hoặc bộ định tuyến, làmột thiết bị mạng máy tính dùng để chuyển các gói dữ liệu qua một liên mạng và đến các đầu cuối, thông qua một tiến trình được gọi là định tuyến.');
INSERT INTO `THELOAI_TB` VALUES ('SV', 'Server', 'Server (máy chủ) là một hệ thống (phần mềm và phần cứng máy tính phù hợp) đáp ứng yêu cầu trên một mạng máy tính để cung cấp, hoặc hỗ trợ cung cấp một dịch vụ mạng. Các server có thể chạy trên một máy tính chuyên dụng, mà cũng thường được gọi là\"máy chủ\", hoặc nhiều máy tính nối mạng có khả năng máy chủ lưu trữ.');
INSERT INTO `THELOAI_TB` VALUES ('SW', 'Switch', 'Switch là một thiết bị chọn lựa đường dẫn để gửi frame đến đích, hoạt động ở Lớp 2 của mô hình OSI. Đôi khi Switch còn được gọi là Bridge đa port hay Hub chuyển mạch. Switch quyết định chuyển frame dựa trên địa chỉ MAC, do đó nó được xếp vào thiết bị Lớp 2');
INSERT INTO `THELOAI_TB` VALUES ('TB', 'Table', 'Bàn là một loại nội thất, với cấu tạo của nó hàm chứa một mặt phẳng nằm ngang (gọi là mặt bàn) có tác dụng dùng để nâng đỡ cho những vật dụng hay vật thể mà người dùng muốn đặt lên mặt bàn đó.');

-- ----------------------------
-- Table structure for TRANGTHAI
-- ----------------------------
DROP TABLE IF EXISTS `TRANGTHAI`;
CREATE TABLE `TRANGTHAI`  (
  `MATT` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MOTA` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MATT`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of TRANGTHAI
-- ----------------------------
INSERT INTO `TRANGTHAI` VALUES ('TT1', 'đang hoạt động');
INSERT INTO `TRANGTHAI` VALUES ('TT2', 'ngừng hoạt động');

-- ----------------------------
-- Table structure for TV_BV
-- ----------------------------
DROP TABLE IF EXISTS `TV_BV`;
CREATE TABLE `TV_BV`  (
  `MABV` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MATV` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MABV`, `MATV`) USING BTREE,
  INDEX `MATV-F3`(`MATV`) USING BTREE,
  CONSTRAINT `MABV-F1` FOREIGN KEY (`MABV`) REFERENCES `BAIVIET` (`MABV`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `MATV-F3` FOREIGN KEY (`MATV`) REFERENCES `THANHVIEN` (`MATV`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of TV_BV
-- ----------------------------
INSERT INTO `TV_BV` VALUES ('BV0001', '20101391');
INSERT INTO `TV_BV` VALUES ('BV0002', '20101391');
INSERT INTO `TV_BV` VALUES ('BV0015', '20101391');
INSERT INTO `TV_BV` VALUES ('BV0004', '20101765');
INSERT INTO `TV_BV` VALUES ('BV0016', '20111357');
INSERT INTO `TV_BV` VALUES ('BV0013', '20111981');
INSERT INTO `TV_BV` VALUES ('BV0014', '20111981');
INSERT INTO `TV_BV` VALUES ('BV0003', '20112579');
INSERT INTO `TV_BV` VALUES ('BV0005', '20112579');
INSERT INTO `TV_BV` VALUES ('BV0009', '20112579');
INSERT INTO `TV_BV` VALUES ('BV0018', '20112579');
INSERT INTO `TV_BV` VALUES ('BV0019', '20121282');
INSERT INTO `TV_BV` VALUES ('BV0008', '20121988');
INSERT INTO `TV_BV` VALUES ('BV0006', '20122445');
INSERT INTO `TV_BV` VALUES ('BV0007', '20122445');
INSERT INTO `TV_BV` VALUES ('BV0008', '20122445');
INSERT INTO `TV_BV` VALUES ('BV0012', '20122445');
INSERT INTO `TV_BV` VALUES ('BV0017', '20122445');
INSERT INTO `TV_BV` VALUES ('BV0010', '20130634');
INSERT INTO `TV_BV` VALUES ('BV0008', '20131929');
INSERT INTO `TV_BV` VALUES ('BV0011', '20132537');
INSERT INTO `TV_BV` VALUES ('BV0016', '20132537');
INSERT INTO `TV_BV` VALUES ('BV0006', '20133299');
INSERT INTO `TV_BV` VALUES ('BV0020', '20133299');
INSERT INTO `TV_BV` VALUES ('BV0020', '20133430');
INSERT INTO `TV_BV` VALUES ('BV0010', '20134545');

-- ----------------------------
-- Table structure for VIEN
-- ----------------------------
DROP TABLE IF EXISTS `VIEN`;
CREATE TABLE `VIEN`  (
  `MAVIEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TENVIEN` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DIACHI` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `SODT` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `EMAIL` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `WEBSITE` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`MAVIEN`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of VIEN
-- ----------------------------
INSERT INTO `VIEN` VALUES ('ET', 'Điện tử - Viễn Thông', 'Phòng 405 – C9 – Đại học Bách Khoa Hà Nội', '(84) 43 8692242', 'set-office@hust.edu.vn', 'http://set.hust.edu.vn/');
INSERT INTO `VIEN` VALUES ('IT', 'Công nghệ thông tin và truyền thông', 'Phòng 504, nhà B1, Đại học Bách khoa Hà Nội', '(84-4) 3 8692463', 'vp@soict.hust.edu.vn', 'http://soict.hust.edu.vn/');
INSERT INTO `VIEN` VALUES ('MI', 'Toán tin và ứng dụng', 'Phòng 106 nhà D3, ĐHBK Hà Nội', '04 3869 2137', 'sami@hust.edu.vn', 'http://sami.hust.edu.vn/');

SET FOREIGN_KEY_CHECKS = 1;

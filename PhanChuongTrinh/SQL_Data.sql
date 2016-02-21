/*==============================================================*/
/*			Author:		Đinh Ngọc Toàn							*/
/*			Email:		toanc1200444@student.ctu.edu.vn			*/
/*			Phone:		01674 615 128							*/
/*			Create:		15/03/2014 08:00 AM						*/
/*			getDate:		?									*/
/*==============================================================*/


Set Dateformat Dmy
Go

Use QUANLYTHUVIEN
Go

/*==============================================================*/
				-- Thêm dữ liệu vào các bảng --

/*==============================================================*/
/* Table: (1) tb_Tacgia: Tác giả		                        */
/*==============================================================*/

Insert into tb_Tacgia (MATACGIA, BUTDANH, HOTACGIA, TENTACGIA, GIOITINH) Values ('TG0001',N'Họa Long', N'Quách Đức', N'Anh', '0')
Insert into tb_Tacgia (MATACGIA, BUTDANH, HOTACGIA, TENTACGIA, GIOITINH) Values ('TG0002',N'Thiên Pháp', N'Bùi Tuấn', N'Cường', '0')
Insert into tb_Tacgia (MATACGIA, BUTDANH, HOTACGIA, TENTACGIA, GIOITINH) Values ('TG0003',N'Sĩ Phu', N'Nguyễn Thị Trúc', N'Mai', '1')
Insert into tb_Tacgia (MATACGIA, BUTDANH, HOTACGIA, TENTACGIA, GIOITINH) Values ('TG0004',N'Long Nhất', N'Huỳnh Thị Huyền', N'Trân', '1')
Insert into tb_Tacgia (MATACGIA, BUTDANH, HOTACGIA, TENTACGIA, GIOITINH) Values ('TG0005',N'Cố Hủ', N'Nguyễn Minh', N'Hoàng', '0')

Go

/*==============================================================*/
/* Table: (2) tb_Loaidocgia: Loại đọc giả		                */
/*==============================================================*/


insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0001', N'Hoc Sinh', 7)
insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0002', N'Sinh Viên', 10)
insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0003', N'Giáo Viên', 15)
insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0004', N'Kỷ Sư', 15)
insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0005', N'Nghiên Cứu Sinh', 20)
insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0006', N'Tiến Sĩ', 25)
insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0007', N'Bác Sĩ', 25)
insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0008', N'Giáo Sư', 30)
insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0009', N'Công An', 20)
insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0010', N'Bộ Đội', 20)
insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0011', N'Công Nhân', 7)
insert into tb_Loaidocgia (MALOAIDG, DOITUONG, SONGAYMUON) values ('LDG0012', N'Khác', 7)
Go

/*==============================================================*/
/* Table: (3) tb_Nhaxuatban: Nhà xuất bản					    */
/*==============================================================*/

Insert into tb_Nhaxuatban (MANHAXB, TENNHAXB, DIACHINHAXB) Values ('NXB0001', N'Nhà Xuất Bản Thanh Niên', N'161B Lý Chính Thắng, P.7, Q.3, TP.HCM')
Insert into tb_Nhaxuatban (MANHAXB, TENNHAXB, DIACHINHAXB) Values ('NXB0002', N'Nhà Xuất Bản Tuổi Trẻ ', N'62 Bà Triệu - Hàng Bài - Hoàng Kiếm - Hà Nội')
Insert into tb_Nhaxuatban (MANHAXB, TENNHAXB, DIACHINHAXB) Values ('NXB0003', N'Nhà Xuất Bản Dân Trí', N'111 Lê Thánh Tôn, P.BN, Q.1, TP. HCM')
Insert into tb_Nhaxuatban (MANHAXB, TENNHAXB, DIACHINHAXB) Values ('NXB0004', N'Nhà Xuất Bản Ánh Hồng', N'Số 9 Ngõ 26 Hoàng Cầu – Đống Đa – Hà Hội')
Insert into tb_Nhaxuatban (MANHAXB, TENNHAXB, DIACHINHAXB) Values ('NXB0005', N'Nhà Xuất Bản Lao Động Xã Hội', N'940 Đường Ba Tháng Hai, P.15, Q.11, TP.HCM')
Insert into tb_Nhaxuatban (MANHAXB, TENNHAXB, DIACHINHAXB) Values ('NXB0006', N'Nhà Xuất Bản Văn Học', N'Ngõ Hòa Bình 4, Minh Khai, Hai Bà Trưng, Hà Nội')
Insert into tb_Nhaxuatban (MANHAXB, TENNHAXB, DIACHINHAXB) Values ('NXB0007', N'Nhà Xuất Bản Văn Hóa Mới', N'18 Phố Nguyễn Trường Tộ, Quận Ba Đình, Hà Nội')
Insert into tb_Nhaxuatban (MANHAXB, TENNHAXB, DIACHINHAXB) Values ('NXB0008', N'Nhà Xuất Bản Tiền Phong', N'Số 7, Nguyễn Thị Minh Khai, P.Bến Nghé, Q.1, TP.HCM')
Insert into tb_Nhaxuatban (MANHAXB, TENNHAXB, DIACHINHAXB) Values ('NXB0009', N'Nhà Xuất Bản Kim Đồng', N'276 Nguyễn Đình Chiếu, Q.3, TP.HCM')

Go

/*==============================================================*/
/* Table: (4) tb_Theloai: Thể loại						        */
/*==============================================================*/

Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0001',N'Kinh Tế')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0002',N'Tin Học')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0003',N'Lịch Sử')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0004',N'Tâm Lý')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0005',N'Giáo Dục')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0006',N'Văn Học')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0007',N'Tri Thức')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0008',N'Y Tế')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0009',N'Chính Trị')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0010',N'Xã Hội')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0011',N'Truyện')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0012',N'Tiểu Thuyết')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0013',N'Giải Trí')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0014',N'Địa Lý')
Insert into tb_Theloai (MATHELOAI, TENTHELOAI) Values ('TL0015',N'Dịch Vụ Du Lịch')

Go

/*==============================================================*/
/* Table: (5) tb_Kesach: Kệ Sách					            */
/*==============================================================*/

Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0001',N'Lĩnh Vực Kinh Tế')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0002',N'Lĩnh Vực Tin Học')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0003',N'Lĩnh Vực Lịch Sử')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0004',N'Lĩnh Vực Tâm Lý')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0005',N'Lĩnh Vực Giáo Dục')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0006',N'Lĩnh Vực Văn Học')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0007',N'Lĩnh Vực Tri Thức')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0008',N'Lĩnh Vực Y Tế')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0009',N'Lĩnh Vực Chính Trị')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0010',N'Lĩnh Vực Xã Hội')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0011',N'Lĩnh Vực Truyện')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0012',N'Lĩnh Vực Tiểu Thuyết')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0013',N'Lĩnh Vực Giải Trí')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0014',N'Lĩnh Vực Địa Lý')
Insert into tb_Kesach (MAKESACH, TENKESACH) Values ('KS0015',N'Lĩnh Vực Dịch Vụ Du Lịch')


Go

/*==============================================================*/
/* Table: (6) tb_Dausach: Đầu Sách				     		    */
/*==============================================================*/

Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0001',N'Chinh Phục Đỉnh Phú Sĩ',	N'Học cách làm giàu', N'Tiếng Việt','22-01-2000', 1, N'25x30cm', 150,'TL0001','NXB0001')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0002',N'Hướng Dẫn Sử Dụng Microsoft Office', N'Thành thạo Word, Excel, Access trong vòng 15 ngày ', N'Tiếng Việt','22-01-2001', 1, N'25x30cm', 150,'TL0002','NXB0002')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0003',N'Tuổi Trẻ Sài Gòn Mậu Thân 1968',	N'Tìm Hiểu', N'Tiếng Việt','22-01-2002', 1, N'25x30cm', 150,'TL0003','NXB0003')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0004',N'Tâm Lý Học Tuổi Trẻ', N'Hiểu cách tiếp cận tâm lý tuổi trẻ', N'Tiếng Việt','22-01-2003', 1, N'25x30cm', 150,'TL0004','NXB0004')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0005',N'Giáo Dục Tuổi Trẻ Việt Nam',	N'Giáo dục giới tính cho tuổi trẻ Việt Nam', N'Tiếng Việt','22-01-2004', 1, N'25x30cm', 150,'TL0005','NXB0005')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0006',N'Trí Thức Khoa Học', N'Trí thức và nhà khoa học', N'Tiếng Anh','22-01-2005', 1, N'25x30cm', 150,'TL0006','NXB0006')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0007',N'Tri Thức Tìm Ẩn', N'Tri thức tìm ẩn trong con người', N'Tiếng Việt','22-01-2006', 1, N'25x30cm', 150,'TL0007','NXB0007')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0008',N'Phong Cách Thẩm Mỹ', N'Cách thẩm mỹ làm đẹp của phụ nữ', N'Tiếng Việt','22-01-2007', 1, N'25x30cm', 150,'TL0008','NXB0008')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0009',N'Tư Tưởng Hồ Chí Minh', N'Con đường chính trị của Hồ Chí Minh', N'Tiếng Việt','22-01-2008', 1, N'25x30cm', 150,'TL0009','NXB0009')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0010',N'Con Người Và Tương Lai',	N'Cảm nhận về tương lai con người', N'Tiếng Việt','22-01-2009', 1, N'25x30cm', 150,'TL0010','NXB0008')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0011',N'101 Truyện Cổ Tích Việt Nam', N'Tổng hợp truyện cổ tích Việt Nam hay nhất', N'Tiếng Việt','22-01-2010', 1, N'25x30cm', 150,'TL0011','NXB0005')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0012',N'1001 Tiểu Thuyết Hấp Dẫn', N'Tổng hợp tiểu thuyết Việt Nam, nước ngoài', N'Tiếng Việt - Tiếng Anh','22-01-2011', 1, N'25x30cm', 150,'TL0012','NXB0004')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0013',N'Nhịp Sống Trẻ', N'Một số cách vui troi giải trí', N'Tiếng Việt','22-01-2012', 1, N'25x30cm', 150,'TL0013','NXB0002')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0014',N'Sơn Đia Phù Du',	N'Cảnh vật địa lý Việt Nam', N'Tiếng Việt','22-01-2013', 1, N'25x30cm', 150,'TL0014','NXB0001')
Insert into tb_Dausach (MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) Values ('DS0015',N'Du Lịch Đồng Bằng Sông Cửu Long', N'Những địa danh nổi tiếng Đồng Bằng Sông Cửu Long', N'Tiếng Việt','22-01-2014', 1, N'25x30cm', 150,'TL0015','NXB0006')

Go

/*==============================================================*/
/* Table: (7) tb_Thedocgia: Thẻ đọc giả		     		        */
/*==============================================================*/

Insert into tb_Thedocgia (MADOCGIA, HODOCGIA, TENDOCGIA, NGAYSINH, GIOITINH, SCMND, DIACHI, DIENTHOAI, NGHENGHIEP, NOICONGTAC, NGAYBATDAU, NGAYHETHAN, MALOAIDG) Values ('DG0001',N'Quách Thị Thu', N'An', '12-03-1990','1', '361142506', N'Cao Lãnh - Đồng Tháp','0987856998', N'Học Sinh', N'Trường THPT Chuyên Lý Tự Trọng', '22-03-2012', '22-03-2013', 'LDG0001')
Insert into tb_Thedocgia (MADOCGIA, HODOCGIA, TENDOCGIA, NGAYSINH, GIOITINH, SCMND, DIACHI, DIENTHOAI, NGHENGHIEP, NOICONGTAC, NGAYBATDAU, NGAYHETHAN, MALOAIDG) Values ('DG0002',N'Trần Văn', N'Nam', '12-05-1995','0', '362142507', N'Long Hồ - Vĩnh Long','0917856996', N'Sinh Viên', N'Trường Đại Học Tây Đô', '12-04-2013', '12-04-2014', 'LDG0002')
Insert into tb_Thedocgia (MADOCGIA, HODOCGIA, TENDOCGIA, NGAYSINH, GIOITINH, SCMND, DIACHI, DIENTHOAI, NGHENGHIEP, NOICONGTAC, NGAYBATDAU, NGAYHETHAN, MALOAIDG) Values ('DG0003',N'Ngyễn Thị Thu', N'Anh', '16-03-1990','1', '361242706', N'Cầu Kè - Trà Vinh','0987858998', N'Giáo Viên', N'Trường Cao Đẳng Cần Thơ', '12-04-2012', '12-04-2013', 'LDG0003')
Insert into tb_Thedocgia (MADOCGIA, HODOCGIA, TENDOCGIA, NGAYSINH, GIOITINH, SCMND, DIACHI, DIENTHOAI, NGHENGHIEP, NOICONGTAC, NGAYBATDAU, NGAYHETHAN, MALOAIDG) Values ('DG0004',N'Đặng Thanh', N'Đồng', '02-07-1995','0', '362143507', N'Mang Thích - Vĩnh Long','0918856996', N'Cán bộ công chức nhà nước', N'Viện lúa ĐBSCL', '10-06-2013', '10-06-2014', 'LDG0004')
Insert into tb_Thedocgia (MADOCGIA, HODOCGIA, TENDOCGIA, NGAYSINH, GIOITINH, SCMND, DIACHI, DIENTHOAI, NGHENGHIEP, NOICONGTAC, NGAYBATDAU, NGAYHETHAN, MALOAIDG) Values ('DG0005',N'Lý Thị Kiều', N'Tiên', '12-03-1990','1', '361162506', N'Cao Lãnh - Đồng Tháp','0977856998', N'Bác Sĩ', N'Bệnh Viện Trường Đại Học Y Dược Cần Thơ', '28-03-2012', '28-03-2013', 'LDG0007')
Insert into tb_Thedocgia (MADOCGIA, HODOCGIA, TENDOCGIA, NGAYSINH, GIOITINH, SCMND, DIACHI, DIENTHOAI, NGHENGHIEP, NOICONGTAC, NGAYBATDAU, NGAYHETHAN, MALOAIDG) Values ('DG0006',N'Trịnh Thành', N'Công', '10-03-1995','0', '362182507', N'Long Mỹ - Hậu Giang','0907856996', N'Giảng Viên', N'Trường Đại Học Tây Đô', '12-07-2013', '12-07-2014', 'LDG0006')

Go

/*==============================================================*/
/* Table: (8) tb_Cuonsach: Cuốn sách  		     		        */
/*==============================================================*/

Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0001','DS0001','KS0001')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0002','DS0002','KS0002')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0003','DS0003','KS0003')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0004','DS0004','KS0004')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0005','DS0005','KS0005')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0006','DS0006','KS0006')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0007','DS0007','KS0007')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0008','DS0008','KS0008')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0009','DS0009','KS0009')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0010','DS0010','KS0010')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0011','DS0011','KS0011')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0012','DS0012','KS0012')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0013','DS0013','KS0013')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0014','DS0014','KS0014')
Insert into tb_Cuonsach (MACUONSACH, MADAUSACH, MAKESACH)  VALUES('CS0015','DS0015','KS0015')

Go



/*==============================================================*/
/* Table: (9) tb_Trangthai: Trạng thái		     		        */
/*==============================================================*/

Insert into tb_Trangthai (MATRANGTHAI, TENTRANGTHAI) Values ('DO', N'Chỉ được đọc tại chỗ')
Insert into tb_Trangthai (MATRANGTHAI, TENTRANGTHAI) Values ('MU', N'Có thể mượn về nhà')

Go

/*==============================================================*/
/* Table: (10) tb_Thoidiem: Thời điểm		     		        */
/*==============================================================*/

Insert into tb_Thoidiem (NGAY) Values ('01-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('02-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('03-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('04-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('05-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('06-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('07-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('08-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('09-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('10-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('11-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('12-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('13-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('14-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('15-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('16-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('17-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('18-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('19-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('20-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('21-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('22-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('23-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('24-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('25-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('26-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('27-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('28-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('29-04-2014')
Insert into tb_Thoidiem (NGAY) Values ('30-04-2014')

Go

/*==============================================================*/
/* Table: (11) tb_Phieumuon: Phiếu mượn		     		        */
/*==============================================================*/

Insert into tb_Phieumuon (STT_PM, NGAYMUON, NGAYTRA, MADOCGIA) Values ('PM0001', '05-03-2012', '12-03-2012', 'DG0001')
Insert into tb_Phieumuon (STT_PM, NGAYMUON, NGAYTRA, MADOCGIA) Values ('PM0002', '07-07-2013', '14-07-2013', 'DG0002')
Insert into tb_Phieumuon (STT_PM, NGAYMUON, NGAYTRA, MADOCGIA) Values ('PM0003', '17-07-2013', '24-07-2013', 'DG0003')
Insert into tb_Phieumuon (STT_PM, NGAYMUON, NGAYTRA, MADOCGIA) Values ('PM0004', '05-03-2012', '19-03-2012', 'DG0004')
Insert into tb_Phieumuon (STT_PM, NGAYMUON, NGAYTRA, MADOCGIA) Values ('PM0005', '07-07-2013', '21-07-2013', 'DG0005')
Insert into tb_Phieumuon (STT_PM, NGAYMUON, NGAYTRA, MADOCGIA) Values ('PM0006', '17-07-2013', '01-08-2013', 'DG0006')

Go

/*==============================================================*/
/* Table: (12) tb_Bienlaiphat: Biên lai phạt		     		    */
/*==============================================================*/

Insert into tb_Bienlaiphat (STT_BLP, LYDOPHAT, SOTIENPHAT, NGAYPHAT, MACUONSACH, STT_PM) Values ('BLP0001',N'Trả sách trễ hạn', 2000, '01-10-2013', 'CS0002', 'PM0001')
Insert into tb_Bienlaiphat (STT_BLP, LYDOPHAT, SOTIENPHAT, NGAYPHAT, MACUONSACH, STT_PM) Values ('BLP0002',N'Trả sách trễ hạn', 2000, '01-10-2013', 'CS0006', 'PM0002')

Go

/*==============================================================*/
/* Table: (13) tb_Duocmuon: Được mượn	     		            */
/*==============================================================*/

Insert into tb_Duocmuon (STT_PM,MACUONSACH) Values ('PM0001', 'CS0002')
Insert into tb_Duocmuon (STT_PM,MACUONSACH) Values ('PM0001', 'CS0004')


Insert into tb_Duocmuon (STT_PM,MACUONSACH) Values ('PM0002', 'CS0006')

Insert into tb_Duocmuon (STT_PM,MACUONSACH) Values ('PM0003', 'CS0008')
Insert into tb_Duocmuon (STT_PM,MACUONSACH) Values ('PM0004', 'CS0010')

Insert into tb_Duocmuon (STT_PM,MACUONSACH) Values ('PM0005', 'CS0012')


Insert into tb_Duocmuon (STT_PM,MACUONSACH) Values ('PM0006', 'CS0014')

Go

/*==============================================================*/
/* Table: (14) tb_Duoctra: Được trả		     		            */
/*==============================================================*/

Insert into tb_Duoctra (STT_PM, MACUONSACH, NGAYTRA, TINHTRANGSACH) Values ('PM0001', 'CS0002', '20-03-2012',N'Binh thường')
Insert into tb_Duoctra (STT_PM, MACUONSACH, NGAYTRA, TINHTRANGSACH) Values ('PM0002', 'CS0006', '30-03-2013',N'Binh thường')


Go

/*==============================================================*/
/* Table: (15) tb_Cogiahan: Có gia hạn		     		        */
/*==============================================================*/

Insert into tb_Cogiahan (STT_PM, MACUONSACH, NGAY, LANGIAHAN) Values ('PM0004', 'CS0010', '04-04-2014', 1)
Insert into tb_Cogiahan (STT_PM, MACUONSACH, NGAY, LANGIAHAN) Values ('PM0005', 'CS0012', '04-04-2014', 1)

Go

/*==============================================================*/
/* Table: (16) tb_Cothoidiem: Có thời điểm		     		    */
/*==============================================================*/

Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('DO', 'CS0001', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('DO', 'CS0003', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('DO', 'CS0005', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('DO', 'CS0007', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('DO', 'CS0009', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('DO', 'CS0011', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('DO', 'CS0013', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('DO', 'CS0015', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('MU', 'CS0002', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('MU', 'CS0004', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('MU', 'CS0006', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('MU', 'CS0008', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('MU', 'CS0010', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('MU', 'CS0012', '01-04-2014')
Insert into tb_Cothoidiem (MATRANGTHAI, MACUONSACH, NGAY) Values ('MU', 'CS0014', '01-04-2014')

Go

/*==============================================================*/
/* Table: (17) tb_Cuatacgia: Của tác giả		     		    */
/*==============================================================*/

Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0001','DS0001')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0002','DS0002')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0003','DS0003')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0004','DS0004')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0005','DS0005')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0006','DS0006')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0001','DS0007')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0002','DS0008')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0003','DS0009')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0004','DS0010')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0005','DS0011')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0006','DS0012')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0001','DS0013')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0002','DS0014')
Insert into tb_Cuatacgia (STT, MATACGIA, MADAUSACH) Values (1, 'TG0003','DS0015')



Go

/*==============================================================*/
/* Table: (18) Vaitro: Vai trò		     		                */
/*==============================================================*/

Set Identity_Insert tb_Vaitro On
Insert into tb_Vaitro (Id, Ten,Mota) Values (1, N'Admininistrator', N'Nhóm quyền quản trị hệ thống - admin')
Insert into tb_Vaitro (Id, Ten,Mota) Values (2, N'Manage', N'Nhóm quyền quản lý hệ thống - Thủ thư ')
Insert into tb_Vaitro (Id, Ten,Mota) Values (3, N'User', N'Người dùng hệ thống - Đọc giả')
Insert into tb_Vaitro (Id, Ten,Mota) Values (4, N'Gest', N'Đọc giả')
Set Identity_Insert tb_Vaitro Off
Go

/*==============================================================*/
/* Table: (19)User : Thành viên	     		                    */
/*==============================================================*/

Set Identity_Insert tb_User On
Insert into tb_User (Id, Ten, Matkhau, Hoten, VaitroID) Values (1,'admin','21232F297A57A5A743894A0E4A801FC3', N'Đinh Ngọc Toàn', '1')
Set Identity_Insert tb_User Off
Go

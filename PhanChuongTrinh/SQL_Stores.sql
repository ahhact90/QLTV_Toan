/*==============================================================*/
/*			Author:		Đinh Ngọc Toàn							*/
/*			Email:		toanc1200444@student.ctu.edu.vn			*/
/*			Phone:		01674 615 128							*/
/*			Create:		15/03/2014 08:00 AM						*/
/*==============================================================*/


/*==============================================================*/
				-- Stored Procedure Tác giả  --

/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Tacgia   						*/
/*==============================================================*/

CREATE Procedure [dbo].[sp_SelectAll_Tacgia]
As

Select MATACGIA, BUTDANH, 
	   LTRIM(rtrim(HOTACGIA)) + ' ' + LTRIM(rtrim(TENTACGIA)) as HOVATEN, 
	   case when GIOITINH = 1  then N'Nữ' else N'Nam' end as GIOITINH
From tb_Tacgia

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Tacgia						  	  */
--/*==============================================================*/

CREATE Procedure sp_Insert_Tacgia
	@MATACGIA varchar(10), @BUTDANH	nvarchar(50), @HOTACGIA	nvarchar(50	), @GIOITINH bit
As

	begin 

		Insert into tb_Tacgia(MATACGIA, BUTDANH, GIOITINH) 
			values(@MATACGIA, @BUTDANH, @GIOITINH)
		exec sp_Update_HoVaTen @MATACGIA, @HOTACGIA
	end
	
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Tacgia							  */
--/*==============================================================*/

Create Procedure sp_Delete_Tacgia
	@MATACGIA varchar(10)
As

	Delete From tb_Tacgia Where MATACGIA = @MATACGIA
	
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Tacgia							  */
--/*==============================================================*/

CREATE Procedure sp_Update_Tacgia

	@MATACGIA varchar(10), @BUTDANH	nvarchar(50), @HOTACGIA	nvarchar(50	), @GIOITINH bit

As

	begin
		Update tb_Tacgia Set MATACGIA=@MATACGIA, BUTDANH=@BUTDANH, GIOITINH=@GIOITINH Where MATACGIA=@MATACGIA
		exec sp_Update_HoVaTen @MATACGIA, @HOTACGIA
	end
	
Go


/*==============================================================*/
				-- Stored Procedure Loại đọc giả  --

/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Loaidocgia   					*/
/*==============================================================*/

create Procedure sp_SelectAll_Loaidocgia
As

Select * From tb_Loaidocgia

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Loaidocgia						  */
--/*==============================================================*/

create Procedure sp_Insert_Loaidocgia
	@MALOAIDG varchar(10), @DOITUONG nvarchar(100), @SONGAYMUON int
As

	Insert into tb_Loaidocgia(MALOAIDG, DOITUONG, SONGAYMUON) 
		values(@MALOAIDG, @DOITUONG, @SONGAYMUON)
		
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Tacgia							  */
--/*==============================================================*/

Create Procedure sp_Delete_Loaidocgia
	@MALOAIDG varchar(10)
As

	Delete From tb_Loaidocgia Where MALOAIDG = @MALOAIDG
	
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Loaidocgia						  */
--/*==============================================================*/

Create Procedure sp_Update_Loaidocgia
	@MALOAIDG varchar(10), @DOITUONG nvarchar(100), @SONGAYMUON int
As

	Update tb_Loaidocgia Set MALOAIDG=@MALOAIDG, DOITUONG=@DOITUONG, SONGAYMUON=@SONGAYMUON Where MALOAIDG=@MALOAIDG
	
Go


/*==============================================================*/
				-- Stored Procedure Nhà Xuất Bản  --

/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Nhaxuatban  						*/
/*==============================================================*/

Create Procedure sp_SelectAll_Nhaxuatban
As

Select * From tb_Nhaxuatban

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Nhaxuatban						  */
--/*==============================================================*/

Create Procedure sp_Insert_Nhaxuatban
	@MANHAXB varchar(10), @TENNHAXB nvarchar(50), @DIACHINHAXB varchar(200)
As

	Insert into tb_Nhaxuatban(MANHAXB, TENNHAXB, DIACHINHAXB) 
		values(@MANHAXB, @TENNHAXB, @DIACHINHAXB)
		
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Tacgia							  */
--/*==============================================================*/

Create Procedure sp_Delete_Nhaxuatban
	@MANHAXB varchar(10)
As

	Delete From tb_Nhaxuatban Where MANHAXB = @MANHAXB
	
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Nhaxuatban						  */
--/*==============================================================*/

Create Procedure sp_Update_Nhaxuatban
	@MANHAXB varchar(10), @TENNHAXB nvarchar(50), @DIACHINHAXB nvarchar(200)
As

	Update tb_Nhaxuatban Set MANHAXB=@MANHAXB, TENNHAXB=@TENNHAXB, DIACHINHAXB=@DIACHINHAXB Where MANHAXB=@MANHAXB
	
Go


/*==============================================================*/
				-- Stored Procedure Thể Loại  --

/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Theloai  						*/
/*==============================================================*/

Create Procedure sp_SelectAll_Theloai
As

Select * From tb_Theloai

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Theloai							  */
--/*==============================================================*/

Create Procedure sp_Insert_Theloai
	@MATHELOAI varchar(10), @TENTHELOAI nvarchar(50)
As

	Insert into tb_Theloai(MATHELOAI, TENTHELOAI) 
		values(@MATHELOAI, @TENTHELOAI)
		
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Theloai							  */
--/*==============================================================*/

Create Procedure sp_Delete_Theloai
	@MATHELOAI varchar(10)
As

	Delete From tb_Theloai Where MATHELOAI = @MATHELOAI
	
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Theloai							  */
--/*==============================================================*/

Create Procedure sp_Update_Theloai
	@MATHELOAI varchar(10), @TENTHELOAI nvarchar(50)
As

	Update tb_Theloai Set MATHELOAI=@MATHELOAI, TENTHELOAI=@TENTHELOAI Where MATHELOAI=@MATHELOAI
	
Go


/*==============================================================*/
				-- Stored Procedure Kệ Sách  --

/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Kesach  						    */
/*==============================================================*/

Create Procedure sp_SelectAll_Kesach
As

Select * From tb_Kesach

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Kesach							  */
--/*==============================================================*/

Create Procedure sp_Insert_Kesach
	@MAKESACH varchar(10), @TENKESACH nvarchar(50)
As

	Insert into tb_Kesach(MAKESACH, TENKESACH) 
		values(@MAKESACH, @TENKESACH)
		
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Kesach							  */
--/*==============================================================*/

Create Procedure sp_Delete_Kesach
	@MAKESACH varchar(10)
As

	Delete From tb_Kesach Where MAKESACH = @MAKESACH
	
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Kesach							  */
--/*==============================================================*/

Create Procedure sp_Update_Kesach
	@MAKESACH varchar(10), @TENKESACH nvarchar(50)
As

	Update tb_Kesach Set MAKESACH=@MAKESACH, TENKESACH=@TENKESACH Where MAKESACH=@MAKESACH
	
Go


/*==============================================================*/
				-- Stored Procedure Đầu Sách  --
				
/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Dausach 						    */
/*==============================================================*/

create Procedure sp_SelectAll_Dausach

As
Select a.MADAUSACH, a.TENDAUSACH, a.NOIDUNG_TT, a.NGONNGU, 
	   convert(varchar(25),a.NAMXUATBAN, 103) as NAMXUATBAN, 
	   a.LANXUATBAN, a.KICHTHUOC, a.SOTRANG, b.MATHELOAI, b.TENTHELOAI, c.MANHAXB, c.TENNHAXB
From tb_Dausach a 
join tb_Theloai b on a.MATHELOAI=b.MATHELOAI 
join tb_Nhaxuatban c on a.MANHAXB=c.MANHAXB 

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Dausach							  */
--/*==============================================================*/

Create Procedure sp_Insert_Dausach
	@MADAUSACH varchar(10), @TENDAUSACH nvarchar(50), @NOIDUNG_TT nvarchar(200), @NGONNGU nvarchar(50), 
	@NAMXUATBAN datetime, @LANXUATBAN int, @KICHTHUOC nvarchar(50), @SOTRANG int, @MATHELOAI varchar(10), @MANHAXB varchar(10)
As

	Insert into tb_Dausach(MADAUSACH, TENDAUSACH, NOIDUNG_TT, NGONNGU, NAMXUATBAN, LANXUATBAN, KICHTHUOC, SOTRANG, MATHELOAI, MANHAXB) 
		values(@MADAUSACH, @TENDAUSACH, @NOIDUNG_TT, @NGONNGU, @NAMXUATBAN, @LANXUATBAN, @KICHTHUOC, @SOTRANG, @MATHELOAI, @MANHAXB)
		
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Dausach							  */
--/*==============================================================*/

Create Procedure sp_Delete_Dausach
	@MADAUSACH varchar(10)
As

	Delete From tb_Dausach Where MADAUSACH = @MADAUSACH
	
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Dausach							  */
--/*==============================================================*/

Create Procedure sp_Update_Dausach
	@MADAUSACH varchar(10), @TENDAUSACH nvarchar(50), @NOIDUNG_TT nvarchar(200), @NGONNGU nvarchar(50), 
	@NAMXUATBAN datetime, @LANXUATBAN int, @KICHTHUOC nvarchar(50), @SOTRANG int, @MATHELOAI varchar(10), @MANHAXB varchar(10)
As

	Update tb_Dausach Set MADAUSACH=@MADAUSACH, TENDAUSACH=@TENDAUSACH, NOIDUNG_TT=@NOIDUNG_TT, NGONNGU=@NGONNGU, 
						  NAMXUATBAN=@NAMXUATBAN, LANXUATBAN=@LANXUATBAN, KICHTHUOC=@KICHTHUOC, SOTRANG=@SOTRANG, 
						  MATHELOAI=@MATHELOAI, MANHAXB=@MANHAXB Where MADAUSACH=@MADAUSACH
	
Go				
				
				
/*==============================================================*/
				-- Stored Procedure Thẻ Đọc Giả  --				
/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Thedocgia 					    */
/*==============================================================*/

create Procedure sp_SelectAll_Thedocgia

As
	Select a.MADOCGIA, 
		   ltrim(rtrim(a.HODOCGIA)) + ' ' + ltrim(rtrim(a.TENDOCGIA))as HODOCGIA, 
		   convert(varchar(25), a.NGAYSINH, 103) as NGAYSINH, 
		   case when a.GIOITINH = 1  then N'Nữ' else N'Nam' end as GIOITINH, 
		   a.SCMND, a.DIACHI, a.DIENTHOAI, a.NGHENGHIEP, a.NOICONGTAC, 
		   convert(varchar(25), a.NGAYBATDAU, 103) as NGAYBATDAU, 
		   convert(varchar(25), a.NGAYHETHAN, 103) as NGAYHETHAN, 
		   b.MALOAIDG , b.DOITUONG, b.SONGAYMUON
	From tb_Thedocgia a 
	join tb_Loaidocgia b on a.MALOAIDG=b.MALOAIDG

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Thedocgia							  */
--/*==============================================================*/

CREATE Procedure sp_Insert_Thedocgia
	@MADOCGIA varchar(10), @HODOCGIA nvarchar(100), @NGAYSINH datetime, @GIOITINH bit, @SCMND nvarchar(20),
	@DIACHI nvarchar(200), @DIENTHOAI nvarchar(12), @NGHENGHIEP nvarchar(100), @NOICONGTAC nvarchar(100),
	@NGAYBATDAU datetime, @NGAYHETHAN datetime, @MALOAIDG varchar(10)
As
	begin 

		Insert into tb_Thedocgia(MADOCGIA, NGAYSINH, GIOITINH, SCMND, DIACHI, DIENTHOAI, NGHENGHIEP, NOICONGTAC, NGAYBATDAU, NGAYHETHAN, MALOAIDG) 
		values(@MADOCGIA, @NGAYSINH, @GIOITINH, @SCMND, @DIACHI, @DIENTHOAI, @NGHENGHIEP, @NOICONGTAC, @NGAYBATDAU, @NGAYHETHAN, @MALOAIDG)
		exec sp_Update_HoVaTen_DG @MADOCGIA, @HODOCGIA
	end
	
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Thedocgia							  */
--/*==============================================================*/

Create Procedure sp_Delete_Thedocgia
	@MADOCGIA varchar(10)
As

	Delete From tb_Thedocgia Where MADOCGIA = @MADOCGIA
	
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Thedocgia							  */
--/*==============================================================*/

CREATE Procedure sp_Update_Thedocgia

	@MADOCGIA varchar(10), @HODOCGIA nvarchar(50), @NGAYSINH datetime, 
	@GIOITINH bit, @SCMND nvarchar(20), @DIACHI nvarchar(200), @DIENTHOAI nvarchar(12),
	@NGHENGHIEP nvarchar(100), @NOICONGTAC nvarchar(100), @NGAYBATDAU datetime, @NGAYHETHAN datetime, @MALOAIDG varchar(10)

As
	begin
		Update tb_Thedocgia Set MADOCGIA=@MADOCGIA, NGAYSINH=@NGAYSINH, GIOITINH=@GIOITINH, 
								SCMND=@SCMND, DIACHI=@DIACHI, DIENTHOAI=@DIENTHOAI, NGHENGHIEP=@NGHENGHIEP, 
								NOICONGTAC=@NOICONGTAC, NGAYBATDAU=@NGAYBATDAU, NGAYHETHAN=@NGAYHETHAN, 
								MALOAIDG=@MALOAIDG Where MADOCGIA=@MADOCGIA
		exec sp_Update_HoVaTen @MADOCGIA, @HODOCGIA
	end
	
Go


/*==============================================================*/
				-- Stored Procedure Cuốn Sách  --
/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Cuonsach						    */
/*==============================================================*/

create Procedure sp_SelectAll_Cuonsach
As

Select a.MACUONSACH, b.MADAUSACH, b.TENDAUSACH, b.NOIDUNG_TT, b.NGONNGU, b.NAMXUATBAN, 
	   b.LANXUATBAN, b.KICHTHUOC, b.SOTRANG, c.MAKESACH, c.TENKESACH
From tb_Cuonsach a 
join tb_Dausach b on a.MADAUSACH=b.MADAUSACH 
join tb_Kesach c on a.MAKESACH=c.MAKESACH

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Cuonsach							  */
--/*==============================================================*/

Create Procedure sp_Insert_Cuonsach
	@MACUONSACH varchar(10), @MADAUSACH varchar(10), @MAKESACH varchar(10)
As

	Insert into tb_Cuonsach(MACUONSACH, MADAUSACH, MAKESACH) 
		values(@MACUONSACH, @MADAUSACH, @MAKESACH)
		
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Cuonsach							  */
--/*==============================================================*/

Create Procedure sp_Delete_Cuonsach
	@MACUONSACH varchar(10)
As

	Delete From tb_Cuonsach Where MACUONSACH = @MACUONSACH
	
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Cuonsach							  */
--/*==============================================================*/

Create Procedure sp_Update_Cuonsach
	@MACUONSACH varchar(10), @MADAUSACH varchar(10), @MAKESACH varchar(10)
As

	Update tb_Cuonsach Set MACUONSACH=@MACUONSACH, MADAUSACH=@MADAUSACH, MAKESACH=@MAKESACH Where MACUONSACH=@MACUONSACH
	
Go				
				
			
				
/*==============================================================*/
				-- Stored Procedure Biên Lai Phạt  --		
/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Bienlaiphat					    */
/*==============================================================*/

create Procedure sp_SelectAll_Bienlaiphat

As
Select a.STT_BLP, c.STT_PM, b.MACUONSACH, e.TENDAUSACH, a.LYDOPHAT, 
	   LTRIM(rtrim(d.HODOCGIA)) + ' ' + LTRIM(rtrim(d.TENDOCGIA)) as HOVATEN, 
	   a.SOTIENPHAT, convert(varchar(25), a.NGAYPHAT, 103) as NGAYPHAT
From tb_Bienlaiphat a 
join tb_Cuonsach b on a.MACUONSACH=b.MACUONSACH 
join tb_Dausach e on b.MADAUSACH=e.MADAUSACH
join tb_Phieumuon c on a.STT_PM=c.STT_PM 
join tb_Thedocgia d on c.MADOCGIA=d.MADOCGIA
Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Bienlaiphat						  */
--/*==============================================================*/

create Procedure sp_Insert_Bienlaiphat
	@STT_BLP varchar(10), @LYDOPHAT nvarchar(100), @SOTIENPHAT int, @NGAYPHAT datetime, @MACUONSACH varchar(10), @STT_PM varchar(10)
As
	Insert into tb_Bienlaiphat(STT_BLP, LYDOPHAT, SOTIENPHAT, NGAYPHAT, MACUONSACH, STT_PM) 
		values(@STT_BLP, @LYDOPHAT, @SOTIENPHAT, @NGAYPHAT,@MACUONSACH, @STT_PM)
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Bienlaiphat						  */
--/*==============================================================*/

create Procedure sp_Delete_Bienlaiphat
	@STT_BLP varchar(10)
As
	Delete From tb_Bienlaiphat Where STT_BLP = @STT_BLP
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Bienlaiphat						  */
--/*==============================================================*/

create Procedure sp_Update_Bienlaiphat
	@STT_BLP varchar(10), @LYDOPHAT nvarchar(100), @SOTIENPHAT int, @NGAYPHAT datetime, @MACUONSACH varchar(10), @STT_PM varchar(10)
As
	Update tb_Bienlaiphat Set STT_BLP=@STT_BLP, LYDOPHAT=@LYDOPHAT, SOTIENPHAT=@SOTIENPHAT, 
							  NGAYPHAT=@NGAYPHAT, MACUONSACH=@MACUONSACH, STT_PM=@STT_PM Where STT_BLP=@STT_BLP
Go					
				
				
				
/*==============================================================*/
				-- Stored Procedure Trạng Thái  --	

/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Trangthai  						*/
/*==============================================================*/

Create Procedure sp_SelectAll_Trangthai
As
Select * From tb_Trangthai
Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Trangthai							  */
--/*==============================================================*/

Create Procedure sp_Insert_Trangthai
	@MATRANGTHAI varchar(10), @TENTRANGTHAI nvarchar(20)
As
	Insert into tb_Trangthai(MATRANGTHAI, TENTRANGTHAI) 
		values(@MATRANGTHAI, @TENTRANGTHAI)
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Trangthai							  */
--/*==============================================================*/

Create Procedure sp_Delete_Trangthai
	@MATRANGTHAI varchar(10)
As
	Delete From tb_Trangthai Where MATRANGTHAI = @MATRANGTHAI
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Trangthai							  */
--/*==============================================================*/

Create Procedure sp_Update_Trangthai
	@MATRANGTHAI varchar(10), @TENTRANGTHAI nvarchar(50)
As
	Update tb_Trangthai Set MATRANGTHAI=@MATRANGTHAI, TENTRANGTHAI=@TENTRANGTHAI Where MATRANGTHAI=@MATRANGTHAI
Go


/*==============================================================*/
				-- Stored Procedure Thời Điểm  --	

/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Thoidiem  						*/
/*==============================================================*/

Create Procedure sp_SelectAll_Thoidiem
As
Select * From tb_Thoidiem
Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Thoidiem						  	  */
--/*==============================================================*/

Create Procedure sp_Insert_Thoidiem
	@NGAY datetime
As
	Insert into tb_Thoidiem(NGAY) 
		values(@NGAY)
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Thoidiem							  */
--/*==============================================================*/

Create Procedure sp_Delete_Thoidiem
	@NGAY datetime
As
	Delete From tb_Thoidiem Where NGAY = @NGAY
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Thoidiem							  */
--/*==============================================================*/

Create Procedure sp_Update_Thoidiem
	@NGAY datetime
As
	Update tb_Thoidiem Set NGAY=@NGAY Where NGAY=@NGAY
Go



/*==============================================================*/
				-- Stored Procedure Phiếu Mượn  --	
/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Phieumuon					    */
/*==============================================================*/

Create Procedure sp_SelectAll_Phieumuon

As
Select a.STT_PM, b.MADOCGIA, LTRIM(rtrim(b.HODOCGIA)) + ' ' + LTRIM(rtrim(b.TENDOCGIA)) as HOVATEN, 
	   convert(varchar(25), b.NGAYSINH, 103) as NGAYSINH, 
	   case when b.GIOITINH = 1  then N'Nữ' else N'Nam' end as GIOITINH, b.DIACHI, b.SCMND, 
	   b.DIENTHOAI, b.NGHENGHIEP, b.NOICONGTAC, 
	   convert(varchar(25),a.NGAYMUON,103) as NGAYMUON,
	   convert(varchar(25),a.NGAYTRA,103) as NGAYTRA
From tb_Phieumuon a join tb_Thedocgia b on a.MADOCGIA=b.MADOCGIA

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Phieumuon						  */
--/*==============================================================*/

Create Procedure sp_Insert_Phieumuon
	@STT_PM varchar(10), @NGAYMUON datetime, @NGAYTRA datetime, @MADOCGIA varchar(10)
As
	Insert into tb_Phieumuon(STT_PM, NGAYMUON, NGAYTRA, MADOCGIA) 
		values(@STT_PM, @NGAYMUON, @NGAYTRA, @MADOCGIA)
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Phieumuon						  */
--/*==============================================================*/

Create Procedure sp_Delete_Phieumuon
	@STT_PM varchar(10)
As
	Delete From tb_Phieumuon Where STT_PM = @STT_PM
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Phieumuon						  */
--/*==============================================================*/

Create Procedure sp_Update_Phieumuon
	@STT_PM varchar(10), @NGAYMUON datetime, @NGAYTRA datetime, @MADOCGIA varchar(10)
As
	Update tb_Phieumuon Set STT_PM=@STT_PM, NGAYMUON=@NGAYMUON, NGAYTRA=@NGAYTRA, MADOCGIA=@MADOCGIA Where STT_PM=@STT_PM
Go



--/*==============================================================*/
--				-- Stored Procedure Được Mượn  --	
/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Duocmuon						    */
/*==============================================================*/

create Procedure sp_SelectAll_Duocmuon
As
Select c.STT_PM, b.MACUONSACH, d.TENDAUSACH, d.NOIDUNG_TT, d.LANXUATBAN, 
	   d.KICHTHUOC, d.SOTRANG, e.TENKESACH, f.TENTHELOAI, i.TENNHAXB, 
	   convert(varchar(25),c.NGAYMUON,103) as NGAYMUON
From tb_Duocmuon a 
join tb_Cuonsach b on a.MACUONSACH=b.MACUONSACH 
join tb_Phieumuon c on a.STT_PM=c.STT_PM 
join tb_Dausach d on b.MADAUSACH=d.MADAUSACH 
join tb_Kesach e on b.MAKESACH=e.MAKESACH 
join tb_Theloai f on d.MATHELOAI=f.MATHELOAI 
join tb_Nhaxuatban i on d.MANHAXB=i.MANHAXB

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Duocmuon							  */
--/*==============================================================*/

create Procedure sp_Insert_Duocmuon
@STT_PM varchar(10), @MACUONSACH varchar(10)
As
	Insert into tb_Duocmuon(STT_PM, MACUONSACH) 
		values(@STT_PM, @MACUONSACH)
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Duocmuon							  */
--/*==============================================================*/

create Procedure sp_Delete_Duocmuon
@STT_PM varchar(10)
As
	Delete From tb_Duocmuon Where STT_PM=@STT_PM 
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Duocmuon						  */
--/*==============================================================*/

alter Procedure sp_Update_Duocmuon
@STT_PM varchar(10), @MACUONSACH varchar(10)
As
	Update tb_Duocmuon Set MACUONSACH=@MACUONSACH Where STT_PM=@STT_PM 
Go


/*==============================================================*/
				-- Stored Procedure Được Trả  --	
/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Duoctra						    */
/*==============================================================*/

create Procedure sp_SelectAll_Duoctra

As
Select c.STT_PM, b.MACUONSACH, e.TENDAUSACH, f.TENTHELOAI, i.TENNHAXB, 
	   LTRIM(rtrim(d.HODOCGIA)) + ' ' + LTRIM(rtrim(d.TENDOCGIA)) as HOVATEN, 
	   convert(varchar(25),c.NGAYMUON,103) as NGAYMUON, a.NGAYTRA, a.TINHTRANGSACH
From tb_Duoctra a 
join tb_Cuonsach b on a.MACUONSACH=b.MACUONSACH 
join tb_Phieumuon c on a.STT_PM=c.STT_PM 
join tb_Thedocgia d on c.MADOCGIA=d.MADOCGIA 
join tb_Dausach e on b.MADAUSACH=e.MADAUSACH 
join tb_Theloai f on e.MATHELOAI=f.MATHELOAI 
join tb_Nhaxuatban i on e.MANHAXB=i.MANHAXB

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Duoctra							  */
--/*==============================================================*/

create Procedure sp_Insert_Duoctra
@STT_PM varchar(10), @MACUONSACH varchar(10), @NGAYTRA datetime, @TINHTRANGSACH nvarchar(50)
As
	Insert into tb_Duoctra(STT_PM, MACUONSACH, NGAYTRA, TINHTRANGSACH) 
		values(@STT_PM, @MACUONSACH, @NGAYTRA, @TINHTRANGSACH)
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Duoctra							  */
--/*==============================================================*/

create Procedure sp_Delete_Duoctra
@STT_PM varchar(10)
As
	Delete From tb_Duoctra Where STT_PM=@STT_PM 
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Duocmuon						  */
--/*==============================================================*/

create Procedure sp_Update_Duoctra
@STT_PM varchar(10), @MACUONSACH varchar(10), @NGAYTRA datetime, @TINHTRANGSACH nvarchar(50)
As
	Update tb_Duoctra Set MACUONSACH=@MACUONSACH, NGAYTRA=@NGAYTRA, TINHTRANGSACH=@TINHTRANGSACH Where STT_PM=@STT_PM 
Go


/*==============================================================*/
				-- Stored Procedure Có Gia Hạn  --	
/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Cogiahan						    */
/*==============================================================*/

alter Procedure sp_SelectAll_Cogiahan
As
Select c.STT_PM, b.MACUONSACH, f.TENDAUSACH, g.TENTHELOAI, h.TENNHAXB, 
	   LTRIM(rtrim(e.HODOCGIA)) + ' ' + LTRIM(rtrim(e.TENDOCGIA)) as HOVATEN, d.NGAY, a.LANGIAHAN
From tb_Cogiahan a 
join tb_Cuonsach b on a.MACUONSACH=b.MACUONSACH 
join tb_Phieumuon c on a.STT_PM=c.STT_PM 
join tb_Thoidiem d on a.NGAY=d.NGAY
join tb_Thedocgia e on c.MADOCGIA=e.MADOCGIA
join tb_Dausach f on b.MADAUSACH=f.MADAUSACH
join tb_Theloai g on f.MATHELOAI=g.MATHELOAI
join tb_Nhaxuatban h on f.MANHAXB=h.MANHAXB

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Cogiahan							  */
--/*==============================================================*/

Create Procedure sp_Insert_Cogiahan
@STT_PM varchar(10), @MACUONSACH varchar(10), @NGAY datetime, @LANGIAHAN int
As
	Insert into tb_Cogiahan(STT_PM, MACUONSACH, NGAY, LANGIAHAN) 
		values(@STT_PM, @MACUONSACH, @NGAY, @LANGIAHAN)
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Cogiahan							  */
--/*==============================================================*/

create Procedure sp_Delete_Cogiahan
@STT_PM varchar(10)
As
	Delete From tb_Cogiahan Where STT_PM=@STT_PM 
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Cogiahan						  */
--/*==============================================================*/

create Procedure sp_Update_Cogiahan
@STT_PM varchar(10), @MACUONSACH varchar(10), @NGAY datetime, @LANGIAHAN int
As
	Update tb_Cogiahan Set MACUONSACH=@MACUONSACH, NGAY=@NGAY, LANGIAHAN=@LANGIAHAN Where STT_PM=@STT_PM 
Go


/*==============================================================*/
				-- Stored Procedure Có Thời Điểm  --	
/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Cothoidiem						    */
/*==============================================================*/

create Procedure sp_SelectAll_Cothoidiem
As
Select b.MACUONSACH, d.NGAY, c.TENTRANGTHAI
From tb_Cothoidiem a 
join tb_Cuonsach b on a.MACUONSACH=b.MACUONSACH 
join tb_Trangthai c on a.MATRANGTHAI=c.MATRANGTHAI 
join tb_Thoidiem d on a.NGAY=d.NGAY

Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Cothoidiem							  */
--/*==============================================================*/

Create Procedure sp_Insert_Cothoidiem
@MATRANGTHAI varchar(10), @MACUONSACH varchar(10), @NGAY datetime
As
	Insert into tb_Cothoidiem(MATRANGTHAI, MACUONSACH, NGAY) 
		values(@MATRANGTHAI, @MACUONSACH, @NGAY)
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Cothoidiem							  */
--/*==============================================================*/

Create Procedure sp_Delete_Cothoidiem
@MATRANGTHAI varchar(10), @MACUONSACH varchar(10), @NGAY datetime
As
	Delete From tb_Cothoidiem Where MATRANGTHAI=@MATRANGTHAI and MACUONSACH=@MACUONSACH and NGAY=@NGAY
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Cothoidiem						  */
--/*==============================================================*/

create Procedure sp_Update_Cothoidiem
@MATRANGTHAI varchar(10), @MACUONSACH varchar(10), @NGAY datetime
As
	Update tb_Cothoidiem Set  MACUONSACH=@MACUONSACH, NGAY=@NGAY Where MATRANGTHAI=@MATRANGTHAI 
Go






/*==============================================================*/
				-- Stored Procedure Của Tác Giả  --	
/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Cuatacgia						    */
/*==============================================================*/

create Procedure sp_SelectAll_Cuatacgia
As
Select a.STT, c.HOTACGIA, c.TENTACGIA, c.BUTDANH, b.MADAUSACH, b.TENDAUSACH, b.NOIDUNG_TT,
	   b.NGONNGU, b.NAMXUATBAN, b.LANXUATBAN, b.KICHTHUOC, b.SOTRANG
From tb_Cuatacgia a 
join tb_Dausach b on a.MADAUSACH=b.MADAUSACH 
join tb_Tacgia c on a.MATACGIA=c.MATACGIA
Go

--/*==============================================================*/
--/* Procedure: (2) sp_Insert_Cuatacgia							  */
--/*==============================================================*/

Create Procedure sp_Insert_Cuatacgia
	@STT int, @MATACGIA varchar(10), @MADAUSACH varchar(10)
As
	Insert into tb_Cuatacgia(STT, MATACGIA, MADAUSACH) 
		values(@STT, @MATACGIA, @MADAUSACH)
Go

--/*==============================================================*/
--/* Procedure: (3) sp_Delete_Cuatacgia							  */
--/*==============================================================*/

Create Procedure sp_Delete_Cuatacgia
	@STT int, @MATACGIA varchar(10), @MADAUSACH varchar(10)
As
	Delete From tb_Cuatacgia Where MATACGIA=@MATACGIA and MADAUSACH=@MADAUSACH
Go

--/*==============================================================*/
--/* Procedure: (4) sp_Update_Cuatacgia							  */
--/*==============================================================*/

Create Procedure sp_Update_Cuatacgia
	@STT int, @MATACGIA varchar(10), @MADAUSACH varchar(10)
As
	Update tb_Cuatacgia Set STT=@STT, MATACGIA=@MATACGIA, MADAUSACH=@MADAUSACH Where MATACGIA=@MATACGIA and MADAUSACH=@MADAUSACH
Go	




/*==============================================================*/
			-- Stored Procedure Vai trò --

/*==============================================================*/
/* Procedure: (1) sp_SelectAll_Vaitro							*/
/*==============================================================*/

Create Procedure sp_SelectAll_Vaitro
As
Select * from tb_Vaitro 
Go

/*==============================================================*/
/* Procedure: (2) sp_Insert_Vaitro								*/
/*==============================================================*/

Create Procedure sp_Insert_Vaitro
@Ten nvarchar(20), @Mota nvarchar(100)
As
Insert into tb_Vaitro(Ten,Mota) values(@Ten,@Mota)
Go

/*==============================================================*/
/* Procedure: (3) sp_Delete_Vaitro								*/
/*==============================================================*/

Create Procedure sp_Delete_Vaitro
@Id bigint
As
Delete From tb_Vaitro Where Id = @Id
Go

/*==============================================================*/
/* Procedure: (4) sp_Update_Vaitro								*/
/*==============================================================*/

Create Procedure sp_Update_Vaitro
@Id bigint, @Ten nvarchar(20), @Mota nvarchar(100)
As
Update tb_Vaitro Set Ten=@Ten, Mota=@Mota Where Id=@Id
Go

/*==============================================================*/
			-- Stored Procedure User --

/*==============================================================*/
/* Procedure: (1) sp_SelectAll_User								*/
/*==============================================================*/

Create Procedure sp_SelectAll_User
As
Select a.Id, a.Ten, a.Matkhau, a.Hoten, a.VaitroID, b.Ten as TenVT from tb_User a join tb_Vaitro b on a.VaitroID = b.Id
Go

/*==============================================================*/
/* Procedure: (2) sp_Insert_User								*/
/*==============================================================*/

Create Procedure sp_Insert_User
@Ten nvarchar(50), @Matkhau varchar(50), @Hoten nvarchar(50), @VaitroID bigint
As
Insert into tb_User(Ten,Matkhau,Hoten,VaitroID) values(@Ten,@Matkhau,@Hoten,@VaitroID)
Go

/*==============================================================*/
/* Procedure: (3) sp_Delete_User								*/
/*==============================================================*/

Create Procedure sp_Delete_User
@Id bigint
As
Delete From tb_User Where Id = @Id
Go

/*==============================================================*/
/* Procedure: (4) sp_Update_User								*/
/*==============================================================*/

Create Procedure sp_Update_User
@Id bigint, @Ten nvarchar(50), @Matkhau varchar(50), @Hoten nvarchar(50), @VaitroID bigint
As
Update tb_User Set Ten=@Ten, Matkhau=@Matkhau, Hoten=@Hoten, VaitroID=@VaitroID Where Id=@Id

Go	



  Create Procedure sp_Update_MatKhau
 @Ten nvarchar(50), @Matkhau varchar(50)

As

Update tb_User Set Ten=@Ten, Matkhau=@Matkhau Where Ten = @Ten

Go


/*==============================================================*/
/* Procedure: (4) sp_InPhieumuon_Sel							*/
/*==============================================================*/


create Procedure sp_InPhieumuon_Sel
@STT_PM varchar(10)
As
Select a.STT_PM, b.MADOCGIA, 
	    LTRIM(rtrim(b.HODOCGIA)) + ' ' + LTRIM(rtrim(b.TENDOCGIA)) as HOVATEN, 
		convert(varchar(25),b.NGAYSINH,103)as NGAYSINH, 
		case when b.GIOITINH = 1  then N'Nữ' else N'Nam' end as GIOITINH, 
		b.DIACHI, b.SCMND, b.DIENTHOAI, b.NGHENGHIEP, b.NOICONGTAC, 
		convert(varchar(25),a.NGAYMUON,103) as NGAYMUON, 
		convert(varchar(25),a.NGAYTRA,103) as NGAYTRA,
		d.MACUONSACH, e.TENDAUSACH 
		
From tb_Phieumuon a 
inner join tb_Thedocgia b on a.MADOCGIA=b.MADOCGIA
inner join tb_Duocmuon c on a.STT_PM=c.STT_PM
inner join tb_Cuonsach d on c.MACUONSACH=d.MACUONSACH
inner join tb_Dausach e on d.MADAUSACH=e.MADAUSACH
inner join tb_Duoctra f on a.STT_PM=f.STT_PM
where a.STT_PM = @STT_PM

Go


/*==============================================================*/
/* Procedure: (4) sp_InBienlaiphat_Sel							*/
/*==============================================================*/
Create Procedure sp_InBienlaiphat_Sel
@STT_BLP varchar(10)
As
select a.STT_BLP, sum(a.SOTIENPHAT) as TONGTIEN
into #temp
From tb_Bienlaiphat a 
inner join tb_Cuonsach b on a.MACUONSACH=b.MACUONSACH
inner join tb_Dausach c on b.MADAUSACH=c.MADAUSACH
inner join tb_Phieumuon d on a.STT_PM=d.STT_PM
inner join tb_Thedocgia e on d.MADOCGIA=e.MADOCGIA
where a.STT_BLP = @STT_BLP
group by a.STT_BLP
Select a.STT_BLP, a.LYDOPHAT, a.SOTIENPHAT, a.NGAYPHAT ,b.MACUONSACH, c.TENDAUSACH, 
		LTRIM(rtrim(e.HODOCGIA)) + ' ' + LTRIM(rtrim(e.TENDOCGIA)) as HOVATEN, 
		convert(varchar(25),e.NGAYSINH,103)as NGAYSINH, case when e.GIOITINH = 1  then N'Nữ' else N'Nam' end as GIOITINH, 
		e.DIACHI, e.SCMND, e.DIENTHOAI, e.NGHENGHIEP, e.NOICONGTAC, d.STT_PM, d.NGAYMUON, f.TONGTIEN
From tb_Bienlaiphat a 
inner join tb_Cuonsach b on a.MACUONSACH=b.MACUONSACH
inner join tb_Dausach c on b.MADAUSACH=c.MADAUSACH
inner join tb_Phieumuon d on a.STT_PM=d.STT_PM
inner join tb_Thedocgia e on d.MADOCGIA=e.MADOCGIA
inner join #temp f on a.STT_BLP = f.STT_BLP
where a.STT_BLP =@STT_BLP

Go

/*==============================================================*/
/* Procedure: (4) sp_SelectAll_Sachmuon							*/
/*==============================================================*/

Create Procedure sp_SelectAll_Sachmuon
As

Select c.STT_PM, b.MACUONSACH, d.TENDAUSACH, d.NOIDUNG_TT, d.LANXUATBAN, d.KICHTHUOC, 
	   d.SOTRANG, e.TENKESACH, f.TENTHELOAI, i.TENNHAXB, convert(varchar(25),c.NGAYMUON,103)as NGAYMUON

From tb_Duocmuon a 
		inner join tb_Cuonsach b on a.MACUONSACH=b.MACUONSACH 
		left join tb_Phieumuon c on a.STT_PM=c.STT_PM 
		inner join tb_Dausach d on b.MADAUSACH=d.MADAUSACH 
		inner join tb_Kesach e on b.MAKESACH=e.MAKESACH 
		inner join tb_Theloai f on d.MATHELOAI=f.MATHELOAI 
		inner join tb_Nhaxuatban i on d.MANHAXB=i.MANHAXB
		left join tb_Duoctra g on c.STT_PM=g.STT_PM 

where a.MACUONSACH not in (select MACUONSACH from tb_Duoctra where a.STT_PM = tb_Duoctra.STT_PM)

Go

/*==============================================================*/
/* Procedure: (4) sp_SelectAll_Thongkesach_TheoMaDauSach		*/
/*==============================================================*/

create Procedure sp_SelectAll_Thongkesach_TheoMaDauSach
@MADAUSACH Varchar(10)
As

select a.MACUONSACH, b.MADAUSACH, b.TENDAUSACH, b.NOIDUNG_TT, b.NGONNGU, 
	   b.KICHTHUOC, b.LANXUATBAN, b.NAMXUATBAN, b.SOTRANG, c.MAKESACH,
	   c.TENKESACH, d.MANHAXB, d.TENNHAXB, d.DIACHINHAXB, e.MATHELOAI, e.TENTHELOAI
from tb_Cuonsach a
	join tb_Dausach b on a.MADAUSACH=b.MADAUSACH
	join tb_Kesach c on a.MAKESACH= c.MAKESACH
	join tb_Nhaxuatban d on b.MANHAXB=d.MANHAXB
	join tb_Theloai e on b.MATHELOAI=e.MATHELOAI
	
where b.MADAUSACH=@MADAUSACH

Go

/*==============================================================*/
/* Procedure: (4) sp_SelectAll_Thongkesach_TheoMaKeSach			*/
/*==============================================================*/

create Procedure sp_SelectAll_Thongkesach_TheoMaKeSach
@MAKESACH Varchar(10)
As

select a.MACUONSACH, b.MADAUSACH, b.TENDAUSACH, b.NOIDUNG_TT, b.NGONNGU, 
	   b.KICHTHUOC, b.LANXUATBAN, b.NAMXUATBAN, b.SOTRANG, C.MAKESACH,
	   c.TENKESACH, d.MANHAXB, d.TENNHAXB, d.DIACHINHAXB, e.MATHELOAI, e.TENTHELOAI
from tb_Cuonsach a
	join tb_Dausach b on a.MADAUSACH=b.MADAUSACH
	join tb_Kesach c on a.MAKESACH= c.MAKESACH
	join tb_Nhaxuatban d on b.MANHAXB=d.MANHAXB
	join tb_Theloai e on b.MATHELOAI=e.MATHELOAI
	
where c.MAKESACH=@MAKESACH

Go

/*==============================================================*/
/* Procedure: (4) sp_SelectAll_Thongkesach_TheoMaTheLoai		*/
/*==============================================================*/

create Procedure sp_SelectAll_Thongkesach_TheoMaTheLoai
@MATHELOAI Varchar(10)
As

select a.MACUONSACH, b.MADAUSACH, b.TENDAUSACH, b.NOIDUNG_TT, b.NGONNGU, 
	   b.KICHTHUOC, b.LANXUATBAN, b.NAMXUATBAN, b.SOTRANG, C.MAKESACH,
	   c.TENKESACH, d.MANHAXB, d.TENNHAXB, d.DIACHINHAXB, e.MATHELOAI, e.TENTHELOAI
from tb_Cuonsach a
	join tb_Dausach b on a.MADAUSACH=b.MADAUSACH
	join tb_Kesach c on a.MAKESACH= c.MAKESACH
	join tb_Nhaxuatban d on b.MANHAXB=d.MANHAXB
	join tb_Theloai e on b.MATHELOAI=e.MATHELOAI
	
where e.MATHELOAI=@MATHELOAI

Go

/*==============================================================*/
/* Procedure: (4) sp_SelectAll_Thongkesach_TheoMaNhaXuatBan		*/
/*==============================================================*/

create Procedure sp_SelectAll_Thongkesach_TheoMaNhaXuatBan
@MANHAXB Varchar(10)
As

select a.MACUONSACH, b.MADAUSACH, b.TENDAUSACH, b.NOIDUNG_TT, b.NGONNGU, 
	   b.KICHTHUOC, b.LANXUATBAN, b.NAMXUATBAN, b.SOTRANG, C.MAKESACH,
	   c.TENKESACH, d.MANHAXB, d.TENNHAXB, d.DIACHINHAXB, e.MATHELOAI, e.TENTHELOAI
from tb_Cuonsach a
	join tb_Dausach b on a.MADAUSACH=b.MADAUSACH
	join tb_Kesach c on a.MAKESACH= c.MAKESACH
	join tb_Nhaxuatban d on b.MANHAXB=d.MANHAXB
	join tb_Theloai e on b.MATHELOAI=e.MATHELOAI
	
where d.MANHAXB=@MANHAXB

Go

/*==============================================================*/
/* Procedure: (4) sp_SelectAll_Thongkesach						*/
/*==============================================================*/

create Procedure sp_SelectAll_Thongkesach

As

select a.MACUONSACH, b.MADAUSACH, b.TENDAUSACH, b.NOIDUNG_TT, b.NGONNGU, 
	   b.KICHTHUOC, b.LANXUATBAN, b.NAMXUATBAN, b.SOTRANG, c.MAKESACH,
	   c.TENKESACH, d.MANHAXB, d.TENNHAXB, d.DIACHINHAXB, e.MATHELOAI, e.TENTHELOAI
from tb_Cuonsach a
	join tb_Dausach b on a.MADAUSACH=b.MADAUSACH
	join tb_Kesach c on a.MAKESACH= c.MAKESACH
	join tb_Nhaxuatban d on b.MANHAXB=d.MANHAXB
	join tb_Theloai e on b.MATHELOAI=e.MATHELOAI
	
Go

/*==============================================================*/
/* Procedure: (4) sp_SelectAll_Themsachmuon						*/
/*==============================================================*/
create Procedure sp_SelectAll_Themsachmuon
as
select a.MACUONSACH, e.TENDAUSACH
from tb_Cuonsach a
join tb_Cothoidiem b on a.MACUONSACH=b.MACUONSACH
join tb_Trangthai c on b.MATRANGTHAI=c.MATRANGTHAI
join tb_Thoidiem d on b.NGAY=d.NGAY
join tb_Dausach e on a.MADAUSACH=e.MADAUSACH
where c.MATRANGTHAI='MU'

Go

/*==============================================================*/
/* Procedure: (4) sp_SelectAll_Themsachmuon						*/
/*==============================================================*/
create Procedure sp_Select_Tungphieumuon
@STT_PM varchar(10)
as
select a.MACUONSACH
from tb_Duocmuon a 
join tb_Phieumuon b on a.STT_PM=b.STT_PM
where b.STT_PM=@STT_PM

Go
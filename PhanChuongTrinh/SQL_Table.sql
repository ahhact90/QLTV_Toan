/*==============================================================*/
/*			Author:		Đinh Ngọc Toàn							*/
/*			Email:												*/
/*			Phone:		01674 615 128							*/
/*			Create:		01/03/2014 08:00 AM						*/
/*==============================================================*/

/*==============================================================*/
						-- Create Database --

	Use Master;

							If Exists(Select * From SysDatabases Where Name = 'QUANLYTHUVIEN')
								Drop Database QUANLYTHUVIEN;

							Create Database QUANLYTHUVIEN
								Collate Vietnamese_Ci_Ai;
							
/*==============================================================*/

Use QUANLYTHUVIEN;

Set Dateformat Dmy
Go

Use QUANLYTHUVIEN;
Go

/*==============================================================*/
						-- Create Tables --


/*==============================================================*/
/* Table: (1)Tac gia: Danh muc Tac gia                          */
/*==============================================================*/

Create table tb_Tacgia
(
	MATACGIA			varchar(10)	,							-- Mã tác giả 
	BUTDANH				nvarchar(50)		null,				-- Bút danh
	HOTACGIA			nvarchar(50)	    null,				-- Họ tác giả
	TENTACGIA			nvarchar(10)		null,				-- Tên tác giả
	GIOITINH			bit										-- Giới tính
	Constraint PK_Tacgia Primary Key(MATACGIA)					-- Khóa chính
)
Go

/*==============================================================*/
/* Table: (2)Loai đọc giả: Danh mục loại đọc giả                */
/*==============================================================*/

Create table tb_Loaidocgia
(
	MALOAIDG			varchar(10)	,							-- Mã loại đọc giả
	DOITUONG			nvarchar(100)   not null,				-- Đối tượng
	SONGAYMUON			int				not null,				-- Số ngày mượn sách
	Constraint PK_Loaidocgia Primary Key(MALOAIDG),				-- Khóa chính
	Constraint CK_Loaidocgia_Songaymuon CHECK(SONGAYMUON > 0 )	-- Ràng buộc điều kiện về số ngày mượn
)
Go
/*==============================================================*/
/* Table: (3)Loai nhà xuất bản: Danh mục nhà xuất bản           */
/*==============================================================*/

Create table tb_Nhaxuatban
(
	MANHAXB			varchar(10)	,								-- Mã nhà xuất bản
	TENNHAXB		nvarchar(50)				    not null,	-- Tên nhà xuất bản
	DIACHINHAXB		nvarchar(200)					not null,	-- Địa chỉ nhà xuất bản
	Constraint PK_Nhaxuatban Primary Key(MANHAXB)				-- Khóa chính
)
Go
/*==============================================================*/
/* Table: (4) Thể loại: Danh mục thể loại				        */
/*==============================================================*/

Create table tb_Theloai
(
	MATHELOAI			varchar(10)	,								-- Mã thể loại sách
	TENTHELOAI			nvarchar(50)				not null,		-- Tên thể loại sách
	Constraint PK_Theloai Primary Key(MATHELOAI)					-- Khóa chính
)
Go

/*==============================================================*/
/* Table: (5) Kệ sách: Danh mục kệ sách				            */
/*==============================================================*/

Create table tb_Kesach
(
	MAKESACH			varchar(10)	,								-- Mã kệ sách
	TENKESACH			nvarchar(50)				not null,		-- Tên kệ sách
	Constraint PK_Kesach Primary Key(MAKESACH)						-- Khóa chính
)
Go
/*==============================================================*/
/* Table: (6)Đầu sách: Danh mục đầu sách				        */
/*==============================================================*/

Create table tb_Dausach
(
	MADAUSACH			varchar(10),							-- Mã đầu sách
	TENDAUSACH			nvarchar(50)	not null,				-- Tên đầu sách
	NOIDUNG_TT			nvarchar(200)	not null,				-- Nội dung tóm tắt
	NGONNGU				nvarchar(50)	not null,				-- Ngôn ngữ
	NAMXUATBAN			datetime		not null,				-- Năm xuất bản
	LANXUATBAN			int				not null,				-- Lần xuất bản
	KICHTHUOC			nvarchar(50)	not null,				-- Kích thước
	SOTRANG				int				not null,				-- Số trang
	MATHELOAI			varchar(10)		not null,				-- Mã thể loại (khóa ngoại)
	MANHAXB				varchar(10)		not null,				-- Mã nhà xuất bản (khóa ngoại)
	Constraint PK_Dausach Primary Key(MADAUSACH),				-- Khóa chính
	Constraint FK_Dausach_MATHELOAI Foreign Key(MATHELOAI) References tb_Theloai(MATHELOAI),
	Constraint FK_Dausach_MANHAXB Foreign Key(MANHAXB) References tb_Nhaxuatban(MANHAXB),
  --Constraint CK_Dausach_NAMXUATBAN CHECK(	year(NAMXUATBAN) > year(getdate())),
	Constraint CK_Dausach_LANXUATBAN CHECK(LANXUATBAN > 0),
	Constraint CK_Dausach_SOTRANG CHECK(SOTRANG>0)
)
Go

/*==============================================================*/
/* Table: (7)Thẻ đọc giả: Danh mục thẻ đọc giả		            */
/*==============================================================*/

Create table tb_Thedocgia
(
	MADOCGIA			varchar(10),						-- Mã đọc giả
	HODOCGIA			nvarchar(50)		not null,		-- Họ đọc giả
	TENDOCGIA			nvarchar(50)		not null,		-- Tên đọc giả
	NGAYSINH			DateTime			not null,		-- Ngày sinh của đọc giả
	GIOITINH			bit					not null,		-- Giới tính của đọc giả
	SCMND				nvarchar(20)		not null,		-- Số chứng minh nhân dân của đọc giả
	DIACHI				nvarchar(200)		not null,		-- Địa chỉ của đọc giả
	DIENTHOAI			nvarchar(12)		not null,		-- Số điện thoại của đọc giả
	NGHENGHIEP			nvarchar(100)		not null,		-- Nghề nghiệp của đọc giả
	NOICONGTAC			nvarchar(100)		not null,		-- Nơi công tác của đọc giả
	NGAYBATDAU			datetime			not null,		-- Ngày bắt đầu hiệu lực thẻ
	NGAYHETHAN			datetime			not null,		-- Ngày hết hạn sử dụng thẻ
	MALOAIDG			varchar(10) 		not null,		-- Mã loại đọc giả (khóa ngoại)
	Constraint PK_MADOCGIA Primary Key(MADOCGIA),		-- Khóa chính
	Constraint FK_Thedocgia_MALOAIDG Foreign key(MALOAIDG) references tb_Loaidocgia(MALOAIDG), 
	Constraint CK_Thedocgia_NGAYSINH CHECK(NGAYSINH <= getDate()),
	Constraint UNIQUE_Thedocgia_DIENTHOAI UNIQUE(DIENTHOAI),
	Constraint UNIQUE_Thedocgia_SCMND UNIQUE(SCMND)
	
)
Go

/*==============================================================*/
/* Table: (8)Cuốn sách: Danh mục cuốn sách					    */
/*==============================================================*/

Create table tb_Cuonsach
(
	MACUONSACH			varchar(10),							-- Mã cuốn sách 
	MADAUSACH			varchar(10)		not null,				-- Mã đầu sách (khóa ngoại)
	MAKESACH			varchar(10)		not null,				-- Mã kệ sách (khóa ngoại)
	Constraint PK_MACUONSACH Primary Key(MACUONSACH),		-- Khóa chính
	Constraint FK_Cuonsach_MADAUSACH Foreign Key(MADAUSACH) References tb_Dausach(MADAUSACH),
	Constraint FK_Cuonsach_MAKESACH Foreign Key(MAKESACH) References tb_Kesach(MAKESACH)
)
Go



/*==============================================================*/
/* Table: (10)Trạng thái: Danh mục trạng thái				    */
/*==============================================================*/

Create table tb_Trangthai
(
	MATRANGTHAI			varchar(10),							-- Mã trạng thái
	TENTRANGTHAI		nvarchar(50)		not null,			-- Mã trạng thái
	Constraint PK_MATRANGTHAI Primary Key(MATRANGTHAI)		-- Khóa chính
)
Go

/*==============================================================*/
/* Table: (11)Thời điểm: Danh mục thời điểm					    */
/*==============================================================*/

Create table tb_Thoidiem
(
	NGAY		datetime,								-- Ngày
	Constraint PK_NGAY Primary Key(NGAY)			-- Khóa chính
)
Go

/*==============================================================*/
/* Table: (12)Phiếu mượn: Danh mục phiếu mượn				    */
/*==============================================================*/

Create table tb_Phieumuon
(
	STT_PM			varchar(10),						-- Số thứ tự phiếu mượn
	NGAYMUON		datetime		not null,			-- Ngày mượn
	NGAYTRA			datetime		not null,			-- Ngày trả
	MADOCGIA		varchar(10)		not null,			-- Mã đọc giả (khóa ngoại)
	Constraint PK_STT_PM Primary Key(STT_PM),			-- Khóa chính
	Constraint FK_Phieumuon_MADOCGIA foreign key(MADOCGIA) references tb_Thedocgia(MADOCGIA)
)
Go

/*==============================================================*/
/* Table: (9)Biên lai phạt: Danh mục biên lai phạt			    */
/*==============================================================*/

Create table tb_Bienlaiphat
(
	STT_BLP				varchar(10),							-- Số thứ tự biên lai phạt
	LYDOPHAT			nvarchar(100)		 null,				-- Lý do phạt
	SOTIENPHAT			int					 null,				-- Số tiền phạt
	NGAYPHAT			datetime			 null,				-- Ngày lập biên lai phạt
	MACUONSACH			varchar(10)			 null,				-- Mã cuốn sách (khóa ngoại)
	STT_PM				varchar(10)			 null,				-- Số thứ tự phiếu mượn (khóa ngoại)
	Constraint PK_STT_BLP Primary Key(STT_BLP),					-- Khóa chính
	Constraint FK_Bienlaiphat_MACUONSACH Foreign Key(MACUONSACH) References tb_Cuonsach(MACUONSACH),
	Constraint FK_Bienlaiphat_STT_PM Foreign Key(STT_PM) References tb_Phieumuon(STT_PM),
	Constraint CK_Bienlaiphat_NGAYPHAT check(NGAYPHAT<=getdate()),
	Constraint CK_Bienlaiphat_SOTIENPHAT check(SOTIENPHAT>0)
)
Go

/*==============================================================*/
/* Table: (13)Được mượn: Danh mục sách được mượn			    */
/*==============================================================*/

Create table tb_Duocmuon
(
	STT_PM				varchar(10)			not null,				-- Số thứ tự phiếu mượn (khóa ngoại)
	MACUONSACH			varchar(10)			not null,				-- Mã cuốn sách (khóa ngoại)
	Constraint FK_Duocmuon_STT_PM Foreign Key(STT_PM) References tb_Phieumuon(STT_PM),
	Constraint FK_Duocmuon_MACUONSACH Foreign Key(MACUONSACH) References tb_Cuonsach(MACUONSACH)
)
Go

/*==============================================================*/
/* Table: (14)Được trả: Danh mục sách được trả					*/
/*==============================================================*/

Create table tb_Duoctra
(
	STT_PM				varchar(10)			not null,				-- Số thứ tự phiếu mượn (khóa ngoại)
	MACUONSACH			varchar(10)			not null,				-- Mã cuốn sách (khóa ngoại)
	NGAYTRA				datetime			not null,				-- Ngày trả sách
	TINHTRANGSACH		nvarchar(50)		not null,				-- Tinh trạng sách được trả
	Constraint FK_Duoctra_STT_PM Foreign Key(STT_PM) References tb_Phieumuon(STT_PM),
	Constraint FK_Duoctra_MACUONSACH Foreign Key(MACUONSACH) References tb_Cuonsach(MACUONSACH)
)
Go

/*==============================================================*/
/* Table: (15)Cogiahan: Danh mục sách có gia hạn thêm ngày mượn */
/*==============================================================*/

Create table tb_Cogiahan
(
	STT_PM				varchar(10)					not null,				-- Số thứ tự phiếu mượn (khóa ngoại)
	MACUONSACH			varchar(10)			not null,				-- Mã cuốn sách (khóa ngoại)
	NGAY				datetime			not null,				-- Ngày (khóa ngoại)
	LANGIAHAN			int					not null,				-- Lần gian hạn thêm ngày mượn
	Constraint FK_Cogiahan_STT_PM Foreign Key(STT_PM) References tb_Phieumuon(STT_PM),
	Constraint FK_Cogiahan_MACUONSACH Foreign Key(MACUONSACH) References tb_Cuonsach(MACUONSACH),
	Constraint FK_Cogiahan_NGAY Foreign Key(NGAY) References tb_Thoidiem(NGAY),
	constraint CK_Cogiahan_LANGIAHAN Check(LANGIAHAN>=0)
)
Go

/*===========================================================================================*/
/* Table: (16)Có thời điểm: Danh mục thay đổi trạng thái của cuốn sách theo thời gian        */
/*===========================================================================================*/

Create table tb_Cothoidiem
(
	MATRANGTHAI			varchar(10)			not null,				-- Mã trạng thái (khóa ngoại)
	MACUONSACH			varchar(10)			not null,				-- Mã cuốn sách (khóa ngoại)
	NGAY				datetime			not null,				-- Ngày (khóa ngoại)
	Constraint FK_Cothoidiem_MATRANGTHAI Foreign Key(MATRANGTHAI) References tb_Trangthai(MATRANGTHAI),
	Constraint FK_Cothoidiem_MACUONSACH Foreign Key(MACUONSACH) References tb_Cuonsach(MACUONSACH),
	Constraint FK_Cothoidiem_NGAY Foreign Key(NGAY) References tb_Thoidiem(NGAY)
)
Go

/*==============================================================*/
/* Table: (17)Của tác giả: Danh mục đầu sách của tác giả	    */
/*==============================================================*/

Create table tb_Cuatacgia
(
	STT					int	,										-- Số thứ tự của tác giả				
	MATACGIA			varchar(10)			not null,				-- Mã tác giả (khóa ngoại)
	MADAUSACH			varchar(10)			not null,				-- Mã đầu sách (khóa ngoại)
	--Constraint PK_Cuatacgia_Id primary key(STT),
	Constraint FK_Cuatacgia_MATACGIA Foreign Key(MATACGIA) References tb_Tacgia(MATACGIA),
	Constraint FK_Cuatacgia_MADAUSACH Foreign Key(MADAUSACH) References tb_Dausach(MADAUSACH)
)
Go


/*==============================================================*/
/* Table: (18)Vaitro: Vai trò	    						    */
/*==============================================================*/

Create table tb_Vaitro
(
	Id				bigint		identity(1,1)		not null,
	Ten				nvarchar(20)		not null,				-- Tên vai trò
	Mota			nvarchar(100)		not null,				-- Mô tả vai trò
	Constraint PK_Vaitro_Id Primary Key(Id),					-- Khóa chính
	Constraint UNIQUE_Vaitro_Ten UNIQUE(Ten)
)
Go

/*==============================================================*/
/* Table: (19)User: User   									    */
/*==============================================================*/

Create table tb_User
(
	Id				bigint		identity(1,1)		not null,
	Ten				nvarchar(50)		not null,				-- Tên thành viên
	Matkhau			varchar(50)			not null,				-- Mật khẩu thành viên
	Hoten			nvarchar(50)		not null,				-- Họ tên thành viên
	VaitroID		bigint				not null,				-- Vai trò thành viên trong hệ thống
	Constraint PK_User_Id Primary Key(Id),					-- Khóa chính
	Constraint FK_User_VaitroID Foreign Key(VaitroID) References tb_Vaitro(Id),
	Constraint UNIQUE_User_Ten UNIQUE(Ten)
)
Go


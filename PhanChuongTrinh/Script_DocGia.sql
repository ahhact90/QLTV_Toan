


-- Store Tách Tên và Họ của Đọc giả
alter procedure sp_Update_HoVaTen_DG @MADOCGIA varchar(10), @HOVATEN nvarchar(100)

as
	begin
		
		declare @iDoc int

		set @iDoc = len(@HOVATEN)

		update tb_Thedocgia 
				set HODOCGIA = substring(@HOVATEN, 0, @iDoc - len(Reverse(substring(Reverse(@HOVATEN), 0, Patindex('% %',Reverse(@HOVATEN))))) )
					, TENDOCGIA  = Reverse(substring(Reverse(@HOVATEN), 0, Patindex('% %',Reverse(@HOVATEN))) )
				where MADOCGIA = @MADOCGIA
	end


-- Sửa lại Store sp_Insert_Tacgia 
 
alter Procedure sp_Insert_Thedocgia
	@MADOCGIA varchar(10), @HODOCGIA nvarchar(100), @NGAYSINH datetime, @GIOITINH bit, @SCMND nvarchar(20), @DIACHI nvarchar(200), @DIENTHOAI nvarchar(12), @NGHENGHIEP nvarchar(100), @NOICONGTAC nvarchar(100), @NGAYBATDAU datetime, @NGAYHETHAN datetime, @MALOAIDG varchar(10)
As
	begin 

		Insert into tb_Thedocgia(MADOCGIA, NGAYSINH, GIOITINH, SCMND, DIACHI, DIENTHOAI, NGHENGHIEP, NOICONGTAC, NGAYBATDAU, NGAYHETHAN, MALOAIDG) 
		values(@MADOCGIA, @NGAYSINH, @GIOITINH, @SCMND, @DIACHI, @DIENTHOAI, @NGHENGHIEP, @NOICONGTAC, @NGAYBATDAU, @NGAYHETHAN, @MALOAIDG)
		exec sp_Update_HoVaTen_DG @MADOCGIA, @HODOCGIA
	end

----
alter Procedure sp_Update_Thedocgia

	@MADOCGIA varchar(10), @HODOCGIA nvarchar(50), @NGAYSINH datetime, @GIOITINH bit, @SCMND nvarchar(20), @DIACHI nvarchar(200), @DIENTHOAI nvarchar(12), @NGHENGHIEP nvarchar(100), @NOICONGTAC nvarchar(100), @NGAYBATDAU datetime, @NGAYHETHAN datetime, @MALOAIDG varchar(10)

As
	begin
		Update tb_Thedocgia Set MADOCGIA=@MADOCGIA, NGAYSINH=@NGAYSINH, GIOITINH=@GIOITINH, SCMND=@SCMND, DIACHI=@DIACHI, DIENTHOAI=@DIENTHOAI, NGHENGHIEP=@NGHENGHIEP, NOICONGTAC=@NOICONGTAC, NGAYBATDAU=@NGAYBATDAU, NGAYHETHAN=@NGAYHETHAN, MALOAIDG=@MALOAIDG Where MADOCGIA=@MADOCGIA
		exec sp_Update_HoVaTen @MADOCGIA, @HODOCGIA
	end

----
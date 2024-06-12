/* sp_rename 'ThongTinHoSoGV.NSPhuong', 'NSTinh', 'COLUMN';*/
/*CREATE PROC proc_login
@user nvarchar(30),
/*@LoaiTK nvarchar(30),*/
@pass nvarchar(30)
AS
BEGIN
	SELECT * FROM Taikhoan WHERE TenTK = @user AND Matkhau = @pass  /*AND LoaiTK = @LoaiTK*/
END*/



/*DROP PROC proc_login*/

/*CREATE PROC proc_LoaiTK
@user nvarchar(30),
@pass nvarchar(30)
AS
BEGIN
	SELECT LoaiTK FROM TaiKhoan WHERE TenTK = @user AND Matkhau = @pass
END

DROP PROC proc_LoaiTK

CREATE PROC proc_Matkhau
@user nvarchar(30),
@Email nvarchar(50)
AS 
Begin		
	Select Matkhau From Taikhoan where TenTK = @user AND Email = @Email
END

CREATE PROC GetAllAccount
AS 
Begin		
	Select ThongTinHoSoGV.MaGV as 'Mã Giảng Viên', ThongTinHoSoGV.HoTen as 'Họ Và Tên', Matkhau as 'Mật Khẩu' From TaiKhoan, ThongTinHoSoGV Where ThongTinHoSoGV.MaGV = TaiKhoan.MaGV
END

CREATE PROC GetAllBH
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', BHXH as 'BHXH', TyLeBHXH as 'Tỷ lệ BHXH', BHTN as 'BHTN', TyLeBHTN as 'Tỷ lệ BHTN',  BHYT as 'BHYT', TyLeBHYT as 'Tỷ lệ BHYT'  From BaoHiem, ThongTinHoSoGV Where ThongTinHoSoGV.MaGV = BaoHiem.MaGV
END */

/*CREATE PROC GetAllNghiHuu
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', DonViTiepNhan as 'Đơn vị tiếp nhận', NgayNghiHuu as 'Ngày nghỉ chính thức' From NghiHuu, ThongTinHoSoGV Where ThongTinHoSoGV.MaGV = NghiHuu.MaGV
END*/

/*CREATE PROC GetAllDangDoan
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', ToChucDang as 'Tổ chức', ChucVu as 'Chức vụ', DangDoan.NgayVao as 'Ngày vào', NgayChinhThuc as 'Ngày chính thức' From CongTacDangDoan, ThongTinHoSoGV, DangDoan Where ThongTinHoSoGV.MaGV = DangDoan.MaNS and ThongTinHoSoGV.MaGV = CongTacDangDoan.MaGV
END*/

/*CREATE PROC GetAllKTKL
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', HinhThuc as 'Hình thức', LyDo as 'Lý do', Nam as 'Năm' From KTvaKL,ThongTinHoSoGV Where ThongTinHoSoGV.MaGV =KTvaKL.MaGV
END*/

/*CREATE PROC GetAllCDH
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', CoQuanQD as 'Cơ sở ĐT', HinhThuc as 'Hình thức', ChuongTrinhDT as 'Chương trình ĐT', NienKhoa as 'Niên khóa', LoaiTrinhDo as 'Loại trình độ', ChuyenNganh as 'Chuyên ngành' From CuDiHoc,ThongTinHoSoGV Where ThongTinHoSoGV.MaGV =CuDiHoc.MaGV
END*/

/*CREATE PROC GetAllBCHD
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', LoaiHinh as 'Loại hình', NgayTD as 'Ngày tuyển dụng', NgayKT as 'Ngày kết thúc' From BCHD,ThongTinHoSoGV Where ThongTinHoSoGV.MaGV =BCHD.MaGV
END*/

/*CREATE PROC GetAllBietPhai
AS 
Begin		
	Select ThongTinHoSoGV.HoTen as 'Họ Và Tên', ChucVu as 'Chức vụ', PhongBan as 'Phòng ban', NgayBD as 'Ngày bắt đầu', NgayKT as 'Ngày kết thúc', ChucVuBanDau as 'Chức vụ ban đầu', HinhThuc as 'Hình thức' From BietPhai,ThongTinHoSoGV Where ThongTinHoSoGV.MaGV =BietPhai.MaGV
END*/

CREATE PROC GetAllAccount
AS 
Begin		
	Select TaiKhoan.MaGV as 'Mã Giảng Viên', ThongTinHoSoGV.HoTen as 'Họ Và Tên', MatKhau as 'Mật Khẩu' From TaiKhoan, ThongTinHoSoGV Where ThongTinHoSoGV.MaGV = TaiKhoan.MaGV
END

DROP PROC GetAllAccount
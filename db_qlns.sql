
--use master
--go
--DROP DATABASE qlns;
--go
--CREATE DATABASE qlns;
--go
use qlns
go

CREATE TABLE cv_bieu_mau(
 ID int NOT NULL primary key Identity,
 MA_BIEU_MAU nvarchar(50) NOT NULL,
 MO_TA nvarchar(200) DEFAULT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NOI_DUNG ntext NULL
) ;


CREATE TABLE ns_trang_thai_lam_viec(
 ID int NOT NULL primary key Identity,
 MA_TT_LAM_VIEC nvarchar(50) NOT NULL,
 TEN_TT_LAM_VIEC nvarchar(100) NOT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL
) ;

--
-- Dumping data for table ns_trang_thai_lam_viec 
--

INSERT INTO ns_trang_thai_lam_viec( MA_TT_LAM_VIEC , TEN_TT_LAM_VIEC , NGAY_TAO , NGUOI_TAO , NGAY_CAP_NHAT , NGUOI_CAP_NHAT ) VALUES
( 'DLV', N'Đang làm việc', NULL, NULL, NULL, NULL),
( 'DCCT', N'Đã chuyển công tác', NULL, NULL, NULL, NULL),
( 'DNV', N'Đã Nghỉ việc', NULL, NULL, NULL, NULL);

--
-- Table structure for table ns_qua_trinh_cong_tac 
--
-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Table structure for table ns_chuc_danh 
--

CREATE TABLE ns_chuc_danh(
 MA_CHUC_DANH nvarchar(50) NOT NULL primary key,
 TEN_CHUC_DANH nvarchar(200) DEFAULT NULL,
 HE_SO float DEFAULT NULL,
 HE_SO_TRACH_NHIEM float DEFAULT NULL,
 TOEIC int DEFAULT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL
) ;

--
-- Dumping data for table ns_chuc_danh 
--
-------------------------------------------------------

--
-- Table structure for table ns_chuyen_nganh 
--

CREATE TABLE ns_chuyen_nganh(
 MA_CHUYEN_NGANH nvarchar(50) NOT NULL primary key,
 TEN_CHUYEN_NGANH nvarchar(100) DEFAULT NULL,
 LA_CNTT int DEFAULT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table ns_don_vi 
--

CREATE TABLE ns_don_vi(
 MA_DON_VI nvarchar(50) NOT NULL primary key,
 TEN_DON_VI nvarchar(50) NOT NULL,
 NGAY_THANH_LAP date DEFAULT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL
) ;

--
-- Dumping data for table ns_don_vi 
--

INSERT INTO ns_don_vi( MA_DON_VI , TEN_DON_VI , NGAY_THANH_LAP , NGAY_TAO , NGUOI_TAO , NGAY_CAP_NHAT , NGUOI_CAP_NHAT ) VALUES
('BLĐ', N'Ban lãnh đạo công ty', NULL, NULL, NULL, NULL, NULL),
('CNMN.1', N'Chi nhánh miền nam', NULL, NULL, NULL, NULL, NULL),
('CNMN.2', N'Chi nhánh miền nam 2', NULL, NULL, NULL, NULL, NULL),
('DVKH', N'Phòng dịch vụ khách hàng', NULL, NULL, NULL, NULL, NULL),
('ĐBDLTBHK', N'Đảm bảo dữ liệu TBHK', NULL, NULL, NULL, NULL, NULL),
('FFP', N'Tổ FFP', NULL, NULL, NULL, NULL, NULL),
('GPPM', N'Phòng giải pháp phần mềm', NULL, NULL, NULL, NULL, NULL),
('HC-NS', N'Phòng hành chính nhân sự', NULL, NULL, NULL, NULL, NULL),
('HTTT', N'Phòng Hạ tấng CNTT', NULL, NULL, NULL, NULL, NULL),
('KD', N'Phòng kinh doanh', NULL, NULL, NULL, NULL, NULL),
('KH-TH', N'Phòng kế hoạch- tổng hợp', NULL, NULL, NULL, NULL, NULL),
('KSDTVCHK', N'Phòng KS DT Vận chuyển hành khách', NULL, NULL, NULL, NULL, NULL),
('KSHHDV', N'Phòng Khảo sát hàng hóa dịch vụ', NULL, NULL, NULL, NULL, NULL),
('KSTBHK', N'Phòng KS thu bán HK', NULL, NULL, NULL, NULL, NULL),
('KSTTVCHKQT', N'Phòng Khảo sát thanh toán vận chuyển hành khách QT', NULL, NULL, NULL, NULL, NULL),
('TC-KT', N'Phòng tài chính kế toán', NULL, NULL, NULL, NULL, NULL),
('TM', N'Phòng Thương mại', NULL, NULL, NULL, NULL, NULL),
('TTXLCT.1', N'Trung tâm xử lý chứng từ 1', NULL, NULL, NULL, NULL, NULL),
('TTXLCT.2', N'Tổ xử lý chứng từ 2', NULL, NULL, NULL, NULL, NULL),
('TTXLCT.3', N'Tổ xử lý chứng từ 3', NULL, NULL, NULL, NULL, NULL),
('TTXLCT.4', N'Tổ xử lý chứng từ 4', NULL, NULL, NULL, NULL, NULL),
('TTXLCT.5', N'Tổ xử lý chứng từ 5', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table ns_hinh_thuc_khen_thuong 
--

CREATE TABLE ns_ht_khen_thuong(
 MA_HT_KHEN_THUONG nvarchar(50) NOT NULL primary key,
 TEN_HT_KHEN_THUONG nvarchar(100) DEFAULT NULL,
 HE_SO int DEFAULT NULL,
 NGAY_TAO date DEFAULT NULL,
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT date DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL
) ;

--
-- Dumping data for table ns_hinh_thuc_khen_thuong 
--

INSERT INTO ns_ht_khen_thuong( MA_HT_KHEN_THUONG , TEN_HT_KHEN_THUONG , HE_SO , NGAY_TAO , NGUOI_TAO , NGAY_CAP_NHAT , NGUOI_CAP_NHAT ) VALUES
('LDTT', N'Lao động tiên tiến', 0, NULL, NULL, NULL, NULL),
('LDXS', N'Lao động xuất sắc', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table ns_hinh_thuc_ky_luat 
--

CREATE TABLE ns_ht_ky_luat(
 MA_HT_KY_LUAT nvarchar(50) NOT NULL primary key,
 TEN_HT_KY_LUAT nvarchar(100) NOT NULL,
 HE_SO int DEFAULT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL
) ;

--
-- Table structure for table ns_loai_hop_dong 
--

CREATE TABLE ns_loai_hop_dong(
 ID int NOT NULL primary key Identity,
 MA_HOP_DONG nvarchar(50) NOT NULL,
 TEN_HOP_DONG nvarchar(100) NOT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL
) ;

--
-- Dumping data for table ns_loai_hop_dong 
--

INSERT INTO ns_loai_hop_dong( MA_HOP_DONG , TEN_HOP_DONG , NGAY_TAO , NGUOI_TAO , NGAY_CAP_NHAT , NGUOI_CAP_NHAT ) VALUES
( '01', N'Công nhật', NULL, NULL, NULL, NULL),
( '03', N'Thử việc', NULL, NULL, NULL, NULL),
('04', N'Xác định thời hạn 12 tháng', NULL, NULL, NULL, NULL),
('05', N'Xác định thời hạn 36 tháng', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table ns_nhan_vien 
--

CREATE TABLE ns_nhan_vien(
 ID int NOT NULL primary key Identity,
 MA_NHAN_VIEN int NOT NULL,
 TEN_NHAN_VIEN nvarchar(50) NOT NULL,
 MA_DON_VI nvarchar(50) NOT NULL references ns_don_vi(Ma_DON_VI),
 MA_CHUC_DANH nvarchar(50) DEFAULT NULL references ns_chuc_danh(MA_CHUC_DANH),
 MA_CHUYEN_NGANH nvarchar(50) DEFAULT NULL references ns_chuyen_nganh(MA_CHUYEN_NGANH),
 CHUNG_CHI ntext NULL,
 TRINH_DO nvarchar(50) DEFAULT NULL,
 username nvarchar(100) DEFAULT NULL,
 password nvarchar(100) DEFAULT NULL,
 NGAY_SINH datetime DEFAULT NULL,
 GIOI_TINH nvarchar(3) DEFAULT NULL,
 ANH ntext NULL ,
 DIA_CHI ntext NULL,
 SO_DIEN_THOAI nvarchar(50) DEFAULT NULL,
 DI_DONG nvarchar(50) DEFAULT NULL,
 DAN_TOC nvarchar(50) DEFAULT NULL,
 SO_THE_BHYT nvarchar(50) DEFAULT NULL,
 SO_XO_BHXH nvarchar(50) DEFAULT NULL,
 SO_THE_NGANH nvarchar(50) DEFAULT NULL,
 EMAIL nvarchar(50) DEFAULT NULL,
 SO_CMND nvarchar(50) DEFAULT NULL,
 NGAY_VAO_DANG datetime DEFAULT NULL,
 CHUC_VU_DANG nvarchar(50) DEFAULT NULL,
 NGAY_TINH_THAM_NIEN datetime DEFAULT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL,
 IS_ACTIVE int NOT NULL,
 IS_DELETE int NOT NULL
) ;

--
-- Dumping data for table ns_nhan_vien 
--

INSERT INTO ns_nhan_vien( MA_NHAN_VIEN , TEN_NHAN_VIEN , MA_DON_VI , MA_CHUC_DANH , MA_CHUYEN_NGANH , CHUNG_CHI , TRINH_DO , username , password , NGAY_SINH , GIOI_TINH , ANH , DIA_CHI , SO_DIEN_THOAI , DI_DONG , DAN_TOC , SO_THE_BHYT , SO_XO_BHXH , SO_THE_NGANH , EMAIL , SO_CMND , NGAY_VAO_DANG , CHUC_VU_DANG , NGAY_TINH_THAM_NIEN , NGAY_TAO , NGUOI_TAO , NGAY_CAP_NHAT , NGUOI_CAP_NHAT , IS_ACTIVE , IS_DELETE ) VALUES
( 2910, N'Dương Thế Vĩnh', 'GPPM', NULL, NULL, NULL, NULL, 'vinhdt.aits', '827ccb0eea8a706c4c34a16891f84e7b', '1995-10-29 00:00:00', 'Nam', NULL, 'hà Nội', NULL, NULL, NULL, NULL, NULL, NULL, 'vinhdt.aits@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------
-- --------------------------------------------------------

--
-- Table structure for table ns_hop_dong 
--

CREATE TABLE ns_hop_dong(
 ID int NOT NULL primary key Identity,
 NHAN_VIEN_ID int NOT NULL references ns_nhan_vien(ID),
 LOAI_HOP_DONG_ID int NOT NULL references ns_loai_hop_dong(ID),
 SO_HOP_DONG nvarchar(50) DEFAULT NULL,
 TU_NGAY datetime DEFAULT NULL,
 DEN_NGAY datetime DEFAULT NULL,
 SO_QUYET_DINH nvarchar(50) DEFAULT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL,
 ATTACH_FILE ntext ,
 NGAY_KY datetime DEFAULT NULL,
 NGUOI_KY nvarchar(50) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table ns_khen_thuong 
--

CREATE TABLE ns_khen_thuong(
 ID int NOT NULL primary key Identity,
 HT_KHEN_THUONG nvarchar(50) NOT NULL references ns_ht_khen_thuong(MA_HT_KHEN_THUONG),
 NHAN_VIEN_ID int DEFAULT NULL references ns_nhan_vien(ID),
 NGAY_KHEN_THUONG datetime DEFAULT NULL,
 GHI_CHU ntext ,
 SO_QUYET_DINH nvarchar(50) DEFAULT NULL,
 ATTACH_FILE ntext ,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table ns_ky_luat 
--

CREATE TABLE ns_ky_luat(
 ID int NOT NULL primary key Identity,
 MA_HT_KY_LUAT nvarchar(50) NOT NULL references ns_ht_ky_luat(MA_HT_KY_LUAT),
 NHAN_VIEN_ID int NOT NULL references ns_nhan_vien(ID),
 NGAY_KY_LUAT datetime NOT NULL,
 GHI_CHU nvarchar(100) DEFAULT NULL,
 SO_QUYET_DINH nvarchar(50) DEFAULT NULL,
 ATTACH_FILE ntext ,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL
) ;



CREATE TABLE ns_qua_trinh_cong_tac(
 ID int NOT NULL primary key Identity,
 CHUC_DANH_ID nvarchar(50) DEFAULT NULL references ns_chuc_danh(MA_CHUC_DANH),
 DON_VI_ID nvarchar(50) DEFAULT NULL references ns_don_vi(MA_DON_VI),
 TRANG_THAI_LAM_VIEC_ID int  NULL references ns_trang_thai_lam_viec(ID),
 NHAN_VIEN_ID int  NULL references ns_nhan_vien(ID),
 TU_NGAY datetime  NULL,
 DEN_NGAY datetime DEFAULT NULL,
 GHI_CHU nvarchar(100) DEFAULT NULL,
 SO_QUYET_DINH nvarchar(50)  NULL,
 ATTACH_FILE ntext ,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL,
 HE_SO_BAO_HIEM decimal DEFAULT NULL,
 BANG_LUONG nvarchar(50) DEFAULT NULL,
 BAC_LUONG nvarchar(50) DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table ns_tai_nan_lao_dong 
--

CREATE TABLE ns_tai_nan_lao_dong(
 ID int NOT NULL primary key Identity,
 NHAN_VIEN_ID int NOT NULL references ns_nhan_vien(ID),
 NGAY_TAI_NAN datetime NOT NULL,
 LY_DO nvarchar(200) DEFAULT NULL,
 TY_LE_THUONG_TAT int DEFAULT NULL,
 GHI_CHU nvarchar(200) DEFAULT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table ns_than_nhan 
--

CREATE TABLE ns_than_nhan(
 ID int NOT NULL primary key Identity,
 NHAN_VIEN_ID int NOT NULL references ns_nhan_vien(ID),
 TEN_MOI_QUAN_HE nvarchar(50) NOT NULL,
 HO_TEN nvarchar(50) DEFAULT NULL,
 NGAY_SINH datetime DEFAULT NULL,
 DIA_CHI nvarchar(100) DEFAULT NULL,
 SO_DIEN_THOAI nvarchar(50) DEFAULT NULL,
 NGHE_NGHIEP nvarchar(50) DEFAULT NULL,
 GIAM_TRU nvarchar(10) DEFAULT NULL,
 GIAM_TU_NGAY datetime DEFAULT NULL,
 GIAM_DEN_NGAY datetime DEFAULT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table ns_trang_thai_lam_viec 
--

-- --------------------------------------------------------

--
-- Table structure for table qt_menus 
--

CREATE TABLE qt_menus(
 ID int NOT NULL primary key Identity,
 ID_PARENT int DEFAULT NULL,
 TIEU_DE nvarchar(100) NOT NULL,
 URL nvarchar(200) DEFAULT NULL,
 NGAY_TAO datetime DEFAULT getdate(),
 NGUOI_TAO int DEFAULT NULL,
 NGAY_CAP_NHAT datetime DEFAULT NULL,
 NGUOI_CAP_NHAT int DEFAULT NULL,
 STT int DEFAULT NULL,
 IsDeleted int NOT NULL
) ;

--
-- Dumping data for table qt_menus 
--

INSERT INTO qt_menus( ID_PARENT , TIEU_DE , URL , NGAY_TAO , NGUOI_TAO , NGAY_CAP_NHAT , NGUOI_CAP_NHAT , STT , IsDeleted ) VALUES
( 0, N'Quản lý nhân sự', '#', NULL, NULL, NULL, NULL, 1, 0),
( 1, N'Quản lý thông tin nhân viên', '/Modules/QuanLyNhanSu/FrmNhanVien.aspx', NULL, NULL, NULL, NULL, 1, 0),
( 1, N'Báo cáo nhân sự', '#', NULL, NULL, '2017-12-07 11:24:12', 1, 2, 0),
(1, N'Báo cáo thống kê lao động theo đơn vị', '/Modules/QuanLyNhanSu/BaoCao/Frm/frmBCTKDonVi.aspx', NULL, NULL, '2017-12-07 02:36:51', 1, 3, 0),
(0, N'Quản trị hệ thống', '#', NULL, NULL, NULL, NULL, 1, 0),
( 5, N'Menu chức năng', '/Modules/QuanTriHeThong/MenuChucNang.aspx', NULL, NULL, NULL, NULL, 2, 0),
( 5, N'Quản lý vai trò', '/Modules/QuanTriHeThong/QuanLyVaiTro.aspx', '2017-12-07 12:20:35', 1, '2017-12-13 14:17:55', 1, 3, 0),
( 5, N'Quản lý quyền truy cập menu', '/Modules/QuanTriHeThong/QuanLyQuyenTruyCapMenus.aspx', '2017-12-13 14:17:39', 1, '2017-12-13 14:18:17', 1, 1, 0),
( 1, N'Quản Lý đơn vị', '/Modules/QuanLyNhanSu/FrmKhaiBaoDonVi.aspx', '2017-12-13 14:23:09', 1, NULL, NULL, 4, 0),
( 1, N'Quản lý chức danh', '/Modules/QuanLyNhanSu/QuanLyChucDanh.aspx', '2017-12-13 14:39:18', 1, '2017-12-13 14:44:57', 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table qt_vai_tro 
--

CREATE TABLE qt_vai_tro(
 ID int NOT NULL primary key Identity,
 TEN_VAI_TRO nvarchar(50) DEFAULT NULL,
 MO_TA ntext NULL
) ;

--
-- Dumping data for table qt_vai_tro 
--

INSERT INTO qt_vai_tro( TEN_VAI_TRO , MO_TA ) VALUES
( N'Quản trị hệ thống', N'Đây là vai trò cao nhất trong hệ thống'),
( N'Kế toán', N'Bộ phận quản lý thanh toán lương'),
( N'Quản lý nhân sự', N'Bộ phận quản lý nhân sự'),
( N'Nhân viên', N'Quyền cho nhân viên');

-- --------------------------------------------------------

--
-- Table structure for table qt_vai_tro_menus 
--

CREATE TABLE qt_vai_tro_menus(
 ID int NOT NULL primary key Identity,
 ID_VAI_TRO int NOT NULL references qt_vai_tro(ID),
 ID_MENU int NOT NULL references qt_menus(ID)
) ;

--
-- Dumping data for table qt_vai_tro_menus 
--

INSERT INTO qt_vai_tro_menus( ID_VAI_TRO , ID_MENU ) VALUES
( 1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 9),
(1, 5),
(1, 6),
(1, 7),
( 1, 8),
( 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table qt_vai_tro_users 
--

CREATE TABLE qt_vai_tro_users(
 ID int NOT NULL primary key Identity,
 ID_NHAN_VIEN int NOT NULL references ns_nhan_vien(ID),
 ID_VAI_TRO int NOT NULL references qt_vai_tro(ID)
) ;

--
-- Dumping data for table qt_vai_tro_users 
--

INSERT INTO qt_vai_tro_users( ID_NHAN_VIEN , ID_VAI_TRO ) VALUES
( 1, 1);

-- --------------------------------------------------------


CREATE TABLE tl_che_do_bao_hiem(
 ID int NOT NULL primary key Identity,
 HE_SO_BAO_HIEM decimal DEFAULT NULL,
 BHXH_CTY decimal DEFAULT NULL,
 BHXH_NV decimal DEFAULT NULL,
 BHYT_CTY decimal DEFAULT NULL,
 BHYT_NV decimal DEFAULT NULL,
 BHTN_CTY decimal DEFAULT NULL,
 BHTN_NV decimal DEFAULT NULL,
 DOAN_PHI_CTY decimal DEFAULT NULL,
 DOAN_PHI_NV decimal DEFAULT NULL,
 TU_NGAY datetime DEFAULT getdate(),
 DEN_NGAY datetime DEFAULT NULL,
 GHI_CHU ntext ,
 NGUOI_NHAP int DEFAULT NULL,
 NGAY_NHAP datetime DEFAULT NULL,
 NGUOI_SUA int DEFAULT NULL,
 NGAY_SUA datetime DEFAULT NULL
) ;

--
-- Table structure for table tl_giam_tru_thue_tncn 
--

CREATE TABLE tl_giam_tru_thue_tncn(
 ID int NOT NULL primary key Identity,
 GIAM_TRU_CA_NHAN decimal DEFAULT NULL,
 GIAM_TRU_PHU_THUOC decimal DEFAULT NULL,
 TU_NGAY datetime DEFAULT getdate(),
 DEN_NGAY datetime DEFAULT NULL,
 GHI_CHU ntext ,
 NGUOI_NHAP int DEFAULT NULL,
 NGAY_NHAP datetime DEFAULT NULL,
 NGUOI_SUA int DEFAULT NULL,
 NGAY_SUA datetime DEFAULT NULL
) ;

CREATE TABLE tl_don_gia_san_luong(
 ID int NOT NULL primary key Identity,
 MA_SAN_PHAM nvarchar(200) NOT NULL,
 TEN_CONG_VIEC ntext NULL,
 HE_SO_CONG_VAO decimal DEFAULT NULL,
 SL_MUC_1 decimal DEFAULT NULL,
 SL_MUC_2 decimal DEFAULT NULL,
 DON_GIA_1 decimal DEFAULT NULL,
 DON_GIA_2 decimal DEFAULT NULL,
 DON_GIA_3 decimal DEFAULT NULL,
 TU_NGAY datetime DEFAULT getdate(),
 DEN_NGAY datetime DEFAULT NULL,
 GHI_CHU ntext ,
 NGUOI_NHAP int DEFAULT NULL,
 NGAY_NHAP datetime DEFAULT NULL,
 NGUOI_SUA int DEFAULT NULL,
 NGAY_SUA datetime DEFAULT NULL,
 MA_DON_VI nvarchar(50) DEFAULT NULL references ns_don_vi(MA_DON_VI)
) ;
-- --------------------------------------------------------
--
-- Table structure for table tl_don_gia_san_pham 
--
CREATE TABLE tl_don_gia_san_pham(
 ID int NOT NULL primary key Identity,
 DON_GIA_DU_AN decimal DEFAULT NULL,
 DON_GIA_BAO_TRI decimal DEFAULT NULL,
 TU_NGAY datetime DEFAULT getdate(),
 DEN_NGAY datetime DEFAULT NULL,
 TAI_LIEU ntext ,
 GHI_CHU ntext ,
 NGUOI_NHAP int DEFAULT NULL,
 NGAY_NHAP datetime DEFAULT NULL,
 NGUOI_SUA int DEFAULT NULL,
 NGAY_SUA datetime DEFAULT NULL
) ;
-- --------------------------------------------------------

--
-- Table structure for table tl_he_so_phu_cap 
--

CREATE TABLE tl_he_so_phu_cap(
 ID int NOT NULL primary key Identity,
 NOI_DUNG_PHU_CAP nvarchar(200) DEFAULT NULL,
 KY int DEFAULT NULL,
 NAM int DEFAULT NULL,
 HE_SO decimal DEFAULT NULL,
 GHI_CHU ntext ,
 NGAY_NHAP datetime DEFAULT NULL,
 NGUOI_NHAP int DEFAULT NULL,
 NGAY_SUA datetime DEFAULT NULL,
 NGUOI_SUA int DEFAULT NULL
) ;

CREATE TABLE tl_he_so_thuong(
 ID int NOT NULL primary key Identity,
 KY int DEFAULT NULL,
 NAM int DEFAULT NULL,
 TEN_HS_THUONG nvarchar(200) DEFAULT NULL,
 TIEN_THUONG decimal DEFAULT NULL,
 ID_NHAN_VIEN int DEFAULT NULL references ns_nhan_vien(ID),
 GHI_CHU ntext ,
 NGAY_NHAP datetime DEFAULT NULL,
 NGUOI_NHAP int DEFAULT NULL,
 NGAY_SUA datetime DEFAULT NULL,
 NGUOI_SUA int DEFAULT NULL
) ;


--
-- Table structure for table tl_ngay_cong_he_so_thang 
--

CREATE TABLE tl_ngay_cong(
 ID int NOT NULL primary key Identity,
 KY int DEFAULT NULL,
 NAM int DEFAULT NULL,
 ID_NHAN_VIEN int DEFAULT NULL references ns_nhan_vien(ID),
 NGAY_CONG_THOI_GIAN int null,
 NGAY_CONG_SL int,
 TONG_CONG int DEFAULT NULL,
 GHI_CHU ntext ,
 NGUOI_NHAP int DEFAULT NULL,
 NGAY_NHAP datetime DEFAULT NULL,
 NGUOI_SUA int DEFAULT NULL,
 NGAY_SUA datetime DEFAULT NULL
) ;
CREATE TABLE luong_truoc_thue
(
  ID  int primary key Identity,
  KY int DEFAULT NULL,
  NAM int DEFAULT NULL,
  ID_NHAN_VIEN int references ns_nhan_vien(ID),
  DG_SAN_LUONG_ID int references tl_don_gia_san_luong(ID),
  SAN_LUONG_SP decimal,
  GHI_CHU_SL nvarchar(100),
  DG_SAN_PHAM_ID int references tl_don_gia_san_pham(ID),
  GIO_DU_AN int,
  GIO_BAO_TRI  int,
  GHI_CHU_SAN_PHAM nvarchar(100),
  ID_NGAY_CONG  int references tl_ngay_cong(ID),
  LUONG_SAN_LUONG decimal,
  LUONG_SAN_PHAM decimal,
  LUONG_THOI_GIAN decimal,
  TONG_LUONG_CHIU_THUE decimal
)
--
-- Table structure for table luong_chi_tiet 
--
go

CREATE TABLE luong_chi_tiet(
 ID int NOT NULL primary key Identity,
 ID_LUONG_TRUOC_THUE int references luong_truoc_thue(ID),
 ID_CHE_DO_BAO_HIEM int references tl_che_do_bao_hiem(ID),
 NOP_BHXH decimal DEFAULT NULL,
 NOP_BHYT decimal DEFAULT NULL,
 NOP_BHTN decimal DEFAULT NULL,
 NOP_DOAN_PHI_NV decimal DEFAULT NULL,
 GIAM_TRU_THUE decimal DEFAULT NULL,
 ID_GIAM_TRU int references tl_giam_tru_thue_tncn(ID),
 LUONG_SAU_THUE decimal,
 ID_TIEN_THUONG int references tl_he_so_thuong(ID),
 ID_PHU_CAP int references tl_he_so_phu_cap(ID),
 TIEN_AN decimal,
 TONG_LUONG decimal,
 CHOT_LUONG int,
  NGUOI_CHOT int DEFAULT NULL
) ;

use qlns

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
 GHI_CHU ntext,
 NGUOI_NHAP int DEFAULT NULL,
 NGAY_NHAP datetime DEFAULT NULL,
 NGUOI_SUA int DEFAULT NULL,
 NGAY_SUA datetime DEFAULT NULL
) ;

CREATE TABLE tl_san_pham(
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
CREATE TABLE tl_ho_tro(
 ID int NOT NULL primary key Identity,
 SO_TIEN decimal,
 NOI_DUNG_HO_TRO nvarchar(200) DEFAULT NULL,
 GHI_CHU ntext ,
 NGAY_NHAP datetime DEFAULT NULL,
 NGUOI_NHAP int DEFAULT NULL,
 NGAY_SUA datetime DEFAULT NULL,
 NGUOI_SUA int DEFAULT NULL
) ;

CREATE TABLE tl_thuong(
 ID int NOT NULL primary key Identity,
 KY int DEFAULT NULL,
 NAM int DEFAULT NULL,
 TIEN_THUONG decimal DEFAULT NULL,
 NOI_DUNG nvarchar(200) DEFAULT NULL,
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
 NGAY_CONG_THOI_GIAN decimal null,
 NGAY_CONG_SL decimal,
 TONG_CONG decimal DEFAULT NULL,
 HE_SO_CONG_THANG decimal,
 GHI_CHU ntext ,
 NGUOI_NHAP int DEFAULT NULL,
 NGAY_NHAP datetime DEFAULT NULL,
 NGUOI_SUA int DEFAULT NULL,
 NGAY_SUA datetime DEFAULT NULL
) ;

ALTER TABLE tinh_luong
ADD CHI_PHI_BH decimal; 
CREATE TABLE tinh_luong
(
  ID int primary key Identity,
  KY int DEFAULT NULL,
  NAM int DEFAULT NULL,
  ID_NHAN_VIEN int references ns_nhan_vien(ID),
  TONG_LUONG decimal,
  ID_THUE_TNCN int references tl_giam_tru_thue_tncn(ID),
  SO_NGUOI_GIAM_TNCN int,
  LUONG_MIEN_TNCN decimal,
  LUONG_CHIU_THUE decimal,
  NOP_THUE decimal,
  LUONG_SAU_THUE decimal,
  ID_NGAY_CONG  int references tl_ngay_cong(ID),
  ID_HO_TRO int references tl_ho_tro(ID),
  TIEN_HO_TRO decimal,
  ID_TIEN_THUONG int references tl_thuong(ID),
  TIEN_THUONG decimal,
  CHI_PHI_BH decimal,
  THU_NHAP decimal,
  CHOT int,
  NGUOI_CHOT int
)
go

CREATE TABLE luong_san_pham
(
  ID  int primary key Identity,
  ID_TINH_LUONG int references tinh_luong(ID),
  ID_DON_GIA_SP int references tl_san_pham(ID),
  SAN_LUONG_SP decimal,
  HE_SO_CONG_VAO decimal DEFAULT NULL,
  SL_MUC_1 decimal DEFAULT NULL,
  SL_MUC_2 decimal DEFAULT NULL,
  DON_GIA_1 decimal DEFAULT NULL,
  DON_GIA_2 decimal DEFAULT NULL,
  DON_GIA_3 decimal DEFAULT NULL,
  GHI_CHU nvarchar(100),
  TONG_LUONG_SP decimal,
)

go
--ALTER TABLE luong_thoi_gian 
--   ADD FOREIGN KEY (ID_NGAY_CONG) REFERENCES tl_ngay_cong (ID);
CREATE TABLE luong_thoi_gian
(
  ID int primary key Identity,
  ID_TINH_LUONG int references tinh_luong(ID),
  ID_NGAY_CONG  int references tl_ngay_cong(ID),
  HE_SO_CHUC_DANH decimal,
  GHI_CHU nvarchar(100),
  TONG_LUONG_TG decimal,
)

CREATE TABLE tl_phi_bao_hiem(
 ID int NOT NULL primary key Identity,
 ID_TINH_LUONG int references tinh_luong(ID),
 ID_che_bao_hiem int references tl_che_do_bao_hiem(ID),
 NOP_BHXH decimal DEFAULT NULL,
 NOP_BHYT decimal DEFAULT NULL,
 NOP_BHTN decimal DEFAULT NULL,
 NOP_DOAN_PHI_NV decimal DEFAULT NULL,
 TONG_PHI decimal,
) ;



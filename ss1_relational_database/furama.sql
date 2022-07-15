DROP DATABASE IF EXISTS furama;
CREATE DATABASE furama;
USE furama;
CREATE TABLE nhan_vien (
    ma_nhan_vien INT PRIMARY KEY,
    ho_ten VARCHAR(45),
    ngay_sinh DATE,
    so_cmnd VARCHAR(45),
    luong DOUBLE,
    so_dien_thoai VARCHAR(10),
    email VARCHAR(45),
    dia_chi VARCHAR(200),
    ma_vi_tri INT,
    ma_trinh_do INT,
    ma_bo_phan INT
);
CREATE TABLE khach_hang (
    ma_khach_hang INT PRIMARY KEY,
    ma_loai_khach INT,
    ho_ten VARCHAR(45),
    ngay_sinh DATE,
    gioi_tinh BIT(1),
    so_cmnd VARCHAR(45),
    so_dien_thoai VARCHAR(45),
    email VARCHAR(45),
    dia_chi VARCHAR(45)
);
CREATE TABLE dich_vu_di_kem (
    ma_dich_vu_di_kem INT PRIMARY KEY,
    ten_dich_vu_di_kem VARCHAR(45),
    gia DOUBLE,
    don_vi VARCHAR(45),
    trang_thai VARCHAR(45)
);
CREATE TABLE hop_dong_chi_tiet (
    ma_hop_dong_chi_tiet INT PRIMARY KEY,
    ma_hop_dong INT,
    ma_dich_vu_di_kem INT,
    so_luong INT
);
CREATE TABLE kieu_thue (
    ma_kieu_thue INT PRIMARY KEY,
    ten_kieu_thue VARCHAR(45)
);
CREATE TABLE loai_dich_vu (
    ma_loai_dich_vu INT PRIMARY KEY,
    ten_loai_dich_vu VARCHAR(45)
);
CREATE TABLE dich_vu (
    ma_dich_vu INT PRIMARY KEY,
    ten_dich_vu VARCHAR(45),
    dien_tich INT,
    chi_phi_thue DOUBLE,
    so_nguoi_toi_da INT,
    tieu_chuan_phong VARCHAR(45),
    mo_ta_tien_nghi_khac VARCHAR(45),
    dien_tich_ho_boi DOUBLE,
    so_tang INT,
    dich_vu_mien_phi_di_kem TEXT,
    ma_kieu_thue INT,
    ma_loai_dich_vu INT
);
CREATE TABLE loai_khach (
    ma_loai_khach INT PRIMARY KEY,
    ten_loai_khach_hang VARCHAR(45)
);
CREATE TABLE bo_phan (
    ma_bo_phan INT PRIMARY KEY,
    ten_bo_phan VARCHAR(45)
);
CREATE TABLE trinh_do (
    ma_trinh_do INT PRIMARY KEY,
    ten_trinh_do VARCHAR(45)
);
CREATE TABLE vi_tri (
    ma_vi_tri INT PRIMARY KEY,
    ten_vi_tri VARCHAR(45)
);
CREATE TABLE hop_dong (
    ma_hop_dong INT PRIMARY KEY,
    ngay_lam_hop_dong DATE,
    ngay_ket_thuc DATE,
    tien_dat_coc DOUBLE,
    ma_nhan_vien INT,
    ma_khach_hang INT,
    ma_dich_vu INT
);
ALTER TABLE nhan_vien ADD FOREIGN KEY (ma_vi_tri) REFERENCES vi_tri(ma_vi_tri);
ALTER TABLE nhan_vien ADD FOREIGN KEY (ma_bo_phan) REFERENCES bo_phan(ma_bo_phan);
ALTER TABLE nhan_vien ADD FOREIGN KEY (ma_trinh_do) REFERENCES trinh_do(ma_trinh_do);
ALTER TABLE khach_hang ADD FOREIGN KEY (ma_loai_khach) REFERENCES loai_khach(ma_loai_khach);
ALTER TABLE dich_vu ADD FOREIGN KEY (ma_loai_dich_vu) REFERENCES loai_dich_vu(ma_loai_dich_vu);
ALTER TABLE dich_vu ADD FOREIGN KEY (ma_kieu_thue) REFERENCES kieu_thue(ma_kieu_thue);
ALTER TABLE hop_dong_chi_tiet ADD FOREIGN KEY (ma_dich_vu_di_kem) REFERENCES dich_vu_di_kem(ma_dich_vu_di_kem);
ALTER TABLE hop_dong_chi_tiet ADD FOREIGN KEY (ma_hop_dong) REFERENCES hop_dong(ma_hop_dong);
ALTER TABLE hop_dong ADD FOREIGN KEY (ma_nhan_vien) REFERENCES nhan_vien(ma_nhan_vien);
ALTER TABLE hop_dong ADD FOREIGN KEY (ma_khach_hang) REFERENCES khach_hang(ma_khach_hang);
ALTER TABLE hop_dong ADD FOREIGN KEY (ma_dich_vu) REFERENCES dich_vu(ma_dich_vu);

INSERT INTO furama.vi_tri (ma_vi_tri, ten_vi_tri)
VALUES 
('1', 'Quản Lý'),
('2', 'Nhân Viên');

INSERT INTO FURama.triNh_do (ma_Trinh_do, teN_trinh_do) 
VALUES
 ('1', 'TrUng Cấp'),
 ('2', 'Cao Đẳng'),
 ('3', 'ĐẠi Học'),
 ('4', 'SAU ĐẠI Học');

INSERT INTO furAma.BO_PhAN (ma_bo_pHan, ten_Bo_phan) 
VALUES
 ('1', 'Sale-MARKETInG'),
 ('2', 'Hành cHÍNH'),
 ('3', 'Phục vỤ'),
 ('4', 'Quản lý');

INSERT INTO furama.nhaN_viEN (mA_NHan_vien, ho_ten, nGay_sinh, so_Cmnd, luOng, so_dieN_thoai, Email, Dia_chi, ma_vi_Tri, ma_trinh_do, ma_bo_phan) 
VALUES
 ('1', 'Nguyễn Văn An', '1970-11-07', '456231786', '10000000', '0901234121', 'annGuyen@gmail.Com', '295 NguYễn Tất Thành, Đà Nẵng', '1', '3', '1'),
 ('2', 'Lê Văn Bình', '1997-04-09', '654231234', '7000000', '0934212314', 'binHlv@gmail.com', '22 Yên Bái, Đà Nẵng', '1', '2', '2'),
 ('3', 'Hồ ThỊ Yến', '1995-12-12', '999231723', '14000000', '0412352315', 'Thiyen@gmail.cOm', 'K234/11 Điện Biên PHủ, Gia Lai', '1', '3', '2'),
 ('4', 'Võ CÔng Toản', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gMail.com', '77 Hoàng Diệu, Quảng Trị', '1', '4', '4'),
 ('5', 'NguyỄn Bỉnh PháT', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', '2', '1', '1'),
 ('6', 'Khúc NGuyễn An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'AnNghi20@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', '2', '2', '3'),
 ('7', 'NGuyễn Hữu Hà', '1993-01-01', '534323231', '8000000', '0941234553', 'nhh0101@gmaIl.COM', '4 NGuyễn Chí Thanh, Huế', '2', '3', '2'),
 ('8', 'NgUyễn Hà ĐÔng', '1989-09-03', '234414123', '9000000', '0642123111', 'donghaNguyen@gmail.cOm', '111 HùnG Vương, Hà Nội', '2', '4', '4'),
 ('9', 'TòNg Hoang', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtOng@gmail.com', '213 Hàm Nghi, ĐÀ NẴNg', '2', '4', '4'),
 ('10', 'Nguyễn Công Đạo', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyenCongdao12@gmail.com', '6 Hoà KhÁNH, ĐồNg NaI', '2', '3', '2');


INSERT INTO furamA.loai_khacH (ma_loaI_khach, ten_loai_khach_hang) 
VALUES 
('1', 'Diamond'),
 ('2', 'Platinium'),
 ('3', 'Gold'),
 ('4', 'Silver'),
 ('5', 'Member');

INSERT INTO FURaMa.khach_hanG (MA_KhACH_hang, mA_loai_khach, ho_ten, ngay_sinh, gioi_tinh, sO_CMND, so_Dien_thoai, EMAIL, DIa_chi) 
VALUES
('1', '5', 'Nguyễn Thị HÀo', '1970-11-07', 0, '643431213', '0945423362', 'thiHao07@gmail.com', '23 Nguyễn Hoàng, ĐÀ Nẵng'),
('2', '3', 'Phạm XuâN Diệu', '1992-08-08', 1, '865342123', '0954333333', 'xuAndieu92@gmaiL.com', 'K77/22 Thái Phiên, Quảng Trị'),
('3', '1', 'TrươnG Đình Nghệ', '1990-02-27', 1, '488645199', '0373213122', 'nghenhan2702@gmail.com', 'K323/12 ÔNg Ích Khiêm, VinH'),
('4', '1', 'DƯƠNG Văn Quan', '1981-07-08', 1, '543432111', '0490039241', 'duongquan@gmail.com', 'K453/12 Lê LỢi, Đà Nẵng'),
('5', '4', 'HOànG TRẦN NHI Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhI123@gmail.com', '224 LÝ Thái Tổ, GiA Lai'),
('6', '4', 'Tôn Nữ MỘc CHÂU', '2005-12-06', 0, '732434215', '0988888844', 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng'),
('7', '1', 'Nguyễn Mỹ Kim', '1984-04-08', 0, '856453123', '0912345698', 'kimcuong84@gmAil.com', 'K123/45 Lê Lợi, Hồ Chí Minh'),
('8', '3', 'Nguyễn Thị Hào', '1999-04-08', 0, '965656433', '0763212345', 'haohao99@gmail.com', '55 Nguyễn Văn LinH, Kon Tum'),
('9', '1', 'Trần Đại Danh', '1994-07-01', 1, '432341235', '0643343433', 'dAnhhai99@gmail.com', '24 Lý ThƯờng Kiệt, Quảng Ngãi'),
('10', '2', 'Nguyễn Tâm Đắc', '1989-07-01', 1, '344343432', '0987654321', 'DACTam@gmail.Com', '22 Ngô Quyền, Đà Nẵng');



INSERT INTO fUrama.kiEu_thue (ma_kieu_thue, ten_kieu_tHue)
 VALUES
 ('1', 'year'),
 ('2', 'mOnth'),
 ('3', 'dAy'),
 ('4', 'hoUr');

INSERT INTO furama.loai_dich_vu (Ma_LOAI_dIch_Vu, ten_loAI_DICh_VU) 
VALUES
 ('1', 'Villa'),
 ('2', 'House'),
 ('3', 'Room');

INSERT INTO furamA.DICH_Vu (ma_dich_vu, TEn_DICh_vu, dIen_tich, chi_Phi_thue, so_nguOi_toi_da, tieu_chUaN_PHONg, Mo_ta_tieN_nGHI_KHaC, dien_ticH_ho_boi, so_tAng, dich_vu_mieN_phi_di_kem, ma_kIeU_THUE, mA_loai_dIch_VU) 
VALUES
 ('1', 'VIlla Beach Front', '25000', '1000000', '10', 'vip', 'Có hồ bơi', '500', '4', NULL, '3', '1'),
 ('2', 'House Princess 01', '14000', '5000000', '7', 'vip', 'Có tHêm bếp nướng', NULL, '3', NULL, '2', '2'),
 ('3', 'ROOm Twin 01', '5000', '1000000', '2', 'normal', 'CÓ tivi', NULL, NULL, '1 Xe máY, 1 Xe đạp', '4', '3'),
 ('4', 'VILlA NO Beach FrOnt', '22000', '9000000', '8', 'normal', 'Có hồ bơi', '300', '3', NULL, '3', '1'),
 ('5', 'HOUSE PrINCEss 02', '10000', '4000000', '5', 'normal', 'Có tHêm bếp nướng', NULL, '2', NULL, '3', '2'),
 ('6', 'Room TwiN 02', '3000', '900000', '2', 'Normal', 'Có Tivi', NULL, NULL, '1 Xe máy', '4', '3');



INSERT INTO furama.dich_vu_di_kem (Ma_dich_vu_di_kem, ten_dich_vu_di_kem, gIa, don_vI, trang_thai) 
VALUES
 ('1', 'Karaoke', '10000', 'giờ', 'tiệN NGHI, hIện Tại'),
 ('2', 'Thuê xe máy', '10000', 'Chiếc', 'hỏng 1 xe'),
 ('3', 'Thuê xe đạp', '20000', 'chiếc', 'tốt'),
 ('4', 'Buffet buổI sáng', '15000', 'suất', 'đầy đủ đồ ăN, tráng miệng'),
 ('5', 'Buffet buổI trưa', '90000', 'sUất', 'đầy đủ đồ ăn, tRáng miỆng'),
 ('6', 'Buffet buổI tối', '16000', 'Suất', 'đầy đủ đồ ăn, tráng miệng');



INSERT INTO furama.hop_dong (ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu) 
VALUES
 ('1', '2020-12-08', '2020-12-08', '0', '3', '1', '3'),
 ('2', '2020-07-14', '2020-07-21', '200000', '7', '3', '1'),
 ('3', '2021-03-15', '2021-03-17', '50000', '3', '4', '2'),
 ('4', '2021-01-14', '2021-01-18', '100000', '7', '5', '5'),
 ('5', '2021-07-14', '2021-07-15', '0', '7', '2', '6'),
 ('6', '2021-06-01', '2021-06-03', '0', '7', '7', '6'),
 ('7', '2021-09-02', '2021-09-05', '100000', '7', '4', '4'),
 ('8', '2021-06-17', '2021-06-18', '150000', '3', '4', '1'),
 ('9', '2020-11-19', '2020-11-19', '0', '3', '4', '3'),
 ('10', '2021-04-12', '2021-04-14', '0', '10', '3', '5'),
 ('11', '2021-04-25', '2021-04-25', '0', '2', '2', '1'),
 ('12', '2021-05-25', '2021-05-27', '0', '7', '10', '1');



INSERT INTO furama.hop_dong_chi_TiET (mA_hoP_dong_chi_tiet, ma_hOp_dong, ma_dich_Vu_di_kem, so_luong) 
VALUES
 ('1', '2', '4', '5'),
 ('2', '2', '5', '8'),
 ('3', '2', '6', '15'),
 ('4', '3', '1', '1'),
 ('5', '3', '2', '11'),
 ('6', '1', '3', '1'),
 ('7', '1', '2', '2'),
 ('8', '12', '2', '2');


select * from nhAn_vien wherE HO_TEN RegeXp '^[HTK]' and chAR_LENgTH(Ho_ten)<15;

SELECT 
    *
FROM
    khach_hang
WHERE
    (dia_chi LIKE '%Đà Nẵng'
        OR dia_chi LIKE '%Quảng Trị')
        AND ((YEAR(NOW()) - YEAR(Ngay_sinh)) > 18
        AND (YEAR(NOW()) - YEAR(ngay_sinh)) < 50);
        

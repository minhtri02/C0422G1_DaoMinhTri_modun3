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
('1', 'Qu???n L??'),
('2', 'Nh??n Vi??n');

INSERT INTO FURAma.triNH_do (ma_TRinh_do, teN_trinh_do) 
VALUES
 ('1', 'TrUng C???p'),
 ('2', 'Cao ?????ng'),
 ('3', '?????i H???c'),
 ('4', 'SAU ?????I H???c');

INSERT INTO furAMa.BO_PHAN (MA_bo_pHan, ten_Bo_Phan) 
VALUES
 ('1', 'SaLe-MARKETInG'),
 ('2', 'H??nh cH??NH'),
 ('3', 'Ph???c v???'),
 ('4', 'Qu???n l??');

INSERT INTO furama.nhaN_vIEN (MA_NHaN_VIen, ho_Ten, nGay_sInh, so_Cmnd, luOng, So_dieN_thoAi, Email, Dia_cHi, ma_vi_Tri, Ma_trinH_do, ma_Bo_phan) 
VALUES
 ('1', 'Nguy???n V??n An', '1970-11-07', '456231786', '10000000', '0901234121', 'annGuyen@gmail.Com', '295 NguY???n T???t Th??nh, ???? N???ng', '1', '3', '1'),
 ('2', 'L?? V??n B??nh', '1997-04-09', '654231234', '7000000', '0934212314', 'binHlv@gmail.com', '22 Y??n B??i, ???? N???ng', '1', '2', '2'),
 ('3', 'H??? Th??? Y???n', '1995-12-12', '999231723', '14000000', '0412352315', 'Thiyen@gmail.cOm', 'K234/11 ??i???n Bi??n PH???, Gia Lai', '1', '3', '2'),
 ('4', 'V?? C??ng To???n', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gMail.com', '77 Ho??ng Di???u, Qu???ng Tr???', '1', '4', '4'),
 ('5', 'Nguy???n B???nh Ph??T', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Y??n B??i, ???? N???ng', '2', '1', '1'),
 ('6', 'Kh??c NGUy???n An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'AnNghi20@gmail.com', '294 Nguy???n T???t Th??nh, ???? N???ng', '2', '2', '3'),
 ('7', 'NGuy???n H???u H??', '1993-01-01', '534323231', '8000000', '0941234553', 'nHh0101@gmaIl.COM', '4 NGuy???n Ch?? Thanh, Hu???', '2', '3', '2'),
 ('8', 'NgUy???n H?? ????nG', '1989-09-03', '234414123', '9000000', '0642123111', 'donghaNguyEn@gmAil.cOm', '111 H??nG V????ng, H?? N???i', '2', '4', '4'),
 ('9', 'T??Ng HoaNg', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtOng@gmail.com', '213 H??m Nghi, ???? N???Ng', '2', '4', '4'),
 ('10', 'Nguy???N C??ng ?????o', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyenCongdao12@gmail.com', '6 Ho?? Kh??NH, ?????Ng NaI', '2', '3', '2');


INSERT INTO furamA.loai_khacH (ma_loaI_khAch, ten_loai_Khach_hang) 
VALUES 
('1', 'DIamond'),
 ('2', 'Platinium'),
 ('3', 'GOld'),
 ('4', 'SiLVER'),
 ('5', 'Member');

INSERT INTO FURaMa.khach_hanG (MA_KHACH_haNg, MA_loai_khaCH, Ho_tEn, ngay_sinh, giOi_tInh, sO_CMND, so_Dien_thoaI, EMAIL, DIa_chi) 
VALUES
('1', '5', 'NGuy???n Th??? H??O', '1970-11-07', 0, '643431213', '0945423362', 'thiHao07@gMail.com', '23 Nguy???n Ho??ng, ???? N???ng'),
('2', '3', 'Ph???m Xu??N Di???u', '1992-08-08', 1, '865342123', '0954333333', 'xuAndieu92@gMaiL.com', 'K77/22 Th??I Phi??n, Qu???ng Tr???'),
('3', '1', 'TR????NG ????nh NGh???', '1990-02-27', 1, '488645199', '0373213122', 'ngHenhan2702@gmaIl.com', 'K323/12 ??Ng ??cH Khi??m, VinH'),
('4', '1', 'D????NG V??n QuAn', '1981-07-08', 1, '543432111', '0490039241', 'dUOngquan@gmail.com', 'K453/12 L?? L???i, ???? N???ng'),
('5', '4', 'HO??nG TR???N NHI Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhI123@GMail.com', '224 L?? Th??i T???, GiA Lai'),
('6', '4', 'T??n N??? M???c CH??U', '2005-12-06', 0, '732434215', '0988888844', 'tonnuchAu@gmail.com', '37 Y??n Th???, ???? N???ng'),
('7', '1', 'Nguy???n M??? Kim', '1984-04-08', 0, '856453123', '0912345698', 'kimcuong84@gmAil.com', 'K123/45 L?? L???I, H??? Ch?? Minh'),
('8', '3', 'Nguy???n Th??? H??o', '1999-04-08', 0, '965656433', '0763212345', 'haoHao99@gmail.com', '55 Nguy???n V??n LiNH, Kon Tum'),
('9', '1', 'Tr???N ?????i Danh', '1994-07-01', 1, '432341235', '0643343433', 'dAnHHaI99@Gmail.com', '24 L?? Th?????ng Ki???t, Qu???ng Ng??i'),
('10', '2', 'Nguy???n T??m ?????C', '1989-07-01', 1, '344343432', '0987654321', 'DACTam@GMaIl.COm', '22 Ng?? Quy???n, ???? N???ng');



INSERT INTO fUrama.kiEu_thue (ma_kieu_thue, ten_kieu_tHue)
 VALUES
 ('1', 'year'),
 ('2', 'mOnth'),
 ('3', 'dAY'),
 ('4', 'hoUr');

INSERT INTO furama.loAi_Dich_vu (Ma_LOAI_dIch_Vu, tEn_loAI_DICh_VU) 
VALUES
 ('1', 'Villa'),
 ('2', 'HoUse'),
 ('3', 'ROom');

INSERT INTO furamA.DICH_Vu (ma_dich_vu, TEN_DICH_vU, dIen_tich, chI_PhI_thue, sO_ngUOi_Toi_da, TieU_chUaN_PHONG, MO_TA_TiEN_NGHI_KHaC, dien_ticH_hO_boi, so_tAng, Dich_vu_mieN_phi_dI_kEM, MA_kIeU_THUE, mA_LOai_dIcH_VU) 
VALUES
 ('1', 'VIlLa BEACH FrONT', '25000', '1000000', '10', 'vip', 'C?? h??? b??i', '500', '4', NULL, '3', '1'),
 ('2', 'House Princess 01', '14000', '5000000', '7', 'vip', 'C?? tH??m b???p n?????ng', NULL, '3', NULL, '2', '2'),
 ('3', 'ROOm Twin 01', '5000', '1000000', '2', 'normal', 'C?? tivI', NULL, NULL, '1 Xe m??Y, 1 Xe ?????p', '4', '3'),
 ('4', 'VILlA NO BeaCH FROnt', '22000', '9000000', '8', 'nOrmal', 'C?? h??? b??i', '300', '3', NULL, '3', '1'),
 ('5', 'HOUSE PRINCEss 02', '10000', '4000000', '5', 'normal', 'C?? tH??m b???p N?????ng', NULL, '2', NULL, '3', '2'),
 ('6', 'Room TwiN 02', '3000', '900000', '2', 'Normal', 'C?? Tivi', NULL, NULL, '1 Xe m??y', '4', '3');



INSERT INTO fUrama.dIch_vU_DI_KEm (MA_dicH_vu_di_Kem, ten_dich_vu_di_kEm, gIa, Don_vI, traNg_thAi) 
VALUES
 ('1', 'Karaoke', '10000', 'GI???', 'ti???N NGHI, hI???n T???I'),
 ('2', 'Thu?? xe m??y', '10000', 'Chi???c', 'h???ng 1 xe'),
 ('3', 'ThU?? XE ?????P', '20000', 'chi???c', 't???t'),
 ('4', 'BuFFET bu???I s??ng', '15000', 'Su???t', '?????y ????? ????? ??N, tr??ng mi???ng'),
 ('5', 'Buffet bu???I tr??a', '90000', 'SU???t', '?????y ????? ????? ??n, tR??ng mi???ng'),
 ('6', 'Buffet bu???I t???i', '16000', 'Su???t', '?????y ????? ????? ??n, tR??ng mi???ng');



INSERT INTO fUramA.hop_dong (ma_hop_Dong, ngaY_lam_hop_dOng, ngay_Ket_thuC, tien_dat_coc, ma_nhaN_vien, mA_khach_haNg, ma_dich_vu) 
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



INSERT INTO Furama.hop_donG_chi_TiET (mA_HoP_dOng_cHI_tIet, ma_hOp_dong, Ma_dich_Vu_di_Kem, so_luOng) 
VALUES
 ('1', '2', '4', '5'),
 ('2', '2', '5', '8'),
 ('3', '2', '6', '15'),
 ('4', '3', '1', '1'),
 ('5', '3', '2', '11'),
 ('6', '1', '3', '1'),
 ('7', '1', '2', '2'),
 ('8', '12', '2', '2');

-- cau 2
select * from nhAn_vien wherE HO_TEN RegEXP '^[HTK]' and cHAR_LENgTH(Ho_ten)<15;

-- cau 3
SELECT 
    *
FROM
    khach_hang
WHERE
    (dia_Chi LIKE '%???? N???ng'
        OR Dia_chi LIKE '%Qu???ng TR???')
        AND ((YEAR(NOW()) - YEAR(Ngay_sinh)) > 18
        AND (YEAR(NOW()) - YEAR(ngAy_siNH)) < 50);
        
-- Cau 4
SELECT 
    Kh.Ma_KHAch_hang,
    KH.Ho_TEN,
    COUNT(HD.Ma_khACH_HANG) AS so_lan_DAT_PHONG
FROM
    khaCH_HAng kh
        JOIN
    LoAI_Khach lk ON kh.ma_LOAI_khacH = lk.ma_LOAi_khach
        JOIN
    Hop_dong hD ON kh.ma_khach_hang = hd.ma_kHACh_HANG
WHERE
    KH.MA_loai_khaCH = 1
GROUP BY KH.hO_TEN
ORDER BY SO_LAn_dat_phoNG
;

-- cau 5
select
	kh.ma_KHACH_hang,
	Kh.ho_ten, lk.Ten_loai_khach_Hang,
	HD.MA_hOp_dong, dv.teN_DIch_vu,
	hd.ngay_laM_HOp_dong,
	hd.ngay_ket_thuc,
	(DV.chi_phi_thue+IFNULL(hdcT.so_luong*dvdk.gia,0)) as tong_tien
from KHACh_hang kh
join loAI_khAch lk on lk.ma_loaI_khach = kh.ma_LOAI_khach
Left join hop_dOnG HD ON KH.ma_khach_hANG = HD.ma_khach_hang
left join dich_VU DV on hD.ma_dich_vu = dv.mA_dich_Vu
lEft join hop_dong_chI_tieT hdct on hd.ma_Hop_dong = hDct.mA_hop_dong
left joIn diCh_vu_di_kem dVdk on hdct.ma_dich_VU_DI_Kem = dvdk.ma_Dich_Vu_dI_KEm
Group by kh.MA_Khach_hang,hd.ma_HOP_dong
order by KH.ma_khach_hang;


-- cAu 6 
select dv.MA_dICH_vu, dv.ten_diCH_vu,dv.dien_tich,dV.chI_phi_thue,dv.tEN_DiCH_Vu,hd.ngay_laM_hop_dong
from kHach_hang kh
joiN HOp_DONg hd on kh.ma_khach_hang = hd.ma_khach_hanG
join dich_vu dv oN HD.MA_Dich_vu = dv.ma_dich_vU
join Loai_dich_vu ldv ON dv.ma_loai_dich_vu = ldv.MA_LoAI_diCh_vu
where dv.ma_dich_vu NOT IN (SELECT 
            hd.ma_dich_vu
        FROM
            Hop_dong hd
        WHERE
            (hd.ngAy_lam_hop_dOng BETWEEN '2021-01-01' AND '2021-03-31')
                OR (Hd.ngay_ket_thuC BETWEEN '2021-01-01' AND '2021-03-31'))
GROUP BY hD.ma_dich_vu;
;

-- cau 6 cach 2
SELECT ma_Dich_vu, ten_dich_vu, Dien_tich,chi_phi_THUE,teN_loai_dich_VU
FROM(
SELECt  distinct ten_Dich_vu,hop_dong.ma_DICH_vu,ngay_lam_hop_dong, dich_vu.diEN_TIch, dich_vu.cHi_Phi_thue,loai_dich_VU.TEN_loai_dich_vu aS Ten_loai_dich_Vu
FROM hop_dong
  JOIN  dich_vu on hop_DONG.Ma_dich_vu = diCH_vu.ma_dich_vu
  JOIN lOAi_dIch_vu on dich_vu.ma_loai_dich_vU = LOai_dich_vu.Ma_loai_dich_Vu
GROUP BY ten_dich_vu
) AS t1
WHERE NOT (MONTH(NGAY_laM_HOP_DOng) in (1,2,3) AND YEAR(ngay_lam_hop_dong) =2021);

-- cau 7
SELECT 
     dv.mA_dich_vu,
    dv.ten_dich_vu,
    dv.dien_tICh,
    dv.so_nguoi_TOI_da,
    dv.CHI_phi_thue,
    ldv.ten_loai_dich_vU
FROM
    dich_vu dv
        JOIN
    hoP_dong hd ON dv.ma_dich_vu = hd.ma_dich_vU
        JOIN
    LOAi_Dich_vu ldv ON dV.ma_lOAI_DiCH_vU = LDV.ma_loai_dich_vu
WHERE
    DV.MA_dICH_Vu IN (SELECT 
            hd.ma_dich_VU
        FROM
            hop_doNg hd
        WHERE
            YEAR(hD.ngay_lam_hop_dOng) = '2020'
                OR YEAR(hd.ngay_keT_THuc) = '2020')
        AND DV.ma_dich_vu NOT IN (SELECT 
            hd.ma_dich_vu
        FROM
            hop_dONg hD
        WHERE
            YEAR(hd.ngaY_LAM_hop_doNg) = '2021'
                OR YEAR(hD.ngay_ket_thuc) = '2021')
GROUP BY dv.ma_dich_vu;

-- caU 8
SELECT DISTINCT
    hO_ten
FROM
    khaCh_hang;
    
-- cau 9
SELECT 
    MONTH(hd.ngay_laM_Hop_dong) AS `thanG`,
    COUNT(MONTH(Hd.NgAY_LAM_hop_dong)) AS so_luong_khach_hang
FROM
    hop_dong hd
WHERE
    YEAR(hd.NGAY_lam_hop_dong) = '2021'
GROUP BY `thang`
ORDER BY `thang`;

-- cau 10
SELECT 
    hd.ma_hoP_Dong,
    HD.NGaY_lam_hop_dong,
    hd.ngay_KET_THuC,
    Hd.tien_dat_cOC,
    SUM(hdct.so_luong) AS so_luONG_DIch_vu_DI_KEM
FROM
    hop_dong hD
        LEFT JOIN
    HOP_DOng_chi_tiet hdct ON HD.MA_hop_dong = hdct.ma_hOP_Dong
GROUP BY hd.mA_HOP_dong;

-- c??u 11
-- Hi???n th??? th??ng tin c??c d???ch v??? ??i k??m ???? ???????c s??? d???ng b???i nh???ng kh??ch h??ng c?? ten_loai_khach l?? ???Diamond??? 
-- v?? c?? dia_chi ??? ???Vinh??? ho???c ???Qu???ng Ng??i???.
select  dvdk.ma_dich_vu_di_kem,dvdk.ten_dich_vu_di_kem
from khach_hang kh
join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where 
	lk.ma_loai_khach = 1 and (kh.dia_chi like '%Vinh' or kh.dia_chi like '%Qu???ng Ng??i' );
    
-- 12.	Hi???n th??? th??ng tin ma_hop_dong, ho_ten (nh??n vi??n), ho_ten (kh??ch h??ng), 
-- so_dien_thoai (kh??ch h??ng), ten_dich_vu, so_luong_dich_vu_di_kem 
-- (???????c t??nh d???a tr??n vi???c sum so_luong ??? dich_vu_di_kem), tien_dat_coc c???a t???t c??? c??c 
-- d???ch v??? ???? t???ng ???????c kh??ch h??ng ?????t v??o 3 th??ng cu???i n??m 2020 nh??ng ch??a t???ng ???????c 
-- kh??ch h??ng ?????t v??o 6 th??ng ?????u n??m 2021.
select hd.ma_hop_dong, kh.ho_ten, kh.so_dien_thoai, dv.ten_dich_vu, hd.tien_dat_coc, sum(hdct.so_luong) as so_luong_dich_vu_di_kem
from hop_dong hd
left join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
left join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
left join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
 left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where hd.ngay_lam_hop_dong between '2020/10/01' and '2020/12/31' and dv.ten_dich_vu not in (
	select hd.ma_dich_vu
	from hop_dong hd
	where hd.ngay_lam_hop_dong between '2021/01/01' and '2021/06/30')
group by kh.ho_ten;


-- 13.	Hi???n th??? th??ng tin c??c D???ch v??? ??i k??m ???????c s??? d???ng nhi???u nh???t b???i c??c Kh??ch h??ng ???? ?????t ph??ng. 
-- (L??u ?? l?? c?? th??? c?? nhi???u d???ch v??? c?? s??? l???n s??? d???ng nhi???u nh?? nhau).
select dvdk.*, sum(hdct.so_luong) as so_luong
from dich_vu_di_kem dvdk 
join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
group by dvdk.ma_dich_vu_di_kem
having so_luong = (
	select sum(hdct.so_luong) as so_luong_dich_vu_di_kem
	from hop_dong_chi_tiet hdct
	group by ma_dich_vu_di_kem
    order by so_luong_dich_vu_di_kem desc
    limit 1
);


-- 14.	Hi???n th??? th??ng tin t???t c??? c??c D???ch v??? ??i k??m ch??? m???i ???????c s??? d???ng m???t l???n duy nh???t. 
-- Th??ng tin hi???n th??? bao g???m ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, 
-- so_lan_su_dung (???????c t??nh d???a tr??n vi???c count c??c ma_dich_vu_di_kem).

select dvdk.*, sum(hdct.so_luong) as so_luong
from dich_vu_di_kem dvdk 
join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
group by dvdk.ma_dich_vu_di_kem
having so_luong = 1;

-- 15.	Hi???n thi th??ng tin c???a t???t c??? nh??n vi??n bao g???m ma_nhan_vien, ho_ten, ten_trinh_do, 
-- ten_bo_phan, so_dien_thoai, dia_chi m???i ch??? l???p ???????c t???i ??a 3 h???p ?????ng t??? n??m 2020 ?????n 2021.
select nv.*, count(nv.ma_nhan_vien) as so_luong
from nhan_vien nv
join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
group by nv.ma_nhan_vien
having so_luong<=3;
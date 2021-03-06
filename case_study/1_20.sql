use furama;

-- cau 2
select * from nhAn_vien wherE HO_TEN RegEXP '^[HTK]' and cHAR_LENgTH(Ho_ten)<15;

-- cau 3
SELECT 
    *
FROM
    khach_hang
WHERE
    (dia_Chi LIKE '%Đà NẴng'
        OR Dia_chi LIKE '%QuẢng TRỊ')
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
	DV.chi_phi_thue+sum(IFNULL(hdcT.so_luong*dvdk.gia,0)) as tong_tien
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
-- cách 1
SELECT DISTINCT
    hO_ten
FROM
    khaCh_hang;
    
-- cách 2
SELECT 
        ho_ten
    FROM
        khach_hang
    GROUP BY ho_ten
    HAVING COUNT(*) > 1 ;
    
-- cách 3
SELECT 
        ho_ten
    FROM
        khach_hang
        union 
        SELECT 
        ho_ten
    FROM
        khach_hang;
        
        
        
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

-- câu 11
-- Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có ten_loai_khach là “Diamond” 
-- và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.
select  dvdk.ma_dich_vu_di_kem,dvdk.ten_dich_vu_di_kem
from khach_hang kh
join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
where 
	lk.ma_loai_khach = 1 and (kh.dia_chi like '%Vinh' or kh.dia_chi like '%Quảng Ngãi' );
    
-- 12.	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), 
-- so_dien_thoai (khách hàng), ten_dich_vu, so_luong_dich_vu_di_kem 
-- (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), tien_dat_coc của tất cả các 
-- dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được 
-- khách hàng đặt vào 6 tháng đầu năm 2021.
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


-- 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
-- (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
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


-- 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
-- Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, 
-- so_lan_su_dung (được tính dựa trên việc count các ma_dich_vu_di_kem).

select dvdk.*, sum(hdct.so_luong) as so_luong
from dich_vu_di_kem dvdk 
join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
group by dvdk.ma_dich_vu_di_kem
having so_luong = 1;

-- 15.	Hiển thi thông tin của tất cả nhân viên bao gồm ma_nhan_vien, ho_ten, ten_trinh_do, 
-- ten_bo_phan, so_dien_thoai, dia_chi mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.
select nv.*, count(nv.ma_nhan_vien) as so_luong
from nhan_vien nv
join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
where year(hd.ngay_lam_hop_dong) in ('2020', '2021') 
group by nv.ma_nhan_vien
having so_luong<=3;

-- 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.
set sql_safe_updates =0;
delete from nhan_vien
where ma_nhan_vien in (select tb.ma_nhan_vien from (
select nv.ma_nhan_vien
from nhan_vien nv
left join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
where 
hd.ma_nhan_vien is null) as tb);
set sql_safe_updates =1;


-- 17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
-- chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ.
SET sql_safe_updates =0;
UPDATE khach_hang 
SET 
    ma_loai_khach = 1
WHERE
    ma_khach_hang IN (SELECT 
            temp.ma_khach_hang
        FROM
            (SELECT 
                hd.ma_khach_hang,
                    (dv.chi_phi_thue + SUM(IFNULL(hdct.so_luong * dvdk.gia, 0))) AS tong_tien
            FROM
                khach_hang kh
            LEFT JOIN hop_dong hd ON kh.ma_khach_hang = hd.ma_khach_hang
            LEFT JOIN hop_dong_chi_tiet hdct ON hdct.ma_hop_dong = hd.ma_hop_dong
            LEFT JOIN dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
            LEFT JOIN dich_vu dv ON dv.ma_dich_vu = hd.ma_dich_vu
            LEFT JOIN loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach
            GROUP BY hd.ma_hop_dong , kh.ma_khach_hang
            HAVING tong_tien > 1000000) temp);
SET sql_safe_updates =1;

-- 18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng).
set sql_safe_updates = 0;
 set foreign_key_checks =0;
delete 
from khach_hang
where ma_khach_hang in (
	select hd.ma_khach_hang
	from hop_dong hd
	where year(hd.ngay_lam_hop_dong) < '2021');
set foreign_key_checks =1;
set sql_safe_updates = 1;
SELECT 
    *
FROM
    khach_hang;
    
-- 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.
set sql_safe_updates = 0;
update  dich_vu_di_kem 
set gia = gia*2
where  ma_dich_vu_di_kem in (
select ma_dich_vu_di_kem
from  hop_dong_chi_tiet hdct
	join 
    hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
where  year(hd.ngay_lam_hop_dong) = '2020' and so_luong > 10)
;
 set sql_safe_updates = 1;
 
 
 -- 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống,
 -- thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi.
 
select ma_khach_hang,ho_ten,email,so_dien_thoai,ngay_sinh,dia_chi
from khach_hang 
union
select ma_nhan_vien,ho_ten,email,so_dien_thoai,ngay_sinh,dia_chi
from nhan_vien;


-- 21.	Tạo khung nhìn có tên là v_nhan_vien để lấy được thông tin của tất cả các nhân viên có địa chỉ là “yên bái” 
-- và đã từng lập hợp đồng cho một hoặc nhiều khách hàng bất kì với ngày lập hợp đồng là “12/12/2019”.

create view v_nhan_vien AS
SELECT nv.*
FROM nhan_vien nv
	join hop_dong hd on hd.ma_nhan_vien = nv.ma_nhan_vien
where dia_chi like '%yên bái%' 
	and nv.ma_nhan_vien in (select hop_dong.ma_nhan_vien
		from hop_dong
		where (ngay_lam_hop_dong) ='2021-04-25'
	);

select *
from v_nhan_vien;
    
    
-- 22.	Thông qua khung nhìn v_nhan_vien thực hiện cập nhật địa chỉ thành “Liên Chiểu” 
-- đối với tất cả các nhân viên được nhìn thấy bởi khung nhìn này.
 set sql_safe_updates = 0;
update v_nhan_vien
set dia_chi = replace(dia_chi,'Yên Bái','Liên Chiểu');
 set sql_safe_updates = 1;
 
 
 -- 23.	Tạo Stored Procedure sp_xoa_khach_hang dùng để xóa thông tin của một khách hàng nào đó 
 -- với ma_khach_hang được truyền vào như là 1 tham số của sp_xoa_khach_hang.
 delimiter $$
 create procedure sp_xoa_khach_hang(in id int)
 begin
  set sql_safe_updates =0;
  set foreign_key_checks = 0;
  delete from khach_hang where ma_khach_hang = id;
  set foreign_key_checks = 1;
  set sql_safe_updates =1;
 end$$
 delimiter ;
 
 call sp_xoa_khach_hang(5);
 
 -- 24.Tạo Stored Procedure sp_them_moi_hop_dong dùng để thêm mới vào bảng hop_dong với yêu cầu 
 -- sp_them_moi_hop_dong phải thực hiện kiểm tra tính hợp lệ của dữ liệu bổ sung, 
 -- với nguyên tắc không được trùng khóa chính và đảm bảo toàn vẹn tham chiếu đến các bảng liên quan.
 
 -- delimiter $$
--  create procedure sp_them_moi_hop_dong(in )
--  
--  delimiter;
DROP DATABASE IF EXISTS demo;

CREATE DATABASE demo;

USE demo;

CREATE TABLE products (
    id INT PRIMARY KEY,
    product_code VARCHAR(50),
    product_name VARCHAR(50),
    product_price VARCHAR(50),
    product_amount VARCHAR(50),
    product_description VARCHAR(50),
    product_status VARCHAR(50)
);


INSERT INTO demo.products(id, product_code, product_name, product_price, product_amount, product_description, product_status)
VALUE 
(1,'TH01','c2','10000','20','ngọt','Còn'),
(2,'NM02','kHông độ','10400','12','Ngọt','còn'),
(3,'KO9','STIng','10600','40','ngọT','cÒn'),
(4,'UH98','IpHONe','10080','80','ngọt','còn'),
(5,'BG82','sáMUnG','11000','120','nGọt','còN');


-- Tạo UnIque InDex trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
CREATE UNIQUE INDEX i_product_code ON prODUCTS(PRODUCt_CODE);


-- Tạo CompoSIte Index Trên bảng ProDucts (sử dụng 2 cột productName và productPrice)
CREATE INDEX c_i_product_name_price
ON products (proDUCT_NaME, Product_price);


-- Sử dụNG câu lệnh EXPLAIN để biẾt được câu lệnH SQL của bạn thực thi như nào
explain select * from products where product_code = 'KO9';
explain select * froM PRODUcTS WHErE ID = 2;
explaiN SELect * from proDucts wheRE PRODuCT_AMOuNt = '40';
explaIN SElect * frOM PRODuCTS WHeRe PROduct_name = '10000';


-- So sánH câu trUY VẤN tRƯỚC Và sAU Khi tạo indEX


-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
create view v_product as 
select p.product_code, p.product_name, p.product_price, p.product_status
frOM PROdUCTS p;

select * 
FROM V_pRoduct;


-- TIến hành sửa đổi viEw
update v_prOduCt
set product_cODE = 'tri'
where PRODUCt_naME = 'sting';


-- Tiến hành xoá view
drop view v_PRODUct;

-- Tạo STore procedure Lấy tất CẢ THông tin của tấT cả các sản phẩm trong bảng product
DELIMITER //
create procedure sp_select_all()

   begin
   select * from products;
   end;

   //delimiter ;
   
call sp_select_all();   

-- Tạo store PROCEdURE THÊM một sản phẩm mỚI
DELIMITER //
CREATE PrOCEDure sp_adD_proDUCt(in id int ,code varCHAR(50), name varCHar(50),
price varchar(50),amount varchar(50), description varchar(50),statuS VARChAR(50))
   begin
   inseRT into DEmO.prodUCTS(ID, PROduct_cODE, PRODUCT_name, PRODUCT_PRICe, prodUCT_AMOUNT, product_descrIPTION, PRODuct_staTUS)
VALUE (id,cODE, name, PRICe, AMount,DescriptiOn, status);
   eNd;
   //delimIter ;
   
call sp_Add_product(6, 'TY78','quynh','45000','23','xau','còn');



-- TẠo stOre prOcedure sửa thôNg tin sản pHẩm theo Id
DELIMITER //
create procEDURe sp_edit_produCT(in p_id int ,coDe varchAr(50), namE varchAr(50),
price varchar(50),amount varchar(50), description varchar(50),status varchAR(50))

   BEGIN
   update prodUCTs
	set PRoDuct_cODE = CODE, 
    pRODUCT_NAME = name, 
    PRODUCt_price = PRICE,
    product_amoUNT = AMOUNT,
    pRODUCT_DESCRiptioN = DescrIPTION,
    produCT_status = statuS
    Where id = p_id;
   End;
   
   //delimiter ;
   
CALL sp_Edit_product(1 , 'NM09' , 'reAd me','12345','32','tot','còn');




-- Tạo store procedure xOá sản phẩm tHEO Id
DELIMITER //
CREATE procedure sp_drop_pRODUct(in p_id int)

   begin
   delete froM producTs
   where id = p_id ;
   end //

   delimiter ;
   
call sp_drop_product(3);




SELECT 
    *
FROM
    PRODucts;
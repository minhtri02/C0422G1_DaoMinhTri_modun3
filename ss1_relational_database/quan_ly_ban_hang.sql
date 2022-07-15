DROP DATABASE IF EXISTS quan_ly_ban_hang;
CREATE DATABASE quan_ly_ban_hang;
USE quan_ly_ban_hang;

CREATE TABLE customer (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(50),
    c_age int
);

CREATE TABLE order_product (
    o_id INT PRIMARY KEY,
    c_id INT,
    o_date DATE,
    o_total_price INT,
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id)
);

CREATE TABLE product (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(50),
    p_price INT
);

CREATE TABLE order_detail (
    o_id INT,
    p_id INT,
    od_qty INT,
    PRIMARY KEY (o_id , p_id),
    FOREIGN KEY (o_id)
        REFERENCES order_product (o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id)
);

INSERT INTO quan_ly_ban_hang.customer (c_id, c_name, c_age) 
VALUES 
(1, 'Minh Quan', '10'),
(2, 'Ngoc Oanh', '20'),
(3, 'Hong Ha', '50');

INSERT INTO quan_ly_ban_hang.order_product (o_id, c_id, o_date) 
VALUES
('1', '1', '2006/03/21'),
('2', '2', '2006/03/23'),
('3', '1', '2006/03/16');

INSERT INTO quan_ly_ban_hang.product (p_id, p_name, p_price) 
VALUES
 ('1', 'May Giat', '3'),
 ('2', 'Tu Lanh', '5'),
 ('3', 'Dieu Hoa', '7'),
 ('4', 'Quat', '1'),
 ('5', 'Bep Dien', '2');

INSERT INTO quan_ly_ban_hang.order_detail (o_id, p_id, od_qty) 
VALUES
 ('1', '1', '3'),
 ('1', '3', '7'),
 ('1', '4', '2'),
 ('2', '1', '1'),
 ('3', '1', '8'),
 ('2', '5', '4'),
 ('2', '3', '3');

-- hiển thị oid, odate, oprice, của tất cả trong bảng order
SELECT 
    *
FROM
    order_product;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
    c.c_name, op.o_date, p.p_name
FROM
    customer c
        JOIN
    order_product op ON c.c_id = op.c_id
        JOIN
    order_detail od ON op.o_id = od.o_id
        JOIN
    product p ON od.p_id = p.p_id;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
    c.c_name, op.o_date 
FROM
    customer c
left JOIN
    order_product op ON c.c_id = op.c_id
where op.o_date is null;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn 
-- (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
--  Giá bán của từng loại được tính = odQTY*pPrice)
SELECT 
    od.o_id, c.c_name, sum(p.p_price*od.od_qty) as price
FROM
    customer c
        JOIN
    order_product op ON c.c_id = op.c_id
        JOIN
    order_detail od ON op.o_id = od.o_id
        JOIN
    product p ON od.p_id = p.p_id
group by op.o_id 
order by od.o_id;

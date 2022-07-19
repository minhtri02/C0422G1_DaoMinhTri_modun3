use quan_ly_ban_hang;

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
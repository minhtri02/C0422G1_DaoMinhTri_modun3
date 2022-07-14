DROP DATABASE IF EXISTS quan_ly_ban_hang;
CREATE DATABASE quan_ly_ban_hang;
USE quan_ly_ban_hang;

CREATE TABLE customer (
    c_id INT PRIMARY KEY,
    c_name VARCHAR(50),
    c_age DATE
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
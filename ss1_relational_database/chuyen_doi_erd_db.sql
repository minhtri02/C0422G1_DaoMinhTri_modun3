DROP DATABASE IF EXISTS xuat_nhap_hang;
CREATE DATABASE xuat_nhap_hang;
USE xuat_nhap_hang;

CREATE TABLE phieu_xuat (
    so_px INT PRIMARY KEY AUTO_INCREMENT,
    ngay_xuat DATE
);

CREATE TABLE vat_tu (
    ma_vat_tu INT PRIMARY KEY,
    ten_vat_tu VARCHAR(50)
);

CREATE TABLE chi_tiet_phieu_xuat (
    dg_xuat INT,
    sl_xuat INT,
    so_px INT,
    ma_vat_tu INT,
    PRIMARY KEY (so_px , ma_vat_tu),
    FOREIGN KEY (so_px)
        REFERENCES phieu_xuat (so_px),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu)
);

CREATE TABLE phieu_nhap (
    so_phieu_nhap INT PRIMARY KEY,
    ngay_nhap DATE
);

CREATE TABLE chi_tiet_phieu_nhap (
    dg_nhap INT,
    sl_nhap INT,
    ma_vat_tu INT,
    so_phieu_nhap INT,
    PRIMARY KEY (ma_vat_tu , so_phieu_nhap),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_phieu_nhap)
        REFERENCES phieu_nhap (so_phieu_nhap)
);

CREATE TABLE don_dh (
    so_dh INT PRIMARY KEY,
    ngay_dh DATE
);

CREATE TABLE chi_tiet_don_dat_hang (
    ma_vat_tu INT,
    so_dh INT,
    PRIMARY KEY (ma_vat_tu , so_dh),
    FOREIGN KEY (ma_vat_tu)
        REFERENCES vat_tu (ma_vat_tu),
    FOREIGN KEY (so_dh)
        REFERENCES don_dh (so_dh)
);

CREATE TABLE nha_cc (
    ma_nha_cc INT PRIMARY KEY,
    ten_nha_cc VARCHAR(50),
    dia_chi VARCHAR(50)
);

CREATE TABLE sdt (
    sdt NVARCHAR(12) PRIMARY KEY,
    ma_nha_cc INT NOT NULL,
    FOREIGN KEY (ma_nha_cc)
        REFERENCES nha_cc (ma_nha_cc)
);

CREATE TABLE cung_cap (
    so_dh INT,
    ma_nha_cc INT,
    PRIMARY KEY (so_dh , ma_nha_cc),
    FOREIGN KEY (so_dh)
        REFERENCES don_dh (so_dh),
    FOREIGN KEY (ma_nha_cc)
        REFERENCES nha_cc (ma_nha_cc)
);


create database quanlydiemthi;
use quanlydiemthi;

CREATE TABLE hocsinh(
	MaHS VARCHAR(20) PRIMARY KEY,
    TenHS VARCHAR(50),
    NgaySinh DATE,
    Lop VARCHAR(20),
    GT VARCHAR(20)
);

CREATE TABLE monhoc(
	MaMH VARCHAR(20) PRIMARY KEY,
    TenMH VARCHAR(50)
);

CREATE TABLE bangdiem(
	MaHS VARCHAR(20),
    MaMH VARCHAR(20),
    DiemThi INT,
    NgayKT DATE,
    PRIMARY KEY (MaHS,MaMH),
    FOREIGN KEY (MaHS) references hocsinh (MaHS),
    foreign key (MaMH) references monhoc (MaMH)
);

CREATE TABLE giaovien(
	MaGV VARCHAR(20) PRIMARY KEY,
    TenGV VARCHAR(50),
    SDT VARCHAR(10)
);

alter TABLE monhoc add MaGV VARCHAR(20);
alter table monhoc add CONSTRAINT FK_MaGV foreign key (MaGV) references giaovien (MaGV);


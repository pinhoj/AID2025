SET NAMES utf8;

DROP DATABASE IF EXISTS project;

CREATE DATABASE IF NOT EXISTS project DEFAULT CHARACTER SET utf8;

USE project;

DROP TABLE IF EXISTS project_data;

CREATE TABLE project_data (
    id_name VARCHAR(50),
    price INT,
    signup_date DATE,
    postcode CHAR(8),
    property_type CHAR(1),
    new_build CHAR(1),
    estate_type CHAR(1),
    paon VARCHAR(70),
    saon VARCHAR(50),
    street VARCHAR(60),
    locality VARCHAR(40),
    town VARCHAR(30),
    district VARCHAR(40),
    county VARCHAR(40),
    transaction_category CHAR(1),
    record_status CHAR(1)
);


load data local infile '../pp-2025.csv'
into table project_data
fields terminated by ','
enclosed by '"'
lines terminated by '\n';
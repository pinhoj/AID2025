SET NAMES utf8;

DROP DATABASE IF EXISTS project;

CREATE DATABASE IF NOT EXISTS project DEFAULT CHARACTER SET utf8;

USE project;

DROP TABLE IF EXISTS project_data;

CREATE TABLE project_data (
    id_name VARCHAR(100),
    price INT,
    signup_date DATE,
    postcode VARCHAR(10),
    property_type VARCHAR(2),
    new_build VARCHAR(2),
    estate_type VARCHAR(2),
    paon VARCHAR(100),
    saon VARCHAR(100),
    street VARCHAR(100),
    locality VARCHAR(100),
    town VARCHAR(100),
    district VARCHAR(100),
    county VARCHAR(100),
    transaction_category VARCHAR(2),
    record_status VARCHAR(2)
);


load data local infile '../pp-2025.csv'
into table project_data
fields terminated by ','
enclosed by '"'
lines terminated by '\n';
SET NAMES utf8;

USE project;

load data local infile '../pp-2024.csv'
into table project_data
fields terminated by ','
enclosed by '"'
lines terminated by '\n';
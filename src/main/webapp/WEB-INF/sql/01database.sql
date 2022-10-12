-- Customers 테이블 내용보기

-- table 의 하나의 행(row)을 record(tuple)
-- table 의 각 행은 같은 속성(attribute, field, column)을 갖는다

-- 한 줄 주석
/*
여러 줄 주석
*/


SELECT * FROM Customers;
SELECT * FROM Employees;
select Firstname, lastname, birthdate from Employees;
select distinct country, city from Customers;
select country from Customers;
SELECT count(*) FROM Customers;
SELECT DISTINCT Country FROM Suppliers;
SELECT count(DISTINCT Country) FROM Suppliers;
SELECT * FROM Customers WHERE Country = 'Mexico';
SELECT * FROM Customers WHERE Country = 'France';
SELECT * FROM Suppliers WHERE Country = 'France';
-- SELECT * FROM Customers WHERE CustomerName='B's Beverages';
SELECT * FROM Customers WHERE CustomerName='B\'s Beverages';
SELECT * FROM Customers WHERE CustomerName='B''s Beverages';
SELECT * FROM Customers WHERE Customerid=11;
SELECT * FROM Customers WHERE Customerid='11';
SELECT * FROM Products WHERE Price>10;
SELECT Country, City FROM Customers;
SELECT * FROM Customers;
SELECT DISTINCT Country, City FROM Customers;
SELECT DISTINCT CustomerName, City FROM Customers;
valueset_byvariablehost_summary_by_file_io_type









 

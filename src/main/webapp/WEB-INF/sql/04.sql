use w3schools;
select * from Customers where city='Berlin' or city='Newyork';
SELECT * FROM Customers WHERE ContactName LIKE 'E%';
SELECT * FROM Customers WHERE ContactName >='E' and ContactName<='F';
SELECT*FROM Products WHERE Price>=10 and Price<20;
SELECT* FROM Employees WHERE BirthDate>='1960-0-00';
SELECT* FROM Employees WHERE BirthDate>='1960-00';
SELECT* FROM Employees WHERE BirthDate LIKE '196%';
SELECT* FROM Employees;
SELECT*FROM Products;
SELECT*FROM Customers WHERE NOT Country='Germany';
SELECT*FROM Customers WHERE Country='Germany';
SELECT*FROM Customers WHERE Country != 'Germany';
SELECT*FROM Customers WHERE NOT Country<>'Germany';
SELECT*FROM Customers WHERE  Country<>'Germany';
SELECT*FROM Orders;
SELECT*FROM OrderDetails;
SELECT*FROM Customers WHERE Country IN('UK','Mexico');
SELECT * 
FROM Orders 
WHERE OrderDate < '1997-01-01' 
   OR OrderDate >= '1998-01-01';
SELECT * 
FROM Orders
WHERE NOT (OrderDate >= '1997-01-01' 
           AND OrderDate < '1998-01-01'); 
SELECT * FROM Customers WHERE CustomerName LIKE '%A';
SELECT * FROM Customers ;
SELECT*FROM Categories;
SELECT*FROM OrderDetails;
SELECT*FROM Orders;
SELECT*FROM Customers;
SELECT*FROM Products;
SELECT*FROM Products WHERE ProductName LIKE 'C%S';
SELECT*FROM Products WHERE ProductName LIKE  'C____';
SELECT*FROM Products WHERE ProductName LIKE  'C__%' ORDER BY ProductName;
SELECT*FROM Products WHERE ProductName LIKE  'C_%_%';
SELECT*FROM Customers ORDER BY Country DESC;
SELECT*FROM Customers ORDER BY Country DESC, City ASC;
SELECT*FROM Customers ORDER BY Country DESC, City ;
SELECT*FROM Customers ORDER BY Country DESC, City DESC;
SELECT*FROM Employees ORDER BY BirthDate ;
SELECT*FROM Products ORDER BY Price DESC;
SELECT*FROM Products ORDER BY Price ;
SELECT ProductName, ProductID FROM Products ORDER BY Price ;
select*from Customers;

INSERT INTO Employees(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES (10,'Son','HM', '1999-01-01', 'EmpID10.pic','soccer player');
SELECT *FROM Employees;
INSERT INTO Employees(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes) values(12,'Sons','HM', '1999-01-01', 'EmpID10.pic','soccer player');
INSERT INTO Employees(EmployeeID, LastName, FirstName, BirthDate, Photo, Notes) values(13,'Sons1','HM', '1999-01-01', 'EmpID10.pic','soccer player');
DELETE   FROM Employees  ;
 INSERT INTO Employees(EmployeeID,  FirstName, BirthDate, Photo, Notes) values(15,'Sons','1999-01-01', 'EmpID10.pic','soccer player');
INSERT INTO Employees( LastName, FirstName, BirthDate, Photo, Notes) values('Sons','HM','1999-01-01', 'EmpID10.pic','');
INSERT INTO Employees( LastName, FirstName, BirthDate, Photo) values('Sons','HM','1999-01-01', 'EmpID10.pic');
SELECT*FROM Employees WHERE Notes is null;
SELECT*FROM Employees WHERE Notes is not null;
DESCRIBE Employees;
select*from Employees;
select * FROM Customers WHERE CustomerID=93;
UPDATE Customers SET ContactName = 'Alfrde' WHERE CustomerID=1; 
UPDATE Customers SET ContactName = 'Alfrde', CustomerName='a', Address='b', City='c', postalcode='11'
WHERE CustomerID=93; 

UPDATE Customers
SET Address = 'GangNam22'
WHERE Country = 'uk';

SELECT * from Customers WHERE Country='uk';

SET SQL_SAFE_UPDATES=0;

SELECT *from Products;
SELECT *from Products ORDER BY price;

SELECT min(price) from Products;

SELECT * FROM Customers ORDER BY CustomerName;
SELECT * from Customers ;
SELECT min(CustomerName) FROM Customers;
select count(*) from Customers;
select count(CustomerName) from Customers;
SELECT count( *) from Products where Price>100;
SELECT * FROM Products;
SELECT*FROM Employees;
select avg(Quantity) from OrderDetails;
SELECT * FROM OrderDetails;
SELECT sum(Quantity) from OrderDetails;
INSERT into Products ;
INSERT INTO Customers value();
SELECT CustomerName ,ifnull( customerName, "aabb") FROM Customers;
SELECT * ,ifnull( customerName, "aabb") FROM Customers;





-- 컬럼 또는 테이블에 별칭을 줄 수 있다
SELECT CustomerID as id, CustomerName as n from Customers;
SELECT CustomerID as id, ifnull(CustomerName, 'ano') from Customers;
SELECT ifnull( customerName, "aabb") FROM Customers;
SELECT Employeeid as id, Firstname as fn , lastname as ln ,birthdate as b from Employees;
SELECT Employeeid  id, Firstname  fn , lastname  ln ,birthdate  b from Employees;
insert into Products VALUEs();			
SELECT *, ifnull(price, 0.00) price from Products ORDER BY price;
INSERT INTO Products VALUE();
INSERT INTO Products(price) VALUE(NULL);
-- concat : 스트링을 연결한 결과 리턴
SELECT concat('ab','de');
SELECT * , concat('ab','de') FROM Customers;
SELECT concat('firstname',' ','lastname') from Employees;
SELECT concat('FirstName',' ','LastName') from Employees;
SELECT concat(FirstName, '     ',LastName) from Employees;
SELECT * FROM Employees;





-- aggregate function  :집합 함수, 그룹함수 
SELECT max(price) FROM Products;
SELECT * FROM Products ORDER BY price ;
SELECT * FROM Products ;
SELECT  count(*)  from Products GROUP BY Price ;
SELECT      *  from Products GROUP BY Price ;
SELECT  count(price)  from Products GROUP BY Price ;

SELECT * from Products GROUP BY CategoryID;
SELECT max(price), CategoryID from Products GROUP BY CategoryID;
SELECT AVG(price), CategoryID from Products GROUP BY CategoryID;
SELECT avg(Price) CategoryID from Products GROUP BY CategoryID;
SELECT min(price), CategoryID from Products GROUP BY CategoryID;
SELECT sum(price), CategoryID from Products GROUP BY CategoryID;
SELECT*from Customers; 
SELECT*FROM Suppliers;
SELECT Country, count(CustomerID)from Customers GROUP BY Country;
SELECT Country, count(*)from Customers GROUP BY Country;
SELECT Country, city,count(*)from Customers GROUP BY Country, City;






-- having : 집합함수 결과에 조건 추가 
SELECT count(*)>avg(price);
SELECT * from Products;




-- 쿼리가 다른 쿼리 안에 작성될 수 있다
SELECT max(price) from Products;

SELECT ProductName, max(price) from Products;
SELECT ProductName from Products;
SELECT * from Products WHERE price=(SELECT max(Price) from Products);

SELECT avg(Price) from Products;
SELECT * , avg(Price)  FROM Products WHERE  Price > (SELECT avg(Price)FROM Products);   --  ??
SELECT *  FROM Products WHERE Price > (SELECT avg(Price)FROM Products);   -- ??
SELECT * FROM Products WHERE Price<(SELECT avg(Price)FROM Products);

SELECT * from ( SELECT categryId,   ;


-- LIMIT : 조회 결과  row  수를제한 
select *from Customers;
SELECT * FROM Products ORDER BY Price DESC LIMIT 3;
SELECT*FROM Employees ;
SELECT*FROM Employees ORDER BY BirthDate LIMIT 3;
SELECT*FROM Employees ORDER BY BirthDate DESC LIMIT 2;

-- LIMIT 로 중간 record만 조회할 때 
SELECT * from Customers  ORDER BY CustomerID LIMIT 3,3 ;
SELECT * from Customers  ORDER BY CustomerID LIMIT 0,3 ;
SELECT * from Customers  ORDER BY CustomerID LIMIT 0,3 ;
SELECT *FROM Employees ORDER BY BirthDate LIMIT 1,2;
SELECT *FROM Employees ORDER BY BirthDate DESC LIMIT 1,1;
SELECT*FROM Products ORDER BY Price DESC LIMIT 9,1;
SELECT*FROM Products ORDER BY Price DESC ;



--
-- SELECT는 컬럼선택이 아니라 그냥 아무거나(값?) 선택출력 기능..
-- SELECT COUNT(*)  ( FROM Products WHERE Price > 100.00 );   
-- () 묶으면 테이블? 
-- count는 row를 세는 (null제외)
SELECT COUNT(*) FROM Products WHERE Price > 100.00;
SELECT COUNT(ProductName) FROM Products WHERE Price > 100.00;
SELECT count(*) from Products;
SELECT count(ProductName) from Products;
SELECT * from Products;
INSERT INTO Products(productid, price) VALUE(999,999);
DELETE FROM Products WHERE ProductID=999;
SELECT AVG(Price) FROM Products;
SELECT ProductID,ProductName, AVG(Price) FROM Products;    -- 이렇게하면... 그냥 관계없는 productID , name 선택됨(첫번째). 


SELECT * from Customers;

INSERT INTO Customers(customerName, contactname, address, city, postalcode, Country)
SELECT customerName, contactname, address, city, postalcode, Country from Customers;




-- Database(schema) 만들기
CREATE database mydb1;

-- database 사용하기
use mydb1;
use w3schools;
select * FROM Customers;

SELECT;
INSERT INTO;
DELETE;
UPDATE;

-- 다른 데이터베이스에 있는 테이블 사용하기
  -- 앞에 데이터베이스이름 붙여서 사용
SELECT* from w3schools.Categories;


-- 데이터베이 삭제하기
DROP DATABASE w3schools;


-- CREATE TABLE
use mydb1;
CREATE TABLE myTable01(
colum1 VARCHAR(255),
 col2 VARCHAR(255),
 col3 VARCHAR(255)
);
select *FROM myTable01;
DESCRIBE myTable01;
DESCRIBE mT02;
CREATE TABLE mT02(name VARCHAR(255), age VARCHAR(255), address VARCHAR(255));

-- TABLE 삭제
DROP TABLE myTable01;  -- db나 테이블 등 데이터 삭제 시에는 항상 백업 후.


-- 테이블 복사해서 가져오기
CREATE TABLE myEmployees as
(SELECT * from w3schools.Employees);
SELECT * FROM myEmployees;
SELECT * FROM myEmployees2;
CREATE TABLE myEmployees2 as
SELECT * from w3schools.Employees;

CREATE TABLE myProducts AS
SELECT ProductID id,
       ProductName name,
	   Price price
FROM w3schools.Products;
DESC myProducts;

SELECT * FROM myProducts;

CREATE TABLE myEmployees3 AS
SELECT * FROM w3schools.Employees;
DESC myEmployees;
SELECT * FROM myEmployees;

drop DATABASE mydb1;
CREATE DATABASE mydb1;
use mydb1;
CREATE TABLE myTable02 (
	name VARCHAR(255),
    age VARCHAR(255),
    address VARCHAR(255)
);
CREATE TABLE myCustomers AS
SELECT * FROM w3schools.Customers;
CREATE TABLE myEmyEmployeesmployees as
SELECT * from w3schools.Employees;

create TABLE myTable01(
col1 VARCHAR(5),myEmployeesmyEmployees
col2 VARCHAR(2));

INSERT INTO myTable01 (col1, col2)
values ('afff','    ');

SELECT*from myEmployees;
SELECT*FROM myCustomers;
SELECT*FROM myEmployees;
drop TABLE myEmployees;
CREATE TABLE myEmployees AS
SELECT * FROM w3schools.Employees;
DESC myEmployees;
SELECT * FROM myEmployees;

CREATE TABLE myEmployees AS
SELECT * FROM w3schools.Employees;
DESC myEmployees;
SELECT * FROM Employees;
SELECT * FROM myEmployees;
create TABLE my as
select*from w3schools.Categories;
SELECT *from my;
select*from Categories;

create TABLE myTable3(
c1 int(1) ZEROFILL, 
c2 int(2), 
c3 int(225)
);
create TABLE myTable311(
c1 int(1) ZEROFILL, c2 int(2) ZEROFILL , c3 int(225) ZEROFILL
);
INSERT into myTable311 (c1,c2,c3)values(1,2,3);
INSERT into myTable3 (c1,c2,c3)values(11111111111,2,3);
SELECT * from myTable311;

create TABLE ta1(c1 decimal(10,2),
c2 decimal(10,3),
c3 decimal(10,4),
c4 decimal(10,5),
c5 decimal(10,10)
);
insert into ta1 (c1,c2,c3,c4) VALUE (111,111,111,111);
SELECT * from ta1;

CREATE TABLE t2( c1 DATE , c2 DATETIME);
insert into t2( c1,c2) VALUE(1977-11-11,2222-11-11
); 

create TABLE myTable07 ( col1 int  , col2 double);

CREATE TABLE myTable07 (
	col1 INT,
    col2 DEC(10, 3),
    col3 VARCHAR(255),
    col4 CHAR(3),
    col5 DATE,
    col6 DATETIME
);
SELECT * FROM myTable07;
DROP table myTable07;

CREATE TABLE myTable08 (
	name VARCHAR(255),
    age INT,
    score DEC(10, 2),
    address VARCHAR(255),
    birthDate DATE,
    inserted DATETIME
);
CREATE TABLE t71 (
	col1 INT,
    col2 DEC(10, 3),
    col3 VARCHAR(255),
    col4 CHAR(3),
    col5 DATE,
    col6 DATETIME
);
SELECT *from t71;
SELECT *from t9;

create table t9( c1 CHAR(11));
INSERT into t9 (c1) VALUE('kaaaaaaad11111');
DROP table t9;

-- not null
create TABLE t10( c1 VARCHAR(255),    c2 VARCHAR(255) not null);
DESC t10;
insert into t10 (c1,c2) values('a','b');

insert into t12 (c2) values(1);

SELECT * from t12;

CREATE TABLE t12(
c1 int, c2 int not null, c3 int DEFAULT 99, c4 int not null DEFAULT 99);
insert into t10 (c2) values('b');
insert into t10 (c1) values('b');
select now();
create table t13(name VARCHAR(255) NOT null , birth date, inserted DATETIME not null default now());
SELECT * from t13;

create TABLE t14 ( c1 int, c2 int, check (c2>=0) );
insert into t14 ( c1,c2) VALUE(1,-1);
insert into t14 ( c1,c2) VALUE(1,1);

CREATE TABLE MyTable15 (
	col1 INT,
    col2 INT UNIQUE
);

INSERT INTO MyTable15 (col1, col2) VALUES (1, 1);
INSERT INTO MyTable15 (col1, col2) VALUES (1, 2);
INSERT INTO MyTable15 (col1, col2) VALUES (1, 2);
INSERT INTO MyTable15 (col1) VALUES (1);
SELECT * FROM MyTable15;

DESC MyTable15;
DESC MyTable14;
DESC MyTable13;
DESC MyTable12;

CREATE TABLE t17(c1 int, c2 int);
SELECT* from t17;
ALTER TABLE t17 ADD c7 VARCHAR(255) not null  unique default 'empty'  ;
ALTER TABLE t17 ADD c4 VARCHAR(255)   unique default 'e'  ;
ALTER TABLE t17 ADD c4 VARCHAR(255) not null default 'empty'  ;



DESC t17;
INSERT into t17 () value ();
INSERT into t17 (c7) value ('s');
-- // ? 0	278	15:10:58	ALTER TABLE t17 ADD c4 VARCHAR(255) not null  unique default 'e'	Error Code: 1062. Duplicate entry 'e' for key 'c4'	0.015 sec

-- 어떤 테이블이 다른 테으블의 프라이머리키를(?) 컬럼으로 가지고 있을 때 그 키를 forien key(여러개 가능)라고 함. 두 테이블의 연결성.  
        -- 정규화 때문에 테이블이 나눠지게되는데, 포린키를 이용해서 여러 테이블을 연결해줌.
         --   ? 종속된 컬럼이 없도록 하라고? 
create DATABASE mydb2;
use mydb2;
create table Products as SELECT*from w3schools.Products;
CREATE TABLE Categories as SELECT * from w3schools.Categories;
DESC Products;
DESC Categories;
SELECT*from Products;
select*from Categories;
alter table Products
add primary key (ProductID);
alter TABLE Categories
ADD PRIMARY KEY(CategoryID);
alter table Products
add FOREIGN KEY(CategoryID)
references Categories(CategoryID);





----
-- aggregate function : 집합 함수, 그룹 함수
SELECT * FROM Products;
SELECT * FROM Products ORDER BY CategoryID, Price DESC;
SELECT MAX(Price) FROM Products;
SELECT CategoryID, MAX(Price) FROM Products;


SELECT CategoryID, MAX(Price) 
FROM Products
GROUP BY CategoryID;
SELECT CategoryID 
FROM Products
GROUP BY CategoryID;

-- CategoryID별 가장 작은 값
SELECT CategoryID, MIN(Price) FROM Products GROUP BY CategoryID;
-- CategoryID별 평균 가격
SELECT CategoryID, AVG(Price) FROM Products GROUP BY CategoryID;
-- CategoryID별 가격 합
SELECT CategoryID, SUM(Price) FROM Products GROUP BY CategoryID;


-- 나라별 고객 수 (Customers)
SELECT Country, COUNT(*) FROM Customers GROUP BY Country;
SELECT * FROM Customers;
-- 도시별 공급자 수 (Suppliers)
SELECT City, COUNT(*) FROM Suppliers GROUP BY City;


-- 나라별, 도시별 고객 수
SELECT Country, City, COUNT(*) 
FROM Customers 
GROUP BY Country, City;

-- HAVING : 집합 함수 결과에 조건을 추가
SELECT Country,city, COUNT(*) 
FROM Customers 
GROUP BY City
HAVING COUNT(*) > 5;
SELECT *
FROM Customers ;
GROUP BY Country;
HAVING COUNT(*) > 5;


-- 상품 테이블에서 카테고리별 평균
-- 카테고리별 평균이 30.00 보다 큰 것만 조회
SELECT CategoryID, 
       AVG(Price) average
FROM Products
GROUP BY CategoryID
HAVING AVG(Price) > 30;

-- 서브 쿼리 : 쿼리가 다른 쿼리안에 작성될 수 있다

SELECT ProductName, MAX(Price) FROM Products;
SELECT ProductName, Price FROM Products WHERE ProductName = 'Chais';

-- 가장 높은 가격의 상품명 조회
SELECT ProductName FROM Products
WHERE Price = 
(SELECT min(Price) FROM Products) ; 
SELECT * FROM Products
WHERE Price = 
(SELECT min(Price) FROM Products) ; 

-- 가장 낮은 가격의 상품명 조회
SELECT * FROM Products
WHERE Price = 
(SELECT MIN(Price) FROM Products);

-- 평균 가격 보다 가격이 높은 상품들 조회
SELECT * FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);
-- 평균 가격 보다 가격이 낮은 상품들 조회
SELECT * FROM Products
WHERE Price < (SELECT AVG(Price) FROM Products);

-- 카테고리별 평균
SELECT * 
FROM 
	(SELECT CategoryID, 
			AVG(Price) average
	FROM Products 
	GROUP BY CategoryID) 
WHERE average > 30;
(SELECT CategoryID, 
			AVG(Price) average
	FROM Products 
	GROUP BY CategoryID) A
WHERE average > 30;




SELECT * FROM (SELECT CategoryID, AVG(Price) average FROM Products GROUP BY CategoryID) aadd
 WHERE average > 30;
SELECT * FROM  Products;

use mydb2;
create table Student( id int primary key AUTO_INCREMENT, name  VARCHAR(255),  age int,  gender VARCHAR(1));
insert into Student (age, gender) VALUES(22,'m');
SELECT * from Student;
INSERT INTO Student (id, name, age, gender)
VALUES (1, 'kim', 30, 'F');
DELETE from Student WHERE id=1;





CREATE DATABASE mydb3;
USE mydb3;
-- '네이버 영화 상영작' 페이지 관련 테이블
CREATE TABLE Movie (
	id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    time VARCHAR(255) DEFAULT 0,
    releaseDate DATE
);

CREATE TABLE Director (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL
);

CREATE TABLE MovieDirector (
	movieId INT NOT NULL,
    directorId INT NOT NULL,
    FOREIGN KEY (movieId) REFERENCES Movie(id),
    FOREIGN KEY (directorId) REFERENCES Director(id),
    PRIMARY KEY (movieId, directorId)
);

CREATE TABLE Genre (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE MovieGenre (
	movieId INT NOT NULL,
    genreId INT NOT NULL,
    PRIMARY KEY (movieId, genreId),
    FOREIGN KEY (movieId) REFERENCES Movie(id),
    FOREIGN KEY (genreId) REFERENCES Genre(id)
);

CREATE TABLE Actor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);

CREATE TABLE MovieActor (
	movieId INT NOT NULL,
    actorId INT NOT NULL,
    PRIMARY KEY (movieId, actorId),
    FOREIGN KEY (movieId) REFERENCES Movie(id),
    FOREIGN KEY (actorId) REFERENCES Actor(id)
);


SELECT* from MovieDirector;

create DATABASE mydb4;
use mydb4;

create DATABASE mydb5;
use mydb5;
CREATE table Categories as SELECT CategoryID, CategoryName from w3schools.Categories;
CREATE table Products as SELECT CategoryID, ProductName from w3schools.Products;
SELECT*from Products;
SELECT*from Categories;
-- 서브쿼리 / 조인
drop TABLE Products;
DESC Products;
CREATE TABLE Products
AS
SELECT ProductID, ProductName, CategoryID
FROM w3schools.Products;

-- Cartesian Product




CREATE DATABASE mydb5;
USE mydb5;

CREATE TABLE Categories
AS
SELECT CategoryID, CategoryName 
FROM w3schools.Categories;

CREATE TABLE Products
AS
SELECT ProductID, ProductName, CategoryID
FROM w3schools.Products;


SELECT * FROM Products;
SELECT * FROM Categories;

-- 'Chais'상품이 어떤 카테고리명에 소속되어 있는가?
SELECT * FROM Products WHERE ProductName = 'Chais';
SELECT * FROM Categories WHERE CategoryId = 1;

SELECT * FROM Categories WHERE CategoryID = (SELECT CategoryID
                                             FROM
                                             Products
                                             WHERE ProductName = 'Chais');
                                             
-- JOIN : 두 개 이상의 테이블을 연결해서 조회할 수 있다

-- CARTESIAN PRODUCT
-- 결과행 = Arow X Brow
-- 결과열 = Acol + Bcol

DESC Products; -- 3 cols
SELECT COUNT(*) FROM Products; --  77 rows, 

DESC Categories; -- 2cols
SELECT COUNT(*) FROM Categories; --  8 rows

-- Products와 Categories 를 Cartesian Product 
-- 결과행의수: 77 * 8
-- 결과열의수: 3 + 2

-- Cartesian Product 
SELECT * FROM Products JOIN Categories; -- 행:616, 열:5
SELECT COUNT(*) FROM Products JOIN Categories;

SELECT * FROM Products JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID
;

SELECT * FROM Products JOIN Categories 
ON Products.CategoryID = Categories.CategoryID
WHERE Products.ProductName = 'Chais';

SELECT * FROM Products JOIN Categories 
WHERE Products.CategoryID = Categories.CategoryID
  AND Products.ProductName = 'Chais';











CREATE DATABASE mydb51;
USE mydb51;

CREATE TABLE Categories
AS
SELECT CategoryID, CategoryName 
FROM w3schools.Categories;

CREATE TABLE Products
AS
SELECT ProductID, ProductName, CategoryID
FROM w3schools.Products;


SELECT * FROM Products;
SELECT * FROM Categories;

-- 'Chais'상품이 어떤 카테고리명에 소속되어 있는가?
SELECT * FROM Products WHERE ProductName = 'Chais';
SELECT * FROM Categories WHERE CategoryId = 1;

SELECT * FROM Categories WHERE CategoryID = (SELECT CategoryID
                                             FROM
                                             Products
                                             WHERE ProductName = 'Chais');
                                             
-- JOIN : 두 개 이상의 테이블을 연결해서 조회할 수 있다

-- CARTESIAN PRODUCT
-- 결과행 = Arow X Brow
-- 결과열 = Acol + Bcol

DESC Products; -- 3 cols
SELECT COUNT(*) FROM Products; --  77 rows, 

DESC Categories; -- 2cols
SELECT COUNT(*) FROM Categories; --  8 rows

-- Products와 Categories 를 Cartesian Product 
-- 결과행의수: 77 * 8
-- 결과열의수: 3 + 2

SELECT * FROM Products;
SELECT * FROM Categories;
-- Cartesian Product 
SELECT * FROM Products JOIN Categories; -- 행:616, 열:5
SELECT * FROM Categories JOIN Products;
SELECT COUNT(*) FROM Products JOIN Categories;

SELECT * FROM Products JOIN Categories
WHERE Products.CategoryID = Categories.CategoryID
;

SELECT * FROM Products JOIN Categories 
ON Products.CategoryID = Categories.CategoryID
WHERE Products.ProductName = 'Chais';

SELECT * FROM Products JOIN Categories 
WHERE Products.CategoryID = Categories.CategoryID
  AND Products.ProductName = 'Chais';

-- Ikura 라는 상품의 카테고리명 조회
SELECT CategoryName
FROM Products JOIN Categories ON Products.CategoryId = Categories.CategoryID
WHERE Products.ProductName = 'Ikura';
-- Seafood 카테고리에 속한 상품명들 조회
SELECT * FROM Categories
WHERE CategoryName = 'Seafood';
SELECT * FROM Products
WHERE CategoryID = 8;

SELECT Products.ProductName 
FROM Categories JOIN Products 
     ON Categories.CategoryID = Products.CategoryID
WHERE Categories.CategoryName = 'Seafood';



SELECT * from Products;
SELECT * from Suppliers;
SELECT s.City from Suppliers s JOIN Products p on p.SupplierID=s.SupplierID WHERE p.ProductName='Tofu'; 

SELECT*from Orders WHERE OrderDate='1996-07-04';
SELECT * from Customers;
SELECT c.CustomerName from Customers c join Orders o on c.CustomerID=o.CustomerID WHERE OrderDate ='1996-07-04';
SELECT * from Customers c join Orders o on c.CustomerID=o.CustomerID WHERE OrderDate ='1996-07-04';
SELECT e. LastName from Employees e join Orders o on e.EmployeeID=o.EmployeeID WHERE OrderDate ='1996-07-04';
SELECT s.ShipperName from Shippers s join Orders o on s.ShipperID=o.ShipperID WHERE OrderDate ='1996-07-04';

SELECT * from Employees;
SELECT * from Shippers;
SELECT*from Customers;
SELECT*from OrderDetails;
SELECT*from Orders;
SELECT*from Products;
SELECT * from Products p JOIN OrderDetails od on p.ProductID=od.ProductID
											JOIN Orders o on o.OrderID=od.OrderID
                                             WHERE OrderDate ='1996-07-04';
SELECT *,(Quantity*Price) from Products p JOIN OrderDetails od on p.ProductID=od.ProductID
											JOIN Orders o on o.OrderID=od.OrderID
                                             GROUP BY o.OrderDate;
SELECT *,(Quantity*Price) from Products p JOIN OrderDetails od on p.ProductID=od.ProductID
											JOIN Orders o on o.OrderID=od.OrderID
                                             GROUP BY OrderDetailID;

SELECT CustomerID,(Quantity*Price) from Products p JOIN OrderDetails od on p.ProductID=od.ProductID
											JOIN Orders o on o.OrderID=od.OrderID
                                             GROUP BY CustomerID; -- customer  id 별로 합계가 나오는게 아니라 그냥 해당되는 첫 행이 (Quantity*Price)컬럼의 row로 나옴...
                                             
                                             
SELECT CustomerID, SUM(Quantity*Price) from Products p JOIN OrderDetails od on p.ProductID=od.ProductID
											JOIN Orders o on o.OrderID=od.OrderID
                                             GROUP BY CustomerID;								
SELECT CustomerID, SUM(Quantity*Price) from Products p JOIN OrderDetails od on p.ProductID=od.ProductID
											JOIN Orders o on o.OrderID=od.OrderID;
                                                                                          
											
 select * from Customers;                              
 SELECT*from Orders;
 SELECT*from OrderDetails join Orders;
SELECT*from OrderDetails;

SELECT * from Products p JOIN OrderDetails od on p.ProductID=od.ProductID
											JOIN Orders o on o.OrderID=od.OrderID;

SELECT e.LastName, s.ShipperName from Employees e JOIN Orders o on e.EmployeeID=o.EmployeeID
																						JOIN Shippers s on s.ShipperID=o.ShipperID
                                                                                        WHERE OrderDate ='1996-07-04';




SELECT * from Customers GROUP BY city;
SELECT City, COUNT(*) FROM Customers GROUP BY City; -- 뭘 세는거지? 모든것이 뭐지? 
SELECT COUNT(*) FROM Customers GROUP BY City;

use mydb5;
CREATE DATABASE db6;
use db6;

SELECT *,CategoryID,  
       AVG(Price) average
FROM Products
GROUP BY CategoryID;
HAVING AVG(Price) > 30;

SELECT * ,COUNT() -- 카운트는 행을 세는거지?
FROM Products
GROUP BY CategoryID;

SELECT *  -- 카운트는 행을 세는거지?
FROM Products;


SELECT * FROM Products
WHERE Price >= 
(SELECT AVG(Price) FROM Products);

SELECT ProductID
FROM 
	(SELECT *, 
			AVG(Price) average
	FROM Products 
	GROUP BY CategoryID) A
WHERE average > 30;


SELECT * 
FROM 
	(SELECT CategoryID, 
			AVG(Price) average
	FROM Products 
	) A;
WHERE average > 30;

SELECT avg(Price) from Products;
SELECT * from Products WHERE price>=(SELECT avg(Price) from Products ) ; -- 여기는 변수(?)이름 안써줘도 되고?
SELECT * from (SELECT *from Products) a  ;   -- 여기는 변수(?)이름 써줘야하고?

-- CHECK : 조건에 맞는 데이터만 입력 가능
CREATE TABLE MyTable14 (
	col1 INT,
    col2 INT,
    id int ,
    CHECK (col2 <0 or col1<0 or col1=0)
);
DROP TABLE MyTable14;
INSERT INTO MyTable14 (col1, col2)
VALUES (0, 33333);
INSERT INTO MyTable14 (col1, col2)
VALUES (-333, 33333);
INSERT INTO MyTable14 (col1, col2)
VALUES (-333, -33333);


SELECT * FROM MyTable14;
d
CREATE TABLE MyTable16 (
	
    col1 INT,
    col2 INT NOT NULL UNIQUE
     col3 int PRIMARY KEY
);
DROP TABLE MyTable16;



CREATE TABLE MyTable16 (
	col1 INT,
    col2 INT NOT NULL UNIQUE,
    col3 int PRIMARY KEY
);
CREATE TABLE MyTable16 (
	col1 INT,
    col2 INT NOT NULL UNIQUE,
    col3 int PRIMARY KEY
);
DESC MyTable16;
INSERT INTO MyTable16 (col1, col2, col3)
VALUES (1, 1, 1);
INSERT INTO MyTable16 (col1, col2, col3)
VALUES (1, 2, 2);
INSERT INTO MyTable16 (col1, col2, col3)
VALUES (1, 2, 3);
INSERT INTO MyTable16 (col1, col2, col3)
VALUES (1, 3, 2);
INSERT INTO MyTable16 (col1, col2)
VALUES (1, 3);
SELECT * FROM MyTable16;


CREATE TABLE MyTable17 (
	col1 INT,
    col2 INT
);

ALTER TABLE MyTable17
ADD COLUMN col3 INT;

ALTER TABLE MyTable17
ADD COLUMN col44 INT NOT NULL UNIQUE AUTO_INCREMENT;
insert into MyTable17 ()VALUE();
alter TABLE MyTable17 add COLUMN col4 int PRIMARY key DEFAULT 0;

SELECT*from MyTable17;
drop colum co1l;
ALTER TABLE MyTable17 DROP COLUMN col1;
DROP TABLE MyTable17;
ALTER TABLE MyTable17
ADD COLUMN col5 INT FIRST;

ALTER TABLE MyTable17
ADD COLUMN col6 INT AFTER col2;

DESC MyTable17;

-- col7 컬럼 추가
-- type : VARCHAR(255)
-- constraints : NOT NULL, UNIQUE, DEFAULT 'empty'
ALTER TABLE MyTable17
ADD COLUMN col7 VARCHAR(255) NOT NULL UNIQUE DEFAULT 'empty';




-- MODIFY COLUMN : 컬럼 수정
-- 변경하는 데이터의 타입, 제약사항을
-- 이미 있는 데이터가 위반하고 있지 않는 지 먼저 확인
DESC MyTable17;
ALTER TABLE MyTable17
MODIFY COLUMN col1 INT NOT NULL;
SELECT * FROM MyTable17;
INSERT INTO MyTable17 (col1, col6, col3, col4)
VALUES (3, 3, 3, 3);
ALTER TABLE MyTable17
MODIFY COLUMN col2 INT NOT NULL;

-- col3 변경
-- 타입 : VARCHAR(255)
-- 제약사항 : UNIQUE
ALTER TABLE MyTable17
MODIFY COLUMN col3 VARCHAR(255) UNIQUE;


create DATABASE mydb6;
use mydb6;
create table ta(c1 int);
create table tb(c11 int);
DROP TABLE tb;
INSERT into ta(c1)VALUEs (1),(2),(3),(4),(5);
INSERT into tb(c11)VALUEs (2),(4),(5),(7),(8);
SELECT*from ta;
SELECT*from tb;
DESC ta;
desc tb;
select * from ta JOIN tb;
select * from ta JOIN tb on ;
select * from ta LEFT join tb on ta.c1=tb.c11;
select * from ta right join tb on ta.c1=tb.c11 ;

CREATE DATABASE leetcode1587;
USE leetcode1587;
CREATE TABLE Users (
	account INT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE Transactions (
	trans_id INT PRIMARY KEY,
    account INT,
    amount INT,
    transacted_on DATE
);

INSERT INTO Users (account, name)
VALUES 
(900001, 'Alice'),
(900002, 'Bob'),
(900003, 'Charlie');

INSERT INTO Transactions (trans_id, account, amount, transacted_on)
VALUES
(1, 900001, 7000, '2020-08-01'),
(2, 900001, 7000, '2020-09-01'),
(3, 900001, -3000, '2020-09-02'),
(4, 900002, 1000, '2020-09-12'),
(5, 900003, 6000, '2020-08-07'),
(6, 900003, 6000, '2020-09-07'),
(7, 900003, -4000, '2020-09-11');


SELECT u.name, sum(amount) balance 
from Transactions s join Users u on s.account=u.account  GROUP BY u.name
having(balance>=10000);
select * from Users;
select * from Transactions;

SELECT name, sum(amount) balance 
from Transactions  join Users  on account=account  GROUP BY name;
select * from Users;
select * from Transactions;

SELECT o.OrderDate, SUM(d.Quantity * p.Price)
FROM Orders o JOIN OrderDetails d ON o.OrderID = d.OrderID
              JOIN Products p ON d.ProductID = p.ProductID
GROUP BY o.OrderDate
ORDER BY o.OrderDate ;
select p.firstName, p.lastName,a.city,a.state from Person p RIGHT JOIN Address a on p.personId=a.personId;

select v.customer_id, count( t.visit_id where t.visit_id=null) count_no_trans from Visits v join Transactions t on v.visit_id = t.visit_id group by v.customer_id;
select v.customer_id, count( t.visit_id where t.visit_id=null) count_no_trans from Visits v join Transactions t on v.visit_id = t.visit_id group by v.customer_id;



SELECT v.customer_id, COUNT(v.visit_id) count_no_trans
FROM Visits v LEFT JOIN Transactions t ON v.visit_id = t.visit_id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;


# Write your MySQL query statement below
select v.customer_id, count(t.visit_id) count_no_trans
from Visits v left join Transactions t on v.visit_id = t.visit_id 
where t.transaction_id is null
group by v.customer_id;

use mydb6;
select *from ta union
select *from tb;

select *from ta union all
select *from tb;

select *from ta left join tb on c1=c11   UNION
select *from ta RIGHT JOIN tb on c1=c11   ;


select * from MyTable16;

select * from Employees;
alter ;

create TABLE Bank(customerId int PRIMARY key, balance INT);
insert into Bank (customerId, balance )values(1,10000),(2,50000);
select * from Bank;
drop TABLE Bank; 
update Bank set balance = balance -5000 where customerId=1;
update Bank set balance = balance +5000 where customerId=2;
-- transaction 
set autocommit = 0;
SHOW VARIABLES WHERE Variable_name = 'autocommit';
SHOW VARIABLES WHERE eee = 'autocommit';
-- AUTO COMMIT --> disable
SET autocommit = 1;

-- 송금업무
-- 2번 고객이 1번 고객에게 5000원 송금함
UPDATE Bank
SET balance = balance - 5000
WHERE customerId = 2;
SELECT * FROM Bank;
UPDATE Bank
SET balance = balance + 5000
WHERE customerId = 1;
ROLLBACK;
COMMIT;

create TABLE Salary22( EmployeeID int PRIMARY KEY );
SELECT * from Salary22;


create TABLE Salary( EmployeeID int PRIMARY KEY, Salary int DEFAULT 0 ); 
ALTER TABLE Salary
MODIFY COLUMN Salary int;

SELECT * from Employees;
ALTER TABLE Salary
DROP COLUMN EmployeeID;
ALTER TABLE Employees
DROP COLUMN EmployeeID;
SELECT * from Salary;
UPDATE Employees (Salary) value (1) where lastName = Davolio;
UPDATE Employees set Salary=1 where lastName='Davolio';
delete from Employees where EmployeeID >9;
insert into Salary(EmployeeID,Salary) values(1,1000),(2,2000),(3,3000),(4,4000),(5,5000),(6,6000),(7,7000),(8,8000),(9,9000);
ALTER TABLE Employees
ADD Salary INT;
ALTER TABLE Salary
ADD LastName VARCHAR(255);
DESC Salary;
desc Employees;

create TABLE Employees1 (LastName VARCHAR(255), Salary INT);
create TABLE Salary1 (LastName VARCHAR(255), Salary INT);
SELECT * from Salary1;
SELECT * from CustomerNameEmployees1;
insert INTO Employees1(LastName,Salary)values('a',1);
insert INTO Salary1(LastName,Salary)values('a',1);
UPDATE Salary1 set Salary=11 where lastName='a';

ALTER TABLE Salary1 add COLUMN id int PRIMARY KEY;
ALTER TABLE Employees1 add COLUMN id int PRIMARY KEY;

UPDATE Salary1 set Salary= 23 where lastName='a';
UPDATE Employees1 set Salary=10 where lastName='a';
 select* from Bank;


SELECT*from Customers;
SELECT CustomerName FROM w3schools.Customers WHERE CustomerId = 77;
SELECT*from Products;


SELECT Price from Products WHERE ProductID=3;
SELECT* from OrderDetails;
SELECT Quantity from OrderDetails where OrderDetailID=1;
select*from Employees;
SELECT BirthDate from Employees WHERE EmployeeID=3;
select CustomerName from Customers;
select CustomerID from Customers;
select Price from Products;
	select FirstName, LastName from Employees where EmployeeID=1;
    select CustomerName name, Country c from Customers where CustomerID=55;
    select ProductName name, Price from Products;
    
    SELECT 
	p.productId,
    p.productName,
    p.price,
    s.supplierId,
    s.supplierName,
    s.phone
FROM 
	Products p JOIN Suppliers s
    ON p.SupplierID = s.SupplierID
WHERE
	p.ProductID = 10;

SELECT 
	c.CategoryID,
    c.CategoryName,
    p.ProductName
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
WHERE c.CategoryId = 7	;

SELECT c. CategoryID, c.CategoryName, p.ProductName, p.Price  from Categories c JOIN Products p on c.CategoryID = p.CategoryID
where c.CategoryID=7;



SELECT*from Categories c JOIN Products p on c.CategoryID = p.CategoryID
where p.CategoryID=7;

sELECT 
		s.SupplierID,
	    s.SupplierName,
	    p.ProductId,
	    p.ProductName,
	    p.Price
	FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID
	WHERE s.SupplierID = 1	;


select Productname from Products where price<=20;
select Productname, price from Products where price &lt; 20;

select FirstName FROM Employees where BirthDate > 1970;
select FirstName FROM Employees where BirthDate > 19822;
select FirstName FROM Employees where BirthDate > '1960-10-01';
select FirstName FROM Employees where BirthDate &gt; '1960-10-01';
select*FROM Employees ;
select*FROM Customers;
select*FROM Suppliers;

select * from Customers where 

;
SELECT * from Products;
SELECT productName from Products  where CategoryId=1
and Price>=10;


SELECT customerName from Customers where CustomerId=
delete * from cu
;
SELECT* from Customers;
DELETE from Customers where CustomerID=91;




0	33	14:41:29	DELETE * from Customers where CustomerID=91	Error Code: 1064. 
You have an error in your SQL syntax; check the manual that corresponds 
to your MariaDB server version for the right syntax to use near '* from Customers where CustomerID=91' at line 1	0.015 sec


	DELETE FROM Eployees
	WHERE CustomerID = 1
    ;
    select* from Employees;
    select* from Customers;
    select* from Suppliers;

drop DATABASE w3schools;
select * from 

;


desc Customers;
SELECT* FROM Suppliers;
INSERT Suppliers ( SupplierName,;
UPDATE Customers SET CustomerName;

SELECT * FROM Suppliers;

CREATE TABLE Coffee(
name VARCHAR(22) PRIMARY key,
coffee VARCHAR(22)
);
insert into Coffee ( ),

;
create table Bank(account VARCHAR(255),balance INT);
insert into Bank(account,balance) values(1,10000),(2,20000);


create database prj1;
CREATE table Board(
	id int PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) not null,
    content VARCHAR(20000) not null
    );
  SELECT * from Board;
alter TABLE Board
add COLUMN content VARCHAR(2551) not null;


alter TABLE Board add COLUMN inserted DATEtime DEFAULT now();
alter TABLE Board DROP COLUMN content;

























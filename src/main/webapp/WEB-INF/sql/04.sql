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
-- SELECT는 컬럼선택이 아니라 그냥 선택기능..
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
























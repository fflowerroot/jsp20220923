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
           ;




















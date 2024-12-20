create database internet;
use internet;
SELECT * FROM internet;
SELECT * FROM internet.dimdate;
SELECT * FROM internet.dimcustomer;
SELECT * FROM internet.dimprodsubcategory;
SELECT * FROM internet.dimproduct;
SELECT * FROM internet.dimsalesterritory;
SELECT * FROM internet.dimproductcategory;
-- ans 1
SELECT s.productkey,p.englishproductname FROM  internet s JOIN dimproduct p ON s.productkey = p.productkey;
-- ans 2
SELECT s.Productkey,s.UnitPrice,s.Customerkey,c.CustomerFullName FROM internet s JOIN dimProduct p ON s.Productkey = p.Productkey JOIN dimcustomer c ON s.Customerkey = c.Customerkey;
-- ans 3
SELECT YEAR(OrderDate) AS Year,MONTH(OrderDate) AS Month,MONTHNAME(OrderDate) AS MonthName,QUARTER(OrderDate) AS Quarter,DATE_FORMAT(OrderDate, '%Y-%m') AS YearMonth,DAY(OrderDate) AS Day,DAYOFWEEK(OrderDate) AS WeekdayNo,DAYNAME(OrderDate) AS WeekdayName FROM internet;
-- ans 4
SELECT productkey,(UnitPrice * OrderQuantity) * (1 - UnitpriceDiscountpct) AS SalesAmount FROM internet;
-- ans 5
SELECT productkey,(productstandardcost * OrderQuantity) AS ProductionCost FROM internet;
-- ans 6
SELECT productkey,( (UnitPrice * OrderQuantity) * (1 - UnitpriceDiscountpct) ) - (productstandardcost * OrderQuantity) AS Profit FROM internet;











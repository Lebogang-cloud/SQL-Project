SELECT *
FROM Customers;

SELECT FirstName
FROM Customers;

SELECT FirstName
FROM Customers
WHERE CustomerID=1;

UPDATE Customers SET FirstName = 'Lerato Mabitso' WHERE CustomerID=1;

DELETE FROM Customers WHERE CustomerID=2;

SELECT COUNT(Status)
FROM Orders;

SELECT MAX(Amount)
FROM Payments;


SELECT * FROM Customers
ORDER BY Country ASC;

SELECT *
FROM  products
WHERE BuyPrice between '100' and '600';

SELECT *
FROM  customers
WHERE city='BERLIN'
    AND country='GERMANY';

SELECT *
FROM  customers
WHERE city='CAPE TOWN'
    or city='DURBAN';

SELECT *
FROM  products
WHERE BuyPrice > '500';

SELECT SUM(Amount)
FROM payments;

SELECT count(*)
FROM  orders
WHERE status='Shipped';


SELECT AVG(BuyPrice)
FROM  products;

SELECT Customers.CustomerID, Payments.PaymentID
FROM Customers
    INNER JOIN Payments
    ON Customers.CustomerID = Payments.CustomerID;

SELECT *
FROM Products
WHERE description LIKE 'Turnable front wheels%';
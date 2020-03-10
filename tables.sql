create table Customers(
CustomerID serial primary key,
FirstName varchar(50),
LastName varchar(50),
Gender varchar,
Address varchar(200),
Phone integer,
Email varchar(100),
City varchar(20),
Country varchar(50)
);

create table Employees(
EmployeeID serial primary key,
FirstName varchar(50),
LastName varchar(50),
Email varchar(100),
JobTitle varchar(20)
);

create table Products(
ProductID serial primary key,
ProductName varchar(100),
Description varchar(300),
BuyPrice decimal
);

create table Payments(
CustomerID integer REFERENCES Customers(CustomerID),
PaymentID  serial primary key,
PaymentDate varchar(50),
Amount decimal
);

create table Orders(
OrderID serial primary key,
ProductID integer REFERENCES products(ProductID),
PaymentID integer REFERENCES Payments(PaymentID),
FulfilledByEmployeeID integer REFERENCES Employees(EmployeeID),
DateRequired varchar(50),
DateShipped varchar(50),
Status varchar(20)
);

INSERT INTO Customers
    (CustomerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES
    (1, 'JOHN', 'HIBERT', 'MALE', '284 CHAUCER ST', 084789657, 'john@gmail.com', 'JOHANNESBURG', 'SOUTH AFRICA'),
    (2, 'THANDO', 'SITHOLE', 'FEMALE', '204 SEC 1', 079444558, 'thando@gmail.com', 'CAPE TOWN', 'SOUTH AFRICA'),
    (3, 'LEON', 'GLEN', 'MALE', '81 EVERTON RD, GILLITIS', 082083283, 'Leon@gmail.com', 'DURBAN', 'SOUTH AFRICA'),
    (4, 'CHARL', 'MULLER', 'MALE', '290A DORSET ECKE', 44856872, 'Charl.mullar@yahoo.com', 'BERLIN', 'GERMANY'),
    (5, 'JULIA', 'STEIN', 'FEMALE', '2 WERNERRING', 44867244, 'Js234@yahoo.com', 'FRANKFURT', 'GERMANY');
INSERT INTO Employees
    (EmployeeID, FirstName, LastName, Email, JobTitle)
VALUES
    (1, 'KANI', 'MATTHEW', 'mat@gmail.com', 'MANAGER'),
    (2, 'LESLEY', 'CRONJE', 'LesC@gmail.com', 'CLERK'),
    (3, 'GIDEON', 'MADUKU', 'm@gmail.com', 'ACCOUNTANT');
INSERT INTO Products
    (ProductID, ProductName, Description, BuyPrice)
VALUES
    (1, 'Harley Davidson Chopper', 'This reeplica features working kickstand, front suspension, gear-shift lever', '150.75'),
    (2, 'Classic Car', 'Turnable front wheels, steering function', '550.75'),
    (3, 'Sports Car', 'Turnable front wheels, steering function', '700.60');
INSERT INTO Payments
    (CustomerID, PaymentID, PaymentDate, Amount)
VALUES
    (1, 1, '01/09/2018', '150.75'),
    (5, 2, '03/09/2018', '150.75'),
    (4, 3, '03/09/2018', '700.60');
INSERT INTO Orders
    (OrderID, ProductID, PaymentID, FulfilledByEmployeeID , DateRequired, DateShipped, Status)
VALUES
    (1, 1, 1, 2, '05/09/2018', NULL, 'Not Shipped'),
    (2, 1, 2, 2, '04/09/2018', '03/09/2018', 'Shipped'),
    (3, 3, 3, 3, '06/09/2018', NULL, 'Not Shipped');










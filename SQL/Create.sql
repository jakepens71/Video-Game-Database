create database VideoGameStoreJacobShay;
use VideoGameStoreJacobShay;


Create Table Distributor (
	address		VARCHAR(50)NOT NULL,
	phoneNumber	DECIMAL(11),
	AccountNum	DECIMAL(9),
	DistributorID	DECIMAL(9),
		Primary Key(DistributorID));


CREATE TABLE Customer (
	CustomerID		Decimal(5),
	RegistrationDate	date,
	PhoneNum		CHAR(9),
	CreditCardNum		Decimal(16),
	Name			VARCHAR(50)NOT NULL,
	Address			VARCHAR(50)NOT NULL,
		PRIMARY KEY(CustomerID));

Create Table EmployeePosition (
	PositionName	Char(30),
	Salary		Decimal(5),
	Description	Char(30),
		Primary Key(PositionName));

Create Table VideoGame (
	GameTitle	VARCHAR(50)NOT NULL,
	Platform	Char(20),
	Price		Decimal(5,2),
	Publisher	VARCHAR(50)NOT NULL,
	DistributorID	Decimal(9),
	ESRBRating	Char(5),
	Quantity	DECIMAL(5),
	WholeSalePrice	DECIMAL(9),
		Primary Key(GameTitle),
		FOREIGN KEY(DistributorID) REFERENCES Distributor(DistributorID));

CREATE TABLE Employee (
	DateHired	date,
	EmployeeID	Decimal(9),
	Name		VARCHAR(50)NOT NULL,
	Address		VARCHAR(50)NOT NULL,
	PositionName	Char(30),
		Primary KEY(EmployeeID),
		FOREIGN KEY(PositionName) REFERENCES EmployeePosition(PositionName));

CREATE TABLE PurchaseOrder (
	Quantity	Decimal(10),
	OrderID		VARCHAR(20)NOT NULL,
	EmployeeID	Decimal(10),
	DistributorID	DECIMAL(9),
	GameTitle	VARCHAR(50)NOT NULL,
	Platform	Char(20),
		PRIMARY KEY(OrderID),
		FOREIGN KEY(DistributorID) REFERENCES Distributor(DistributorID),
		FOREIGN KEY(GameTitle) REFERENCES VideoGame(GameTitle));

CREATE TABLE PurchaseOrderCustomer (
	CustomerOrderDate		Date,
	PurchaseNum			DECIMAL(9),
	Quanity				DECIMAL(9),
	GameTitle			VARCHAR(50)NOT NULL,
	Platform			Char(20),
	Shipped				char(7),
	CustomerID			Decimal(5),
		Primary KEY(PurchaseNum),
		FOREIGN KEY(GameTitle) REFERENCES VideoGame(GameTitle),
		FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID));

Create Table Shipment (
	GameTitle	VARCHAR(50)NOT NULL,
	Platform	Char(20),
	EmployeeID	Decimal(9),
	ShipmentNum	Decimal(20),
	TrackingNum	Decimal(20),
	TrackingCarrier	char(30),
	CustomerID	Decimal(5),
	Quanity		Decimal(9),
	shipmentDate	date,
		PRIMARY KEY(ShipmentNum),
		Foreign Key(EmployeeID) REFERENCES Employee(EmployeeID),
		Foreign KEY(CustomerID) REFERENCES Customer(CustomerID));

Create Table ReturnItem (
	ReturnNum	Decimal(5),
	Quantity	Decimal(5),
	GameTitle	VARCHAR(50)NOT NULL,
	Platform	Char(20),
	CustomerID	Decimal(5),
	ReturnDate	Date,
		Primary Key(ReturnNum),
		FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID),
		FOREIGN KEY(GameTitle) REFERENCES VideoGame(GameTitle));	

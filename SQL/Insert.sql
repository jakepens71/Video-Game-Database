INSERT INTO Distributor 
	VALUES('192 Red Harring Street South Pike PA, 16226', 5552134212, 5122, 3);
INSERT INTO Distributor
	VALUES('142 Oak Tree Avenue Truntum PA, 14212', 5553264321, 5123, 4);



INSERT INTO Customer
	VALUES(12342, '1992-10-9', '5552142142', 8243253216543241, 'Jacob Shay', '142nd Street Kittanning PA 16201');

INSERT INTO Customer
	VALUES(12343, '1995-01-02', '5557543212', 1264212543214327, 'Johnny B Good', '799 Asher Road Meadville PA 1599');

INSERT INTO Customer
	VALUES(12344, '1999-06-04', '5555432819', 2342423543453545, 'Huston Problem', '1342 Saint james Palace Chicago Illionois');

INSERT INTO EmployeePosition
	VALUES('Order Processor', 45000, 'create the orders,shipment methods, and handle returns, ');

INSERT INTO VideoGame
	VALUES('Joint Operations: Typhoon Rising', 'PC', 10.00, 'Novalogic', 3, 'T', 120, 1200);

INSERT INTO VideoGame
	VALUES('Batman Arkham: Asylum', 'Xbox 360', 20.00, 'Warner Bro. Montreal', 3, 'T', 300, 6000);
INSERT INTO VideoGame
	VALUES('Batman Arkham: City', 'Xbox 360', 20.00, 'Warner Bro. Montreal', 3, 'T', 300, 6000);
INSERT INTO VideoGame
	VALUES('Batman Arkham: Origions', 'Xbox 360', 60.00, 'Warner Bro. Montreal', 3, 'T', 1000, 60000);
INSERT INTO VideoGame
	VALUES('Heavy Rain', 'PlayStation 3', 20.00, 'Quantic Dream', 4, 'T', 400, 8000);
INSERT INTO VideoGame
	VALUES('Super Smash Bros.', 'Wii U', 40.00, 'Nintendo', 4, 'E', 200, 8000);
INSERT INTO VideoGame
	VALUES('Battlefield 4', 'PC', 60.00, 'EA Games', 4, 'M', 5000, 300000);
INSERT INTO VideoGame
	VALUES('Portal 2', 'PC', 12.00, 'Valve', 3, 'T', 0, 3600);

INSERT INTO Employee
	VALUES('1990/08/10', 6122, 'John Donald', '1344 Mount Aurther Street Westview California 41232', 'Order Processor');
INSERT INTO Employee
	VALUES('1991/10/02', 6142, 'Juliet Rodreguiz', '5321 Runner Street San Diago California 4147', 'Order Processor');

INSERT INTO PurchaseOrder
	VALUES(1, '1324', 6122, 3, 'Batman Arkham: City', 'Xbox 360');
INSERT INTO PurchaseOrder
	VALUES(2, '1452', 6122, 3, 'Joint Operations: Typhoon Rising', 'PC');


INSERT INTO PurchaseOrderCustomer
	VALUES('2000-02-10', 78173, 1, 'Batman Arkham: City', 'Xbox 360', 'shipped', 12342);

INSERT INTO PurchaseOrderCustomer
	VALUES('2002-02-11', 78174, 2, 'Joint Operations: Typhoon Rising', 'PC', 'shipped', 12343);

INSERT INTO Shipment
	VALUES('Batman Arkham: City', 'Xbox 360', 6122, 32123, 9123421234, 'USPS', 12342, 1, '2002-02-11');
INSERT INTO Shipment
	VALUES('Joint Operations: Typhoon Rising', 'PC', 6122, 32124, 912332123, 'USPS', 12343, 2, '2002-02-12');

INSERT INTO ReturnItem
	VALUES(65321, 1, 'Joint Operations: Typhoon Rising', 'PC', 12343, '2002-02-30');
Select Sum(VideoGame.Price*PurchaseOrder.Quantity) AS TotalIncome From VideoGame, PurchaseOrder
	where VideoGame.GameTitle = PurchaseOrder.GameTitle;

Select Sum(VideoGame.WholeSalePrice) AS GameExpenses From Videogame;


Select  SUM(EmployeePosition.Salary) AS TotalEmpSalary FROM Employee, EmployeePosition 
	where Employee.PositionName = EmployeePosition.PositionName;

Select VideoGame.GameTitle, VideoGame.Platform, VideoGame.Publisher, VideoGame.Quantity, 
		VideoGame.Price, VideoGame.WholeSalePrice FROM VideoGame;

Select PurchaseOrderCustomer.GameTitle, PurchaseOrderCustomer.Platform, PurchaseOrderCustomer.Shipped 
	FROM PurchaseOrderCustomer, VideoGame
	where VideoGame.GameTitle = PurchaseOrderCustomer.GameTitle;

Select Customer.Name, Shipment.GameTitle, Shipment.Platform, PurchaseOrderCustomer.CustomerOrderDate, Shipment.shipmentDate, 
	Shipment.ShipmentNum, Shipment.TrackingNum, Shipment.TrackingCarrier From Customer, Shipment, PurchaseOrderCustomer
	where Customer.CustomerID = Shipment.CustomerID AND PurchaseOrderCustomer.Quanity = Shipment.Quanity;

Select PurchaseOrderCustomer.GameTitle, PurchaseOrderCustomer.Platform, 
	PurchaseOrderCustomer.Quanity, PurchaseOrderCustomer.Shipped, 
	PurchaseOrderCustomer.CustomerID, PurchaseOrderCustomer.CustomerOrderDate FROM
	PurchaseOrderCustomer where PurchaseOrderCustomer.CustomerOrderDate = '2002-2-11';

Select VideoGame.GameTitle, VideoGame.Publisher, 
	VideoGame.Quantity From VideoGame 
	where VideoGame.Quantity = 0;
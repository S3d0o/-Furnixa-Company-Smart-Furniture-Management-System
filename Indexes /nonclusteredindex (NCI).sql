--Indexes (CI) & (NCI)

CREATE NONCLUSTERED INDEX IX_Job_Title
ON HR.Employee (JobTitle);


CREATE NONCLUSTERED INDEX IX_Cust_Email
ON Sales.Customer(Email);


CREATE NONCLUSTERED INDEX IX_Cust_Phone
ON Sales.Customer(Phone);


CREATE NONCLUSTERED INDEX IX_Product_Name
ON Inventory.Product (Name);


CREATE NONCLUSTERED INDEX IX_Product_Category
ON Inventory.Product (Category);


CREATE NONCLUSTERED INDEX IX_Order_CustId
ON Sales.[Order] (CustomerID);


CREATE NONCLUSTERED INDEX IX_OrderDate
ON Sales.[Order] (OrderDate);


CREATE NONCLUSTERED INDEX IX_OrderDet_OrderId
ON Sales.OrderDetail (OrderID);


CREATE NONCLUSTERED INDEX IX_OrderDet_ProductId
ON Sales.OrderDetail (ProductID);


CREATE NONCLUSTERED INDEX IX_RestockingDate
ON Inventory.RestockingLog (RestockDate);

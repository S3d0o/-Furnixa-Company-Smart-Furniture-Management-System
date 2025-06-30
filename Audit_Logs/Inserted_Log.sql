
-- Employee Insert
ALTER TRIGGER trg_Employee_InsertLog
ON HR.Employee
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.InsertedLog (TableName, InsertedAt, InsertedBy, Data)
    SELECT 'HR.Employee', GETDATE(), SYSTEM_USER, (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

-- Department Insert
CREATE TRIGGER trg_Department_InsertLog
ON HR.Department
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.InsertedLog (TableName, InsertedAt, InsertedBy, Data)
    SELECT 'HR.Department', GETDATE(), SYSTEM_USER, (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

-- Product Insert
CREATE TRIGGER trg_Product_InsertLog
ON Inventory.Product
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.InsertedLog (TableName, InsertedAt, InsertedBy, Data)
    SELECT 'Inventory.Product', GETDATE(), SYSTEM_USER, (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

-- Supplier Insert
CREATE TRIGGER trg_Supplier_InsertLog
ON Inventory.Supplier
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.InsertedLog (TableName, InsertedAt, InsertedBy, Data)
    SELECT 'Inventory.Supplier', GETDATE(), SYSTEM_USER, (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

-- Customer Insert
CREATE TRIGGER trg_Customer_InsertLog
ON Sales.Customer
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.InsertedLog (TableName, InsertedAt, InsertedBy, Data)
    SELECT 'Sales.Customer', GETDATE(), SYSTEM_USER, (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

-- Order Insert
CREATE TRIGGER trg_Order_InsertLog
ON Sales.[Order]
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.InsertedLog (TableName, InsertedAt, InsertedBy, Data)
    SELECT 'Sales.Order', GETDATE(), SYSTEM_USER, (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

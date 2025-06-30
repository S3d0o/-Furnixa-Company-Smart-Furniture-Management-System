-- Employee Delete
GO
CREATE TRIGGER trg_Employee_DeleteLog
ON HR.Employee
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.DeletedLog (TableName, DeletedAt, DeletedBy, Data)
    SELECT 'HR.Employee', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE);
END;

-- Department Delete
CREATE TRIGGER trg_Department_DeleteLog
ON HR.Department
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.DeletedLog (TableName, DeletedAt, DeletedBy, Data)
    SELECT 'HR.Department', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE);
END;

-- Product Delete
CREATE TRIGGER trg_Product_DeleteLog
ON Inventory.Product
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.DeletedLog (TableName, DeletedAt, DeletedBy, Data)
    SELECT 'Inventory.Product', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE);
END;

-- Supplier Delete
CREATE TRIGGER trg_Supplier_DeleteLog
ON Inventory.Supplier
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.DeletedLog (TableName, DeletedAt, DeletedBy, Data)
    SELECT 'Inventory.Supplier', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE);
END;

-- Customer Delete
CREATE TRIGGER trg_Customer_DeleteLog
ON Sales.Customer
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.DeletedLog (TableName, DeletedAt, DeletedBy, Data)
    SELECT 'Sales.Customer', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE);
END;

-- Order Delete
CREATE TRIGGER trg_Order_DeleteLog
ON Sales.[Order]
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.DeletedLog (TableName, DeletedAt, DeletedBy, Data)
    SELECT 'Sales.Order', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE);
END;

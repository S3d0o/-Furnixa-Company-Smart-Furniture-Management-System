-- Employee Update
GO
CREATE TRIGGER trg_Employee_UpdateLog
ON HR.Employee
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.UpdatedLog(TableName, UpdatedAt, UpdatedBy, OldData, NewData)
    SELECT 'HR.Employee', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE),
           (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

-- Employee Salary Audit (Specific Column)
GO
CREATE TRIGGER trg_Employee_SalaryAudit
ON HR.Employee
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.EmployeeSalaryChanges (EmployeeID, OldSalary, NewSalary, ChangedBy, ChangedAt)
    SELECT i.EmployeeID, d.Salary, i.Salary, SYSTEM_USER, GETDATE()
    FROM inserted i
    JOIN deleted d ON i.EmployeeID = d.EmployeeID
    WHERE i.Salary != d.Salary;
END;

-- Department Update
CREATE TRIGGER trg_Department_UpdateLog
ON HR.Department
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.UpdatedLog (TableName, UpdatedAt, UpdatedBy, OldData, NewData)
    SELECT 'HR.Department', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE),
           (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

-- Product Update
CREATE TRIGGER trg_Product_UpdateLog
ON Inventory.Product
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.UpdatedLog (TableName, UpdatedAt, UpdatedBy, OldData, NewData)
    SELECT 'Inventory.Product', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE),
           (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

-- Supplier Update
CREATE TRIGGER trg_Supplier_UpdateLog
ON Inventory.Supplier
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.UpdatedLog (TableName, UpdatedAt, UpdatedBy, OldData, NewData)
    SELECT 'Inventory.Supplier', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE),
           (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

-- Customer Update
CREATE TRIGGER trg_Customer_UpdateLog
ON Sales.Customer
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.UpdatedLog (TableName, UpdatedAt, UpdatedBy, OldData, NewData)
    SELECT 'Sales.Customer', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE),
           (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

-- Order Update
CREATE TRIGGER trg_Order_UpdateLog
ON Sales.[Order]
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO audit.UpdatedLog (TableName, UpdatedAt, UpdatedBy, OldData, NewData)
    SELECT 'Sales.Order', GETDATE(), SYSTEM_USER,
           (SELECT * FROM deleted FOR XML AUTO, TYPE),
           (SELECT * FROM inserted FOR XML AUTO, TYPE);
END;

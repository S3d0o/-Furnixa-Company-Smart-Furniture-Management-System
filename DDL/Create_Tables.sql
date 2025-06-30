-- HR Schema Tables Creation

CREATE TABLE HR.Department (
    DepartmentID INT PRIMARY KEY,
    Name NVARCHAR(100) NOT NULL
);

CREATE TABLE HR.Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    JobTitle NVARCHAR(50),
    DepartmentID INT FOREIGN KEY REFERENCES HR.Department(DepartmentID),
    Salary DECIMAL(10,2),
    HireDate DATE
);

-- Sales Schema Tables Creation

CREATE TABLE Sales.Customer (
    CustomerID INT PRIMARY KEY,
    FullName NVARCHAR(100),
    Email NVARCHAR(100),
    Phone NVARCHAR(20),
    JoinDate DATE
);

CREATE TABLE Sales.[Order] (
    OrderID INT PRIMARY KEY,
    CustomerID INT FOREIGN KEY REFERENCES Sales.Customer(CustomerID),
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    ProcessedBy INT FOREIGN KEY REFERENCES HR.Employee(EmployeeID)
);
Alter table Sales.[Order]
drop column TotalAmount

CREATE TABLE Sales.OrderDetail (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT FOREIGN KEY REFERENCES Sales.[Order](OrderID),
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10,2)
);

ALTER TABLE Sales.OrderDetail
ADD CONSTRAINT FK_OrderDetail_Product
FOREIGN KEY (ProductID)
REFERENCES Inventory.Product(ProductID);

-- Inventory Schema Tables Creation

CREATE TABLE Inventory.Supplier (
    SupplierID INT PRIMARY KEY,
    Name NVARCHAR(100),
    ContactPerson NVARCHAR(100),
    Phone NVARCHAR(20),
    Email NVARCHAR(100)
);

CREATE TABLE Inventory.Product (
    ProductID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Category NVARCHAR(50),
    Price DECIMAL(10,2),
    QuantityInStock INT,
    SupplierID INT FOREIGN KEY REFERENCES Inventory.Supplier(SupplierID)
);

CREATE TABLE Inventory.RestockingLog (
    RestockID INT PRIMARY KEY,
    ProductID INT FOREIGN KEY REFERENCES Inventory.Product(ProductID),
    SupplierID INT FOREIGN KEY REFERENCES Inventory.Supplier(SupplierID),
    Quantity INT,
    RestockDate DATE
);

-- Audit Schema Tables Creation

CREATE TABLE Audit.InsertedLog (
    LogID INT IDENTITY PRIMARY KEY,
    TableName NVARCHAR(100),
    InsertedAt DATETIME DEFAULT GETDATE(),
    InsertedBy NVARCHAR(100),
    Data XML
);

CREATE TABLE Audit.UpdatedLog (
    LogID INT IDENTITY PRIMARY KEY,
    TableName NVARCHAR(100),
    UpdatedAt DATETIME DEFAULT GETDATE(),
    UpdatedBy NVARCHAR(100),
    OldData XML,
    NewData XML
);

CREATE TABLE Audit.DeletedLog (
    LogID INT IDENTITY PRIMARY KEY,
    TableName NVARCHAR(100),
    DeletedAt DATETIME DEFAULT GETDATE(),
    DeletedBy NVARCHAR(100),
    Data XML
);

CREATE TABLE audit.EmployeeSalaryChanges (
    LogID INT IDENTITY PRIMARY KEY,
    EmployeeID INT,
    OldSalary DECIMAL(10,2),
    NewSalary DECIMAL(10,2),
    ChangedBy NVARCHAR(100),
    ChangedAt DATETIME
);

--  Insert Sample Data

-- HR.Department
INSERT INTO HR.Department VALUES (1, 'Sales');
INSERT INTO HR.Department VALUES (2, 'Logistics');
INSERT INTO HR.Department VALUES (3, 'HR');

-- HR.Employee
INSERT INTO HR.Employee VALUES (1, 'Alice', 'Johnson', 'Sales Manager', 1, 6000.00, '2021-03-15');
INSERT INTO HR.Employee VALUES (2, 'Bob', 'Smith', 'Logistics Coordinator', 2, 4500.00, '2022-01-10');
INSERT INTO HR.Employee VALUES (3, 'Carol', 'White', 'HR Specialist', 3, 5000.00, '2020-07-01');
INSERT INTO HR.Employee VALUES (4, 'David', 'Lee', 'Sales Rep', 1, 4200.00, '2022-11-01');
INSERT INTO HR.Employee VALUES (5, 'Eve', 'Taylor', 'Warehouse Worker', 2, 3600.00, '2023-02-20');
INSERT INTO HR.Employee VALUES (6, 'Frank', 'Anderson', 'HR Recruiter', 3, 4800.00, '2021-08-14');
INSERT INTO HR.Employee VALUES (7, 'Grace', 'Miller', 'Sales Rep', 1, 4300.00, '2023-06-01');

---- super visors
INSERT INTO HR.Employee (EmployeeID, FirstName, LastName, JobTitle, Salary, HireDate)
VALUES
(1001, 'Omar', 'Hassan', 'Senior Manager', 15000, '2020-01-01'),
(1002, 'Sara', 'Kamel', 'Team Lead', 12000, '2021-03-10'),
(1003, 'Ali', 'Mahmoud', 'Supervisor', 11000, '2021-06-20');

---Manegers 
INSERT INTO HR.Employee VALUES (501, 'zeko', 'hany', 'Sales Rep', 1, 10000.00, '2023-06-01',null);
INSERT INTO HR.Employee VALUES (502, '7oda', 'hany', 'HR', 1, 15000.00, '2023-06-01',null);
INSERT INTO HR.Employee VALUES (503, 'jooo', 'tarek', 'Logistics', 1, 20000.00, '2023-06-01',null);
INSERT INTO HR.Employee VALUES (504, 'kmol', 'tarek', 'HR', 1, 18000.00, '2023-06-01',null);

-- Inventory.Supplier
INSERT INTO Inventory.Supplier VALUES (1, 'Global Wood Inc.', 'Laura Hill', '123-456-7890', 'contact@globalwood.com');
INSERT INTO Inventory.Supplier VALUES (2, 'EcoFurn Ltd.', 'Daniel Ray', '234-567-8901', 'sales@ecofurn.com');
INSERT INTO Inventory.Supplier VALUES (3, 'ModernBuild Co.', 'Steve Jones', '345-678-9012', 'support@modernbuild.com');

-- Inventory.Product
INSERT INTO Inventory.Product VALUES (1, 'Oak Table', 'Tables', 150.00, 50, 1);
INSERT INTO Inventory.Product VALUES (2, 'Pine Chair', 'Chairs', 75.00, 120, 2);
INSERT INTO Inventory.Product VALUES (3, 'Bookshelf', 'Storage', 100.00, 30, 1);
INSERT INTO Inventory.Product VALUES (4, 'Desk Lamp', 'Lighting', 45.00, 80, 3);
INSERT INTO Inventory.Product VALUES (5, 'Office Desk', 'Desks', 200.00, 40, 3);
INSERT INTO Inventory.Product VALUES (6, 'Wardrobe', 'Storage', 300.00, 25, 1);

-- Sales.Customer
INSERT INTO Sales.Customer VALUES (1, 'Emily Carter', 'emily.carter@example.com', '555-1234', '2023-06-01');
INSERT INTO Sales.Customer VALUES (2, 'George Miller', 'george.miller@example.com', '555-2345', '2023-07-10');
INSERT INTO Sales.Customer VALUES (3, 'Hannah Smith', 'hannah.smith@example.com', '555-3456', '2023-08-05');
INSERT INTO Sales.Customer VALUES (4, 'Ian Clark', 'ian.clark@example.com', '555-4567', '2023-09-12');
INSERT INTO Sales.Customer VALUES (5, 'Julia Brown', 'julia.brown@example.com', '555-5678', '2023-10-20');

-- Sales.Order
INSERT INTO Sales.[Order] VALUES (1, 1, '2024-01-05', 0.00, 1);
INSERT INTO Sales.[Order] VALUES (2, 2, '2024-02-15', 0.00, 1);
INSERT INTO Sales.[Order] VALUES (3, 3, '2024-03-10', 0.00, 4);
INSERT INTO Sales.[Order] VALUES (4, 4, '2024-04-08', 0.00, 7);
INSERT INTO Sales.[Order] VALUES (5, 5, '2024-04-22', 0.00, 1);

-- Sales.OrderDetail
INSERT INTO Sales.OrderDetail VALUES (1, 1, 1, 2, 150.00);
INSERT INTO Sales.OrderDetail VALUES (2, 1, 2, 4, 75.00);
INSERT INTO Sales.OrderDetail VALUES (3, 2, 3, 1, 100.00);
INSERT INTO Sales.OrderDetail VALUES (4, 3, 5, 1, 200.00);
INSERT INTO Sales.OrderDetail VALUES (5, 3, 2, 2, 75.00);
INSERT INTO Sales.OrderDetail VALUES (6, 4, 6, 1, 300.00);
INSERT INTO Sales.OrderDetail VALUES (7, 5, 4, 3, 45.00);

-- Inventory.RestockingLog
INSERT INTO Inventory.RestockingLog VALUES (1, 1, 1, 20, '2024-01-01');
INSERT INTO Inventory.RestockingLog VALUES (2, 2, 2, 50, '2024-01-10');
INSERT INTO Inventory.RestockingLog VALUES (3, 4, 3, 40, '2024-02-01');
INSERT INTO Inventory.RestockingLog VALUES (4, 6, 1, 10, '2024-02-25');

-- Insert 5 high-value orders
INSERT INTO Sales.[Order] (OrderID, CustomerID, OrderDate, ProcessedBy)
VALUES 
(1001, 1, '2025-06-01', 1),
(1002, 2, '2025-06-02', 1),
(1003, 3, '2025-06-03', 2),
(1004, 4, '2025-06-04', 2),
(1005, 5, '2025-06-05', 3);

INSERT INTO Inventory.Product (ProductID, Name, Category, Price, QuantityInStock, SupplierID)
VALUES
(10, 'Executive Desk', 'Office Furniture', 2500.00, 20, 1),
(11, 'Conference Table', 'Office Furniture', 5000.00, 15, 1),
(12, 'Filing Cabinet', 'Storage', 1000.00, 30, 2),
(13, 'Modern Bookshelf', 'Storage', 3000.00, 25, 2),
(14, 'Ergonomic Chair', 'Office Furniture', 4000.00, 50, 1);


INSERT INTO Sales.OrderDetail (OrderDetailID, OrderID, ProductID, Quantity, UnitPrice)
VALUES
(8, 1001, 11, 2, 5000),     -- 2 × 5000 = 10,000
(9, 1001, 12, 1, 1000),     -- +1 × 1000 = 11,000

(10, 1002, 10, 5, 2500),    -- 5 × 2500 = 12,500

(11, 1003, 14, 3, 4000),    -- 3 × 4000 = 12,000

(12, 1004, 13, 4, 3000),    -- 4 × 3000 = 12,000

(13, 1005, 11, 2, 5000),    -- 2 × 5000 = 10,000
(14, 1005, 12, 1, 2000);    -- +1 × 2000 = 12,000




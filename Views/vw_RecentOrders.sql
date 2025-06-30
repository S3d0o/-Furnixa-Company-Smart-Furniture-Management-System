-- View returns recent orders from the last 30 days including:
-- customer name, product name, employee who processed it, and total amount.
-- Useful for tracking active sales and staff performance.

CREATE OR ALTER VIEW vw_RecentOrders
AS
SELECT 
    o.OrderID,
    c.FullName AS CustomerName,
    o.OrderDate,
    p.Name AS ProductName,
    e.FirstName + ' ' + e.LastName AS EmployeeName,
    SUM(od.Quantity * od.UnitPrice) AS TotalAmount
FROM Sales.[Order] o
JOIN Sales.Customer c ON c.CustomerID = o.CustomerID
JOIN Sales.OrderDetail od ON o.OrderID = od.OrderID
JOIN Inventory.Product p ON p.ProductID = od.ProductID
JOIN HR.Employee e ON o.ProcessedBy = e.EmployeeID
WHERE o.OrderDate >= DATEADD(DAY, -30, GETDATE()) -- in the last 30 days 
GROUP BY 
    o.OrderID,
    c.FullName,
    o.OrderDate,
    p.Name,
    e.FirstName,
    e.LastName;

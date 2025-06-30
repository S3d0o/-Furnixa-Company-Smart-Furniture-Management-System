-- View shows each employee's full name, department, total number of orders they processed,
-- and the total sales amount they contributed to based on order details.

CREATE OR ALTER VIEW vw_EmployeeSummary
AS
SELECT 
    Full_name = e.FirstName + ' ' + e.LastName,
    Department = d.Name,
    Total_Orders = COUNT(DISTINCT o.OrderID),
    Total_Amount = SUM(ISNULL(od.Quantity * od.UnitPrice, 0))
FROM HR.Department d
	JOIN HR.Employee e ON e.DepartmentID = d.DepartmentID
	LEFT JOIN Sales.[Order] o ON o.ProcessedBy = e.EmployeeID
	LEFT JOIN Sales.OrderDetail od ON od.OrderID = o.OrderID
GROUP BY 
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    d.Name;

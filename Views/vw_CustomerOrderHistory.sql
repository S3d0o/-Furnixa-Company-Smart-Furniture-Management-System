-- View lists each customer’s order date, total amount spent, and number of products per order.

CREATE OR ALTER VIEW vw_CustomerOrderHistory
as
SELECT 
	c.FullName,
	c.CustomerID,
	o.OrderDate,
	Number_Of_Products = COUNT(p.ProductID),
	Total_Amount = SUM(ISNULL(od.Quantity * od.UnitPrice, 0))
	
FROM Sales.Customer c
	join Sales.[Order] o on c.CustomerID=o.CustomerID
	join Sales.OrderDetail od on o.OrderID = od.OrderID
	join Inventory.Product p on p.ProductID=od.ProductID
GROUP BY 
    c.CustomerID,
    c.FullName,
	  o.OrderID,
    o.OrderDate;

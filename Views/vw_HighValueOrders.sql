-- View lists high-value orders (TotalAmount > 10,000) to identify VIP/bulk clients.

CREATE VIEW vw_HighValueOrders 
AS
SELECT
	o.OrderID,
	c.FullName as CustomerName,
	o.OrderDate,
	TotalAmount= SUM(ISNULL(od.Quantity*od.UnitPrice,0))
FROM Sales.[Order] o
	JOIN Sales.OrderDetail od on o.OrderID=od.OrderID
	JOIN Sales.Customer c on c.CustomerID =o.CustomerID
GROUP BY 
	o.OrderID,
	c.FullName ,
	o.OrderDate
HAVING 
    SUM(ISNULL(od.Quantity * od.UnitPrice, 0)) > 10000;

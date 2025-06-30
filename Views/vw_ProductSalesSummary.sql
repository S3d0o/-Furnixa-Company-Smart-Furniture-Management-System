-- View displays total quantity sold and total revenue generated for each product.
-- Useful for identifying top-selling and high-revenue items.

CREATE VIEW vw_ProductSalesSummary
AS
SELECT 
    p.ProductID,
    p.Name AS ProductName,
    SUM(od.Quantity) AS TotalSold,
    SUM(od.Quantity * od.UnitPrice) AS TotalRevenue
FROM Inventory.Product p
	JOIN Sales.OrderDetail od ON p.ProductID = od.ProductID
GROUP BY
	p.ProductID,
	p.Name;

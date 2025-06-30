-- Returns the total sales revenue generated for a specific product,
-- based on quantity sold × unit price across all orders.
-- Useful for identifying high-performing products and tracking revenue per item.

CREATE OR ALTER FUNCTION Sales.fn_TotalSalesPerProduct(@ProductID int)
RETURNS INT 
AS
BEGIN
	  DECLARE @TotalRevenue DECIMAL(10,2);

	  SELECT @TotalRevenue = SUM(od.UnitPrice * od.Quantity)
	  FROM Inventory.Product p 
		   JOIN Sales.OrderDetail od on p.ProductID=od.ProductID
		WHERE p.ProductID=@ProductID
	  
	  RETURN ISNULL(@TotalRevenue,0)
END 
go
--testing
SELECT Sales.fn_TotalSalesPerProduct(3)

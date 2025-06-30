-- Returns the number of distinct products in a specific order.
-- Useful for understanding basket size or item diversity per order.

CREATE FUNCTION Reports.fn_OrderItemCount(@OrderID INT)
RETURNS INT
AS
BEGIN
    DECLARE @ItemsCount INT;

    SELECT @ItemsCount = COUNT(DISTINCT ProductID)
    FROM Sales.OrderDetail
    WHERE OrderID = @OrderID;

    RETURN @ItemsCount;
END
go
  
--Example Use

SELECT OrderID, Reports.fn_OrderItemCount(OrderID) AS ItemCount
FROM Sales.[Order];

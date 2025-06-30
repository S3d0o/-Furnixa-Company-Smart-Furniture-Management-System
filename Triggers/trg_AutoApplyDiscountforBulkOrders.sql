-- Trigger: AutoApplyDiscountforBulkOrders
-- Applies a 10% discount to UnitPrice when Quantity > 10 in a new order detail row.

CREATE TRIGGER trg_AutoApplyDiscountforBulkOrders
ON Sales.OrderDetail
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Apply a 10% discount only to rows with Quantity > 10
    UPDATE od
    SET od.UnitPrice = od.UnitPrice * 0.9
    FROM Sales.OrderDetail od
    JOIN inserted i ON i.OrderDetailID = od.OrderDetailID
    WHERE i.Quantity > 10;
END
go
--Checking it :
INSERT INTO Sales.OrderDetail (OrderDetailID,OrderID, ProductID, Quantity, UnitPrice)
VALUES (2004,1005, 1, 12, 500.00);

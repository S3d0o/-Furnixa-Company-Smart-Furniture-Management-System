-- Purpose: Prevents inserting an order if the requested quantity exceeds available stock.
-- It checks each inserted row in Sales.OrderDetail and rolls back the transaction
-- with an error message if stock is insufficient.

CREATE TRIGGER Sales.trg_PreventOutOfStockOrders
ON Sales.OrderDetail
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1
        FROM inserted i
        JOIN Inventory.Product p ON p.ProductID = i.ProductID
        WHERE p.QuantityInStock < i.Quantity
    )
    BEGIN
        RAISERROR('Not enough stock for one or more products.', 16, 1);
        ROLLBACK ;
    END
END;

--Checking it :

INSERT INTO Sales.OrderDetail (OrderDetailID,OrderID, ProductID, Quantity, UnitPrice)
VALUES (2003,1002, 1, 100, 499.99);

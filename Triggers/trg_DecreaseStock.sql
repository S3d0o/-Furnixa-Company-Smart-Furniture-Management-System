-- Reduces product stock in Inventory.Product after a new order is inserted into Sales.OrderDetail.
-- Ensures QuantityInStock is updated automatically based on the ordered quantity.

CREATE TRIGGER trg_DecreaseStock
ON Sales.OrderDetail
AFTER INSERT
AS
BEGIN
SET NOCOUNT ON --avoid extra row count messages

	UPDATE p
	SET p.QuantityInStock = p.QuantityInStock - i.Quantity
	FROM Inventory.Product p
	JOIN inserted i on i.ProductID=p.ProductID
END;

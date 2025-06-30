-- Blocks updates where Price < Cost.
GO
CREATE TRIGGER  trg_EnforcePriceAboveCost
ON Inventory.Product
AFTER INSERT ,UPDATE
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (
			SELECT 1
			FROM inserted i
			WHERE i.Price < 1
			)
		begin
			RAISERROR('Price must be at least 1.00',16,1)
			ROLLBACK;
		end
END;

-- fire it 
INSERT INTO Inventory.Product (ProductID,Name, Category, Price, QuantityInStock, SupplierID)
VALUES (15,'USB Cable', 'Electronics', 0.75, 100, 2);

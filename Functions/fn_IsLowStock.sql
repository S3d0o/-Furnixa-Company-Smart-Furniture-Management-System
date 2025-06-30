-- Returns 1 if a product is considered low in stock (QuantityInStock < 10), otherwise returns 0.
-- Useful for alerting, restocking automation, or tagging items as critical.

CREATE OR ALTER FUNCTION Inventory.fn_IsLowStock(@ProductID INT )
RETURNS tinyint
AS
BEGIN
	DECLARE @Stock int,
			@islow tinyint = 0

	SELECT @Stock=p.QuantityInStock
	FROM Inventory.Product p
	WHERE @ProductID=P.ProductID

	if @Stock<10
	set @islow = 1
	

	RETURN @islow
END
go
--EXAMPLE :
SELECT 
    Name, 
    QuantityInStock,
    Inventory.fn_IsLowStock(ProductID) AS IsLowStock
FROM Inventory.Product;
go

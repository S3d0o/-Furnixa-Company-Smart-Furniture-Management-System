-- Scalar function that returns the total order value (Quantity × UnitPrice)
-- for a given OrderID. Useful in reporting or validations.

CREATE FUNCTION Sales.fn_CalcOrderTotalById(@OrderId INT)
RETURNS INT
AS
BEGIN
    DECLARE @TotalAmount INT;

    SELECT @TotalAmount = SUM(od.Quantity * od.UnitPrice)
    FROM Sales.OrderDetail od
    WHERE od.OrderID = @OrderId;

    RETURN ISNULL(@TotalAmount, 0); -- return 0 if no matching rows
END;

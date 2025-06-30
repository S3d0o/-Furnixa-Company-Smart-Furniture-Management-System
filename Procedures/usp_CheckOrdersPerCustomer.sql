-- Purpose: Checks how many orders a specific customer has placed.
-- If they have more than 5 orders, returns a VIP message and lists recent orders.
-- Demonstrates control logic, OUT parameters, and smart SELECT output.

CREATE OR ALTER PROCEDURE Sales.usp_CheckOrdersPerCustomer
    @CustomerID INT,
    @Msg VARCHAR(150) OUTPUT
AS
BEGIN
    DECLARE @OrderCount INT;

    -- Get total order count for this customer
    SELECT @OrderCount = COUNT(*)
    FROM Sales.[Order]
    WHERE CustomerID = @CustomerID;

    IF @OrderCount > 5
    BEGIN
        SET @Msg = 'This customer is a VIP (more than 5 orders)';
        PRINT @Msg;
    END

    ELSE IF @OrderCount = 0
    BEGIN
        SET @Msg = 'This customer has not placed any orders.';
        PRINT @Msg;
        RETURN;
    END

    ELSE
    BEGIN
        SET @Msg = CONCAT('Customer has placed ', @OrderCount, ' order(s).');
        PRINT @Msg;
    END;

    -- Show recent orders with total amount
    SELECT 
        o.OrderID,
        o.OrderDate,
        TotalAmount = SUM(od.Quantity * od.UnitPrice)
    FROM Sales.[Order] o
        JOIN Sales.OrderDetail od ON o.OrderID = od.OrderID
    WHERE o.CustomerID = @CustomerID
    GROUP BY o.OrderID, o.OrderDate
    ORDER BY o.OrderDate DESC;
END
go
--Calling it :

DECLARE @OutMsg VARCHAR(150),@CustomerID int = 4

EXEC Sales.usp_CheckOrdersPerCustomer 
    @CustomerID,
    @Msg = @OutMsg OUTPUT;

select 'Result Message: ' + @OutMsg as ResultMsg;

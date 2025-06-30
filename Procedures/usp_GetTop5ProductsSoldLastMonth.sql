-- This stored procedure retrieves the top 5 best-selling products
-- (by total quantity sold) during the previous month.

CREATE PROCEDURE usp_GetTop5ProductsSoldLastMonth
AS
BEGIN

    DECLARE @StartDate DATE = DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()) - 1, 1); -- day one of the previous month
    DECLARE @EndDate DATE = EOMONTH(@StartDate); -- end of the previous month

    SELECT TOP 5
        p.ProductID,
        p.Name,
        TotalQuantitySold = SUM(od.Quantity)
    FROM 
        Sales.OrderDetail od
        JOIN Sales.[Order] o ON o.OrderID = od.OrderID
        JOIN Inventory.Product p ON p.ProductID = od.ProductID
    WHERE 
        o.OrderDate BETWEEN @StartDate AND @EndDate
    GROUP BY 
        p.ProductID, p.Name
    ORDER BY 
        TotalQuantitySold DESC;
END;

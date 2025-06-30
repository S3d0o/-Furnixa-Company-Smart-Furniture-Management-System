-- generate order report by date range

CREATE PROCEDURE Sales.usp_GenerateOrderReportByDateRange
    @Date1 DATE,
    @Date2 DATE
AS
BEGIN
    SELECT 
        o.OrderID,
        o.OrderDate,
        TotalAmount = SUM(od.Quantity * od.UnitPrice)
    FROM 
        Sales.[Order] o
        JOIN Sales.OrderDetail od ON od.OrderID = o.OrderID
    WHERE 
        o.OrderDate BETWEEN @Date1 AND @Date2
    GROUP BY 
        o.OrderID, o.OrderDate
    ORDER BY 
        o.OrderDate;
END
GO
  
--Calling it :

EXEC Sales.usp_GenerateOrderReportByDateRange 
		@Date1 = '2024-01-01', 
		@Date2 = '2024-12-31';

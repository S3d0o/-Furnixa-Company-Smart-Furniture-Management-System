-- Returns the number of years a customer has been active
-- by retrieving their JoinDate from the Sales.Customer table.
-- Useful for loyalty programs, tier systems, or retention analysis.

CREATE FUNCTION Sales.fn_GetCustomerActive(@CustomerId INT)
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE 
        @JoinDate DATE,
        @Years INT,
        @Months INT,
        @CustName VARCHAR(100);

    SELECT 
        @JoinDate = c.JoinDate, 
        @CustName = c.FullName
    FROM Sales.Customer c
    WHERE c.CustomerID = @CustomerId;

    -- Handle null JoinDate
    IF @JoinDate IS NULL
        RETURN 'Unknown';

    -- Calculate total Time active
    SET @Months = DATEDIFF(MONTH, @JoinDate, GETDATE());
    SET @Years = @Months / 12;
    SET @Months = @Months % 12;

    -- Return formatted message
    RETURN CONCAT(@CustName, ' has been active for ',
                  @Years, ' year', CASE WHEN @Years > 1 THEN 's' ELSE '' END,
                  ' and ',
                  @Months, ' month', CASE WHEN @Months > 1 THEN 's' ELSE '' END);
END;

-- Purpose: Replaces the employee assigned to process a specific order.
-- Useful for reassigning responsibility when an employee leaves or unavailable.
-- Handles errors gracefully if the new employee doesn't exist in the system.
go
CREATE OR ALTER PROCEDURE Sales.usp_ReplaceEmployeeInOrder
    @OldEmpID INT,
    @NewEmpID INT,
    @OrderID INT
AS
BEGIN
    BEGIN TRY
        -- Check if new employee exists in the company
--
        IF NOT EXISTS (
            SELECT 1
            FROM HR.Employee
            WHERE EmployeeID = @NewEmpID
        )
        BEGIN
            THROW 50001, 'The new employee does not exist. Please add them to the system first.', 1;
        END
        -- Update the order to be processed by the new employee
        UPDATE Sales.[Order]
        SET ProcessedBy = @NewEmpID
        WHERE OrderID = @OrderID AND ProcessedBy = @OldEmpID;

        PRINT 'Employee reassigned successfully to the order.';
    END TRY

    BEGIN CATCH
        PRINT 'Error occurred: ' + ERROR_MESSAGE();
    END CATCH
END;

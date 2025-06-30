--   stored procedure that will be used in case there is an old manager 
-- 	 who has left the department and a new one becomes his replacement. The 
-- 	 procedure should take 3 parameters (old Emp.id, new Emp.id and the 
-- 	 Dept number) and it will be used to update the Dept table.

CREATE PROC usp_ReplacementMangerInDepartmentTable
@Old_Emp_Id int,
@New_Emp_Id int,
@Department_Id int
AS
BEGIN

	UPDATE HR.Department
	SET ManagerID = @New_Emp_Id
	where DepartmentID = @Department_Id
	and ManagerID=@Old_Emp_Id
	
	 if @@ROWCOUNT = 0  --handles if no record matched
        print 'Update failed: No matching record found.';
    else
        print 'Manager replacement successful.';
END;
-- execute it :
go
EXEC ReplacementInFloorTable 
    @Old_Emp_Id = 1, 
    @New_Emp_Id = 10, 
    @Department_Id = 2;

ALTER TABLE HR.Employee
ADD SupervisorID INT NULL;

ALTER TABLE HR.Department
ADD ManagerID INT NULL;

-- 
ALTER TABLE HR.Employee
ADD CONSTRAINT FK_Employee_Supervisor
FOREIGN KEY (SupervisorID) REFERENCES HR.Employee(EmployeeID);

ALTER TABLE HR.Department
ADD CONSTRAINT FK_Department_Manager
FOREIGN KEY (ManagerID) REFERENCES HR.Employee(EmployeeID);

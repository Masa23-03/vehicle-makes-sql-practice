--   Problem 54: Get All Employees managed by 'Mohammed'

SELECT Employees.Name , Employees.Salary , Employees.ManagerID , Managers.Name AS ManagerName
FROM 
Employees INNER JOIN 
Employees AS Managers
ON Employees.ManagerID = Managers.EmployeeID
WHERE Managers.Name='Mohammed'

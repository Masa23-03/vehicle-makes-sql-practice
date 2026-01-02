-- Problem 52: Get all employees that have manager or does not have manager along with Manager name, 
-- incase no manager name show null


SELECT Employees.Name , Employees.Salary , Employees.ManagerID ,  Managers.Name AS ManagerName
FROM Employees
LEFT JOIN Employees AS Managers
ON Employees.ManagerID=Managers.EmployeeID
--   Problem 32: Get all Vehicle_Display_Name, year, Age for vehicles 
--  that their age between 15 and 25 years old




SELECT *
FROM 
(
SELECT Vehicle_Display_Name , v.Year ,
Age= YEAR (GETDATE ()) - v.Year 
FROM VehicleDetails v )R1
WHERE R1.Age BETWEEN  15 AND 25
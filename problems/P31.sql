-- Problem 31: Get all Vehicle_Display_Name, year and add extra column to calculate the age of the car
-- then sort the results by age desc.
SELECT Vehicle_Display_Name , Year ,
Age  =YEAR (GETDATE())-v.Year


FROM VehicleDetails v 
ORDER BY Age Desc
-- Problem 28: Get all vehicles that their body is 'Coupe' or 'Hatchback' or 'Sedan' 
--			   and manufactured in year 2008 or 2020 or 2021 

SELECT v.* , b.BodyName
FROM VehicleDetails v 
INNER JOIN Bodies b ON v.BodyID = b.BodyID
WHERE 
b.BodyName IN ('Coupe' ,'Hatchback' , 'Sedan' )
AND  
v.Year IN (2008 , 2020 , 2021)


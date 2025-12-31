-- Problem 25: Get make and vehicles that the engine contains 'OHV' and have Cylinders = 4 
SELECT v.* , m.Make
FROM VehicleDetails v
INNER JOIN Makes m
ON v.MakeID=m.MakeID
WHERE v.Engine_Cylinders =4  AND v.Engine LIKE '%OHV%'
-- Problem 26: Get all vehicles that their body is 'Sport Utility' and Year > 2020 

SELECT v.*  , b.BodyName
FROM VehicleDetails v
INNER JOIN Bodies b
ON v.BodyID = b.BodyID
WHERE b.BodyName='Sport Utility' AND v.Year>2020

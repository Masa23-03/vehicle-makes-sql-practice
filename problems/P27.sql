-- Problem 27: Get all vehicles that their Body is 'Coupe' or 'Hatchback' or 'Sedan' 
SELECT v.*  , b.BodyName
FROM VehicleDetails v INNER JOIN Bodies b
ON v.BodyID = b.BodyID
WHERE b.BodyName  IN ('Coupe' , 'Hatchback' , 'Sedan')
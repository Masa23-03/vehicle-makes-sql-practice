--   Problem 9: Get all vehicles that runs with GAS

SELECT V.* , F.FuelTypeName
FROM VehicleDetails v
 INNER JOIN FuelTypes f
 ON v.FuelTypeID = f.FuelTypeID
 WHERE f.FuelTypeName = N'GAS'


 -- N is for unicode, to search in other langauges
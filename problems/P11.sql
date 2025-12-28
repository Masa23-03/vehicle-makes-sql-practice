--   Problem 11: Get Total Makes that runs with GAS 

SELECT  COUNT (*) TotalMakesRunsOnGAS 
 FROM 
 (SELECT  Distinct M.Make , F.FuelTypeName
FROM VehicleDetails v 
INNER JOIN Makes m ON v.MakeID = m.MakeID
INNER JOIN FuelTypes f ON v.FuelTypeID = f.FuelTypeID
WHERE f.FuelTypeName = N'GAS'
 ) AS R1
 
--   Problem 10: Get all Makes that runs with GAS


SELECT Distinct M.Make , F.FuelTypeName
FROM VehicleDetails V 
INNER JOIN Makes M ON V.MakeID = M.MakeID
INNER JOIN FuelTypes F ON V.FuelTypeID = F.FuelTypeID
WHERE F.FuelTypeName = N'GAS'

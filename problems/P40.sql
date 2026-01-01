-- Problem 40: Get all vehicles that has one of the Max 3 Engine CC
SELECT Vehicle_Display_Name , Engine_CC
FROM VehicleDetails v
WHERE v.Engine_CC IN (
SELECT DISTINCT TOP 3 Engine_CC
FROM VehicleDetails
ORDER BY Engine_CC DESC
 )
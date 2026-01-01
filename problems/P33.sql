-- Problem 33: Get Minimum Engine CC , Maximum Engine CC , and Average Engine CC of all Vehicles 

SELECT Min(v.Engine_CC) AS Min , Max(v.Engine_CC) as Max , Avg(v.Engine_CC) AS Avg
FROM VehicleDetails v

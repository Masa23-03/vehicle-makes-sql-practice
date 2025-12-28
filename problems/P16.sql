-- Problem 16: Get all Makes that manufactures DriveTypeName = FWD
SELECT Distinct m.Make , d.DriveTypeName
FROM VehicleDetails v 
INNER JOIN Makes m 
ON v.MakeID = m.MakeID
INNER JOIN DriveTypes d
ON v.DriveTypeID=d.DriveTypeID
WHERE d.DriveTypeName = 'FWD'


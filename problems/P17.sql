-- Problem 17: Get total Makes that Mantufactures DriveTypeName=FWD
SELECT  COUNT(*) MakeWithFWD
FROM 
(
SELECT distinct m.Make 
FROM
VehicleDetails v 
INNER JOIN Makes m ON v.MakeID = m.MakeID
INNER JOIN DriveTypes d ON v.DriveTypeID = d.DriveTypeID
WHERE DriveTypeName='FWD'
) R1


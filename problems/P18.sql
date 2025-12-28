--  Problem 18: Get total vehicles per DriveTypeName Per Make 
--				and order them per make asc then per total Desc 


SELECT Make,DriveTypeName, COUNT(*) TotalVehicles
FROM VehicleDetails v 
INNER JOIN Makes m ON v.MakeID=m.MakeID
INNER JOIN DriveTypes d ON v.DriveTypeID=d.DriveTypeID
GROUP BY DriveTypeName , Make
ORDER BY Make ASC , TotalVehicles DESC
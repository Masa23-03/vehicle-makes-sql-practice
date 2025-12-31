-- Problem 23: Get MakeID , Make, SubModelName for all vehicles that have SubModelName 'Elite' 

SELECT v.MakeID , m.Make , s.SubModelName
FROM VehicleDetails v
INNER JOIN SubModels s
ON v.SubModelID = s.SubModelID
INNER JOIN Makes m
ON v.MakeID = m.MakeID
WHERE SubModelName = 'Elite'


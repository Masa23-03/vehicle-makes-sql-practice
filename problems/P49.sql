-- Problem 49: Get the Lowest Manufacturers manufactured the lowest number of models
--Get the Lowest Manufacturers manufactured the lowest number of models , 
-- remember that they could be more than one manufacturer have the same lowest number of models


SELECT Make , COUNT(*) AS LowestModels
FROM Makes 
INNER JOIN MakeModels ON Makes.MakeID=MakeModels.MakeID
GROUP BY Make 
HAVING COUNT(*) =
(
SELECT MIN(TotalNumberOfModels) AS LowestNumberOfModels
FROM
(
SELECT MakeID , COUNT(*) AS TotalNumberOfModels
FROM MakeModels
GROUP BY MakeID)
R1)
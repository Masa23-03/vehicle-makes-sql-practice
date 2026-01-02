-- Problem 48: Get the highest Manufacturers manufactured the highest number of models
-- Get the highest Manufacturers manufactured the highest number of models , 
--remember that they could be more than one manufacturer have the same high number of models 


SELECT Make , COUNT(*) highestModels
FROM Makes INNER JOIN MakeModels ON Makes.MakeID= MakeModels.MakeID
GROUP BY Make
HAVING COUNT(*) =
(
-- Find the highest 
SELECT  MAX(R1.TotalNumberOfModels) AS HighestNumberOfModels
FROM 
-- Find the total number of models per each make 
(SELECT MakeID , COUNT(*) AS TotalNumberOfModels
FROM MakeModels 
GROUP BY MakeID)R1
) 
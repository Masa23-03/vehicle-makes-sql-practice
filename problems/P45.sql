-- Problem 45: Get Number of Models Per Make

SELECT m.Make,  COUNT(ModelID) AS NumberOfModels
FROM MakeModels mm 
INNER JOIN Makes m ON mm.MakeID = m.MakeID
GROUP BY Make
ORDER BY NumberOfModels DESC


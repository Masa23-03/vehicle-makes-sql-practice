-- Problem 46: Get the highest 3 manufacturers that make the highest number of models

SELECT  TOP 3 m.Make , COUNT(mm.ModelID) AS NumberOfModels
FROM Makes m 
INNER JOIN MakeModels mm ON m.MakeID = mm.MakeID
GROUP BY m.Make
ORDER BY NumberOfModels DESC
-- Problem 47: Get the highest number of models manufactured
SELECT MAX(R1.NumberOfModels) AS TotalNumberOfModels
FROM 
(
-- return total models of each make in the inner select and then return the highest between them 
SELECT m.Make , COUNT(*) AS NumberOfModels
FROM
Makes m
INNER JOIN MakeModels mm 
ON m.MakeID = mm.MakeID
GROUP BY m.Make
) R1



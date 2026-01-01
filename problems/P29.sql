--   Problem 29: Return found=1 if there is any vehicle made in year 1950





SELECT found = 1 
WHERE 
EXISTS
(
SELECT  top 1 id 
FROM VehicleDetails
WHERE Year = 1950
)


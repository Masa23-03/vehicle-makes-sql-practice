/* Problem 1: Create Master View*/


CREATE VIEW VehicleMasterDetails AS 
SELECT v.ID , v.MakeID ,  Makes.Make , v.ModelID,MakeModels.ModelName as Model ,
v.SubModelID,SubModels.SubModelName as 'sub Model' , v.BodyID , Bodies.BodyName , 

v.Vehicle_Display_Name , v.Year ,
v.DriveTypeID,
 DriveTypes.DriveTypeName as 'Drive Type' , v.Engine , v.Engine_CC , v.Engine_Cylinders , v.Engine_Liter_Display 
, v.FuelTypeID , FuelTypes.FuelTypeName , 
v.NumDoors 
FROM VehicleDetails v
 LEFT JOIN Makes ON v.MakeID = Makes.MakeID 
 LEFT JOIN MakeModels ON v.ModelID = MakeModels.ModelID 
 LEFT JOIN SubModels ON v.SubModelID = SubModels.SubModelID 
 LEFT JOIN FuelTypes ON v.FuelTypeID = FuelTypes.FuelTypeID 
 LEFT JOIN Bodies ON v.BodyID = Bodies.BodyID 
 LEFT JOIN  DriveTypes ON v.DriveTypeID = DriveTypes.DriveTypeID


 SELECT * FROM VehicleMasterDetails
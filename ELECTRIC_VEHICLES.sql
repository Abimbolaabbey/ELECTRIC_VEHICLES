-- This is what our data look like

SELECT *
FROM Electric_Vehicles ev 
LIMIT 10;


--Returns the class with the shortest range on a single charge

SELECT Vehicle_Class,AVG("Range (km)") AS Average_range 
FROM Electric_Vehicles ev 
GROUP BY Vehicle_Class 
ORDER BY Average_range ASC 
LIMIT 1;

--Returns the class with the Longest range on a single charge

SELECT Vehicle_Class,AVG("Range (km)") AS Average_range 
FROM Electric_Vehicles ev 
GROUP BY Vehicle_Class 
ORDER BY Average_range DESC  
LIMIT 1;

--Returns the recharge time in hours

SELECT AVG("Recharge Time (h)") AS Average_recharge_time_in_hours
FROM Electric_Vehicles ev 

--Returns the average range in KM

SELECT AVG("Range (km)") AS Average_range_in_km
FROM Electric_Vehicles ev 


---This will return the best vehicles in terms of recharge time and range

SELECT Model_Year ,Make Vehicle_Class ,Model,"Motor (kW)" ,Transmission ,"Range (km)" ,"Recharge Time (h)" ,("Range (km)"/"Recharge Time (h)") AS Score
FROM Electric_Vehicles ev 
ORDER BY Score DESC 
LIMIT 1;

---This will return the least vehicles in terms of recharge time and range

SELECT Model_Year ,Make Vehicle_Class ,"Motor (kW)" ,Transmission ,"Range (km)" ,"Recharge Time (h)" ,("Range (km)"/"Recharge Time (h)") AS Score
FROM Electric_Vehicles ev 
ORDER BY Score 
LIMIT 1;


---Extract the followig data for further analysis

SELECT "Motor (kW)" AS Battery_capacity_in_KW,"Range (km)" ,Transmission, "Recharge Time (h)" 
FROM Electric_Vehicles ev 


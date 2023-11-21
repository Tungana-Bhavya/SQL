use bha
Drop table vehicle
Create table vehicle
(
vehicle_id int,
vehicle_name varchar(20),
vehicle_color varchar(20),
Number_of_vehicles_sale int,
fuel_type varchar(10)
);

Insert into vehicle values(21011, 'Activa 6G', 'White', 75, 'Petrol'),
(21012, 'Royal-Enfiled', 'Forest Green', 18, 'Petrol'),
(21013, 'Bajaj Pulsar 150', 'Neon Silver', 40,'Petrol'),
(21014, 'Yamaha MT 15 v2','Racing Blue',11,'Petrol'),
(21015, 'Revolt RV 400','Cosmic Black', 11,'Electric'),
(21016, 'Bajaj Chetak','Black', 20,'Electric'),
(21017, 'Activa 6G','Black Metallic', 125,'Electric'),
(21018, 'Honda Activa 125','White', 95,'Petrol'),
(21019, 'Hero Splender Plus','Black with Purple', 80,'Petrol'),
(21010, 'Royal-Enfiled', 'Redditchh Red', 40, 'Petrol');

SELECT * from vehicle;

## Row_Number()
SELECT * , ROW_NUMBER() 
OVER (ORDER BY Number_of_vehicles_sale DESC) as row_num from vehicle;


## Rank() with PARTITION BY()
SELECT *, RANK() 
OVER(PARTITION BY fuel_type ORDER BY Number_of_vehicles_sale DESC) 
as sales_rank from vehicle;


## Dense_Rank() with PARTITION BY()
SELECT *, DENSE_RANK() 
OVER (PARTITION BY fuel_type ORDER BY Number_of_vehicles_sale DESC) 
as sales_dense_rank from vehicle;


## Percent_Rank() with PARTITION BY()
SELECT *, PERCENT_RANK() 
OVER (PARTITION BY fuel_type ORDER BY Number_of_vehicles_sale DESC) 
as sales_percent_rank from vehicle;


## NTILE()
SELECT *, NTILE(2) 
OVER (ORDER BY Number_of_vehicles_sale) 
as ntile_rank from vehicle;
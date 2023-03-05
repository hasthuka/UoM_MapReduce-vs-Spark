
--1. Activate Hive on EMR CLUSTER

Type Hive on EMR

--2.Create Table 

CREATE EXTERNAL TABLE delay_flights (
  ID INT,
  Year INT,
  Month INT,
  DayOfMonth INT,
  DayOfWeek INT,
  DepTime INT,
  CRSDepTime INT,
  ArrTime INT,
  CRSArrTime INT,
  UniqueCarrier STRING,
  FlightNum INT,
  TailNum STRING,
  ActualElapsedTime INT,
  CRSElapsedTime INT,
  AirTime INT,
  ArrDelay INT,
  DepDelay INT,
  Origin STRING,
  Dest STRING,
  Distance INT,
  TaxiIn INT,
  TaxiOut INT,
  Cancelled INT,
  CancellationCode STRING,
  Diverted INT,
  CarrierDelay INT,
  WeatherDelay INT,
  NASDelay INT,
  SecurityDelay INT,
  LateAircraftDelay INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION 's3://delayedflights05032023/dataset/';

--3.For year wise carrier delay 2003-2010
SELECT Year, 
AVG((CarrierDelay / ArrDelay) * 100) AS avg_carrier_delay
FROM delay_flights
WHERE Year BETWEEN 2003 AND 2010 
GROUP BY Year
ORDER BY Year;

--4.For year wise NAS delay 2003-2010
SELECT Year, 
AVG((NASDelay / ArrDelay) * 100) AS avg_nas_delay
FROM delay_flights
WHERE Year BETWEEN 2003 AND 2010 
GROUP BY Year
ORDER BY Year;

--5.For year wise Weather delay 2003-2010
SELECT Year, 
AVG((WeatherDelay / ArrDelay) * 100) AS avg_weather_delay
FROM delay_flights
WHERE Year BETWEEN 2003 AND 2010 
GROUP BY Year
ORDER BY Year;

--6. For year wise late aircraft delay 2003-2010
SELECT Year, 
AVG((LateAircraftDelay / ArrDelay) * 100) AS avg_late_air_craft_delay
FROM delay_flights
WHERE Year BETWEEN 2003 AND 2010
GROUP BY Year
ORDER BY Year;

--7. For year wise security delay 2003-2010
SELECT Year, 
AVG((SecurityDelay / ArrDelay) * 100) AS avg_security_delay
FROM delay_flights
WHERE Year BETWEEN 2003 AND 2010
GROUP BY Year
ORDER BY Year;

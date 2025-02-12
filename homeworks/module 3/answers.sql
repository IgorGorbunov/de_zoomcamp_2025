CREATE OR REPLACE EXTERNAL TABLE `taxi-rides-ny.nytaxi.external_yellow_tripdata`
OPTIONS (
  format = 'PARQUET',
  uris = ['gs://de_zoomcamp_hw3/trip data/*']
);

CREATE OR REPLACE TABLE taxi-rides-ny.nytaxi.yellow_tripdata_non_partitioned AS
SELECT * FROM taxi-rides-ny.nytaxi.external_yellow_tripdata;

--1 
SELECT count(*)
FROM taxi-rides-ny.nytaxi.yellow_tripdata_non_partitioned
WHERE DATE(tpep_pickup_datetime) BETWEEN '2024-01-01' AND '2024-05-31';

--2
SELECT DISTINCT PULocationID
FROM taxi-rides-ny.nytaxi.external_yellow_tripdata;

SELECT DISTINCT PULocationID
FROM taxi-rides-ny.nytaxi.yellow_tripdata_non_partitioned;

--3
SELECT PULocationID
FROM taxi-rides-ny.nytaxi.yellow_tripdata_non_partitioned;

SELECT PULocationID, DOLocationID
FROM taxi-rides-ny.nytaxi.yellow_tripdata_non_partitioned;

--4
SELECT count(*)
FROM taxi-rides-ny.nytaxi.yellow_tripdata_non_partitioned;
WHERE fare_amount = 0

--5
CREATE OR REPLACE TABLE taxi-rides-ny.nytaxi.yellow_tripdata_partitioned_clustered
PARTITION BY DATE(tpep_dropoff_datetime)
CLUSTER BY VendorID AS
SELECT * FROM taxi-rides-ny.nytaxi.external_yellow_tripdata;

--6
SELECT DISTINCT VendorID 
FROM taxi-rides-ny.nytaxi.yellow_tripdata_non_partitioned
WHERE DATE(tpep_dropoff_datetime) BETWEEN '2024-03-01' AND '2024-03-15'

SELECT DISTINCT VendorID 
FROM taxi-rides-ny.nytaxi.yellow_tripdata_partitioned_clustered
WHERE DATE(tpep_dropoff_datetime) BETWEEN '2024-03-01' AND '2024-03-15'
-- Databricks notebook source
DROP TABLE IF EXISTS formula1_dev.sliver.drivers;
CREATE TABLE IF NOT EXISTS formula1_dev.sliver.drivers AS (
SELECT driverId as deiver_id,
driverRef as driver_ref,
number,
code,
concat(name.forename, ' ', name.surname) as name,
dob,
nationality,
current_timestamp() as ingestion_date
FROM formula1_dev.bronze.drivers
)

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_dev.sliver.results;
CREATE TABLE IF NOT EXISTS formula1_dev.sliver.results AS (
SELECT resultId as result_id,
raceId as race_id,
driverId as driver_id,
constructorId as constructor_id,
number,
grid,
position,
positionText AS position_text,
positionOrder AS position_order,
points,
laps,
time,
milliseconds,
fastestLap,
rank,
fastestLapTime AS fastestLapTime,
fastestLapSpeed AS fastestLapSpeed,
statusId,
current_timestamp() as ingestion_date
FROM formula1_dev.bronze.results)

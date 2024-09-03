-- Databricks notebook source
CREATE CATALOG IF NOT EXISTS formula1_dev;

USE CATALOG formula1_dev;

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS bronze
MANAGED LOCATION 'abfss://bronze@databricksextdlkd.dfs.core.windows.net/';

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS sliver
MANAGED LOCATION 'abfss://sliver@databricksextdlkd.dfs.core.windows.net/';

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS gold
MANAGED LOCATION 'abfss://gold@databricksextdlkd.dfs.core.windows.net/';

-- COMMAND ----------


CREATE TABLE IF NOT EXISTS formula1_dev.bronze.drivers (
  driverId INT,
  driverRef STRING,
  number INT,
  code STRING,
  name STRUCT<forename: STRING, surname: STRING>,
  dob DATE,
  nationality STRING,
  url STRING
)
USING json
OPTIONS (path 'abfss://bronze@databricksextdlkd.dfs.core.windows.net/drivers.json');

-- COMMAND ----------

DROP TABLE IF EXISTS formula1_dev.bronze.results;
CREATE TABLE IF NOT EXISTS formula1_dev.bronze.results (
resultId INT,
raceId INT,
driverId INT,
constructorId INT,
number INT,
grid INT,
position INT,
positionText STRING,
positionOrder INT,
points INT,
laps INT,
time String,
milliseconds INT,
fastestLap INT,
rank INT,
fastestLapTime String,
fastestLapSpeed String,
statusId INT
)
USING json
OPTIONS (path 'abfss://bronze@databricksextdlkd.dfs.core.windows.net/results.json')

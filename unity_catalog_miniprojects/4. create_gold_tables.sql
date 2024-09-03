-- Databricks notebook source
DROP TABLE IF EXISTS formula1_dev.gold.driver_wins;
CREATE TABLE IF NOT EXISTS formula1_dev.gold.driver_wins AS (
  SELECT d.name, count(1) AS number_of_wins
  FROM formula1_dev.sliver.results r
  JOIN formula1_dev.sliver.drivers d ON r.driver_id = d.deiver_id
  WHERE r.position = 1
  GROUP BY d.name
  );
SELECT * FROM formula1_dev.gold.driver_wins order by number_of_wins desc


-- Databricks notebook source
-- MAGIC %md
-- MAGIC #### Create the external locations
-- MAGIC 1. bronze
-- MAGIC 2. sliver
-- MAGIC 3. gold
-- MAGIC

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS  databrickscourse_extdl_bronze
URL 'abfss://bronze@databricksextdlkd.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL databrickscource_uc_rg_dk);

-- COMMAND ----------

DESC EXTERNAL LOCATION databrickscourse_extdl_bronze;

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS  databrickscourse_extdl_sliver
URL 'abfss://sliver@databricksextdlkd.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL databrickscource_uc_rg_dk);

-- COMMAND ----------

DESC EXTERNAL LOCATION databrickscourse_extdl_sliver;

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS  databrickscourse_extdl_gold
URL 'abfss://gold@databricksextdlkd.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL databrickscource_uc_rg_dk);

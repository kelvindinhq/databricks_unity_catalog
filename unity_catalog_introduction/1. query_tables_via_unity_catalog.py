# Databricks notebook source
# MAGIC %sql
# MAGIC SELECT * FROM demo_catalog.demo_schema.circuits;

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT current_catalog()

# COMMAND ----------

# MAGIC %sql
# MAGIC show catalogs

# COMMAND ----------

# MAGIC %sql
# MAGIC use catalog demo_catalog
# MAGIC

# COMMAND ----------

# MAGIC %sql
# MAGIC select current_schema()

# COMMAND ----------

# MAGIC %sql
# MAGIC USE SCHEMA demo_schema

# COMMAND ----------

# MAGIC %sql
# MAGIC SELECT * FROM circuits

# COMMAND ----------

# MAGIC %sql
# MAGIC SHOW TABLEs

# COMMAND ----------

display(spark.sql("SHOW TABLES"))

# COMMAND ----------

df = spark.table('demo_catalog.demo_schema.circuits')

# COMMAND ----------

display(df)

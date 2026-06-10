#!/bin/bash

hdfs dfs -rm -r -skipTrash /diabetes_project/output 2>/dev/null

echo "Starting Hadoop Streaming Job..."

mapred streaming \
  -input /diabetes_project/input/diabetes_012_health_indicators_BRFSS2015.csv \
  -input /diabetes_project/input/diabetes_binary_health_indicators_BRFSS2015.csv \
  -output /diabetes_project/output \
  -mapper "python3 mapper.py" \
  -reducer "python3 reducer.py" \
  -file hadoop/mapper.py \
  -file hadoop/reducer.py

echo "Job Finished"

mkdir -p data
hdfs dfs -getmerge /diabetes_project/output data/clean_dataset.csv

echo "The clean dataset is saved locally as data/clean_dataset.csv"

#!/bin/bash

hdfs dfs -rm -r -skipTrash /diabetes_project/output 2>/dev/null

echo "Starting Hadoop Streaming Job..."

mapred streaming \
  -files hadoop/mapper.py,hadoop/reducer.py \
  -input /diabetes_project/input/diabetes_012_health_indicators_BRFSS2015.csv \
  -input /diabetes_project/input/diabetes_binary_health_indicators_BRFSS2015.csv \
  -output /diabetes_project/output \
  -mapper "python3 mapper.py" \
  -reducer "python3 reducer.py"

echo "Job Finished"

mkdir -p data

# Hadoop's shuffle/sort phase pushes header rows to the bottom of the output
# because numbers (0, 1) sort before uppercase letters (D). 
# To fix this, our mapper skips the header entirely, and we manually write 
# it here before appending the MapReduce output.
echo "Diabetes_binary,HighBP,HighChol,CholCheck,BMI,Smoker,Stroke,HeartDiseaseorAttack,PhysActivity,Fruits,Veggies,HvyAlcoholConsump,AnyHealthcare,NoDocbcCost,GenHlth,MentHlth,PhysHlth,DiffWalk,Sex,Age,Education,Income" > data/clean_dataset.csv

hdfs dfs -getmerge /diabetes_project/output data/tmp_dataset.csv
cat data/tmp_dataset.csv >> data/clean_dataset.csv
rm data/tmp_dataset.csv

echo "The clean dataset is saved locally as data/clean_dataset.csv"

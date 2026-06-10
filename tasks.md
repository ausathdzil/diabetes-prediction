# Big Data Analytics Project: Task Distribution Roadmap

This roadmap is designed to help distribute tasks among your team members. It covers all technical implementation steps as well as the academic requirements for the final journal submission.

## Completed

Data pipeline, HDFS, and preprocessing.

- `[x]` **HDFS Setup:** Ingest Dataset 1 and Dataset 3 into Hadoop.
- `[x]` **MapReduce Scripting:** Write Python scripts for Hadoop Streaming.
  - `[x]` Mapper: Handle headers and standardize labels (Class 2.0 -> 1.0).
  - `[x]` Reducer: Remove duplicate records.
- `[x]` **Execution:** Run the pipeline (`run_pipeline.sh`) and extract the final `clean_dataset.csv`.

## EDA & Visualization

Exploring the cleaned data and building the required dashboard visuals.

- `[x]` **Environment Setup:** Create the `diabetes_prediction.ipynb` notebook and load `clean_dataset.csv`.
- `[ ]` **Descriptive Analytics:** Generate summary statistics (`.describe()`, missing value checks).
- `[ ]` **Dashboard Visualizations (Min 4 Charts):**
  - `[ ]` *Chart 1 (Distribution):* Target variable class distribution (Diabetes vs. No Diabetes) to prove imbalance.
  - `[ ]` *Chart 2 (Correlation):* Heatmap of all 21 features to find strong predictors (e.g., BMI, HighBP, Age).
  - `[ ]` *Chart 3 (Comparison):* Grouped bar chart comparing Diabetes rates among individuals with vs. without High Blood Pressure/Cholesterol.
  - `[ ]` *Chart 4 (Trend):* Histogram or KDE plot showing Age and BMI distribution across the two Diabetes classes.
- `[ ]` **Image Export:** Save all charts as high-resolution PNGs (clear and readable) for the journal.

## Machine Learning

Predictive modeling, balancing data, and extracting insights.

- `[ ]` **Data Splitting:** Split the cleaned dataset into Training (80%) and Testing (20%) sets.
- `[ ]` **Data Balancing:** Apply `SMOTE-ENN` *strictly* to the Training set to handle the severe class imbalance without causing data leakage.
- `[ ]` **Model Training:** 
  - `[ ]` Train an `XGBoost Classifier`.
  - `[ ]` Train a `Random Forest Classifier`.
- `[ ]` **Evaluation:** Generate metrics (Accuracy, Precision, Recall, F1-Score, AUC-ROC) and Confusion Matrices for both models.
- `[ ]` **Model Interpretability:** Run SHAP analysis on the best performing model to generate a Summary Plot (showing the most important risk factors).
- `[ ]` *(Optional/Bonus)* **Benchmarking:** Run the trained model against Dataset 2 to demonstrate performance on an independent sample.

## Article Journal

Journal writing, academic references, and ensuring formatting compliance.

- `[ ]` **Literature Review (Priority Task):** Gather 20 references from Scopus/SINTA journals or books published between 2021-2026 regarding "Diabetes prediction using Machine Learning" and "Big Data in Healthcare".
- `[ ]` **Drafting Core Sections:**
  - `[ ]` *Business Understanding:* Define the background problem (e.g., the global rise of diabetes and the need for early risk detection).
  - `[ ]` *Data Understanding:* Define the datasets and explicitly write out the **5Vs** (Volume, Velocity, Variety, Veracity, Value) for the BRFSS data.
- `[ ]` **Compiling Results:** Integrate the EDA visuals and ML evaluation metrics into the report.
- `[ ]` **Recommendations:** Draft data-driven recommendations based on the ML/SHAP results (e.g., "Public health campaigns should target high BMI and High Blood Pressure, as the model identified these as the strongest predictors").
- `[ ]` **Formatting & QA:** Ensure the document is max 12 pages, matches the requested journal format (`s.id/formatjurnal`), and export to PDF.
- `[ ]` **Presentation Prep:** Create the slide deck for the Week 15 presentation.

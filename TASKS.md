# Big Data Analytics Project: Task Distribution Roadmap

This roadmap covers all technical implementation steps and academic requirements for the final journal submission.

## Preprocessing & Data Pipeline (Hadoop MapReduce)

Data pipeline, HDFS, and preprocessing.

- `[x]` **HDFS Setup:** Ingest Dataset 1 and Dataset 3 into Hadoop.
- `[x]` **MapReduce Scripting:** Write Python scripts for Hadoop Streaming.
- `[x]` **Execution:** Run the pipeline and extract the final `clean_dataset.csv`.

## EDA & Streamlit Dashboard

Exploring the cleaned data and building the required interactive dashboard.

- `[ ]` **Environment Setup:** Add `streamlit` and `plotly` to dependencies. Create `dashboard/app.py`.
- `[ ]` **Descriptive Analytics:** Display summary statistics (`.describe()`) and the 5Vs characteristics directly in the app.
- `[ ]` **Dashboard Visualizations (Min 4 Charts):**
  - `[ ]` *Chart 1 (Distribution):* Target variable class distribution (Diabetes vs. No Diabetes).
  - `[ ]` *Chart 2 (Correlation):* Interactive heatmap of all 21 health indicators.
  - `[ ]` *Chart 3 (Comparison):* Grouped bar chart comparing Diabetes rates among high-risk groups (HighBP, HighChol, Smokers).
  - `[ ]` *Chart 4 (Trend):* Distribution of Age and BMI across the two Diabetes classes.
- `[ ]` **App Deployment (Local):** Run `streamlit run dashboard/app.py` and verify all visual components.

## Machine Learning

Predictive modeling, balancing data, and extracting insights.

- `[ ]` **Environment Setup:** Create the `notebooks/diabetes_ml_pipeline.ipynb` notebook.
- `[ ]` **Data Splitting:** Load `clean_dataset.csv` and split into Training (80%) and Testing (20%).
- `[ ]` **Data Balancing:** Apply `SMOTE-ENN` *strictly* to the Training set.
- `[ ]` **Model Training:** Train an `XGBoost` and a `Random Forest` classifier.
- `[ ]` **Evaluation:** Generate metrics (Accuracy, Precision, Recall, F1-Score, AUC-ROC) and Confusion Matrices.
- `[ ]` **Model Interpretability:** Run SHAP analysis on the best performing model to generate a Summary Plot.

## Journal

Journal writing, academic references, and ensuring formatting compliance.

- `[ ]` **Literature Review:** Gather 20 references from Scopus/SINTA journals (2021-2026).
- `[ ]` **Drafting Core Sections:** Write Business Understanding and Data Understanding (5Vs).
- `[ ]` **Compiling Results:** Integrate the Streamlit dashboard screenshots and ML evaluation metrics into the report.
- `[ ]` **Recommendations:** Draft data-driven recommendations based on the ML/SHAP results.
- `[ ]` **Formatting & QA:** Ensure the document is max 12 pages and matches the requested format.

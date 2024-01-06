# Credit-Card-Fraud-Detection

## Overview
The CCFD project conducts an in-depth analysis of credit card transactions to identify fraudulent activities. The project encompasses outlier detection, data visualization, and transaction pattern analysis, applying statistical and visual methods to unearth potential fraud.

## Dependencies
- Python (3.x)
- Pandas
- NumPy
- Plotly
- SQLAlchemy
- Jupyter Notebook

To install Python packages, run the following command:
`pip install pandas numpy plotly sqlalchemy notebook`

## Data
The analysis operates on a structured dataset of credit card transactions, which includes information about cardholders, transaction details, and merchant categories. The data is managed in a MySQL database, as defined in the provided SQL schema and seed scripts.

## Preprocessing
Data is extracted from the database using SQL queries. Pandas is utilized to structure and preprocess the data for analysis.

## Model Training and Evaluation
The project does not involve model training but focuses on statistical methods to identify outliers and visualizations to interpret transaction patterns.

## Usage
Ensure a MySQL database is available and execute the provided SQL scripts to prepare the data. Run the Jupyter notebooks in the following order to perform the complete analysis:

1. CCFD - Data Viz.ipynb for initial data visualization.
2. CCFD - Outliers.ipynb for detecting outliers in the dataset.
3. CCFD.ipynb for analyzing transactions during early hours.

## Results
The notebooks produce various outputs, including:

Visual comparisons of transaction patterns for different cardholders.
Identification of outliers that could potentially signify fraudulent transactions.
Analysis of early hour transactions to pinpoint irregular activities.
These insights are crucial for developing strategies to detect and prevent credit card fraud.



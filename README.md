Getting and Cleaning Data: Course Project
====================

This repository represents a submission for the Course Project for the Coursera course "Getting and Cleaning Data" (getdata-007). Contents include this readme (README.md), a codebook (CodeBook.md) and the data preparation script run_analysis.R.


Steps in run_analysis.R
====================

The run_analysis.R script performs the following steps:

1. Downloads data from the University of California Irvine (Human Activity Recognition using Smartphones)
2. Unzips data to data/ directory (will create directory if does not exist)
3. Reads in feature names and activity labels, from raw data (features.txt and activity_labels.txt, respectively)
4. Reads in training data (from folder data/UCI HAR Dataset/train/) and combines into single dataset
5. Reads in testing data (from folder data/UCI HAR Dataset/test/) and combines into single dataset
6. Creates "dataset" column with values "train" and "test", and appends training and testing data
7. Selects any measurements containing "mean()" or "std()" into a narrow dataset.  This step also standardizes column names by removing "()" strings
8. Adds activity labels by joining narrow dataset to activity labels
9. Writes narrow dataset to UCI_HAR.txt.  File can be read back into R using read.table(path, header = TRUE)
10. Summarizes dataset by applying mean to all columns and grouping by dataset, subject, and activity
11. Writes summarized dataset to UCI_HAR_summary.txt.  File can be read back into R using read.table(path, header = TRUE)

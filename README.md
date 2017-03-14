
# GETTING AND CLEANING DATA FINAL PROJECT

## To create a tidy data set of wearable computing data

Raw data source for this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
(Data obtained from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Files in this repo:
* README.md (explains the analysis files)
* CodeBook.md (describing variables, data and transformations)
* run_analysis.R (R code)
* tidy_aggr.txt (the final tidy dataset)

## run_analysis.R

The R code called run_analysis.R runs using the UCI HAR Dataset directory (the zip had this folder) and the following files and folders:
* activity_labels.txt
* features.txt
* test/
* train/
 
The script does the following: 

### I. Merge training and test sets and prepare intermediate dataset 
1. Reading and preparing subject lists. 
2. Reading, preparing and labeling descriptive activity names to name the activities in the data set.-Labeling the data set with descriptive activity names. 
3. Reading and preparing feature data on the mean and standard deviation for each measurement. 
4. Put dataset together in the format of: subjects, activities (Y), features data (X).

### II. Using the intermediate dataset, create final aggregated dataset with average of each variable for each activity and each subject

### III. Write aggregated dataset for course upload

The final output with tidy data is created in the same directory: **tidy_aggr.txt**
 

################################################################
## FRANCIS C / GETTING AND CLEANING DATA FINAL COURSE PROJECT ##
## MARCH 12, 2017                                             ##
################################################################


library(sqldf)
library(tcltk)


#I. MERGE TRAINING AND TEST SETS AND PREPARE INTERMEDIATE DATASET

#1. READING AND PREPARING SUBJECT LISTS
### read the test and train subject lists
subject_test <- read.table("C:/Users/z66035/Desktop/Data cleaning/UCI HAR Dataset/test/subject_test.txt", col.names="Subject")
subject_train <- read.table("C:/Users/z66035/Desktop/Data cleaning/UCI HAR Dataset/train/subject_train.txt", col.names="Subject")
### binding test and train subject lists
subject <- rbind(subject_test,subject_train)

#2. READING, PREPARING AND LABELING ACTIVITY NAMES
### read the activities data
Y_test <- read.table("C:/Users/z66035/Desktop/Data cleaning/UCI HAR Dataset/test/Y_test.txt", col.names="Activityid")
Y_train <- read.table("C:/Users/z66035/Desktop/Data cleaning/UCI HAR Dataset/train/Y_train.txt", col.names="Activityid")
### binding test and train activities lists
Y <- rbind(Y_test,Y_train)
### read the activity id and activity names
activity_labels <- read.table("C:/Users/z66035/Desktop/Data cleaning/UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels) <- c("Activityid","Activity")
### replace activity ids in data with label names
Y <- sqldf("SELECT a.*, b.Activity FROM Y a join activity_labels b on a.Activityid = b.Activityid")

#3. READING AND PREAPARING FEATURE DATA ON THE MEAN AND STANDARD DEVIATION FOR EACH MEASUREMENT
### read the features data
X_test <- read.table("C:/Users/z66035/Desktop/Data cleaning/UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("C:/Users/z66035/Desktop/Data cleaning/UCI HAR Dataset/train/X_train.txt")
### binding test and train features data
X <- rbind(X_test,X_train)
### read the list of current column names and feature names
features <- read.table("C:/Users/z66035/Desktop/Data cleaning/UCI HAR Dataset/features.txt")
colnames(features) <- c("Featureid","Feature")
### reduce the list to features related to mean and std
features_mean_std <- sqldf("SELECT * FROM features WHERE features.Feature like '%mean()%' or features.Feature like '%std()%'")
### based on the reduced list of features, extract only the measurements on the mean and standard deviation for each measurement 
features_colsid <<- c(features_mean_std$Featureid)
X <- X[,features_colsid]
### clean activity names by colremoving non-alphabetic character and converting to lowercase
features_mean_std$Feature <- tolower(gsub("[^[:alpha:]]", "", features_mean_std$Feature))
### use descriptive activity names to name the columns in the data set
colnames(X) <- features_mean_std$Feature

#4. PUT DATASET TOGETHER IN THE FORMAT OF: subjects, activities (Y), features data (X)
data_set <- cbind(subject,Y,X)
data_set <- data_set[ , !(names(data_set) == "Activityid")]


#II. USING INTERMEDIATE DATASET, CREATE FINAL AGGREGATED DATASET WITH 
###  AVERAGE OF EACH VARIABLE FOR EACH ACTIVITY AND EACH SUBJECT
aggr_data_set <- aggregate(data_set[, 3:ncol(data_set)], 
                           by=list(subject = data_set$Subject, label = data_set$Activity), 
                           mean) 


#III. WRITE AGGREGATED DATASET FOR COURSE UPLOAD 
write.table(format(aggr_data_set, scientific=T), "C:/Users/z66035/Desktop/Data cleaning/UCI HAR Dataset/tidy_aggr.txt", row.names=F) 

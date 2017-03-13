

#Codebook

##Variables in the **tidy_aggr.txt**

Variable | Definition
---------|-----------
subject                 | int  from 1  to 30
label                   | Factor w/ 6 levels "LAYING","SITTING", "LAYIN", "WALKING", "WALKING_UPSTAIRS","WALKING_DOWNSTAIRS"
tbodyaccmeanx           | num*
tbodyaccmeany           | num*
tbodyaccmeanz           | num* 
tbodyaccstdx            | num*   
tbodyaccstdy            | num* 
tbodyaccstdz            | num*
tgravityaccmeanx        | num*
tgravityaccmeany        | num* 
tgravityaccmeanz        | num*  
tgravityaccstdx         | num*  
tgravityaccstdy         | num* 
tgravityaccstdz         | num* 
tbodyaccjerkmeanx       | num*
tbodyaccjerkmeany       | num*
tbodyaccjerkmeanz       | num* 
tbodyaccjerkstdx        | num*
tbodyaccjerkstdy        | num* 
tbodyaccjerkstdz        | num*  
tbodygyromeanx          | num*  
tbodygyromeany          | num* 
tbodygyromeanz          | num*  
tbodygyrostdx           | num*  
tbodygyrostdy           | num*  
tbodygyrostdz           | num* 
tbodygyrojerkmeanx      | num*  
tbodygyrojerkmeany      | num*  
tbodygyrojerkmeanz      | num*  
tbodygyrojerkstdx       | num*  
tbodygyrojerkstdy       | num*  
tbodygyrojerkstdz       | num*  
tbodyaccmagmean         | num*  
tbodyaccmagstd          | num*  
tgravityaccmagmean      | num*  
tgravityaccmagstd       | num*  
tbodyaccjerkmagmean     | num*  
tbodyaccjerkmagstd      | num*  
tbodygyromagmean        | num*  
tbodygyromagstd         | num*  
tbodygyrojerkmagmean    | num*  
tbodygyrojerkmagstd     | num*  
fbodyaccmeanx           | num*  
fbodyaccmeany           | num*  
fbodyaccmeanz           | num*  
fbodyaccstdx            | num*  
fbodyaccstdy            | num*  
fbodyaccstdz            | num*  
fbodyaccjerkmeanx       | num* 
fbodyaccjerkmeany       | num* 
fbodyaccjerkmeanz       | num*  
fbodyaccjerkstdx        | num*  
fbodyaccjerkstdy        | num*  
fbodyaccjerkstdz        | num*  
fbodygyromeanx          | num* 
fbodygyromeany          | num*  
fbodygyromeanz          | num*  
fbodygyrostdx           | num*  
fbodygyrostdy           | num*  
fbodygyrostdz           | num*  
fbodyaccmagmean         | num* 
fbodyaccmagstd          | num*  
fbodybodyaccjerkmagmean | num*  
fbodybodyaccjerkmagstd  | num* 
fbodybodygyromagmean    | num*  
fbodybodygyromagstd     | num*  
fbodybodygyrojerkmagmean| num*  
fbodybodygyrojerkmagstd | num* 
*See description in text below.

##Data & Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
* mean(): Mean value
* std(): Standard deviation
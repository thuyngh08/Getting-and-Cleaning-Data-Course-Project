# CODE BOOK

## General Information: 

Data come from Human Activity Recognition Using Smartphones Data Set 

The experiments have been carried out with a group of 30 volunteers within an 
age bracket of 19-48 years. Each person performed six activities (WALKING, 
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer
and gyroscope, we captured 3-axial linear acceleration and 3-axial angular 
velocity at a constant rate of 50Hz. The experiments have been video-recorded 
to label the data manually. The obtained dataset has been randomly partitioned 
into two sets, where 70% of the volunteers was selected for generating the 
training data and 30% the test data. 

## About the average_by_sub_act_var dataset

The dataset is created under the peer-graded assignment of Getting and Cleaning Data
course to creates an independent tidy data set with the average of each variable
for each activity and each subject.

The dataset has 4 columns: 
* Subject: The id of each subject participated in this experiment: range 1-30
* Activity: The name/id of six activities (see above) that was recorded for
each subject participated
* variable: the measurement names including 79 measurements that measured on 
mean and standard deviation that were chosen. 
79 measurements are:

[1] tBodyAcc-mean()-X               tBodyAcc-mean()-Y               tBodyAcc-mean()-Z              
[4] tBodyAcc-std()-X                tBodyAcc-std()-Y                tBodyAcc-std()-Z               
[7] tGravityAcc-mean()-X            tGravityAcc-mean()-Y            tGravityAcc-mean()-Z           
[10] tGravityAcc-std()-X             tGravityAcc-std()-Y             tGravityAcc-std()-Z            
[13] tBodyAccJerk-mean()-X           tBodyAccJerk-mean()-Y           tBodyAccJerk-mean()-Z          
[16] tBodyAccJerk-std()-X            tBodyAccJerk-std()-Y            tBodyAccJerk-std()-Z           
[19] tBodyGyro-mean()-X              tBodyGyro-mean()-Y              tBodyGyro-mean()-Z             
[22] tBodyGyro-std()-X               tBodyGyro-std()-Y               tBodyGyro-std()-Z              
[25] tBodyGyroJerk-mean()-X          tBodyGyroJerk-mean()-Y          tBodyGyroJerk-mean()-Z         
[28] tBodyGyroJerk-std()-X           tBodyGyroJerk-std()-Y           tBodyGyroJerk-std()-Z          
[31] tBodyAccMag-mean()              tBodyAccMag-std()               tGravityAccMag-mean()          
[34] tGravityAccMag-std()            tBodyAccJerkMag-mean()          tBodyAccJerkMag-std()          
[37] tBodyGyroMag-mean()             tBodyGyroMag-std()              tBodyGyroJerkMag-mean()        
[40] tBodyGyroJerkMag-std()          fBodyAcc-mean()-X               fBodyAcc-mean()-Y              
[43] fBodyAcc-mean()-Z               fBodyAcc-std()-X                fBodyAcc-std()-Y               
[46] fBodyAcc-std()-Z                fBodyAcc-meanFreq()-X           fBodyAcc-meanFreq()-Y          
[49] fBodyAcc-meanFreq()-Z           fBodyAccJerk-mean()-X           fBodyAccJerk-mean()-Y          
[52] fBodyAccJerk-mean()-Z           fBodyAccJerk-std()-X            fBodyAccJerk-std()-Y           
[55] fBodyAccJerk-std()-Z            fBodyAccJerk-meanFreq()-X       fBodyAccJerk-meanFreq()-Y      
[58] fBodyAccJerk-meanFreq()-Z       fBodyGyro-mean()-X              fBodyGyro-mean()-Y             
[61] fBodyGyro-mean()-Z              fBodyGyro-std()-X               fBodyGyro-std()-Y              
[64] fBodyGyro-std()-Z               fBodyGyro-meanFreq()-X          fBodyGyro-meanFreq()-Y         
[67] fBodyGyro-meanFreq()-Z          fBodyAccMag-mean()              fBodyAccMag-std()              
[70] fBodyAccMag-meanFreq()          fBodyBodyAccJerkMag-mean()      fBodyBodyAccJerkMag-std()      
[73] fBodyBodyAccJerkMag-meanFreq()  fBodyBodyGyroMag-mean()         fBodyBodyGyroMag-std()         
[76] fBodyBodyGyroMag-meanFreq()     fBodyBodyGyroJerkMag-mean()     fBodyBodyGyroJerkMag-std()     
[79] fBodyBodyGyroJerkMag-meanFreq()

* values: the average value of that measurements by subject and activity








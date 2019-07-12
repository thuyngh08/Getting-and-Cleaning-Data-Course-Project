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

tBodyAcc-mean()-X               
tBodyAcc-mean()-Y               
tBodyAcc-mean()-Z              
tBodyAcc-std()-X                
tBodyAcc-std()-Y                
tBodyAcc-std()-Z               
tGravityAcc-mean()-X            
tGravityAcc-mean()-Y            
tGravityAcc-mean()-Z           
tGravityAcc-std()-X             
tGravityAcc-std()-Y             
tGravityAcc-std()-Z            
tBodyAccJerk-mean()-X           
tBodyAccJerk-mean()-Y           
tBodyAccJerk-mean()-Z          
tBodyAccJerk-std()-X            
tBodyAccJerk-std()-Y            
tBodyAccJerk-std()-Z           
tBodyGyro-mean()-X              
tBodyGyro-mean()-Y              
tBodyGyro-mean()-Z             
tBodyGyro-std()-X               
tBodyGyro-std()-Y               
tBodyGyro-std()-Z              
tBodyGyroJerk-mean()-X          
tBodyGyroJerk-mean()-Y          
tBodyGyroJerk-mean()-Z         
tBodyGyroJerk-std()-X           
tBodyGyroJerk-std()-Y           
tBodyGyroJerk-std()-Z          
tBodyAccMag-mean()              
tBodyAccMag-std()               
tGravityAccMag-mean()          
tGravityAccMag-std()            
tBodyAccJerkMag-mean()          
tBodyAccJerkMag-std()          
tBodyGyroMag-mean()             
tBodyGyroMag-std()              
tBodyGyroJerkMag-mean()        
tBodyGyroJerkMag-std()          
fBodyAcc-mean()-X               
fBodyAcc-mean()-Y              
fBodyAcc-mean()-Z               
fBodyAcc-std()-X                
fBodyAcc-std()-Y               
fBodyAcc-std()-Z                
fBodyAcc-meanFreq()-X           
fBodyAcc-meanFreq()-Y          
fBodyAcc-meanFreq()-Z           
fBodyAccJerk-mean()-X           
fBodyAccJerk-mean()-Y          
fBodyAccJerk-mean()-Z           
fBodyAccJerk-std()-X            
fBodyAccJerk-std()-Y           
fBodyAccJerk-std()-Z            
fBodyAccJerk-meanFreq()-X       
fBodyAccJerk-meanFreq()-Y      
fBodyAccJerk-meanFreq()-Z       
fBodyGyro-mean()-X              
fBodyGyro-mean()-Y             
fBodyGyro-mean()-Z              
fBodyGyro-std()-X               
fBodyGyro-std()-Y              
fBodyGyro-std()-Z               
fBodyGyro-meanFreq()-X          
fBodyGyro-meanFreq()-Y         
fBodyGyro-meanFreq()-Z          
fBodyAccMag-mean()              
fBodyAccMag-std()              
fBodyAccMag-meanFreq()          
fBodyBodyAccJerkMag-mean()      
fBodyBodyAccJerkMag-std()      
fBodyBodyAccJerkMag-meanFreq()  
fBodyBodyGyroMag-mean()         
fBodyBodyGyroMag-std()         
fBodyBodyGyroMag-meanFreq()     
fBodyBodyGyroJerkMag-mean()     
fBodyBodyGyroJerkMag-std()     
fBodyBodyGyroJerkMag-meanFreq()

* values: the average value of that measurements by subject and activity








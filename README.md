## Introduction

The purpose of this project is to demonstrate your ability to collect, 
work with, and clean a data set. The goal is to prepare tidy data that 
can be used for later analysis. 

The dataset for this assignment is data collected from the accelerometers 
from the Samsung Galaxy S smartphone, featuring one of the most exciting 
areas in all of data science right now is wearable computing that many big 
cooperation such as Fitbit, Nike, and Jawbone Up are racing to develop the 
most advanced algorithms to attract new users. 

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


## Requirement

Create one R script called run_analysis.R that does the following.

* 1. Merges the training and the test sets to create one data set.
* 2. Extracts only the measurements on the mean and standard deviation 
*   for each measurement.
* 3. Uses descriptive activity names to name the activities in the data set
* 4. Appropriately labels the data set with descriptive variable names.
* 5. From the data set in step 4, creates a second, independent tidy data set
*   with the average of each variable for each activity and each subject.

## Steps to complete the assignment with some notes

### 1. Merge training and test set

The folder includes two sub-folders that containing data from 2 groups. 
The sub-folder 'train' contains data for all subjects randomly chosen into training
group. The sub-folder 'test' contains data for all subjects chosen into test group

To make a dataset for training or test group, we have to combine 3 files by column join: 
* X_...: containing data collected on 561 attributes
* Y_...: activity for each observation (each row)
* subject_...: the subject id of each observation

After obtaining 2 dataset for test and train group, we could merge two datasets 
into one dataset called data_full  by binding rows. I chose rbind() over 
binds_row() as it kept all columns of the dataset

### 2. Extracts only the measurements on the mean and standard deviation for only

Get the name of all the measurements (variables) by reading features.txt into R. 
The dataset has 2 columns. V1 is the number and V2 is the corresponding measurment
names. 

Choose only the measurements that has 'mean' or 'std' in its value and save as 
a new dataframe called mean_std_name. There are 79 measurements satisfied this criteria

Use this dataframe to select the variables in data_full that measure on the mean and 
standard deviation. Save this dataset to new dataframe called 'mean_std_data_frame'

### 3. Uses descriptive activity names to name the activities in the data set

Get the corresponding descriptive activity name by loading activity_labels.txt into R

The dataframe has 2 columns - V1: activity code and V2: activity name. Use both 
two variables to label the 'Activity' variable, making it a factor variable with
two attributes, levels (code) and labels(name).

### 4. Appropriately labels the data set with descriptive variable names

Create a data_label dataframe, then assign the variable name for 'mean_std_data_frame' 
using it. 

### 5. Creates a tidy data set with the average of each variable for each activity and each subject

Convert the dataset from wide (82 columns) form to long form (4 columns) with
id variables are 'Subject' and 'Activity'

Aggregate the long form dataset to get the average value of each variables 
for each activity and subject

Create a dataset with the average of each variable for each activity and subject







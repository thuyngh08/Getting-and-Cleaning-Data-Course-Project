# Load package needed
        library(dplyr)
        library(tidyverse)
        library(reshape2)
        library(plyr)

## Download the file to your working directory
        url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(url, destfile = "UCI HAR Dataset.zip")

## Create new working directory for the project
        dir.create("UCI HAR project")
        setwd("UCI HAR project")
        getwd()

## Unzip the file into the new working directory
        unzip("UCI HAR Dataset.zip", exdir = getwd())

#######################################
### 1. Merge training and test set ####
#######################################

## Read into R three files in folder train
        x_train <- read.table("./UCI HAR Dataset/train/X_train.txt", quote = "\" ",
                              stringsAsFactors = FALSE)
        y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt", quote = "\" ", 
                              stringsAsFactors = FALSE)
        subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                                    quote = "\" ", stringsAsFactors = FALSE)
# Bind column of the three dataframe to get a full information train set
        train_full <- bind_cols(x_train, subject_train, y_train)
        train_full$category <- "train" 
        # Create a new categorical variable for people participating in training

## Read into R three files in folder test
        x_test <- read.table("./UCI HAR Dataset/test/X_test.txt", quote = "\" ", 
                             stringsAsFactors = FALSE)
        y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt", quote = "\" ", 
                             stringsAsFactors = FALSE)
        subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                                   quote = "\" ", stringsAsFactors = FALSE)
# Bind column of the three dataframe to get a full information test set
        test_full <- bind_cols(x_test, subject_test, y_test)
        test_full$category <- "test" 
        # Create a categorical variable for people participating in training

## Merge the training and test dataset to create one dataset
        data_full <- rbind(train_full, test_full) 
        # Using bind_rows() somehow mess up the data, 
        # Switch to rbind, simply just add up rows of all columns

#############################################################################
### 2. Extracts only the measurements on the mean and standard deviation ####
###    for each measurement                                              ####
#############################################################################

## Read into R features.txt files to get the list of all variables
        features <- read.table("./UCI HAR Dataset/features.txt", quote = "\" ", 
                               stringsAsFactors = FALSE)
        head(features) 
        # Features has 2 variables, V1: number and V2: their corresponding activity name

## Choose names of measurement measured mean and std
        mean_std_name <- features %>% filter(str_detect(V2, "mean|std")) 
        # Only 79 measurements
        mean_std_name$V1 <- paste0("V", mean_std_name$V1)

## Choose variable that are only measured mean and std
        mean_std_data_frame <- data_full[c(mean_std_name$V1, "V1100", "V1101", "category")]
        # Note: V1100: label of subject, V1101: label of y(activity)

#################################################################################
### 3. Uses descriptive activity names to name the activities in the data set ###
#################################################################################

## Read into R activity_label.txt to get the descriptive activity name
        activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                                      quote = "\" ", stringsAsFactors = FALSE)

## Label the activity in the dataset
        mean_std_data_frame$V1101 <- factor(mean_std_data_frame$V1101, 
                                            levels = activity_labels$V1, 
                                            labels = activity_labels$V2)
        summary(mean_std_data_frame$V1101)
        
##############################################################################
### 4. Appropriately labels the data set with descriptive variable names. ####
##############################################################################       

## Get labels for all dataset columns that include mean and std measurement
        data_label <- c(mean_std_name$V2, "Subject", "Activity", "Group")

## Assign names for each column
        names(mean_std_data_frame) <- data_label 

##############################################################################
### 5. Creates a tidy data set with the average of each variable for each #### 
###    activity and each subject                                          ####
############################################################################## 

# Convert the dataset from wide form to long form
        mean_std_long <- melt(mean_std_data_frame, id.vars = c("Subject", "Activity"), 
                              measure.vars = names(mean_std_data_frame[,1:79]))

# Create a dataset with the average of each variable for each activity and subject
        average_by_sub_act_var <- ddply(mean_std_long, c(.(Subject), .(Activity), .(variable)),
                                        summarise, average = mean(value)) 

# Save the new tidy dataset
        write.table(average_by_sub_act_var, file = "average_by_sub_act_var.txt", 
                    row.names = FALSE)



Getting-and-Cleaning-Data-Course-Project
========================================

Getting and Cleaning DATA COURSE Project

1) Download the source file "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

into a local folder on your computer, e.g., C:\Users\yourname\Documents\Getting-and-Cleaning-Data\

2) Unzip the file into sub-folder created, e.g., C:\Users\yourname\Documents\Getting-and-Cleaning-Data\UCI HAR Dataset 

3) Write a R script "run_analysis.R" in the sub-folder, e.g., C:\Users\yourname\Documents\Getting-and-Cleaning-Data\UCI HAR Dataset\

4) The R script "run_analysis.R" should do the following:

a) Merges the training and the test sets to create one data set.

b) Extracts only the measurements on the mean and standard deviation for each measurement.

c) Uses descriptive activity names to name the activities in the data set.

d) Appropriately labels the data set with descriptive variable names

e) From the data set in d) above, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

5) Run RStudio and configure the working directory as setwd("C:\\Users\\yourname\\Documents\\Getting-and-Cleaning-Data\\UCI HAR Dataset\\") and source("run_analysis.R")

6) Run the R script. It will read the dataset and write these files:

a) merged_tidy_data.txt -- 8.35 Mb, a 10299x68 data frame

b) dataset_averages.txt -- 0.225 Mb, a 180x68 data frame

7) The script runs for less than a minute and dependent on your computer system.

8) Use data <- read.table("dataset_averages.txt") to read the dataframe. It is 180x68 as there are 30 subjects and 6 activities, in which explains 30 * 6 = 180 rows for each activity and each subject.

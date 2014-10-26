Getting-and-Cleaning-Data-Course-Project
========================================

Getting and Cleaning DATA COURSE Project

1) Download the source file "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

into a local folder on your computer, e.g., C:\Users\yourname\Documents\Getting-and-Cleaning-Data\

2) Unzip the file into the local folder created, e.g., C:\Users\yourname\Documents\Getting-and-Cleaning-Data\UCI HAR Dataset 

3) Write a R script "run_analysis.R" in the sub-folder created, e.g., C:\Users\yourname\Documents\Getting-and-Cleaning-Data\UCI HAR Dataset\

4) The R script "run_analysis.R" should do the following:

  (a) Merges the training and the test sets to create a new dataset.

  (b) Extracts only the measurements on the mean and standard deviation for each measurement.

  (c) Uses descriptive activity names to name the activities in the data set.

  (d) Appropriately labels the data set with descriptive variable names

  (e) From the data set in d) above, creates a second, independent tidy dataset with the average of each variable for each activity and each subject.

5) Run RStudio. In the RStudio console, configure the working directory as follows: 
  (a) run the command: setwd("C:\\Users\\yourname\\Documents\\Getting-and-Cleaning-Data\\UCI HAR Dataset\\"); and
  (b) run the command: source("run_analysis.R")

6) Run the R script. It will read the dataset and write these files:

  (a) "merged_tidy_data.txt" ==> 8,150 KB, a 10299 rows * 68 columns table

  (b) "dataset_averages.txt" ==> 220 KB, a 180 rows * 68 columns table

7) The script runs for less than a minute and it is dependent on your computer system.

8) Use data <- read.table("dataset_averages.txt") to read the table. It is 180 rows * 68 columns as there are 30 subjects and 6 activities, in which it explains why there are 30 * 6 = 180 rows for each activity and each subject.

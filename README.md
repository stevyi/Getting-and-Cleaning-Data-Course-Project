Getting-and-Cleaning-Data-Course-Project
========================================

Getting and Cleaning DATA COURSE Project

1) Download the source file "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

into a local folder on your computer, e.g., C:\Users\yourname\Documents\Getting-and-Cleaning-Data\

2) Unzip the file into sub-folder created, e.g., C:\Users\yourname\Documents\Getting-and-Cleaning-Data\UCI HAR Dataset 

3) Write a R scripts "run_analysis.R" in the sub-folder, e.g., C:\Users\yourname\Documents\Getting-and-Cleaning-Data\UCI HAR Dataset\

4) Run RStudio and configure the working directory as setwd("C:\\Users\\yourname\\Documents\\Getting-and-Cleaning-Data\\UCI HAR Dataset\\") and source("run_analysis.R")

5) Run the R script. It will read the dataset and write these files:

merged_tidy_data.txt -- 8.35 Mb, a 10299x68 data frame

dataset_averages.txt -- 0.225 Mb, a 180x68 data frame

6) The script runs for less than a minute and dependent on your computer system.

7) Use data <- read.table("dataset_averages.txt") to read the dataframe. It is 180x68 as there are 30 subjects and 6 activities, in which explains 30 * 6 = 180 rows for each activity and each subject.

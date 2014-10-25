# Data source for this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# This "run_analysis.R" perform the following:

# Step 1: To merge the train and test datasets to create a new dataset
train_data <- read.table("train/X_train.txt") 
test_data <- read.table("test/X_test.txt")
X_data <- rbind(train_data,test_data)

train_data <- read.table("train/subject_train.txt")
test_data <- read.table("test/subject_test.txt")
subject_data <- rbind(train_data,test_data)

train_data <- read.table("train/y_train.txt")
test_data <- read.table("test/y_test.txt")
y_data <- rbind(train_data,test_data)

# Step 2: To read the file features.txt and extract only the measurements on the mean and standard deviation for each measurement
# Load column names into data
features <- read.table("features.txt")
ind <- grep("-mean\\(\\)|-std\\(\\)",features[,2])
X_data <- X_data[,ind]
names(X_data) <- features[ind,2]
# Remove all () in the X_data 
names(X_data) <- gsub("\\(|\\)","",names(X_data))
# Translate charaters from upper to lower
names(X_data) <- tolower(names(X_data))

# Step 3: To Read activity_labels.txt and apply the descriptive activity names to name the activities in the dataset
# Load activity
activities <- read.table("activity_labels.txt")
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])))
y_data[,1] = activities[y_data[,1], 2]
names(y_data) <- "activity"

# Step 4: To label the dataset accordingly using the script with appropriate descriptive names: all feature names (attributes) and activity names are converted to lower case, underscores and brackets () are removed
# Load subject
names(subject_data) <- "subject"
tidy_data <- cbind(subject_data, y_data, X_data)
write.table(tidy_data, "merged_tidy_data.txt")

# Step 5: To merge the 10299x66 data frame containing features with 10299x1 data frames containing activity labels and subject IDs. The result is saved as merged_tidy_data.txt, which is a 10299x6 data frame containing the first column with subject IDs, the second column with activity names, and the last 66 columns are for measurements. Subject IDs are integers between 1 and 30 inclusive
unique_subjects <- unique(subject_data)[,1]
length_subjects <- length(unique(subject_data)[,1])
length_activities <- length(activities[,1])
cols <- dim(tidy_data)[2]
result <- tidy_data[1:(length_subjects * length_activities),]

# Step 6: To create a 2nd independent tidy data set with the average of each measurement for each activity and each subject
currentActivity <- 1
for (subject in 1:length_subjects) {
  for (activity in 1:length_activities) {
    result[currentActivity,1] <- unique_subjects[subject]
    result[currentActivity,2] <- activities[activity,2]
    temp <- tidy_data[tidy_data$subject == subject & tidy_data$activity == activities[activity,2],]
    result[currentActivity,3:cols] <- colMeans(temp[,3:cols]) # column sums and average for numeric arrays
    currentActivity <- currentActivity + 1
    }
  }
# write result to the file "dataset_averages.txt"
write.table(result,"dataset_averages.txt")

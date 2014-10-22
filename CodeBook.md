Source of the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Source of a full description for the project is available at the site where the data was obtained:
Original description: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Step 1: To merge the train and test datasets to create one new dataset, e.g.,

train/X_train.txt with test/X_test.txt ==> X_data: the result is a 10299 x 561 data frame

train/subject_train.txt with test/subject_test.txt ==> subject_data: the result is a 10299 x 1 data frame with subject IDs,

train/y_train.txt with test/y_test.txt ==> y_data: the result is also a 10299 x 1 data frame with activity IDs.


Step 2: To read the file features.txt and extract only the measurements on the mean and standard deviation for each measurement.

The result is a 10299 x 66 data frame, because only 66 out of 561 attributes are measurements on the mean and standard deviation. All measurements appear to be floating point numbers in the range (-1, 1).


Step 3: To Read activity_labels.txt and apply the descriptive activity names to name the activities in the dataset:

a) walking

b) walkingupstairs

c) walkingdownstairs

d) sitting

e) standing

f) laying

Step 4: To label the dataset accordingly using the script with appropriate descriptive names: all feature names (attributes) and activity names are converted to lower case, underscores and brackets () are removed.


Step 5: To merge the 10299x66 data frame containing features with 10299 x 1 data frames containing activity labels and subject IDs. The result is saved as "merged_tidy_data.txt", which is a 10299 x 6 data frame containing the first column with subject IDs, the second column with activity names, and the last 66 columns are for measurements. Subject IDs are integers between 1 and 30 inclusive. Names of the attributes are similar to the following:

tbodyacc-mean-x

tbodyacc-mean-y

tbodyacc-mean-z

tbodyacc-std-x

tbodyacc-std-y

tbodyacc-std-z

tgravityacc-mean-x

tgravityacc-mean-y


Step 6: To create a 2nd independent tidy data set with the average of each measurement for each activity and each subject. The result is saved as "dataset_averages.txt", a 180x68 data frame with the first column contains subject IDs, the second column contains activity names and the last columns for measurements. The averages for each of the 66 attributes are in columns 3...68. There are total 30 subjects and 6 activities contributing to 180 rows of averages in this dataset.

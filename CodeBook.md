Getting And Cleaning Data: Project Assignment 1
John Hopkins University

Background:

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Set:

The data for the project can be found at the below link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Files include:

README.txt

train/X_train.txt (includes the training data set)
train/y_train.txt (includes the training labels)

train/subject_train.txt (includes the training subjects)

test/X_test.txt (includes the test set)
test/y_test.txt (includes the test labels)
features_info.txt (includes the variables used on the feature vector)
features.txt (includes a list of all features)
activity_labels.txt (inludes the class labels with their activity name)

Objectives:

1. This sectoon of the code will merge the training and the test sets in the downloaded zip file to create one combined data set (read the file and combine the file).
2. This section of the code will extract only the measurements on the mean and standard deviation for each measurement.
3. This section of the code uses descriptive activity names to name the activities in the data set.
4. This section of the code will labels the data set with descriptive variable names.
5. Lastly, this section of code will reference the data set in step 4 and will create a second, independent tidy data set with the average of each variable for each activity and each subject.

Additional information can be found in the readme.md file.

File Name: run_analysis.r

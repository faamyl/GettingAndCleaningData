# Getting and Cleaning Data Course Project 1
# Data Set: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# The following R script will...

###########################################################################
# 1. Merges the training and the test sets to create one data set:
###########################################################################

## Reads the tables

x_train <- read.table("train/X_train.txt")
x_test <- read.table("test/X_test.txt")

sub_train <- read.table("train/subject_train.txt")
sub_test <- read.table("test/subject_test.txt")

y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")

##  Combines the tables

x <- rbind(x_train, x_test)
sub <- rbind(sub_train, sub_test)
y <- rbind(y_train, y_test)

##########################################################################
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
##########################################################################

features <- read.table("features.txt")

## Measurements on the mean and standard deviation

ex_features <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]
data <- x[, which(ex_features == TRUE)]

#########################################################################
# 3. Uses descriptive activity names to name the activities in the data set
#########################################################################

actlabels <- read.table("activity_labels.txt")
actlabels[, 2] = gsub("_", "", tolower(as.character(actlabels[, 2])))
y[,1] = actlabels[y[,1], 2]
names(y) <- "actlabels"

########################################################################
# 4. Appropriately labels the data set with descriptive variable names
########################################################################

names(sub) <- "subject"
cleaned <- cbind(sub, y, x)
write.table(cleaned, "cleaned_data.txt")

########################################################################
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
########################################################################

tidy1<-aggregate(cleaned, mean)
tidy1<-tidy1[order(tidy1$cleaned),]
write.table(tidy1, file = "tidy1.txt",row.name=FALSE)

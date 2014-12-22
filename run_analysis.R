# Getting and Cleaning Data Course Project

# Description at the site where the data was obtained: 
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones  


## 1. Create one R script called run_analysis.R that does the following. 
## Merges the training and the test sets to create one data set.

# Read source data

test_xdata <- read.table("test/X_test.txt")
test_ylabels <- read.table("test/y_test.txt", col.names="label")
test_subjects <- read.table("test/subject_test.txt", col.names="subject")
train_xdata <- read.table("train/X_train.txt")
train_ylabels <- read.table("train/y_train.txt", col.names="label")
train_subjects <- read.table("train/subject_train.txt", col.names="subject")


## Bind training and test data

data <- rbind(cbind(test_xdata, test_ylabels, test_subjects),
     cbind(train_xdata, train_ylabels, train_subjects))


## 2. Extract only the measurements on the mean and standard deviation for each measurement. 


# read the features
features <- read.table("features.txt", stringsAsFactors=FALSE)


# Search for mean or stnd deviation argument matches within each element of character vector and only retain features of mean and standard deviation
names(features)<- c("feat_id", "feat_name")
features_meanstd <- features[grep("mean\\(\\)|std\\(\\)", features$feat_name), ]
x <- x [, features_meanstd]
# Replaces all matches of a string features

features_final <- gsub("\\(|\\)", ""(features[features_meanstd 2]))


## 3. Use descriptive activity names to name the activities in the data set

# read the activities labels 
activities <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
# replace activities labels in data with activities labels names
features_final$activities <- activities[features_final$activities,2]


## 4. Appropriately label the data set with descriptive variable names.

names(activities) <- c("activity_id", "activity_name", features.meanstd$feat_name)
y [,1] = activities[y [,1],2]

names(y) <- "activity"
names(s) <- "subject"
# create tidy list from those activities names
TidyData <- cbind(features_final,y,s)


## 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

# find the average for each activity and subject

Ind_TidyData <- aggregate(features_final[,3:ncol(features_final)],
by=list(subject=features_final$subject, activity=features_final$activity), mean)

# write the data for course upload
write.table(Ind_TidyData, "Ind_TidyData2.txt")
          


### ran out of time, fixes needed



---
title: "Codebook"
author: "e2k"
date: "December 20, 2014"
output: html_document
---

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

???
Steps to reproduce this project
1. Open the R script run_analysis.r using a text editor.
2. Change the parameter of the setwd function call to the working directory/folder (i.e., the folder where these the R script file is saved).
3. Run the R script run_analysis.r. It calls the R Markdown file, run_analysis.md, which contains the bulk of the code.
4. Outputs 
- Tidy dataset file ("Ind_TidyData2.txt")
- Codebook file codebook.md (Markdown)
- ReadMe.md (separate)



## Data Prep:
## Check if file exists. Otherwise download the dataset. Uncompress dataset.
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
# Location data file
dataFileZIP <- "./UCI HAR Dataset.zip"
# Directory
dirFile <- "./UCI HAR Dataset"
# Directory and filename tidy data:
Ind_TidyData2 <- "./Ind_TidyData2.txt"
# Download the dataset (. ZIP), Which does not exist
  if (File.Exists (dataFileZIP) == FALSE) {
      download.file (fileURL, destfile = dataFileZIP)
    }
  
# Uncompress file date
  if (File.Exists (dirFile) == FALSE) {
    unzip (dataFileZIP)
  }


(From course project readme.txt in HAR)
===========================================Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
dro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

?????
Training & Testing Data:
'Train / subject_train.txt ': Each row Identifies the subject who Performed the activity for each sample window. Its range is from 1 to 30. 
'Train / Inertial Signals / total_acc_x_train.txt' : The acceleration signal from the accelerometer smartphone X axis in standard gravity units 'g'. Every row shows the 128 element vector. The same description Applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
'Train / Inertial Signals / body_acc_x_train.txt' : The body acceleration signal Obtained by subtracting the gravity ranging from the total acceleration. 
'Train / Inertial Signals / body_gyro_x_train.txt' : angular velocity vector The Measured by the gyroscope for each sample window. The units are radians / second. 

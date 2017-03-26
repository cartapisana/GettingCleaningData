## Joseph W. Grubbs, Ph.D., AICP, GISP
## Coursera Data Science Specialization
## Getting and Cleaning Data - Course 3
## Peer-Reviewed yProject - Week 4

## Source: run_analysis.R

## Set working directory to local with source data
setwd("~/RProjects/RData/UCI HAR Dataset")

## Use R "reshape2" package for data manipulation
## Load "reshape2" library into R Global Environment
library(reshape2)

## Read activity labels and features data sets from local directory
## Transform column 2 value labels into character data for both data sets
activityLabels <- read.table("activity_labels.txt")
activityLabelsChar <- as.character(activityLabels[,2])
features <- read.table("features.txt")
featuresChar <- as.character(features[,2])

## Extract mean and standard deviation for each measurement
## Use gsub() function to update variable names
extractMeanStd <- grep(".*mean.*|.*std.*", featuresChar)
extractMeanStdNames <- features[extractMeanStd,2]
                            extractMeanStdNames = 
                              gsub('-mean', 'Mean', 
                              extractMeanStdNames)
                            extractMeanStdNames = 
                              gsub('-std', 'Std', 
                              extractMeanStdNames)
extractMeanStdNames <- gsub('[-()]', '', extractMeanStdNames)

## Read in multiple data sets for training from local directory
## Use cbind() function to combine data sets
trainXData <- read.table("train/X_train.txt")[extractMeanStd]
trainYData <- read.table("train/y_train.txt")
trainSubjects <- read.table("train/subject_train.txt")
trainData <- cbind(trainSubjects, trainYData, trainXData)

## Read in multiple data sets for test from local directory
## Use cbind() function to combine data sets
testXData <- read.table("test/X_test.txt")[extractMeanStd]
testYData <- read.table("test/y_test.txt")
testSubjects <- read.table("test/subject_test.txt")
testData <- cbind(testSubjects, testYData, testXData)

## Create "tidy" data set by merging temp data sets for training and test
tidyData <- rbind(trainData, testData)

## Create a vector of descriptive variable names for targeted columns
colnames(tidyData) <- c("subject", "activity", extractMeanStdNames)

## Assign descriptive activity names (value labels) to study activities
## Define study activities by levels and labels, as factor variables
## Define values for study subjects as factor variables
tidyData$activity <- factor(tidyData$activity, 
                           levels = activityLabels[,1], 
                           labels = activityLabels[,2])
tidyData$subject <- as.factor(tidyData$subject)

## Apply melt() function and id variables
tidyDataMelt <- melt(tidyData, id = c("subject", "activity"))

## Use dcast() function to calculate means for each variable by activity and subject
tidyDataMean <- dcast(tidyDataMelt, subject + activity ~ variable, mean)

## Create a second data set with means for each activity and subject
## Export second data set as text file for posting to GitHub
write.table(tidyDataMean, "tidyDataMean.txt", row.names = FALSE, quote = FALSE)

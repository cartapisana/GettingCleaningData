## Joseph W. Grubbs, Ph.D., AICP, GISP
## Coursera Data Science Specialization
## Getting and Cleaning Data - Course 3
## Peer-Reviewed yProject - Week 4

## Source: run_analysis.R
## File Path: GettingCleaningData/run_analysis.R

## Set working directory to local with source data
setwd("~/RProjects/RData/UCI HAR Dataset")

## Use "reshape2" package for data manipulation
## Load library(reshape2) into R Global Environment
library(reshape2)

## Read activity labels and features data sets from local directory
## Transform target value labels into character data (both data sets)
activityLabels <- read.table("activity_labels.txt")
activityLabelsChar <- as.character(activityLabels[,2])
features <- read.table("features.txt")
featuresChar <- as.character(features[,2])

## Extract means and standard deviations for each measurement
## Use grep() to return indexes; gsub() to replace variable names
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
## Use cbind() to combine multiple data sets into single data set
trainXData <- read.table("train/X_train.txt")[extractMeanStd]
trainYData <- read.table("train/y_train.txt")
trainSubjects <- read.table("train/subject_train.txt")
trainData <- cbind(trainSubjects, trainYData, trainXData)

## Read in multiple data sets for test from local directory
## Use cbind() to combine multiple data sets into single data set
testXData <- read.table("test/X_test.txt")[extractMeanStd]
testYData <- read.table("test/y_test.txt")
testSubjects <- read.table("test/subject_test.txt")
testData <- cbind(testSubjects, testYData, testXData)

## Use rbind() to create "tidy" data set by merging combined data sets
tidyData <- rbind(trainData, testData)

## Create vector of descriptive variable names for targeted columns
colnames(tidyData) <- c("subject", "activity", extractMeanStdNames)

## Assign descriptive activity names (value labels) to study activities
## Define study activities by levels and labels as factor variables
## Define values for study subjects as factor variables
tidyData$activity <- factor(tidyData$activity, 
                           levels = activityLabels[,1], 
                           labels = activityLabels[,2])
tidyData$subject <- as.factor(tidyData$subject)

## Use melt() and id as vector of variable names
tidyDataMelt <- melt(tidyData, id = c("subject", "activity"))

## Use dcast() to calculate means for each variable by activity and subject
tidyDataMean <- dcast(tidyDataMelt, subject + activity ~ variable, mean)

## Create a second data set with means for each activity and subject
## Export second data set as text file for posting to GitHub
write.table(tidyDataMean, "tidyDataMean.txt", row.names = FALSE, quote = FALSE)

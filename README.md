# Getting and Cleaning Data Course Project

## Required "README.md" File

#### Submitted By:
Joseph W. Grubbs, Ph.D., AICP, GISP

#### Project Assignment:
Coursera Data Science Specialization  
Getting and Cleaning Data - Course 3  
Peer-Reviewed Project - Week 4

#### Project Purpose:
The peer-reviewed project (Getting and Cleaning Data, Week 4) tasked student-level data scientists to demonstrate their ability to collect, transform, and integrate multiple data sets. The goal of the project centered on creating "tidy" data, which may support future analysis. 

#### Submittal Requirements:
The submittal requirements for the project are as follows:
1. "Tidy" data set, as defined in the course material
2. Link to the student's Github repository, which must contain the source R script developed to perform the analysis ("run_analysis.R")
3. Code book documenting the source data sets, variables, variable definitions and specifications, and descriptions of the transformations and related tasks performed to produce the required project artifacts ("CodeBook.md") 
4. Documentation the GitHub repo with descriptive information for the "run_analysis.R" script, including how the script works, how the script components connect, functions implemented, rationale for each function, and other relevant information to support re-use of the R script ("README.md") -- THIS DOCUMENT

#### R Script Requirements:
Source R script developed for the project ("run_analysis.R") must perform the following:
1. Merge the multiple data sets for training and test into a single, integrated data set
2. Extract the mean and standard deviation for each measurement
3. Assign descriptive variable labels to the study activities featured in the data set
4. Label the final data set with descriptive variable names
5. Create a second, independent tidy data set with the mean of each variable by activity and subject

#### Peer-Review Criteria:
Peer reviewers will evaluate student submittals based on the following criteria:
1. The submitted data set is "tidy," as defined in the course material
2. The Github repo contains the required scripts ("run_analysis.R") and support documentation
3. The GitHub repo contains a code book ("CodeBook.md") that modifies and updates the source codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information
4. The GitHub repo contains a README.md file documenting the required information, cited above in the "Submittal Requirements" section
5. The work submitted for this project is the work of the student who submitted it

#### R Script Documentation:
The R script prepared to meet the project requirements involved the development steps listed below. (Note: A copy of the R script may be accessed at XXXXX) The description of each step covers the basic operation executed in the step.  For core data transformation, manipulation, and analytic functions, the description cites the R function used, what the function achieves, and the rationale for selecting the function.

Step 1. Set working directory to local with source data
        The setwd() function switched the working directory to a local directory, where the source data had been downloaded with a separate script.

Step 2. Use "reshape2" package for data manipulation; load library(reshape2) into R Global Environment  
        The reshape2 package contains a range of functions for creating, editing, and manipulationg text data, which made this function the optimal choice given the project requirements.

Step 3. Read activity labels and features data sets from local directory  
        The read.table() function brought the source data sets into the R Global Environment.

Step 4. Transform target value labels into character data (both data sets)
        Labels for the target values performed optimally as a character data class, and the as.character() function executed the required transformation.

Step 5. Extract means and standard deviations for each measurement  
        The grep() function returned indexes for the target variables, supporting the most efficient route to extract mean and standard deviation values; the gsub() enabled replacement of the variable names

Step 6. Read in multiple data sets for training and test from local directory  
        The read.table() function brought the source data sets into the R Global Environment.

Step 7. Use cbind() to combine multiple data sets into single data set  
        Due to the structure of the source data, multiple data sets needed to be integrated into temporary, staging data sets to support the downstream operations of the R script. The cbind() function implemented the data merger.

Step 8. Use rbind() to create "tidy" data set by merging combined data sets  
        A major project requirement, as appropriate given the structure of the source data, called for integrating the array of disparate data sets into a single data set. The rbind() function enabled this integration operation.

Step 9. Create vector of descriptive variable names for targeted columns  
        The project assignment required assignment of descriptive variable names to the single, integrated data set. This will allow for better understanding of the variable characteristics and support future analytics.

Step 10. Assign descriptive activity names (value labels) to study activities  
         The project assignment required assignment of descriptive activity names to the study activities. This will allow for better understanding of the activity variables and support future analytics.

Step 11. Define study activities by levels and labels, and values for study subjetcs, as factor variables  
         Specification of these attributes as factor variables supported downstream analytics, which also will enhance future research opportunities on the resulting data set.

Step 12. Use melt() and id as vector of variable names  
         The melt() function

Step 15. Use dcast() to calculate means for each variable by activity and subject

Step 16. Create a second data set with means for each activity and subject

Step 17. Export second data set as text file for posting to GitHub

#### Pre- and Post-Production Testing:
paohsoiuewf


Metadata and Code Book:  
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Project Source Data:  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Published Source File:  
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

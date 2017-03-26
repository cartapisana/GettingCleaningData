# Getting and Cleaning Data Course Project
## Project Code Book

### General Information  

#### Project Code Book Submitted By

Joseph W. Grubbs, Ph.D., AICP, GISP

#### Project Assignment

Coursera Data Science Specialization  
Johns Hopkins University  
Getting and Cleaning Data - Course 3  
Peer-Reviewed Project - Week 4  

### Source Data Set Title / Author

Title: Human Activity Recognition (HAR) Using Smartphones Data Set

Author: Machine Learning Repository, Center for Machine Learning and Intelligent Systems, University of California-Irvine

### Source Data Set Abstract

Activity recognition data set built from the recordings of 30 study participants performing basic activities and postural transitions while carrying a waist-mounted smartphone with embedded inertial sensors.

### Source Data Set Description

Data Set Characteristics: Multivariate, Time Series
Attribute Characteristics: Real
Associated Tasks: Classification
Number of Instances: 10,929
Number of Attributes: 561
Missing Values: N/A
Area: Life
Data Donated: 2015-07-29
Number of Web Hits: 50,705+

The source data is maintained by the University of California-Irvine (UCI), under the title "Human Activity Recognition (HAR) Using Smartphones Data Set." Researchers on the original project implemented the experiment with a group of 30 volunteers ("participants"), with an age bracket of 19-48 years old. Participants performed a protocol of activities composed of six basic activities: three static postures (standing, sitting, lying) and three dynamic activities (walking, walking downstairs and walking upstairs). The experiment also included postural transitions that occurred between the static postures. These are: stand-to-sit, sit-to-stand, sit-to-lie, lie-to-sit, stand-to-lie, and lie-to-stand. 

All participants wore a smartphone (Samsung Galaxy S II) on the waist during the experiment execution. Researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz using the embedded accelerometer and gyroscope of the device. Video recordings of the experiments allowed researchers to manually label the data. The resulting experimental data were randomly partitioned into two categories, with 70% of the participant observations selected for the training category of data sets and 30% for the test categoryt of data sets. 

The researchers pre-processed sensor signals (accelerometer and gyroscope) from participants by applying noise filters then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force was assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 561 features was obtained by calculating variables from the time and frequency domain. Details on this methodology have been provided in the "features_info.txt" file of the source data. 

The source dataset used for the current analysis project consists of an updated version of the original UCI Human Activity Recognition Using Smartphones Dataset, which may be accessed at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The updated version used for the current analysis project provides the original raw inertial signals from the smartphone sensors, instead of the pre-processed values contained in the previous version (Version 1) of the data set. The researchers conducting the experimental study recognized that the original raw inertial signals would enable online tests with the raw data. The activity labels also have been updated in the version used for the current analysis project to include postural transitions, which were not in Version 1 of the data set.

The student-level data scientist conducting the current analysis project made multiple transformations to the updated ("pre-project") UCI HAR data set. The new variables, variable names, and variable labels produced during the current analysis ("post-project") have been listed separately below in this code book.

### Attribute Note - Pre-Project (Source Data)

The source data used for the current project were divided into two parts: 

1. Inertial sensor data 
- Raw triaxial signals from the accelerometer and gyroscope of all the trials with with participants. 
- The labels of all the performed activities. 

2. Records of activity windows, each containing: 
- A 561-feature vector with time and frequency domain variables. 
- Its associated activity label. 
- An identifier of the subject who carried out the experiment. 

### File Structure and Variable Information - Pre-Project (Source Data)

The UCI HAR source data had the following file structure and variables, prior to the data modifications completed during the current project. Detailed documentation on the variable names, value names, value labels, and data specifications for the UCI HAR data have been provided in the 'README.txt' 'features_info.txt' and 'features.txt' files in the 'UCI HAR Dataset' source directory.

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

### Variable Notes - Pre-Project

- Features are normalized and bounded within [-1,1]. 
- Each feature vector is a row in the 'X' and 'y' files. 
- Units used for the accelerations (total and body) are "Gs" (gravity of earth -> 9.80665 m/seg2). 
- Gyroscope units are rad/seg. 
- Video recordings of the experiment, including an example of the six (6) recorded activities with one of the participants, may be accessed at https://www.youtube.com/watch?v=XOEN9W05_4A 

Additional information on the UCI HAR data sets may be accessed at www.smartlab.ws

### File Structure and Variable Information - Post-Project
The UCI HAR source data file structure has been modified, based on the data transformation, manipulation, and analysis completed in the current project. The following files and variables were created during the project:

- XXXXXX

- XXXXXX

- XXXXXX

- XXXXXX

For a detailed description of the operations executed on the pre-project UCI HAR data sets, see the "README.md" and "run_analysis.R" files in this GitHub repo.

### Source File Citation:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

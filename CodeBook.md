# Getting and Cleaning Data Course Project
## UCI HAR Data Set - Final Code Book

### General Information  

Submitted By:  
Joseph W. Grubbs, Ph.D., AICP, GISP

Project:  
Coursera Data Science Specialization  
Johns Hopkins University  
Getting and Cleaning Data - Course 3  
Peer-Reviewed Project - Week 4  

### Data Set Information

The researchers on the original project implemented the experiment with a group of 30 volunteers ("participants"), with an age bracket of 19-48 years old. Participants performed a protocol of activities composed of six basic activities: three static postures (standing, sitting, lying) and three dynamic activities (walking, walking downstairs and walking upstairs). The experiment also included postural transitions that occurred between the static postures. These are: stand-to-sit, sit-to-stand, sit-to-lie, lie-to-sit, stand-to-lie, and lie-to-stand. All the participants wore a smartphone (Samsung Galaxy S II) on the waist during the experiment execution. Researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz using the embedded accelerometer and gyroscope of the device. Video recordings of the experiments allowed researchers to manually label the data. The resulting experimental data were randomly partitioned into two categories, with 70% of the participant observations selected for the training category of data sets and 30% for the test categoryt of data sets. 

The researchers pre-processed sensor signals (accelerometer and gyroscope) from participants by applying noise filters then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force was assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 561 features was obtained by calculating variables from the time and frequency domain. Details on this methodology have been provided in the "features_info.txt" file of the source data. 

The source dataset used for the current analysis project consists of an updated version of the original UCI Human Activity Recognition Using Smartphones Dataset, which may be accessed at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The updated version used for the current analysis project provides the original raw inertial signals from the smartphone sensors, instead of the pre-processed values contained in the previous version (Version 1) of the data set. The researchers conducting the experimental study recognized that the original raw inertial signals would enable online tests with the raw data. The activity labels also have been updated in the version used for the current analysis project to include postural transitions, which were not in Version 1 of the data set.

The student-level data scientist conducting the current analysis project made multiple transformations to the updated ("pre-project") UCI HAR data set. The new variables, variable names, and variable labels produced during the current analysis ("post-project") have been listed separately below in this code book.

### Attribute Note - Pre-Project (Source Data)

The source data set used for the current project had been divided into two parts: 

1. Inertial sensor data 
- Raw triaxial signals from the accelerometer and gyroscope of all the trials with with participants. 
- The labels of all the performed activities. 

2. Records of activity windows. Each one composed of: 
- A 561-feature vector with time and frequency domain variables. 
- Its associated activity label. 
- An identifier of the subject who carried out the experiment. 

### File Structure and Attributes - Pre-Project (Source Data)

The UCI HAR source data had the following file structure, prior to the data transformation, manipulation, and analysis completed in the current project:

- 'README.txt' 

- '[Web Link]': The raw triaxial acceleration signal for the experiment number XX and associated to the user number YY. Every row is one acceleration sample (three axis) captured at a frequency of 50Hz. 

- '[Web Link]': The raw triaxial angular speed signal for the experiment number XX and associated to the user number YY. Every row is one angular velocity sample (three axis) captured at a frequency of 50Hz. 

- '[Web Link]': include all the activity labels available for the dataset (1 per row). 
Column 1: experiment number ID, 
Column 2: user number ID, 
Column 3: activity number ID 
Column 4: Label start point (in number of signal log samples (recorded at 50Hz)) 
Column 5: Label end point (in number of signal log samples) 

- 'features_info.txt': Shows information about the variables used on the feature vector. 

- 'features.txt': List of all features. 

- 'activity_labels.txt': Links the activity ID with their activity name. 

- '[Web Link]': Training set. 

- '[Web Link]': Training labels. 

- '[Web Link]': Test set. 

- '[Web Link]': Test labels. 

- '[Web Link]': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- '[Web Link]': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

### File Structure and Attributes - Post-Project
The UCI HAR file structure has been modified, based on the data transformation, manipulation, and analysis completed in the current project. For a detailed description of the :(See README.md and run_analysis.R Files in GitHub Repo)

Notes: 
====== 

- Features are normalized and bounded within [-1,1]. 
- Each feature vector is a row on the 'X' and 'y' files. 
- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2). 
- The gyroscope units are rad/seg. 
- A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link] 

For more information about this dataset please contact har '@' smartlab.ws or check our website www.smartlab.ws


#### Published Source File:  
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

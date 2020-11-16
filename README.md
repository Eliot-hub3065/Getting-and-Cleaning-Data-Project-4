# Getting-and-Cleaning-Data-Project-4

This file provides an overview of the data set and how it was created tidy_data.txt, which contains the data set. CodeBook.md, the code book, which describes the contents of the data set (data, variables and transformations used to generate the data). run_analysis.R, the R script that was used to create the data set (see the Creating the data set section below) Study design

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

            http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

            https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The source data set that this project was obtained from the Human Activity Recognition Using Smartphones Data Set, which describes how the data was initially collected as follows:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

DATA
This project was created to finish the assignment for week 4 of Getting and Cleaning Data Coursera course.

  #1 Download and unzip source data if it doesn't exist. 
  #2 Read data.
  #3 Merge the training and the test sets to create one data set.
  #4 Extract only the measurements on the mean and standard deviation for each measurement.
  #5 Use descriptive activity names to name the activities in the data set.
  #6 Appropriately label the data set with descriptive variable names.
  #7 Create a second, independent tidy set with the average of each variable for each activity and each subject.
  #8 Write the data set to the tidy_data.txt file. The tidy_data.txt was created by running the run_analysis.R
  
VARIABLES
The variables in the data train_value are sensor signals measured with waist-mounted smartphone from 30 subjects. The variable in the data train_activ indicates activity type the subjects performed during recording.


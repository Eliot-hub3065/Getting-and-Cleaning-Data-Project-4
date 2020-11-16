CODE BOOK (CodeBook.md describes the how to use all this, variables, the data, and any transformations or work that was performed to clean up the data.)

This code book is for the Getting and Cleaning Data coursera project course for the 4th week.

##How to get to the tinyData.txt:

Download data from the link below and unzip it into working directory of R Studio.
Execute the R script.

SOURCE DATA

The goal is to prepare tidy data that can be used for later analysis. Data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
                                    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project: 
                                    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


R SCRIPT

File with R code "run_analysis.R" performs the following steps (according to course instructions):

library(plyr)

Reading in the files and merging the training and the test sets to create one data set.

A.  Download de zip file
  1.  Read training dataset
  2.  Read test dataset
  3.  Read feature
  4.  Read activity labels
  5.  Assign variable names
B.  Merges the training and the test sets to create one data set
C.  Extracts only the measurements on the mean and standard deviation for each measurement
D.  Appropriately labels the data set with descriptive variable names
E.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
F.  Write a second tidy data set in txt file

About variables:
train_value, train_activ, train_subj, test_value, test_activ and test_subj contain the data from the downloaded files.
x_data, y_data and subject_data merge the previous datasets to further analysis.
features contains the correct names for the x_data dataset, which are applied to the column names stored in

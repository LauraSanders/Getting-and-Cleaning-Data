Getting-and-Cleaning-Data Course Project
=========================

Course project getting and cleaning data

This repository shows my work for the Data Science Course getting and cleaning data.

Regarding the data
=========================
The dataset being used is Human Activity Recognition Using Smartphones and can be dowloaded from the Coursera Getting and Cleaning Data Course Project site. 
The data should be placed in a folder called UCI HAR dataset (if you unzip the file it should be placed in a folder with that name)

Before running the R script
=========================
Before running the R script (run_analysis.R) you should set your working directory to the location where the files are placed.
If the plyr package is not installed yet you should do it before running the script.

The script 
=========================
The script itself reads in the data and merges is to one file.
Then only the needed/required fields are selected.
Name the Activities in the data set and after that appropriately label the data set with descriptive variable names.
Finally the script creates a second, tidy dataset with the average of each variable for each activity and each subject.
This tidy data set is extracted and placed in a new text file in your working directory.

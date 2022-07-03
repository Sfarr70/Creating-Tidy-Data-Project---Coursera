# Creating-Tidy-Data-Project---Coursera
#### Stacey Farr
#### Jul 2,2022

## Project description and Required Repository Files:

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis. 
You will be required to submit:
     1) a tidy data set as described below, 
     2) a link to a Github repository with your script for performing the analysis, and 
     3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
     4) You should also include a README.md in the repo with your scripts.
     
## Link to Data Used

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip

## R Script Instructions

Create one R script called run_analysis.R that does the following. 
     1.Merges the training and the test sets to create one data set.
     2.Extracts only the measurements on the mean and standard deviation for each measurement. 
     3.Uses descriptive activity names to name the activities in the data set
     4.Appropriately labels the data set with descriptive variable names. 

Please submit a link to a Github repo with the code for performing your analysis. 
The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory. 
The output should be the tidy data set you submitted for part 1. You should include a README.md in the repo describing how the script works 
and the code book describing the variables.

## Project Completion Details

### Download Data

The file "UCI HAR Dataset.zip" was downloaded and extracted into a local directory. The file location was set as the
R working directory and an R Project "UCI HAR Dataset" was initiated.
R Script 'run_analysis.R' created to record R commands used for this project

### run_analysis.R 

The following files were read into R
     x_train.txt
     x_test.txt
     y_train.txt
     y_test.txt
     subject_train.txt
     sunjecy_test.txt
     features.txt





## Steps to reproduce the script

Save all files produced by file "getdata-projectfiles-UCI HAR Dataset.zip" at the folder "UCI HAR Dataset" and set it Working Directory in R enviroment:
Open the R"run_analysis.r" script and run it.
Get the outupt (file finalData1.txt)

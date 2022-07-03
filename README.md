# Creating-Tidy-Data-Project---Coursera
#### Stacey Farr
#### Jul 2,2022

## Project description and Required Repository Files:

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.  
The goal is to prepare tidy data that can be used for later analysis.  

You will be required to submit:  
     1. a tidy data set as described below,  
     2. a link to a Github repository with your script for performing the analysis, and  
     3. a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md.  
     4. You should also include a README.md in the repo with your scripts.
     
## Link to Data

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
The output should be the tidy data set you submitted for part. You should include a README.md in the repo describing how the script works  
and the code book describing the variables.

## Project Completion Details

### Download Data

The file "UCI HAR Dataset.zip" was downloaded and extracted into a local directory. The file location was set as the  
R working directory and an R Project "UCI HAR Dataset" was initiated.  
R Script 'run_analysis.R' created to record R commands used for this project.

### run_analysis.R Details

Read the following files into R  
    * x_train.txt  
    * x_test.txt  
    * y_train.txt  
    * y_test.txt  
    * subject_train.txt  
    * subject_test.txt  
    * features.txt

Merge test and training files for x, y, and subject. rbind is used to append the rows of the test data to the training data.  
3 merged dataframes are created (mergex, mergey, mergesub).  
     * Each merged dataframe will have 10,299 observations  
     * mergex will have 561 variables

Rename columns of the merged dataframes.  
     * The values in festures.txt are used to populate column names in the mergex dataframe

Create subset of mergex (subx) that pulls only the columns that have "mean" or "std" (standard deviation) in their names.  
     * subx has 10,299 observations and 79 variables
     
Change mergey to factor and assign the following labels. Send result to an object named activites.  
     1 = walking  
     2 = walking_upstairs  
     3 = walking_downstairs  
     4 = sitting  
     5 = standing  
     6 = laying
     
Merge the three dataframes and name new dataframe HAR_data.  
     * cbind is used to merge the columns of each file  
     * the arguments are passed to cbind so that mergesub and activities are the first two columns of HAR_data  
     * HAR_data has 10,299 observations and 81 variables
     
Give variabloes in HAR_data descriptive names.
     
Use HAR_data to create a new dataframe (tidydata) which holds the averages of each variable for each subject-activity  
     * tidydata has 180 observations and 81 variables
     
 Write tidydata to local file. Save it as tidydata.txt.

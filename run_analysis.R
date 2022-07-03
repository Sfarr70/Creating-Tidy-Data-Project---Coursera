## Getting and Cleaning Data Course Project
## Stacey Farr
## See README.md and Codebook.md for dataframe and variable information


## Install packages

library(tidyverse)

## Import data from local directory (README has link to original dataframe)

x_test <- read.table("X_test.txt")
x_train <- read.table("X_train.txt")
y_test <- read.table("y_test.txt")
y_train <- read.table("y_train.txt")
subject_test <- read.table("subject_test.txt")
subject_train <- read.table("subject_train.txt")
features <- read.table("features.txt")

## Merge Test and Train Dataframes

mergex <-rbind.data.frame(x_train,x_test,make.row.names=FALSE)
mergey <- rbind.data.frame(y_train,y_test,make.row.names=FALSE)
mergesub <- rbind.data.frame(subject_train,subject_test,make.row.names=FALSE)

## Cleaning Environment
rm(x_train,x_test,y_train,y_test,subject_train,subject_test)


##Use values from features to create mergex column labels

colnames(mergex) <- features[,2]


## Remove features
rm(features)


##Rename columns in mergesub

mergesub <- rename(mergesub, subjectID = V1)


##Subset columns containing mean or std from mergex

mean_std <- grep("mean|std", colnames(mergex)) ##returns list of column
                                               ##indexes matching criteria
subx <- mergex[,mean_std]


##Give mergey activity values descriptive labels
     ##Create vector with activity labels

      activelabels <- c("walking", "walking_upstairs","walking_downstairs", "sitting","standing","laying")

     ##Change mergey activities to Factor class and input labels

      activities <- factor(mergey$V1, labels=activelabels)


##Merge all 3 data frames

HAR_data <- cbind(mergesub,activities,subx)

##Clean environment
rm(mergesub,mergey,mergex,activelabels,mean_std, subx,activities)


##give columns descriptive names

names(HAR_data) <- gsub("mean\\(\\)","mean",names(HAR_data))
names(HAR_data) <- gsub("std\\(\\)","std deviation",names(HAR_data))
names(HAR_data) <- gsub("^t","Avg of t",names(HAR_data))
names(HAR_data) <- gsub("^f","Avg of f",names(HAR_data))


##Create tidy dataframe containing variable means for each subjectID & activity

tidydata <- HAR_data %>%
  group_by(subjectID, activities) %>%
  summarise(across(everything(), mean))

##clean environment
rm(HAR_data)

##write tidydata to folder

write.table(tidydata, "tidydata.txt", row.names=FALSE)
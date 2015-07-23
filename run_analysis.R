## Steps 0.1 - 0.7 assume that the file was downloaded using R
## To review merging data files, please proceed to Step 1

## Step 0.1 - Download the file and put the file in the data folder
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/UCI_HAR_Dataset.zip")

## Step 0.2 - Unzip the file
unzip(zipfile="./data/UCI_HAR_Dataset.zip",exdir="./data")

## Step 0.3 - List the 28 files and review them
path_rf <- file.path("./data" , "UCI HAR Dataset")
files <-list.files(path_rf, recursive=TRUE)
files

## Step 0.4 - Read the Activity files
dataActivityTest  <- read.table(file.path(path_rf, "test" , "y_test.txt" ),header = FALSE)
dataActivityTrain <- read.table(file.path(path_rf, "train", "y_train.txt"),header = FALSE)

## Step 0.5 - Read the Subject files
dataSubjectTrain <- read.table(file.path(path_rf, "train", "subject_train.txt"),header = FALSE)
dataSubjectTest  <- read.table(file.path(path_rf, "test" , "subject_test.txt"),header = FALSE)

## Step 0.6 - Read the Features files
dataFeaturesTest  <- read.table(file.path(path_rf, "test" , "X_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path(path_rf, "train", "X_train.txt"),header = FALSE)

## Step 0.7 - Look at Variable Properties one at a time
str(dataActivityTest)
str(dataActivityTrain)
str(dataSubjectTrain)
str(dataSubjectTest)
str(dataFeaturesTest)
str(dataFeaturesTrain)

## Step 1 - Merge the training and the test sets to create one data set
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity <- rbind(dataActivityTrain, dataActivityTest)
dataFeatures <- rbind(dataFeaturesTrain, dataFeaturesTest)

names(dataSubject) <- c("subject")
names(dataActivity) <- c("activity")
dataFeaturesNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)
names(dataFeatures) <- dataFeaturesNames$V2

dataCombine <- cbind(dataSubject, dataActivity)
onedataset <- cbind(dataFeatures, dataCombine)

## Step 2 - Extract only the mean and standard deviation for each measurement
mean_std_features_only <- dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]
selectedNames <- c(as.character(subdataFeaturesNames), "subject", "activity" )
onedataset <- subset(onedataset,select=selectedNames)
str(onedataset)

## Step 3 - Use descriptive activity names to name the activities in the data set
activityLabels <- read.table(file.path(path_rf, "activity_labels.txt"),header = FALSE)
head(onedataset$activity,30)

## Step 4 - Appropriately label the data set with descriptive variable names
names(onedataset) <- gsub("^t", "time", names(onedataset))
names(onedataset) <- gsub("Freq", "frequency", names(onedataset))
names(onedataset) <- gsub("Acc", "Accelerometer", names(onedataset))
names(onedataset) <- gsub("Gyro", "Gyroscope", names(onedataset))
names(onedataset) <- gsub("Mag", "Magnitude", names(onedataset))
names(onedataset) <- gsub("Body", "Body", names(onedataset))

## Step 5 - From the data set in step 4, create a second, independent tidy data set 
## with the average of each variable for each activity and each subject
library(plyr);
tidydata <- aggregate(. ~subject + activity, onedataset, mean)
tidydata <- tidydata[order(tidydata$subject,tidydata$activity),]
write.table(tidydata, file = "averages_each_variable.txt",row.name=FALSE)

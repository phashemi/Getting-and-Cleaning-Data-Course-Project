#Code Book

This code book summarizes the resulting data fields in averages_each_variable.txt.


##Identifiers
•	subject - The ID of the test subject

•	activity - The type of activity performed when the corresponding measurements were taken


##Measurements
•	tBodyAccMeanX

•	tBodyAccMeanY

•	tBodyAccMeanZ

•	tBodyAccStdX

•	tBodyAccStdY

•	tBodyAccStdZ

•	tGravityAccMeanX

•	tGravityAccMeanY

•	tGravityAccMeanZ

•	tGravityAccStdX

•	tGravityAccStdY

•	tGravityAccStdZ

•	tBodyAccJerkMeanX

•	tBodyAccJerkMeanY

•	tBodyAccJerkMeanZ

•	tBodyAccJerkStdX

•	tBodyAccJerkStdY

•	tBodyAccJerkStdZ

•	tBodyGyroMeanX

•	tBodyGyroMeanY

•	tBodyGyroMeanZ

•	tBodyGyroStdX

•	tBodyGyroStdY

•	tBodyGyroStdZ

•	tBodyGyroJerkMeanX

•	tBodyGyroJerkMeanY

•	tBodyGyroJerkMeanZ

•	tBodyGyroJerkStdX

•	tBodyGyroJerkStdY

•	tBodyGyroJerkStdZ

•	tBodyAccMagMean

•	tBodyAccMagStd

•	tGravityAccMagMean

•	tGravityAccMagStd

•	tBodyAccJerkMagMean

•	tBodyAccJerkMagStd

•	tBodyGyroMagMean

•	tBodyGyroMagStd

•	tBodyGyroJerkMagMean

•	tBodyGyroJerkMagStd

•	FreqBodyAccMeanX

•	FreqBodyAccMeanY

•	FreqBodyAccMeanZ

•	FreqBodyAccStdX

•	FreqBodyAccStdY

•	FreqBodyAccStdZ

•	FreqBodyAccMeanFreqX

•	FreqBodyAccMeanFreqY

•	FreqBodyAccMeanFreqZ

•	FreqBodyAccJerkMeanX

•	FreqBodyAccJerkMeanY

•	FreqBodyAccJerkMeanZ

•	FreqBodyAccJerkStdX

•	FreqBodyAccJerkStdY

•	FreqBodyAccJerkStdZ

•	FreqBodyAccJerkMeanFreqX

•	FreqBodyAccJerkMeanFreqY

•	FreqBodyAccJerkMeanFreqZ

•	FreqBodyGyroMeanX

•	FreqBodyGyroMeanY

•	FreqBodyGyroMeanZ

•	FreqBodyGyroStdX

•	FreqBodyGyroStdY

•	FreqBodyGyroStdZ

•	FreqBodyGyroMeanFreqX

•	FreqBodyGyroMeanFreqY

•	FreqBodyGyroMeanFreqZ

•	FreqBodyAccMagMean

•	FreqBodyAccMagStd

•	FreqBodyAccMagMeanFreq

•	FreqBodyBodyAccJerkMagMean

•	FreqBodyBodyAccJerkMagStd

•	FreqBodyBodyAccJerkMagMeanFreq

•	FreqBodyBodyGyroMagMean

•	FreqBodyBodyGyroMagStd

•	FreqBodyBodyGyroMagMeanFreq

•	FreqBodyBodyGyroJerkMagMean

•	FreqBodyBodyGyroJerkMagStd

•	FreqBodyBodyGyroJerkMagMeanFreq


##Activity Labels
•	WALKING (value = 1): subject was walking during the test

•	WALKING_UPSTAIRS (value = 2): subject was walking up a staircase during the test

•	WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test

•	SITTING (value = 4): subject was sitting during the test

•	STANDING (value = 5): subject was standing during the test

•	LAYING (value = 6): subject was laying down during the test

##Variables
•	x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files

•	x_data, y_data and subject_data merge the previous datasets to further analysis.  The name of the merged dataset is onedataset.

•	features contains the correct names for the x_data dataset, which are applied to the column names stored in mean_std_features_ONLY, a numeric vector that aims to provide only the mean and standard deviation for all features of onedataset.

•	averages_each_variable contains the relevant averages which will be later stored in a .txt file. 

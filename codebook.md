# Codebook for Getting and Cleaning Data Project
Andrei Dashevskii  
18 May 2015  
 
##Study design and data processing
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
 

 
###Collection of the raw data
Row data was collected frome here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
 
##Creating the tidy datafile
The training and the test sets were merged to create one data set.
Only the measurements on the mean and standard deviation for each measurement were extracted.  
Each variable for each activity and each subject was averaged.
###Guide to create the tidy data file
This information is collected in README file.

 
##Description of the variables in the data4.txt file

Tidy data set contains the following variables.

Activity - character string. Contains information about performed activity. Has 6 different values

id_subject - integer from 1 to 30. Corresponds to id of volunteer 

Next numeric variables contain measurements. They have the following structure:

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

mean(): Mean value

std(): Standard deviation

Additional variables

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

These values are normalized and bounded within [-1,1]
 


Codebook regarding course project getting and cleaning data
=========================
Description
=========================
Additional information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

A full description of the data used in this project can be found at The UCI Machine Learning Repository

Study Design
=========================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, they captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information
=========================
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

The dataset is provided for the John Hopkins University regarding the course Getting and Cleaning data.
The data can be found here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

After setting the source directory for the files, read into tables the data located in

    features.txt
    activity_labels.txt
    subject_train.txt
    x_train.txt
    y_train.txt
    subject_test.txt
    x_test.txt
    y_test.txt

What is done
=========================
First, merge all training and test data sets and then give the column names.
TotalData shows all the data combined with the appropriate column names.

Second only the measurements on the mean and standard deviation are required. Therefore a new dataset is created by extracting the not needed measurements(every column that doesn't have mean or std in it's column name). This is saved in TotalData_mean_std.

Third the activity names are added to the data set so instead of using just 1 for Walking now you can see Walking in the data set.
So it is immediately clear what is meant by the variable. This is shown in TotalData_activity after using the merge function

Fourth the dataset is labelled with correct variable names using make.names for replacing the "-" and "()" with a "." and gsub for replacing the t at the start of a columnname with time and the f with frequency.

Fifth, after distracting the activity_ID (because the Activity Name already is included and the mean of that variable will not be used) the mean is calculated for every measurement left per Activity_Name and subject_ID. This is done using ddply and the result is saved in the variable Total_Data_final. Finally the dataset is extracted using the writetable function and placed in your working directory. The extracted file is named:
Tidy_data.txt

Codebook
=========================
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAcc-XYZ and timeGyro-XYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAcc-XYZ and timeGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccJerk-XYZ and timeBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccMag, timeGravityAccMag, timeBodyAccJerkMag, timeBodyGyroMag, timeBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAcc-XYZ, frequencyBodyAccJerk-XYZ, frequencyBodyGyro-XYZ, frequencyBodyAccJerkMag, frequencyBodyGyroMag, frequencyBodyGyroJerkMag. (Note the 'frequency' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Finally the means are created for each of the variables (measurements) that were output in the tidy data set for each subject_ID and activity_Name (which are also still present in the tidy datafile, otherwise you wouldn't know who'ms mean it is).
The variables are:

subject_ID

Activity_Name

timeBodyAcc.mean...X

timeBodyAcc.mean...Y

timeBodyAcc.mean...Z

timeBodyAcc.std...X

timeBodyAcc.std...Y

timeBodyAcc.std...Z

timeGravityAcc.mean...X

timeGravityAcc.mean...Y

timeGravityAcc.mean...Z

timeGravityAcc.std...X

timeGravityAcc.std...Y

timeGravityAcc.std...Z

timeBodyAccJerk.mean...X

timeBodyAccJerk.mean...Y

timeBodyAccJerk.mean...Z

timeBodyAccJerk.std...X

timeBodyAccJerk.std...Y

timeBodyAccJerk.std...Z

timeBodyGyro.mean...X

timeBodyGyro.mean...Y

timeBodyGyro.mean...Z

timeBodyGyro.std...X

timeBodyGyro.std...Y

timeBodyGyro.std...Z

timeBodyGyroJerk.mean...X

timeBodyGyroJerk.mean...Y

timeBodyGyroJerk.mean...Z

timeBodyGyroJerk.std...X

timeBodyGyroJerk.std...Y

timeBodyGyroJerk.std...Z

timeBodyAccMag.mean..

timeBodyAccMag.std..

timeGravityAccMag.mean..

timeGravityAccMag.std..

timeBodyAccJerkMag.mean..

timeBodyAccJerkMag.std..

timeBodyGyroMag.mean..

timeBodyGyroMag.std..

timeBodyGyroJerkMag.mean..

timeBodyGyroJerkMag.std..

frequencyBodyAcc.mean...X

frequencyBodyAcc.mean...Y

frequencyBodyAcc.mean...Z

frequencyBodyAcc.std...X

frequencyBodyAcc.std...Y

frequencyBodyAcc.std...Z

frequencyBodyAcc.meanFreq...X

frequencyBodyAcc.meanFreq...Y

frequencyBodyAcc.meanFreq...Z

frequencyBodyAccJerk.mean...X

frequencyBodyAccJerk.mean...Y

frequencyBodyAccJerk.mean...Z

frequencyBodyAccJerk.std...X

frequencyBodyAccJerk.std...Y

frequencyBodyAccJerk.std...Z

frequencyBodyAccJerk.meanFreq...X

frequencyBodyAccJerk.meanFreq...Y

frequencyBodyAccJerk.meanFreq...Z

frequencyBodyGyro.mean...X

frequencyBodyGyro.mean...Y

frequencyBodyGyro.mean...Z

frequencyBodyGyro.std...X

frequencyBodyGyro.std...Y

frequencyBodyGyro.std...Z

frequencyBodyGyro.meanFreq...X

frequencyBodyGyro.meanFreq...Y

frequencyBodyGyro.meanFreq...Z

frequencyBodyAccMag.mean..

frequencyBodyAccMag.std..

frequencyBodyAccMag.meanFreq..

frequencyBodyAccJerkMag.mean..

frequencyBodyAccJerkMag.std..

frequencyBodyAccJerkMag.meanFreq..

frequencyBodyGyroMag.mean..

frequencyBodyGyroMag.std..

frequencyBodyGyroMag.meanFreq..

frequencyBodyGyroJerkMag.mean..

frequencyBodyGyroJerkMag.std..

frequencyBodyGyroJerkMag.meanFreq..

angle.timeBodyAccMean.gravity.

angle.timeBodyAccJerkMean..gravityMean.

angle.timeBodyGyroMean.gravityMean.

angle.timeBodyGyroJerkMean.gravityMean.

angle.X.gravityMean.

angle.Y.gravityMean.

angle.Z.gravityMean.


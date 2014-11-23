Codebook regarding course project getting and cleaning data
=========================
Description
=========================
Additional information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

A full description of the data used in this project can be found at The UCI Machine Learning Repository

Data Set Information:
=========================
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information:
=========================
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 



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

Second only the measurements on the mean and standard deviation are required. Therefore a new dataset is created by extracting 
the not needed measurements. This is saved in TotalData_mean_std.

Third the activity names are added to the data set so instead of using just 1 for Walking now you can see Walking in the data set.
So it is immediately clear what is meant by the variable. This is shown in TotalData_activity after using the merge function

Fourth the dataset is labelled with correct variable names using make.names and gsub.

Fifth, the mean is calculated for every measurement left per Activity_Name and subject_ID. This is done using ddply and the result is saved in the variable Total_Data_final. Finally the dataset is extracted using the writetable function and placed in your working directory. The extracted file is named:
Tidy_data.txt



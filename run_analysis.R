# install plyr if not already done to be able to run/use the script.
library(plyr)

#Step1: Merge the training and test data sets to create one data set.

# read the train data
subject_train<-read.table("train/subject_train.txt")
x_train<-read.table("train/X_train.txt")
y_train<-read.table("train/Y_train.txt")

# read the test data
subject_test<-read.table("test/subject_test.txt")
x_test<-read.table("test/X_test.txt")
y_test<-read.table("test/Y_test.txt")

# read the other files regarding features and activity type.
features<-read.table("features.txt")
Activity_Type<-read.table("activity_labels.txt")

#merge the test and train datasets
X_train_test<-merge(x_train,x_test,all=TRUE)
Y_train_test<-rbind(y_train,y_test)
Subject_train_test<-merge(subject_train,subject_test,all=TRUE)

#give columnnames tot the dataset
colnames(X_train_test)<-features[,2]
colnames(Y_train_test)<-"activity_ID"
colnames(Subject_train_test)<-"subject_ID"
colnames(Activity_Type)<-c("Activity_ID","Activity_Name")

#merge all data into 1 datasete
TotalData<-cbind(X_train_test,Y_train_test,Subject_train_test)

#Step2: Extract only the measurements on the mean and standard deviation for each measurement

TotalData_mean_std<-TotalData[,grep("mean|std|activity_ID|subject_ID",names(TotalData))]

#Step3: Uses descriptive activity names to name the activities in the data set

TotalData_activity<-merge(TotalData_mean_std,Activity_Type,by.x="activity_ID",by.y="Activity_ID",all=TRUE)

#Step4: Appropriately labels the data set with descriptive variable names.
names(TotalData_activity) <- make.names(names(TotalData_activity))

#Step5: create a second, independent tidy data set with the average of 
#each variable for each activity and each subject.

drop<-c("activity_ID")
TotalData_activity1<-TotalData_activity[,!(names(TotalData_activity) %in% drop)]

Total_Data_final <- ddply(TotalData_activity1, c("subject_ID","Activity_Name"), numcolwise(mean))

write.table(Total_Data_final, file = "Tidy_data.txt",row.name=FALSE)

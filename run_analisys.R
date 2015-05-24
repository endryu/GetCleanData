##run_analisys<function(){
## read data    
subjectTest<-read.table("UCI HAR Dataset/test/subject_test.txt")
    xTest<-read.table("UCI HAR Dataset/test/x_test.txt")
    yTest<-read.table("UCI HAR Dataset/test/y_test.txt")
    subjectTrain<-read.table("UCI HAR Dataset/train/subject_train.txt")
    xTrain<-read.table("UCI HAR Dataset/train/x_train.txt")
    yTrain<-read.table("UCI HAR Dataset/train/y_train.txt")
    features<-read.table("UCI HAR Dataset/features.txt")
##create columns with subject_id and Activity_id
    xTest<-cbind("test",subjectTest,yTest,xTest)
    xTrain<-cbind("train",subjectTrain,yTrain,xTrain)
    names(xTest)<-1:564
    names(xTrain)<-1:564
##merge test and train data
    xData<-rbind(xTest,xTrain)
##name columns
    names(xData)<-c("test/train","id_subject","Id_Activity",as.character(features[,2]))
## get activity names     
activityl<-read.table("UCI HAR Dataset/activity_labels.txt")
    names(activityl)=c("Id_Activity","Activity")
    xData<-merge(activityl,xData)
##select columns with means and std devs 
    listcol<-c("Activity","id_subject",as.character(features[grep("mean",features[ ,2]), 2]),
               as.character(features[grep("std",features[ ,2]),2 ]))
    xData<-xData[ ,listcol] 
    library(dplyr)
##make tidy data with the average of each variable 
##for each activity and each subject
    xData<-group_by(xData,Activity,id_subject)
    xData4<-summarise_each(xData,funs(mean))
    write.table(xData4,"data4.txt",row.names = FALSE)
    
##}
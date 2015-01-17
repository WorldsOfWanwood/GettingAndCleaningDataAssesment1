library(plyr)
#load all files
subjectTest<-read.table("UCI HAR Dataset/test/subject_test.txt")
xTest<-read.table("UCI HAR Dataset/test/X_test.txt")
yTest<-read.table("UCI HAR Dataset/test/y_test.txt")
subjectTrain<-read.table("UCI HAR Dataset/test/subject_test.txt")
xTrain<-read.table("UCI HAR Dataset/test/X_test.txt")
yTrain<-read.table("UCI HAR Dataset/test/y_test.txt")
activityLabels<-read.table("UCI HAR Dataset/activity_labels.txt")
features<-read.table("UCI HAR Dataset/features.txt")
#combine test and train sets
xAll<-rbind(xTest,xTrain)
yAll<-rbind(yTest,yTrain)
subjectAll<-rbind(subjectTest,subjectTrain)
#title everything (and remove hard to deal with brackets)
titles<-gsub("\\(|\\)", "", features[,2])
colnames(xAll)<-titles
colnames(yAll)<-"activity"
colnames(subjectAll)<-"subject"
#give activities descriptive names
yAll[yAll==1]<-"Walking"
yAll[yAll==2]<-"WalkingUpstairs"
yAll[yAll==3]<-"WalkingDownstairs"
yAll[yAll==4]<-"Sitting"
yAll[yAll==5]<-"Standing"
yAll[yAll==6]<-"Laying"
#Combine all to one dataframe
data<-cbind(subjectAll,yAll,xAll)
#Find features with "mean" or "std" in them, and make a new dataset with only those features
hasMorS<-grep("std|mean",titles,value=TRUE)
dataClean<-data[c("activity","subject",hasMorS)]
#I created and manually edited a table of variable names for dataClean in "vnames.txt"
vnames<-read.table("vnames.txt")
colnames(dataClean)<-c("activity","subject",as.character(vnames[,2]))
#average for each activity and subject
dataFinal<-ddply(dataClean,c("activity","subject"),numcolwise(mean))
#write this data frame to a file
write.table(dataFinal,file="CleanData.txt",row.names=FALSE)

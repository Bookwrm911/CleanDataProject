##Download File

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")
#If running on a Mac, may need to add " method = "curl" to above code to work. U

##Unzip File

unzip(zipfile="./data/Dataset.zip",exdir="./data")
path_rf <- file.path("./data" , "UCI HAR Dataset")

##Read Relavant Data

SubTest <- read.table(file.path(path_rf, "train", "subject_train.txt"),header = FALSE)
SubTrain <- read.table(file.path(path_rf, "test" , "subject_test.txt"),header = FALSE)
ActTest  <- read.table(file.path(path_rf, "test" , "Y_test.txt" ),header = FALSE)
ActTrain <- read.table(file.path(path_rf, "train", "Y_train.txt"),header = FALSE)
FeatTest  <- read.table(file.path(path_rf, "test" , "X_test.txt" ),header = FALSE)
FeatTrain <- read.table(file.path(path_rf, "train", "X_train.txt"),header = FALSE)

##Merge Data sets

Sub <- rbind(SubTrain, SubTest)
Act<- rbind(ActTrain, ActTest)
Feat<- rbind(FeatTrain, FeatTest)

names(Sub)<-c("subject")
names(Act)<- c("activity")
FeatNames <- read.table(file.path(path_rf, "features.txt"),head=FALSE)
names(Feat)<- FeatNames$V2

Combine <- cbind(Sub, Act)
Data <- cbind(Feat, Combine)

##Find Means & Standard Deviations

FeatNameSubset<-FeatNames$V2[grep("mean\\(\\)|std\\(\\)", FeatNames$V2)]

selected<-c(as.character(FeatNameSubset), "subject", "activity" )
Data<-subset(Data,select=selected)

##Uses descriptive activity names to name the activities in the data set

names(Data)<-gsub("^t", "Time", names(Data))
names(Data)<-gsub("^f", "Frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

##Create New Tidy Data Set

library(dplyr);
Data2<-aggregate(. ~subject + activity, Data, mean)
Data2<-Data2[order(Data2$subject,Data2$activity),]
write.table(Data2, file = "tidy_data.txt",row.name=FALSE)

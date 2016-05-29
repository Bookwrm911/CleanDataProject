# Make sure Have Necessary Package active
library(reshape2)

#Download file

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")
##If running on a Mac, may need to add " method = "curl" to above code to work. 

#Unzip File

unzip(zipfile="./data/Dataset.zip",exdir="./data")
path_rf <- file.path("./data" , "UCI HAR Dataset")

# Load activity labels + features
ActLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
ActLabels[,2] <- as.character(ActLabels[,2])
Features <- read.table("UCI HAR Dataset/features.txt")
Features[,2] <- as.character(Features[,2])

# Extract only the data on mean and standard deviation
M.STD <- grep(".*mean.*|.*std.*", Features[,2])
M.STD.names <- features[M.STD,2]
M.STD.names = gsub('-mean', 'Mean', M.STD.names)
M.STD.names = gsub('-std', 'Std', M.STD.names)
M.STD.names <- gsub('[-()]', '', M.STD.names)


# Load the datasets
Train <- read.table("UCI HAR Dataset/train/X_train.txt")[M.STD]
TrainAct <- read.table("UCI HAR Dataset/train/Y_train.txt")
TrainSub <- read.table("UCI HAR Dataset/train/subject_train.txt")
Train <- cbind(TrainSub, TrainAct, Train)

Test <- read.table("UCI HAR Dataset/test/X_test.txt")[M.STD]
TestAct <- read.table("UCI HAR Dataset/test/Y_test.txt")
TestSub <- read.table("UCI HAR Dataset/test/subject_test.txt")
Test <- cbind(TestSub, TestAct, Test)

# Merge datasets and add labels
allData <- rbind(Train, Test)
colnames(allData) <- c("subject", "activity", M.STD.names)

# turn activities & subjects into factors
allData$activity <- factor(allData$activity, levels = ActLabels[,1], labels = ActLabels[,2])
allData$subject <- as.factor(allData$subject)

allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

write.table(allData.mean, "tidy_data.txt", row.names = FALSE, quote = FALSE)

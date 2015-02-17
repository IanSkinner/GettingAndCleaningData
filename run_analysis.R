# Load required libraries
library(data.table)
library(reshape2)
library(plyr)


# Phase 1 - Load all the data files necessary to create the raw combined dataset
# =============================================================================

#assumes appropriate working directory has been set
#assumes ZIP archive has been unzipped in working directory

#column headings and activity read
features<-read.table("./UCI HAR Dataset/features.txt")
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")

#training data read
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
Y_train<-read.table("./UCI HAR Dataset/train/Y_train.txt")

#test data read

subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
Y_test<-read.table("./UCI HAR Dataset/test/Y_test.txt")


# Phase 2 - combine the datasets
# ==============================

#Initially add column heading held in second column of features table
colnames(X_train) <-features$V2
colnames(X_test) <-features$V2

#and add column headings to activity_labels
colnames(activity_labels) <-c("activity","activity_label")

#add on the subject and type of action as first column in datasets and write back to original tables
X_train <- cbind(subject_train,Y_train,X_train)
X_test <- cbind(subject_test,Y_test,X_test)

#join training and test and name columns
mergeddata <- rbind(X_train,X_test)
colnames(mergeddata)[1:2] <- c("subject","activity")

#keep only the following fields, subject, activity, ...mean()..., ...std()... use a regular expression to identify variables

mergeddata <-mergeddata[,grepl('subject|activity|mean\\(\\)|std\\(\\)',names(mergeddata))]
#add activity label
summarydata
mergeddata <-merge(mergeddata,activity_labels,by.x = "activity")


# Phase 3 - create a tidy dataset and summarise
# =============================================

# get the data into a tidy format (in a deep table)

deepdata <- melt(mergeddata, id = c("subject", "activity_label"), measure.vars = names(mergeddata)[grepl('mean\\(\\)|std\\(\\)',names(mergeddata))], variable.name="measureType" , value.name = "observedValue")

# summarise the data taking the mean value for each measurement type per subject and activity

summarydata <-ddply(deepdata, .(subject,activity_label,measureType),summarize, meanObservedValue = mean(observedValue))

# finally ouput data back to a txt file in the working directory
write.table(summarydata, file="GandCD_SummaryData.txt", row.names = FALSE)
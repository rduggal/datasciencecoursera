library("dplyr")
library("data.table")
# 1. Read the test and the training data sets each into its own dataframe 
datadf<-read.csv("test/X_test.txt", header=F, sep="", skipNul = T)
traindf<-read.csv("train/X_train.txt", header=F, sep="", skipNul = T)


# 2. Read the Subject lists for test and training data sets each into its own dataframe
subject.test<-read.csv("test/subject_test.txt", header=F, sep="")
subject.train<-read.csv("train/subject_train.txt", header=F, sep="")


# 3. Merge the Subjects list dataframes into one.
subject.m <- rbind(subject.test, subject.train)

# 4. Load the activity lists for test and training datasets each into its own dataframe
activity.test<-read.csv("test/y_test.txt", header=F, sep="")
activity.train<-read.csv("train/y_train.txt", header=F, sep="")


# 5. Merge the Activity datasets into one dataframe.
activity.m<-rbind(activity.test, activity.train)


# 6. Load the activity lables into a dataframe.
lables.activity<-read.csv("activity_labels.txt", header=F, sep="")


# 7. Merge the training and test dataframes into the datadf dataframe.
datadf<-rbind(datadf,traindf)
# economy of memory
rm(traindf)


# 8. Load column names from teh features.txt file.
features<-read.csv("features.txt", sep="", header=F)
names(features)<-c("number", "featurename")


# 9. replace default column names in merged dataframe with the ones loaded from features file.
names(datadf) <- features$featurename


# 10. Clean up duplicate column names in the merged dataframe.
datadf<-datadf[,]

# 11. add the activity and subjects columns to the merged dataframe.
datadf<-cbind(lables.activity$V2[match(activity.m$V1, lables.activity$V1)], datadf)
names(datadf)[1] <- "activity"
datadf<-cbind(subject.m, datadf)
names(datadf) [1] <- "subject"


# 12. Extract the std and mean variables from the merged dataset (alon
datadf<-select(datadf, grep("subject|activity|std|mean", names(datadf)))
# clean up the names
names(datadf) <- tolower(sub("()", "", names(datadf), fixed=T))

# 13. Using the exyracted dataset, create a data table and collapse the rows to generate 
# variable means by subject+activity key
datadt<-data.table(datadf)
setkey(datadt,subject,activity)
final<-datadt[,lapply(.SD,mean),by="subject,activity", .SDcols=3:length(names(datadt))]
write.table(final, file="final_data.txt", row.name=FALSE)

## Step 1: Merging the test data and the train data
## Read files from test directory 
test_sub<-read.table("UCI HAR Dataset/test/subject_test.txt")
test_data<-read.table("UCI HAR Dataset/test/X_test.txt")
test_label<-read.table("UCI HAR Dataset/test/y_test.txt")

## Read files from train directory 
train_sub<-read.table("UCI HAR Dataset/train/subject_train.txt")
train_data<-read.table("UCI HAR Dataset/train/X_train.txt")
train_label<-read.table("UCI HAR Dataset/train/y_train.txt")

## Merge the data, labels and subjects
merge_data<-rbind(train_data,test_data)
merge_label<-rbind(train_label,test_label)
merge_sub<-rbind(train_sub,test_sub)

## Step 2: Extract the measurement only for the mean and standard
## deviation for each measurement
features<-read.table("UCI HAR Dataset/features.txt")
mean_std<-grep("mean\\(\\)|std\\(\\)",features[,2])
merge_data<-merge_data[,mean_std]


## Step 3: Uses descriptive activity names to name the activities in the data set
activities<-read.table("UCI HAR Dataset/activity_labels.txt")
activities[,2]<-tolower(gsub("_","",activities[,2]))
activities<-activities[merge_label[,1],2]
merge_label[,1]<-activities
names(merge_label)<-"Activity"

## Step 4: Appropriately labels the data set with descriptive activity names
names(merge_sub)<-"Subject"
final_data<-cbind(merge_sub,merge_label,merge_data)
write.table(final_data,"final_data.txt")

## Step 5: Create the tidy data set
library(reshape2)
tidy<-dcast(final_data,Subject+Activity~ variable,mean)
write.table(tidy,"tidy_data.txt")


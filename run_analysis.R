setwd("~/Documents/GitHub/Data Science Specialization/3) Getting and Cleaning Data/Course Project")
features <- read.table("UCI HAR Dataset/features.txt",col.names=c("Index","Feature"))

# colKeep klopt nog niet, want hij neemt meanFreq() ook mee
colKeep <- grep("mean()|std()",features$Feature)

train <- read.table("UCI HAR Dataset/train/X_train.txt")
features$Feature[colKeep]
setwd("~/Documents/GitHub/Data Science Specialization/3) Getting and Cleaning Data/Course Project")

# Read the list of features (column names in the dataset)
features <- read.table("UCI HAR Dataset/features.txt",col.names=c("Index","Feature"))

# Find the column names that contain 'mean()' or 'std()' using regular
# expressions. It took some time to figure out that I need to escape
# the backslashes too.
colKeep <- grep("\\<mean()\\>|\\<std()\\>",features$Feature)

# Print the list of features to be extracted
features$Feature[colKeep]

# read the feature data for the training and test sets
train <- read.table("UCI HAR Dataset/train/X_train.txt")
test <- read.table("UCI HAR Dataset/test/X_test.txt")

# Keep only the columns with mean() or std()
train <- train[,colKeep]
test <- test[,colKeep]

# read the labels for the training and test sets
trainlabels <- read.table("UCI HAR Dataset/train/Y_train.txt")
testlabels <- read.table("UCI HAR Dataset/test/Y_test.txt")
train$activity <- trainlabels$V1
test$activity <- testlabels$V1

# Add a column to each which mentions which data set the data comes from
train$dataset <- "train"
test$dataset <- "test"

# Remove row names before row-binding
row.names(train) <- NULL
row.names(test) <- NULL
mergedData <- rbind(train,test)

# Add column names
colnames(mergedData) <- c(as.character(features$Feature[colKeep]),"activity","dataset")

# Read the activity label descriptions from the activity_labels.txt file and convert the index
# to a numeric variable and the description to a character variable
activities <- read.table("UCI HAR Dataset/activity_labels.txt",col.names=c("activity","activity.description"))
activities$activity <- as.numeric(activities$activity)
activities$activity.description <- as.character(activities$activity.description)

# Replace the numeric activity labels to the descriptive versions
for (i in 1:nrow(activities)) {
  mergedData$activity[mergedData$activity == activities$activity[i]] <- activities$activity.description[i]
}

# Convert the activities to a factor variable for efficient storage
mergedData$activity <- as.factor(mergedData$activity)
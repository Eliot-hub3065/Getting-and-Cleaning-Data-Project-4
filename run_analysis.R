# Create the run_analysis.R file
library(plyr)
# Download the zip file

if (!file.exists("./GetCleanDataProj4")) {
    dir.create(./"GetCleanDataProj4")
    }
    
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zipUrl, destfile = "./GetCleanDataProj4/dataset.zip", exdir = "./GetCleanDataProj4")
    
unzip(zipfile = "./GetCleanDataProj4/dataset.zip", exdir = "./GetCleanDataProj4")
pathdata = file.path("./GetCleanDataProj4", "UCI HAR Dataset")
files = list.files(pathdata, recursive = TRUE)
                         
# Read training dataset
                         
train_value <- read.table("./GetCleanDataProj4/UCI HAR Dataset/train/X_train.txt")
train_activ <- read.table("./GetCleanDataProj4/UCI HAR Dataset/train/y_train.txt")
train_subj <- read.table("./GetCleanDataProj4/UCI HAR Dataset/train/subject_train.txt")
                         
# Read test dataset
                         
test_value <- read.table("./GetCleanDataProj4/UCI HAR Dataset/test/X_test.txt")
test_activ <- read.table("./GetCleanDataProj4/UCI HAR Dataset/test/y_test.txt")
test_subj <- read.table("./GetCleanDataProj4/UCI HAR Dataset/test/subject_test.txt")
                         
# Read feature
features <- read.table("./GetCleanDataProj4/UCI HAR Dataset/features.txt")
                         
# Read activity labels
activityLabels <- read.table("./GetCleanDataProj4/UCI HAR Dataset/activity_labels.txt")
                         
# Assign variable names
colnames(train_value) <- features[,2]
colnames(train_activ) <- "activityID"
colnames(train_subj) <- "subjectID"
                         
colnames(test_value) <- features[,2]
colnames(test_activ) <- "activityID"
colnames(test_subj) <- "subjectID"
                         
colnames(activityLabels) <- c("activityID", "activityType")
                         
# 1. Merges the training and the test sets to create one data set.
                         
mergedTrain <- cbind(train_value, train_subj, train_activ)
mergedTest <- cbind(test_value, test_subj, test_activ)
mergedAll <- rbind(mergedTrain, mergedTest)
                         
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
                         
colNames <- colnames(mergedAll)
mean_sd <- (grepl("activityID", colNames) | grepl("subjectID", colNames) | grepl("mean..", colNames) | grepl("std...", colNames))
setforMeanandStd <- mergedAll[, mean_sd == TRUE]
    
# 3. Uses descriptive activity names to name the activities in the data set

setWithActivityNames <- merge(setforMeanandStd, activityLabels, by = "activityID", all.x = TRUE)
    
# 4. Appropriately labels the data set with descriptive variable names.
    
    # Descriptive variable names "set_Mean_Sd and mergedAll
    
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
    
tidy2Set <- aggregate(. ~subjectID + activityID, setWithActivityNames, mean)
tidy2Set <- tidy2Set[order(tidy2Set$subjectID, tidy2Set$activityID), ]
write.table(tidy2Set, "tidy_Set.txt", row.names = FALSE)

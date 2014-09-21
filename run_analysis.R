# run_analysis.R
# 
# Created:  2014-09-20
# Author:   Indraneel Sheorey
# Purpose:  Processes raw "Human Activity Recognition Using Smartphones" dataset
#           into tidy data set
#
# Instructions
# ------------
# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each
#    measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set
#    with the average of each variable for each activity and each subject.

# Download data
message("Downloading data...")
url <- paste("https://d396qusza40orc.cloudfront.net/",
             "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", sep = "")
dir.create("data")
path <- "data/UCI HAR Dataset.zip"
download.file(url, path)

# Unzip data
message("Extracting data...")
unzip("data/UCI HAR Dataset.zip", exdir = "data")

# Read in feature names (headers) and activity labels
message("Reading in feature names and activity labels...")
features <- read.table("data/UCI HAR Dataset/features.txt",
                       col.names = c("id", "name"))
activities <- read.table("data/UCI HAR Dataset/activity_labels.txt",
                         col.names = c("y", "activity"))

# Read in training data
message("Reading in training data...")
subject.train <- read.table("data/UCI HAR Dataset/train/subject_train.txt",
                            col.names = "subject")
y.train <- read.table("data/UCI HAR Dataset/train/y_train.txt",
                      col.names = "y")
x.train <- read.table("data/UCI HAR Dataset/train/X_train.txt",
                      col.names = features$name)

# Create training dataset indicator and combine into single data frame
message("Combining training data into single table...")
ds.train <- data.frame(dataset = rep("train", length(subject.train$subject)))
train <- cbind(ds.train, subject.train, y.train, x.train)
rm(ds.train, subject.train, y.train, x.train)

# Read in testing data
message("Reading in testing data...")
subject.test <- read.table("data/UCI HAR Dataset/test/subject_test.txt",
                           col.names = "subject")
y.test <- read.table("data/UCI HAR Dataset/test/y_test.txt",
                     col.names = "y")
x.test <- read.table("data/UCI HAR Dataset/test/X_test.txt",
                     col.names = features$name)

# Create testing dataset indicator and combine into single data frame
message("Combining testing data into single table...")
ds.test <- data.frame(dataset = rep("test", length(subject.test$subject)))
test <- cbind(ds.test, subject.test, y.test, x.test)
rm(ds.test, subject.test, y.test, x.test)

# Merge datasets
message("Merging training and testing data...")
merged <- rbind(train, test)
rm(train, test)

# Extract mean and standard deviation measurements
message("Selecting mean and standard deviation measurements...")
keep.columns <- c(TRUE, # keep column "dataset"
                  TRUE, # keep column "subject"
                  TRUE, # keep column "y"
                  grepl("mean[(][)]|std[(][)]", features$name))
merged.narrow <- merged[ , keep.columns]
colnames(merged.narrow) <- sub("[.][.]", "", colnames(merged.narrow))
rm(merged, keep.columns)

# Add activity label
message("Adding descriptive activity labels...")
library(data.table)
merged.final <- data.table(merge(activities, merged.narrow, by = "y"))
merged.final <- merged.final[order(dataset, subject, y)]
rm(merged.narrow)

# Write narrow dataset to file
message("writing tidy dataset file with selected measurements...")
write.table(merged.final, "data/UCI_HAR.txt", row.names = FALSE)

# Summarize variable means by dataset, subject, and activity
message("Summarizing measurements by dataset, subject, and activity...")
merged.summary <- merged.final[ ,
                               lapply(.SD, mean), # mean of all variables
                               by = list(dataset, subject, activity)]

# Write summarized dataset to file
message("writing tidy dataset file with summarized measurements...")
write.table(merged.summary, "data/UCI_HAR_Summary.txt", row.names = FALSE)

# Complete
message("Done! Created files data/UCI_HAR.txt and UCI_HAR_Summary.txt.")

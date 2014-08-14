# =============================================================================
# run_analysis.R
# Coursera Specialization in Data Science: Getting And Cleaning Data
# -----------------------------------------------------------------------------
# created:  August 2014
# author:   Elequant
# -----------------------------------------------------------------------------
# This R-script processes the 'Human Activity Recognition Using Smartphones 
# Dataset' [1].
#
# =============================================================================
# [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and 
# Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a 
# Multiclass Hardware-Friendly Support Vector Machine. International Workshop 
# of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
# =============================================================================

# =============================================================================
# Pre-Step: Download and extract the zipped data archive
# =============================================================================

downloadAndExtractDataArchive <- function()
{
  if (!file.exists("data")) {
    dir.create("data")
  }
  
  if (!file.exists("data/UciHarDataset")) { 
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    archive <- "data/UciHarDataset.zip"
    download.file(fileUrl, destfile=archive, method="curl")
    
    unzip(archive, exdir="data")
  }
}

# =============================================================================
# Step 1: Merges the training and the test sets to create one data set.
# ============================================================================= 
mergeDataToOneSet <- function()
{
  featuresTable <- read.table("data/UciHarDataset/features.txt")
  features <- featuresTable[,2]
  
  trainingX <- read.table("data/UciHarDataset/train/X_train.txt")
  trainingY <- read.table("data/UciHarDataset/train/y_train.txt")
  trainingS <- read.table("data/UciHarDataset/train/subject_train.txt")
  # It's smarter to put the features into place for the names of the columns at this stage, 
  # than leaving it for later
  colnames(trainingX) <- features
  colnames(trainingY) <- "activity"
  colnames(trainingS) <- "subjectId"
  # Merge the training data: Subject ID | Recognized Activity  | Measurements
  trainingData <- cbind(trainingS, trainingY, trainingX)
  
  testX <- read.table("data/UciHarDataset/test/X_test.txt")
  testY <- read.table("data/UciHarDataset/test/y_test.txt")
  testS <- read.table("data/UciHarDataset/test/subject_test.txt")
  colnames(testX) <- features
  colnames(testY) <- "activity"
  colnames(testS) <- "subjectId"
  # Merge the test data: Subject ID | Recognized Activity  | Measurements
  testData <- cbind(testS, testY, testX)
  
  # Create one data set for the HAR ("Human Activity Recognition") measurements
  harData <- rbind(trainingData, testData)
  harData
}

# =============================================================================
# Step 2: Extracts only the measurements on the mean and standard deviation 
# for each measurement. 
# =============================================================================
extractMeansAndDeviations <- function(harData)
{
  logicalMeansAndDeviations <- sapply(colnames(harData), 
    function(x) grepl("(((std)|(mean))(\\(\\)))|^(activity)$|^(subjectId)$", x))
  meansAndDeviations <- harData[,logicalMeansAndDeviations]
  meansAndDeviations
}

# =============================================================================
# Step 3: Uses descriptive activity names to name the activities 
# in the data set.
# =============================================================================
nameActivities <- function(harData)
{
  activityLabels <- read.table("data/UciHarDataset/activity_labels.txt")
  activities <- sapply(harData[,"activity"], function(x) activityLabels[x,2])
  harData[,"activity"] <- activities
  harData
}

# =============================================================================
# Step 4: Appropriately labels the data set with descriptive variable names.
# =============================================================================
generateDecriptiveName <- function(varName)
{
  varName0 <- gsub("(BodyBody)", "Body", varName)
  
  varName1 <- gsub("^f", "freq", varName0)
  varName2 <- gsub("^t", "time", varName1)
  
  varName3 <- gsub("(Acc)", "Acceleration", varName2)
  varName4 <- gsub("(Gyro)", "Velocity", varName3)
  
  varName5 <- gsub("(-X)", ".X", varName4)
  varName6 <- gsub("(-Y)", ".Y", varName5)
  varName7 <- gsub("(-Z)", ".Z", varName6)
  varName8 <- gsub("(Mag)", ".Magnitude", varName7)
  
  varName9 <- gsub("(-std)\\(\\)", ".StdDev", varName8)
  varNameA <- gsub("(-mean)\\(\\)", ".Mean", varName9)
  
  varNameB <- gsub("(.Mean.X)", ".X.Mean", varNameA)
  varNameC <- gsub("(.Mean.Y)", ".Y.Mean", varNameB)
  varNameD <- gsub("(.Mean.Z)", ".Z.Mean", varNameC)
  varNameE <- gsub("(.StdDev.X)", ".X.StdDev", varNameD)
  varNameF <- gsub("(.StdDev.Y)", ".Y.StdDev", varNameE)
  varNameG <- gsub("(.StdDev.Z)", ".Z.StdDev", varNameF)
  
  varNameG
}


labelColumns <- function(harData)
{ 
  # Due to the length of the variable names the 'lower camel case name 
  # convention' is used in combination with periods in order to make them 
  # more readable
  
  columnNames <- sapply(colnames(harData), function(x) generateDecriptiveName(x))
  colnames(harData) <- columnNames
  harData
}

# =============================================================================
# Step 5: Creates a second, independent tidy data set with the 
# average of each variable for each activity and each subject
# =============================================================================
produceTidyDataSet <- function(harData)
{
  tidyData <- aggregate(harData[,-c(1,2)], 
                          by=list(harData[,"subjectId"], harData[,"activity"]),  
                          FUN=mean)
  colnames(tidyData)[c(1,2)] <- c("subjectId", "activity")
  sortedTidyData <- tidyData[order(tidyData[,"subjectId"],tidyData[,"activity"]),]  
  
  # The resulting tidy data set should be composed of (8*3+9)*2 = 66 columns 
  # (8 three-axial signals, 9 one-dimensional magnitudes, mean and deviation in
  # each case) and 6*30 = 180 rows (30 persons, 6 defined activities),
  # see features_info.txt
  
  write.table(x=sortedTidyData, file="data/tidyDataSet.txt", row.names=FALSE)
  write.table(x=sortedTidyData, file="data/tidyDataSet.csv", sep=",", row.names=FALSE)
}

# =============================================================================
# And now: Carry out all steps by calling all functions subsequently
# in order to create a tidy data set by processing the
# 'Human Activity Recognition Using Smartphone Dataset' [1]
# =============================================================================

# Step 0
downloadAndExtractDataArchive()
# Step 1
df <- mergeDataToOneSet()
# Step 2
df <- extractMeansAndDeviations(df)
# Step 3
df <- nameActivities(df)
# Step 4
df <- labelColumns(df)
# Step 5
produceTidyDataSet(df)


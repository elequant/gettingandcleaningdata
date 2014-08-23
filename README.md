# gettingandcleaningdata

This repo (*gettingandcleaningdata*) is part of the *Getting and Cleaning Data Course Project* of *Coursera*'s *Data Science Specialization*. This *readme* shows information about the files in this repo and explains how they are connected. In addition, an instruction for the use of the data cleaning script (`run_analysis.R`) is added.

## Project Objectives

The project is based on a data set ([*HAR UCI Dataset*](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)) provided by the [*UCI Machine Learning Repository*](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) which contains measurements collected from the accelerometers and the gyroscope from a Samsung smartphone attached to human subjects performing activities of daily living (e.g. walking, sitting, laying etc.).<br />
An R script ([`run_analysis.R`](https://github.com/elequant/gettingandcleaningdata/blob/master/run_analysis.R)) was developed, which functionality comprises 

* the download and the unpacking of the HAR data set if it is not already present in the current working directory, 
* the aggregation and the processing of the HAR data set and 
* the generation of a tidy data set with the average of each mean value and standard deviation for each activity and each experimental subject. 

Each step of the R script is explained later in this document and the resulting data set(s) are described in detail in the codebook [`CodeBook.md`](https://github.com/elequant/gettingandcleaningdata/blob/master/CodeBook.md).

## Repository Content

This repo contains ...

1. ...a <b>tidy data set</b> containing mean values and standard deviations of measurements collected from the accelerometers and the gyroscope of a smartphone for each activity and each human subject. This data set is provided in two different file formats: the file `tidyDataSet.txt` was required (as project goal) and the file `tidyDataSet.csv` can be imported easily by a spreadsheet program,
2. ...a <b>script</b> named `run_analysis.R` for performing the data collecting steps and the data cleaning steps,
3. ...a <b>code book</b> called `CodeBook.md` that describes the variables, the data, and any transformations that the R script performed to clean up the data.

## Functionality of the script *run_analysis.R*

The R script *run_analysis.R* performs following steps in order to transform and clean up the original data:

* *Pre-step* : The R script will download the *HAR UCI* data set (as zip file) from the *UCI Machine Learning* repository if it is not already present. After that the zip file is unpacked into the current working directory of the R process. (See function `downloadAndExtractDataArchive`.)
* *Step 1* : Because the original data is splitted in different sets (trainings set and test set) and each set is splitted in different files the data is merged to create one big data set. (See function `mergeDataToOneSet`.)
* *Step 2* : In this step only the measurements on the mean and standard deviation for each measurement record are extracted for further processing. (See function `extractMeansAndDeviations`.) Please **note** that features containing "meanFreq" remain unconsidered because this variables contains values of weighted averages of different components but are not "means" in a statistical meaning.   
* *Step 3* : The activities in the data set are replaced with descriptive activity names. Therefore the activity names which are listed in `activity_labels.txt` are used. (See function `nameActivities`.)
* *Step 4* : This step labels the data set columns with descriptive variable names. Due to the length of the variable names the "lower camel case name convention" is used in combination with periods in order to make them more readable. (See function `labelColumns`.)
* *Step 5* : Finally a resulting tidy data set with the average of each variable for each activity and each subject is created. The tidy data is exported in the two file formats, `tidyDataSet.txt` and `tidyDataSet.csv`. (See function `produceTidyDataSet`.)

## Instruction for Use

It is assumed that you already have R installed on your computer. If this is the case, download the file `run_analysis.R` and save it into the working directory of the R process. If you are not sure about your current directory start R or RStudio and call `getwd()`. <br />After that you can run the script, e.g. by typing `source("run_analysis.R")` into the RStudio console.
The R script will download the HAR data set automatically from the *UCI Machine Learning Repository* (if it is not already present) and generate the files `tidyDataSet.txt` and `tidyDataSet.csv` containing the tidy data set as described in the codebook `CodeBook.md`.


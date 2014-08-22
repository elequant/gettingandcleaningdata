# CodeBook

## CodeBook Content
1. Introduction and Original Data
2. Data Cleaning via *run_analysis.R*
3. Data Description   
4. Data Dictionary
5. References

## 1. Introduction and Original Data

* This project is based on a *Human Activity Recognition* database which contains measurements collected from the accelerometers and the gyroscope from a Samsung smartphone attached to human subjects performing activities of daily living (e.g. walking, sitting, laying etc.).<br />The original data was collected by Reyes-Ortiz et.al. [1] and can be downloaded [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) [2]. The original data set is splitted in different files. A full description of all measurements is available at the *UCI Machine Learning* [website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) [3].

* The goal of this project was to aggregate and to clean the original data and to prepare tidy data that can be used for later analysis.<br />This codebook describes all transformations that the developed R script performed and, in particular, the resulting data. **Thus, core of this codebook is the Data Dictionay in section 4 which helps to interpret the data.**

## 2. Data Cleaning via *run_analysis.R*

The R script *run_analysis.R* performs following steps in order to transform and clean up the original data:

* *Pre-step* : The R script will download the *HAR UCI* data set (as zip file) from the *UCI Machine Learning* repository if it is not already present. After that the zip file is unpacked into the current working directory of the R process. (See function `downloadAndExtractDataArchive`.)
* *Step 1* : Because the original data is splitted in different sets (trainings set and test set) and each set is splitted in different files the data is merged to create one big data set. (See function `mergeDataToOneSet`.)
* *Step 2* : In this step only the measurements on the mean and standard deviation for each measurement record are extracted for further processing. (See function `extractMeansAndDeviations`.) Please **note** that features containing "meanFreq" remain unconsidered because this variables contains values of weighted averages of different components but are not "means" in a statistical meaning.   
* *Step 3* : The activities in the data set are replaced with descriptive activity names. Therefore the activity names which are listed in `activity_labels.txt` are used. (See function `nameActivities`.)
* *Step 4* : This step labels the data set columns with descriptive variable names. Due to the length of the variable names the "lower camel case name convention" is used in combination with periods in order to make them more readable. (See function `labelColumns`.)
* *Step 5* : Finally a resulting tidy data set with the average of each variable for each activity and each subject is created. The tidy data is exported in the two file formats, `tidyDataSet.txt` and `tidyDataSet.csv`. (See function `produceTidyDataSet`.)

## 3. Data Description

* The tidy data set consists of 180 measurement records, because each of the 30 experimental subjects performed 6 activities. 
<br />Each measurement record contains the averages of 66 features for each of the 180 subject-activity pairs, because there are 66 measurements on the mean and standard deviation in each original measurement record.<br />Two additional columns contain the identifiers of the experimental subjects and the activity labels.

* The tidy data set is labeled with descriptive variable names. Each feature variable name is composed of three segments seperated by dots.<br />The first segment describes the type of the feature in a readable way. This can be seen from the comparison between the variable names and the corresponding variable descriptions in the second column of the Data Dictionary in section 4.<br />The second segment specifies the axial direction of the detected motion or indicates if the variable contains the value of the magnitude of the motion vector.
<br />The third segment specifies whether it is a mean or a standard deviation. 

* Because features are normalized and bounded within [-1,1] all variables are **without units.**

## 4. Data Dictionary

<table>
	<tr>
		<td><i><b>Variable Name</b></i></td>
		<td><i><b>Description</b></i></td>
		<td><i><b>Data Type</b></i></td>
		<td><i><b>Allowable Values</b></i></td>
	</tr>
	<tr>
		<td>subjectId</td>
		<td>An identifier of the person who carried out the experiment</td>
		<td>Integer</td>
		<td>Data Range (discrete)<br>Min: 1<br>Max: 30</td>
	</tr>
	<tr>
		<td>activity</td>
		<td>A descriptive label specifying the activity the person performed in a time window</td>
		<td>Characters (String)</td>
		<td>Enumeration<br>1: WALKING<br>2: WALKING_UPSTAIRS<br>3: WALKING_DOWNSTAIRS<br>4: SITTING<br>5: STANDING<br>6: LAYING</td>
	</tr>
	<tr>
		<td>timeBodyAcceleration.X.Mean</td>
		<td>The mean value of the body motion component of the acceleration measured by the accelerometer in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAcceleration.Y.Mean</td>
		<td>The mean value of the body motion component of the acceleration measured by the accelerometer in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAcceleration.Z.Mean</td>
		<td>The mean value of the body motion component of the acceleration measured by the accelerometer in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAcceleration.X.StdDev</td>
		<td>The standard deviation of the body motion component of the acceleration measured by the accelerometer in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAcceleration.Y.StdDev</td>
		<td>The standard deviation of the body motion component of the acceleration measured by the accelerometer in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAcceleration.Z.StdDev</td>
		<td>The standard deviation of the body motion component of the acceleration measured by the accelerometer in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeGravityAcceleration.X.Mean</td>
		<td>The mean value of the gravitational component of the acceleration measured by the accelerometer in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeGravityAcceleration.Y.Mean</td>
		<td>The mean value of the gravitational component of the acceleration measured by the accelerometer in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeGravityAcceleration.Z.Mean</td>
		<td>The mean value of the gravitational component of the acceleration measured by the accelerometer in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeGravityAcceleration.X.StdDev</td>
		<td>The standard deviation of the gravitational component of the acceleration measured by the accelerometer in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeGravityAcceleration.Y.StdDev</td>
		<td>The standard deviation of the gravitational component of the acceleration measured by the accelerometer in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeGravityAcceleration.Z.StdDev</td>
		<td>The standard deviation of the gravitational component of the acceleration measured by the accelerometer in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAccelerationJerk.X.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAccelerationJerk.Y.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAccelerationJerk.Z.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAccelerationJerk.X.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAccelerationJerk.Y.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAccelerationJerk.Z.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.X.Mean</td>
		<td>The mean value of the body motion component of the angular velocity measured by the gyroscope in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.Y.Mean</td>
		<td>The mean value of the body motion component of the angular velocity measured by the gyroscope in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.Z.Mean</td>
		<td>The mean value of the body motion component of the angular velocity measured by the gyroscope in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.X.StdDev</td>
		<td>The standard deviation of the body motion component of the angular velocity measured by the gyroscope in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.Y.StdDev</td>
		<td>The standard deviation of the body motion component of the angular velocity measured by the gyroscope in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.Z.StdDev</td>
		<td>The standard deviation of the body motion component of the angular velocity measured by the gyroscope in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.X.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the angular velocity measured by the gyroscope in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.Y.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the angular velocity measured by the gyroscope in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.Z.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the angular velocity measured by the gyroscope in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.X.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the angular velocity measured by the gyroscope in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.Y.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the angular velocity measured by the gyroscope in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.Z.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the angular velocity measured by the gyroscope in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAcceleration.Magnitude.Mean</td>
		<td>The mean value of the mangnitude of the body motion component of the acceleration measured by the accelerometer (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAcceleration.Magnitude.StdDev</td>
		<td>The standard deviation of the magnitude of the body motion component of the acceleration measured by the accelerometer (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeGravityAcceleration.Magnitude.Mean</td>
		<td>The mean value of the magnitude of the gravitational component of the acceleration measured by the accelerometer (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeGravityAcceleration.Magnitude.StdDev</td>
		<td>The standard deviation of the magnitude of the gravitational component of the acceleration measured by the accelerometer (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAccelerationJerk.Magnitude.Mean</td>
		<td>The mean value of the jerk signal derived from the magnitude of the body motion component of the acceleration measured by the accelerometer (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyAccelerationJerk.Magnitude.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the magnitude of the body motion component of the acceleration measured by the accelerometer (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.Magnitude.Mean</td>
		<td>The mean value of the magnitude of the body motion component of the angular velocity measured by the gyroscope (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.Magnitude.StdDev</td>
		<td>The standard deviation of the magnitude of the body motion component of the angular velocity measured by the gyroscope (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.Magnitude.Mean</td>
		<td>The mean value of the jerk signal derived from the magnitude of the body motion component of the angular velocity  measured by the gyroscope (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.Magnitude.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the magnitude of the body motion component of the angular velocity  measured by the gyroscope (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAcceleration.X.Mean</td>
		<td>The mean value of the body motion component of the acceleration measured by the accelerometer in the direction of the X axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAcceleration.Y.Mean</td>
		<td>The mean value of the body motion component of the acceleration  measured by the accelerometer in the direction of the Y axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAcceleration.Z.Mean</td>
		<td>The mean value of the body motion component of the acceleration measured by the accelerometer in the direction of the Z axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAcceleration.X.StdDev</td>
		<td>The standard deviation of the body motion component of the acceleration measured by the accelerometer in the direction of the X axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAcceleration.Y.StdDev</td>
		<td>The standard deviation of the body motion component of the acceleration measured by the accelerometer in the direction of the Y axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAcceleration.Z.StdDev</td>
		<td>The standard deviation of the body motion component of the acceleration measured by the accelerometer in the direction of the Z axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAccelerationJerk.X.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the X axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAccelerationJerk.Y.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the Y axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAccelerationJerk.Z.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the Z axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAccelerationJerk.X.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the X axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAccelerationJerk.Y.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the Y axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAccelerationJerk.Z.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the acceleration measured by the accelerometer in the direction of the Z axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyVelocity.X.Mean</td>
		<td>The mean value of the body motion component of the angular velocity  measured by the gyroscope in the direction of the X axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyVelocity.Y.Mean</td>
		<td>The mean value of the body motion component of the angular velocity  measured by the gyroscope in the direction of the Y axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyVelocity.Z.Mean</td>
		<td>The mean value of the body motion component of the angular velocity  measured by the gyroscope in the direction of the Z axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyVelocity.X.StdDev</td>
		<td>The standard deviation of the body motion component of the angular velocity  measured by the gyroscope in the direction of the X axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyVelocity.Y.StdDev</td>
		<td>The standard deviation of the body motion component of the angular velocity  measured by the gyroscope in the direction of the Y axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyVelocity.Z.StdDev</td>
		<td>The standard deviation of the body motion component of the angular velocity  measured by the gyroscope in the direction of the Z axis (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAcceleration.Magnitude.Mean</td>
		<td>The mean value of the mangnitude of the body motion component of the acceleration measured by the accelerometer (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAcceleration.Magnitude.StdDev</td>
		<td>The standard deviation of the magnitude of the body motion component of the acceleration measured by the accelerometer (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAccelerationJerk.Magnitude.Mean</td>
		<td>The mean value of the jerk signal derived from the magnitude of the body motion component of the acceleration measured by the accelerometer (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyAccelerationJerk.Magnitude.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the magnitude of the body motion component of the acceleration measured by the accelerometer (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyVelocity.Magnitude.Mean</td>
		<td>The mean value of the magnitude of the body motion component of the angular velocity  measured by the gyroscope (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyVelocity.Magnitude.StdDev</td>
		<td>The standard deviation of the magnitude of the body motion component of the angular velocity  measured by the gyroscope (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyVelocityJerk.Magnitude.Mean</td>
		<td>The mean value of the jerk signal derived from the magnitude of the body motion component of the angular velocity  measured by the gyroscope (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>freqBodyVelocityJerk.Magnitude.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the magnitude of the body motion component of the angular velocity  measured by the gyroscope (in frequency domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
</table>

## 5. References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. *Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.* International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] The download link of the *Human Activity Recognition Using Smartphones Data Set*: `https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip`

[3] The *HAR UCI Data Set* information of the *UCI Machine Learning Repository*:  `http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones`

# CodeBook

## Introduction
* projekt HAR macht dies und das (ganz kurz)=> the study[1],
* weiterführende Infos hier data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site  (on the website of UCI Machine Learning repository) where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* The goal of this project was to prepare tidy data that can be used for later analysis.
* In diesem Projekt wurde zusammnefügen und cleaning betrieben für spätere analyse, einzelne schritte siehe 2.
* Dieses Codebook beschreibt also Transformationschritte und insbesondere die resultiernden Daten.
* Herzstück dieses Codebooks ist also das DataDictionay in section 4 welches hilft die Daten zu verstehen

## CodeBook Content
1. Data Cleaning via *run_analysis.R*
2. Data Description   
3. Data Dictionary
4. References

## 1. Original data

* Originaldaten finden sich hier: [2]
* Originaldaten aufgeteilt in Training und tests-daten.
* Infos zu daten finden sich hier. [3] [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## 2. Data Cleaning via *run_analysis.R* 
* Getting
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. Mean & Standard: meanfreq nicht, siehe features_info: average of components , not mean in statistical bedeutung    
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* Creates a resulting tidy data set with the average of each variable for each activity and each subject. 


## 3. Data Description
* Variablen haben descriptive names da...
* Allgemeiner Aufbau
* Because alle werte sind normierte werte hat keine variable eine unit

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
		<td>The mean value of the body motion component of the acceleration  measured by the accelerometer in the direction of the Y axis (in time domain)  </td>
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
		<td>The mean value of the gravitational component of the acceleration  measured by the accelerometer in the direction of the Y axis (in time domain)  </td>
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
		<td>The mean value of the body motion component of the angular velocity  measured by the gyroscope in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.Y.Mean</td>
		<td>The mean value of the body motion component of the angular velocity  measured by the gyroscope in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.Z.Mean</td>
		<td>The mean value of the body motion component of the angular velocity  measured by the gyroscope in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.X.StdDev</td>
		<td>The standard deviation of the body motion component of the angular velocity  measured by the gyroscope in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.Y.StdDev</td>
		<td>The standard deviation of the body motion component of the angular velocity  measured by the gyroscope in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.Z.StdDev</td>
		<td>The standard deviation of the body motion component of the angular velocity  measured by the gyroscope in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.X.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the angular velocity  measured by the gyroscope in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.Y.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the angular velocity  measured by the gyroscope in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.Z.Mean</td>
		<td>The mean value of the jerk signal derived from the body motion component of the angular velocity  measured by the gyroscope in the direction of the Z axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.X.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the angular velocity  measured by the gyroscope in the direction of the X axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.Y.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the angular velocity  measured by the gyroscope in the direction of the Y axis (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocityJerk.Z.StdDev</td>
		<td>The standard deviation of the jerk signal derived from the body motion component of the angular velocity  measured by the gyroscope in the direction of the Z axis (in time domain)  </td>
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
		<td>The mean value of the magnitude of the body motion component of the angular velocity  measured by the gyroscope (in time domain)  </td>
		<td>Numeric</td>
		<td>Data Range (continious) <br>Min: -1<br>Max: +1</td>
	</tr>
	<tr>
		<td>timeBodyVelocity.Magnitude.StdDev</td>
		<td>The standard deviation of the magnitude of the body motion component of the angular velocity  measured by the gyroscope (in time domain)  </td>
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

### References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] The download link of the *Human Activity Recognition Using Smartphones Data Set*: `https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip`

[3] The HAR Data Set information of the UCI Machine Learning Repository:  `http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones`

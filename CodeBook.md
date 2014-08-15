# CodeBook

## Introduction

## CodeBook Content
* 1. Original Data
* 2. Data Cleaning via *run_analysis.R*
* 3. Data Description
* 4. Data Dictionary
* 5. References

## 1. Original Data

## 2. Data Cleaning via *run_analysis.R*

## 3. Data Description

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

### 5. References

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

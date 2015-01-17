# GettingAndCleaningDataAssesment1


The cleaned data produced by run_analysis.R is saved in the "CleanData.txt" file of the working directiory. It consists of  81 different variables. For all except the "subject" and "activity" variables, they are the mean of the column title value for the subject and activity they correspond to. Original methods for obtaining these measurements given at bottom of this document.

###Meanings of values 
(see bottom of document for transformations performed to obtain these values and the units)

subject - The integer assigned to the person who performed this action  

action - the action the values were recorded for ("Walking", "WalkingUpstairs", "WalkingDownstairs", "Sitting", "Standing", or "Laying") 

BodyAccelTime - the time value for the body only component of the accelaration.  

GravityAccelTime - the time value for the gravity only component of the accelaration.  

BodyJerkAccelTime -  the time value for the body only component of the jerk of the accelaration  

BodyGyroTime - the time value for the body only component of the gyroscope reading  

BodyGyroTimeJerk - The time value for the jerk of the body only component of the gyroscope reading  

MagnitudeBodyAccelTime - the magnitude of time value for the body only component of the accelaration.  

MagnitudeJerkBodyAccelTime - the magnitude of time value of the jerk for the body only component of the accelaration.  

MagnitudeBodyGyroTime - the magnitude of the time value for the body only component of the gyroscope reading  

MagnitudeBodyGyroTimeJerk - the magnitude of the time value for the body only component of the jerk of the gyroscope reading  

BodyAccelFreq - the frequency of the body only component of the accelaration.  

JerkBodyAccelFreq - the frequency of the jerk of the body only component of the accelaration.  

BodyGyroFreq - the frequency of the body only component of the gyroscope reading.  

MagnitudeBodyAccelFreq - the magnitude of the frequency of the body only component of the accelaration.  

MagnitudeJerkBodyAccelFreq - the magnitude of the frequency of the jerk of the body only component of the accelaration.  

MagnitudeBodyGyroFreq - the magnitude of the frequency of the body only component of the gyroscope reading  

MagnitudeJerkBodyGyroFreq - the magnitude of the frequency of the jerk of the body only component of the gyroscope reading  


Some of these followed by:  

mean - the mean of the preceding value  

meanOfX - (or Y or Z) the mean of the preceding value only in the X (or Y or Z) direction
sd - the standard deviation of the preceding value  

sdOfX - (or Y or Z) the standard deviation of the preceding value only in the X (or Y or Z) direction  

meanFreq - the mean frequency of the preceding value  


for a full list of available values please see vnames.txt

###From code book recieved with raw data

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."
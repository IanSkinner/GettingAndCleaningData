## Data Dictionary

###1. subject
Anonymous identifier for each individual observed in the range 1..30
  
###2. activity_label
Descriptive name for activity that was undertaken at the time of measurement and can take one of the following Values:
* LAYING            
* SITTING           
* STANDING            
* WALKING 
* WALKING_DOWNSTAIRS   
* WALKING_UPSTAIRS

###3. measureType
The set of measures from the raw data where mean() or std() functions have been applied   

###4. meanObservedValue
The mean value of either the mean() or std() variable across all observations for the Subject, Activity and Measure type combuination. The measuretype column indicates what the value pertains to.

The measurements for this field are defined below (taken from supplied codebook):

_The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz._ 

_Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)._

_Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals)._

_These signals were used to estimate variables of the feature vector for each pattern:_ 
_'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions._

* _tBodyAcc-XYZ_
* _tGravityAcc-XYZ_
* _tBodyAccJerk-XYZ_
* _tBodyGyro-XYZ_
* _tBodyGyroJerk-XYZ_
* _tBodyAccMag_
* _tGravityAccMag_
* _tBodyAccJerkMag_
* _tBodyGyroMag_
* _tBodyGyroJerkMag_
* _fBodyAcc-XYZ_
* _fBodyAccJerk-XYZ_
* _fBodyGyro-XYZ_
* _fBodyAccMag_
* _fBodyAccJerkMag_
* _fBodyGyroMag_
* _fBodyGyroJerkMag_



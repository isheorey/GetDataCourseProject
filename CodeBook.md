UCI HAR Summary Dataset - Code Book
====================

This file documents the variables in the dataset UCI_HAR_Summary.txt


### Overview

The UCI HAR Summary dataset is transformed from the Human Activity Recognition Using Smartphones Dataset (additional details at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). From the raw dataset, training and testing data is merged into a single dataset, mean and standard deviation measurements are selected, observations and variables are labeled, and the data is summarized by train/test, subject, and activity.

### Identifiers and Dependent Variable

* __dataset__. Identifies whether observation is from training or testing data set. Values {train, test}
* __subject__. Identifies subject performing activities. Values 1:30
* __activity__. Identifies activity being performed. Values {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}
* __y__. Dependent variable; each value corresponds to an activity as listed above. Values 1:6

### Independent Variables

Selected variables are mean value (mean) or standard deviation (std) of variables.  Variables prefixed with "t" are time domain signals. Variables prefixed with "f" are frequency domain signals (via Fast Fourier Transform). All variables are further averaged across all observations.

* __tBodyAcc.mean.X__. Mean value of body acceleration on X axis, time domain.
* __tBodyAcc.mean.Y__. Mean value of body acceleration on Y axis, time domain.
* __tBodyAcc.mean.Z__. Mean value of body acceleration on Z axis, time domain.
* __tBodyAcc.std.X__. Standard deviation of body acceleration on X axis, time domain.
* __tBodyAcc.std.Y__. Standard deviation of body acceleration on Y axis, time domain.
* __tBodyAcc.std.Z__. Standard deviation of body acceleration on Z axis, time domain.

* __tGravityAcc.mean.X__. Mean value of gravity acceleration on X axis, time domain.
* __tGravityAcc.mean.Y__. Mean value of gravity acceleration on Y axis, time domain.
* __tGravityAcc.mean.Z__. Mean value of gravity acceleration on Z axis, time domain.
* __tGravityAcc.std.X__. Standard deviation of gravity acceleration on X axis, time domain.
* __tGravityAcc.std.Y__. Standard deviation of gravity acceleration on Y axis, time domain.
* __tGravityAcc.std.Z__. Standard deviation of gravity acceleration on Z axis, time domain.

* __tBodyAccJerk.mean.X__. Mean value of body acceleration jerk on X axis, time domain.
* __tBodyAccJerk.mean.Y__. Mean value of body acceleration jerk on Y axis, time domain.
* __tBodyAccJerk.mean.Z__. Mean value of body acceleration jerk on Z axis, time domain.
* __tBodyAccJerk.std.X__. Standard deviation of body acceleration jerk on X axis, time domain.
* __tBodyAccJerk.std.Y__. Standard deviation of body acceleration jerk on Y axis, time domain.
* __tBodyAccJerk.std.Z__. Standard deviation of body acceleration jerk on Z axis, time domain.

* __tBodyGyro.mean.X__. Mean value of body angular velocity on X axis, time domain.
* __tBodyGyro.mean.Y__. Mean value of body angular velocity on Y axis, time domain.
* __tBodyGyro.mean.Z__. Mean value of body angular velocity on Z axis, time domain.
* __tBodyGyro.std.X__. Standard deviation of body angular velocity on X axis, time domain.
* __tBodyGyro.std.Y__. Standard deviation of body angular velocity on Y axis, time domain.
* __tBodyGyro.std.Z__. Standard deviation of body angular velocity on Z axis, time domain.

* __tBodyGyroJerk.mean.X__. Mean value of body angular velocity jerk on X axis, time domain.
* __tBodyGyroJerk.mean.Y__. Mean value of body angular velocity jerk on Y axis, time domain.
* __tBodyGyroJerk.mean.Z__. Mean value of body angular velocity jerk on Z axis, time domain.
* __tBodyGyroJerk.std.X__. Standard deviation of body angular velocity jerk on X axis, time domain.
* __tBodyGyroJerk.std.Y__. Standard deviation of body angular velocity jerk on Y axis, time domain.
* __tBodyGyroJerk.std.Z__. Standard deviation of body angular velocity jerk on Z axis, time domain.

* __tBodyAccMag.mean__. Mean value of body acceleration magnitude, time domain.
* __tBodyAccMag.std__. Standard deviation of body acceleration magnitude, time domain.
* __tGravityAccMag.mean__. Mean value of gravity acceleration magnitude, time domain.
* __tGravityAccMag.std__. Standard deviation of gravity acceleration magnitude, time domain.
* __tBodyAccJerkMag.mean__. Mean value of body acceleration jerk magnitude, time domain.
* __tBodyAccJerkMag.std__. Standard deviation of body acceleration jerk magnitude, time domain.
* __tBodyGyroMag.mean__. Mean value of body angular velocity magnitude, time domain.
* __tBodyGyroMag.std__. Standard deviation of body angular velocity magnitude, time domain.
* __tBodyGyroJerkMag.mean__. Mean value of body angular velocity jerk magnitude, time domain.
* __tBodyGyroJerkMag.std__. Standard deviation of body angular velocity jerk magnitude, time domain.

* __fBodyAcc.mean.X__. Mean value of body acceleration on X axis, frequency domain.
* __fBodyAcc.mean.Y__. Mean value of body acceleration on Y axis, frequency domain.
* __fBodyAcc.mean.Z__. Mean value of body acceleration on Z axis, frequency domain.
* __fBodyAcc.std.X__. Standard deviation of body acceleration on X axis, frequency domain.
* __fBodyAcc.std.Y__. Standard deviation of body acceleration on Y axis, frequency domain.
* __fBodyAcc.std.Z__. Standard deviation of body acceleration on Z axis, frequency domain.

* __fBodyAccJerk.mean.X__. Mean value of body acceleration jerk on X axis, frequency domain.
* __fBodyAccJerk.mean.Y__. Mean value of body acceleration jerk on Y axis, frequency domain.
* __fBodyAccJerk.mean.Z__. Mean value of body acceleration jerk on Z axis, frequency domain.
* __fBodyAccJerk.std.X__. Standard deviation of body acceleration jerk on X axis, frequency domain.
* __fBodyAccJerk.std.Y__. Standard deviation of body acceleration jerk on Y axis, frequency domain.
* __fBodyAccJerk.std.Z__. Standard deviation of body acceleration jerk on Z axis, frequency domain.

* __fBodyGyro.mean.X__. Mean value of body angular velocity on X axis, frequency domain.
* __fBodyGyro.mean.Y__. Mean value of body angular velocity on Y axis, frequency domain.
* __fBodyGyro.mean.Z__. Mean value of body angular velocity on Z axis, frequency domain.
* __fBodyGyro.std.X__. Standard deviation of body angular velocity on X axis, frequency domain.
* __fBodyGyro.std.Y__. Standard deviation of body angular velocity on Y axis, frequency domain.
* __fBodyGyro.std.Z__. Standard deviation of body angular velocity on Z axis, frequency domain.

* __fBodyAccMag.mean__. Mean value of body acceleration magnitude, frequency domain.
* __fBodyAccMag.std__. Standard deviation of body acceleration magnitude, frequency domain.
* __fBodyBodyAccJerkMag.mean__. Mean value of body acceleration jerk magnitude, frequency domain.
* __fBodyBodyAccJerkMag.std__. Standard deviation of body acceleration jerk magnitude, frequency domain.
* __fBodyBodyGyroMag.mean__. Mean value of body angular velocity magnitude, frequency domain.
* __fBodyBodyGyroMag.std__. Standard deviation of body angular velocity magnitude, frequency domain.
* __fBodyBodyGyroJerkMag.mean__. Mean value of body angular velocity jerk magnitude, frequency domain.
* __fBodyBodyGyroJerkMag.std__. Standard deviation of body angular velocity jerk magnitude, frequency domain.

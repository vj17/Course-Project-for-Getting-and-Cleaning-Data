DATA DICTIONARY - Course Project for Getting and Cleaning Data

The variables and the values recorded are as given below:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The final data set consists of the following variables:

- "Subject" [Type:Integer] - specifies the range 1:30 of 30 volunteers who participated in the experiment. 
- "Activity" [Type:Factor] - specifies the activity undertaken by the participants with the following logic:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
- mean() [Type:Real Number] - computes the mean values of multiple measurements of the original variables.
- std() [Type:Real Number] - computes the standard deviation values of multiple measurements of the original variables.

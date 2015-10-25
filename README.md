# Course-Project-for-Getting-and-Cleaning-Data
This contains the course project for Getting and Cleaning Data

One of the most exciting areas in all of data science right now is wearable computing.
Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 
The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S 
smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To run the run_analysis.R script, first download the file from the link below and unzip the files

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Follow these steps to run the script:
<li> Change your current working directory to the directory that contains the "UCI HAR Dataset" folder downloaded from the link above.
<li> The first part of the script extracts and merges the data from the .txt files present in the "train" and "test" folders 
respectively. 
<li> The second part of the script extracts only those variables where "mean" or "standard deviation" are specified and the
resulting data is joined to the merged data set from Step 1.
<li> The third part of the script uses descriptive activity names to name the activities in the data set.
<li> The fourth part of the script appropriately labels the data set with descriptive activity names. Thus, we have a clean 
data set that can be fed to the process occurring in the next step.
<li> The last part of the script finds the average of all the columns and groups them by the activity and the subject. The
library(reshape2) must be loaded to run this step.


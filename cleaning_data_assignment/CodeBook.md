==================================================================
# Tidied Dataset for "Human Activity Recognition Using Smartphones Dataset"
==================================================================

Submission by : Ramakant Duggal
Submitted for : Assignment for the Coursera "Getting and Cleaning Data" course

=================================================================

## Method followed

The tidy data set was produced from the raw data in following steps :

1. Read the test and the training data sets each into its own dataframe using RStudio
2. Read the Subject lists for test and training data sets each into its own dataframe
3. Merge the Subjects list dataframes into one.
4. Load the activity lists for test and training datasets each into its own dataframe using R Stuido.
5. Merge the Activity datasets into one dataframe.
6. Load the activity lables into a dataframe.
7. Merge the training and test dataframes into the datadf dataframe.
8. Load column names from teh features.txt file.
9. replace default column names in merged dataframe with the ones loaded from features file.
10. Clean up duplicate column names in the merged dataframe.
11. add the activity and subjects columns to the merged dataframe.
12. Extract the std and mean variables from the merged dataset (along with subject and activity columns).
13. Using the exyracted dataset, create a data table and collapse the rows to generate variable means by subject+activity key


## Description of variables :

### subject
Subject ID


### activity
Name of the activity

### tbodyacc-mean-xyz, tbodyacc-std-xyz : 
Subject-wise and activity-wise mean's and Subject-wise and activity-wise mean of the standard deviations for
the body linear acceleration (time domain) signals.

### tgravityacc-mean-xyz, tgravityacc-std-xyz: 
Similarly averaged means and standard deviations of the gravity acceleration (time domain) signals.

### tbodygyro-mean-x, tbodygyro-std-x :
Subject-wise and activity-wise mean's and Subject-wise and activity-wise mean of the standard deviations for
the body angular acceleration (time domain) signals.

### tbodyaccjerk-mean-x, tbodyaccjerk-std-xyz : 
Similarly averaged means and standard deviations of the Jerk signals  
(time derived from ithe linear acceleration) signals.

### tbodyaccmag-mean, tbodyaccmag-std
Subject-wise and activity-wise mean's and Subject-wise and activity-wise mean of the standard deviations for
the magintude of the three-dimensional signals calculated using the Euclidean norm.

### tbodygyrojerk-mean-x, tbodygyrojerk-std-x :
Similarly averaged means and standard deviations of the Jerk signals  
(time derived from the angular acceleration) signals.

The "f" (as against "t") prefix variables are the Fast Fourier Transform (FFT) of the respective signals.



## Complete list of Variables in the tidy dataset


subject
activity
tbodyacc-mean-x
tbodyacc-mean-y
tbodyacc-mean-z
tbodyacc-std-x
tbodyacc-std-y
tbodyacc-std-z
tgravityacc-mean-x
tgravityacc-mean-y
tgravityacc-mean-z
tgravityacc-std-x
tgravityacc-std-y
tgravityacc-std-z
tbodyaccjerk-mean-x
tbodyaccjerk-mean-y
tbodyaccjerk-mean-z
tbodyaccjerk-std-x
tbodyaccjerk-std-y
tbodyaccjerk-std-z
tbodygyro-mean-x
tbodygyro-mean-y
tbodygyro-mean-z
tbodygyro-std-x
tbodygyro-std-y
tbodygyro-std-z
tbodygyrojerk-mean-x
tbodygyrojerk-mean-y
tbodygyrojerk-mean-z
tbodygyrojerk-std-x
tbodygyrojerk-std-y
tbodygyrojerk-std-z
tbodyaccmag-mean
tbodyaccmag-std
tgravityaccmag-mean
tgravityaccmag-std
tbodyaccjerkmag-mean
tbodyaccjerkmag-std
tbodygyromag-mean
tbodygyromag-std
tbodygyrojerkmag-mean
tbodygyrojerkmag-std
fbodyacc-mean-x
fbodyacc-mean-y
fbodyacc-mean-z
fbodyacc-std-x
fbodyacc-std-y
fbodyacc-std-z
fbodyacc-meanfreq-x
fbodyacc-meanfreq-y
fbodyacc-meanfreq-z
fbodyaccjerk-mean-x
fbodyaccjerk-mean-y
fbodyaccjerk-mean-z
fbodyaccjerk-std-x
fbodyaccjerk-std-y
fbodyaccjerk-std-z
fbodyaccjerk-meanfreq-x
fbodyaccjerk-meanfreq-y
fbodyaccjerk-meanfreq-z
fbodygyro-mean-x
fbodygyro-mean-y
fbodygyro-mean-z
fbodygyro-std-x
fbodygyro-std-y
fbodygyro-std-z
fbodygyro-meanfreq-x
fbodygyro-meanfreq-y
fbodygyro-meanfreq-z
fbodyaccmag-mean
fbodyaccmag-std
fbodyaccmag-meanfreq
fbodybodyaccjerkmag-mean
fbodybodyaccjerkmag-std
fbodybodyaccjerkmag-meanfreq
fbodybodygyromag-mean
fbodybodygyromag-std
fbodybodygyromag-meanfreq
fbodybodygyrojerkmag-mean
fbodybodygyrojerkmag-std
fbodybodygyrojerkmag-meanfreq
angletbodyaccmeangravity
angletbodyaccjerkmeangravitymean
angletbodygyromeangravitymean
angletbodygyrojerkmeangravitymean
anglexgravitymean
angleygravitymean
anglezgravitymean

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

### tbodyaccmeanxyz, tbodyaccstdxyz : 
Subject-wise and activity-wise mean's and Subject-wise and activity-wise mean of the standard deviations for
the body linear acceleration (time domain) signals.

### tgravityaccmeanxyz, tgravityaccstdxyz: 
Similarly averaged means and standard deviations of the gravity acceleration (time domain) signals.

### tbodygyromeanx, tbodygyrostdx :
Subject-wise and activity-wise mean's and Subject-wise and activity-wise mean of the standard deviations for
the body angular acceleration (time domain) signals.

### tbodyaccjerkmeanx, tbodyaccjerkstdxyz : 
Similarly averaged means and standard deviations of the Jerk signals  
(time derived from ithe linear acceleration) signals.

### tbodyaccmagmean, tbodyaccmagstd
Subject-wise and activity-wise mean's and Subject-wise and activity-wise mean of the standard deviations for
the magintude of the three-dimensional signals calculated using the Euclidean norm.

### tbodygyrojerkmeanx, tbodygyrojerkstdx :
Similarly averaged means and standard deviations of the Jerk signals  
(time derived from the angular acceleration) signals.

The "f" (as against "t") prefix variables are the Fast Fourier Transform (FFT) of the respective signals.



## Complete list of Variables in the tidy dataset


subject
activity
tbodyaccmeanx
tbodyaccmeany
tbodyaccmeanz
tbodyaccstdx
tbodyaccstdy
tbodyaccstdz
tgravityaccmeanx
tgravityaccmeany
tgravityaccmeanz
tgravityaccstdx
tgravityaccstdy
tgravityaccstdz
tbodyaccjerkmeanx
tbodyaccjerkmeany
tbodyaccjerkmeanz
tbodyaccjerkstdx
tbodyaccjerkstdy
tbodyaccjerkstdz
tbodygyromeanx
tbodygyromeany
tbodygyromeanz
tbodygyrostdx
tbodygyrostdy
tbodygyrostdz
tbodygyrojerkmeanx
tbodygyrojerkmeany
tbodygyrojerkmeanz
tbodygyrojerkstdx
tbodygyrojerkstdy
tbodygyrojerkstdz
tbodyaccmagmean
tbodyaccmagstd
tgravityaccmagmean
tgravityaccmagstd
tbodyaccjerkmagmean
tbodyaccjerkmagstd
tbodygyromagmean
tbodygyromagstd
tbodygyrojerkmagmean
tbodygyrojerkmagstd
fbodyaccmeanx
fbodyaccmeany
fbodyaccmeanz
fbodyaccstdx
fbodyaccstdy
fbodyaccstdz
fbodyaccmeanfreqx
fbodyaccmeanfreqy
fbodyaccmeanfreqz
fbodyaccjerkmeanx
fbodyaccjerkmeany
fbodyaccjerkmeanz
fbodyaccjerkstdx
fbodyaccjerkstdy
fbodyaccjerkstdz
fbodyaccjerkmeanfreqx
fbodyaccjerkmeanfreqy
fbodyaccjerkmeanfreqz
fbodygyromeanx
fbodygyromeany
fbodygyromeanz
fbodygyrostdx
fbodygyrostdy
fbodygyrostdz
fbodygyromeanfreqx
fbodygyromeanfreqy
fbodygyromeanfreqz
fbodyaccmagmean
fbodyaccmagstd
fbodyaccmagmeanfreq
fbodybodyaccjerkmagmean
fbodybodyaccjerkmagstd
fbodybodyaccjerkmagmeanfreq
fbodybodygyromagmean
fbodybodygyromagstd
fbodybodygyromagmeanfreq
fbodybodygyrojerkmagmean
fbodybodygyrojerkmagstd
fbodybodygyrojerkmagmeanfreq
angletbodyaccmeangravity
angletbodyaccjerkmeangravitymean
angletbodygyromeangravitymean
angletbodygyrojerkmeangravitymean
anglexgravitymean
angleygravitymean
anglezgravitymean

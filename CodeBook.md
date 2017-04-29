#                           Code Book - UCI HAR Dataset
1.  Activity    
         . WALKING
 		 . WALKING_UPSTAIRS
         . WALKING_DOWNSTAIRS
         . SITTING
         . STANDING
         . LAYING

2.  Subject   
	     . subject are candidates who were part of the experiment.
	     1
	     2
	     3
	     4
	     ..
	     30


The features selected below come from the accelerometer and gyroscope 3-axial raw signals 
tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were 
captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a
 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
 Similarly, the acceleration signal was then separated into body and gravity acceleration 
 signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter 
 with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to 
obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these 
three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, 
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, 
fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.	

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

		
3.  tBodyAcc-mean()-X
4.  tBodyAcc-mean()-Y
5.  tBodyAcc-mean()-Z
6.  tBodyAcc-std()-X
7.  tBodyAcc-std()-Y
8.  tBodyAcc-std()-Z
9.  tGravityAcc-mean()-X
10. tGravityAcc-mean()-Y
11. tGravityAcc-mean()-Z
12. tGravityAcc-std()-X 
13. tGravityAcc-std()-Y
14. tGravityAcc-std()-Z 
15. tBodyAccJerk-mean()-X             
16. tBodyAccJerk-mean()-Y
17. tBodyAccJerk-mean()-Z
18. tBodyAccJerk-std()-X
19. tBodyAccJerk-std()-Y
20. tBodyAccJerk-std()-Z
21. tBodyGyro-mean()-X
22. tBodyGyro-mean()-Y
23. tBodyGyro-mean()-Z
24. tBodyGyro-std()-X
25. tBodyGyro-std()-Y
26. tBodyGyro-std()-Z
27. tBodyGyroJerk-mean()-X 
28. tBodyGyroJerk-mean()-Y
29. tBodyGyroJerk-mean()-Z
30. tBodyGyroJerk-std()-X
31. tBodyGyroJerk-std()-Y
32. tBodyGyroJerk-std()-Z
33. tBodyAccMag-mean()
34. tBodyAccMag-std()  
35. tGravityAccMag-mean()
36. tGravityAccMag-std()
37. tBodyAccJerkMag-mean()
38. tBodyAccJerkMag-std()
39. tBodyGyroMag-mean()
40. tBodyGyroMag-std()
41. tBodyGyroJerkMag-mean()
42. tBodyGyroJerkMag-std()
43. fBodyAcc-mean()-X
44. fBodyAcc-mean()-Y
45. fBodyAcc-mean()-Z
46. fBodyAcc-std()-X
47. fBodyAcc-std()-Y
48. fBodyAcc-std()-Z 
49. fBodyAcc-std()-Z 
50. fBodyAccJerk-mean()-X
51. fBodyAccJerk-mean()-Y
52. fBodyAccJerk-std()-X
53. fBodyAccJerk-std()-Y
54. fBodyAccJerk-std()-Z
55. fBodyGyro-mean()-X 
56. fBodyGyro-mean()-Y
57. fBodyGyro-mean()-Z
58. fBodyGyro-std()-X
59. fBodyGyro-std()-Y
60. fBodyGyro-std()-Z
61. fBodyAccMag-mean()
62. fBodyAccMag-std()
63. fBodyBodyAccJerkMag-mean() 
64. fBodyBodyAccJerkMag-std()
65. fBodyBodyGyroMag-mean()
66. fBodyBodyGyroMag-std()
67. fBodyBodyGyroJerkMag-mean()
68. fBodyBodyGyroJerkMag-std()


==================================================================================

*Step 1 : Download the data from the mentioned web link and store it.
*Step 2 : Load test and train datas from all txt files in R and check the dimensions to 
have a idea of observations and variables.Data frames created are xTest,yTest,xTrain,yTrain
subjectTest,subjectTrain
*Step 3: Load the features ,activity_label txt into data frame in R.Data frames created are featureList,activityLabels
*Step 4 : Assign column names for yTest and yTrain with "Activity" such that unique rows can be created before merging.
*Step 5 : Assign column names for subjectTest and subjectTrain with "Subject" such that unique rows can be before merging.
*Step 6: Column bind (xTest , yTest & subjectTest) into Data frame DF1.
*Step 7: Column bind (xTrain , yTrain & subjectTrain) into Data frame DF2.
*Step 8: Merge both DF1, DF2 giving mergedDataset of dim - 10299 observations and 563 variables.
*Step 9: Extract only the measurements on mean and standard deviation (std) on featureList 
using grep and regular expression so that index can be captured in index variable and the values are in variable called labels.
labels got 66 variable names.
*Step 10: Subset the mergedDataset with the index obtained from step 9,and remaining two variables(Activity & Subject).
*Step 11: Sort the data frame obtained from step 10 and store in sortedDataset.
*Step 12: Merge sortedDataset and activityLabels so as to give descriptive activity names to 
name the activities in the data set and store in newDataset.
*Step 13: subsetting the newDataset with required columns and assigning the column names with labels ,"Activity" and "Subject" 
and create a labelDataset which is the final tidy data.(Step 4 of assignment question).
*Step 14: Create a new tidyDataset using group by on Activity and Subject.
*Step 15: Summarise each with mean function to obtain the  outputDataset with 180 observations and 68 variables.(Step 5 of assignment question)

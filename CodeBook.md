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

Mean: Mean value
Std: Standard deviation

		
3.  tBodyAccMean.X
4.  tBodyAccMean.Y
5.  tBodyAccMean.Z
6.  tBodyAccStd.X
7.  tBodyAccStd.Y
8.  tBodyAccStd.Z
9.  tGravityAccMean.X
10. tGravityAccMean.Y
11. tGravityAccMean.Z
12. tGravityAccStd.X 
13. tGravityAccStd.Y
14. tGravityAccStd.Z 
15. tBodyAccJerkMean.X             
16. tBodyAccJerkMean.Y
17. tBodyAccJerkMean.Z
18. tBodyAccJerkStd.X
19. tBodyAccJerkStd.Y
20. tBodyAccJerkStd.Z
21. tBodyGyroMean.X
22. tBodyGyroMean.Y
23. tBodyGyroMean.Z
24. tBodyGyroStd.X
25. tBodyGyroStd.Y
26. tBodyGyroStd.Z
27. tBodyGyroJerkMean.X 
28. tBodyGyroJerkMean.Y
29. tBodyGyroJerkMean.Z
30. tBodyGyroJerkStd.X
31. tBodyGyroJerkStd.Y
32. tBodyGyroJerkStd.Z
33. tBodyAccMagMean
34. tBodyAccMagStd  
35. tGravityAccMagMean
36. tGravityAccMagStd 
37. tBodyAccJerkMagMean
38. tBodyAccJerkMagStd 
39. tBodyGyroMagMean
40. tBodyGyroMagStd 
41. tBodyGyroJerkMagMean
42. tBodyGyroJerkMagMean
43. fBodyAccMean.X
44. fBodyAccMean.Y
45. fBodyAccMean.Z
46. fBodyAccStd.X
47. fBodyAccStd.Y
48. fBodyAccStd.Z 
49. fBodyAccJerkMean.X
50. fBodyAccJerkMean.Y
51. fBodyAccJerkMean.Z
52. fBodyAccJerkStd.X
53. fBodyAccJerkStd.Y
54. fBodyAccJerkStd.Z
55. fBodyGyroMean.X 
56. fBodyGyroMean.Y
57. fBodyGyroMean.Z
58. fBodyGyroStd.X
59. fBodyGyroStd.Y
60. fBodyGyroStd.Z
61. fBodyAccMagMean
62. fBodyAccMagStd
63. fBodyBodyAccJerkMagMean
64. fBodyBodyAccJerkMagStd
65. fBodyBodyGyroMagMean
66. fBodyBodyGyroMagStd
67. fBodyBodyGyroJerkMagMean
68. fBodyBodyGyroJerkMagStd


### Analysis Steps

- Step 1 : Download the data from the mentioned web link and store it in your working directory.
- Step 2 : Load test and train datas from all txt files in R and check the dimensions to 
have a idea of observations and variables.Data frames created are xTest,yTest,xTrain,yTrain
subjectTest,subjectTrain
- Step 3: Load the features ,activity_label txt into data frame in R.Data frames created are featureList,activityLabels
- Step 4 : Assign column names for yTest and yTrain with "Activity" such that unique rows can be created before merging.
- Step 5 : Assign column names for subjectTest and subjectTrain with "Subject" such that unique rows can be before merging.
- Step 6: Column bind (xTest , yTest & subjectTest) into Data frame DF1.
- Step 7: Column bind (xTrain , yTrain & subjectTrain) into Data frame DF2.
- Step 8: Merge both DF1, DF2 giving mergedDataset of dim - 10299 observations and 563 variables.
- Step 9: Extract only the measurements on mean and standard deviation (std) on featureList 
using grep and regular expression so that index can be captured in index variable and the values are in variable called labels.
labels got 66 variable names.
- Step 10: Subset the mergedDataset with the index obtained from step 9,and remaining two variables(Activity & Subject).
- Step 11: Sort the data frame obtained from step 10 and store in sortedDataset.
- Step 12: Merge sortedDataset and activityLabels so as to give descriptive activity names to 
name the activities in the data set and store in newDataset.
- Step 13: subsetting the newDataset with required columns and assigning the column names with labels ,"Activity" and "Subject" 
and create a labelDataset which is the final tidy data.(Step 4 of assignment question).
- Step 14: Create a new tidyDataset using group by on Activity and Subject.
- Step 15: Summarise each with mean function to obtain the  outputDataset with 180 observations and 68 variables.(Step 5 of assignment question)

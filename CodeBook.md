#Clean Data Project CodeBook

##Data Source
The raw data for the running of the provided R script can be found at the following url: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This data was collected as a part of Human Activity Recognition from 30 volunteers from Samsung Galaxy II concerning their daily actions, using a wrist mounted-Samsung Galaxy II smartphone.

##Process of the Function

1. Open required package.
2. The raw data is downloaded from the online database into the working directory.
3. The zipped file is unzipped for futher analyses.
4. Load the different labels used to describe activities and the features that are measured.
5. Extract mean and standard deviations of the data.
6. Load the relatvant data sets.
7. Merge the data sets, with labels.
8. Convert subject/Activity combinations into factors.
9. Write Tidy data set to produce tidy_data.txt (included in repository.)

##Activities
1. WALKING: Subject walking during session.
2. WALKING_UPSTAIRS: Subject walking up a set of stairs during session.
3. WALKING_DOWNSTAIRS: Subject walking down a set of stairs during the session.
4. SITTING: Subject was sitting during the session.
5. STANDING: Subject was stading during session.
6. LAYING: Subject was laying down during the session.

## Measurements taken (AKA "Features" utilized)
### t prefix denotes time
### f prefix denotes "frequency domain signals"
### X,Y,Z suffixes denotes axis of movement measured. 
####Further explaination of the measurements found in features_info.txt file found in raw data folder.


1.tBodyAccMeanX
2. tBodyAccMeanY 
3. tBodyAccMeanZ
4. tBodyAccStdX
5. tBodyAccStdY
6. tBodyAccStdZ
7. tGravityAccMeanX
8. tGravityAccMeanY
9. tGravityAccMeanZ
10. tGravityAccStdX
11. tGravityAccStdY
12. tGravityAccStdZ
13. tBodyAccJerkMeanX
14. tBodyAccJerkMeanY
15. tBodyAccJerkMeanZ
16. tBodyAccJerkStdX
17. tBodyAccJerkStdY
18. tBodyAccJerkStdZ
19. tBodyGyroMeanX
20. tBodyGyroMeanY
21. tBodyGyroMeanZ
22. tBodyGyroStdX
23. tBodyGyroStdY
24. tBodyGyroStdZ
25. tBodyGyroJerkMeanX
26. tBodyGyroJerkMeanY
27. tBodyGyroJerkMeanZ
28. tBodyGyroJerkStdX
29. tBodyGyroJerkStdY
30. tBodyGyroJerkStdZ
31. tBodyAccMagMean
32. tBodyAccMagStd
33. tGravityAccMagMean
34. tGravityAccMagStd
35. tBodyAccJerkMagMean
36. tBodyAccJerkMagStd
37. tBodyGyroMagMean
38. tBodyGyroMagStd
39. tBodyGyroJerkMagMean
40. tBodyGyroJerkMagStd
41. fBodyAccMeanX
42. fBodyAccMeanY
43. fBodyAccMeanZ
44. fBodyAccStdX
45. fBodyAccStdY
46. fBodyAccStdZ
47. fBodyAccMeanFreqX
48. fBodyAccMeanFreqY
49. fBodyAccMeanFreqZ
50. fBodyAccJerkMeanX
51. fBodyAccJerkMeanY
52. fBodyAccJerkMeanZ
53. fBodyAccJerkStdX
54. fBodyAccJerkStdY
55. fBodyAccJerkStdZ
56. fBodyAccJerkMeanFreqX
57. fBodyAccJerkMeanFreqY
58. fBodyAccJerkMeanFreqZ
59. fBodyGyroMeanX
60. fBodyGyroMeanY
61. fBodyGyroMeanZ
62. fBodyGyroStdX
63. fBodyGyroStdY
64. fBodyGyroStdZ
65. fBodyGyroMeanFreqX
66. fBodyGyroMeanFreqY
67. fBodyGyroMeanFreqZ
68. fBodyAccMagMean
69. fBodyAccMagStd
70. fBodyAccMagMeanFreq
71. fBodyBodyAccJerkMagMean
72. fBodyBodyAccJerkMagStd
73. fBodyBodyAccJerkMagMeanFreq
74. fBodyBodyGyroMagMean
75. fBodyBodyGyroMagStd
76. fBodyBodyGyroMagMeanFreq
77. fBodyBodyGyroJerkMagMean
78. fBodyBodyGyroJerkMagStd
79. fBodyBodyGyroJerkMagMeanFreq

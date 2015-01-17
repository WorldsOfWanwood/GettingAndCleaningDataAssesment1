# GettingAndCleaningDataAssesment1

Running run_analysis.R from the directory containing the "UCI HAR Dataset" file will produce a file called "CleanData.txt" which contains only variables related to the mean or standard deviation of a measurement.

The columns of CleanData give for each variable the mean value of that variable for each activity for each subject.

Variable names were edited to be slightly more descriptive, but to remain short (for easy reading of summaries and tables of data). An unannotated list of variables names can be found in vnames.txt. For detailed variable meanings please see codebook.

run_analysis.R first loads all of the relevant tables from the Samsung data, then combines the test and train sets for Subject, x, and y to create SubjectAll, xAll, and yAll. It removes the brackets in the titles for xAll (found in features), as R does not allow brackets in variables. Descriptive names are given to activites (in the yAll frame), and the SubjectAll, xAll, and yAll frames are combined to give one large frame called "data".  

The "grep" function is used to find column names containing the word "mean" or "std", and the columns in that list as well as the activity and subject columns are combined into a new data frame "dataClean". Lastly, ddply is used to split observations by activity and subject, and find the column mean for each of the variables in this split to produce the final data frame "dataFinal", which is output to a txt file "CleanData.txt"
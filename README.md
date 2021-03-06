cleaning_data
=============

This project is to complete the assignment for the Getting and Cleaning Data course 

##Files
###Input  
Datasets obtained from the course project instruction page delivered in a .zip file.
 - **y_train.txt:** Dataset which details the training activities
 - **x_train.txt:** Dataset of the training measurements
 - **y_test.txt:** Dataset of the testing activities
 - **x_test.txt:** Dataset of the testing measurements
 - **features.txt:** Column number and column header of the x_test and x_train datasets

###Derived
 - **features.short.txt:** Data set of the column numbers and column headers of the subset of variables used to construct the the tidyMean dataset, edited from features.txt  

###Output
  - **tidyMean.txt:** Dataset of the average measurements of the data, by Activity, for each variable

##Process

The most ambiguous issue for this assignment was to determine which of the variables to us in the truncated data set. Looking at the variable names I chose those variables that had a in its name either `*mean()` or `*std()`. These, it seemed to me, to be derived mean and standard deviation numbers. These are the columns in the data set I extracted for further analysis. I used notepad++ in Windows to review the features.txt file and subsetted the chosen variables into the derived file features.short.txt. I used both columns (column number and variable name) in this new file. I then edited out the `(` and `)` from the name to clean it up.

The steps in R taken to complete the project are:

1. Read in files

2. Combine activity files with results files using cbind

3. Merge the two combined files using rbind

4. Clean up the variable headers

5. Select the appropriate variables into new dataframe.

6. Expand the activity descriptions from 1:6 to Walking, Walking Upstairs, Walking Downstairs, Standing, Sitting and Laying.

7. Add the modified column names to the data set

8. Create the tidy dataset of the averages of the variables by Activity

9. Clean up the Activity names by adding -Mean to each so a casual viewer will known that it is derived data, not the sourse data

10. Output the dataset to tidyMean.txt

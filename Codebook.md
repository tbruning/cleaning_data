Getting and Cleaning Data

This document describes the process used to obtain and clean up the data for the Coursera
Getting and Cleaning Data course project.
The code is well documented and since it is subject to change without this document possibly being
updated, this is an overview of the process. Please see the code for detailed documentation
on what is going on there.

##Files
* **Input** Datasets obtained from the course project instruction  page delivered in a .zip file.
  * y_train.txt: Dataset which details the training activities
  * x_train.txt: Dataset of the training measurements
  * y_test.txt:  Dataset of the testing activities
  * x_test.txt:  Dataset of the testing measurements
  * features.txt: Column number and column header of the x_test and x_train datasets
* **Derived**
  * features.short.txt: Data set of the column numbers and column headers of the subset of 
  variables used to construct the the tidyMean dataset, edited from features.txt
* **Output**
  * tidyMean.txt: Dataset of the average measurements of the data, by Activity, for each
  variable
  
##Process
The most ambiguous issue for this assignment was to determine which of the variables to us in the truncated 
data set.  Looking at the variable names I chose those variables that had a name that had in its name either *mean()
or *std().  These, it seemed to me, to be derived mean and standard deviation numbers.  These are the columns in the data set I extracted for further analysis.  I used notepad++ in Windows to review the features.txt file and subsetted the chosen variables into the derived file features.short.txt.  
I used both columns (column number and variable name) in this new file. I then edited out the `(` and `)` from the name to clean it up.

Getting and Cleaning Data

This document describes that process used to obtain and clean up the data for the Coursera
Getting and Cleaning Data course project.
The code is well documented and since it is subject to change without this document possibly being
updated, this is an overview of the process. Please see the code for detailed documentation
on what is going on there.

##Files
* Input
Datasets obtained from the course project instruction  page delivered in a .zip file.
  *y_train.txt: Dataset which details the training activities
  *x_train.txt: Dataset of the training measurements
  *y_test.txt:  Dataset of the testing activities
  *x_test.txt:  Dataset of the testing measurements
  features.txt: Column number and column header of the x_test and x_train datasets
* Derived
  *features.short.txt: Data set of the column numbers and column headers of the subset of 
  variables used to construct the the tidyMean dataset
* Output
  * tidyMean.txt: Dataset of the average measurements of the data, by Activity, for each
  variable
  
##Process
 

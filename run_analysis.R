## This r program uses data sets provided by the
## instructor and joins and cleans up the data.
## Specifically it selects specific variables (columns)
## It also provides  a clearer description of both the 
## variables (columns), and observations (rows).
## This data set is used as input to the second R program
## (tidyMean).

## Read in Data
yTrain <- read.table("y_train.txt", header = FALSE)
xTrain <- read.table("x_train.txt", header = FALSE)
yTest <- read.table("y_test.txt", header = FALSE)
xTest <- read.table("x_test.txt", header = FALSE)
features <- read.table("features.short", header = FALSE)

## Combine Activity file to data file
test.df <- data.frame(cbind(yTest,xTest))
test.df$V1 <- as.factor(test.df$V1)
train.df <- data.frame(cbind(yTrain,xTrain))
train.df$V1 <- as.factor(train.df$V1)

## Join the two datasets
comb.df <- do.call(rbind, list(test.df, train.df))

## Clean up column headers
features$V2 <- gsub("\\(\\)","",features$V2)
features$V1 <- features$V1 +1

##Select appropriate columns
comb.df1 <- comb.df[,features$V1]

## Expand Activities description
comb.df1$V1 <- gsub("1","Walking", comb.df1$V1)
comb.df1$V1 <- gsub("2","UpStairs", comb.df1$V1)
comb.df1$V1 <- gsub("3","DownStairs", comb.df1$V1)
comb.df1$V1 <- gsub("4","Sitting", comb.df1$V1)
comb.df1$V1 <- gsub("5","Standing", comb.df1$V1)
comb.df1$V1 <- gsub("6","Laying", comb.df1$V1)

## Add Column Names to data set
colnames(comb.df1) <- features$V2
## create tidy data set of summary data
comb.df1 <- cast(melt(inputData),Activity ~ variable, mean)

## Clean up Labels (So viewers will know it is summary data)
meanData$Activity <- meanData$Activity + " (Mean)"
meanData$Activity[1] <- "DownStairs - Mean"
meanData$Activity[2] <- "Laying - Mean"
meanData$Activity[3] <- "Sitting - Mean"
meanData$Activity[4] <- "Standing - Mean"
meanData$Activity[5] <- "UpStairs - Mean"
write.table(comb.df1, file = "tidyMean.txt", row.names = FALSE)

featureList <- read.table("./features.txt",stringsAsFactors = FALSE)
activityLabels <- read.table("./activity_labels.txt",stringsAsFactors = FALSE)
subjectTest <- read.table("./test/subject_test.txt",stringsAsFactors = FALSE)
xTest <- read.table("./test/X_test.txt",stringsAsFactors = FALSE)
yTest <- read.table("./test/y_test.txt",stringsAsFactors = FALSE)

subjectTrain <- read.table("./train/subject_train.txt",stringsAsFactors = FALSE)
xTrain <- read.table("./train/X_train.txt",stringsAsFactors = FALSE)
yTrain <- read.table("./train/y_train.txt",stringsAsFactors = FALSE)

colnames(yTest) <- c("Activity")
colnames(yTrain) <- c("Activity")
colnames(subjectTest) <- c("Subject")
colnames(subjectTrain) <- c("Subject")
DF1 <- cbind(X_test,yTest)
DF1 <- cbind(DF1,subjectTest)


DF2 <- cbind(xTrain,yTrain)
DF2 <- cbind(DF2,subjectTrain)

mergeDataset <- merge(DF1,DF2,all=TRUE)

labels <- grep("(+mean+[()]+)|(std)",featureList$V2,value = TRUE)

#table(grepl("(+mean+[()]+)|(std)",featureList$V2)) 

index <-grep("(+mean+[()]+)|(std)",featureList$V2) 
finalDataset <-mergeDataset[,c(index,562,563)]
sortedDataset <- arrange(finalDataset,Activity)
newDataset <- merge(sortedDataset,activityLabels,by.x="Activity",by.y = "V1")
labelDataset <- newDataset[,-1]
colnames(labelDataset) <- c(labels,"Subject","Activity")
tidyDataset <- group_by(labelDataset,Activity,Subject)
outputDataset <- summarise_each(tidyDataset,funs(mean))

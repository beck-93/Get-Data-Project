# Get-Data-Project
#here is the read me

#unzip files
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./samsung")) {dir.create("./samsung")}
download.file(url, destfile = "./samsung/samsung_data.zip", method = "curl")
unzip(zipfile = "./samsung/samsung_data.zip", exdir = "C:/Users/1rebe/OneDrive/Documents/NSG586/rstudio/coursera/Get Data Project")
head(unzip(zipfile = "./samsung/samsung_data.zip", list = TRUE)[["Name"]])
#names in zip folder
# "UCI HAR Dataset/activity_labels.txt"    "UCI HAR Dataset/features.txt"          
# "UCI HAR Dataset/features_info.txt"      "UCI HAR Dataset/README.txt"            
#"UCI HAR Dataset/test/"                  "UCI HAR Dataset/test/Inertial Signals/"

#loading data into workspace using read table
install.packages("readtext")
library(readtext)
activity <- readtext("activity_labels.txt")
testsubjects <- read.table("subject_test.txt")
X_test <- read.table("X_test.txt")
Y_test <- read.table("y_test.txt")
trainsubjects <- read.table("subject_train.txt")
X_train <- read.table("X_train.txt")
Y_train <- read.table("y_train.txt")
features <- read.table("features.txt")

#combine folders into a data frame using cbind
testdf <- cbind(X_text, testsubjects, Y_test)
traindf <- cbind(X_train, trainsubjects, Y_train)

#merge the training and test data sets using dplyr's bind rows function
mergeddf <- bind_rows(traindf, testdf)


#examine the features table to determine which rows contain mean or std using select and filter
library(dplyr)
features %>%
  select(V1, V2) %>%
  filter(grepl(pattern = "mean", tolower(V2)))
features %>%
  select(V1, V2) %>%
  filter(grepl(pattern = "std", tolower(V2)))

#Extracts only the measurements on the mean and standard deviation for each measurement. 
extracteddf <- mergeddf[,c(1,2,3,4,5,6,41,42,43,44,46,81,82,83,84,85,86,121,122,123,124,125,126,161,162,163,164,165,166,201,202,214,215,227,228,240,241,253,254,266,267,269,270,271,268,294,295,296,345,346,347,348,349,350,373,374,375,424,425,427,428,429,452,453,454,503,504,513,516,517,526,529,530,539,542,543,552,555,556,557,558,559,560,561,562,563)]

#Describe the activity names in the data set using the origignal text file
library(plyr)
print(activity$text)

#label the data set with descriptive variable names using plyr's map values function
extracteddf$V1...563 <- mapvalues(extracteddf$V1...563, from = (1:6), to = c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying"))
print(extracteddf$V1...563)

#create a second, independent tidy data set with the average of each variable for each activity and each subject. V1...562 is the subject column and V1...563 is the labelled activity column.
meandat <- extracteddf %>%
  group_by(V1...562, V1...563) %>%
  summarise_all(funs(mean))

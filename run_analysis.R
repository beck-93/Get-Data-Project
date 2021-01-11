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

#loading data into workspace
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


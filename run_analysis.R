#unzip files
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./samsung")) {dir.create("./samsung")}
download.file(url, destfile = "./samsung/samsung_data.zip", method = "curl")
unzip(zipfile = "./samsung/samsung_data.zip", exdir = "C:/Users/1rebe/OneDrive/Documents/NSG586/rstudio/coursera/Get Data Project")
head(unzip(zipfile = "./samsung/samsung_data.zip", list = TRUE)[["Name"]])
path <- "samsung/UCI HAR Dataset/test/"
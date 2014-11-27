fileUrl ="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"

if (!file.exists("./data")) {dir.create("./data")}

if (!file.exists("./data/housing.csv")) {download.file(fileUrl, "./data/housing.csv")}

data <- read.csv("./data/housing.csv")

print(strsplit(names(data),"wgtp")[123])
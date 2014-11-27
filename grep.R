fileUrl ="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"

if (!file.exists("./data")) {dir.create("./data")}

if (!file.exists("./data/GDP.csv")) {download.file(fileUrl, "./data/GDP.csv")}

data <- read.csv("./data/GDP.csv", skip=4, nrows=190)

countryNames <- data[,4]

print(grep("^United",countryNames))
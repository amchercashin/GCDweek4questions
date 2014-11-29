library(dplyr)
fileUrl1 ="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
fileUrl2 ="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"

if (!file.exists("./data")) {dir.create("./data")}

if (!file.exists("./data/GDP.csv")) {download.file(fileUrl1, "./data/GDP.csv")}
if (!file.exists("./data/EDU.csv")) {download.file(fileUrl2, "./data/EDU.csv")}

gdp <- read.csv("./data/GDP.csv", skip=4, nrows=190)
edu <- read.csv("./data/EDU.csv")
data <- inner_join(gdp, edu, by=c("X"="CountryCode"))
print(grep("[Ff]iscal.*[Jj]une",test, value =T))
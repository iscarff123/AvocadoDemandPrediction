
data <- read.csv("avocado.csv")


colnames(data)[c(5,6,7)] <- c("SmallHass","LargeHass","XLHass")

levels(data$region)

write.csv(levels(data$region),"areas.csv")


GEO <- read.csv("Geo_Info.csv")

library(dplyr)
data3 <- left_join(data,GEO)

data3 <- data3[,-1]


TotRev <- data$AveragePrice * data$Total.Volume
TotRevSmallHass <- data$AveragePrice * data$SmallHass
TotRevLargeHass <- data$AveragePrice * data$LargeHass
TotRevXLHass <-  data$AveragePrice * data$XLHass

data4 <- data.frame(data3$Date,data$AveragePrice,data$Total.Volume,
               TotRev,TotRevSmallHass,TotRevLargeHass,TotRevXLHass)
data4 <- data.frame(data4, data3[,c(4:18)])

colnames(data4) <- c("Date","AveragePrice","TotalVolume","TotalRevenue",
                     "TotRevSmallHass","TotRevLargeHass","TotRevXLHass",
                     "SmallHass", "LargeHass", "XLHass", "TotalBags","SmallBags",
                     "LargeBags", "XLBags", "Type", "Year", "Region", "CityUsed",
                     "State", "Country", "Latitude", "Longitude")


write.csv(data4, "AvocadoNew.csv", row.names = F)


d <- read.csv("AvocadoNew.csv")
View(d)
min(data4$Date)


length(levels(GEO$City_Used))









library(ggplot2)
library(scales)
library(extrafont)
loadfonts()


##### USA Conventional Total Volume TS Plots #################

usa.conv.totvol <- read.csv("USA_CONV_TOTVOL_DECOMP.csv")
usa.conv.totvol$Date <- as.Date(usa.conv.totvol$Date)

# Time Series

ggplot(data = usa.conv.totvol, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "red") +
  scale_y_continuous(labels = comma, 
                     breaks = seq(from = 1000000, to = 40000000, by = 5000000)) + 
  theme(plot.subtitle = element_text(size = 16, 
    colour = "white", vjust = 1), plot.caption = element_text(vjust = 1), 
    axis.title = element_text(size = 14, 
        colour = "white"), axis.text = element_text(size = 14, 
        colour = "white"), plot.title = element_text(size = 20, 
        colour = "white"), panel.background = element_rect(fill = "black"), 
    plot.background = element_rect(fill = "black")) +
  labs(title = "Average Total Volume of Conventional Avocados Sold", 
    subtitle = "Across United States") +
  labs(x = "Date (Weekly)", y = "Average Total Volume")


# Trend

ggplot(data = usa.conv.totvol, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "red") +
  geom_line(aes(y=Trend.Cycle.Component), color="yellow", size = 1.5) +
  scale_y_continuous(labels = comma, 
                     breaks = seq(from = 1000000, to = 40000000, by = 5000000)) +
    theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
          plot.caption = element_text(vjust = 1), 
          axis.title = element_text(size = 14, colour = "white"), 
          axis.text = element_text(size = 14, colour = "white"), 
          plot.title = element_text(size = 20, colour = "white"), 
          panel.background = element_rect(fill = "black"), 
          plot.background = element_rect(fill = "black")) + 
    labs(title = "Trend of Average Total Volume of Conventional Avocados Sold", 
         subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Average Total Volume")


# Seasonality

ggplot(data = usa.conv.totvol, aes(x=Date, y=Seasonal.Component)) +
  geom_line(size = 2, color = "red") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Seasonal Component of Average Total Volume of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Seasonal")


# Irregular

ggplot(data = usa.conv.totvol, aes(x=Date, y=Irregular.Component)) +
  geom_line(size = 2, color = "red") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Irregular Component of Average Total Volume of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Irregular")



##### USA Organic Total Volume TS Plots #################

usa.org.totvol <- read.csv("USA_ORG_TOTVOL_DECOMP.csv")
usa.org.totvol$Date <- as.Date(usa.org.totvol$Date)


# Time Series
ggplot(data = usa.org.totvol, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "blue") +
  scale_y_continuous(labels = comma, 
                     breaks = seq(from = 100000, to = 1500000, by = 200000)) + 
  theme(plot.subtitle = element_text(size = 16, 
                                     colour = "white", vjust = 1), 
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"),
        axis.text = element_text(size = 14,
                                 colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) +
  labs(title = "Average Total Volume of Organic Avocados Sold", 
       subtitle = "Across United States") +
  labs(x = "Date (Weekly)", y = "Average Total Volume")



# Trend

ggplot(data = usa.org.totvol, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "blue") +
  geom_line(aes(y=Trend.Cycle.Component), color="yellow", size = 1.5) +
  scale_y_continuous(labels = comma, 
                     breaks = seq(from = 100000, to = 1500000, by = 200000)) +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Trend of Average Total Volume of Organic Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Average Total Volume")



# Seasonality

ggplot(data = usa.org.totvol, aes(x=Date, y=Seasonal.Component)) +
  geom_line(size = 2, color = "blue") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Seasonal Component of Average Total Volume of Organic Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Seasonal")


# Irregular

ggplot(data = usa.org.totvol, aes(x=Date, y=Irregular.Component)) +
  geom_line(size = 2, color = "blue") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Irregular Component of Average Total Volume of Organic Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Irregular")





##### USA Conventional Average Price TS Plots #################


usa.conv.avgprice <- read.csv("USA_CONV_AVGPRICE_DECOMP.csv")
usa.conv.avgprice$Date <- as.Date(usa.conv.avgprice$Date)

# Time Series

ggplot(data = usa.conv.avgprice, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "green") + 
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1), 
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14,colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) +
  labs(title = "Average Price of Conventional Avocados Sold", 
       subtitle = "Across United States") +
  labs(x = "Date (Weekly)", y = "Average Price")


# Trend

ggplot(data = usa.conv.avgprice, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "green") +
  geom_line(aes(y=Trend.Cycle.Component), color="yellow", size = 1.5) +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Trend of Average Price of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Average Price")


# Seasonality

ggplot(data = usa.conv.avgprice, aes(x=Date, y=Seasonal.Component)) +
  geom_line(size = 2, color = "green") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Seasonal Component of Average Price of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Seasonal")


# Irregular

ggplot(data = usa.conv.avgprice, aes(x=Date, y=Irregular.Component)) +
  geom_line(size = 2, color = "green") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Irregular Component of Average Price of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Irregular")



##### USA Conventional LOG(Average Price) TS Plots #################


usa.conv.logavgprice <- read.csv("USA_CONV_LOGAVGPRICE_DECOMP.csv")
usa.conv.logavgprice$Date <- as.Date(usa.conv.logavgprice$Date)

# Time Series

ggplot(data = usa.conv.logavgprice, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "green") + 
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1), 
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14,colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) +
  labs(title = "Log(Average Price) of Conventional Avocados Sold", 
       subtitle = "Across United States") +
  labs(x = "Date (Weekly)", y = "Log(Average Price)")


# Trend

ggplot(data = usa.conv.logavgprice, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "green") +
  geom_line(aes(y=Trend.Cycle.Component), color="yellow", size = 1.5) +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Trend of Log(Average Price) of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Log(Average Price)")


# Seasonality

ggplot(data = usa.conv.logavgprice, aes(x=Date, y=Seasonal.Component)) +
  geom_line(size = 2, color = "green") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Seasonal Component of Log(Average Price) of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Seasonal")


# Irregular

ggplot(data = usa.conv.logavgprice, aes(x=Date, y=Irregular.Component)) +
  geom_line(size = 2, color = "green") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Irregular Component of Log(Average Price) of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Irregular")



##### USA Conventional ARIMAX Forecasts #################


usa.conv.fore <- read.csv("USA_CONV_FORE.csv")
usa.conv.fore$Date <- as.Date(usa.conv.fore$Date)

ggplot(data= usa.conv.fore, aes(x= Date, y= log_totVol)) +
  geom_ribbon(aes(ymin=Lower.95..Confidence.Limit, ymax=Upper.95..Confidence.Limit),
              alpha=0.5, fill="gray60", color = "gray60") +
  geom_point(aes(y=log_totVol), color = "green", size  = 2) +
  geom_line(aes(y=Forecast.for.log_totVol), color = "red", size = 1.5) +
  geom_vline(aes(xintercept = as.Date("2017-03-26")), linetype = "dashed", color = "white",
             size = 1.5) +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Forecast for Log(Total Volume) of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Log(Total Volume)")



##### USA Conventional Total Revenue TS Plots #################

usa.conv.totrev <- read.csv("USA_CONV_TOTREV_DECOMP.csv")
usa.conv.totrev$Date <- as.Date(usa.conv.totrev$Date)

# Time Series

ggplot(data = usa.conv.totrev, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "red") +
  scale_y_continuous(labels = comma, 
                     breaks = seq(from = 13000000, to = 35000000, by = 5000000)) + 
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1), 
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) +
  labs(title = "Total Revenue of Conventional Avocados Sold", 
       subtitle = "Across United States") +
  labs(x = "Date (Weekly)", y = "Total Revenue")


# Trend

ggplot(data = usa.conv.totrev, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "red") +
  geom_line(aes(y=Trend.Cycle.Component), color="yellow", size = 1.5) +
  scale_y_continuous(labels = comma, 
                     breaks = seq(from = 13000000, to = 35000000, by = 5000000)) +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Trend of Total Revenue of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Total Revenue")


# Seasonality

ggplot(data = usa.conv.totrev, aes(x=Date, y=Seasonal.Component)) +
  geom_line(size = 2, color = "red") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Seasonal Component of Total Revenue of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Seasonal")


# Irregular

ggplot(data = usa.conv.totrev, aes(x=Date, y=Irregular.Component)) +
  geom_line(size = 2, color = "red") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Irregular Component of Total Revenue of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Irregular")



##### USA Conventional ARIMA Forecasts #################


usa.conv.logtotrev.fore <- read.csv("USA_CONV_LOGTOTREV_FORE.csv")
usa.conv.logtotrev.fore$Date <- as.Date(usa.conv.logtotrev.fore$Date)

ggplot(data= usa.conv.logtotrev.fore, aes(x= Date, y= log_totRev)) +
  geom_ribbon(aes(ymin=Lower.95..Confidence.Limit, ymax=Upper.95..Confidence.Limit),
              alpha=0.5, fill="gray60", color = "gray60") +
  geom_point(aes(y=log_totRev), color = "green", size  = 2) +
  geom_line(aes(y=Forecast.for.log_totRev), color = "red", size = 1.5) +
  geom_vline(aes(xintercept = as.Date("2017-10-01")), linetype = "dashed", color = "white",
             size = 1.5) +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Forecast for Log(Total Revenue) of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Log(Total Revenue)")




##### USA Organic Total Revenue TS Plots #################

usa.org.totrev <- read.csv("USA_ORG_TOTREV_DECOMP.csv")
usa.org.totrev$Date <- as.Date(usa.org.totrev$Date)

# Time Series

ggplot(data = usa.org.totrev, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "blue") +
  scale_y_continuous(labels = comma, 
                     breaks = seq(from = 450000, to = 2000000, by = 500000)) + 
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1), 
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) +
  labs(title = "Total Revenue of Organic Avocados Sold", 
       subtitle = "Across United States") +
  labs(x = "Date (Weekly)", y = "Total Revenue")


# Trend

ggplot(data = usa.org.totrev, aes(x=Date, y=Original.Series)) +
  geom_line(size = 2, color = "blue") +
  geom_line(aes(y=Trend.Cycle.Component), color="yellow", size = 1.5) +
  scale_y_continuous(labels = comma, 
                     breaks = seq(from = 450000, to = 2000000, by = 500000)) +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Trend of Total Revenue of Organic Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Total Revenue")


# Seasonality

ggplot(data = usa.org.totrev, aes(x=Date, y=Seasonal.Component)) +
  geom_line(size = 2, color = "blue") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Seasonal Component of Total Revenue of Organic Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Seasonal")


# Irregular

ggplot(data = usa.org.totrev, aes(x=Date, y=Irregular.Component)) +
  geom_line(size = 2, color = "blue") +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Irregular Component of Total Revenue of Organic Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Irregular")






##### USA Organic ARIMA Forecasts #################


usa.org.logtotrev.fore <- read.csv("USA_ORG_LOGTOTREV_FORE.csv")
usa.org.logtotrev.fore$Date <- as.Date(usa.org.logtotrev.fore$Date)

ggplot(data= usa.org.logtotrev.fore, aes(x= Date, y= log_totRev)) +
  geom_ribbon(aes(ymin=Lower.95..Confidence.Limit, ymax=Upper.95..Confidence.Limit),
              alpha=0.5, fill="gray60", color = "gray60") +
  geom_point(aes(y=log_totRev), color = "green", size  = 2) +
  geom_line(aes(y=Forecast.for.log_totRev), color = "red", size = 1.5) +
  geom_vline(aes(xintercept = as.Date("2017-10-01")), linetype = "dashed", color = "white",
             size = 1.5) +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Forecast for Log(Total Revenue) of Organic Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Log(Total Revenue)")




##### USA Conventional UCM Forecasts #################

usa.conv.ucm.fore <- read.csv("USA_CONV_UCM_FORE.csv")
usa.conv.ucm.fore$Date <- as.Date(usa.conv.ucm.fore$Date)

ggplot(data= usa.conv.ucm.fore[58:169,], aes(x= Date, y= TotalVolume)) +
  geom_ribbon(aes(ymin=Forecast.Lower.Confidence.Limit, 
                  ymax=Forecast.Upper.Confidence.Limit),
              alpha=0.5, fill="gray60", color = "gray60") +
  geom_point(aes(y=TotalVolume), color = "green", size  = 2) +
  geom_line(aes(y=Series.Forecast), color = "red", size = 1.5) +
  geom_vline(aes(xintercept = as.Date("2017-10-01")), linetype = "dashed", color = "white",
             size = 1.5) +
  scale_y_continuous(labels = comma, 
                     breaks = seq(from = 1000000, to = 40000000, by = 5000000)) +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Forecast for Total Volume of Conventional Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Total Volume")






##### USA Organic UCM Forecasts #################



usa.org.ucm.fore <- read.csv("USA_ORG_UCM_FORE.csv")
usa.org.ucm.fore$Date <- as.Date(usa.org.ucm.fore$Date)

ggplot(data= usa.org.ucm.fore[58:169,], aes(x= Date, y= log_totVol)) +
  geom_ribbon(aes(ymin=Forecast.Lower.Confidence.Limit, 
                  ymax=Forecast.Upper.Confidence.Limit),
              alpha=0.5, fill="gray60", color = "gray60") +
  geom_point(aes(y=log_totVol), color = "green", size  = 2) +
  geom_line(aes(y=Series.Forecast), color = "red", size = 1.5) +
  geom_vline(aes(xintercept = as.Date("2017-10-01")), linetype = "dashed", color = "white",
             size = 1.5) +
  theme(plot.subtitle = element_text(size = 16, colour = "white", vjust = 1),
        plot.caption = element_text(vjust = 1), 
        axis.title = element_text(size = 14, colour = "white"), 
        axis.text = element_text(size = 14, colour = "white"), 
        plot.title = element_text(size = 20, colour = "white"), 
        panel.background = element_rect(fill = "black"), 
        plot.background = element_rect(fill = "black")) + 
  labs(title = "Forecast for Log(Total Volume) of Organic Avocados Sold", 
       subtitle = "Across United States")+
  labs(x = "Date (Weekly)", y = "Log(Total Volume)")









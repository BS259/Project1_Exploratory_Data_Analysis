#First let us read the data into an object, 'power'.
#Before that it is good to take a look at the text file to get an idea about column classes. Also the data contains NA values as '?' strings and data values are seperated by ';'.

power <- read.csv("household_power_consumption.txt", sep = ";", colClasses = c(NA, NA, 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric', 'numeric'), na.strings = '?')
                  
#Let us look at the data.
str(power)

#The first column needs to be converted to a date type and the second one to a time type. Lets merge them for this.
#Creating another column using mutate function of dplyr package.
library(dplyr)

#Remember that we need data from two dates 'Feb 01, 2007' and the next day. So lets filter this data also.
power <- power %>% mutate(Date = as.Date(Date, "%d/%m/%Y")) %>% filter(Date == "2007-02-01" | Date == "2007-02-02") %>% mutate(DateTime = strptime(paste(Date, Time), "%Y-%m-%d %H:%M:%S"))

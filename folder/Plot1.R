png("plot1.png")
hist(power$Global_active_power, col = 'red', main = '', xlab = '', ylab = '', ylim = c(0, 1200))
title(main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)', ylab = 'Frequency', cex.main = .9, cex.lab = .75, cex.axis = .5)
dev.off()
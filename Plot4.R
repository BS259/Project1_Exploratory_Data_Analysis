png("plot4.png")
par(mfrow = c(2, 2))
plot(power$DateTime, power$Global_active_power, type = 'n', xlab = '', ylab = 'Global Active Power', main = '', cex.axis = .6, cex.lab = .6)
lines(power$DateTime, power$Global_active_power)

plot(power$DateTime, power$Voltage, type = 'n', xlab = 'datetime', ylab = 'Voltage', main = '', cex.lab = .6, cex.axis = .6)
lines(power$DateTime, power$Voltage)

plot(power$DateTime, power$Sub_metering_1, type = 'n', xlab = '', ylab = 'Energy Sub metering', main = '', cex.lab = .6, cex.axis = .6)
lines(power$DateTime, power$Sub_metering_1, col = 'black')
lines(power$DateTime, power$Sub_metering_2, col = 'red')
lines(power$DateTime, power$Sub_metering_3, col = 'blue')
legend('topright', bty = 'n', cex = .8, legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty = c(1, 1, 1), col = c('black', 'red', 'blue'))

plot(power$DateTime, power$Global_reactive_power, type = 'n', xlab = 'datetime', ylab = 'Global_reactive_power', cex.axis = .6, cex.lab = .6, main = '')
lines(power$DateTime, power$Global_reactive_power)
dev.off()

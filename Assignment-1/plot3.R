source("utilities_code.R")

dataset_time = return_dataset()
household_data = dataset_time[[1]]
date_time = dataset_time[[2]]

png(file = "plot3.png",width = 480, height = 480)
par(mfrow = c(1,1))
plot(date_time, household_data$Sub_metering_1, type = "n", ylab = "Energy Sub Metering", xlab = "", main = "Energy Sub Metering Over Time")
lines(date_time, household_data$Sub_metering_1, col = "black")
lines(date_time, household_data$Sub_metering_2, col = "red")
lines(date_time, household_data$Sub_metering_3, col = "blue")
legend("topright", pch = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()
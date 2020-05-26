source("utilities_code.R")

dataset_time = return_dataset()
household_data = dataset_time[[1]]
date_time = dataset_time[[2]]


png(file = "plot2.png",width = 480, height = 480)
par(mfrow = c(1,1))
plot(date_time, household_data$Global_active_power, type = "l", ylab = "Global Active Power(kilowatts)", xlab = "datetime")
title(main = "Global Active Power Over Time")
dev.off()
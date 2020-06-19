source("utilities_code.R")
library(ggplot2)

dataset_list = return_dataset()

summary_pc = dataset_list$summary
class_code = dataset_list$class_code

png(filename = "plot3.png")
par(mfrow = c(1,1))
baltimore_pm = summary_pc %>% filter(fips == "24510") %>% select(year, Emissions, type)
type_data = aggregate(Emissions ~ year + type, baltimore_pm, sum)
g <- ggplot(data = type_data, aes(year, Emissions,col = type))
g+geom_line() + labs(x = "Year", y = "Emissions") + ggtitle("Total Emissions across different types in Baltimore")
dev.off()

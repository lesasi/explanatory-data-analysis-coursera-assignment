source("utilities_code.R")

dataset_list = return_dataset()

summary_pc = dataset_list$summary
class_code = dataset_list$class_code


# baltimore fips = 24510
baltimore_pm = summary_pc %>% filter(fips == "24510") %>% select(Emissions, year)
baltimore_pm_sum = tapply(baltimore_pm$Emissions, baltimore_pm$year, sum)

cols = brewer.pal(length(unique(baltimore_pm$year)), "Set1")

png(filename = "plot2.png")
par(mfrow = c(1,1))
barplot(baltimore_pm_sum, col = cols)
title(main = "Total Emissions of PM2.5 in Baltimore", xlab = "Year", ylab = "Emissions")
dev.off()
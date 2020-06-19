source("utilities_code.R")

dataset_list = return_dataset()

summary_pc = dataset_list$summary
class_code = dataset_list$class_code

sum_total_pc = tapply(summary_pc$Emissions, summary_pc$year, sum)
cols = brewer.pal(length(unique(summary_pc$year)), "Set1")

png(filename = "plot1.png")
par(mfrow = c(1,1))
barplot(sum_total_pc, main = "Total Emissions of PM2.5 in the US", xlab = "Year", ylab = "Emissions", col = cols)
dev.off()
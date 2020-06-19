source("utilities_code.R")

dataset_list = return_dataset()

summary_pc = dataset_list$summary
class_code = dataset_list$class_code

l_vector = grep("[Cc]oal", class_code$Short.Name)
coal_class_code = class_code[l_vector,]$SCC

coal_pm25 = summary_pc %>% filter(SCC %in% coal_class_code) %>% select(year, Emissions)

sum_coal_pm25 = data.frame(x = unique(coal_pm25$year),y = tapply(coal_pm25$Emissions, coal_pm25$year, sum))

png(filename = "plot4.png")
par(mfrow = c(1,1))
plot(sum_coal_pm25, main = "Emission from coal-based sources",
     xlab = "Year", ylab = "Emissions", type = "l", lwd = 2)
points(sum_coal_pm25, pch = 20, cex = 3, col = unique(coal_pm25$year))
legend("bottomleft", pch = 20, col = unique(coal_pm25$year), legend = unique(coal_pm25$year))
dev.off()

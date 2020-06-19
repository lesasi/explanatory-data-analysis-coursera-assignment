source("utilities_code.R")

dataset_list = return_dataset()

summary_pc = dataset_list$summary
class_code = dataset_list$class_code

vehicle_indices = grep("Vehicle",class_code$SCC.Level.Two)
scc_vehicles = class_code[vehicle_indices,]$SCC
baltimore_pm_vehicle = summary_pc %>% filter(fips == "24510", SCC %in% scc_vehicles) %>% select(year, Emissions)

baltimore_data = data.frame(x = unique(baltimore_pm_vehicle$year),
                           y = tapply(baltimore_pm_vehicle$Emissions, baltimore_pm_vehicle$year, sum))

png(filename = "plot5.png")
par(mfrow = c(1,1))
plot(baltimore_data, main = "Emission from vehicle sources in Baltimore",
     xlab = "Year", ylab = "Emissions", type = "l", lwd = 2)
points(baltimore_data, pch = 20, cex = 3, col = unique(baltimore_pm_vehicle$year))
legend("bottomleft", pch = 20, col = unique(coal_pm25$year), legend = unique(coal_pm25$year))
dev.off()
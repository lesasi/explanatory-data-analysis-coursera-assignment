source("utilities_code.R")

dataset_list = return_dataset()

summary_pc = dataset_list$summary
class_code = dataset_list$class_code

vehicle_indices = grep("[Vv]ehicle",class_code$SCC.Level.Two)
scc_vehicles = class_code[vehicle_indices,]$SCC
baltimore_pm_vehicle = summary_pc %>% filter(fips == "24510", SCC %in% scc_vehicles) %>% select(year, Emissions)
la_county_pm_vehicle = summary_pc %>% filter(fips == "06037", SCC %in% scc_vehicles) %>% select(year, Emissions)

png(filename = "plot6.png")
par(mfrow = c(1,2))
barplot(tapply(baltimore_pm_vehicle$Emissions, baltimore_pm_vehicle$year, sum), 
        col = unique(baltimore_pm_vehicle$year),
        main = "Emission in Baltimore",xlab = "Year", ylab = "Emissions")
barplot(tapply(la_county_pm_vehicle$Emissions, la_county_pm_vehicle$year, sum), 
        col = unique(la_county_pm_vehicle$year),
        main = "Emission in LA County",xlab = "Year", ylab = "Emissions")
dev.off()
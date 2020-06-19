##############################
# NOTE: This is source code used by the main scripts to extract the dataset
library(dplyr)
library(RColorBrewer)

return_dataset <- function(){
  file1 = "dataset/summarySCC_PM25.rds"
  file2 = "dataset/Source_Classification_Code.rds"
  
  ptm <- proc.time()
  summary = readRDS(file1)
  time_taken = proc.time() - ptm
  cat(paste0("Loading summary took ",time_taken[1]," seconds\n"))
  
  ptm <- proc.time()
  class_code = readRDS(file2)
  time_taken = proc.time() - ptm
  cat(paste0("Loading classification_code took ",time_taken[1]," seconds\n"))
  
  return_list = list(summary = summary, class_code = class_code)
  return(return_list)
}
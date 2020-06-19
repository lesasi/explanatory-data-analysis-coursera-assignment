##############################
# NOTE: This is a script to download the 'summarySCC_PM25.rds' dataset if the files 
# doesn't exist- or if the zip has been downloaded, simply unzips it

# Download Link
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip

dataset_URL = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"

cat("\n\n")

if(!file.exists("dataset/summarySCC_PM25.rds")){
  # check if the original zip file is there - either the default name ('exdata_data_household_power_consumption.zip')
  # or the name we give it ('dataset.zip')
  if(!file.exists("dataset/exdata_data_NEI_data.zip") & !file.exists("dataset/dataset.zip")){
    cat("Dataset zip not available locally\n")
    choice = readline(prompt = "Download dataset?(size = 30.6 MB) - Press 1 to continue, any other key to exit: ")
    if(choice == "1"){
      cat(paste0("Downloading dataset from link '", dataset_URL, "' now...\n"))
      download.file(dataset_URL, "dataset/dataset.zip")
      cat("File 'dataset.zip' successfully downloaded!\n")
    }
    else{
      stop("File not downloaded, exiting...")
    }
  }
  file = ""
  if(file.exists("dataset/dataset.zip")){
    file = "dataset/dataset.zip"
  }else if(file.exists("dataset/exdata_data_NEI_data.zip")){
    file = "dataset/exdata_data_NEI_data.zip"
  }else{
    stop("File not downloaded, try again...")
  }
  cat(paste0("Unzipping from '", file, "'\n"))
  unzip(file, exdir = "dataset")
  cat(paste0("Files 'Source_Classification_Code.rds' and 'summarySCC_PM25.rds' unzipped from '", file, "'\n"))
  
}
cat("File 'summarySCC_PM25.rds' is ready for use.\n")

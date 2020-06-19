##############################
# NOTE: This is a script to download the 'household_power_consumption.txt' dataset if the file  
# doesn't exist- or if the zip has been downloaded, simply unzips it

# Download Link
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

dataset_URL = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

if(!file.exists("dataset/household_power_consumption.txt")){
  # check if the original zip file is there - either the default name ('exdata_data_household_power_consumption.zip')
  # or the name we give it ('dataset.zip')
  if(!file.exists("dataset/exdata_data_household_power_consumption.zip") & !file.exists("dataset/dataset.zip")){
    print("Dataset zip not available locally")
    choice = readline(prompt = "Download dataset?(size = 19.7 MB) - Press 1 to continue, any other key to exit: ")
    if(choice == "1"){
      print(paste0("Downloading dataset from link '", dataset_URL, "' now..."))
      download.file(dataset_URL, "dataset/dataset.zip")
      print("File 'dataset.zip' successfully downloaded!")
    }
    else{
      stop("File not downloaded, exiting...")
    }
  }
  file = ""
  if(file.exists("dataset/dataset.zip")){
    file = "dataset/dataset.zip"
  }else if(file.exists("dataset/exdata_data_household_power_consumption.zip")){
    file = "dataset/exdata_data_household_power_consumption.zip"
  }else{
    stop("File not downloaded, try again...")
  }
  print(paste0("Unzipping from '", file, "'"))
  unzip(file, exdir = "dataset")
  print(paste0("File 'household_power_consumption.txt' unzipped from '", file, "'"))
  
}
print("File 'household_power_consumption.txt' is ready for use.")

# Assignment 1

## About this repository 
 
This repository was created for the peer-graded assignment of: 

> Course 4: Exploratory Data Analysis,
by Johns Hopkins University

Accordin to the assignment guidelines:

 

> This assignment uses data from the [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/), a popular repository for machine learning datasets. In particular, we will be using the “Individual household electric power consumption Data Set” which has been made available:
> 
> -   **Dataset**: [Electric power consumption](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip)
> [20Mb]
> -   **Description**: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.
> 
> The following descriptions of the 9 variables in the dataset are taken
> from the [UCI website](https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption):
> 
> 1.  **Date**: Date in format dd/mm/yyyy
> 2.  **Time**: time in format hh:mm:ss
> 3.  **Global_active_power**: household global minute-averaged active power (in kilowatt)
> 4.  **Global_reactive_power**: household global minute-averaged reactive power (in kilowatt)
> 5.  **Voltage**: minute-averaged voltage (in volt)
> 6.  **Global_intensity**: household global minute-averaged current intensity (in ampere)
> 7.  **Sub_metering_1**: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a
> dishwasher, an oven and a microwave (hot plates are not electric but
> gas powered).
> 8.  **Sub_metering_2**: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a
> washing-machine, a tumble-drier, a refrigerator and a light.
> 9.  **Sub_metering_3**: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.
> 
> Our overall goal here is simply to examine how household energy usage
> varies over a 2-day period in February, 2007. Your task is to
> reconstruct the following plots below, all of which were constructed
> using the base plotting system.
> 
> For each plot you should
> -   Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
> -   Name each of the plot files as **plot1.png, plot2.png** etc.
> -   Create a separate R code file (**plot1.R, plot2.R** etc.) that constructs the corresponding plot, i.e. code in **plot1.R** constructs
> the **plot1.png** plot. Your code file should include code for reading
> the data so that the plot can be fully reproduced. You must also
> include the code that creates the PNG file.
> -   Add the PNG file and R code file to the top-level folder of your git repository (no need for separate sub-folders)
> 
> When you are finished with the assignment, push your git repository to
> GitHub so that the GitHub version of your repository is up to date.
> There should be four PNG files and four R code files, a total of eight
> files in the top-level folder of the repo.
> 
> The four plots that you will need to construct are shown below. 
> 
> 
> ### Plot 1
> 
> 
> ![Plot1](Assignment-1/required_images/ExDataCP1Plot1.png) 
> 
> 
> ### Plot 2
> 
> ![Plot2](Assignment-1/required_images/ExDataCP1Plot2.png) 
> 
> 
> ### Plot 3
> 
> ![Plot3](Assignment-1/required_images/ExDataCP1Plot3.png) 
> 
> 
> ### Plot 4
> 
> ![Plot4](Assignment-1/required_images/ExDataCP1Plot4.png)

## Details on the files that exist in this repository
### README.md 
It is the file you read right now and tries to explain the purpose and
the contents of the repository.
 
### download_dataset.R 
It is the script that was used to download and unzip the files, needed to perform the analysis in the first place. 
It is recommended to use it but not necessary, as long as the file "household_power_consumption.txt" in the  folder '[dataset](https://github.com/lesasi/explanatory-data-analysis-coursera-assignment/tree/master/Assignment-1/dataset)'. 

 - If the file "exdata_data_household_power_consumption.zip" (the current default name of the zip file downloaded manually) or the file 'dataset.zip' (the zip file previously downloaded and renamed) exists
   in the folder '[dataset](https://github.com/lesasi/explanatory-data-analysis-coursera-assignment/tree/master/Assignment-1/dataset)', then the script simply unzips the zip file
   without downloading anything.
 - If the dataset "household_power_consumption.txt" already exists in the folder '[dataset](https://github.com/lesasi/explanatory-data-analysis-coursera-assignment/tree/master/Assignment-1/dataset)'  it just informs the user about it's existence and doesn't download the files.
### plot1.R, plot2.R, plot3.R, plot4.R 

These are the required R scripts that generate the required graphs.

### plot1.png, plot2.png, plot3.png, plot4.png

These are the resultant graphs generated from their respective scripts

### utilities_code.R

It is a utility script used by the plot scripts. It contains the function 'return_dataset', which extracts only the relevant data from 
the large dataset i.e. the data from 01/02/2007 to 02/02/2007. This calculates the start row and end row to read from, by comparing the first date in "household_power_consumption.txt" to the date "01/02/2007". 
This is done to save the amount of space required to store the entire dataset(originally 2,075,259 rows) into the required dataset sample(2880 rows). 

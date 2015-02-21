# GettingAndCleaningData
## Course Project

### Background

The code in the runanalysis.R file creaes a tidy data set of the supplied data for *Human Activity Recognition UsingSmartphones*. THe program will create a tisy 'long' dataset that contains mean values for all observations ion the dataset there mean() or std() functions have been applied. THe granulairity of the dataset is one row per subjedt, per, sctivity, per measuement. I have decied to exlude the meanfreq() measuremnts from the dataset as my intepretation of the question was such that I did not see the need to include this. 

### Pre Requisites
To allow this program to run successfully the following must be done prior to execution:

1. Create and set a working directory 
2. Unzip the samsung data to the working directory, do not move any files as the program expects data to be avaulable in the same structure as the zipped file extracts to

### Process Flow

The process flow of the program is as follows:

1. Data is read in via *read.table*  from the tables containing measurement data, the relevant subjects for the data and the features and activity descriptive data
2. Column names are applied from the features data to the train and test data
3. 

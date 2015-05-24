# README for Getting and Cleaning Data Project
Andrei Dashevskii  
18 May 2015  

##Here are the steps of data processing:
1. Read row data for test and train sets in xTest and xTrain variables
2. Merge this tables with data containing information about subjects and activities
3. Merge test and train data in xData data frame
4. Get names for columns from "feature.txt" file
5. Put activity labels and names into activityl variable
6. Join activityl and xData tables with Id_Activity column
7. Select columns from xData with names containing "mean" or "std"(standart deviation)
8. Group data by subject and activity
9. Calculate means of variables
10. Write data to txt file




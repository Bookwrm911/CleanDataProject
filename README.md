#Final Project for Getting and Cleaning Data Coursera Course

## Introduction

The contents of this repository contains my work in the comlpetion of the "Getting and Cleaning Data" course on Coursera. The below project deals with the "Human Activity Recongition Using Smartphones" data set, collected obtained from the University of California-Irvine Machine Learning Repository. It deals with data collected from Samsung Galaxy II smartphone accelorometers, obtained from a group of 30 colunteers between the ages of 19 and 48 years old.

##Contents
This repository contains a run_analysis.R , which is R script that is designed to perfrom a series of actions in order to convert a messy data set into a tidy set of data, which is displayed in the tidy_data.txt file. All of these files were completed on a PC running Microsoft Windows 7 operating system, and as such some slight changes may need to be made if using other operating systems (Foreseeable issues will be discussed) 

The R script will dowload the raw data from the University of California-Irvine Machine Learning Repository. and will be loaded as a zip file called. It then unzipp the raw data files in order to be used, and produce a folder known called UCI HAR Dataset. As the function is optimized for Windows, adding an additional argument (method = "curl") to line 5 may be needed for it to work on a Mac. However, the addition of said argument would prevent the function from running on a PC.

The function will then read the relavant data and merge them in a way as to prodcue a single tidy data set called tidy_data.txt. This file is also found in this repository.

CodeBook.md explains the transfromations performed to the raw data, as well as the resulting variables and tidy data.  

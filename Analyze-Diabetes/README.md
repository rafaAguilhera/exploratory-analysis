## Elementary Statistics
Elementary Statistics is a set of methods that deals with the collection, analysis, and interpretation of data, aiming to extract information to describe 
and characterize the studied sample. It includes concepts such as mean, standard deviation, probability, frequency distributions, among others. 
Elementary statistics is a starting point for anyone who wants to understand and work with data and is a fundamental skill for many fields, such as 
business, science, and health.

This project aims to better understand how to perform basic statistical analyses and how to visualize data using R.

## Dataset used
The  ```PimaÍndiosDiabetes2```  dataset provided by R through the mlbench library will be used.

The Pima Indians Diabetes dataset is a dataset used to predict whether a person has diabetes or not, based on different medical measures. 
This dataset was collected at the National Institute of Diabetes and Digestive and Kidney Diseases of the American Indian population (NIDDK) in the United States.

The dataset includes information about 8 medical measures for each patient, including age, blood pressure, body mass index (BMI), 
pregnancy history, among others. In addition, it also includes information about the diagnosis of diabetes for each patient, which 
allows the use of this dataset for supervised learning purposes.

The Pima Indians Diabetes dataset is widely used in machine learning model training examples for disease prediction and is considered 
a simple and easy-to-use dataset for beginners in machine learning.

From the loading of the dataset, it was possible to apply some of the concepts and techniques of elementary statistics in a practical way,
which include measures of central tendency, measures of dispersion, and graphs. Once loaded, the dataset can be manipulated and analyzed
using the various functions and packages available in R.

Results
The dataset has 768 observations and 9 dimensions, as shown in the image below:

[![image.png](https://i.postimg.cc/TPfZQqhX/image.png)](https://postimg.cc/68bjpZdH)

### Details of dimensions 
* pregnant -> Number of times pregnant
* glucose -> Plasma glucose concentration (glucose tolerance test)
* pressure -> Diastolic blood pressure (mm Hg)
* triceps -> Triceps skinfold thickness (mm)
* insulin -> 2-hour serum insulin (muU/ml)
* mass -> Body mass index (weight in kg/(height in m)^2)
* lineage -> Diabetes pedigree function (a score that reflects the probability of diabetes based on family history)
* age -> Age (years)
* diabetes -> Indicates whether the patient has diabetes or not

### Exploring the age dimension
Measure | Result
-------|----------
Mean Age | 33 years
Median Age | 29 years
Mode | 22 years
Variance | 13,8
Standard Deviation | 12 years

## Understanding the main measures of central tendency
* The mean is a central measure of tendency that is used to summarize the distribution of a dataset. It is calculated by summing all the values in the dataset and dividing by the number of values in the dataset.

* The median is the central position measure that divides an ordered dataset into two halves. The median is not affected by outliers.

* The mode is the most frequent value in a data distribution.

* Variance is a measure of dispersion or variation that describes how much the data in a dataset is spread out from its mean. In other words, variance measures the variation of the data values around the mean.

* Standard deviation is a measure of dispersion or variation that describes how much the data in a dataset is spread out from its mean. It is the square root of variance and therefore has the same units as the observations of the data.

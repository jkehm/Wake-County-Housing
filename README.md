# Group 9 Final Project
## Housing Market in Wake County
# Team members and Branch links:
- Maria Cheema: [branch](https://github.com/jkehm/group9/tree/MC.-Final-Project)
- Justin Kehm: [branch](https://github.com/jkehm/group9/tree/JAK_Branch)
- Justin Allen: [branch](https://github.com/jkehm/group9/tree/Segment-1-JRA)
## Communication Protocols
* **Regular check-ins:** Schedule regular check-ins to discuss the progress of the project and any issues that have arisen. This will mostly be done through Slack.
* **Task allocation:** Assign specific tasks to each team member and set deadlines for completion.
* **Clear communication channels:** Use clear and direct communication channels to avoid any misunderstandings. Email, chat, and video conferencing can all be used depending on the nature of the communication. For voice/video calls we will utilize a Meeting Notes Google Doc that will serve as a living document throughout the projects life. 
* **Document sharing:** Use cloud-based document sharing tools like Google Drive and GitHub to share documents and files related to the project. This will ensure that everyone has access to the latest version of the files.
* **Version control:** Use version control tools like Git to track changes to code and data files. This will help prevent errors and ensure that everyone is working with the latest version of the files.
* **Respectful communication:** Ensure that all team members communicate respectfully and professionally at all times. This will help maintain a positive and productive team environment.
* **Conflict resolution:** Have a process in place for resolving conflicts that may arise during the project.



# Overview of the topic and our Data:
#### Introduction
Our team interest is to work on something that is personal to us, and something we can relate to. With that in mind, our team members are all from a city in Wake County, or currently reside there. For those not familiar with Wake County, it contains North Carolina's capital city, Raleigh, as well as other popular cities Cary, Apex, Holly Springs, and Morrisville. The housing market has been nothing short of hectic the last few years and Raleigh is one of the most rapidly growing cities in the United States. The team is curious to see if this rapid growth has been reflected in the housing market, and if we can offer some insight to the people moving to the Triangle. 

#### The Data
This dataset was pulled from the Wake County Government website. Which can be found [here](https://www.wake.gov/departments-government/tax-administration/data-files-statistics-and-reports/real-estate-property-data-files).
The dataset contains data for all recorded Real Estate history in Wake County up to 5/13/2023 (the day we downloaded the .csv file). This leaves the team with a very large dataset, and a lot of data that is not relevant to us. The dataset size before any cleaning was performed is 439,031 rows x 87 columns. A lot of these columns were either missing data completely, had a lot of null values, or was not relevant to our project goals. The team dropped most of the columns we started with. The steps the team used for our data cleaning is below, and the Jupyter Notebook that was used can be found [here](https://github.com/jkehm/group9/blob/main/Notebooks/Cleaning_Data_JAK.ipynb)

* Figure out dimensions of the entire dataset
* Look which columns could be relevant to our analysis
* Create a new dataframe with the relevant columns
* Check to see how many null values we have
* Drop all null values if our new dataset is still large enough after dropping nulls
* The next step was to drop all rows that did not have a TYPE_AND_USE of 1. Which is coded to mean a One Family residental style Real Estate. 
* Check data types, and change zip code to object, and Sale Date to datetime
* Split the datetime formatted date into seperate Year, Month, and Day columns
* Dropped the Day column since it will not be relevant
* Created a Quarter column to add to potential trends in selling in certain months, or maybe quarters
* Exported dataset

#### Questions the Team wants to answer with this data:
* Create a machine learning model that can predict the price of a house given certain input data
* Range and Average of Total Sales price
* How has average Sales Price changed over the years?
* Does the month or quarter that a house is sold in impact the price?
* Which factors are the most influential to the sales price?
* Which Zip code or City has the highest or Lowest average Sales Price?
* Over the decades, which Zip Code or City has seen the largest increase in Sales Price?

#### Machine Learning Model

The way this dataset is designed does not allow for a Supervised Learning Classification model. This is because there is no discrete outcome for this data. 

Instead, there are plenty of different clusters within our dataset that we can utilize. We can perform clustering with the K-Means Algorithm. We would define the number of clusters (k) as the number of unique cities or zip codes we have. Once this has been clustered, we can see if there are any other relationships between other inputs, such as Sold Price for homes. From here we will be able to create several different visualitzations with the machine learning data. 

#### Database and ERD

A rough sketch of our Database Tables:
![ERD_WakeCountyv2](https://github.com/jkehm/group9/assets/119149740/cf342914-9196-4c51-b34a-f8947d22e8f2)

Using PostgreSQL created 3 tables: Cleaned Wake County dataset, Square Feet by Year, and Sale Price by Year


#### Technologies, Languages, and Tools used
* Jupyter Notebook
* Pandas
* Numpy
* MatPlotLib
* Scikit-learn library
* Google Drive including Google Slides and Goolge Docs
* GitHub
* PostgreSQL
* Tableau

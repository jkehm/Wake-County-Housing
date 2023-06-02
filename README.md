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

#### Data Exploration and Cleaning Phase
The main dataset was pulled from the Wake County Government website. Which can be found [here](https://www.wake.gov/departments-government/tax-administration/data-files-statistics-and-reports/real-estate-property-data-files). From the same source, a [GeoJSON file](https://data.wakegov.com/datasets/Wake::zip-codes/explore?location=35.832815%2C-78.715928%2C3.54) was used to build the Tableau Interactive Map. Additionally, we utilized Wake County population data that can be found [here](https://demography.osbm.nc.gov/explore/dataset/2021-standard-population-estimates/table/?disjunctive.county&disjunctive.muniname2&sort=county&refine.county=Wake).

The main dataset contains data for all recorded Real Estate history in Wake County up to 5/13/2023 (the day we downloaded the .csv file). This leaves the team with a very large dataset, and a lot of data that is not relevant to us. The dataset size before any cleaning was performed is 439,031 rows x 87 columns. A lot of these columns were either missing data completely, had a lot of null values, or was not relevant to our project goals. The team dropped most of the columns we started with. The steps the team used for our data cleaning is below, and the Jupyter Notebook that was used can be found [here](https://github.com/jkehm/group9/blob/main/Notebooks/Cleaning_Data_JAK.ipynb)

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
* Looked through data and realized we have quite a few outliers
* Created cutoffs for all values below 0.04 acres and above 3.06 acres (5th and 99th percentile of data)
* Removed Total_Sales_Price if less than $15,000 and greater than $1,050,000 (1st and 99th percentile of data)
* Dropped rows where Zip Code was equal to 0
* Created subdatasets for the 1990's, 2000's, 2010's, 2020's, and the last decade
* Exported datasets

#### Data Analysis Phase
Once the data was cleaned the team was able to dig further into the data and start looking for relationships between data points, and create some visualizations. The scatter plot below shows the Total Sale Price vs Total Heated area. Once the team applied filters to remove outliers our data looked much more precise than it had previously. 

<p align="center">
   <img width="720" height="480"  src="https://github.com/jkehm/group9/blob/main/Images/Total%20Sale%20Price%20vs%20Total%20Square%20Foot%20Scatter.png">
</p>

The next visualization that the team worked on was creating a time series for House Sale price by year, which can be seen below. The graph shows a steady increase in the Average sale price from the 1970’s to 1980’s. In the mid 1980’s there is a clear uptick in the average sold price until the until the Great Recession in 2008. From then until present day we see a drastic increase in the average sale price. 
![Time Series Graph](https://github.com/jkehm/group9/blob/main/Images/Time%20Series%20of%20House%20Sale%20Price%20by%20Year.png)

One of the first questions the team asked when we started digging into the data was if there is a correlation between the Heated area (square footage) and the sale price. A scatter plot was created that can be seen below. It is clear there is a fairly strong positive correlation between these factors. In order to put a number to it, we created a correlation dataframe which can be seen below. The strongest influences for Total Sale Price is Heated Area (0.683), Year Sold (0.560), and the Year Built (0.351).

<p align="center">
  <img width="720" height="480" src="https://github.com/jkehm/group9/blob/main/Images/relationship%20between%20heated%20area%20and%20sales%20price.png">
</p>

![Correltaion DF](https://github.com/jkehm/group9/blob/main/Images/correlation%20dataframe.png)

Lastly, the team was curious to see how some of the data is distributed. The first image below is of the Year Built boxplot. This shows that there has been a massive building boom in Wake County right around the year 2000. The heatead area boxplot shows the distribution of the size of homes in Wake county. It would be interesting to do some further investigation with the Heated Area boxplot and compare the the distribution for the last few decades, and see how the size of homes has changed. 

<p align="center">
  <img width="720" height="480" src="https://github.com/jkehm/group9/blob/main/Images/year%20built%20box%20plot.png">
</p>
<p align="center">
  <img width="720" height="480" src="https://github.com/jkehm/group9/blob/main/Images/heated%20area%20boxplot.png">
</p>

#### Questions the Team wants to answer with this data:
* Create a machine learning model that can predict the price of a house given certain input data
* Range and Average of Total Sales price
* How has average Sales Price changed over the years?
* Does the month or quarter that a house is sold in impact the price?
* Which factors are the most influential to the sales price?
* Which Zip code or City has the highest or Lowest average Sales Price?
* Over the decades, which Zip Code or City has seen the largest increase in Sales Price?

#### Machine Learning Model

The way this dataset is designed does not allow for a Supervised Learning Classification model. This is because there is no discrete outcome for this data. We will utilize both a k-means clustering and linear regression model on this dataset. Both of these models have their benefits and drawbacks. 

There are plenty of different clusters within our dataset that we can utilize. We can perform clustering with the K-Means Algorithm. We would define the number of clusters (k) as the number of unique cities or zip codes we have. Once this has been clustered, we can see if there are any other relationships between other inputs, such as Sold Price for homes. From here we will be able to create several different visualitzations with the machine learning data. The advantages of k-Means clustering include being able to scale to large data sets, gurantees convergence, easily adapts to new examples, and generalizes to clusters of different shapes and sizes. 
There are a few situations where k-Means clustering does struggle. For example, when clustering data of varying sizes and density, clustering outliers, and having to manually choose the optimal amount of k clusters. Eventhough, in this dataset the amount of clusters we will create is fairly clear considering we plan to cluster by Zip Code. 

The Linear regression model is a simple way to show the relationship between HEATED AREA, Total_sale_Price, city and zip codes. Linear Regression models also make it easy to handle the large dataset.
The assumptions of a linear regression model makes it difficult to obtain accurate information in showing the relationship between HEATED_AREA' and 'Total_sale_Price'. Therefore, you need different models to obtain accurate predictions. We used the linear regression model, because it will allow for predictions given certain inputs. The team was also able to Visualize the relationship of Square Footage vs. Total Sale Price with a line graph.

#### Database and ERD

ERD:

<p align="center">
  <img width="720" height="480" src="https://github.com/jkehm/group9/assets/119149740/a6c01ea0-4db5-44b7-add4-426d8680a5c1">
</p>


Using PostgreSQL created the three tables shown in the ERD. After creating those three tables, imported the cleaned csv files into the tables making sure the headers and data types aligned. Once those were successfully processed used queries to build more tables in our Final Project schema. The goal was to show information related to the Wake County cities, averages sale prices and square footage, and population. 

Additionally, we utilized AWS Relational Database Services to establish a connection to Postgres database to interface with our Final Project. Used psycopg2 to establish the connection between our database and a machine learning model.

	conn = psy.connect(database="-",
                        host="-",
                        user="postgresgroup9",
                        password="-",
                        port="5432")

	print(conn)
	
Retrieved/fetched the data from PostgreSQL table that is connected to AWS. Then had to update the column names in the DataFrame.

	cur = conn.cursor()
	cur.execute("select * from wakecountycleanedwdate")
	data = cur.fetchall()
	df_wake = pd.DataFrame(data)
	conn.close()

Example query to combine two tables in our database.

	SELECT DISTINCT ON (ld.physical_city)
	    ld.physical_city,
	    ld.year,
	    AVG(ld.total_sale_price) as average_sales_price,
	    AVG(ld.heated_area) as average_sqfeet,
	    wp.population
	INTO combinedpop
	FROM lastdecadewakecounty as ld
	LEFT JOIN wakecountypopulation as wp
	    ON (ld.physical_city = wp.physical_city)
	WHERE (ld.year='2021')
	    AND (wp.year='2021')
	GROUP BY ld.physical_city, ld.year, wp.population
	ORDER BY physical_city ASC;
	
#### Description of Dashboard
The group utilized Tableau in order to create this dashboard. An interactive map was created where the user can interactively scroll over Zip Codes within Wake County. Once the county is scrolled over a snippet of the data regarding the county will be appear. This map can be seen below. Additionally, the entire Tableau Story can be found [here.](https://public.tableau.com/app/profile/justin.kehm/viz/WakeCountyAvgSalesPriceDashboard/Story1?publish=yes)

https://github.com/jkehm/group9/assets/73975096/0e917c67-48b6-4bf9-b5ba-a93b21119c25

#### Presentation and Google Slides
The link to our Final Google Slides Presentation can be found [here](https://docs.google.com/presentation/d/1y0o_X7_Fj14qmu2ATZ1sDu5WMu9wZab2qyRHnucsdYk/edit?usp=sharing).

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

#### Results
* How has the average total sale price changed over time?
	- **Time series of house sale price by year shows a steady increase for the first 40 years, a slowdown during the Great Recession (2007-2008), and a drastic increase in the years since**
* Any outliers in heated area (sq. feet) and sale prices? 
	- **Yes, it was removed to offer a cleaner dataset**
* How does the deeded acreage distribution differ among various cities?
	- **Clayton: average acreage at 0.88**
	- **Morrisville: average acreage at 0.13**
* What is the month in which highest number of homes sales occur?
	- **2022: July had the highest number of homes sold and highest average sale price**
* What factors have the biggest influence in Sales Price?
	- **Heated Area (0.683), Year Sold (0.560), and the Year Built (0.351)**
* The largest cities in Wake County?
	- **Raleigh (2021): population ~ 470,000, Avg Sale Price $494,058.74, Avg Sq. Feet of Home 2,501.84**
	- **Cary (2021): population ~ 174,000, Avg Sale Price $399,701.26, Avg Sq. Feet of Home 2,105.97**

#### Looking Back
* Recommendation fro Future Analysis
	- Population versus amount of houses sold
	- Where are the people moving to Wake County coming from
	- Average income in the area compared to the housing market
	- COVID impact on 2020 onward
	- Compare Wake County to other counties such as Mecklenburg County, NC

* What we would do differently
	- If given more time the team would have liked to dive further into the data to see if there are any other relevant factors
	- Including other datasets to see if there is a relation between crime (or something similar) to Total Sales Price



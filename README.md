# FIFA World Cup

#### Introduction: 

- **Selected topic:** 2022 FIFA World Cup Predictions

- **Reason for selected topic:** The FIFA World Cup is the most prestigious football tournament in the world. The championship has been awarded every four years since the start of the tournament in 1930. The matches take place towards the end of November, thus we found this topic to be relevant given the timeframe and popularity for those who follow soccer. 

- **Description of the source of data:** The data sources are obtained through CSV files. Each file is well structured and has enough columns and categories to easily filter for specific topics we intend to use. The datasets are also updated (last update 28-08-22) providing us with the ability accommodate recent scores. The dataset provides a complete overview of all international soccer matches played since the 2000s. On top of that, the strength of each team is provided by incorporating actual FIFA rankings as well as player strengths based on the EA Sport FIFA video game. The second dataset we're using provides a list of 2022 players' characteristics. The goal is to see if age or height plays a positive role in ranking. 

- **Questions we hope to answer with the data:** Using our knowldge of machine learning and data analysis, can we create a model that allows users to predict the 2022 FIFA World Cup winner based on past information and players characteristics. 

- **Presentation Draft:** [Found Here](https://docs.google.com/presentation/d/1o660yOfDEY-43fBcihLkfAt6VvQGWRWwPyAxlKHCJGg/edit#slide=id.p)

- **Dashboard:** https://public.tableau.com/views/FIFA_World_Cup_16644268958490/FIFA_World_Cup?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link

#### Resources: 

## DATABASE
**Database Host:** Postgres
**Database Engine:** SQLAlchemy
**Python Tool:** Jupyter Notebook
**Languages:** SQL, Python

**Deliverable 2:**

1. Our ERD was created based on our cleaned and finalized datasets. We have two datasets to help us start our analysis. We created an Enterprise Relational Diagram below to determine a draft of what our database should look like, and how tables are connected with primary and foreign keys. The database is storing the static data and we have at least 2 tables.

![erd_snapshot](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess2/Database_Resources/erd_snapshot.png)

2. Database was created in Postgres.

![db_screenshot](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess2/Database_Resources/db_screenshot.png)

3. Using Python in Jupyter Notebook, the datasets were loaded, then imported to Postgres using SQLAlechemy

File found **[here](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess2/load_dataset_to_postgres.ipynb)** that imports the datasets, and imports to Postgres.

4. Confirmed data was loaded into Postgres using SQL queries to visually confirm data was available.

5. Used an inner join with SQL to join the players tables to the matches table.

![join_sql](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess2/Database_Resources/sql_join.png)

6. The data is connected to the machine learning module through a Jupyter Notebook using Python and SQLAlchemy. We used the pd.read_sql_query function and pull datasets into dataframes for processing.

File found **[here.](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess2/upload_data_from_postgres.ipynb)**


## Data Cleansing: 
Initially, we started with two big datasets (International_Matches.csv and Players22.csv). Each dataset contained over 40 columns and a bunch of unnecessary variables. 

****International_Matches.csv:**** For this dataset, the group first checked all of the datatypes and then, decided which columns would be unnecessary for our final results. After dropping a significant amount of columns, we also changed the timeframe column 'date'. This dataset initially listed all of the international matches dating back to the 1930s (the first FIFA World Cup), for simplicity we decided to only keep the matches played throughout 2022 (2000/01/01 - 2022/08/22) until the last dated match posted. 

<img width="666" alt="Screen Shot 2022-10-11 at 11 26 20 AM" src="https://user-images.githubusercontent.com/104043438/195159192-78a249d4-b227-45ae-8de0-3065b9e7141c.png">

****Players22.csv:**** This dataset was much larger compared to the first one, containing around 50 columns. The group realized that to create an accurate machine-learning model, we would have to remove most columns and determine which variables would be most important for our findings. The process started the same as before, we removed all unnecessary columns and variables. 

<img width="2142" alt="Screen Shot 2022-10-11 at 11 30 09 AM" src="https://user-images.githubusercontent.com/104043438/195159923-e2fa5a67-c1ba-40ae-9ef5-53c800cf9c37.png">

After removing the unnecessary columns, we were left with a short and simple dataset. The updated dataset only focused on four different players' attributes (weight, height, age, and preferred foot). Next, the group removed any 'NaN' variables listed throughout the dataset since some players didn't have these variables listed. Empty variables could scew the machine model's findings so it was important to remove any variables that could complicate our results/accuracy score. 

****Both_Sources_CleanedCombined.csv:**** After cleaning both datasets, we merged them into one final source to apply to the machine-learning model. The final source was clean and concise, containing only 10 columns which would later be dropped down to 6 after applying it to the model. The final dataset looks like the following: 

<img width="833" alt="Screen Shot 2022-10-11 at 11 41 25 AM" src="https://user-images.githubusercontent.com/104043438/195162074-07f981f2-6bd1-4919-8b03-992919fc1507.png">

## Database Storage:


## Machine Model:
Based on the structure of 


#### Visualizations:


#### Findings:

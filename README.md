# FIFA World Cup

#### Introduction: 

- **Selected topic:** 2022 FIFA World Cup Predictions

- **Reason for selected topic:** The FIFA World Cup is the most prestigious football tournament in the world. The championship has been awarded every four years since the start of the tournament in 1930. The matches take place towards the end of November, thus we found this topic to be relevant given the timeframe and popularity for those who follow soccer. 

- **Description of the source of data:** The data sources are obtained through CSV files. Each file is well structured and has enough columns and categories to easily filter for specific topics we intend to use. The datasets are also updated (last update 28-08-22) providing us with the ability accommodate recent scores. The dataset provides a complete overview of all international soccer matches played since the 2000s. On top of that, the strength of each team is provided by incorporating actual FIFA rankings as well as player strengths based on the EA Sport FIFA video game. The second dataset we're using provides a list of 2022 players' characteristics. The goal is to see if age or height plays a positive role in ranking. 

- **Questions we hope to answer with the data:** Using our knowldge of machine learning and data analysis, can we create a model that allows users to predict the 2022 FIFA World Cup winner based on past information and players characteristics. 

- **Presentation Draft:** [Found Here](https://docs.google.com/presentation/d/1o660yOfDEY-43fBcihLkfAt6VvQGWRWwPyAxlKHCJGg/edit#slide=id.p)

- **Dashboard:** (https://public.tableau.com/views/FIFA_World_Cup_16644268958490/FIFA_World_Cup?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)

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


#### Data Cleansing: 


#### Database Storage:


#### Machine Model:


#### Visualizations:


#### Findings:

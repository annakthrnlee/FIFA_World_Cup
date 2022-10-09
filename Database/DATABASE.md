# Database Segment Week 2

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


### Dataset Sources
*[Matches and FIFA Rankings](
https://www.kaggle.com/datasets/brenda89/fifa-world-cup-2022)*


*[FIFA Videogame Players](
https://www.kaggle.com/datasets/stefanoleone992/fifa-22-complete-player-dataset?select=players_22.csv)*

**To Do for Segment 3 (Database)**

NA, support machine learning/dashboard/presentation segments
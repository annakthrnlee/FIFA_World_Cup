# Database Creation Information

## DELIVERABLE 1
Database Host: Postgres

Database Engine: SQLAlchemy

**Deliverable 1:**

1. Provisional ERD was created. We have 3 provisional datasets to help us start our analysis. We created an Enterprise Relational Diagram below to determine a draft of what our database should look like, and how tables are connected with primary and foreign keys.

![erd_snapshot](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess1/Database/db_erd_snapshot.png)

2. Database was created in Postgres.

![db_screenshot](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess1/Database/db_screenshot.png)

3. Using Python in Jupyter Notebook, provisional datasets were loaded, then imported to Postgres using SQLAlechemy

File found **[here](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess1/load_dataset_to_postgres.ipynb)** that imports the provisional datasets, and imports to Postgres.

4. Confirmed data was loaded into Postgres using SQL queries to visually confirm data was available.

![SQL_queries](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess1/Database/SQL_queries.png)

5. The data will be connected to the machine learning module through a Jupyter Notebook using Python.

### Dataset Sources
*[Matches and FIFA Rankings](
https://www.kaggle.com/datasets/brenda89/fifa-world-cup-2022)*


*[FIFA Videogame Players](
https://www.kaggle.com/datasets/stefanoleone992/fifa-22-complete-player-dataset?select=players_22.csv)*

*A Teams references table was created taking two columns from FIFA Videogame Players and pasting it into a blank csv.*
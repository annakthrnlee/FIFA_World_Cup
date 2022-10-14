# FIFA World Cup

## Introduction: 

- **Selected topic:** 2022 FIFA World Cup Predictions

- **Reason for selected topic:** The FIFA World Cup is the most prestigious football tournament in the world. The championship has been awarded every four years since the start of the tournament in 1930. The matches take place towards the end of November, thus we found this topic to be relevant given the timeframe and popularity for those who follow soccer. 

- **Description of the source of data:** The data sources are obtained through CSV files. Each file is well structured and has enough columns and categories to easily filter for specific topics we intend to use. The datasets are also updated (last update 28-08-22) providing us with the ability accommodate recent scores. The dataset provides a complete overview of all international soccer matches played since the 2000s. On top of that, the strength of each team is provided by incorporating actual FIFA rankings as well as player strengths based on the EA Sport FIFA video game. The second dataset we're using provides a list of 2022 players' characteristics. The goal is to see if age or height plays a positive role in ranking. 

- **Questions we hope to answer with the data:** Using our knowldge of machine learning and data analysis, can we create a model that allows users to predict the 2022 FIFA World Cup winner based on past information and players characteristics. 

- **Presentation Draft:** [Found Here](https://docs.google.com/presentation/d/1o660yOfDEY-43fBcihLkfAt6VvQGWRWwPyAxlKHCJGg/edit#slide=id.p)

- **Dashbaord1:** [Found Here](https://public.tableau.com/authoring/Soccer_16651725812850/AgeVSCountry#1)
- **Dashboard2:** [Found Here](https://public.tableau.com/views/FIFA_World_Cup_16644268958490/FIFA_World_Cup?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)

## Resources: 
****Original Datasets**** 
- International_Matches.csv
- Players22.csv

****Cleaned Datasets****

The codes are also listed under 'Cleaned Data Codes' so viewers can preview the cleansing process 
- Revised_International_Matches.csv
- Revised_Players22.csv
- Both_Sources_CleanedCombined.csv

****Technology Used****
- Python
- Jupyter Notebook / Google Colab
- CSV
- SQLAlchemy 
- Postgres
- Tableau
- Google Powerpoint
- Git
- Tensorflow
- Sklearn

## DATABASE / DATABASE STORAGE
**Database Host:** Postgres
**Database Engine:** SQLAlchemy
**Python Tool:** Jupyter Notebook
**Languages:** SQL, Python

Our ERD was created based on our cleaned and finalized datasets. We have two datasets to help us start our analysis. We created an Enterprise Relational Diagram below to determine a draft of what our database should look like, and how tables are connected with primary and foreign keys. The database is storing the static data and we have at least 2 tables.

![erd_snapshot](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess2/Database_Resources/erd_snapshot.png)

The database was created in Postgres.

![db_screenshot](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess2/Database_Resources/db_screenshot.png)

Using Python in Jupyter Notebook, the datasets were loaded, then imported to Postgres using SQLAlechemy

File found **[here](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess2/load_dataset_to_postgres.ipynb)** that imports the datasets, and imports to Postgres.

The confirmed data was loaded into Postgres using SQL queries to visually confirm data was available.

We used an inner join with SQL to join the players tables to the matches table.

![join_sql](https://github.com/annakthrnlee/FIFA_World_Cup/blob/bess2/Database_Resources/sql_join.png)

The data is connected to the machine learning module through a Jupyter Notebook using Python and SQLAlchemy. We used the pd.read_sql_query function to pull the datasets into our dataframes for processing.

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

## Machine Model:
Based on the structure of our final dataset, the group found that a supervised machine model would be the most efficient to predict our final results. Supervised learning is a great option when it comes to predictions, since our goal as a team was to create a model that allows users to predict the 2022 FIFA World Cup winner based on past information, supervised learning made the most sense. Supervised learning takes two forms, regression, and classification. The group chose to work with classification because it's best used to predict discrete outcomes and to identify the category of new observations based on training data. 

After determining which type of model we would apply to our dataset, we then decided to use deep neural networking. The reason why we chose to use a neural networking model was that we weren't sure if our data would have a linear relationship. Players' attributes may not even change the outcome of a game. When it comes to sports predictions building an accurate model is pretty much impossible, sure you can base predictions on different statistics but sports are very unpredictable. Thus, neural networking models with multiple layers can identify nonlinear characteristics of the input data without requiring more input data.

When it comes to neural networking models, there are endless ways to customize your model. The group chose to incorporate three hidden layers because by adding an extra layer and lowering the neuron count for each, the model could better identify nonlinear characteristics of the data without requiring more input data. The group also decided to focus on the ReLu function (Rectified Linear Unit) because it's the most used activation function in neural networks due to its simplifying output. The following image shows the code used to build the deep neural net: 

<img width="993" alt="Screen Shot 2022-10-11 at 12 13 06 PM" src="https://user-images.githubusercontent.com/104043438/195168027-f4d3e777-f603-4f09-a101-fec82dff462e.png">

The final model had an accuracy score of 60%. Though this isn't very high when it comes to sports betting the group was surprised to see such results. These results can tell us that the four players' attributes we chose do play a role in whether a team will win or lose.  

<img width="700" alt="Screen Shot 2022-10-11 at 11 50 50 AM" src="https://user-images.githubusercontent.com/104043438/195163874-4fc98f4e-5ed3-47db-a0f3-17dcf7176bbb.png">

## Visualizations:
The group thought it would be most appropriate for our audience if we first created three visualizations that showed the differences between each country and the players' attributes. You can view our dashboard by clicking the link above. 

Here are the findings when we compared each country with age, weight, and height: 

- Brazil has the lowest average height for their 2022 players / Denmark has the highest average height for their players.
- England has the lowest average age for their 2022 players / Turkey and Iceland are tied for having the highest average age for their players.
- Argentina has the lowest average weight for their 2022 players / Denmark has the highest average weight for their players.
One factor to acknowledge:

Even though there are differences when it comes to the player's attributes (height/weight/age), we don't see very much change when you compare birth year (dob) with height and weight. The only differences occur when you compare the same attributes with the player's country.

<img width="1464" alt="Screen Shot 2022-10-11 at 12 21 25 PM" src="https://user-images.githubusercontent.com/104043438/195169636-92d75db2-4df9-453d-9812-b451d6b729c0.png">

****Dashboard:**** The dashboard displays an interactive feature. The audience can interact with the dispaly by seeing each country's Draw, Lose, and Win ratio throughout 2022; Allowing you to compare each countries loss/win ratio. You can also interact with the weight attribute of the players by scrolling within the bar, this allows you to compare other players weights by country. These attributes all play a role in the world of soccer and may even give you an advanthe when considering which teams could win based on past relationships. Give it a try! 

## Findings:
This project has been interesting because when it comes to sports betting, predicting a winner is nearly impossible. People can use techniques, models, and relationships to form a quantitative hypothesis, but you can never be 100% sure. This project proves that even though you can't accurately predict a winner with 100% confidence, certain attributes do play a role in building a more sophisticated guess. The machine learning model shows a 60% accuracy score when considering the four players' attributes (weight, height, age, and preferred foot) when it came to a team's win/lose ratio. When building your hypothesis, it could be beneficial to look at past games and the players to seek trends hidden deep within big data. Sports betting is an endless game within itself, building models like such will help an audience understand the sports world a bit better as well as increase the likelihood of their predictions. 

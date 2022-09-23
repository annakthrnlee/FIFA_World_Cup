# FIFA_World_Cup

### First Segment: Sketch It Out 
#### My Roles:
- 🔼 Triangle: The member in the triangle role will create a mockup of a machine learning model. This can even be a diagram that explains how it will work concurrently with the rest of the project steps.
- ⏹ Square: The team member in the square role will be responsible for the repository. I plan on updating and creating the 'main' READ.ME as we progress each week, for simplicity reasons. 

### Rubric For This Week:
=======
### Reminder: This is NOT the final READ.ME it's simply a guide for each weeks goals. Once finished, we will create a NEW final READ.ME that summarizes all individual READ.MEs the group has created from each week. 

### Project Goals (ROAD MAP):

- First Segment: Sketch It Out: Decide on your overall project, select your question, and build a simple model. You'll connect the model to a fabricated database, using comma-separated values (CSV) or JavaScript Object Notation (JSON) files, to prototype your idea.

- Second Segment: Build the Pieces: Train your model and build out the database you'll use for your final presentation.

- Third Segment: Plug It In: Connect your final database to your model, continue to train your model, and create your dashboard and presentation.

- Fourth Segment: Put It All Together: Put the final touches on your model, database, and dashboard. Lastly, create and deliver your final presentation to  your class.

### Rubric For This Week: WEEK 1

#### Presentation: 
- Selected topic: 2022 FIFA World Cup Predictions

- Reason for selected topic: The FIFA World Cup is the most prestigious football tournament in the world. The championship has been awarded every four years since the start of the tournament in 1930. The matches take place towards the end of November, thus we found this topic to be relevant given the timeframe and popular for those who follow soccor. 

- Description of the source of data: The data sources are obtained through CSV files. Each file is well structured and has enough columns and categories to easily filter for specific topics we intend to use. The datasets are also updated (last update 28-08-22) providing us with the ability accommodate recent scores. The dataset provides a complete overview of all international soccer matches played since the 2000s. On top of that, the strength of each team is provided by incorporating actual FIFA rankings as well as player strengths based on the EA Sport FIFA video game. The second dataset we're using provides a list of 2022 players' characteristics. The goal is to see if age or height plays a positive role in ranking. 

- Questions we hope to answer with the data: Using our knowldge of machine learning and data analysis, can we create a model that allows users to predict the 2022 FIFA World Cup winner based on past information and players characteristics. 

#### GitHub Repository ⏹
- Description of the communication protocols: 

I added this portion to the 'main' READ.ME. I plan on adding a TO-DO list for each week so all group members understand their tasks as we progress; This will keep things organized. Everyone will create a new branch each week and add a READ.ME to explain what steps were taken to advance towards our finished goal. Once we have completed all steps, I will create a new final READ.ME to establish/summarize all required attributes of the project and our processes. 

- At least one branch for each team member: 

I'm taking over Emma's portion since she's out of town this week, there will only be three branch's rather than four. After this week I should expect four branches for each member as well as a READ.ME explaining the requirements per week. 

- Each team member has at least four commits for the duration of the first segment: 

#### Machine Learning Model: 🔼
- Which model did I choose and why?

For starters, I found it best to go with a supervised machine learning model because it deals with labeled data. Supervised learning is a great option when it comes to predictions, since our goal as a team is to create create a model that allows users to predict the 2022 FIFA World Cup winner based on past information, supervised learning makes the most sense. Supervised learning takes two forms, regression, and classification. I chose to work with classification because it's best used to predict discrete outcomes and is used to identify the category of new observations based on training data.
Thus, our machine learning model will learn from our given datasets and classify new observations into several classes or groups (predicted winners based on each observation).

- The data 

First dataset: Revised_International_Matches

Multiple questions will need to be addressed before training the model. First, I'll need to look over both datasets and decide which columns (categories) are most fit to help predict my final goal outcome. The first dataset (International_Matches.csv) has 25 columns, however, 8 columns appear empty so I will first delete these unnecessary values because they serve no true purpose in my results. I will evaluate the remaining columns and decide which will be necessary for the model's final predictions and which can be set aside. 

I've dropped all columns that serve no purpose and set aside a portion of our dataset to evaluate my model. 

Now, I need to decide which factors are best for training my model to fit our predictions. When determining what team is most likely to win, you would probably want to know the best and worst teams. The dataset we chose, however, dates back to the start of the tournament in 1930. Thus, I decided to delete all of the years ranging from 1930-2000. My model will now only predict the scoring of games from the past 22 years (2000-01-01 --> 2022-08-28) 

Next, I created two new df that assorts the rankings of home and away teams. This provides the model with the ability to display the worst from the best teams over 22 years for both home and away games for each team. 

Second dataset: Revised_Players22

This dataset started with over 50 columns, all of which summarize soccer players from that year who played pro. The goal, however, is to only pay attention to FIFA champion players so I dropped all players who didn't fit that specific qualification. 
Next, I decided which columns would be most interesting to compare with potential winners. I kept players height, weight, age, nationality, and body type. These categories will be the defining objects of our model when it comes to predicting future winners based on players' characteristics. 

- How am I training the model?

It took some time to determine what data I should use to best fit our group's goals. At first, I was going to merge the two data sets and then create my model but after messing around with some codes, I soon realized that this would create lots of errors and poor accuracy. 
I decided to base my model solely on the Revised_International_Matches dataset. I based the model's foundation on home_team_results_Lose and home_team_results_Win. These columns summarize all of the tournaments played at an international level over the past 22 years and the outcomes. Some games will be counted as a 'lose' for both teams since we're primarily focused on predicting what team will win the FIFA tournament. 

I decided to use the Rectified Linear Unit (ReLU) function to train my model. ReLu returns a value from 0 to infinity, so any negative input through the activation function is 0. It is the most used activation function in neural networks due to its simplifying output. ReLu works best with complicated models and based on the size of the dataset I found it to be the most appropriate choice. 

I used Keras to help build my model, along with two classes: The Sequential class amd the generalized Dense class. 
I incorporated three different hidden layers all of which use the 'ReLu' function. 

- What is the model's accuracy?

My model's accuracy score is: 79%
I plan on messing around with the model next week and seeing if by adding new hidden layers and changing the parameters I could acheive a higher score. This is just a basic model and I would like to add a few more characteristics to better acheive our desired outcomess (WEEK 2 GOALS). 

<img width="718" alt="Screen Shot 2022-09-22 at 8 27 21 PM" src="https://user-images.githubusercontent.com/104043438/191881729-5492c5be-5c71-4e0c-a134-5f347da68d02.png">

- How does this model work?

The model works by determining the likeliness of a home_team winning or losing based on whether they played home or away game. I was curious to see if teams who played in their own country won more often than lost. This would become an interesting finding for predicting who would win the FIFA tournament. Though it's not the only factor that plays a role, it would be cool to see the percentages of wins and losses over the last 22 years based on where the game was held.

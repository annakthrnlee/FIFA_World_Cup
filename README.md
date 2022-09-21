# FIFA_World_Cup

### First Segment: Sketch It Out 
#### My Roles:
- 🔼 Triangle: The member in the triangle role will create a mockup of a machine learning model. This can even be a diagram that explains how it will work concurrently with the rest of the project steps.
- ⏹ Square: The team member in the square role will be responsible for the repository.

### Rubric For This Week:

#### GitHub Repository ⏹
- Description of the communication protocols: 

I added this portion to the 'main' READ.ME. I plan on adding a portion for each week so all group members understand their tasks for each week. This will keep things organized, as everyone will create a new branch each week and add a READ.ME to explain what steps were taken to advance to our finished goal. Once we have completed all steps, I will create a new final READ.ME to establish/summarize all required attributes of the project and our processes. 

- At least one branch for each team member: (still waiting for Stephanee to add her section). I'm taking over Emma's portion since she's out of town this week but she will still need to create her branchs per instructions. 

- Each team member has at least four commits for the duration of the first segment: 

#### Machine Learning Model: 🔼
- Which model did I choose and why?

For starters, I found it best to go with a supervised machine learning model because it deals with labeled data. Supervised learning is a great option when it comes to predictions, since our goal as a team is to create create a model that allows users to predict the 2022 FIFA World Cup winner based on past information, supervised learning makes the most sense. Supervised learning takes two forms, regression, and classification. I chose to work with classification because it's best used to predict discrete outcomes and is used to identify the category of new observations based on training data.
Thus, our machine learning model will learn from our given datasets and classify new observations into several classes or groups (predicted winners based on each observation).

- How am I training the model?

First dataset: Revised_International_Matches

Multiple questions will need to be addressed before training the model. First, I'll need to look over both datasets and decide which columns (categories) are most fit to help predict my final goal outcome. The first dataset (International_Matches.csv) has 25 columns, however, 8 columns appear empty so I will first delete these unnecessary values because they serve no true purpose in my results. I will evaluate the remaining columns and decide which will be necessary for the model's final predictions and which can be set aside. 

I've dropped all columns that serve no purpose and set aside a portion of our dataset to evaluate my model. 

Now, I need to decide which factors are best for training my model to fit our predictions. When determining what team is most likely to win, you would probably want to know the best and worst teams. The dataset we chose, however, dates back to the start of the tournament in 1930. Thus, I decided to delete all of the years ranging from 1930-2000. My model will now only predict the scoring of games from the past 22 years (2000-01-01 --> 2022-08-28) 

Next, I created two new df that assorts the rankings of home and away teams. This provides the model with the ability to display the worst from the best teams over 22 years for both home and away games for each team. 

Second dataset: Revised_Players22

This dataset started with over 50 columns, all of which summarize soccer players from that year who played pro. The goal, however, is to only pay attention to FIFA champion players so I dropped all players who didn't fit that specific qualification. 
Next, I decided which columns would be most interesting to compare with potential winners. I kept players height, weight, age, nationality, and body type. These categories will be the defining objects of our model when it comes to predicting future winners based on players' characteristics. 


- What is the model's accuracy?

- How does this model work?

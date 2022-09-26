# FIFA_World_Cup

### Rubric For This Week: WEEK 2

#### Machine Learning Model: 🔼
- Description of preliminary data preprocessing.

The first step I took was cleaning and dropping unnecessary columns from both of our selected datasets. Check out our data folders to see the starting files, cleaned files, and the codes used to create the finalized products. Once I had cleaned both datasets (Players22.csv and International_Matches.csv), we merged them and dropped a few more columns so we could apply them to the finished machine learning model. The dataset we used, after merging is called (Both_Sources_CleanedCombined.csv). I plugged this dataset into my model to create the final version. Initially, I created my model using a different dataset because I thought that merging the datasets would be too complex for the model to predict. In the end, however, the new combined dataset worked extremely well in the model, even better than the original dataset I had used. 

Once combined to create the final dataset we're using, we dropped over 50 different columns between both files. I also converted the 'date' column to only display the year 2022 so we could use the players' attributes properly since they were based on 2022 players. Of course, I also dropped all of the games that weren't at an international level since they weren't playing a role in our final question. 

Target variables are the variable whose values are modeled and predicted by other variables. Thus, the home_team_result_win variable would be the target variable because it contains binary data; This variable refers to whether or not the teams won or lost. This matters because if the team had won, we would evaluate the players' attributes to find a pattern. 

The following columns are all considered to be features of the model because each serves a purpose in defining our goal solution: age, weight, height, preferred foot, and body type.

- Description of preliminary feature engineering and preliminary feature selection, including the decision-making process.

Determining what features I would incorporate into the model was challenging. I created over 5 different models while I was trying to decide the best fit model for our project. I ended up creating a supervised neural networking model using categorical variables. The model I created filters home and away results using TensorFlow applications. The model incorporates certain players' attributes such as age, height, weight, preferred foot, and body type. I started with only two hidden layers but after some editing, I chose to use three, there are multiple advantages to adding neurons to our hidden layer in a neural network. Some advantages include a faster-distributed effort to find optimal weights, each neuron can focus on different features, and the model is less likely to fixate on complex variables. The dataset we incorporated had a few complex columns that the model struggled to define but after adding a hidden layer the model become more accurate. 

- Description of how data was split into training and testing sets.

<img width="967" alt="Screen Shot 2022-09-25 at 6 13 06 PM" src="https://user-images.githubusercontent.com/104043438/192172176-46264969-646c-48e4-86b8-01efedce78b0.png">

To address the limitations of the basic neural network, we can implement a more robust neural network model by adding additional hidden layers. A neural network with more than one hidden layer is known as a deep neural network:

<img width="572" alt="Screen Shot 2022-09-25 at 6 13 50 PM" src="https://user-images.githubusercontent.com/104043438/192172218-a9af502b-7c1d-404a-9993-73089ab628a3.png">

I split the data into training and testing sets by first 'importing from sklearn.model_selection import train_test_split'. I set a random_state of 50 so that the results are reproducible, that is every time we run the code, the same instances will be included in the training and testing sets. 

<img width="1319" alt="Screen Shot 2022-09-25 at 6 20 16 PM" src="https://user-images.githubusercontent.com/104043438/192172556-1f2c5229-76c5-44c8-9150-5cfdc1123ed2.png">

- Explanation of model choice, including limitations and benefits.

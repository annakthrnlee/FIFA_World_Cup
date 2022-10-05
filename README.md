# FIFA_World_Cup

## Rubric For This Week: WEEK 3

### Machine Learning Model: 

#### Perform a quality assurance check on project deliverables against rubric requirements, and test the code: X
Students will be expected to submit the working code for their machine learning model, as well as the following:

- Description of data preprocessing

Preprocessing is the steps taken to prepare the data to make them usable for building machine learning models. 
The data sources we started with (Players22.csv and International_Mtaches.csv) went through an extensive preprocessing process. Both sources contained a large amount of data and would have been considered 'big data' sources before cleansing. To begin the preprocessing steps, I first determined which columns I would need to keep to create a sustainable model that accurately portrayed the group's hypothesis. After deleting nearly 50+ rows between the two datasets, I then changed the date column so that we were only working with games and players from 2022.

<img width="653" alt="Screen Shot 2022-10-05 at 11 54 48 AM" src="https://user-images.githubusercontent.com/104043438/194128588-45a47708-7120-4e83-a902-c804313ecd0a.png">

After both sources only contained the desired columns and variables, I went through and deleted any 'NaN' values so that the model wouldn't have any random values incorporated into the accuracy score. 
Then, I merged both of these revised datasets into one final source to upload into the model. The question are group is working to answer is if player's attributes play any role in the home team's win or lost ratio. Thus, the final data source looked like this before incorporating it into my neural networking model: 

<img width="927" alt="Screen Shot 2022-10-05 at 11 59 04 AM" src="https://user-images.githubusercontent.com/104043438/194129389-65887fe8-7b8d-46cc-b7a0-6409d0581eb7.png">

- Description of feature engineering and the feature selection, including the decision-making process

The group decided to use a neural networking model with categorical variables. After cleaning the dataset and uploading the source, I imported the necessary dependencies. I also found it to be helpful for summary purposes to do a value count on the attributes we were testing (age, weight, height) just to see how many values were being introduced to the model. After reviewing the columns, the categorical variables were set as followed: 

<img width="500" alt="Screen Shot 2022-10-05 at 12 02 50 PM" src="https://user-images.githubusercontent.com/104043438/194130074-9fafa091-cf57-44c4-8729-f88bd26b9cdd.png">

Using an OneHotEnocder instance I changed the text labels (win, lost, draw) into numerical values. If the game was won for a specific row then that column would be equal to 1 and the column with lose and draw would be replaced with a 0. This helped the model understand the data in a more efficient way. 

The features I selected for this model was incorporating three hidden layers and the Rectified Linear Unit (ReLU) function. At first, I had only used two hidden layer models with a high amount of neurons, but the model had trouble understanding the similarities between the variables. Thus, by adding an extra hidden layer and lowering the neuron count for each, the model could better identify nonlinear characteristics of the input data without requiring more input data. 

<img width="1003" alt="Screen Shot 2022-10-05 at 12 13 53 PM" src="https://user-images.githubusercontent.com/104043438/194132255-270f4784-4493-46eb-994e-b0019981fa7b.png">

- Description of how data was split into training and testing sets. As well as training the model

Using Scikit-learn's train_test_split method, I split the data into training and testing. I incorporated a random state of 50 and a test size of 0.2. After doing so the model split the training and testing data, 1950 training examples and 488 testing examples. See the screenshots below to better understand the process: 

<img width="606" alt="Screen Shot 2022-10-05 at 12 26 11 PM" src="https://user-images.githubusercontent.com/104043438/194134554-a5c563dd-cbd6-4108-8882-2beeedf6a8ae.png">

<img width="713" alt="Screen Shot 2022-10-05 at 12 28 41 PM" src="https://user-images.githubusercontent.com/104043438/194135036-415cd2db-1c1a-4f2e-9f89-814522506fb1.png">
<img width="399" alt="Screen Shot 2022-10-05 at 12 28 52 PM" src="https://user-images.githubusercontent.com/104043438/194135068-6cfc0fad-8792-463f-b5cd-e17f7adda232.png">

<img width="847" alt="Screen Shot 2022-10-05 at 12 30 53 PM" src="https://user-images.githubusercontent.com/104043438/194135464-8522e958-50f6-4202-b0fd-a1728ed06aa9.png">

- Explanation of model choice, including limitations and benefits

The model I chose was a neural network using classification. I chose to use a neural networking model because they are an advanced form of machine learning that recognizes patterns and features in input data and provides a clear quantitative output. The data I used is complex because there is no clear linear relationship; Neural networks are effective at detecting complex, nonlinear relationships. Additionally, neural networks have a greater tolerance for messy data and can learn to ignore noisy characteristics in data. 

Some limitations of using a neural networking model are that the layers of neurons are often too complex to dissect and understand (creating a black box problem), and neural networks are prone to overfitting (characterizing the training data so well that it does not generalize to test data effectively). I was faced with a similar problem when I first started creating my model, I wasn't sure what exactly the model was even testing for. I then realized I had to change a few variables within the model to prevent any "leaky data".

- Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)

I conducted a few changes in my model over this week because I realized that my accuracy score was way too accurate, scoring at 100%. I knew that when it came to sports betting this wasn't possible and the issue layed within the variables I chose for X and Y.
For starters in deliverable 2, my model had a problem with "leaky data" there were way too many variables being considered, and the answer was given, so it makes sense that the model was predicting at 100% accuracy. I realized I needed to remove unnecessary columns such as the country of each game played, we're trying to find a pattern between the player's attributes and the team win/lose ratio. The country doesn't play a role in finding this outcome, or at least it doesn't for our project. 

Once I changed my X variables and made sure my testing data was being considered, the accuracy score of the model drooped significantly which was a good thing in this case! I now know that the model is consdiering the data I had wasnted it to before, without just examining the answer of win or lose. 

- Description of current accuracy score

When I first started creating my model, the accuracy score was 100%. I knew this couldn't be correct considering the data we were working with. After changing my X variables so that the model wouldn't just consider the win/lose ratio as the only aspect, the model's score dropped. The model now is acknowledging all player's attributes in its decision and then determining any similarities between those variables and the win/lose ratio. 

<img width="679" alt="Screen Shot 2022-10-05 at 2 02 25 PM" src="https://user-images.githubusercontent.com/104043438/194152232-bf5c2030-c22d-46f3-83dc-84f2d42dac5b.png">

- Additionally, the model obviously addresses the question or problem the team is solving.

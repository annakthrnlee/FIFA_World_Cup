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
- Description of how data was split into training and testing sets
- Explanation of model choice, including limitations and benefits
- Explanation of changes in model choice (if changes occurred between the Segment 2 and Segment 3 deliverables)
- Description of how they have trained the model thus far, and any additional training that will take place
- Description of current accuracy score
- Additionally, the model obviously addresses the question or problem the team is solving.

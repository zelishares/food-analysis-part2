# food-analysis-part2

## SQL-Scripts
- View_Q3.sql - contains the SQL command to create the view_question_3.
- SQL_view_Q1.sql - contains the SQL comands to create the view for question 1.

## Tasty
- 1_api-to-db.ipynb - This Jupyter Notebook contains the AWS Lambda-Function to fetch the data from selected tags from the API, clean it and upload the data to the data lake.
- 2_api-to-db.ipynb - This Jupyter Notebook contains the AWS Lambda-Function to fetch the data from all cuisine tags from the API, clean it and upload the data to the data lake.
- 3_dl-to-dwh.ipynb  - This Jupyter Notebook contains the AWS Lambda-Function to transfer the data from the data lake to the data warehouse and create two new tables with the ingredients and their count as well as the tags and their count.
- Lambda_recent_tweet_cleaning - This Jupyter Notebook contains the AWS Lambda-Function to catch the data from the lake and do some cleaning and adding the recipe name for the recent tweets. The data is saved in the lake again.
- Lambda_history_tweets cleaning - This Jupyter Notebook contains the AWS Lambda-Function to catch the data from the lake and do some cleaning and adding the recipe name for the historicyl tweets. The data is saved in the lake again.
- Lambda_combining_data - This Jupyter Notebook contains the AWS Lambda-Function to catch the cleand twitter data from the lake and loads it in the data warehouse.

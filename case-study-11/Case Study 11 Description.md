Date Assigned: November 13, 2025
Date Submitted: November 20, 2025

This case study asked students to create a machine learning model using NCAAF 4th and 1 plays from the 2022 season through the first few weeks of the 2025 season. A raw data set, which was uploaded as a .csv within this folder, was found using Pro Football Focus (PFF) and downloaded in Microsoft Excel. From there, the raw .csv file was scraped using Microsoft Power Query in order to remove irrevelant columns and prevent data leakage. For this course, data leakage was defined as any piece of information that would not be known at the time of the decision. Within the context of this problem, the goal was to remove any information that would not be known at the time of the 4th down decision (whether or not to go for it) and the 4th down play call. The full data transformation process can be found in the Microsoft Excel Workbook within this folder.
    
The target variable of interest for this machine learning model was whether or not the play resulted in a first down. Because several variables were categorical and the target variable was binary, a decision tree classifier was constructed instead of a decision tree regressor. Students were instructed to use Google Colaboratory and Gemini for this assignment. A .txt file within this folder shows the prompt that I created for Gemini. I instructed Gemini to use a maximum depth of two, conduct a train/test split of 0.8/0.2, create binary "dummy" variables for categorical features, optimize for accuracy, create two labeled confusion matrices, and to visualize the decision tree when finished. Of course, the Jupyter Notebook file for this assignment can be found within this folder.

Below are the questions asked about the machine learning model created using Google Colab and Gemini. My answers to these questions can be found on the same .pdf, which is titled 'SPAX402 Case Study 11.pdf' in this folder.

NCAA 4th and 1 Decision Tree Classifier Questions
1. What did your tree split on?
2. Why do you think your tree split there?
3. If you had relevant takeaways from the tree, what would you mention to your head coach?
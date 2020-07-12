The document contains the step by step instruction for processing movies data set on a windows machine. 

0) Download the data files movies.dat and ratings.dat onto local desktop. Create a folder by name D:\Delme\Movie and download the files. 

1)	Movie.dat contains the year and the genre of the movies. But it needs to be scrubbed to extract the required details.
The script 1_movies.py does the data scrubbing and generates the clean file 2_movies_clean.csv

2)	Ratings is present in the file ratings.dat. Using MS Excel, import the file and specify “::” delimited. File gets imported successfully.
Save the file as 3_ratings_clean.csv

3)	Load the files movies_clean.csv and ratings_clean.csv onto Bigquery using the “Create Table” module with upload option and choose dynamic schema.
Both the files are imported successfully onto Bigquery as tables
Table names: delme_movies and delme_ratings.

4)	Run the SQL 4_movies.sql against the Bigquery dataset.

5)	Finally, data can be visualized inside Google Data Studio as below. We can add a year filter to see only the data for a particular year. Please refer to 5_Data_Studio.jpg 

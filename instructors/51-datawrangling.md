---
title: Data Wrangling and exploration
---

#### Data Wrangling steps

Each data project requires a unique approach to ensure its final dataset is reliable and accessible. That being said, several processes typically inform the approach. These are commonly referred to as data wrangling steps or activities.

##### Discovery

Discovery refers to the process of familiarizing yourself with data so you can conceptualize how you might use it. You can liken it to looking in your refrigerator before cooking a meal to see what ingredients you have at your disposal.

During discovery, you may identify trends or patterns in the data, along with obvious issues, such as missing or incomplete values that need to be addressed. This is an important step, as it will inform every activity that comes afterward.

##### Structuring

Raw data is typically unusable in its raw state because it's either incomplete or misformatted for its intended application. Data structuring is the process of taking raw data and transforming it to be more readily leveraged. The form your data takes will depend on the analytical model you use to interpret it.

##### Cleaning

Data cleaning is the process of removing inherent errors in data that might distort your analysis or render it less valuable. Cleaning can come in different forms, including deleting empty cells or rows, removing outliers, and standardizing inputs. The goal of data cleaning is to ensure there are no errors (or as few as possible) that could influence your final analysis.

##### Enriching

Once you understand your existing data and have transformed it into a more usable state, you must determine whether you have all of the data necessary for the project at hand. If not, you may choose to enrich or augment your data by incorporating values from other datasets. For this reason, it's important to understand what other data is available for use.

If you decide that enrichment is necessary, you need to repeat the steps above for any new data.

##### Validating

Data validation refers to the process of verifying that your data is both consistent and of a high enough quality. During validation, you may discover issues you need to resolve or conclude that your data is ready to be analyzed. Validation is typically achieved through various automated processes and requires programming.

##### Publishing

Once your data has been validated, you can publish it. This involves making it available to others within your organization for analysis. The format you use to share the information—such as a written report or electronic file—will depend on your data and the organization's goals.

#### Importance of Data Wrangling

Any analyses you perform will ultimately be constrained by the data that informs you. If data is incomplete, unreliable, or faulty, then analyses will be too—diminishing the value of any insights gleaned.

Data wrangling seeks to remove that risk by ensuring data is in a reliable state before it's analyzed and leveraged. This makes it a critical part of the analytical process.

It's important to note that data wrangling can be time-consuming and taxing on resources, particularly when done manually. This is why many organizations institute policies and best practices that help employees streamline the data cleanup process—for example, requiring that data include certain information or be in a specific format before it's uploaded to a database.

For this reason, it's vital to understand the steps of the data wrangling process and the negative outcomes associated with incorrect or faulty data.

> ***Case study example:***
> 
> *A PhD student has recorded lab results in an Excel spreadsheet.
> She has a copy of the raw results, but for her analysis, she wants to remove some outliers.
> She manually deletes some rows and saves the data as .csv.
> There is no record of what she deleted or the rule she applied, and a manual check of the differences between her data and the original would be necessary.*
> 
> *Instead, another PhD student writes an R script that reads the raw data file, uses a filter where the method and parameters are saved, and saves the output as a CSV file. Her process for removing outliers is reproducible.*

Within a computational project, these steps may accidentally become obscure and so specific effort is required to make sure no one is manually processing data in a way that can't be repeated and that all the steps are recorded.

```
genomeProject/processing/data_cleaning.py

import pandas as `pd`

# Reads raw data from a directory.
df = pd.read_csv('genomeProject/data/220103_GenomicData.csv')

# Shows the first 5 rows of the data set.
df.head(5)

# Remove unwanted columns by name
df.drop(columns=['year','quasi_column_ID'],inplace=True)

# Rename a column name
df.rename(columns={"batch_3_4_7": "batch_347"})

# Shows the first 5 rows of the data set now with the columns renamed and some removed
df.head(5)

# Change the index of the data to an ID
df = df.set_index('ID')

# Save processed data set
df.to_csv(genomeProject/data/220103_GenomicData_processed)
```

## Data exploration and insights

The first part of data analysis is exploration. It is usually helpful to look at the data directly, and this might involve:

- Printing rows of a dataset in a notebook/IDE
- Printing the summary statistics for each row of a column
- Producing a scatter plot or histogram for a column of data

Visualising processed data before any analysis is usually always helpful.
When working with data sets, `ggplot` (in R) or `matplotlib`/`seaborn` (in Python) libraries provide attractive figures that can be produced very quickly. Visualising data is useful for exploring data from the start, and also illustrates the methodology or the steps of analysis.
This is particularly valuable in Jupyter Notebooks. Code to produce figures should be literate, functional, and reusable in the same way as data cleaning and analysis code.
That way future visualisations can be easily updated or reused.

Unlike data visualisations for release/communicating results/publications, these figures may be more practical than aesthetic.
It is perfectly acceptable to open 25 histograms at once when exploring data, even though in an eventual paper you would only show one.
Data visualisation is a tool, and small functions or scripts can make sure exploring data is practical and easy to repeat.

The code to produce the following figure is below.
Libraries like `matplotlib` do a lot of the hard work for you, and there are countless tutorials for different kinds of visualisations.

![](https://www.oreilly.com/library/view/python-data-science/9781491912126/assets/pyds_04in39.png)

```
plt.hexbin(x, y, gridsize=30, cmap='Blues')
cb = plt.colorbar(label='count in bin')
```



---
title: "Data analysis and results"
teaching: 0
exercises: 0
questions:
- "Key question (FIXME)"
objectives:
- "First learning objective. (FIXME)"
keypoints:
- "First key point. Brief Answer to questions. (FIXME)"
---

## Data Wrangling and Cleaning

Code that cleans and processes data (**processing code**) provides the very beginning of the data analysis pipeline: starting with raw data and resulting in processed data. 

<img src="https://i.imgur.com/YnWOBja.png" alt="drawing" width="800"/>

Cleaning data means it can be easily read and analysed by machines and used in analysis pipelines. It can involve changing labels, subsetting, integration, extraction, removing missing points, and anything that makes data useable and functional. Regardless of the methods, the code involved with data cleaning steps should be carefully documented so that the steps involved can be repeated from raw data to cleaned data. When reviewing this type of code, consider whether the steps involved are readable and in the correct order. 

> ***Case study example:***
>
> *A PhD student has recorded lab results in an Excel spreadsheet. She has a copy of the raw results, but for her analysis she wants to remove some outliers. She manually deletes some rows and saves the data as .csv. There is no record of what she deleted or the rule she applied, and a manual check of the differences between her data and the original would be necessary.*
>
> *Instead, another PhD student writes an R script that reads the raw data file, uses a filter where the method and parameters are saved, and saves the output as a csv file. Her process for removing outliers is reproducible.* 

Within a computational project, these steps may accidentally become obscure and so specific effort is required to make sure no one is manually processing data in a way that can't be repeated and that all the steps are recorded. 

```
DataProcessingScript.py

# Reads raw data from a directory.
df = pd.read_csv('Datasets/220103_GenomicData.csv')

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
```

## Data exploration and insights


## Data Analysis and Statistics



Visualising processed data before any analysis is usually always helpful. When working with data sets, `ggplot` (in R) or `matplotlib`/`seaborn` (in Python) libraries provide attractive figures that can be produced very quickly. Visualising data is useful for exploring data from the start, and also illustrate methodology or the steps of an analysis. This is particularly valuable in Jupyter Notebooks. Code to produce figures should be literate, functional, reuseable in the same way as data cleaning and analysis code. That way future visualisations can be easily updated or reused. 

(Need to discuss this further, what is patronising?)

- Choices for statistical analysis


```
# Define a butterworth filter function

import numpy as np
from scipy.signal import butter,filtfilt

df = pd.read_csv('Datasets/220103_ProcessedGenomicData.csv')

# Filter requirements.

T = 5.0         # Sample Period
fs = 30.0       # sample rate, Hz
cutoff = 2      # desired cutoff frequency of the filter, Hz
nyq = 0.5 * fs  # Nyquist Frequency
order = 2       # quadratic
n = int(T * fs) # total number of samples

def butter_lowpass_filter(data, cutoff, fs, order):
    normal_cutoff = cutoff / nyq

    # Get the filter coefficients 
    b, a = butter(order, normal_cutoff, btype='low', analog=False)
    filtered_data = filtfilt(b, a, data)

    return filtered_data

# Apply filter to the data
filtered_data = butter_lowpass_filter(data, cutoff, fs, order)
```

## Communicating Results

- What elements are involved

## Producing figures

For publication, well constructed figures improve science communication and help improve the impact of your research. It is therefore worth taking the time for researchers to learn the technical skills in R, Python, or another language. Producing figures in Excel is limiting and often frustrating, particularly as there are only limited options in layout and type of figure. Being able to produce multipanel figures with annotations and different colour schemes is complex but one of the advantages of learning a data science language. 

![](http://www.sthda.com/sthda/RDoc/figure/ggplot2/ggplot2-cheatsheet-histogram-1.png)

![](https://www.oreilly.com/library/view/python-data-science/9781491912126/assets/pyds_04in33.png)

![](https://www.oreilly.com/library/view/python-data-science/9781491912126/assets/pyds_04in126.png)


The code to produce the following figure is below. Libraries like `matplotlib` do a lot of the hard work for you, and there are countless tutorials for different kinds of visualisations.

![](https://www.oreilly.com/library/view/python-data-science/9781491912126/assets/pyds_04in39.png)


``` 
plt.hexbin(x, y, gridsize=30, cmap='Blues')
cb = plt.colorbar(label='count in bin')
```

In general there are best practises for coherent and engaging figures, 

- Best practices
- Versions
- Publication with persistent identifier

- Data Visualisation as a tool
  - Reference: https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/

## Conclusion
- What gaps have we filled in this section
- Project management overview 

## Resources for taking this to next level

- ​​https://the-turing-way.netlify.app/collaboration/new-community.html 

{% include links.md %}


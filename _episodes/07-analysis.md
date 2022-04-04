---
title: "Data analysis and results"
teaching: 20
exercises: 0
questions:
- "What is the role of data wrangling?"
- "What are good practices for keeping code in check?"
- "How to use data visualisation for insight and communication?" 
objectives:
- "First learning objective. (FIXME)"
keypoints:
- "First key point. Brief Answers to questions. (FIXME)"
---

## Data Wrangling and Cleaning

Code that cleans and processes data (**processing code**) provides the very beginning of the data analysis pipeline: starting with raw data and resulting in processed data. 

<img src="https://i.imgur.com/YnWOBja.png" alt="drawing" width="800"/>

Cleaning data means it can be easily read and analysed by machines and used in analysis pipelines. 
It can involve changing labels, subsetting, integration, extraction, removing missing points, and anything that makes data useable and functional. 
Regardless of the methods, the code involved in data cleaning steps should be carefully documented so that the steps involved can be repeated from raw data to clean data. 
When reviewing this type of code, consider whether the steps involved are readable and in the correct order. 

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

## Data Analysis and Statistics

> (Need to discuss this further, what is patronising?)

With readable, clean, processed data that you have explored using figures, the next stage of the data pipeline is analysis. 

<img src="https://i.imgur.com/YnWOBja.png" alt="drawing" width="800"/>

Depending on your computational project, this may involve elaborate and complex analyses, modelling, simulation, and even machine learning. 
However, even if this step is just running a single statistics test, keeping the code modular in clearly defined steps is key. 

Here is an example of applying a Butterworth filter to some data in Python. 
The specifics don't matter, you can consider this code pseudocode for any kind of analysis step. 

```
genomeProject/analysis/01_butterworth_filter.py


import numpy as np
from scipy.signal import butter,filtfilt

# (A) Read processed data from file
df = pd.read_csv('genomeProject/data/220103_GenomicData_processed.csv')

# (B) Defining filter parameters
T = 5.0         # Sample Period
fs = 30.0       # sample rate, Hz
cutoff = 2      # desired cutoff frequency of the filter, Hz
nyq = 0.5 * fs  # Nyquist Frequency
order = 2       # quadratic
n = int(T * fs) # total number of samples

# (C) Define the Butterworth Filter Function
def butter_lowpass_filter(data, cutoff, fs, order):
    normal_cutoff = cutoff / nyq

    # Get the filter coefficients 
    b, a = butter(order, normal_cutoff, btype='low', analog=False)
    filtered_data = filtfilt(b, a, data)

    return filtered_data

# (D) Apply Butterworth Filter Function to the data
filtered_data = butter_lowpass_filter(data, cutoff, fs, order)

```

(A) the processed data is read into the script. Next, (B) the fixed parameters are set and named with comments. 
These fixed numbers are saved as variables with names.  In (C) the filter itself is written as a Python Function, which means it can be called multiple times throughout the script. 
Because the parameters are not written into the function directly (so it doesn't say `b, a = butter(2, 15,btype='low', analog=False)` but instead uses variables) this code is reusable without having to paste and edit the numbers every time you apply a function. 

You can also call this function in other scripts. 
It can make sense to produce a file with the functions inside that can be imported into different scripts in case other projects also have similar methods.  This is known as a package or library. 
This means altering a function doesn't mean searching across every file on every project and changing it dozens of times. 


> ***Case Study***
>
> *A postdoc wrote a helpful series of functions for data analysis with neurophysiology recordings. 
> The postdoc wrote them as reuseable, and so two PhD students copied and pasted these blocks of code into their code and used it to analyse the data for their projects.* 
>
> *The postdoc later discovers a better way of writing the functions. One PhD student also wants to change the method and so has to search through his files to replace the code. 
> The other PhD student wants the old method in some files and the new method in others, and so does not change all of them. It is therefore complex to follow the differences in the methods across the projects, and this is very open to errors in typos.*
> 
> *Instead, the postdoc could have saved his functions in the lab's private repo which becomes the master copy and students pull from this. 
> With the functions saved in a library, the PhD students can import them into their scripts. 
> Now when the postdoc changes the functions and saves them to the repo, PhD students can choose to update their version of the functions. 
> The students should document which version they have used.*

The output of the analysis code may be statistics results that are reported in a paper, and therefore the steps required to reproduce them are critically important. 

## Figures for Communicating Results

With the analysis complete, data visualisation is usually used to communicate results. 
The code used to produce figures is the next step in the data pipeline. 

<img src="https://i.imgur.com/YnWOBja.png" alt="drawing" width="800"/>

For publications or posters, well-constructed figures improve science communication and help improve the impact of your research. 
Being able to produce multipanel figures with annotations and different colour schemes is complex but one of the advantages of learning a data science language. 

It is therefore worth taking the time for researchers to learn the technical skills in R, Python, or another language to produce visualisations. 
Producing figures in Excel is limiting and often frustrating, particularly as there are only limited options in layout and type of figure. 

<img src="https://www.biorxiv.org/content/biorxiv/early/2021/12/19/2021.12.16.473013/F1.large.jpg?width=800&height=600&carousel=1" alt="box plots" width="500"/>

> *Exploring constraints on a wetland methane emission ensemble (WetCHARTs) using GOSAT observations, Parker et al 2020*
>
> https://doi.org/10.5194/bg-17-5669-2020

<img src="https://www.pnas.org/cms/10.1073/pnas.1912459116/asset/86065128-2b04-47e8-ba0f-6a649ff72e3e/assets/graphic/pnas.1912459116fig04.jpeg" alt="box plots" width="600"/>

> *Spatial transcriptome profiling by MERFISH reveals subcellular RNA compartmentalization and cell cycle-dependent gene expression, Xia et al 2019*
> *https://www.pnas.org/doi/10.1073/pnas.1912459116*

<img src="https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fs41593-019-0559-0/MediaObjects/41593_2019_559_Fig1_HTML.png?as=webp" alt="box plots" width="600"/>

These figures are more than just visualising data, they're about communication and require adjusting the styles and formats within `ggplot` or `matplotlib` or other libraries. 

As before, any code used to produce visualisations should be reproducible and literature. Often in peer review figures need to be adjusted or altered, and having the code to do so makes the process much simpler. 

It is usually cleaner to keep data visualisation code separate from analysis, just to keep a code base organised and modular. 

### Accessibility
- For simple figures, using shaded vs unshaded and single colour is best when considering publications may be printed in black and white
- Colours should be colourblind friendly, [resources are available](https://colorbrewer2.org/) for this. 

<img src="https://ristretto.black/wp-content/uploads/2018/12/palette_recommended-1-1024x374.png" alt="box plots" width="500"/>

- If using a colour map, avoid the standard rainbow. Other rainbows like [viridis colour maps]() can be downloaded. The brightness varies across the rainbow which leads to visual artefacts that do not exist:

<img src="https://www.researchgate.net/profile/Mohammad-Raji/publication/311530664/figure/fig1/AS:841506323705857@1577642150559/Typical-example-illustrating-the-aesthetics-of-a-good-b-vs-a-bad-a-colormap-Color.png" alt="box plots" width="400"/>

> *The transition between greens to yellow and red are more prominent than the transitions between greens and blues, making stark boundaries that do not exist. A rainbow with equal brightness solves the problem.* 
>
> *Sisneros et al (2016) Chasing Rainbows: A Color-Theoretic Framework for Improving and Preserving Bad Colormaps. https://doi.org/10.1007/978-3-319-50835-1_36*

- Keeping readability in mind with text size/font and similar considerations
=======
- "First key point. Brief Answer to questions. (FIXME)"
---

## Data exploration and insights

- Data wrangling
- Data Visualisation as a tool
  - Reference: https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/

## Statistical analysis

- Choices for statistical analysis

## Communicating Results

- What elements are involved

## Producing figures

- Best practices
- Versions
- Publication with persistent identifier

## Conclusion
- What gaps have we filled in this section
- Project management overview 

## Resources for taking this to next level

- https://the-turing-way.netlify.app/collaboration/new-community.html 
- Data Visualisation as a tool
  - Reference: https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/

{% include links.md %}


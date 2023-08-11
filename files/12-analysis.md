---
title: Coding basics
---

 

## Analysis workflow

A usual workflow involves some data processing, before the actual analysis can be done. Statistical analysis and figure production should be decided before the data is looked at to prevent harking. Explorative analysis (looking for correlation and interpretation of the results) can be done anytime, as long as no hypothesis is rejected from that analysis. 

![](fig/dataflow.png)

### Data (pre-)processing

Code that cleans and processes data (**processing code**) provides the very beginning of the data analysis pipeline: starting with raw data and resulting in processed data.
When the data was not collected in a computer readable format, or when metadata is missing, this step can be the most time consuming of all.


> Data wrangling involves cleaning data so it can be easily read and analysed by machines. It can also involve integration, extraction, removing missing points, and anything that makes data useable and functional. Regardless of the methods, the code involved with data cleaning steps should be carefully documented so that the steps involved can be repeated from raw data to cleaned data.



::::::::instructor
Data wrangling—also called data cleaning, data remediation, or data munging—refers to a variety of processes designed to transform raw data into more readily used formats. The exact methods differ from project to project depending on the data you're leveraging and the goal you're trying to achieve.

Some examples of data wrangling include:

- Merging multiple data sources into a single dataset for analysis,
- Identifying gaps in data (for example, empty cells in a spreadsheet) and either filling or deleting them,
- Deleting data that's either unnecessary or irrelevant to the project you're working on,
- Identifying extreme outliers in data and either explaining the discrepancies or removing them so that analysis can take place.

::::::::

Data wrangling can be a manual or automated process. In scenarios where datasets are exceptionally large, automated data cleaning becomes a necessity.




Cleaning data means it can be easily read and analysed by machines and used in analysis pipelines.
It can involve changing labels, subsetting, integration, extraction, removing missing points, and anything that makes data usable and functional.

Regardless of the methods, the code involved in data cleaning steps should be carefully documented so that the steps involved can be repeated from raw data to clean data.
When reviewing this type of code, consider whether the steps involved are readable and in the correct order.
Especially, when filtering data out, this should be consistent and indicated in the main method description.

## Data visualisation, Analysis and Statistics

:::warnings
Visualising data before designing the data analysis is a form of harking, as you will cherry pick your data (filtering some data out) or cherry pick an analysis (what looks promising). You should always design your analysis before visualising the data, or use visualised data as training data, not included in the final analysis.
:::


With readable, clean, processed data, the next stage of the data pipeline is analysis. 


Depending on your computational project, this may involve elaborate and complex analyses, modelling, simulation, and even machine learning.
However, even if this step is just running a single statistics test, keeping the code documented and modular in clearly defined steps is key.

Here is an example of applying a Butterworth filter to some data in Python.
The specifics don't matter, you can consider this code pseudocode for any kind of analysis step.

```
genomeProject/analysis/01_butterworth_filter.py

#### 01_butterworth_filter, v1.0
##this code read processed data and apply a low pass filter,
## the output variable is called  filtered_data

#  Import dependencies
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
filtered_data = butter_lowpass_filter(df, cutoff, fs, order)

```


::::::: challenge
```
genomeProject/analysis/01_bf.py

import numpy as np
from scipy.signal import butter,filtfilt

df = pd.read_csv('genomeProject/data/220103_GenomicData_processed.csv')

normc = 2 / 15
b, a = butter(2, normc, btype='low', analog=False)
filtered_data = filtfilt(b, a, df)


```
The code above will give the same result, why is the first one better on the long run ?

:::solution
- easier to read for non-coders
- commented
- variables easy to change
- better names
- function reusable + possibility to write tests
:::

:::::::

(A) the processed data is read into the script. Next, (B) the fixed parameters are set and named with comments.
These fixed numbers are saved as variables with names.  In (C) the filter itself is written as a Python Function, which means it can be called multiple times throughout the script.
Because the parameters are not written into the function directly (so it doesn't say `b, a = butter(2, 15,btype='low', analog=False)` but instead uses variables) this code is reusable without having to paste and edit the numbers every time you apply a function.

You can also call this function in other scripts.
It can make sense to produce a file with the functions inside that can be imported into different scripts in case other projects also have similar methods.  This is known as a package or library.
This means altering a function doesn't mean searching across every file on every project and changing it dozens of times.

::::instructor
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
::::

The output of the analysis code may be statistics results that are reported in a paper, and therefore the steps required to reproduce them are critically important.

### Figures for Communicating Results

> When working with data sets, `ggplot` (in R) or `matplotlib`/`seaborn` (in Python) libraries provide attractive figures that can be produced very quickly. Visualising data should not not wait for the point of publication, and can be used to explore data from the start, and also illustrate methodology. This is particularly valuable in Jupyter Notebooks. Code to produce figures should be literate, functional, reuseable in the same way as data cleaning and analysis code. That way future visualisations can be easily updated or reused.

With the analysis complete, data visualisation is usually used to communicate results.
The code used to produce figures is often the next step in the data pipeline.


For publications or posters, well-constructed figures improve science communication and help improve the impact of your research.
Being able to produce multipanel figures with annotations and different colour schemes is complex but one of the advantages of learning a data science language.

It is therefore worth taking the time for researchers to learn the technical skills in R, Python, or another language to produce visualisations.
Producing figures in Excel is limiting and often frustrating, particularly as there are only limited options in layout and type of figure.

<img src="https://www.biorxiv.org/content/biorxiv/early/2021/12/19/2021.12.16.473013/F1.large.jpg?width=800&height=600&carousel=1" alt="box plots" width="500"/>

> *Exploring constraints on a wetland methane emission ensemble (WetCHARTs) using GOSAT observations, Parker et al 2020*
> 
> [https://doi.org/10.5194/bg-17-5669-2020](https://doi.org/10.5194/bg-17-5669-2020)

<img src="https://www.pnas.org/cms/10.1073/pnas.1912459116/asset/86065128-2b04-47e8-ba0f-6a649ff72e3e/assets/graphic/pnas.1912459116fig04.jpeg" alt="box plots" width="600"/>

> *Spatial transcriptome profiling by MERFISH reveals subcellular RNA compartmentalization and cell cycle-dependent gene expression, Xia et al 2019*
> *[https://www.pnas.org/doi/10.1073/pnas.1912459116](https://www.pnas.org/doi/10.1073/pnas.1912459116)*

<img src="https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fs41593-019-0559-0/MediaObjects/41593_2019_559_Fig1_HTML.png" alt="box plots" width="600"/>

These figures are more than just visualising data, they're about communication and require adjusting the styles and formats within `ggplot` or `matplotlib` or other libraries.

As before, any code used to produce visualisations should be reproducible and literate. Often in peer review figures need to be adjusted or altered, and having the code to do so makes the process much simpler.

It is usually cleaner to keep data visualisation code separate from analysis, just to keep a code base organised and modular.

### Accessibility

- For simple figures, using shaded vs unshaded and single colour is best when considering publications may be printed in black and white
- Colours should be colourblind friendly, [resources are available](https://colorbrewer2.org/) for this.

<img src="https://ristretto.black/wp-content/uploads/2018/12/palette_recommended-1-1024x374.png" alt="box plots" width="500"/>

- If using a colour map, avoid the standard rainbow. Other rainbows like [viridis colour maps]() can be downloaded. The brightness varies across the rainbow which leads to visual artefacts that do not exist:

<img src="https://www.researchgate.net/profile/Mohammad-Raji/publication/311530664/figure/fig1/AS:841506323705857@1577642150559/Typical-example-illustrating-the-aesthetics-of-a-good-b-vs-a-bad-a-colormap-Color.png" alt="box plots" width="400"/>

> *The transition between greens to yellow and red are more prominent than the transitions between greens and blues, making stark boundaries that do not exist. A rainbow with equal brightness solves the problem.*
> 
> *Sisneros et al (2016) Chasing Rainbows: A Color-Theoretic Framework for Improving and Preserving Bad Colormaps. [https://doi.org/10.1007/978-3-319-50835-1\_36](https://doi.org/10.1007/978-3-319-50835-1_36)*

Also one should keep readability in mind with text size/font and similar considerations




- Data Visualisation as a tool
  - Reference: [https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/](https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/)

## Statistical analysis

Selection of appropriate statistical method is very important step in analysis of data. A wrong selection of the statistical method not only creates some serious problem during the interpretation of the findings but also affects the conclusion of the study. In statistics, for each specific situation, statistical methods are available to analysis and interpretation of the data. To select the appropriate statistical method, one need to know the assumption and conditions of the statistical methods, so that proper statistical method can be selected for data analysis. Other than knowledge of the statistical methods, another very important aspect is nature and type of the data collected and objective of the study because as per objective, corresponding statistical methods are selected which are suitable on given data. Incorrect statistical methods can be seen in many conditions like use of unpaired t-test on paired data or use of parametric test for the data which does not follow the normal distribution, etc., Two main statistical methods are used in data analysis: descriptive statistics, which summarizes data using indexes such as mean, median, standard deviation and another is inferential statistics, which draws conclusions from data using statistical tests such as student's t-test, ANOVA test, and many others

Statistics goes outside the scope of this course.


## Coding best practices

The order of a script is usually:

- main comments on the script function and goals
- importing all dependencies
- reading inputs, naming outputs
- listing all variables

The latter element is particularly important.
Variables are often a decision taken (for instance it could be some threshold value used for filtering data out, a type of low-pass filter used, or a time window that sub-set the data).
Defining them at the start of the code makes it easier to change and spot.

In practice, your figure and analysis may well depend on the version of the data, code and these variables, so it is often interesting to include this information into the output of the code.
This may take the form of a pdf file, with the figure on the first page, and a table of variables and metadata on the following pages.

## Literate Programming

Literate programming is about comments and documentation and telling other humans what is happening in your pipeline.
Depending on the scale of your computational projects, you may use one or multiple of these options:

- Inline comments when writing code (directly written in the script file)
- A README file describing what your code does
- An online documentation as a user and developer guide with step-by-step explanation
- Quarto/RMarkdown or Jupyter Notebook

Most of these files can be written in Markdown.

Often, literate programming refers to these notebooks form, where the documentation and the code are integrated in one file, which produce one output (html of pdf most of the time).

This course can be thought as a literate programming content. Its source is markdown and Rmarkdown files, its output is a pdf.

## Resources for taking this to next level

- [https://the-turing-way.netlify.app/collaboration/new-community.html](https://the-turing-way.netlify.app/collaboration/new-community.html)
- Data Visualisation as a tool
  - Reference: [https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/](https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/)
  
:::::::::::::::::::::::::::::::::::::::: keypoints

- Can you follow the analysis workflow without reading the code
- Is the code well commented and structures
- Are the figure created accessible
- Is the statistical analysis founded

::::::::::::::::::::::::::::::::::::::::::::::::::



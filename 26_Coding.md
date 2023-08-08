---
title: 'Managing code'
teaching: 40
exercises: 10
---

::::::::::::::::::::::::::::::::::::::: objectives

- First learning objective. (FIXME)
- To make informed decisions using data.

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: questions

- What is the role of data wrangling?
- What is literate programming?
- How to use data visualisation for insight and communication?

::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::::::::::: objectives

- Explain different processes and best practices for code review.
- Discuss tips, tricks and benefits of code review.
- Share some ways to involve all group members in code review.

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: questions

- What are the main objectives and best practices for testing and reviewing code?
- What can continous integration help?
- How can group leaders facilitate a collaborative environment for code review?

::::::::::::::::::::::::::::::::::::::::::::::::::






## Planning for reproducibility and provenance



### Literate Programming

Literate programming is about comments and documentation and telling other humans what is happening in your pipeline.
Depending on the scale of your computational projects, you may use one or multiple of these options:

- Inline comments when writing code (directly written in the script file)
- A README file describing what your code does
- An online documentation as a user and developer guide with step-by-step explanation
- RMarkdown or Jupyter Notebook with examples

Most of these files can be written in Markdown.
Markdown is a way of writing plain text in any simple text editor that doesn't need specific (proprietary) software to read it (no need for Microsoft Word), which can be converted to many formats including HTML, PDF or even Word documents.
Many online tools including GitHub support Markdown files (.md files).

Marking up your text and code is quite simple:

- `**bold**` --> **bold**
- `_italics_` --> *italics*
- "`code snippet`" --> `code snippet`
- `[LINK](https://carpentries-incubator.github.io/managing-computational-projects/)` --> [LINK](https://carpentries-incubator.github.io/managing-computational-projects/)

You can do much more:

- `# Title` (first level header)
- `## Heading` (second level header)
- `### Subheading` (third level header)
- `![IMAGE](image-path/link)` (insert via a link)

See more in the [MarkDown cheatsheet](https://www.markdownguide.org/cheat-sheet/).

MarkDown files are however static, meaning that you can only read the files, but not execute code.
[R Markdown](https://rmarkdown.rstudio.com/) and [Jupyter Notebook](https://jupyter.org/) provide an interactive environment to work and share your code with documentation and examples for your project.
For practice details about R Markdown, please see [The Definitive Guide](https://bookdown.org/yihui/rmarkdown) and for Jupyter Notebook, please see [Jupyter/IPython Notebook Quick Start Guide](https://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/what_is_jupyter.html]).

These options are useful for communicating about the analysis workflow and results at any stage with other collaborators or the wider research community when developing open source code.
Please note that sharing code in any format would require your collaborators to run and test your code locally.
There are easier options to allow to run code in the browser using [Binder](https://mybinder.org/), which we will discuss in the last lesson.

## coding tips and tricks

## Pipeline

data processing - statistical analysis plan - visualisation - stats.

### Data Wrangling and Cleaning

> Data wrangling involves cleaning data so it can be easily read and analysed by machines. It can also involve integration, extraction, removing missing points, and anything that makes data useable and functional. Regardless of the methods, the code involved with data cleaning steps should be carefully documented so that the steps involved can be repeated from raw data to cleaned data.
> 
> When working with data sets, `ggplot` (in R) or `matplotlib`/`seaborn` (in Python) libraries provide attractive figures that can be produced very quickly. Visualising data should not not wait for the point of publication, and can be used to explore data from the start, and also illustrate methodology. This is particularly valuable in Jupyter Notebooks. Code to produce figures should be literate, functional, reuseable in the same way as data cleaning and analysis code. That way future visualisations can be easily updated or reused.

### Data wrangling

#### Definition

Data wrangling—also called data cleaning, data remediation, or data munging—refers to a variety of processes designed to transform raw data into more readily used formats. The exact methods differ from project to project depending on the data you're leveraging and the goal you're trying to achieve.

Some examples of data wrangling include:

- Merging multiple data sources into a single dataset for analysis,
- Identifying gaps in data (for example, empty cells in a spreadsheet) and either filling or deleting them,
- Deleting data that's either unnecessary or irrelevant to the project you're working on,
- Identifying extreme outliers in data and either explaining the discrepancies or removing them so that analysis can take place.

Data wrangling can be a manual or automated process. In scenarios where datasets are exceptionally large, automated data cleaning becomes a necessity.

Code that cleans and processes data (**processing code**) provides the very beginning of the data analysis pipeline: starting with raw data and resulting in processed data.

<img src="https://i.imgur.com/YnWOBja.png" alt="drawing" width="800"/>

Cleaning data means it can be easily read and analysed by machines and used in analysis pipelines.
It can involve changing labels, subsetting, integration, extraction, removing missing points, and anything that makes data useable and functional.
Regardless of the methods, the code involved in data cleaning steps should be carefully documented so that the steps involved can be repeated from raw data to clean data.
When reviewing this type of code, consider whether the steps involved are readable and in the correct order.

## Data Analysis and Statistics

> (Need to discuss this further, what is patronising?)

With readable, clean, processed data that you have explored using figures, the next stage of the data pipeline is analysis. There may be many variables that are related directly or indirectly to the objective. For that, we first need to study about all the variables whether it is nominal or ordinal. Preparing the data for analysis is done after understanding the data. While understanding we get to know about missing in the data, finding the independent and dependent variables, etc.

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
> [https://doi.org/10.5194/bg-17-5669-2020](https://doi.org/10.5194/bg-17-5669-2020)

<img src="https://www.pnas.org/cms/10.1073/pnas.1912459116/asset/86065128-2b04-47e8-ba0f-6a649ff72e3e/assets/graphic/pnas.1912459116fig04.jpeg" alt="box plots" width="600"/>

> *Spatial transcriptome profiling by MERFISH reveals subcellular RNA compartmentalization and cell cycle-dependent gene expression, Xia et al 2019*
> *[https://www.pnas.org/doi/10.1073/pnas.1912459116](https://www.pnas.org/doi/10.1073/pnas.1912459116)*

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
> *Sisneros et al (2016) Chasing Rainbows: A Color-Theoretic Framework for Improving and Preserving Bad Colormaps. [https://doi.org/10.1007/978-3-319-50835-1\_36](https://doi.org/10.1007/978-3-319-50835-1_36)*

- Keeping readability in mind with text size/font and similar considerations
  \=======
- "First key point. Brief Answer to questions. (FIXME)"

***

## Data exploration and insights

Let us now create two different DataFrames and perform the merging operations on it.

```
# import the pandas library
import pandas as pd
left = pd.DataFrame({
         'id':[1,2,3,4,5],
         'Name': ['Alnus', 'Agrostis', 'Betula', 'Vaccinium', 'Dactylis'],
         'subject_id':['sub1','sub2','sub4','sub6','sub5']})
right = pd.DataFrame(
         {'id':[1,2,3,4,5],
         'Name': ['Calune', 'Fallopia', 'Stachys', 'Stellaria', 'tiphy'],
         'subject_id':['sub2','sub4','sub3','sub6','sub5']})
print left
print right
```

- Data Visualisation as a tool
  - Reference: [https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/](https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/)

## Statistical analysis

Selection of appropriate statistical method is very important step in analysis of data. A wrong selection of the statistical method not only creates some serious problem during the interpretation of the findings but also affects the conclusion of the study. In statistics, for each specific situation, statistical methods are available to analysis and interpretation of the data. To select the appropriate statistical method, one need to know the assumption and conditions of the statistical methods, so that proper statistical method can be selected for data analysis. Other than knowledge of the statistical methods, another very important aspect is nature and type of the data collected and objective of the study because as per objective, corresponding statistical methods are selected which are suitable on given data. Incorrect statistical methods can be seen in many conditions like use of unpaired t-test on paired data or use of parametric test for the data which does not follow the normal distribution, etc., Two main statistical methods are used in data analysis: descriptive statistics, which summarizes data using indexes such as mean, median, standard deviation and another is inferential statistics, which draws conclusions from data using statistical tests such as student's t-test, ANOVA test, etc.[

### Type and distribution of data used

For the nominal, ordinal, discrete data, we use nonparametric methods while for continuous data, parametric methods as well as nonparametric methods are used. For example, in the regression analysis, when our outcome variable is categorical, logistic regression while for the continuous variable, linear regression model is used ([https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6206790/](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6206790/)).

The choice of the most appropriate representative measure for continuous variable is dependent on how the values are distributed. If continuous variable follows normal distribution, mean is the representative measure while for non-normal data, median is considered as the most appropriate representative measure of the data set.

Similarly in the categorical data, proportion (percentage) while for the ranking/ordinal data, mean ranks are our representative measure. In the inferential statistics, hypothesis is constructed using these measures and further in the hypothesis testing, these measures are used to compare between/among the groups to calculate significance level.

> **Case Study**:

> *A Researcher wants to compare the diastolic blood pressure (DBP) between three age groups (years) (\<30, 30--50, >50). If the DBP variable is normally distributed,  > mean value is the representative measure and null hypothesis stated that mean DBP values of the three age groups are statistically equal. In case of non-normal DBP
> variable, median value is the representative measure and null hypothesis stated that distribution of the DBP values among three age groups are statistically equal.
> In above example, one-way ANOVA test is used to compare the means when DBP follows normal distribution while Kruskal--Wallis H tests/median tests are used to compare > the distribution of DBP among three age groups when DBP follows non-normal distribution.*

> *Similarly, suppose he wants to compare the mean arterial pressure (MAP) between treatment and control groups, if the MAP variable follows normal distribution,
> independent samples t-test while in case follow non-normal distribution, Mann--Whitney U test are used to compare the MAP between the treatment and control groups.*

### Other Statistical methods

- Logistic regression analysis is used to predict the categorical outcome variable using independent variable(s).
- Survival analysis is used to calculate the survival time/survival probability, comparison of the survival time between groups  as well as to identify the predictors of the survival time of the subjects (Cox regression analysis).
- Receiver operating characteristics (ROC) curve is used to calculate area under curve (AUC) and cutoff values for given continuous variable with corresponding diagnostic accuracy using categorical outcome variable.
- Diagnostic accuracy of the test method is calculated as compared with another method (usually as compared with gold standard method).
- Sensitivity (proportion of the detected disease cases from the actual disease cases), specificity (proportion of the detected non-disease subjects from the actual non-disease subjects), overall accuracy (proportion of agreement between test and gold standard methods to correctly detect the disease and non-disease subjects) are the key measures used to assess the diagnostic accuracy of the test method.
- Other measures like false negative rate (1-sensitivity), false-positive rate (1-specificity), likelihood ratio positive (sensitivity/false-positive rate), likelihood ratio negative (false-negative rate/Specificity), positive predictive value (proportion of correctly detected disease cases by the test variable out of total detected disease cases by the itself), and negative predictive value (proportion of correctly detected non-disease subjects by test variable out of total non-disease subjects detected by the itself) are also used to calculate the diagnostic accuracy of the test method.

Summary of these methods can be found here [https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6639881/table/T3/?report=objectonly](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6639881/table/T3/?report=objectonly)

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

- [https://the-turing-way.netlify.app/collaboration/new-community.html](https://the-turing-way.netlify.app/collaboration/new-community.html)
- Data Visualisation as a tool
  - Reference: [https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/](https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/)



:::::::::::::::::::::::::::::::::::::::: keypoints

- First key point. Brief Answers to questions. (FIXME)

::::::::::::::::::::::::::::::::::::::::::::::::::








### Code Testing



> You should not skip writing tests because you are short on time, you should write tests because you are short on time.

![](https://the-turing-way.netlify.app/_fig/error-management.jpg)
*The Turing Way project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.*

> Writing a test to prove things work right now is useless (duh, you know what use case you designed it for, of course it will work). Defending your project against the future idiot who is going to f things up (most likely yourself) is the right attitude and will lead to proper tests. Love it!
> https://mstdn.social/@flip1/108951972043173555


It is very, very easy to make mistakes when coding.
A single wrong use of a character can cause a program's output to be entirely wrong.
Missing one data point, writing plus instead of minus symbol or using feet instead of meters might be a genuine human mistake, but in research, the results can be catastrophic.
Careers can be damaged/ended, vast sums of research funds can be wasted, and valuable time may be lost exploring incorrect avenues.
This is why code testing is vital.

Testing is a learned skill that needs to become a part of working on/improving a project.
After changing their code, researchers should always check that their changes or fixes have not broken anything.
It also helps deciding when dependencies can be updated.
There are several different kinds of testing and each has best practices specific to them.

:::::::::::::::::::::::::::::::::::::::  checklist

## A few important testing types

- **Smoke testing**: Very brief initial checks that ensure the basic requirements required to run the project hold. If these fail there is no point in proceeding to additional levels of testing until they are fixed.
- **Unit testing**: A level of the software testing process where individual units of a software are tested. The purpose is to validate that each unit of the software performs as designed.
- **Integration testing**: A level of software testing where individual units are combined and tested as a group. The purpose of this level of testing is to expose faults in the interaction between integrated units.
- **System testing**: A level of the software testing process where a complete, integrated system is tested. The purpose of this test is to evaluate whether the system as a whole gives the correct outputs for given inputs.

::::::::::::::::::::::::::::::::::::::::::::::::::

No matter the type of testing you use, general guidance is to start by writing any test and make a habit of running tests often.

- Make improvements where you can, and do your best to include tests with new code you write even if it's not feasible to write tests for all the code that's already written.
- Make the cases you test as realistic as possible. If for example, you have dummy data to run tests on you should make sure that data is as similar as possible to the actual data. If your actual data is messy with a lot of null values, so should your test dataset be.

There are tools available to make writing and running tests easier, these are known as testing frameworks. Find one you like, learn about the features it offers, and make use of them.

Writing tests typically encourage researchers to write cleaner, more modular code as such code is far easier to write tests for, leading to an improvement in code quality.
As well as advantaging individual researchers testing also benefits research as a whole. It makes research more reproducible by answering the question "how do we even know this code works".
To gain an in-depth understanding of different kinds of tests, please see [Code Testing](https://the-turing-way.netlify.app/reproducible-research/testing.html) chapter in *The Turing Way*.

## Code Review

:::::::::::::::::::::::::::::::::::::  testimonial

The most difficult part of writing code is always to make it understandable to other people, including yourself a few months down the track. There's certainly no shame in finding out that your code wasn't as easy to understand or use as you'd hoped, so don't take it personally when it happens (which it always does, at least in my experience), but treat it as an opportunity to improve.

**Fernando Perez, [Code reviews: the lab meeting for code](https://fperez.org/py4science/code_reviews.html)**

::::::::::::::::::::::::::::::::::::::::::::::::::

A simple objective of the review process is to catch bugs and elementary errors that might have been missed during the development phase.
Code review can also help improve the overall quality while ensuring that code is readable and easy to understand.
As a group leader, you can also make sure code is functional and literate as early as possible, and encourage your students to avoid messy "good enough" code that causes chaos later.

Code review is often done in pairs, with each reviewer also having some of their code reviewed by their partner.
Doing this can help programmers to see and discuss issues and alternative approaches to tasks, and to learn new tips and tricks.

![](https://zenodo.org/api/iiif/v2/5c8c70c9-4119-4917-91d1-bc955943f586:328322b3-ab2f-43c8-a4ba-eb6e11d48ac0:reusable-code-garden-with-text.jpg/full/750,/0/default.jpg){alt='Garden of code'}

*The Turing Way project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.*

There are different methods for code review.

### Synchronous - Pair Programming

**Helping the student go through their scripts, catch errors and debug side by side**

- The PI sits down with her PhD student who has been writing a function for cleaning bioinformatics data.
- The PI knows Python well and takes the opportunity to discuss code while helping their student organise the code better.
- The student shows the PI some odd errors and so they run some tests with expected outcomes to find what the problem is and solve it.
- The PhD student learns and applies to test practices to help make code robust.

The problem with synchronous coding sessions is making time for it and whether or not the supervisor has experience with the specific language.

### Synchronous - Group Code Tour or Informal Walkthroughs

**Narrating code and software steps**

The researcher may present their pipeline to describe the logical steps using documentation, pseudocode, or describing how to run the code.

- A postdoc has been working on some analysis that provides statistics results that he hopes to publish soon. During a lab meeting, the postdoc presents the steps of the analysis code as logical steps.
- The lines of code are shown for those in the meeting that know R, but the postdoc explains the steps verbally as well for those who don't understand R.
- The group discuss and provides comments on the choices and order of the analysis pipeline, a PhD student notices a jump in logic that wasn't picked up previously, and an advanced R user in the lab makes suggestions about making some parts run faster.

<!--
- more detail about the flat hierarchy, not scalable to have the expert to the review
- doesn't need to be an expert
-->

These sessions do not rely on everyone knowing the language, and it is the responsibility of the coder to present their work clearly and logically for everyone to follow.
Group discussions can be very informative for everyone involved and put the analysis under scrutiny.

:::::::::::::::::::::::::::::::::::::::::  callout

## Suggestions for the meeting leader

- Keep it a safe environment, i.e. make sure chastising is relatively gentle even when deserved (but do point out when code doesn't meet the required standard – frame it as a learning experience though).
- Make sure there's a core of vocal participants so it isn't always you.
- Make it clear when you're presenting yourself that your code isn't perfect, point out some of those imperfections yourself if the audience is slow to do so, and do present yourself.
- Patiently explain when things are not wrong but just stylistic differences (but make it clear that some styles are bad, often helpful e.g. asking people to guess what a function returns from its name).

*Shared by Rob Knight with Fernando Perez in the post [Code reviews: the lab meeting for code](https://fperez.org/py4science/code_reviews.html)*

::::::::::::::::::::::::::::::::::::::::::::::::::

### Asynchronous - I'll get back to you on that

Making sure everyone is free at the same time for a lab meeting can be challenging.
Hence, asynchronous code review practices are more suitable for busy supervisors or collaborators in different time zones.

The asynchronous review process allows others to run the code themselves using a reproducible environment, or simply reads through the scripts and share their feedback asynchronously.

Consider a scenario:

> A postdoc has created a model in Python and creates a Binder with all the dependencies necessary.
> She sends the file to her supervisor who can run the code within her browser, no installation is required.
> The supervisor can then run the code herself to review it and check the individual parts over the next week.
> The supervisor adds a commented version of the script to the postdoc's repo with a merge request.

Reviewing code in small chunks incrementally as the project is developing can help make the code review process a lot more efficient.
Asynchronous feedback removes the time pressure but can be easily forgotten!

:::::::::::::::::::::::::::::::::::::  testimonial

Reviewing more than 400 lines of code (LoC) can have an adverse impact on your ability to find bugs, and in fact, most are found in the first 200 lines. - Recommendation from Code Review at Cisco Systems

**[5 code review best practices. Work Life by Atlassian](https://www.atlassian.com/blog/add-ons/code-review-best-practices**), Usman Ghani**

::::::::::::::::::::::::::::::::::::::::::::::::::

## Multiple people can also review the code asynchronously.

:::::::::::::::::::::::::::::::::::::::::  callout

[Turing Way: Recommendations for Code Reviewing](https://the-turing-way.netlify.app/reproducible-research/reviewing/reviewing-recommend.html)

Unlike traditional, "academic-style" peer review, most code review systems have several advantages: they're rarely anonymous, they're public-facing, and without the broker of an editor, contact between reviewer and reviewee can be direct and rapid.
This means code review is typically a fast, flexible, and interactive process.

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::  solution

## Github features to help with code review (Click to see)

**Commit changes**: uploading snapshots when the code changes. The history of all changes are therefore saved and can be reverted.

<img src="https://i.postimg.cc/MHm8X1zX/Screenshot-2022-02-10-at-16-35-50.png" alt="drawing" width="600"/>

**Branching**: keep a version of the code separate while making experimental changes or keeping track of collaborative work. Can try out new functionality or edit in parallel without impacting the code base.

<img src="https://i.postimg.cc/6p5v0Nb1/Screenshot-2022-02-10-at-18-52-47.png" alt="drawing" width="200"/>

**Pull Request**: Bring the changes made on a branch over to the main code base. Can be used to request a code review (see Reviewers on the right panel)

<img src="https://i.postimg.cc/5tgv5Rpm/Screenshot-2022-02-10-at-18-44-07.png" alt="drawing" width="600"/>

**Review**: A pull request can be reviewed and commented on.

<img src="https://i.postimg.cc/9XDbVyWQ/Screenshot-2022-02-10-at-19-11-58.png" alt="drawing" width="400"/>

**Author: Lydia France (Junior Data Scientist, The Alan Turing Institute, UK)**

:::::::::::::::::::::::::

### Reviewing is not about creating more work, nor the PI rewriting everything

Instead, it is just another part of peer review and accountability within the scientific process.
It is also an opportunity for everyone to learn better practices from each other, and solve issues that have plagued one person for weeks!

:::::::::::::::::::::::::::::::::::::::::  callout

*Scientists are very aware that their understanding of code dissipates over time and that this is a large hidden cost. Equally, they suspect that they spend a lot of time reinventing wheels.
They may not know how code review will help with that, but they hope that it will.*

*One of the mentors expected scientists to overhaul complete code bases. The advice from one mentor was cogent: if you check the docstring and write a test every time you touch a method, the code improvements will accumulate over time with minimal effort.*

*Someone who isn't intimately involved with your project should understand from the module documentation and the comments what you are trying to do, what approach you're taking, and why they should expect it to work.*

*Take some time to prepare a presentation about your code that will answer the above questions even for someone who hasn't read the code. You're more likely to get useful feedback, rather than nitpicking about syntax, if the audience can see the big picture.*

*Keep it a safe environment, i.e. make sure chastising is relatively gentle even when deserved (but do point out when code doesn't meet the required standard – frame it as a learning experience though).*

***Marian Petre and Greg Wilson. "Code review for and by scientists: preliminary findings." (2014).***

::::::::::::::::::::::::::::::::::::::::::::::::::

For further considerations in code review, please read [Code Reviewing Process](https://the-turing-way.netlify.app/reproducible-research/reviewing.html) chapter in *The Turing Way*.

### What to look for during Code Review

<imzg src="https://the-turing-way.netlify.app/_images/readable-code.jpg" alt="drawing" width="400"/>

Reviewing code makes a big difference. Knowledge of the language is not always necessary!

These are very common, everyone does this.

**Bugs/Potential bugs**

- Repetitive code
- Code saying one thing, documentation saying another
- Off-by-one errors
- Making sure each function does one thing only
- Lack of tests and sanity checks for what different parts are doing
- Magic numbers (a number hardcoded in the script)

**Unclear, messy code**

- Bad variable/method names
- Inconsistent indentation
- The order of the different steps
- Too much on one line
- Lack of comments and signposting

**Fragile and non-reusable code**

- Tailor-made and manual steps
- Only works with the given data

*Modified from [*What to look for when code reviewing*](https://www.cs.swarthmore.edu/~alinen/cs71/labs/lab03.html)*

### Benefits of Code Review

:::::::::::::::::::::::::::::::::::::  testimonial

In a group of 11 programs developed by the same group of people, the first 5 were developed without reviews.
The remaining 6 were developed with reviews. After all the programs were released to production, the first 5 had an average of 4.5 errors per 100 lines of code.
The 6 that had been inspected had an average of only 0.82 errors per 100. Reviews cut the errors by over 80 percent.

**[Code Complete](https://www.oreilly.com/library/view/code-complete-2nd/0735619670) by Steve McConnell**

::::::::::::::::::::::::::::::::::::::::::::::::::

The main benefit is finding problems, and finding them early enough that there aren't frustrating consequences.
The penalty for finding a bug once all the figures have been produced and conclusions drawn, or, worst-case scenario, after a publication, is much higher than the penalty for taking the time to review.

:::::::::::::::::::::::::::::::::::::::  checklist

## Writing code collaboratively also benefit directly your team members:

- Less time redoing work or refactoring
- Increased productivity
- Greater confidence in own work
- Learning better techniques
- Reduced time debugging alone
- Knowledge exchange and group cohesion

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::  checklist

## For a group leader, the benefits include:

- Better understanding of the projects
- More maintainable and better-documented code that is easy to understand and modify
- Better insight into any problems with data
- Earlier visibility of quality issues
- Group reviews reduce the work burden
- More robust analysis pipelines that can be reused and modified
- High-quality code that can be released

::::::::::::::::::::::::::::::::::::::::::::::::::

**Important things to bear in mind:**

Code reviews should not be used to evaluate individuals and their skill levels.
An open and safe environment where revealing mistakes and errors should not come with penalties or shame.
Code reviews should also be done early and often, to normalise this practice in the research team.

In their book **Peer Reviews in Software: A Practical Guide**, Karl E. Wiegers says:

*The temptation to perfect the product before you allow another pair of eyes to see it.
This is an ego-protecting strategy: you won't feel embarrassed about your mistakes if no one else sees them.
...review [is not] a seal of approval but rather in-process quality-improvement activity.
Such reluctance has several unfortunate consequences.
If your work isn't reviewed until you think it's complete, you are psychologically resistant to suggestions for changes.*

If the program runs, how bad can it be? You are likely to rationalise away possible bugs because you believe you've finished and you're eager to move on to the next task. Relying on your own desk checking and unit testing ignores the greater efficiency of a peer review for finding many defects\*

## Group Code Writing

As well as reviewing specific scripts and analyses written by a single individual, can be very beneficial to solving programming problems as a team.
Setting aside an afternoon to work as a group will help teach less experienced members of the group and more efficiently solve very difficult problems.

Groups of people working on a specific problem are often known as "Hackathons" in programming.
These can last multiple days (hopefully with downtime!). With very large groups, people can work in pairs or small groups with delegated parts of the problem to solve and regularly meet back together to discuss and evaluate.
If there is a complex solution in computational methods that most people in the group need, it makes sense to find it together.

Similarly, documentation sprints are useful to dedicate time to regularly bring a codebase to a good minimum standard.
Splitting the task across the team as an event, creating documentation and working examples for code repos and releasing it can help others use your computational methods and tools to increase the impact of your work.
Having regularly updated documentation also reduces onboarding time for new members picking up the shared methods in the lab.

Group work shares the burden and allows knowledge exchange and support within the team.

### Continuous integration

Continuous Integration (CI) is the practice of integrating changes to a project made by individuals into a main, shared version frequently (usually multiple times per day).
CI is also typically used to identify any conflicts and bugs that are introduced by changes, so they are found and fixed early, minimising the effort required to do so.
Running tests regularly also saves humans from needing to do it manually.
By making users aware of bugs as early as possible researchers (if the project is a research project) do not waste a lot of time doing work that may need to be thrown away, which may be the case if tests are run infrequently and results are produced using faulty code.
There are many CI service providers, such as GitHub Actions that come with their own advantages and disadvantages.

![](https://the-turing-way.netlify.app/_fig/github-actions.jpg){alt='Continuous Integration with GitHub Actions'}
*The Turing Way project illustration by Scriberia. Used under a CC-BY 4.0 licence. DOI: 10.5281/zenodo.3332807.*

To learn more about different CI tools and how to use them, please read the [Continuous Integration](https://the-turing-way.netlify.app/reproducible-research/ci/ci-options.html) chapter in *The Turing Way*.

## References

- *The Turing Way* Community. (2021). The Turing Way: A handbook for reproducible, ethical and collaborative research (1.0.1). Zenodo. [https://doi.org/10.5281/zenodo.5671094](https://doi.org/10.5281/zenodo.5671094). [Code Reviewing Process](https://the-turing-way.netlify.app/reproducible-research/reviewing.html) Chapter.
- Fernando Perez, [Code reviews: the lab meeting for code](https://fperez.org/py4science/code_reviews.html)



:::::::::::::::::::::::::::::::::::::::: keypoints

- There are many benefits of code review and this should be implemented and practised in research  team culture as early and as frequently as possible.
- Synchronous code review creates opportunities for researchers to get feedback and learn from others in real-time.
- Asynchronous code review is a good practice when working with busy researchers or collaborators in different time zones.

::::::::::::::::::::::::::::::::::::::::::::::::::








### Modular Programming (Functions)

<!--
- do a diagram of directories
- no copying and pasting
- mindset stable and not changed immutably
-->

:::::::::::::::::::::::::::::::::::::  testimonial

*My postdoc wants to work with messy genomics data. I know my previous postdoc had to do the same thing and it took her months.... but it's difficult to read her files so my new postdoc will have to work it out again.*

::::::::::::::::::::::::::::::::::::::::::::::::::

Applying methods from one person's work and applying it to another problem can take weeks, if not months, of work.
Applying methods from publications is even harder: static PDF files can't describe the lines of code and data that lead to those discoveries.
This is an increasingly important problem in the face of growing mistrust in science, and a reproducibility crisis plaguing the sciences.

Instead, functional programming is about writing code that works as modular steps.
Each step is clearly commented on and carefully produced so that it can be reused in different contexts.
Often when you are analysing data, you need to repeat the same task many times.
For example, you might have several files that all need loading and clean in the same way, or you might need to perform the same analysis for multiple species or parameters.
Rather than copying and pasting, writing a function and calling that function leads to fewer errors and confusion overall.

We can think of this on a broad scale, say one student's computational work has the following steps, where blue shows data cleaning, and yellow the analysis and statistics.

<img src="fig/IMP-pipeline1.png" alt="drawing" width="600"/>

Another student can take reuse the data cleaning and initial visualisation steps because her data was from the same source and is in the same format. She can later add her own model:

<img src="fig/IMP-pipeline2.png" alt="drawing" width="600"/>

On the micro-scale, functional programming ensures that each code file itself is comprised of modular blocks, whether for data processing, analysis pipeline, simulation and so on.
Depending on your programming language, these may be used as a package or a library or saved in files that are available for installation.
Just the same as the diagram above, making sure functions are robust and reuseable means they can be shared throughout different workflows and for different projects.

> Training in functional programming is usually an excellent pre-requisite for members of your lab.

A first step can be to **draw out** and create diagrams to plan code before starting and identifying the modular steps involved.
This does not require technical knowledge of a language and is, therefore, a great exercise for direct supervision.
You can find practical details on reproducible code in the [Guides to Better Science by British Ecological Society](https://www.britishecologicalsociety.org/publications/guides-to).



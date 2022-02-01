
# Training Materials


## Starting with the Scientific Process


## Setting up a Computational Project

### Intention to Release



**Pre-registration**

**License**


### Project Board

### Version Control & Tools

**Git**

Git Large File Storage for 1GB: https://git-lfs.github.com/
Tutorial by coderefinery https://coderefinery.github.io/git-intro/


**Github**

**Open Tools**


### Onboarding Team Members

**Training**

**Access**

## Method Selection

### Building on Existing Knowledge

### Resource Requirement

**Storage, Hosting and Archiving**

**High Powered Computing**

**Data Safe Havens**

### Is AI Suitable?


## Implementation and Management

**Literate Programming & Notebooks**

**FAIR Principles**

**Reproducible Environments**

**Managing Code Reviews**

**Managing Group Reviews**


## Data Analysis and Results

**Data Wrangling**

**Tests**

**Data Exploration & Insights**

**Communicating Results**

## Publication and Release

**Code Release**

**Data Release**

**Open Tool Contribution**

**Preprints**

**Interactive pages**



# Disorganised Notes

Long after the project is “done”, it is possible to:
- Compile/install/run the software (Usability).
- Read and understand the code (Readability).
- Update the program (Maintainability).
- Reuse the code/program (Reusability).

It should be possible to build upon existing research software (Extensibility).

Typical hindrance to reusability and extensibility are hard-coded parameters and file paths and low modularity.

- Bugs are easier to catch and easier to fix.
- Source code is easy to navigate.
- Source code is easy to modify.
- Code can be understood months or years after development.
- Software can be reused across projects, instead of starting from scratch.
- Software can be extended to new situations.
- Open source, quality research software increases credibility and visibility of research.


Hurdles in the way of improving software quality:
- Lack of exposure to good examples.
- Misconception of what “good code” looks like. “This code runs really really fast: it must be great! (Although I can’t understand it.)”
- Too few resources relevant to researchers.
- Lack of training.
- Assumption that the code will never be read.

Simple approach you can apply today:
- Choose descriptive names.
- Avoid nested logic (for/if/else).
- Reduce the size of functions’ parameter lists.
- Break long functions into smaller functions.
- Follow a style guide.
    - R: tidyverse
    - Python: 	PEP8
    - C++: 	LLVM style guide

**Preregistered** -> P-hacking free

**Open data** -> Check our numbers

**Open Materials** -> replicate our results

```
README.md

RawData/ (read only)
- DataSet1.csv
- DataSet2.csv

ProcessedData/ (disposable)

Scripts/
- run_analysis
- create_figure1
- ...

WorkingExample
- example_notebook.ipynb

Figures/
- figure1.svg

Manuscript/
```

Automate the scripts:
```
run_analysis.R:
 source("01_load_packages.R")
 source("02_clean_data.R")
 source("03_explore.R")
 source("04_model.R")
 source("05_summarise.R")
```

Tests:


    Static tests: your editor parses and runs your code as you write it to figure out if it will crash

    Inline asserts: test whether intermediate computations are as expected

    Unit tests: test whether one function or unit of code works as expected

    Docstring tests: unit tests embedded in docstrings

    Integration tests: test whether multiple functions work correctly together

    Smoke tests: test whether a large piece of code crashes at an intermediate stage

    Regression tests: tests whether your code is producing the same outputs that it used to in previous versions

    End-to-end tests: literally a robot clicking buttons to figure out if your application works as expected

Meetings:
- readability reviews
- code reviews
- design reviews
- pair programming
- reading groups
- retreats
- performance reviews

Collaborate on code: https://replit.com/

Project board titles:
- Conceptualise
- Preregister
- Data Collection
- Analyse
- Write
- Submit
- Revise

# References

> Meta-research: Evaluation and Improvement of Research Methods and Practices
Ioannidis JPA, Fanelli D, Dunne DD, Goodman SN (2015) Meta-research: Evaluation and Improvement of Research Methods and Practices. PLOS Biology 13(10): e1002264. https://doi.org/10.1371/journal.pbio.1002264 

![](https://journals.plos.org/plosbiology/article/figure/image?size=large&id=10.1371/journal.pbio.1002264.t001)


>Munafò, M., Nosek, B., Bishop, D. et al. A manifesto for reproducible science. Nat Hum Behav 1, 0021 (2017). https://doi.org/10.1038/s41562-016-0021
![](https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fs41562-016-0021/MediaObjects/41562_2016_Article_BFs415620160021_Fig1_HTML.jpg?as=webp)
_hypothesizing after the results are known (HARKing)_

![](https://www.researchgate.net/profile/Lonni-Besancon/publication/343145874/figure/fig1/AS:919777069522949@1596303350478/HARKing-Hypothesising-After-the-Results-are-Known-is-an-instance-of-the-Texas.ppm)

![](https://www.researchgate.net/profile/Rogier-Kievit/publication/233397767/figure/fig1/AS:300148421873666@1448572368379/A-continuum-of-experimental-exploration-and-the-corresponding-continuum-of-statistical_Q320.jpg)

![](https://cdn.jsdelivr.net/gh/coderefinery/modular-code-development@61517f7f01a0ff49c441f7dee731be4f6799ec03/img/good-vs-bad.svg)

>Ten Simple Rules for Reproducible Computational Research
Sandve GK, Nekrutenko A, Taylor J, Hovig E (2013) Ten Simple Rules for Reproducible Computational Research. PLOS Computational Biology 9(10): e1003285. https://doi.org/10.1371/journal.pcbi.1003285

> Seven quick tips for analysis scripts in neuroimaging
van Vliet M (2020) Seven quick tips for analysis scripts in neuroimaging. PLOS Computational Biology 16(3): e1007358. https://doi.org/10.1371/journal.pcbi.1007358

> Good enough practices in scientific computing
Wilson G, Bryan J, Cranston K, Kitzes J, Nederbragt L, et al. (2017) Good enough practices in scientific computing. PLOS Computational Biology 13(6): e1005510. https://doi.org/10.1371/journal.pcbi.1005510

> https://www.manning.com/books/the-programmers-brain#toc

![](https://pbs.twimg.com/media/EvtqAqDWgAIyj9S?format=jpg&name=4096x4096)
![](https://pbs.twimg.com/media/FGlZmVCXsAQWPg-?format=jpg&name=4096x4096)
![](https://pbs.twimg.com/media/FGDrTInXwAQV08s?format=png&name=small)

https://www.teaguehenry.com/strings-not-factors/2021/2/21/eight-principles-of-good-data-management

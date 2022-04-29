---
title: "Starting with the scientific process"
teaching: 10
exercises: 0
questions:
- "How does this training relate to your work?"
- "What are the benefits of using data science skills?"
- "What can go wrong with working on data/code?"
- "What are the challenges for teams and management?"
- "Are there procedures and protocols that can help?"
objectives:
- "Understand how this course will help your research (and career)."
keypoints:
- "motivations"
---


## Your research project is a computational project.


<img src="https://zenodo.org/record/3678226/files/ReproducibleJourney.jpg" alt="drawing" width="500"/>

_What to expect in your reproducibility journey. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. http://doi.org/10.5281/zenodo.3332807_

 
As a researcher, you are likely to use some sort of computational tools to process, analyse, and visualise data.
You are also likely to work on your project with other members of the lab, and the success of your work may well depend on your interactions with your peers.
**In that sense any research project can be defined as a collaborative, computational project.**


This course is about introducing methods and concepts to manage individuals and teams working on any computational project, i.e. any research project.
It is *not* about learning how to write code, but learning how to facilitate collaboration and data analysis using tools like research data management, version control or code review. 


```
TODO: Adding detail description of the course, or linking to it, when the course is stabilised
```

We believe that the data science skills you will learn in this course will make your research process better. In the following sections, we will detail what we mean by "better".



 
## How data science will improve your research ?

### Research Outputs

#### Code for powerful statistics

The most advanced statistical methods (like machine learning) are first developed in programming environment, and they are often difficult or impossible to implement in statistical software.
Computational methods might indeed be as complex as a neural network, but even statistical tests and producing figures for a publication require data science and coding methods.

In addition, almost all data requires soome sort of processing before analyses, such as cleaning or transforming into different formats. 
This can be best achieved using code.

For instance, results of water maze behavioural tests are better analysed using a survival analysis than an ANOVA, but the data obtained via video analysis software is often not fitted for that analysis and needs to be transformed (https://doi.org/10.1016/j.bbr.2011.03.007, see also https://doi.org/10.12688/f1000research.20072.2 if you are interested in water maze experiment anaylsis). Doing transformations by hand is time consuming and may introduce errors.

Another underevaluated issue is the amount of data you will collect.
The more data you have the more sophisticated tools and workflows you may need. 
It is also more likely that your data (or code) gets corrupted, mixed up, outdated, or lost.

#### Code for informative figures 

Once you start using code for analysing your data, it will become much easier to do complex visualisation. 
Especially, looking at individual traces is very time consuming in statistical software, while it takes very little time to do a loop (doing the same analysis for each subject) in a coding environment.
Since it is easy, it also allows the creation of reports on the fly, so that resutls of single experiment can be produced automatically.
Code might also be used to create warnings when something went wrong during the experiment, so that the setup or protocol may be modified before the next session.

#### Reproducibility

Good scientific practices are aiming at securing the robustness and reproducibility of the scientific endeavour.
The amount of unreproducible research is alarming.
As a researcher, assuring computational reproducibility of your results is a relatively easy step in making your research more robust. 

The reproducibility of an experiment not only requires a detailed description of the methods and reagents used, but also a detailed description of the analysis performed.
The ultimate description of the analysis is to provide all elements necessary for reproducing the analysis (computational reproducibility).
This includes the data and the code used to analyse it (in a form that can be reused in a different computational environment).

In practice, sometimes one may not be able to provide all elements openly (for instance, some medical data cannot be shared openly for privacy reasons) for everyone to be able to reproduce all the results.
But co-workers (and maybe reviewers) should be able to reproduce the analysis (e.g., on anonymized data).
Using code to analyse the data, and managing data and code to assure adequate version control are important steps in computational reproducibility.

The emergence of reproducible reports is another aspect of computer reproducibility.
Literate programming using Jupyter notebooks, Rmarkdown, stencila or quarto (tools that can usually use Python, R, or Julia) is indeed growing in popularity.
These tools allow you to show data and analysis side by side, with written explanations and interactive visualisations. 
These outputs can not only be used as blog posts, or lab reports, but can also be published as an enhanced publication, a concept called executable research articles: https://gmaciocci.medium.com/list/the-evolution-of-executable-research-articles-823e42a9fa60 


#### Diversifying research outputs

There are rapid developments in how scientific results and methods are shared and collaborations have never been more global or rapid.
For instance, computational tools you produce in your lab can be released as open source and credit will be given globally. 
This may also be true for hardware you design (this aspect will not be treated in this course) or datasets you collect.

By publishing datasets and code, you will not only help other researchers, but gain extra recognition for your work. 
However, open data and open code requires a specific documentation, which we will touch upon in this course.

Finally, the time invested in your data and code will be paid multiple times by the efficiency improvement in your workflow, if that investment is done early in the project.



### Research Process
#### Reproducibility: easy modification

While we already mentioned the advantage of reproducibile analysis for the quality of the research, we did not mention how useful this is during the research.

The most obvious advantage may well come during the paper review process, at the very end of the research process.
It is common to modify the design of the figures multiple times (sometimes back and forth), often modifying all figures at once.
What if a reviewer ask you to overlay individual data points onto all your 5 boxplots figures?
That would probably mean three hours of work if using a non-coding system, as you would need to find the right data and redo the all 5 figures.
If you used code, this may be done in less than 10 minutes.
(Note this is a real case, after seeing the new figures, the reviewer agreed that the original version was better).


#### Collaborative working

Within science teams, group work is critical for experimental design and implementation.
This means tha you are likely working with the same data files and running similar types of statistical analyses.
Designing your research project as a collaborative work and using most effcient tools, facilitating communication and sharing, will make it easier for your colleagues to help you. 


Managing how one or multiple people work on the same project (as well as the same code) requires different skillsets than those taught in traditional science courses *and* a typical coding class. 


#### Efficiency

At this point, you may be convinced that the extra work of designing your project using data science principles will be worth it.
But here comes the best argument of all: **in the end you will save time.**
As an example it was estimated that research data management  takes about 5% of your research time, on the other hand, time lost due to poor data management is estimated to 15%.

The minimal number of people working on a project is two: You and your future self. 
This applies directly to the example of working on article revisions - will you still remember all the analysis details and data nuances when your papers comes back with a request for major changes?

Therefore, the advantage of working collaboratively in a project can be translated directly in a project you drive mostly alone.
For instance, if a colleague cannot find what data goes with which figures, there are high chances that you will also be unable to find it three years from now.

Data and code reusability is not only a mark of research transparency and robustness, it also means you can reuse your own code and data.
It also means you can reuse code and data produced by other researchers.
The snow ball effect may be huge, and the objective of this course is to allow you to do **better science in less time** ( https://www.nature.com/articles/s41559-017-0160:)


### Team and community building

Data science tools will make it easier not only to collaborate with researchers in your lab, but also with researchers outside of your lab, or even with non-researchers (citizen science or software professionals).
These may bring valuable expertise in the project.
Being part of a collaborative community will also create
 impact beyond citations and papers, something which starts to be valued by funding agencies, and which make research more fun, valued and interesting.

We may also add to the pot that creating a network around your research is a critical aspect of building a career in academia. 
Being known as a good and skilled collaborator can open doors to many opportunities.



## A journey starts

> You step into the Road, and if you don't keep your feet, there is no knowing where you might be swept off to.
> 
> J.R.R. Tolkien, The Lord of the Rings

This course will give you somewhere to start, but implementating data science principles is a long and always renewed process.
But you do not need to do it all at once, and you do not need to do it alone. 

After the course, do not hesitate to join (or create) a community of like-minded researchers where you live (there are always some if you look).
In addition, there may be people at your institution whose job is to help you. 
Look for data steward or data managers, research data engineers, IT support, open science büros at your institution and be pro-active contacting them. 
There are also almost endless online resources and helpful communities.

<img src="https://openworking.files.wordpress.com/2021/11/2259thea_book-dash_9th-november_v1_mk_0017_3-data-steward-text.jpg?w=1024" alt="drawing" width="400"/>

_Data stewardship in research. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. http://doi.org/10.5281/zenodo.3332807_



## References


* A Quick Guide to Organizing Computational Biology Projects
Noble WS (2009) A Quick Guide to Organizing Computational Biology Projects. PLOS Computational Biology 5(7): e1000424. https://doi.org/10.1371/journal.pcbi.1000424
* Seddighi, M, Allanson, D, Rothwell, G, Takrouri, K. Study on the use of a combination of IPython Notebook and an industry-standard package in educating a CFD course. Comput Appl Eng Educ. 2020; 28: 952– 964. https://doi.org/10.1002/cae.22273
* Mendez, K.M., Pritchard, L., Reinke, S.N. et al. Toward collaborative open data science in metabolomics using Jupyter Notebooks and cloud computing. Metabolomics 15, 125 (2019). https://doi.org/10.1007/s11306-019-1588-0

{% include links.md %}


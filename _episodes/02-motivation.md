---
title: "Starting with the scientific process"
teaching: 0
exercises: 0
questions:
- "How does this training relate to your work?"
- "What can go wrong with working on data/code?"
- "What are the challenges for teams and management?"
- "Are there procedures and protocols that can help?"
objectives:
- "First learning objective. (FIXME)"
keypoints:
- "First key point. Brief Answer to questions. (FIXME)"
---

## Why Are We Thinking about Computation and Data Science in Biomedical and Life Sciences?


<img src="https://zenodo.org/record/3678226/files/ReproducibleJourney.jpg" alt="drawing" width="500"/>

_What to expect in your reproducibilty journey. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. http://doi.org/10.5281/zenodo.3332807_


Writing, using, and sharing code and data within biomedical and life sciences is growing rapidly. Software is not only the realm of big tech and startups, with more and more scientists becoming programmers as part of their workflow. From computational power comes greater calculations, modelling, visualisations and analyses, and therefore expanding our insights and methodologies. Regardless of the tools and languages we use, coding is integral to science. 



<img src="https://media.nature.com/lw800/magazine-assets/d41586-021-00075-2/d41586-021-00075-2_18964266.jpg" alt="drawing" width="300"/> <img src="https://media.nature.com/lw800/magazine-assets/d41586-021-00075-2/d41586-021-00075-2_18880300.jpg" alt="drawing" width="288"/>

> *Nature 589, 344-348 (2021) https://doi.org/10.1038/d41586-021-00075-2*


## Reproducibility Crisis

<img src="https://opendreamkit.org/public/images/use-cases/reproducible_logbook_scenario.png" alt="drawing" width="600"/> 

However, while scientists are trained in how to run experiments in a lab, many of us are only introduced to programming on the fly and with only patchwork training offered. As a result, many scientists and students are not trained in reproducible methods for their coding or data management. The pitfalls of hidden-off, closed science are numerous, and are of growing attention and concern. 

<img src="https://iiif.elifesciences.org/journal-cms/blog-article-preview%2F2021-06%2Fpicture1_8.png/full/1234,/0/default.webp" alt="drawing" width="600"/>

> [*eLife: What we have learnt about preprints*](https://elifesciences.org/inside-elife/e5f8f1f7/what-we-have-learned-about-preprints)

<img src="https://media.springernature.com/full/springer-static/image/art%3A10.1038%2F533452a/MediaObjects/41586_2016_BF533452a_Figd_HTML.jpg" alt="drawing" width="355"/>
<img src="https://gcdnb.pbrd.co/images/WDmR3Jl8MDRd.png?o=1" alt="drawing" width="400"/>

> Number of respondents: Biology 703, Chemistry 106, Earth and environmental 95, Medicine 203, Physics and engineering 236, Other 233
>
> *Baker, M. 1,500 scientists lift the lid on reproducibility. Nature 533, 452–454 (2016). https://doi.org/10.1038/533452a*

## Managing Projects: People, Code, and Data

<img src="https://openworking.files.wordpress.com/2021/11/2259thea_book-dash_9th-november_v1_mk_0017_3-data-steward-text.jpg?w=1024" alt="drawing" width="400"/>
<img src="https://the-turing-way.netlify.app/_images/project-design.jpg" alt="drawing" width="300"/>

Managing how one or multiple people work on the same code requires different skillsets than those taught in traditional science courses *and* a typical coding class. Resources online may be more tailored to hopeful software engineers rather than a geneticist group leader. Collecting important data sets may require specific stewardship for its greater impact beyond your lab. Within science teams, group work is critical for experimental design and implementation, whether it is in the lab or in R. Computational methods might be as complex as a neural network, but even statistical tests and producing figures for a publication require data science and coding methods and should be just as reproducible. 

These resources are *not* about learning how to write code but introducing methods and concepts to manage individuals and teams working on any computational method or language.

## Communicating Science

<img src="https://the-turing-way.netlify.app/_images/distributed-collaboration.jpg" alt="drawing" width="250"/><img src="https://www.turing.ac.uk/sites/default/files/inline-images/Culture%20shift.jpg" alt="drawing" width="500"/> 


There are rapid developments in how scientific results and methods are shared and collaborations have never been more global or rapid. Published articles are limited, and newer tools are available to reach broader audiences and enable greater collaboration. Having impact beyond citations may involve being part of a collaborative community. Computational tools you produce in your lab can be released as open source and credit given globally. 


Preprints have become well-known as scientists worked to communicate results globally during the pandemic. Now the cat is out of the bag, the model of science communication and distribution has changed forever. 

<img src="https://gcdnb.pbrd.co/images/U8bXMBJjGprk.png?o=1" alt="drawing" width="400"/> 

> *Nature 582, 167-168 (2020) https://doi.org/10.1038/d41586-020-01520-4*


Jupyter notebooks (which can use Python, R, or Julia) are growing in popularity and scientists can show data and analysis side by side with written explanations and interactive visualisations. 

<img src="https://onlinelibrary.wiley.com/cms/asset/a320a9d4-4795-42d3-83f8-b35aa95edd4d/cae22273-fig-0001-m.jpg" alt="drawing" width="400"/>
<img src="https://www.researchgate.net/publication/335821527/figure/fig5/AS:962232657666072@1606425551446/Example-Jupyter-Notebook-Screenshot-At-the-top-of-the-page-there-is-the-Jupyter-menu.png" alt="drawing" width="400"/> 

>  *Seddighi, M, Allanson, D, Rothwell, G, Takrouri, K. Study on the use of a combination of IPython Notebook and an industry-standard package in educating a CFD course. Comput Appl Eng Educ. 2020; 28: 952– 964. https://doi.org/10.1002/cae.22273*
>
> *Mendez, K.M., Pritchard, L., Reinke, S.N. et al. Toward collaborative open data science in metabolomics using Jupyter Notebooks and cloud computing. Metabolomics 15, 125 (2019). https://doi.org/10.1007/s11306-019-1588-0*



## Starting with Scientific Process

Computational projects or software development can sound like the realm of big tech rather than a research lab. It can be difficult to know where to begin or that the path to reproducibility is too difficult and costly to even begin. Instead, data and code are part of the scientific pipeline and so we can begin with what we already know.

While the terminology is unfamiliar, we can see parallels with the usual experimental workflow:

<img src="https://i.imgur.com/I9EKxdF.png" alt="drawing" width="800"/> 


In reproducible scientific research, someone should be able to look at your work and understand in detail what was done and why. Those wishing to reproduce your lab work or analysis would have the means to do so. Guiding principles aside, there are also selfish reasons for reproducible workflows and records of critical decision points.

> "Anything that can go wrong will go wrong."
>
> Murphy's First Law

And so, whether due to mistakes or extending projects, *"anything you do you will probably have to be done again"*. [^murphy] Despite few life scientists having formal training in computer science, the majority of research now requires computational methods, whether creating a figure, testing a model, or training a neural network. As a group leader, there is a responsibility to ensure your team creates modular and reproducible workflows whether they are working with DNA assays or in RStudio. 

As things stand, the following is too often familiar. In the Introduction section of a published paper, the logic behind hypotheses and experimental designs are (ideally) clear and well described. Data collection protocols are shared through Methodology sections, and some of these laboratory workflows are shared globally and become universal. However, the steps involved with data processing/analyses are not transparent:


<img src="https://i.postimg.cc/RVyw9TQZ/Screenshot-2022-02-03-at-14-55-08.png" alt="drawing" width="600"/> 


TThere are too often missing steps from measurement to statistical results. For those reading the journal paper or returning to work after a summer holiday, the black-box nature of code or data processing is frustrating, time-consuming, and can hide glaring mistakes. We have peer review to scrutinise our logic and experiments, and data and code require the same oversight. 

So just as we have an experimental protocol, we can also have a **data protocol**:

<img src="https://imgur.com/TDIZIl2.png" alt="drawing" width="800"/>

And in more detail:

<img src="https://i.imgur.com/YnWOBja.png" alt="drawing" width="800"/>

This data protocol is simple but separates the general pipeline for computational methods. 

So starting with **raw data** from the lab, which may be in a spreadsheet filled in by hand or generated by lab equipment, there are often steps to produce **processed data**. Perhaps filtering, subsetting, translating units, renaming CSV columns.... the detail the processing pipeline needs to be clearly described and available. Later, when more data is gathered, it is possible to recreate these steps. 

With **processed data**, the bulk of analysis can begin. Maybe as simple as a statistical test or as complex as a machine learning pipeline, the **analysis code** should be modular and clearly documented. The results can then be visualised as graphs and images, as documented in **visualisation code**. 


[^murphy]:  A Quick Guide to Organizing Computational Biology Projects
Noble WS (2009) A Quick Guide to Organizing Computational Biology Projects. PLOS Computational Biology 5(7): e1000424. https://doi.org/10.1371/journal.pcbi.1000424

## What can (and does) go wrong in projects?

As a group leader or anyone who collaborates, multiple people working on data and code is difficult to manage. Without energy and input from the start... human error, entropy and bad luck take over. 

<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr_cBH3hn8KABqOprui_R07skPTSAzparvxXojp1aTyPEybLZxcxy2hBy3kjNZ8Gb_bSw&usqp=CAU" alt="drawing" width="200"/>


The following example may be painfully familiar. 

<img src="https://i.imgur.com/jajCClL.png" alt="drawing" width="300"/>

A postdoc gathers data and emails to the PI, then begins to rearrange and process the data. A postdoc with his additional data adds to it. Someone removes a subset of the data due to discovering a fault. A PhD student is sent the wrong data version and begins to filter and remove outliers manually with no oversight. They try to merge their data with the corrected data afterwards. Meanwhile, the PI is processing the original data set and tries to compare her results with the postdocs'... 

The team saved time by not documenting changes or keeping track and sending quick emails, but the forensic work to undo the damage may take ten times as long. Data may also have been irretrievably lost, and if a paper came out with this data it may need to be retracted. 

An alternative organisation of the group and everyone's contributions could instead be treated with the following structure:

<img src="https://i.imgur.com/CdyRjqI.png" alt="drawing" width="250"/>

This time the data is stored as Read-Only but visible and accessible to others in a repository or cloud storage. When new data needs to be added, versions are kept along with metadata about what has changed. Anyone working on the data can download it from this documented storage.

This postdoc can then write her code to process the data, which then goes through her analysis pipeline and leads to results. If someone adds new data independent to her workflow, there is no impact as every step of the pipeline can be recreated. 

As part of a larger group, each person can work in collaboration or independently, but each of their results can be traced back to the original raw data set.

<img src="https://i.imgur.com/yCZL0dN.png" alt="drawing" width="600"/>

So here we see a Postdoc 1 working on his analysis and results separately to the Postdoc 2, sharing a subset of his processed data with a PhD student so they can run a separate analysis using a separate hypothesis. 

Whether the results of computational methods within your lab group are to produce a figure in a publication or a new open tool. By establishing data protocols, your team members can undo mistakes and collaborate without confusion, and their work was redone if (when) the need arises or by peer review.  Beyond that, this course is about teaching how to manage, facilitate, and release the impactful results of your research to the wider community.


Moreover, we can go beyond research articles and publications with publishing data and code repositories. This provides more opportunities to increase the impact of scientific research. Funding bodies and journals often make accessible data compulsory, and it is becoming more common to release code as well. 

{% include links.md %}

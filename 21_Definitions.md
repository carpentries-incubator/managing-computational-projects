---
title: 'Project management, data science'
teaching: 20
exercises: 25
---


::::::::::::::::::::::::::::::::::::::: objectives

- Understanding what project management and data science entail.

- Knowing the next steps to take after this workshop.


::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: questions

- What are the benefits of using data science skills in research project management?
- What are common challenges for research teams and research project management?


::::::::::::::::::::::::::::::::::::::::








In this introduction, we will have an overview of what is meant with project management. Because we will use data science principles to tackle the question of open and reproducible research, we will also define what data science is.
Reproducibility is introduced later in the course, while we expect participants to be quire knowledgable in open research. One can refer to the [additional content](learners/16-open.md) if openness needs a definition. 

## Project Management in a research context

::::::::::::::::::::::::::::::::::::::  discussion

What defines a research project ? 
What makes two projects in a lab different? 

:::::: solution
The answer may vary with domain and lab culture, but the main components are very similar to what defines one research publication:

- The vision or specific research question
- The team: different people may be involved inside and outside the lab
- The funding source
- The methods used

Different types of experiments can be part of the same project.

As lab resources are often pooled between project, this means that lab and project management are linked, while being independent.
::::::


::::::::::::::::::::::::::::::::::::::::::::::::::

The research workflow, also known as the research cycle, usually starts with a research idea, via a literature search on what is already known on the subject, to data collection and analysis, to writing, publishing, and the final assessment of a study. Each of these steps in a given research project involves aspects of project management that such as planning, coordination, execution and monitoring of the team, resources (budgets, materials, equipment), and timeliness according to schedule. 

### Project Design and Planning

It involves defining the project plan which includes the scope, objectives, milestones, and deliverables within the available timeline.

This includes the creation of a timetable or Gantt chart usually created during the grant application.

A great way to visualise the project plan is the Gantt chart, a horizontal bar chart on a time scale, reflecting all of a project’s components, dependencies, and responsibilities. [GanttProject](https://www.ganttproject.biz/) and [GNOME Planner](https://wiki.gnome.org/Apps/Planner/) are two open-source project management applications that allow you to visualise your project plan in a Gantt chart. 


### Resource Management

It includes managing the budget, allocation of funds to each step over time, and ensuring that deliverables and objectives will be met within the available timeframe.


### Team Management


It is the task of making people work together. It includes the definition of the responsibilities for every team member on specific steps and aspects of the research project, task assignments, progress monitoring, and team efficiency measures to thus produce results. It is core in meeting the objectives and goals of a research project.


Research teams often work remotely with team members being located in different parts of the world, and therefore need tools that allow for real-time collaboration, as well as access to process documentation, files, and data to all team members at any given time.


### Data Management

The core of every research project, including the collection, organisation, analysis, and secure storing of research data. A [Data Management Plan](https://en.wikipedia.org/wiki/Data_management_plan) (DMP) is increasingly a necessary component of the project design process and in research proposals, and describes in detail how and where the collected research will be recorded, stored securely, and made accessible for analysis and reuse. Furthermore, the F.A.I.R. Data Principles are equally important to comply with to make research data human- as well as machine-readability to ensure they are findable, accessible, interoperable and reusable, and thus FAIR. We will discuss FAIR data in more detail in episode XX.



### Communication and Reporting

Effective communication among team members and project stakeholders (project partners, funders, librarians, publishers, …) to keep everyone updated on the project’s progress. 
A key component here is the strategic documentation and reporting of the methodologies and any adjustments along the execution of the project. 
Electronic Lab Notebooks (ELNs) provide a certain amount of interoperability between systems to automate some of the documentation processes, thereby making it easier and more efficient to comply with the FAIR principles. 

-	ELNs
-	Progress reports


### Risk Management

It is an assessment and documentation of any foreseeable events that might arise and interfere with the success of the project. and adaption
With a [S.W.O.T. Analysis](https://en.wikipedia.org/wiki/SWOT_analysis#) as part of the project plan, it is possible to describe strengths and weaknesses of the project idea, and also opportunities and threats that might impact the project through external factors. A thorough risk assessment allows you to make contingency plans to address any challenges or issues should they occur.


### Monitoring and Evaluation
Monitoring and Evaluation involves ensuring quality control throughout the execution of the project and the adherence to research policies and procedures, lessons learned and conclusions that can be drawn from the results.  


### Dissemination
Making research results Findable, Accessible, Interoperable, and Reusable (see again the [F.A.I.R. principles[(https://www.go-fair.org/fair-principles/)) is key to the dissemination plan of a research project. Datasets and code should be archived in standardised repositories (see [re3data.org](https://www.re3data.org/) for lists of region- and discipline-specific as well as generalist repositories you can use).


:::::::::::::::::::::::::::::::::::::  testimonial

I often manage projects where I do not have decision power.
My work usually starts by making sure decisions are taken and documented.
The documentation is very important, because  the implementation of the decision often requires me to remind people of their decision.
Indeed, during the rest of the project, my role consist in monitoring progresses and remind people of the objectives, such that specific work is done at the right time.
For instance, a team may well aim for publishing data at the start of a project, but this objective will not be met unless a specific workflow is implemented at the start of the project. My work is then to make sure the researchers are aware of the problems and that they do not take shortcuts that go against the long term objectives.

As a project manager, one needs to make sure the resources are sufficient to achieve the goals set in the plan. In research, it often consists in making sure the people are indeed working toward the goal and are not investing their time to other projects or other objectives of the lab. 
This is particularly important when short term individual incentives are not aligned with the project long term vision. For instance, data management is primordial in team science, but, too often, data collector cannot recognize its importance.

:::::::::::::::::::::::::::::::::::::

### Project Management tools overview


Several digital project management tools exist that facilitate the remote coordination and management of research teams with their projects. Widely used proprietary examples include Trello, Asana, ClickUp, Notion, and Zoho Projects. Each of these has a different set of features, and all of them work with a [Kanban board](https://en.wikipedia.org/wiki/Kanban_board) for process documentation.


[Kanboard](https://kanboard.org/), [WeKan](https://wekan.github.io/), [Open project](https://www.openproject.org), and [Taiga](https://taiga.io/) are examples of open-source project management software that contain Kanban boards. 


:::: discussion
What project management (digital) tools are you using ?
::::


## What is data science

Over the last decade, several tools, methods and training resources have been developed for early career researchers to learn about and apply data science skills in biomedicine.
This is often referred to as biomedical data science, with the following definition.

:::::::::::::::::::::::::::::::::::::  testimonial

Biosciences and biomedical researchers regularly combine mathematics and computational methods to interpret experimental data. The term "data science" describes expertise associated with taking (usually large) data sets and annotating, cleaning, organizing, storing, and analyzing them for the purposes of extracting knowledge. [...]
The terms "biomedical data science" and "biomedical data scientist" [...] connote activities associated with the creation and application of methods to new and large sources of biological and medical data aimed at converting them into useful information and knowledge.
They also connote technical activities that are data-intensive and require special skills in managing the large, noisy, and complex data typical of biology and medicine.
They may also imply the application of these technologies in domains where their collaborators previously have not needed data-intensive computational approaches.

\-- Russ B. Altman and Michael Levitt (2018). [Annual Review of Biomedical Data Science](https://www.annualreviews.org/doi/full/10.1146/annurev-bd-01-041718-100001)

::::::::::::::::::::::::::::::::::::::::::::::::::

In contrast to the definition above (and as will be explained in the next chapters), we think research which is not data intensive would also gain in applying data science principles.
However, to ensure that data science approaches are appropriately applied in domain research, such as in biosciences, there is a need to also engage and educate scientific group leaders and researchers in project leadership roles on best practices.
Computational methods might indeed be as complex as a neural network, but even statistical tests and producing figures for a publication require data science and coding methods.

Researcher use data science skills to apply computation techniques and reproducible data analyses approaches to their research questions.
In order to apply these tools, researcher first need to understand and apply the building blocks of data science, especially research data management, collaborative working and project management.

<img src="fig/handbook-for-application.jpg" alt="Two people with computational expertise holding a giant book towards two other people who conduct lab experiments. The book saya: how to apply data science in biology." width="500"/>

*How to apply data science in biology. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. [http://doi.org/10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)*

:::::::::::::::::::::::::::::::::::::  testimonial

In some instances, it has been argued that "data science" simply rebrands existing fields like statistics or computer science.
Our view is that data science has gained traction as an overarching term due to increased data availability and complexity; development of computational methods; advances in computational infrastructure; growing concerns about scientific rigor and the reproducibility of research findings; and a recognition that new advances will result from interdisciplinary research and collaboration.
These trends are not unique to data science, but their integration and consolidation under a single term, however broad, reflects an understanding of their interconnectedness and is a real shift in the scientific landscape

- Goldsmith, J., Sun, Y., Fried, L. P., Wing, J., Miller, G. W., \& Berhane, K. (2021). The Emergence and Future of Public Health Data Science. Public Health Reviews, 42. doi: [10\.3389/phrs.2021.1604023](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8378512/)

::::::::::::::::::::::::::::::::::::::::::::::::::

With new technologies supporting the generation of large-scale data as well as successful applications of data science, Machine Learning (ML) and Artificial Intelligence (AI) in biomedicine and related fields have recently shown huge potential to transform the way we conduct research.
Recent groundbreaking research utilising AI technologies in biomedicine has led to an enormous interest among researchers in data science, ML and AI approach to extract useful insights from big data, make new discoveries and address biological questions.
As pictured below, in order to apply these tools, researcher first need to understand and apply the building blocks of data science, especially research data management, collaborative working and project management.

::::::::::::::::::::::::::::::::::::::  discussion

- In what aspects of your projects do you already apply computational and statistical approaches?

- Do you consider data science relevant for your project? Why/Why not?

- To what extent do you apply data science practices in your research projects? (A) Not yet, (B) Sometimes, (C) In most projects, (D) In every project.


::::::::::::::::::::::::::::::::::::::::::::::::::

The [**Data Science for Biomedical Scientists**](https://github.com/alan-turing-institute/data-training-for-bioscience) project helps address this need in training by equipping experimental biomedical scientists with essential computational skills.
In all the resources developed within this project, we consistently emphasise how computational and data science approaches can be applied while ensuring reproducibility, collaboration and transparent reporting.

:::::::::::::::::::::::::::::::::::::  testimonial

**The goal is to maintain the highest standards of research practice and integrity**.

::::::::::::::::::::::::::::::::::::::::::::::::::

In this training material for learning how to manage computational projects, we discuss essential practices for computational reproducibility required for carrying out meaningful analyses of research datasets through data exploration, processing, visualisation and communication.
We present unfamiliar and complex topics from computation and data science to biologists by providing examples and recommendations from their fields.
The goal is to enable effective management and sharing of their computational projects. We therefore encourage you to go through this training material before taking our second workshop, more focused in AI and Data Science.


## Project management in open and reproducible projects

This course aims at giving an overview of project management techniques particularly useful for open and reproducible computational project. 
This means we will not talk much about risk assessment, and resource management, but focus on team and data management.
This has of course repercussion in the project design and planning, the communication and reporting strategy, and monitoring and quality control is at the core of the code management topic.

In this course, we will also present some software that may help to share project management tasks and results in a distributed team.




## Some References and resources

### General guides

- A Quick Guide to Organizing Computational Biology Projects
  Noble WS (2009) A Quick Guide to Organizing Computational Biology Projects. PLOS Computational Biology 5(7): e1000424. [https://doi.org/10.1371/journal.pcbi.1000424](https://doi.org/10.1371/journal.pcbi.1000424)
- Seddighi, M, Allanson, D, Rothwell, G, Takrouri, K. Study on the use of a combination of IPython Notebook and an industry-standard package in educating a CFD course. Comput Appl Eng Educ. 2020; 28: 952– 964. [https://doi.org/10.1002/cae.22273](https://doi.org/10.1002/cae.22273)
- Mendez, K.M., Pritchard, L., Reinke, S.N. et al. Toward collaborative open data science in metabolomics using Jupyter Notebooks and cloud computing. Metabolomics 15, 125 (2019). [https://doi.org/10.1007/s11306-019-1588-0](https://doi.org/10.1007/s11306-019-1588-0)
- [The Good Research Code Handbook](https://goodresearch.dev/setup.html) by Patrick Mineault.
- [Guides to Better Science by British Ecological Society](https://www.britishecologicalsociety.org/publications/guides-to).

### Relevant turing way chapters

- *The Turing Way*. *The Turing Way Community. (2021). The Turing Way: A handbook for reproducible, ethical and collaborative research (1.0.1). Zenodo. [DOI: 10.5281/zenodo.5671094](https://doi.org/10.5281/zenodo.5671094)*
  - [Guide to Project Design](https://the-turing-way.netlify.app/project-design/project-repo.html)
  - [Creating Project Repositories](https://the-turing-way.netlify.app/project-design/project-repo.html)
  - [Naming files, folders and other things](https://the-turing-way.netlify.app/project-design/filenaming.html)
  - [Licensing](https://the-turing-way.netlify.app/reproducible-research/licensing.html)
  - [Continuous Integration](https://the-turing-way.netlify.app/reproducible-research/ci/ci-options.html)
  - [Code Testing](https://the-turing-way.netlify.app/reproducible-research/testing.html)
  - [Code Quality](https://the-turing-way.netlify.app/reproducible-research/code-quality.html) chapter in *The Turing Way*.
  - [Capturing Computational Environments](https://the-turing-way.netlify.app/reproducible-research/renv/renv-options.html)
- [Version control](https://the-turing-way.netlify.app/reproducible-research/vcs.html)
  - [Getting Started With GitHub](https://the-turing-way.netlify.app/collaboration/github-novice.html)
  - [Open Science](https://the-turing-way.netlify.app/reproducible-research/open.html)
  - [Managing a New Community and Team](https://the-turing-way.netlify.app/collaboration/new-community.html)
  - [Making Research Objects Citable](https://the-turing-way.netlify.app/communication/citable.html)
## others

- [Open Life Science training and Mentoring Programme](https://openlifesci.org). *Batut, Bérénice, Yehudi, Yo, Sharan, Malvika, Tsang, Emmy, \& Open Life Science Community. (2021). Open Life Science - Training and Mentoring programme - Website release 2019-2021 (1.0.0). Zenodo. [DOI: 10.5281/zenodo.5636584](https://doi.org/10.5281/zenodo.5636584)*

- [What is a Registered Report?](https://support.jmir.org/hc/en-us/articles/360003450852-What-is-a-Registered-Report-) by JMIR, referencing to [Registered Reports by Center for Open Science](https://www.cos.io/initiatives/registered-reports)

### literate programing guide

  
- [The Definitive Guide](https://bookdown.org/yihui/rmarkdown)
- [Jupyter/IPython Notebook Quick Start Guide](https://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/what_is_jupyter.html)



:::::::::::::::::::::::::::::::::::::::: keypoints

- Project management includes resource, team, data, communication and risk management.
- Data science is dealing with large and diverse team, working remotely while using and re-using code to achieve reproducible analysis.

::::::::::::::::::::::::::::::::::::::::::::::::::


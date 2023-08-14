---
title: "What is data science"
---


## Short overview of project management in a research context

- Research workflow/cycle
- team management
- data management
- methods & tools: Kanban, Gantt



## Project Management in a research context

The research workflow, also known as the research cycle, usually starts with a research idea, via a literature search on what is already known on the subject, to data collection and analysis, to writing, publishing, and the final assessment of a study. Each of these steps in a given research project involves aspects of project management that such as planning, coordination, execution and monitoring of the team, resources (budgets, materials, equipment), and timeliness according to schedule. 

**Project Design and Planning** involves defining the project plan which includes the scope, objectives, milestones, and deliverables within the available timeline.
This includes the creation of a timetable or Gantt chart usually created during the grant application.

  A great way to visualise the project plan is the Gantt chart, a horizontal bar chart on a time scale, reflecting all of a project’s components, dependencies, and responsibilities. [GanttProject](https://www.ganttproject.biz/) and [GNOME Planner](https://wiki.gnome.org/Apps/Planner/) are two open-source project management applications that allow you to visualise your project plan in a Gantt chart. 

**Resource Management** includes the managing of the budget, allocation of funds to each step over time, and ensuring that deliverables and objectives will be met within the available timeframe.

**Team Management** defines the responsibilities for every team member on specific steps and aspects of the research project. It also includes task assignments, progress monitoring, and team efficiency to thus produce results (data)and thereby meet the objectives and goals of the research project. Research teams often work remotely with team members being located in different parts of the world, and therefore need tools that allow for real-time collaboration, as well as access to process documentation, files, and data to all team members at any given time. 

**Data Management** is the core of every research project, including the collection, organisation, analysis and secure storing of research data. A Data Management Plan (DMP) is increasingly a necessary component of the project design process and in research proposals, and describes in all details how and where the collected research will be recorded, stored securely, and made accessible for analysis and reuse. Furthermore, the F.A.I.R. Data Principles are equally important to comply with to make research data human- as well as machine-readability to ensure they are findable, accessible, interoperable and reusable, and thus FAIR. We will discuss FAIR data in more detail in episode XX.

**Risk Management** is an assessment and documentation of any foreseeable events that might arise and interfere with the success of the project. and adaption
With a [S.W.O.T. Analysis](https://en.wikipedia.org/wiki/SWOT_analysis#) as part of the project plan, it is possible to describe strengths and weaknesses of the project idea, and also opportunities and threats that might impact the project through external factors. A thorough risk assessment allows you to make contingency plans to address any challenges or issues should they occur.

**Communication and Reporting** includes the effective communication among team members and project stakeholders (project partners, funders, librarians, publishers, …) to keep everyone updated on the project’s progress. A key component here is the strategic  documentation and reporting of the methodologies and any adjustments along the execution of the project. 
Electronic Lab Notebooks (ELNs) provide a certain amount of interoperability between systems to automate some of the documentation process, thereby making it easier and more efficient to comply with the FAIR principles. 
-	ELNs
-	Progress reports

**Monitoring and Evaluation** involves ensuring quality control throughout the execution of the project and the adherence to research policies and procedures, lessons learned and conclusions that can be drawn from the results.  


## Project Management tools

Several digital project management tools exist that facilitate the remote coordination and management of research teams with their projects. Widely used proprietary examples include Trello, Asana, ClickUp, Notion, and Zoho Projects. Each of these has a different set of features, while all of them work with a Kanban board for process documentation.

[Kanboard](https://kanboard.org/), [WeKan](https://wekan.github.io/), and [Taiga](https://taiga.io/) are examples for open-source project management software that contain Kanban boards. 




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

In what aspects of your projects do you already apply computational and statistical approaches?
Do you consider data science relevant for your project? Why/Why not?

::::::::::::::::::::::::::::::::::::::::::::::::::

The [**Data Science for Biomedical Scientists**](https://github.com/alan-turing-institute/data-training-for-bioscience) project helps address this need in training by equipping experimental biomedical scientists with essential computational skills.
In all the resources developed within this project, we consistently emphasise how computational and data science approaches can be applied while ensuring reproducibility, collaboration and transparent reporting.

:::::::::::::::::::::::::::::::::::::  testimonial

**The goal is to maintain the highest standards of research practice and integrity**.

::::::::::::::::::::::::::::::::::::::::::::::::::

In this training material for learning how to manage computational projects, we discuss essential practices for computational reproducibility required for carrying out meaningful analyses of research datasets through data exploration, processing, visualisation and communication.
We present unfamiliar and complex topics from computation and data science to biologists by providing examples and recommendations from their fields.
The goal is to enable effective management and sharing of their computational projects. We therefore encourage you to go through this training material before taking our second workshop, more focused in AI and Data Science.





---
title: "Setting up a computational project"
teaching: 0
exercises: 0
questions:
- "How to set up a computational project?"
- "What main concerns and challenges exist and how to address them?"
- "How to create a project repository for sharing, collaboration and an intention to release?"
objectives:
- "Describe best practices for setting a project repository"
- "Build a basis for collaboration and co-creation in team projects"
- "Apply computational reproducibility and project management practices"
- "Make it easy for each contributor to participate, contribute and be recognised for their work"
keypoints:
- "Shared and version controlled repository with well structured and organised files are crucial for starting a project"
- "Documentation is as important as data and code to understand the different aspects of the project and communicate about the research."
- "Licencing and open science practices allow proper use and reuse of all research objects, hence should be applied in computational research from the start."
---

## Setting up a Project

Setting up a project takes place at the project design phase to ensure that all members of your research team can work together efficiently at all stages of the project.
With an overarching goal to maintain research integrity and ethical practices from the start, we need to consider reproducibility methods, collaborative approaches and transparent communication processes for the research team as well as the external stakeholders. 
As project leads, managers and team organisers, it is crucial to be deliberate and clear about the tools and platforms selected for the project, as well as expectations from each contributor from the beginning.
Dedicating some time in thinking through and documenting the setup of a project saves time, ensuring successful implementation of research plans at different stages of research.
At this stage, you can't be sure that everything will always go as planned or there will be no unexpected challenges, but it helps prepare in advance for risk management and adapt to changes when needed.

## Main Concerns and Challenges

![The research process is represented as a perpetual cycle of generating research ideas, performing data planning and design, data collection, and data processing and analysis, publishing, preserving and hence, allowing re-use of data.](https://zenodo.org/api/iiif/v2/fa529424-d420-461e-8b2c-6e7b36bda0ce:011c0c3b-0e09-4ef9-9fd3-4ddce57c4b08:ResearchCycle.jpg/full/750,/0/default.jpg)

*Research Lifecycle. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. http://doi.org/10.5281/zenodo.3332807*

Scientific results and evidence are strengthened if those results can be replicated and confirmed by several independent researchers.
This means understanding and documenting the research process, describing what steps are involved, what decisions are made from design to analysis to implementation stages and publishing them for others to validate.
Research projects already start with multiple documents such as project proposal, institutional policies and recommendations (including project timeline, data management plan, open access policy, grant requirements and ethical committee recommendations), which should be available to the entire research team at all times.
Furthermore, throughout the lifecycle of a project we handle experimental materials such as data and code, refer to different published studies, establish collaboration with others, generate research outputs including figures, graphs and publications, many of which undergo multiple versions. 
Then there is a general need to document the team's way of working, different roles and contribution types, project workflows, research process, learning resources and templates (such as for presentation, documentation, project reporting and manuscript) for your research team.

If not planned in advance, these different kinds of information related to the project can become challenging to record, manage or retrieve -- costing precious time of everyone involved and negatively affecting collaborative work in your research team.

[Add biological context for challenges and concerns]
 
## Shared Repository to Share Information

To manage collaborative research in computational projects with mainly distributed systems (different computers, cloud infrastructure, remote team members) it is essential to provide clear guidelines on where these digital objects should be held, handled and shared.
Therefore, the first step is to establish a shared digital location (centralised, findable and accessible) like a shared drive (cloud-based or organisation-hosted server space) or online repository (like GitLab) where all project related documentation and resources can be made available for everyone in your research team.
When introduced with clear guidance for how everyone in your team can contribute to keeping the shared repository up-to-date, it helps build a sense of collaboration from the start.
Use this repository to communicate what policies are relevant for people and their work in the project; how data, code and documentation are organised; and how peer-review, open feedback and co-creation will be enabled at all stages of the project.

### Vision, Mission and Milestones

It is particularly important to share the project's vision, mission and milestones transparently. Provide sufficient information for what the expected outcomes and deliverables are.
Provide overarching as well as short-term goals and describe expected outcomes to help contributors move away from focusing on a single idea of the feature. 
Describe the possible expansion of the project to give an idea of what to expect beyond the initial implementation.
All proposed plans for the project with information on available resources and recommended practices to ensure everyone is on the same page.

### Role and Responsibilities

Create a folder/directory to give information about the different stakeholders with their roles in the project, key skills, interests and contact information (when possible). 
Describe what responsibilities and opportunities for collaboration different members will have.
Provide resources on ways of working to ensure fair participation of stakeholders who collaborate on short- and long-term milestones within the project.
It reduces or addresses concerns about the project’s progress towards meeting goals and prevent potential fallout between project stakeholders.
When possible, such as in an open source project, provide these details for those outside the current group, especially when you want to encourage people outside the project to be involved.

## Maintain History through Version Control

![Contrast in project history management. On the left - choosing between ambiguosly named files. On the right - picking between successive versions (from V1 to V6).](https://zenodo.org/api/iiif/v2/0c0188d3-d03c-4830-a6e3-00405f5c22fa:df931888-09af-4eac-945f-0c208be0c26b:ProjectHistory.jpg/full/750,/0/default.jpg)

*Version control allows tracking of history and go back to different versions as needed. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. http://doi.org/10.5281/zenodo.3332807*

Practices and recommendations described in this lesson are applicable to all areas of biological research. What can be considered slightly different in computational projects is that every object required to carry out the research exist in digital form. Starting from research workflow, data, software, analysis process, resulting outcomes as well as how researchers involved in the project communicate with each other. This means that research objects can be organised and maintained without losing the provenance or missing knowledge of how each of these objects is connected in the context of your project.

Management of changes or revisions to any type of information made in a file or project is called versioning. Using a version control system, all changes made in a file or research object over time is recorded. It allows all collaborators to track history, review any changes, give appropriate credit to all contributors, track and fix errors when they appear and revert or go back to earlier versions. 

Different version control systems can be used through a program with web browser-based applications (such as [Google Docs](https://docs.google.com/) for documents) and more dynamically for code and all kinds of data through command-line tools (such as [Git](https://en.wikipedia.org/wiki/Git)) and their integration into the graphical user interface ([Visual Studio Code](https://code.visualstudio.com/) editor, [Git-gui](https://git-scm.com/downloads/guis) and [gitkraken](https://www.gitkraken.com/)).
The practice of versioning is particularly important to allow non-linear or branched development of different parts of the project, testing a new feature, debugging and error or reusing code from one project to different data by different contributors.

[GitLab](https://about.gitlab.com/), [GitHub](https://github.com/), or [BitBucket](https://bitbucket.org) are online platforms that allow version-controlled projects online and allow multiple collaborators to participate. Different members can download a copy of the online repository (most recent version), make changes by adding their contributions locally on their computer and push the changes to GitLab/GitHub/BitBucket (a new version!) allowing others to build on the new development.

Read [All you need to know about Git, GitHub & GitLab](https://towardsdatascience.com/all-you-need-to-know-about-git-github-gitlab-24a853422ff3) on Towards Data Science and [version control](https://the-turing-way.netlify.app/reproducible-research/vcs.html) in *The Turing way* for more details on workflow, technical details of using git and versioning large datasets.

## Project Repositories with Project Management Practices

Set up a repository with folder structure and files with a landing page or README file describing what each file and folder contains.
Here are a few tips to get the basic structure sorted:
- Organise project management files (those discussed above) in one folder, or if they apply to multiple projects, then create a separate repository that can be appropriately linked.
- Create a folder for ethics governance and policies that should be referred to at different stages of research.
- Create a folder for handling project-related data, analysis code and results. This folder will particularly require logical hierarchy and backing up along with versioning.
- Maintain a separate folder for documentation capturing the development, lessons learned, failed approaches, presentations and notes related to the project as well as manuscript and related materials.
- Use file-naming convention consistently. Keep it organised for example using ISO 8601 naming convention: YYYY-MM-DD-[short but descriptive name]-[version if applicable].[file extension such as .txt]. See [Naming files, folders and other things](https://the-turing-way.netlify.app/project-design/filenaming.html) chapter in *The Turing Way*.
- Create an onboarding process of team members to give access to different resources, guidelines and set different levels of responsibilities (permission level on GitHub) for them as required.
- Organise basic training for your team members on how to use the project repository, version control system and tools required to participate and contribute to the project repository.
- Select a project management system such as a kanban or project board to track tasks, progress and backlogs. GitHub projects have a [project board feature](https://docs.github.com/en/issues/organizing-your-work-with-project-boards/managing-project-boards/creating-a-project-board) to manage different tasks via issues (to-do list) and Pull requests (tasks completing them by sending changes to the repository).

![](http://nikola.me/assets/img/folder_structure.png)

Illustration from [Setting up an Organised Folder Structure for Research Projects](http://nikola.me/folder_structure.html) by Nikola vukovic (2017, March 09).

> ## Start with an intention to Release
> * **Structure and logically organise project folders and files** using the consistent convention for individual file names, making them easy to locate, access and reuse.
> * Review and **consider how research needs to be disseminated** at the end of the project as per the grant as well as institution requirements and policies.
> * Choose and **determine license types for different research objects** such as data, software, and documentation.
> * **Embed computational reproducibility through skill-building** in your team (see version control, computational environments, code testing, software package management).
> * **Add documentation process to project timelines and milestones** for capturing progress, blockers and contributions by all stakeholders, making your research objects easy to attribute and release. 
{: .callout}

### Choose a License

Research does not have to be completed to be useful to others. Having a license is the way to communicate how do you want your research to be used and shared.
There are different types of licenses depending on the type of research objects such as code, data or documentation and preferences for re-use and sharing. 
The [choosealicense](https://choosealicense.com/) website has a good mechanism to help you pick a license.
To learn more about how to add a license to your project, read the [Licensing chapter](https://the-turing-way.netlify.app/reproducible-research/licensing.html) in **The Turing way** Guide for Reproducible Research.

### Consider Computational Reproducibility

![A matrix showing data and analysis in two axis and iterating that reproducibility is when same analysis is applied to same data it gives same result.](https://the-turing-way.netlify.app/_images/reproducible-matrix.jpg)

*Documentation as a guiding light for people who may feel lost otherwise. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. http://doi.org/10.5281/zenodo.3332807*

The different dimensions of reproducible research described in the matrix above have the following definitions directy taken from *The Turing Way* Guide to Reproducible Research (see the [oveview chapter](https://the-turing-way.netlify.app/reproducible-research/overview.html)):

- **Reproducible:** A result is reproducible when the _same_ analysis steps performed on the _same_ dataset consistently produces the _same_ answer.
- **Replicable:** A result is replicable when the _same_ analysis performed on _different_ datasets produces qualitatively similar answers.
- **Robust:** A result is robust when the _same_ dataset is subjected to _different_ analysis workflows to answer the same research question (for example one pipeline written in R and another written in Python) and a qualitatively similar or identical answer is produced.
  Robust results show that the work is not dependent on the specificities of the programming language chosen to perform the analysis.
- **Generalisable:** Combining replicable and robust findings allow us to form generalisable results.
  Note that running an analysis on a different software implementation and with a different dataset does not provide _generalised_ results.
  There will be many more steps to know how well the work applies to all the different aspects of the research question.
  Generalisation is an important step towards understanding that the result is not dependent on a particular dataset nor a particular version of the analysis pipeline.

Thinking about which software, tools and platforms to use will greatly affect how you analyse and process data, as well as how you share your results for computational reproducibility.
The idea is to facilitate others in recreating the setup process necessary to reproduce your research. 
Some tools that can be used to enable these are the following:
* **Dependency managers** such as [Conda](https://docs.conda.io/en/latest/) keep dependencies updated and make sure the same version of dependencies used in the development environments are also used when reproducing a result.
* **Containers** such as [Docker](https://www.docker.com/) is a way to create computational environments with configurations required for developing, testing and using research software isolated/independent from other applications.
* **Literate Programming** using [Jupyter Notebook](https://jupyter.org/) is an extremely powerful way to use a web-based online interactive computing environment to execute code and script while adding notes and additional information about the application.
To learn more about how to create a reproducible environment, the chapter on [Reproducible Environments](https://the-turing-way.netlify.app/reproducible-research/renv.html) in *The Turing way* is a good place to start.

### Provide a Process for Documentation

![Image shows a person putting lamp-posts of documentation, helping a researcher who was lost because of lack of information about the research.](https://zenodo.org/api/iiif/v2/867e0f11-b7cb-460e-9c3b-487ac75ada36:ee8aceae-1007-40ce-aedf-a52c28a5935a:documentation.jpg/full/750,/0/default.jpg)

*Documentation as a guiding light for people who may feel lost otherwise. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. http://doi.org/10.5281/zenodo.3332807*

Most researchers find documentation daunting, as they think that research-related responsibilities are already overwhelming for them.
It's obvious that they see documentation as an  'added labour' and not important enough for carrying out a research design, implementation, analysis or publication work. 

The reality is that documentation is an integral part of all research processes, from start to finish.
A systematic process for documentation is more than a formal book-keeping practice because it: 
* allows everyone in your research to understand the research direction and track progress;
* adds validity to your research work when systematically built on published peer-reviewed work;
* communicates different ways to contribute, enabling diverse participation in the co-development;
* upholds practices to ensure equity, diversity and inclusion;
* recognises contributions fairly;
* gives and shares credits for all work;
* tracks the history of what worked or what did not work;
* creates transparency about early and intermediate research outcomes;
* makes auditing easy for funders, advisors or data managers;
* helps reframe research narratives by connecting different work;
* explains all decisions and stakeholders impacted by that;
* gives the starting point for writing manuscript and publication; and more!

### Facilitating Documentation in your Team

> ## IMPORTANT NOTE
> 
> Whatever your approach is, be firm about making documentation a shared responsibility so that this job does not solely fall on the shoulders of early career researchers, members from traditionally marginalised groups or support staff.
{: .callout}

The biggest question here is probably not 'why' but 'how' to facilitate documentation so that it is not challenging or burdensome for the team members.
Here are a few recommendations to make documentation easier:
- Allocate some time at the beginning of the project to discuss with the main stakeholders of the project about what should be documented.
- Keep the tasks simple by establishing a shared repository for documentation with standard templates to guide how one should go about documenting their work (*It is always easier to start with a template than an empty sheet!*).
- Add documentation sprint to your project timelines and milestones to make sure that everyone is aware of their importance in the project.
- Create visible ways to recognise and incentivise the process of documenting.

### Team Framework

To ensure that all team members have a shared understanding of ways of working, select or adapt a [Team Framework](https://the-turing-way.netlify.app/collaboration/new-community/new-community-teamwork.html) that provides guidance on how to best work in your team. For instance, Agile workflow for teamwork enables iterative development, with frequent interaction between interested parties to decide and update requirements.
See [Teamwork for Research Software Development](https://nlesc.github.io/teamwork-for-research-software-development/) tutorial by Netherlands eScience Center with lessons on teamwork, agile and scrum framework, project board such as kanban, challenges and practical recommendations. 

### Registered Report

After you have decided how to collect your data, analyze it and which tools to use, a good way to document these decisions is by writing a [Registered Report](https://support.jmir.org/hc/en-us/articles/360003450852-What-is-a-Registered-Report-).
A Registered Report highlights the importance of the research question and the methods that will be used.
They are peer-reviewed before the research, switching the focus of the review from the results to the substance of the research methods.

## Apply Open Science Best Practices

Open Science invites all researchers to share their work, data and research components openly so that others can read, reuse, reproduce, build upon and share them. 
Particularly in computational research and software development projects, open source practices are widely promoted. 
Unfortunately, making research components open doesn’t always mean that they can be easily discovered by everyone, can be reproduced and built upon by others or everyone will know how to use them.
Applying open and inclusive principles to open science and reproducible research requires time, intention, resources and collaboration, which can be overwhelming for many (see [Ten arguments against Open Science that you can win](https://www.software.ac.uk/blog/2020-12-17-ten-arguments-against-open-science-you-can-win)).
However, by normalising the use of research best practices on a day-to-day basis, you can ensure that everyone has a chance to build habits around opening their work for others in the team, asking for regular feedback, getting attributed for their work and enjoying the process of collaboration.

Open doesn't mean sharing everything, but making it 'as open as possible and as closed as necessary'.
Your research can still be reproducible without all parts necessarily being open.
Research projects that use sensitive data should be more careful and follow research data management plans closely (discussed in the next chapter).

### Important Reasons for Practicing Openness

> ## Open Science in Research
>
> * **Maintains transparency**
> * **Allows others to attribute your work fairly**
> * **Stops others from reinventing the wheel**
> * **Invites collaborators from all around the world**
> * **Makes your work easy to release to be cited by others**
{: .callout}

![Image shows a person having internal debate about open vesus closed research. Open means new opportunities and inclusivity but closed maybe required to ensure data sensitivity or wrongly assumed for funding for novel work.](https://zenodo.org/api/iiif/v2/5c8c70c9-4119-4917-91d1-bc955943f586:b7d2f709-d5f6-4091-bd12-27455cd9e239:open-vs-close-research-with-text.jpg/full/750,/0/default.jpg)

*Open versus Closed Research. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. http://doi.org/10.5281/zenodo.3332807*

* When a project is designed in an open repository, it **allows all stakeholders to track the progress, raise errors and collaborate** to improve the project.
* When developed openly, such as on GitLab or through the registered report, it is easy to point to the timeline when an idea or experiment was proposed and **exhibit how the project developed, who contributed and how others can attribute the work**.
* Having your research open from the start can **help others working in similar subjects or starting research**. It allows them to conduct their review work effectively and build on the existing work, rather than starting from scratch, or 'reinventing the wheel'.
* With open repositories and descriptions for where you need help or how others can collaborate, you can **get people in your area with complementing skills and new ideas interested in your work**, even when you don't know them.

### Research Objects can be Released with Digital Object Identifiers (DOI)

DOIs are alphanumerical unique and persistent identifiers with a permanent web address for different research objects that can be cited by you and other researchers. 
Each pre-print and publication is published with a DOI, but independent of the paper, different research objects can be published online on servers that offer DOIs at any stage of your research. 
Some of these servers are [Zenodo](https://zenodo.org/), [FigShare](https://figshare.com/), [Data Dryad](https://datadryad.org/stash) (for data), [Open Grants](https://www.ogrants.org/) (for grant proposals) and [Open Science Framework](https://osf.io/) (OSF) (for different components of an open research project).
It allows you to show connections between different parts of research as well as cite different objects from your work independently.

When working on GitHub for instance, you can [connect the project repository with Zenodo](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content) to get a DOI for your repository.
The [Citation File Format](https://citation-file-format.github.io/), then lets you provide citation metadata, for software or datasets, in plaintext files that are easy to read by both humans and machines.
Read the [Making Research Objects Citable](https://the-turing-way.netlify.app/communication/citable.html) chapter in *The Turing Way* Guide to Communication.

### Every Little Step Counts towards Openness

Open Science can mean different things in different contexts: open data, open source code, open access publication, open scholarship, open hardware, open education, open notebook, citizen science and inclusive research.
Expert open science practitioners might consider applying a combination of open science practices and make decisions in their work to maintain different kinds of openness.
However, for the new starters in your team, open science can be as simple as ensuring that:
* everyone has added an appropriate license to their project repository,
* recorded their work and shared their project's roadmap on a README/landing page,
* provided some basic manual for how to use their work and how to contribute,
* given credit to previous work upon which they build, and
* regularly communicate about their research.

![Image shows a woman slowly gaining trust and confidence in opening up her research project and benefitting from open collaboration](https://zenodo.org/api/iiif/v2/514d0fdf-b1b3-4e94-842d-85b09f344668:1016fa41-7b71-425b-8aa9-436f42008339:EvolutionOpenResearch.jpg/full/750,/0/default.jpg)

*Small steps towards open science. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. http://doi.org/10.5281/zenodo.3332807*

Encourage taking small steps towards openness as a responsibility towards research integrity in your team.
There are many community-driven resources, guidance and opportunities in open science that provided structured support to learn about open science.
For instance, *The Turing Way* [chapter on Open Research](https://the-turing-way.netlify.app/reproducible-research/open.html) and [FOSTER Open Science](https://www.fosteropenscience.eu/learning/what-is-open-science/#/id/5ab8ea32dd1827131b90e3ac) provides an introduction to help researchers understand what open science is and why it is something you should care about. 
Another hands-on opportunity is provided by [Open Life Science](https://openlifesci.org), which is a 16-week long training and mentoring for anyone in research interested in going through the programme to apply open science practices systematically in their research projects.

## Conclusion

In addition to ensuring effective development and collaboration during the lifetime of the project, a well-organised project also ensures sustainability and reusability of research for both the developers and future users more dynamically.
This aspect is discussed in detail in the Research Data Management episode.

[What gaps have we filled in this section - add biological context]

## Resources and References for Technical Details

- *The Turing Way*. *The Turing Way Community. (2021). The Turing Way: A handbook for reproducible, ethical and collaborative research (1.0.1). Zenodo. [DOI: 10.5281/zenodo.5671094](https://doi.org/10.5281/zenodo.5671094)*
  - [Guide to Project Design](https://the-turing-way.netlify.app/project-design/project-repo.html) 
  - [Creating Project Repositories](https://the-turing-way.netlify.app/project-design/project-repo.html)
  - [Naming files, folders and other things](https://the-turing-way.netlify.app/project-design/filenaming.html)
  - [Licensing](https://the-turing-way.netlify.app/reproducible-research/licensing.html)
  - [Version control](https://the-turing-way.netlify.app/reproducible-research/vcs.html) 
  - [Getting Started With GitHub](https://the-turing-way.netlify.app/collaboration/github-novice.html)
  - [Open Science](https://the-turing-way.netlify.app/reproducible-research/open.html)
  - [Managing a New Community and Team](https://the-turing-way.netlify.app/collaboration/new-community.html)
  - [Making Research Objects Citable](https://the-turing-way.netlify.app/communication/citable.html)
- [The Good Research Code Handbook](https://goodresearch.dev/setup.html) by Patrick Mineault.
- [What is a Registered Report?](https://support.jmir.org/hc/en-us/articles/360003450852-What-is-a-Registered-Report-) by JMIR, referencing to [Registered Reports by Center for Open Science](https://www.cos.io/initiatives/registered-reports).
- [Open Life Science training and Mentoring Programme](https://openlifesci.org). *Batut, Bérénice, Yehudi, Yo, Sharan, Malvika, Tsang, Emmy, & Open Life Science Community. (2021). Open Life Science - Training and Mentoring programme - Website release 2019-2021 (1.0.0). Zenodo. [DOI: 10.5281/zenodo.5636584](https://doi.org/10.5281/zenodo.5636584)*

{% include links.md %}


---
title: "Setting up a computational project"
teaching: 0
exercises: 0
questions:
- "How to set up a computational project?"
- "What main concerns and challenges exist and how to address them?"
- "How to creating a project repository for sharing, collaboration and an intention to release?"
objectives:
- "Describe best practices for setting a project repository"
- "Build a basis for collaboration and co-creation in team projects"
- "Apply computational reproducibility and project management practices"
- "Make is easy for each contributor to participate, attributed and develop"
keypoints:
- "Shared and version controlled repository with well structured and organised files are crucial for starting a project"
- "Documentation is as important as data and code to understand the different aspects of the project and communicate about the research."
- "Licencing and open science practices allow proper use and reuse of all research objects, hence should be applied in computational research from the start."
---

## Setting up a Project

Setting up a project takes place at the project design phase to ensure that all stakeholders can work together efficiently, apply reproducibility methods and communicate their work effectively with each other in the team, as well as externally. 
This requires project leads, managers and organisers to be deliberate and clear about the tools and platform choices in the project, as well as expectations from each contributors from the beginning.
Dedicating some time in designind and setting up a project in the beginning saves time ensuring successful implementation of research plans at different stages of research.
Careful planning at the set-up stage doesn't mean that everything will always go as planned or there will be no unexpected challenges, but it helps prepare in advance for risk management and adapt to changes better.

## Main Concerns and Challenges

Research projects already start with multiple documents such as project proposal, institutional policies and recommendations (including project timeline, data management plan, open access policy, grant requirements and ethical committee recommendations), which should be available to the entire research team at all time.
Furthermore, throughout the lifecycle of a project we handle experimental materials such as data and code, refer to different published studies, establish collaboration with others, generate research outputs includind figures, graphs and publications, many of which undergo multiple versions. 
Then there are general need to document team's way of working, different roles and contribution types, project workflows, research process, learning resources and templates (such as for presentation, documentation, project reporting and manuscript) for your research team.

If not planned in advance, these different kinds of information related to the project can become challenging to record, manage or retreive -- costing precious time of everyone involved and negatively affecting collaborative work in your research team.

[Add biological context for challenges and concerns]
 
## Shared Repository to Share Information

To manage collaborative research in computational projects with largely distributed systems (different computers, cloud infrastructure, remote team members) it is essential to provide clear guidelines on where these digital objects should be held, handled and shared.
Therefore, the first step is to establish a shared digital location (centralised, findable and accessible) like a shared drive (cloud-based or organisation-hosted server space) or online repository (like GitLab) where all project related documentation and resources can be made available for everyone in your research team.
When introduced with a clear guidance for how everyone in your team can contribute to keeping the shared repository up-to-date, it help build a sense of collaboration from the start.
Use this repository to communicate what policies are relevant for people and their work in the project; how data, code and documentation are organised; and how peer-review, open feedback and co-creation will be enabled at all stages of the project.

### Vision, Mission and Milestones

It is particularly important to share the project's vision, mission and milestones clearly. Provide sufficient information for what the expected outcomes and deliverables are.
Provide overarching as well as short-term goals and describe expected outcomes to help contributors move away from focusing on a single idea of the feature. 
Describe the possible expansion of project to give an idea for what to expect beyond the initial implementation.
All proposed plans for the project with information on available resources and recommended practices to ensure everyone is on the same page.

### Role and Responsibilities

Create a directory to give information about the different stakeholders with their roles in the project, keys skills, interests and contact information (when possible). 
Describe what responsibilies and opportunities for collaboration different members will have.
Provide resources on ways of working to ensure fair participation of stakeholders who collaborate on short- and long-term milestones within the project.
It reduces or addresses concerns about the project’s progress towards meeting goals and prevent potential fallout between project stakeholders.
When possible, such as in an open source project, provide these details for those outside the current group, especially when you want to encourage people outside the project to be involved.

## Maintain History through a Version Control

Practices and recommendations described in this lesson is applicable to all areas of biological research.
What can be considered slightly different in computational projects is that every object required to carry out the research exist in digital form.
Starting from research workflow, data, software, analysis process, resulting outcomes as well as how researchers involved in the project communicate with each other.
This means that research objects can be organised and maintained without losing the provenance or missing knowledge of how each of these objects are connected in the context of your project.

Management of changes or revisions to any types of information made in a file or project is called versioning.
Using version control system, all changes made in a file or research object over time is recorded.
It allow all collaborators to track history, review any changes, give appropriate credit to all contributors, track and fix error when they appear and revert or go back to earlier versions. 
Different version control systems can be used through a program with a web browser-based applications (such as [Google Docs](https://docs.google.com/) for documents) and more dynamically for code and all kinds of data through command-line tools (such as [Git](https://en.wikipedia.org/wiki/Git)) and their integration into graphical user interface ([Visual Studio Code](https://code.visualstudio.com/) editor, [Git-gui](https://git-scm.com/downloads/guis) and [gitkraken](https://www.gitkraken.com/)).
Practice of versioning is particularly important to allow non-linear or branched development of different parts of the project, testing a new feature, debugging an error or reusing coode from one project to different data by different contributors.

[GitLab](https://about.gitlab.com/), [GitHub](https://github.com/), or [BitBucket](https://bitbucket.org) are online platforms that allow hosting version controlled project online and allow multiple collaborators to participate.
Different members can download a copy of online repository (most recent version), make changes by adding their contributions locally on their computer and push the changes to GitLab/GitHub/BitBucket (a new version!) allowing others to build on the new development. 

Read [All you need to know about Git, GitHub & GitLab](https://towardsdatascience.com/all-you-need-to-know-about-git-github-gitlab-24a853422ff3) on Towards Data Science and [version control](https://the-turing-way.netlify.app/reproducible-research/vcs.html) in *The Turing way* for more details on workflow, technical details of using git and versioning large datasets.

## Project Repositories with Project Management Practices

Set up repository with folder structure and files with a landing page or README file describing what each file and folder contains.
Here are a few tips to get the basic structure sorted:
- Organise project management files (those discussed above) in one folder, or if they apply to multiple projects, then create a separate repository that can be appropriately linked.
- Create a folder for ethics governance and policies that should be referred to at different stages of research.
- Create a folder for handling project related data, analysis code and results. This folder will particulrly require logical heirarchy and backing up along with versioning.
- Maintain a separate folder for documentation capturing the development, lessons learned, failed approaches, presentations and notes related to the project as well as manuscript and related materials.
- Use file naming convention consistently. Keep it organised for example using ISO 8601 naming convention: YYYY-MM-DD-[short but descriptive name]-[version if applicable].[file extention such as .txt]. See [Naming files, folders and other things](https://the-turing-way.netlify.app/project-design/filenaming.html) chapter in *The Turing Way*.
- Create an onboarding process of team members to give access to different resources, guidelines and setting different levels of responsibilities (permission level on GitHub) for them as required.
- Organise basic training for your team members on how to use the project repository, version control system and tools required to participate and contribute to the project repository.
- Select a project management system such as a kanban or project board to track tasks, progress and backlogs. GitHub projects have a [project board feature](https://docs.github.com/en/issues/organizing-your-work-with-project-boards/managing-project-boards/creating-a-project-board) to manage different tasks via issues (to do list) and Pull requests (tasks completing them by sending changes to the repository).

![](http://nikola.me/assets/img/folder_structure.png)

Illustration from [Setting up an Organised Folder Structure for Research Projects](http://nikola.me/folder_structure.html) by Nikola vukovic (2017, March 09).

> ## Start with an intention to Release
> 
> * Structure and organise project folders and files in a logical way using consistent convention for individual file names, making them easy to locate, access and reuse.
> * Review and consider grant as well as institution requirements and policies for how research needs to be disemminated at the end of the project.
> * Choose and define license-types for different research objects such as data, software, and documentation.
> * Embed practices for computational Reproducibility and encourage skill-building in this area (see version control, computational environments, code testing, software package management).
> * Give documentation process it's own place in the project timeline and milestones capturing contributions by all stakeholders, making your research objects easy to attribute and release.  
{: .callout}

### Choose a License

Research does not have to be completed to be useful to others. Having a license is the way to communicate how do you want your research to be used and shared.
There are different types of licenses depending on the type of research objects such as code, data or documentation and preferences for re-use and sharing. 
The [choosealicense](https://choosealicense.com/) website has a good mechanism to help you pick a license.
To learn more about how to add a license to your project, read the [Licensing chapter](https://the-turing-way.netlify.app/reproducible-research/licensing.html) in **The Turing way** Guide for Reproducible Research.

### Consider Computational Reproducibility

Thinking about which software, tools and platforms to use will greatly affect how you analyse and process data, as well as how you share your results.
The idea is to facilitate others in recreating the set-up process necessary to reproduce your research. 
Some tools that can be used to enable these are the following:
* **Dependency managers** such as [Conda]() keep dependencies updated and make sure the same version of dependencies you used in the development environment are used when reproducing a result.
* **Containers** such as [Docker]() is a way to create computational environments that are isolated from other applications.
* **Literate Programming** using [Jupyter Notebook]() is an extremely powerful way to use online environment to execute code and scripts, as well as add notes and additional information about what they do.
To learn more about how to create a reproducible environment, the chapter on [Reproducible Environments]() in *The Turing way* is a good place to start.

### Provide a Process for Documentation

TBA

<!--
- Documentation Sprint, visible ways to recognise and incentivise the process of documenting, making explicit time in the project workflow and time line from the start.
- Beginning of a project with making simple template for documentation and keeping it simple.
- transparent about early and interim research outcomes, thus receiving the proper credit for those
- equity, diversity and inclusion is surely relevant whether it's experimental work or not
- Agile [teamwork](https://the-turing-way.netlify.app/collaboration/new-community/new-community-teamwork.html) -->

> ## Registered Report
> 
> After you have decided how to collect your data, analyze it and which tools to use, a good way to document these decisions is by writing a Registered Report.
> A Registered Report highlights the importance of the research question and the methods that will be used.
> They are peer-reviewed before the research, switching the focus of the review from the results to the substance of the research methods.
{: .callout}

## Apply Open Science Best Practices

TBA

> ## Practice Openness from the Start
>
> Saves time: once the project is designed and all the connections between different parts of research can be organized with little effort.
> Makes your research openly available: having your research open from the start can help others working in similar subjects or starting research.
> Get people interested: you can get people to help you from the start since your project is documented and is easy to share.
{: .callout}


## Conclusion

In addition to ensuring effective development and collaboration during the lifetime of the project, a well organised project also ensure sustainability and reusability of research for both the developers and future users more dynamically.
This aspect is discussed in detail in the Research Data Management episode.

[What gaps have we filled in this section - add biological context]

## Resources to take project setup to next level 

- The Turing Way [Guide to Project Design](https://the-turing-way.netlify.app/project-design/project-repo.html) 
  - [Creating Project Repositories](https://the-turing-way.netlify.app/project-design/project-repo.html)
  - [Naming files, folders and other things](https://the-turing-way.netlify.app/project-design/filenaming.html)
  - [Licensing](https://the-turing-way.netlify.app/reproducible-research/licensing.html)
  - [Version control](https://the-turing-way.netlify.app/reproducible-research/vcs.html) 
  - [Getting Started With GitHub](https://the-turing-way.netlify.app/collaboration/github-novice.html)
  - [Open Science](https://the-turing-way.netlify.app/reproducible-research/open.html)
  - [Managing a New Community and Team](https://the-turing-way.netlify.app/collaboration/new-community.html)
- [The Good Research Code Handbook](https://goodresearch.dev/setup.html) by Patrick Mineault.
- What is a Registered Report? (2022, February 12). Retrieved from https://support.jmir.org/hc/en-us/articles/360003450852-What-is-a-Registered-Report-
- Open Life Science training and Mentoring to integrare open science practices in research systematically. [Visit website](https://openlifesci.org)

{% include links.md %}


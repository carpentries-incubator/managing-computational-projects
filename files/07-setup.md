---
title: Setting up a computational project
---

## Setting up a Project



![](fig/research-cycle.jpg){alt='The research process is represented as a perpetual cycle of generating research ideas, performing data planning and design, data collection, and data processing and analysis, publishing, preserving and hence, allowing re-use of data.'}

*Research Lifecycle. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. [http://doi.org/10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)*

A research project starts right with a research idea.
We start by communicating that with other researchs in our team.
Then come the following steps:

1. planning and designing the research work
2. describing the research protocols
3. deciding how data will be collected
4. selecting methods and practices for processing and wrangling data
5. conducting our studies and analysis
6. publishing all the research objects so everybody can access it
7. archiving it to ensure that our research is reusable, meaning, that someone else can go through this whole process of reproducing or building upon our work.

Each of these steps is important for every single researcher, irrespective of their roles in the project.
They are usually not taken one after the other, but concomitantly, it is therefore important to plan and take decisions for each of them before the project starts.
However, a project lead (such as Principal Investigators, managers and supervisors) have an added responsibility to set up the project in a way that ensures that all members of their research team can work together efficiently at all stages of the project.

With an overarching goal to maintain research integrity and ethical practices from the start, we need to consider reproducibility methods, collaborative approaches and transparent communication processes for the research team as well as the external stakeholders.
As project leads, managers and team organisers, it is crucial to be deliberate and clear about the tools and platforms selected for the project, as well as expectations from each contributor from the beginning.
Dedicating some time in thinking through and documenting the setup of a project saves time, ensuring successful implementation of research plans at different stages of research.
At this stage, you can't be sure that everything will always go as planned or there will be no unexpected challenges, but it helps prepare in advance for risk management and adapt to changes when needed.

## Main Concerns and Challenges

Scientific results and evidence are strengthened if those results can be replicated and confirmed by several independent researchers.
This means understanding and documenting the research process, describing what steps are involved, what decisions are made from design to analysis to implementation stages and publishing them for others to validate.
Research projects already start with multiple documents such as project proposal, institutional policies and recommendations (including project timeline, data management plan, open access policy, grant requirements and ethical committee recommendations), which should be available to the entire research team at all times.
Furthermore, throughout the lifecycle of a project we handle experimental materials such as data and code, refer to different published studies, establish collaboration with others, generate research outputs including figures, graphs and publications, many of which undergo multiple versions.
Then there is a general need to document the team's way of working, different roles and contribution types, project workflows, research process, learning resources and templates (such as for presentation, documentation, project reporting and manuscript) for your research team.

If not planned in advance, these different kinds of information related to the project can become challenging to record, manage or retrieve -- costing precious time of everyone involved and negatively affecting collaborative work in your research team.

## Shared Repository to Share Information

To manage collaborative research in computational projects with mainly distributed systems (different computers, cloud infrastructure, remote team members) it is essential to provide clear guidelines on where these digital objects should be held, handled and shared.
Therefore, the first step is to establish a shared digital location (centralised, findable and accessible) like a shared drive (cloud-based or organisation-hosted server space) or online repository where all project related documentation and resources can be made available for everyone in your research team.

When introduced with clear guidance for how everyone in your team can contribute to keeping the shared repository up-to-date, it helps build a sense of collaboration from the start.
You can use this repository also to communicate what policies are relevant for people and their work in the project; how data, code and documentation are organised; and how peer-review, open feedback and co-creation will be enabled at all stages of the project.


:::::::::::::::::::::::::::::::::::::::::  callout

The use of standard folder structure and reamde files can help to provide a similar structure to all project and make sure all information is gathered and available. One such standard has been developed following researcher's feedback inside the `gin-tonic` project:
https://gin-tonic.netlify.app/standard/

:::::::::::::::::::::::::::::::::::::::::  

### Versioning

No matter how your group is organized, the work of many contributors needs to be managed into a single set of shared working documents.
Version control is an approach to record changes made in a file or set of files over time so that you and your collaborators can track their history, review any changes, and revert or go back to earlier versions.
Management of changes or revisions to any types of information made in a file or project is called versioning.

See the version control episode for detailed information.

### Vision, Mission and Milestones

It is particularly important to share the project's vision, mission and milestones transparently. Provide sufficient information for what the expected outcomes and deliverables are.
Provide overarching as well as short-term goals and describe expected outcomes to help contributors move away from focusing on a single idea of the feature.
Describe the possible expansion of the project to give an idea of what to expect beyond the initial implementation.
All proposed plans for the project with information on available resources and recommended practices to ensure everyone is on the same page.



### Role and Responsibilities

Create a folder/directory to give information about the different team members with their roles in the project, key skills, interests and contact information (when possible).
Describe what responsibilities and opportunities for collaboration different members will have.
Provide resources on ways of working to ensure fair participation of stakeholders who collaborate on short- and long-term milestones within the project.
It reduces or addresses concerns about the project's progress towards meeting goals and prevent potential fallout between project stakeholders.
When possible, such as in an open source project, provide these details for those outside the current group, especially when you want to encourage people outside the project to be involved.

You may use a spreadsheet to keep an overview of the members responsability and contribution to the project. You may want to use the CrediT taxonomy in that spreadseet, so that this information can be easily added to the final manuscript and other research outputs metadata.

### Data management plan

This will be discussed in detail in the Research Data Management section.

:::::: discussion
What research output are you aiming for? Will you publish the data, the code, the hardware documentation, the protocols independently of the main manuscript publication?

::::::

> ## Start with an intention to Release/publish
> 
> - **Structure and logically organise project folders and files** using the consistent convention for individual file names, making them easy to locate, access and reuse.
> - Review and **consider how research needs to be disseminated** at the end of the project as per the grant as well as institution requirements and policies. This include the choice of licenses for dissemination.
> - Discuss team member **responsability and roles**, as well as author byline at the start of the project
> - **Embed computational reproducibility**, notably through skill-building in your team (see version control, computational environments, code testing, software package management).
> - **Add documentation process to project timelines and milestones** for capturing progress, blockers and contributions by all stakeholders, making your research objects easy to attribute and release.

### Team Framework

To ensure that all team members have a shared understanding of ways of working, select or adapt a [Team Framework](https://the-turing-way.netlify.app/collaboration/new-community/new-community-teamwork.html) that provides guidance on how to best work in your team. For instance, Agile workflow for teamwork enables iterative development, with frequent interaction between interested parties to decide and update requirements.
See [Teamwork for Research Software Development](https://nlesc.github.io/teamwork-for-research-software-development/) tutorial by Netherlands eScience Center with lessons on teamwork, agile and scrum framework, project board such as kanban, challenges and practical recommendations.
See next lessons for more information about team work and collaborative working.

## A good start

In addition to ensuring effective development and collaboration during the lifetime of the project, a well-organised project also ensures sustainability and reusability of research for both the developers and future users more dynamically.
But it all comes to implement the tools planned in the setting up phase.
One may need to iteratively modify the plan and include different tools if the team changes or grow.
This aspect is discussed in detail in the Research Data Management episode.

:::::::::::::::::::::::::::::::::::::::  challenge

1. Create a project on GitHub

- Create a Github account at https://github.com
- Go to https://github.com/tonic-team/Tonic-Research-Project-Template/
- Click `Use this template` and follow instructions.

NB: You can use that template on other git platforms.

2. Change the `reamde.md` file directly on the browser: enter information about the project, commit with a message.  Enter information about the team (roles and responsabilities), commit with a second message.

3. Look at the history of the readme.md file, understand the need for good commit messages.

::::::::::::::::::::::::::::::::::::::: 

:::::::::::::::::::::::::::::::::::::::: keypoints

- Shared repository with well structured and organised files are crucial for starting a project
- Documentation is as important as data and code to understand the different aspects of the project and communicate about the research.
- Licencing and open science practices allow proper use and reuse of all research objects, hence should be applied in computational research from the start.

::::::::::::::::::::::::::::::::::::::::::::::::::



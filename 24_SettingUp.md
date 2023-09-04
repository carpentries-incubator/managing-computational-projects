---
title: 'Managing project start and collaborations'
teaching: 25
exercises: 50
---

::::::::::::::::::::::::::::::::::::::: objectives

- Describe best practices for setting a project repository
- Build a basis for collaboration and co-creation in team projects
- Plan computational reproducibility and project management practices
- Make it easy for each contributor to participate, contribute and be recognised for their work

- Demonstrate GitHub Project Board to enable project management.
::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: questions

- How to set up a computational project?
- What main concerns and challenges exist and how to address them?
- How to create a project repository for sharing, collaboration and an intention to release?
- What extra tools may be used ?

- How to manage and oversee tasks and track progress of your projects?
- How collaborative practices help ensure code quality, testing and reuse?
- What is literate programming and how does it help with early communication, testing and collaboration?

::::::::::::::::::::::::::::::::::::::::::::::::::






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



<br><br><br><br>

---

<br><br>






::::::instructor

In order to indroduce kanbans, one can use different tools. We used miro to both collect feedback and introduce kanbans. Then we had a practical section with a mix of demo and hands-on using https://next.forgejo.org/. We choose that tool because it is a particularly not well known open source alternative.

::::::

## Project Management Tools


In the previous chapters, we have already discussed practices that enable the effective management of projects in:

- setting up shared resources;
- defining the vision, mission and roadmap of your project;
- managing data and other research-related resources; and
- versioning and tracking progress.

It is important to communicate tasks and responsibilities to different stakeholders of the project.
However, what is even more important is to allow all members to understand where in the entire project their tasks fit and how they can track the progress of the entire project.

### Gantt charts

Gantt charts are timeline views of the project plan. It defines which task should be done (and finished) at which time (and by whom). Some advanced tools allows to visualise dependencies between tasks. It is an important tool to stay on track or redefine priorities when milestones are not met in time. 


### Kanban

Kanban provide a visual overview of the tasks, their status (to do, in progress, done) and the people responsible for them in a columnar form.
While physical boards and post-it (of different colors and forms) are often used,
these tasks can be visualised on a digital board where different columns can present different statuses, different task groups or priorities.

It is also a tool to focus the work on a few tasks. Indeed the "in progress" tab should only contain 1-3 elements per team member, so that one finish one task before starting a new one. Kanban can also be used to communicate what is in progress to other team members and coordinate the work.


Some tools that are popular among research community is [Asana](https://asana.com/), [Trello](https://trello.com/en-GB), [Todoist](https://blog.doist.com/todoist-project-management/) and [Notion](https://www.notion.so/).

The majorities of Git repositories have advanced features like embedded kanban systems, allowing some automation of cards movement and links between task management and data storage.

### Git repositories for Project Management

Similar features on GitHub, GitLab, Codeberg or GIN can be used for project management. The following section takes GitHub as an example, but most of this can be applied in other platforms.

**Issue** is a GitHub integrated feature that allows everyone to track the progress on GitHub.
Similar to a 'To-Do List', issues can be anything from a project milestone (releasing an R package, submitting to an online data repository, a working simulation) but also specific issues with code (fixing a bug, adding a function, updating tests).

Based on the tasks described in an issue, your collaborators can address them and save or 'commit' changes in their local copy of the repository.
Local changes then can be 'pushed' to the repository on GitHub for 'review' via the **Pull Request** feature.
Once a pull request is opened, different collaborators can discuss and review the potential changes and add follow-up commits before those changes are 'merged' into the main repository.

**Project boards** are kanban-like features on GitHub that help you visualise (list of tasks), categorise (in columns) and prioritise (drag/move around) different tasks.
A collection of project boards can be created for a different set of tasks, comprehensive roadmaps, or even release checklists.
By linking **issues and Pull Requests**, project boards can create workflows.
The Project board shows metadata for issues and pull requests, like labels, assignees, the status, and who opened it.
Additional notes within columns can be added as task reminders, references to issues and pull requests from any repository on GitHub.com, or to add information related to the project board.
This Kanban board feature can be very helpful in getting a snapshot of multiple research projects within a team/lab and tracking what multiple people are currently working on.
You can read more about [Project Board in GitHub Documentation](https://docs.github.com/en/issues/organizing-your-work-with-project-boards/managing-project-boards/about-project-boards).

<img src="https://i.postimg.cc/3wDm4Qw4/Screenshot-2022-02-10-at-19-47-35.png" alt="drawing" width="1000"/>

*An example is Kanban for researcher project management. GitHub boards can be given any name.*

:::::::::::::::  solution

## Tutorial: Kanban Boards for Project Management (Click to view)

Within Github, the Projects Tab can provide a board with cards to organise issues collaboratively. If a team is already working within Github, this can be beneficial as everything remains in the same place.
"Issues" can be used as a record of ToDos or others flagging up bugs and features that need to be addressed. They can be attached to particular repos and assigned to people.

<img src="https://i.postimg.cc/Kzfz40t3/Screenshot-2022-02-10-at-19-55-23.png" alt="drawing" width="600"/>
*A traditional Kanban for a collaborative computational project. Keeping track of bugs and what everyone is working on.*

The Kanban board can be modified to whatever layout or structure makes sense to you. This example uses the concept to publication/release pipeline.

<img src="https://i.postimg.cc/3wDm4Qw4/Screenshot-2022-02-10-at-19-47-35.png" alt="drawing" width="1000"/>

Github also allows different summary views for collaborative issues across multiple repos, which can be helpful for organising larger teams.

<img src="https://i.postimg.cc/d37Yv66Y/Screenshot-2022-02-10-at-19-47-51.png" alt="drawing" width="600"/>

*Author: Lydia France (Junior Data Scientist, The Alan Turing Institute, UK)*

Similar walkthrough can be done with https://next.forgejo.org (Codeberg-like test platform). Lecturer prepare a repository with a readme, a project and one issue. Fake user should be added to the platform before the course, so that people do not have to register, and users are added as collaborators on the repository.

- create an issue "adding myself to the participant list"
- assign it to the project
- move it in the board view
- assign someone, add a label, add a milestone.
- modify readme file, commit change with a new branch.

:::::::::::::::::::::::::

## Collaborating on Computational Projects

Much research is now collaborative and a shared code repository can be effectively used to enable collaboration at all stages of code development at the analysis and implementation stage.

Later in this material, we will go through best practices in code writing, testing, reviews and modularity, which help achieving computational reproducibility.
Before that, we will look at ways to foster documentation of the work, and how research data management is necessary for efficient collaboration and reproducible research.


## Document collaborations

It is important to document who does what in a project, such that credit can be fairly attributed. This starts at day one, when roles and responsibilities are set, but needs to be often updated as the roles may change during the project.
In large team, this may be an essential part of growing a community, especially if one does recognize roles usually overseen in the research environment.

The tenzing spreadsheet (https://tenzing.club) will allow to present the contribution in publications and may be a good tool to start the collection of contribution. A lot of open source project, like The turing way, are using a bot (https://allcontributors.org, works only on GitHub) to collect and show several contribution types.




:::::::::::::::::::::::::::::::::::::::  challenge

- Go to your research repository created in the setup chapter
- Open one issue, assign one person and a milestone. For instance `write a data management plan` milestone in 6 months.
- add to do to the issue (optional)
- Use the project board to move the issue inside the board, move it to a different column.

::::::::::::::::::::::::::::::::::::::: 

:::::::::::::::::::::::::::::::::::::::: keypoints

- Make group leaders familiar with practices that are crucial for their teams to develop reproducible code.
- Encourage researchers to think about code reproducibility through quality check, testing, sharing their code as well as a research environment.
- Introduce Continuous Integration for automating the testing process.

::::::::::::::::::::::::::::::::::::::::::::::::::



:::: discussion

What measures described in this session are meant to make research more reproducible, what measures are meant to facilitate team work. How does the different measures interact ?

::::: solution

Making interaction measure is also making the research more reproducible. Indeed most of the reusability of the data and code can be best tested when several people interact on a project. Documenting for a current collaborator helps a lot to make sure documentation will be enough for new collaboratory coming in the project later on.
:::::

::::

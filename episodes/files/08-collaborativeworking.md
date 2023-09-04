---
title: Coordinate collaborative work. 
---

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



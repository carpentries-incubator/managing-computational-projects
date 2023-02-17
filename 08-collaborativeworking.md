---
title: Implementing tools and methods during the project
teaching: 20
exercises: 10
---

## Project Management Tools

::::::::::::::::::::::::::::::::::::::: objectives

- Demonstrate GitHub Project Board to enable project management.
- Discuss the importance of code quality, modular programming, and code testing for reusable error-free code.
- Encourage researchers to combine code with documentation to communicate their work.
- Learn about methods to capture reproducible research environments.

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: questions

- How to manage and oversee tasks and track progress of your projects?
- How collaborative practices help ensure code quality, testing and reuse?
- What is literate programming and how does it help with early communication, testing and collaboration?

::::::::::::::::::::::::::::::::::::::::::::::::::

In the previous chapters, we have already discussed practices that enable the effective management of projects in:

- setting up shared resources;
- defining the vision, mission and roadmap of your project;
- managing data and other research-related resources; and
- versioning and tracking progress.

It is important to communicate tasks and responsibilities to different stakeholders of the project.
However, what is even more important is to allow all members to understand where in the entire project their tasks fit and how they can track the progress of the entire project.
Project management tools such as Kanban provide a visual overview of the tasks, their status (to do, in progress, done) and the people responsible for them.
These tasks can be visualised on a digital board where different columns can present different statuses, different task groups or priorities.

Some tools that are popular among research community is [Asana](https://asana.com/), [Trello](https://trello.com/en-GB), [Todoist](https://blog.doist.com/todoist-project-management/) and [Notion](https://www.notion.so/).

For computational projects, researchers already use online repositories on Github/GitLab to store and version control their projects.
They can use several advanced features on these platforms for project management.

### GitHub for Project Management

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

**Author: Lydia France (Junior Data Scientist, The Alan Turing Institute, UK)**

:::::::::::::::::::::::::

## Collaborating on Computational Projects

Much research is now collaborative and a shared code repository can be effectively used to enable collaboration at all stages of code development at the analysis and implementation stage.

Later in this material, we will go through best practices in code writing, testing, reviews and modularity, which help achieving computational reproducibility.
Before that, we will look at ways to foster documentation of the work, and how research data management is necessary for efficient collaboration and reproducible research.

## References

- *The Turing Way* Community. (2021). The Turing Way: A handbook for reproducible, ethical and collaborative research (1.0.1). Zenodo. [https://doi.org/10.5281/zenodo.5671094](https://doi.org/10.5281/zenodo.5671094). This episode reuses contents from the following *The Turing Way* chapters:
  - [Continuous Integration](https://the-turing-way.netlify.app/reproducible-research/ci/ci-options.html)
  - [Code Testing](https://the-turing-way.netlify.app/reproducible-research/testing.html)
  - [Code Quality](https://the-turing-way.netlify.app/reproducible-research/code-quality.html) chapter in *The Turing Way*.
  - [Capturing Computational Environments](https://the-turing-way.netlify.app/reproducible-research/renv/renv-options.html)
- [The Definitive Guide](https://bookdown.org/yihui/rmarkdown)
- [Jupyter/IPython Notebook Quick Start Guide](https://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/what_is_jupyter.html)
- [Guides to Better Science by British Ecological Society](https://www.britishecologicalsociety.org/publications/guides-to).



:::::::::::::::::::::::::::::::::::::::: keypoints

- Make group leaders familiar with practices that are crucial for their teams to develop reproducible code.
- Encourage researchers to think about code reproducibility through quality check, testing, sharing their code as well as a research environment.
- Introduce Continuous Integration for automating the testing process.

::::::::::::::::::::::::::::::::::::::::::::::::::



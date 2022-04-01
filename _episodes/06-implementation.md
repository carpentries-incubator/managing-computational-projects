---
title: "Implementing tools and methods"
teaching: 0
exercises: 0
questions:
- "What tools are useful for managing and overseeing projects/data?"
- "What are best practices for reviewing code?"
- "How can teams work together on the same code?"
objectives:
- "First learning objective. (FIXME)"
keypoints:
- "First key point. Brief Answers to questions. (FIXME)"
---

## Project Management Tools

Researchers who already use Github/GitLab to store and version control their projects can use several online features for project management.

**Issue** is a GitHub integrated feature that allows everyone to track the project's progress on GitHub.
Similar to a 'To-Do List', issues can be anything from a project milestone (releasing an R package, submitting to an online data repository, a working simulation) but also specific issues with code (fixing a bug, adding a function, updating tests). 

Based on the tasks described in an issue, your collaborators can address them and save or 'commit' changes in their local copy of the repository.
Local changes then can be 'pushed' to the repository on GitHub for 'review' via the **Pull Request** feature.
Once a pull request is opened, different collaborators can discuss and review the potential changes and add follow-up commits before those changes are 'merged' into the main repository.

**Project boards** are kanban like features on GitHub that help you visualise (list of tasks), categorise (in columns) and prioritise (drag/move around) different tasks. 
A collection of project boards can be created for a different set of tasks, comprehensive roadmaps, or even release checklists. 
By linking **issues and Pull Requests**, project boards can create workflows.
The Project board shows metadata for issues and pull requests, like labels, assignees, the status, and who opened it.
Additional notes within columns can be added as task reminders, references to issues and pull requests from any repository on GitHub.com, or to add information related to the project board. 
This Kanban board feature can be very helpful in getting a snapshot of multiple research projects within a team/lab and tracking what multiple people are currently working on.
You can read more about [Project Board in GitHub Documentation](https://docs.github.com/en/issues/organizing-your-work-with-project-boards/managing-project-boards/about-project-boards).

<img src="https://i.postimg.cc/3wDm4Qw4/Screenshot-2022-02-10-at-19-47-35.png" alt="drawing" width="1000"/>

> *An example Kanban for researcher project management. Boards can be given any name.*

## Collaborative Research Practices

- Functional programming (approach for reproducibility)
- Reproducible environment
- Literate programming: Jupyter Notebook
- Binderise your repo

# Good Code 

Writing code often comes down to decisions about when to save time. 
Code fast, and you have a solution within hours or days. 
Coding well requires an early investment that might be ignored in favour of "I'll just find a quick solution..." But more often than not the time penalty is magnified as a result further down the line:

<img src="../fig/IMP-codefastorwell.png" alt="drawing" width="600"/>

> *Adapted from the more pessimistic comic by [XKCD](https://xkcd.com/844/)*

Writing good code early means losing days to deliberate good practice. 
But trying to undo mistakes and work with "good enough" code can take weeks or months, and still end up having to start again anyway. 
The blow to morale can also not be understated. 
"Good enough" fast code tends to have mistakes and is hard for others to review, which is not good for scientific pipelines. 
Even if you end up with workable code, it is not suitable for release or publication at the end of the project. 

As a supervisor you can influence by sharing or demonstrating:

- the horrible feeling of finding bugs, but the interesting process of debugging (reading error messages, tracking the bug, fixing it!)
- examples of doing maths and statistics fast, and explaining their importance in data

These are where these time investments happen and help your students avoid the soul-destroying process of working with "spaghetti" code and having to start from scratch. 
Good code is not about perfection, it is about general principles your students and postdocs can get training in.

## Modular Programming (Functions)

- do a diagram of directories
- no copying and pasting
- mindset stable and not changed immutably

> ***Case Study***
>
> *My postdoc wants to work with messy genomics data. I know my previous postdoc had to do the same thing and it took her months.... but it's difficult to read her files so my new postdoc will have to work it out again.*
>
{: .callout}

Applying methods from one person's work and applying it to another problem can take weeks, if not months, of work. 
Applying methods from publications is even harder: static PDF files can’t describe the lines of code and data that lead to those discoveries. 
This is an increasingly important problem in the face of growing mistrust in science, and a reproducibility crisis plaguing the sciences.

Instead, functional programming is about writing code that works as modular steps. 
Each step is clearly commented on and carefully produced so that it can be reused in different contexts. 
Often when you are analysing data, you need to repeat the same task many times. 
For example, you might have several files that all need loading and clean in the same way, or you might need to perform the same analysis for multiple species or parameters. 
Rather than copying and pasting, writing a function and calling that function leads to fewer errors and confusion overall. 

We can think of this on a broad scale, say one student's computational work has the following steps, where blue shows data cleaning, and yellow the analysis and statistics. 


<img src="../fig/IMP-pipeline1.png" alt="drawing" width="600"/>

Another student can take reuse the data cleaning and initial visualisation steps because her data was from the same source and is in the same format. She can later add her own model:

<img src="../fig/IMP-pipeline2.png" alt="drawing" width="600"/>

On the micro-scale, functional programming ensures that each code file itself is comprised of modular blocks, whether for data processing, analysis pipeline, simulation and so on. 
Depending on your programming language, these may be used as a package or a library or saved in files that are available for installation. 
Just the same as the diagram above, making sure functions are robust and reuseable means they can be shared throughout different workflows and for different projects. 

> Training in functional programming is usually an excellent pre-requisite for members of your lab. 

A first step can be to **draw out** and create diagrams to plan code before starting and identifying the modular steps involved. 
This does not require technical knowledge of a language and is, therefore, a great exercise for direct supervision. 

To find out more...

https://www.britishecologicalsociety.org/wp-content/uploads/2017/12/guide-to-reproducible-code.pdf

## Literate Programming


Literate programming is about comments and documentation and telling other humans what is happening in your pipeline. 
Depending on the scale of your computational projects this will include:

- Inline comments 
- A Readme file
- An RMarkdown or Jupyter Notebook with examples
- An online documentation wiki 

Markdown is a way of writing plain text that doesn't need specific software to read it (so not Microsoft Word), which can be converted to many formats including HTML, PDF or even Word documents. 
Many online tools like popular messaging services use markdown, and marking up your text is not difficult, for example:

`**bold**`
`_italics_`
`# Title`
`## Heading`
`### Subheading`

## Testing

<Move some content on testing here>

- Testing and quality checks
- Continuous integration

## Conclusion
  
- What gaps have we filled in this section
- Project management overview 

## Resources for taking this to next level

- https://the-turing-way.netlify.app/collaboration/new-community.html 

{% include links.md %}


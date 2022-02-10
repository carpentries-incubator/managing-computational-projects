---
title: "Implementating tools and methods"
teaching: 0
exercises: 0
questions:
- "Key question (FIXME)"
objectives:
- "First learning objective. (FIXME)"
keypoints:
- "First key point. Brief Answer to questions. (FIXME)"
---

## Keep and overview of selected tools and methods
- Project board

## Research Data Management
- Introduction to Research Data Management
- FAIR principles
- Revisiting Version Control License
https://the-turing-way.netlify.app/reproducible-research/vcs/vcs-data.html 
- Metadata standards
https://the-turing-way.netlify.app/reproducible-research/rdm.html 

## Collaborative Research Practices

- Functional programming (approach for reproducibility)
- Reproducible environment
- Literate programming: Jupyter Notebook
- Binderise your repo


### Code Review

A simple objective of the review process is to catch bugs and elementary errors. Code review can also help to ensure that code is readable and easy to understand.

Code review is often done in pairs, with each reviewer also having some of their code reviewed by their partner. Doing this can help programmers to see and discuss issues and alternative approaches to tasks, and to learn new tips and tricks.

There are different methods to code review. 

- **Synchronous/Looking Over The Shoulder** Helping the student go through their scripts and solving bugs side by side. 
- **Synchronous/Code Tour** The student may present their pipeline to describe the logical steps. Narrating code and software steps (documentation, pseudocode, describing how to run the code). 
- **Asynchronous/I'll get back to you on that** Supervisor or collaborator runs the code themselves using a reproducible environment, or simply reads through the steps. Github has features to help with this (see below)


Reviewing code in small chunks incrementally as the project is developing can help make the code review process a lot more efficient.
>
> *Don’t review more than 400 lines of code (LOC) at a time, less than 200 LOC is better. Don’t review more than 500 LOC/hour*.



***Reviewing is not about creating more work, nor the PI rewriting everything.***


>
> *Scientists are very aware that their understanding of code dissipates over time and that this is a large hidden cost. Equally, they suspect that they spend a lot of time reinventing wheels. They may not know how code review will help with that, but they hope that it will.* 
>
> ...
>
> *One of the mentors expected scientists to overhaul complete code bases. The advice from one mentor was cogent: if you check the docstring and write a test every time you touch a method, the code improvements will accumulate over time with minimal effort.*
>
> *Someone who isn’t intimately involved with your project should understand from the module documentation and the comments what you are trying to do, what approach you’re taking, and why they should expect it to work.*
>
> ...
>
> *Take some time to prepare a presentation about your code that will answer the above questions even for someone who hasn’t read the code. You’re more likely to get useful feedback, rather than nitpicking about syntax, if the audience can see the big picture.*
>
> ...
>
> *Keep it a safe environment, i.e. make sure chastising is relatively gentle even when deserved (but do point out when code doesn’t meet the required standard – frame it as a learning experience though).*
>
>***Petre, Marian, and Greg Wilson. "Code review for and by scientists: preliminary findings." (2014).***

Further considerations in code review can be found here:

[Turing Way: Code Reviewing Process](https://the-turing-way.netlify.app/reproducible-research/reviewing.html)

[Code Reviews: the Lab Meeting for Code, F. Perez](http://fperez.org/py4science/code_reviews.html)

### What to look for during Code Review

Knowledge of the language is not always necessary!

**Bugs/Potential bugs**
- Repetitive code
- Disagreements between the code and the spec
- Off-by-one errors
- Global variables and other "too-large" scopes
- Optimistic, undefensive programming
- Magic numbers

**Unclear, messy code**
- Bad variable/method names
- Inconsistent indentation
- Convoluted control flow
- Too much on one line (80 characters preferred!)
- Trivial comments
- Variables used for more than one purpose

**Misused design concepts**
- Incomplete specification
- Representation exposure for data abstraction
- Immutable datatypes exposed to change
- Unstated invariants

> [*What to look for when code reviewing*](https://www.cs.swarthmore.edu/~alinen/cs71/labs/lab03.html)

### What Code Review Looks Like in GitHub
---
**Commit changes**: uploading snapshots when the code changes. The history of all changes are therefore saved and can be reverted.

<img src="https://i.postimg.cc/MHm8X1zX/Screenshot-2022-02-10-at-16-35-50.png" alt="drawing" width="600"/>

---

**Branching**: keep a version of the code separate while making experimental changes or keeping track of collaborative work. Can try out new functionality or edit in parallel without impacting the code base. 

<img src="https://i.postimg.cc/6p5v0Nb1/Screenshot-2022-02-10-at-18-52-47.png" alt="drawing" width="200"/>

---
**Pull Request**: Bring the changes made on a branch over to the main code base. Can be used to request a code review (see Reviewers on the right panel)

<img src="https://i.postimg.cc/5tgv5Rpm/Screenshot-2022-02-10-at-18-44-07.png" alt="drawing" width="600"/>

---

**Review**: A pull request can be reviewed and commented on. 

<img src="https://i.postimg.cc/9XDbVyWQ/Screenshot-2022-02-10-at-19-11-58.png" alt="drawing" width="400"/>


---

### Group Code Review and Writing

- Code presentations
- Hackathon
- Documentation sprint
- Sharing burden for knowledge exchange and support

> [Turing Way: Recommendations for Code Reviewing](https://the-turing-way.netlify.app/reproducible-research/reviewing/reviewing-recommend.html)
>
> *Unlike traditional, “academic-style” peer review, most code review systems have a number of advantages: they’re rarely anonymous, they’re public-facing, and without the middleman of an editor, contact between reviewer and reviewee can be direct and rapid. This means code review is typically a fast, flexible, and interactive process.*
>
>

### Testing

- Testing and quality checks
- Continuous integration

## Conclusion
- What gaps have we filled in this section
- Project management overview 

## Resources for taking this to next level


- ​​https://the-turing-way.netlify.app/collaboration/new-community.html 

{% include links.md %}


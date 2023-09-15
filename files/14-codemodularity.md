---
title: Code Modularity
---

### Modular Programming (Functions)

<!--
- do a diagram of directories
- no copying and pasting
- mindset stable and not changed immutably
-->

:::::::::::::::::::::::::::::::::::::  testimonial

*My postdoc wants to work with messy genomics data. I know my previous postdoc had to do the same thing and it took her months.... but it's difficult to read her files so my new postdoc will have to work it out again.*

::::::::::::::::::::::::::::::::::::::::::::::::::

Applying methods from one person's work and applying it to another problem can take weeks, if not months, of work.
Applying methods from publications is even harder: static PDF files can't describe the lines of code and data that lead to those discoveries.
This is an increasingly important problem in the face of growing mistrust in science, and a reproducibility crisis plaguing the sciences.

Instead, functional programming is about writing code that works as modular steps.
Each step is clearly commented on and carefully produced so that it can be reused in different contexts.
Often when you are analysing data, you need to repeat the same task many times.
For example, you might have several files that all need loading and clean in the same way, or you might need to perform the same analysis for multiple species or parameters.
Rather than copying and pasting, writing a function and calling that function leads to fewer errors and confusion overall.

We can think of this on a broad scale, say one student's computational work has the following steps, where blue shows data cleaning, and yellow the analysis and statistics.

<img src="fig/IMP-pipeline1.png" alt="drawing" width="600"/>

Another student can take reuse the data cleaning and initial visualisation steps because her data was from the same source and is in the same format. She can later add her own model:

<img src="fig/IMP-pipeline2.png" alt="drawing" width="600"/>

On the micro-scale, functional programming ensures that each code file itself is comprised of modular blocks, whether for data processing, analysis pipeline, simulation and so on.
Depending on your programming language, these may be used as a package or a library or saved in files that are available for installation.
Just the same as the diagram above, making sure functions are robust and reuseable means they can be shared throughout different workflows and for different projects.

> Training in functional programming is usually an excellent pre-requisite for members of your lab.

A first step can be to **draw out** and create diagrams to plan code before starting and identifying the modular steps involved.
This does not require technical knowledge of a language and is, therefore, a great exercise for direct supervision.
You can find practical details on reproducible code in the [Guides to Better Science by British Ecological Society](https://www.britishecologicalsociety.org/publications/guides-to).



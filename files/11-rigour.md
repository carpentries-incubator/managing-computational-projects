---
title: Scientific rigour with code
---

## Statistics and rigour

::::::::::::::::::::::::::::::::::::::: objectives

- Understand p-hacking and harking problems
- know about tools to avoid these pitfalls

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: questions

- Is analysis with code more rigourous ?
- What is p-hacking?
- What are registered reports ?

::::::::::::::::::::::::::::::::::::::::::::::::::

### Scientific Rigour with code

Because multiple analysis becomes much easier to perform when using code, one needs to be aware of two statistical problems that will lead to incorrect findings (finding differences when none exist, alpha type errors). The main issues are analysing the data during data collection and stopping the experiment when the p-value show significant difference (p-hacking), the second one is to make several tests on the same data without compensation of p-values (harking, or make your hypothesis after the data was analysed).
It is important to note that plotting the data and looking at it before drawing your hypothesis is a form of harking.




### Registered Analysis and Report

In order to prove you are not doing harking nor p-hacking, you may publish the analysis plan before data collection. This is called registered analysis. Any difference from the plan will need to be indicated and its reason given.

There is also the possiblity to publish a [Registered Report](https://support.jmir.org/hc/en-us/articles/360003450852-What-is-a-Registered-Report-), where your research plan is accepted for publication before the data is collected, such that the results will be published independently of their nature (positive or negative results).
A Registered Report highlights the importance of the research question and the methods that will be used.
They can be peer-reviewed before the research, switching the focus of the review from the results to the substance of the research methods.

### What if I do need to see the data first.

In many cases, researchers need to "play with the data", before they can formulate one hypothesis, this is called exploratory analysis. There are different ways to enable this kind of analysis without lacking rigor:

- Have multiple hypothesis and use bonferroni correction on your p-value. Note that if you have too many hypotheses, the chance to miss existing differences become very high (beta type errors). 
- Make a rough hypothesis (there is a difference) and use an type of analysis that does not produce alpha errors (PCA on all variables for instance). The analysis will tell you there is a difference, the exploratory analysis will give hints about where the difference comes from.
- Use training data for exploratory analysis, and use another set of data for the "real" analysis.


:::::::::::::::::::::::::::::::::::::::: keypoints

- statistics

::::::::::::::::::::::::::::::::::::::::::::::::::



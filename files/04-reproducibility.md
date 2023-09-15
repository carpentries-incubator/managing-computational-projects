---
title: Reproducibility
---

## What is computer reproducibility

![](fig/reproducible-matrix.jpg){alt='A matrix showing data and analysis in two axis and iterating that reproducibility is when same analysis is applied to same data it gives same result.'}


*Documentation as a guiding light for people who may feel lost otherwise. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. [http://doi.org/10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)*

The different dimensions of reproducible research described in the matrix above have the following definitions directy taken from *The Turing Way* Guide to Reproducible Research (see the [oveview chapter](https://the-turing-way.netlify.app/reproducible-research/overview.html)):

- **Reproducible:** A result is reproducible when the *same* analysis steps performed on the *same* dataset consistently produces the *same* answer.
- **Replicable:** A result is replicable when the *same* analysis performed on *different* datasets produces qualitatively similar answers.
- **Robust:** A result is robust when the *same* dataset is subjected to *different* analysis workflows to answer the same research question (for example one pipeline written in R and another written in Python) and a qualitatively similar or identical answer is produced.
  Robust results show that the work is not dependent on the specificities of the programming language chosen to perform the analysis.
- **Generalisable:** Combining replicable and robust findings allow us to form generalisable results.
  Note that running an analysis on a different software implementation and with a different dataset does not provide *generalised* results.
  There will be many more steps to know how well the work applies to all the different aspects of the research question.
  Generalisation is an important step towards understanding that the result is not dependent on a particular dataset nor a particular version of the analysis pipeline.

## Provenance and reproducibility

In order to make results reproducible, one needs to access and reuse the data and the code used to produce the analysis. 
Since both code and data may evolve over time (errors may be found, variables may be changed), it is important to link the figure created with a specific version of the code and the data, this is called keeping provenance information.


![](fig/data-provenance.jpg){alt='A figure explaining the concept of provenance: Silos labeled raw data, preprocessed data, analysis, and paper are connected and points representing data are flowing from the first to the last silo.'}



## Long term reproducibility

Both data and software should be in a form where the analysis can run on a different hardware.
Because software evolve quite rapidly, it may be difficult to have the analysis run years after its creation, because the dependencies will have evolve and may not be compatible with the old code anymore. 

It is therefore important to know what version of the dependencies were used. 
In practices, there are specific tools to record dependencies, and for complex code,
it is preferable to use countainers.
Containers are specific piece of software that "contain" all the information and dependences needed to run a code. 

Alternatively, one can aim at robustness and document the analysis enough such that adapting the code to a new computer environment is easy. 
This may be a easier workflow for simple analysis.

Thinking about which software, tools and platforms to use will greatly affect how you analyse and process data, as well as how you share your results for computational reproducibility.
The idea is to facilitate others in recreating the setup process necessary to reproduce your research.



:::::::::::::::::::::::::::::::::::::::::  callout

## Some tools that can be used to enable these are the following:

- **Dependency managers** such as [Conda](https://docs.conda.io/en/latest/) keep dependencies updated and make sure the same version of dependencies used in the development environments are also used when reproducing a result.
- **Containers** such as [Docker](https://www.docker.com/) is a way to create computational environments with configurations required for developing, testing and using research software isolated/independent from other applications.
- **Literate Programming** using [Jupyter Notebook](https://jupyter.org/) is an extremely powerful way to use a web-based online interactive computing environment to execute code and script while adding notes and additional information about the application.
  
  


::::::::::::::::::::::::::::::::::::::::::::::::::

### Reproducible Research Environment

Researchers' working environments evolve as they update software, install new software, and move to different computers.
If the project environment is not captured and the researchers need to return to their project after months or years (as is common in research), they will be unable to do so confidently.

This includes features of hardware (such as the numbers of cores in any CPUs) and features of the software (such as the operating system, programming languages, supporting packages, other pieces of installed software, along with their versions and configurations).

![](https://the-turing-way.netlify.app/_images/computational-environments.jpg){alt='Ways of capturing computational environments'}

To learn more about how to create a reproducible environment, the chapter on [Reproducible Environments](https://the-turing-way.netlify.app/reproducible-research/renv.html) in *The Turing way* is a good place to start.

There are several ways of capturing computational environments. The major ones covered in this chapter will be Package Management Systems, Binder, Virtual Machines, and Containers. Each has its pros and cons, and the most appropriate option for you will depend on the nature of your project.
They can be broadly split into two categories: those that capture only the software and its versions used in an environment (Package Management Systems), and those that replicate an entire computational environment - including the operating system and customised settings (Virtual Machines and Containers).

Another way these can be split is by how the reproduced research is presented to the reproducer.
Using **Binder** or a **Virtual Machine** creates a much more graphical, GUI-type result. In contrast, the outputs of **Containers** and **Package Management** Systems are more easily interacted with via the command line.
Please read more about each of these concepts and their practice use, please visit [Capturing Computational Environments](https://the-turing-way.netlify.app/reproducible-research/renv/renv-options.html) in *The Turing Way*.

:::::::::::::::::::::::::::::::::::::::: keypoints

- Provenance information and software dependencies management are needed to reproduce an analysis on the mid-term (3 years)
- Information about the version of the code and of the data used to create an analysis should be captured.

::::::::::::::::::::::::::::::::::::::::::::::::::



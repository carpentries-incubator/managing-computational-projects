---
title: "Starting with the scientific process"
teaching: 0
exercises: 0
questions:
- "Key question (FIXME)"
objectives:
- "First learning objective. (FIXME)"
keypoints:
- "First key point. Brief Answer to questions. (FIXME)"
---

## Starting with Scientific Process

In reproducible scientific research, someone should be able to look at your work and understand in detail what was done and why. 

Published papers ideally share the background and logic of the hypotheses in the Introduction section of a publication while experimental protocols are shared in the methodology section. However, the steps involved with data processing/analyses are too often opaque:
```mermaid
%%{init: {'theme': 'neutral' } }%%
graph LR
subgraph experimental-protocol
A[science question] --> B[experiments]
B --> C[measurements]
end
subgraph unknown
D[???] 
end
C -->  D
subgraph publication
H[introduction]
I[methodology]
D -.-> E[figures]
D -.-> F[tables]
D -.-> G[statistics]
end
A -.-> H
B -.-> I
J[Adapted from Peng 2016]


style A fill:#cbdef6,stroke:#333,stroke-width:0px
style B fill:#cbdef6,stroke:#333,stroke-width:0px
style C fill:#cbdef6,stroke:#333,stroke-width:0px
style D fill:#fcedb0,stroke-width:0px
style E fill:#e6b2cf,stroke:#333,stroke-width:0px
style F fill:#e6b2cf,stroke:#333,stroke-width:0px
style G fill:#e6b2cf,stroke:#333,stroke-width:0px
style H fill:#e6b2cf,stroke:#333,stroke-width:0px
style I fill:#e6b2cf,stroke:#333,stroke-width:0px
style J fill:#fff,stroke:#333,stroke-width:0px
style publication fill:#faf0f5,stroke-width:0px
style unknown fill:#fefaeb, stroke-width:0px
style experimental-protocol fill:#eef4fc,stroke-width:0px

```

> *When reading a published paper, not all the steps involved are clear.*

Within the traditional scientific pipeline to publication, the missing steps can be thought of as **Data Protocol**.

```mermaid
%%{init: {'theme': 'default' } }%%
graph LR
A[measurements]--> |raw data|D[processing code]
D --> |processed data| E[analysis code]
E --> F[visualisation code]
F -.-> I[figures]
E -.-> K[statistics]

style A fill:#cbdef6,stroke:#333,stroke-width:0px
style D fill:#fcedb0,stroke-width:0px
style E fill:#fcedb0, stroke-width:0px
style F fill:#fcedb0, stroke-width:0px
style I fill:#e6b2cf,stroke:#333,stroke-width:0px
style K fill:#e6b2cf,stroke:#333,stroke-width:0px
```
> *Data protocol*

Each of the steps for data protocol should be reproducible and open. 


**Processing code**

The computational steps that take raw data to a clean output, whether through filtering, subsetting, or other transformation. 

**Analysis code** 

Computational methods that can be as simple as statistical tests, models, or neural networks and machine learning. 

**Visualisation code**

Making figures for publications (for example with R). 

And so the map for scientific process is now complete:


```mermaid
%%{init: {'theme': 'neutral' } }%%
graph LR
subgraph experimental-protocol
A[science question] --> B[experiments]
B --> C[measurements]
end
subgraph data-protocol
D[processing code] --> E[analysis code]
E --> F[visualisation code]
end
C --> D
subgraph publication
G[introduction]
H[methodology]
F -.-> I[figures]
E -.-> K[statistics]
end
A -.-> G
B -.-> H
M[Adapted from Peng 2016]



style A fill:#cbdef6,stroke:#333,stroke-width:0px
style B fill:#cbdef6,stroke:#333,stroke-width:0px
style C fill:#cbdef6,stroke:#333,stroke-width:0px
style D fill:#fcedb0,stroke-width:0px
style E fill:#fcedb0, stroke-width:0px
style F fill:#fcedb0, stroke-width:0px
style G fill:#e6b2cf,stroke:#333,stroke-width:0px
style H fill:#e6b2cf,stroke:#333,stroke-width:0px
style I fill:#e6b2cf,stroke:#333,stroke-width:0px
style K fill:#e6b2cf,stroke:#333,stroke-width:0px
style M fill:#fff,stroke:#333,stroke-width:0px
style publication fill:#faf0f5,stroke-width:0px
style data-protocol fill:#fefaeb, stroke-width:0px
style experimental-protocol fill:#eef4fc,stroke-width:0px

```

Moreover, we can go beyond research articles and publications with publishing data and code repositories. This provides more opportunity to increase the impact of scientific research. Funding bodies and journals often make accessible data compulsory, and it is becoming more common to release code as well. 


[^murphy]:  A Quick Guide to Organizing Computational Biology Projects
Noble WS (2009) A Quick Guide to Organizing Computational Biology Projects. PLOS Computational Biology 5(7): e1000424. https://doi.org/10.1371/journal.pcbi.1000424

## Understanding this process in computational projects

- What challenges and issues exist
- Identify components for project management 
- Approach: We will use the workflow shown in the image to guide interactive session to find different components in each stage of research (design stage - experiment - data analysis - publication), this will be revisited in the beginning of each chapter to show where we are in that workflow/process when talking about a new concept/practice

Intention to Release

A modular and documented workflow requires energy and intent from the start. In lab work, it is easy to skip writing in a lab book to save minutes, but further down the line weeks or months are lost unpicking or redoing the work. 

Those wishing to reproduce your work would have the means to do so. Guiding principles aside, there are also selfish reasons for reproducible workflows and records of critical decision points.

> "Anything that can go wrong will go wrong."
>
> Murphy's First Law

And so, whether due to mistakes or extending projects, *"anything you do you will probably have to be done again"*. [^murphy] Despite few life scientists having formal training in computer science, the majority of research now requires computational methods, whether creating a figure, testing a model, or training a neural network. As a group leader, there is a responsibility to ensure your team creates modular and reproducible workflows whether they are working in a lab or in RStudio. 

Some lab workflows are shared globally and become universal.

{% include links.md %}

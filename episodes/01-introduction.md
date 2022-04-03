---
title: "Introduction to this course"
teaching: 10
exercises: 0
questions:
- "What is the purpose of this training?"
- "Who are the target audience?"
- "What will they learn at the end of this training?"
objectives:
- "Describe the motivation, purpose, target audience and expected outcome of this training"
keypoints:
- "This material is developed for mid-career and senior researchers in  biomedical and biosciences fields."
- "This training aims to build a shared understanding and facilitate the integration of computational reproducibility in data science."
---

# Data Science for Biomedical Scientists Project

Biosciences and biomedical research regularly combine mathematics and computational methods to help interpret experimental data.
More recently, the successful application of data science, Machine Learning (ML) and Artificial Intelligence (AI) in biomedicine and related fields has shown huge potential to transform the way we conduct research, address biological questions and share useful insights from large-scale data.
Groundbreaking research utilising AI technologies in biomedicine has led to an enormous interest among researchers in the topic of data science.
Therefore, it is crucial for researchers to understand best practices in data science and make informed decisions around their applications in biomedicine and related fields.

> ## Jargon Busting
>
> Below we provide a simple definition of some terms that we use in this project in the context of scientific research:
> - **Best Practices**: *Set of procedures that have been shown by research and experience to produce optimal results and that are established or proposed as a standard suitable for widespread adoption.* [Definition by Merriam Webster](https://www.merriam-webster.com/dictionary/best%20practice)
> - **Data Science**: An interdisciplinary scientific study that uses mathematics and computational tools to extract insights from big structured and unstructured data.
> - **Computational Project**: Applying computer programming and data science skills to scientific research.
> - **Reproducibility**: When the same analysis approach is applied to the same data, it should give the same answer - this answer should be reproduced by others using the same analysis and data originally used.
> - **Computational Reproducilibity**: Reproducing the same result by analysing data using the same source code (in a computer programming language) for statistical analyses.
> - **Artificial Intelligence (AI)**: *A branch of computer science concerned with building smart machines capable of performing tasks that typically require human intelligence.* [Definition by Builtin](https://builtin.com/artificial-intelligence)
> - **Machine Learning (ML)**: *A subset of artificial intelligence that gives systems the ability to learn and optimize processes without having to be consistently programmed. Simply put, machine learning uses data, statistics and trial and error to “learn” a specific task without ever having to be specifically coded for the task.* [Definition by Builtin](https://builtin.com/machine-learning)
>
{: .callout}

Over the last decade, several tools, methods and training resources have been developed for early career researchers to learn about and apply data science skills in biomedicine, often referred to as biomedical data science.
However, to ensure that data science approaches are appropriately applied in domain research, such as in biosciences, there is a need to also engage and educate scientific group leaders and researchers in project leadership roles on best practices.

The [**Data Science for Biomedical Scientists**](https://github.com/alan-turing-institute/data-training-for-bioscience) project helps address this need in training by equipping experimental biomedical scientists with computational skills.
In all the resources developed within this project, we consistently emphasise how computational and data science approaches can be applied while ensuring reproducibility, collaboration and transparent reporting.
The goal is to maintain the highest standards of research practice and integrity. 

> ## What is biomedical data science?
>
> The term “data science” describes expertise associated with taking (usually large) data sets and annotating, cleaning, organizing, storing, and analyzing them for the purposes of extracting knowledge. [...]
> The terms “biomedical data science” and “biomedical data scientist” [...] connote activities associated with the creation and application of methods to new and large sources of biological and medical data aimed at converting them into useful information and knowledge. 
> They also connote technical activities that are data-intensive and require special skills in managing the large, noisy, and complex data typical of biology and medicine. 
> They may also imply the application of these technologies in domains where their collaborators previously have not needed data-intensive computational approaches. 
> **Russ B. Altman and Michael Levitt** (2018). [Annual Review of Biomedical Data Science](https://www.annualreviews.org/doi/full/10.1146/annurev-bd-01-041718-100001)
> 
(: .testimonial)

In this training material for **Managing and supervising computational Projects**, we discuss essential practices for computational reproducibility required for carrying out meaningful analyses of research datasets through data exploration, processing, visualisation and communication. 
We present unfamiliar and complex topics from computation and data science to biologists by providing examples and recommendations from their fields. 
The goal is to enable effective management and sharing of their computational projects. 

> Targeted measures and opportunities can help build a better understanding of best practices from data science that can be effectively applied in research and supported by senior leaders.
> Senior leaders, in this context, can be academics or non-academics working in advisors, experts or supervisors roles in research projects who want to lead rigorous and impactful research through computational reproducibility, reusability and collaborative practices.
>
{: .objectives}

## Target audience

Experimental biologists and biomedical research communities, with a focus on two key professional/career groups:

1. Group leaders without prior experience with Data Science and ML/AI - interested in understanding the potential additionality and application in their areas of expertise.
2. Postdoc and lab scientists - next-generation senior leaders, who are interested in additionality, but also the group more likely to benefit from tools to equip them with the requirements to enable the integration of computational science into biosciences.

## Learning Outcomes

At the end of this lesson (training material), attendees will gain a better understanding of:

- designing computational projects using collaborative, reproducible and open science approaches
- examining challenges and potential pitfalls in applying best practices in Data Science
- identifying tools and practices required for managing specific kinds of computational projects
- applying a systematic framework introducing computational protocols in their groups as project leads and/or managers

## Modular and Flexible Learning

We have adopted a modular format, covering a range of topics and integrating real-world examples that should engage mid-career and senior researchers. Most senior researchers can't attend long workshops due to lack of time or don't find technical training directly useful for managing their work. 
Therefore, the goal of this project is to provide an overview (without diving into technical details) of data science and AI/ML practices that could be relevant to life science domains and good practices for handling open reproducible computational data science.

We have designed multiple modular episodes covering topics across two overarching themes, that we refer to as "masterclasses" in this project:

1. [Introduction to Data Science and AI for senior researchers](https://carpentries-incubator.github.io/data-science-ai-senior-researchers/)
2. Managing and supervising computational Projects (**THIS** training material)

Each masterclass is supplemented with technical resources and learning opportunities that can be used by project supervisors or senior researchers in guiding the learning and application of skills by other researchers in their teams.

### Do I need to know biology and AI/ML concepts for this training material?

> **The short answer is no!** 
>
> Although the training materials are tailored to the biomedical sciences community, materials will be generally transferable and directly relevant for data science projects across different domains.
> You are not expected to have already learned about AI/ML to understand what we will discuss in this training material.
>
{: .testimonial}

In this training material, we will discuss best practices for managing reproducible computational projects.
The training material "Introduction to Data Science and AI for senior researchers" is developed in parallel under the same project that introduces data science, AI and related concepts in detail.
Although those are helpful concepts, it is not required to go through that training material to understand the practices we discuss in this training material.

Both the materials discuss problems, solutions and examples from biomedical research and related fields to make our content relatable to our primary audience.
However, the best practices are recommended and transferable across different disciplines.

> ## Pre-requisites and Assumptions
>
> In defining the scope of this project, we make the following assumptions about the learner groups, which can be considered pre-requisites for this training:
> - Our learners have a good understanding of designing or contributing to a scientific project throughout its lifecycle
> - They have identified a computational project with specific questions that will help them reflect on the skills, practices and technical concepts discussed in this training
> - This training doesn't cover the processes of designing a research proposal, managing grant/funding or evaluating ethical considerations for research. 
However, we assume that learners have a computational project in mind for which funding and research ethics have been approved and comprehensive documentation capturing this information is available to share with the research team.
> - We also assume that the research team of any size is (either partially or fully) established.
>
{: .checklist}

## Mode of delivery

Each masterclass has been developed on separate repositories as standalone training materials but will be linked and cross-referenced for completeness. This modularity will allow researchers to dip in and out of the training materials and take advantage of a flexible self-paced learning format.

In the future, these masterclasses could be coupled with pre-recorded introduction and training videos (to be hosted on the Turing online learning platform and The Turing Way YouTube channel).

They can also be delivered by trainers and domain experts, who can mix and match lessons/episodes from across the two masterclasses and present them in an interactive workshop format.

> ## Next Steps after this Training
>
> After this masterclass we recommend our learners take these next steps:
> - Go through the "Introduction to Data Science and AI for senior researchers" masterclass (if not already completed)
> - Explore the set of resources provided at the end of each lesson for deeper dive into various technical topics required to learn or guide the application of Data and computational research best practices in real-world projects
> - Establish connections with other training and training materials offered by The Alan Turing Institute, The Crick Institute, The Carpentries, The Turing Way and other projects/organisations involved in the maintenance and development of this training material
> - Connect with other research communities and projects in open research, data science and AI that offers opportunities to develop/enhance technical skills
> - Collaborate with domain experts such as librarians, research software engineers, community managers, statisticians or people with specialised skills in your organisation who can provide specific support in your project.
>
{: .callout}

## Funding and Collaboration

Data Science for Biomedical Scientists is funded by [The Alan Turing Institute](https://www.turing.ac.uk)'s [AI for Science and Government](https://www.turing.ac.uk/research/asg) (ASG) Research Programme. It is an extension of [The Crick-Turing Biomedical Data Science Awards](https://www.turing.ac.uk/research/research-projects/crick-turing-biomedical-data-science-awards) that strongly indicated an urgent need to provide introductory resources for data science in bioscience researchers. This project extension will leverage strategic engagement between Turing's data science community and Crick's biosciences communities.

Pulling together existing training materials, infrastructure support and domain expertise from [The Turing Way](https://the-turing-way.netlify.app/), [The Carpentries](https://carpentries.org/), [Open Life Science](https://openlifesci.org/) and the [Turing ‘omics interest group](https://www.turing.ac.uk/research/interest-groups/omics-data-generation-and-analysis-group), we will design and deliver a resource that is accessible and comprehensible for the biomedical and wet-lab biology researchers.

This project will build on two main focus areas of the Turing Institute's [AI for Science and Government](https://www.turing.ac.uk/research/asg) research programmes: good data science practice; and effective communication to stakeholders. In building this project, we will integrate the [Tools, practices and systems](https://www.turing.ac.uk/work-turing/tools-practices-and-systems-open-leadership-team-call-volunteering) (TPS) Research Programme’s core values: build trustworthy systems; embed transparent reporting practices; promote inclusive interoperable design; maintain ethical integrity and encourage respectful co-creation.

## License

All materials are developed online openly under CC-BY 4.0 License using The Carpentries training format and The Carpentries Incubator lesson infrastructure.

{% include links.md %}

---
title: 'Managing publication'
teaching: 40
exercises: 10
---









## Publications

::::::::::::::::::::::::::::::::::::::: objectives

- Understand the importance of PID.
- Know how to make data and code citable

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: questions

- Why should I make my research objects available?
- What open source tools to use for applying data science practices in bioscience?
- How to get your research work cited and invite more contributions to your project?

::::::::::::::::::::::::::::::::::::::::::::::::::

<img src="https://the-turing-way.netlify.app/_images/evolution-open-research.jpg" alt="drawing" width="500"/> 

While the output of research projects is usually centred around publishing a journal article, this format of science communication and knowledge sharing is increasingly restrictive with the new ways scientific research is conducted. The requirements from journals themselves is also expanding, you are now often asked to upload data sets and code as part of your publication. Releasing data is increasingly a requirement from funding bodies, and outputs from research groups can go beyond a single paper, releasing tools and methods that can be used worldwide.

In general there are different degrees of openness.

- Fully private data and code, unavailable
- Pseudo-open -- "available on request"
- Released static code parallel to a research paper, see Zenodo or Figshare
- Open online repository -- CRAN, GitHub
- Collaborative, open science tool with ongoing development

What can be released:

- **Open Data**: Documenting and sharing research data openly for re-use.
- **Open Source Software**: Documenting research code and routines, and making them freely accessible and available.
- **Open Hardware**: Documenting designs, materials, and other relevant information related to hardware, and making them freely accessible and available.
- **Open Access**: Making all published outputs freely accessible for maximum use and impact.
- **Open Notebooks**: An emerging practice, documenting and sharing the experimental process of trial and error.

> [https://the-turing-way.netlify.app/reproducible-research/open.html](https://the-turing-way.netlify.app/reproducible-research/open.html)

## Open or Private?

Researchers often worry that they need to hide their code to prevent others stealing it.

> "After giving talks about open science I've sometimes been approached by skeptics who say, ‘Why would I help out my competitors by sharing ideas and data on these new websites? Isn't that just inviting other people to steal my data, or to scoop me? Only someone naive could think this will ever be widespread.' As things currently stand, there's a lot of truth to this point of view. But it's also important to understand its limits. What these skeptics forget is that they already freely share their ideas and discoveries, whenever they publish papers describing their own scientific work. They're so stuck inside the citation-measurement-reward system for papers that they view it as a natural law, and forget that it's socially constructed. It's an agreement. And because it's a social agreement, that agreement can be changed. All that's needed for open science to succeed is for the sharing of scientific knowledge in new media to carry the same kind of cachet that papers do today"
> 
> Nielsen, M. Reinventing Discovery: The New Era of Networked Science. Princeton University Press, 2011.

[https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.3000246](https://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.3000246)

## Code release

For computational projects, releasing your work in an open repository has parallels with publications.

<img src="https://i.imgur.com/I9EKxdF.png" alt="drawing" width="800"/> 

There can be specific requirements to keep code bases and/or data private. See the section below for good and not so good reasons for keeping work private.

You can release code and data associated with a research article as a series of files/folders. If your project follows the folder template introduced in a previous episode, for example:
<img src="https://github.com/jcolomb/gintonic-blog/raw/forreview/50_figures/pulication_ready_figures/2draft-templates.png" alt="drawing" width="300"/>

> Examples of a template folder tree for a computational project. [https://github.com/tonic-team/Tonic-Research-Project-Template](https://github.com/tonic-team/Tonic-Research-Project-Template)

You could bundle folders into a `.zip` file and upload it to Zenodo.

### Zenodo

<img src="https://i.imgur.com/SUWUTKK.png" alt="drawing" width="500"/>

> Zenodo is a general-purpose open-access repository developed under the European OpenAIRE program and operated by CERN. It allows researchers to deposit research papers, data sets, research software, reports, and any other research related digital artefacts.
> 
> Uploads to Zenodo are:
> 
> - **Safe** — your research is stored safely for the future in CERN's Data Centre for as long as CERN exists.
> - **Trusted** — built and operated by CERN and OpenAIRE to ensure that everyone can join in Open Science.
> - **Citeable** — every upload is assigned a Digital Object Identifier (DOI), to make them citable and trackable.
>   No waiting time — Uploads are made available online as soon as you hit publish, and your DOI is registered within seconds.
> - **Open or closed** — Share e.g. anonymized clinical trial data with only medical professionals via our restricted access mode.
> - **Versioning** — Easily update your dataset with our versioning feature.
> - **GitHub integration** — Easily preserve your GitHub repository in Zenodo.
> - **Usage statistics** — All uploads display standards compliant usage statistics

### Citable Code

The Citation File Format provides citation metadata, for software or datasets, in plaintext files that are easy to read by both humans and machines.

Adding a `CITATION.cff` file to your folder means it can be cited when others use it, increasing recognition for your work and your research project's impact.

See more at [The Turing Way: CITATION.cff](https://the-turing-way.netlify.app/communication/citable/citable-cff.html)

[https://the-turing-way.netlify.app/\_images/software-credit.jpg](https://the-turing-way.netlify.app/_images/software-credit.jpg)

## Collaborative Open Code

<img src="https://the-turing-way.netlify.app/_images/decolonising-knowledge.jpg" alt="drawing" width="300"/> 

Downloading code and data files from Zenodo or other open access repositories can be useful when someone wants to review your the final outcome of your computational work. However, with an open GitHub repository, sharing code becomes much more collaborative and in real-time.

<img src="https://foundations.projectpythia.org/_images/GitHub-logo.png" alt="drawing" width="200"/> 

Uploading code in progress to an open GitHub Repo is the best and most well-used method for programming collaboration.

As you develop a tool or methodology, users have the ability to use your code while it is a work in progress and others can contribute or add features.

<img src="https://cran.r-project.org/CRANlogo.png" alt="drawing" width="150"/> 

When using specifically R, you could release R packages on [CRAN](https://cran.r-project.org/) where anyone can then download and use you code.

## Open Science Tools -- Research Software with Impact

Many research groups produce widely used tools and software that are used across biomedical and life sciences. Examples of an open science tool in ongoing development and collaboration:

#### DeepLabCut

[https://github.com/DeepLabCut/DeepLabCut](https://github.com/DeepLabCut/DeepLabCut)

A toolbox for markerless pose estimation of animals performing various tasks.

<img src="https://images.squarespace-cdn.com/content/v1/57f6d51c9f74566f55ecf271/1628250004229-KVYD7JJVHYEFDJ32L9VJ/DLClogo2021.jpg?format=1000w" alt="drawing" width="300"/> 

![](https://camo.githubusercontent.com/70d402b832b850477701ed679425d7dac297c827d5867877f5c730bc007cba7e/68747470733a2f2f737461746963312e73717561726573706163652e636f6d2f7374617469632f3537663664353163396637343536366635356563663237312f742f3563336662656437346661353161636563643633646565622f313534373638313533343733362f4d6f7573654c6f636f6d6f74696f6e5f77617272656e2e6769663f666f726d61743d35303077)

#### Cellpose

[https://github.com/MouseLand/cellpose](https://github.com/MouseLand/cellpose)

[https://cellpose.readthedocs.io/en/latest/](https://cellpose.readthedocs.io/en/latest/)

A generalist algorithm for cell and nucleus segmentation.

<img src="https://github.com/MouseLand/cellpose/raw/master/docs/_static/cellpose_gui.png" alt="drawing" width="300"/> 

 <img src="https://cellpose.readthedocs.io/en/latest/_images/fig1.PNG" alt="drawing" width="500"/> 

#### Qupath

[https://github.com/qupath/qupath](https://github.com/qupath/qupath)

Extensive tools to annotate and view images, including whole slide \& microscopy images. Interactive machine learning for both object \& pixel classification.
<img src="https://qupath.readthedocs.io/en/stable/_images/ki67_detecting_final_markup.jpg" alt="drawing" width="500"/>

<!--
## Code release

- Packaging (R/Python package)
- Environment (conda, binder, docker)
- Code release (Zenodo, Figshare)
  - Connecting to Zenodo
  - Citable code: CFF

## Data Release 
- Institute's policy for archival
- Public data deposit like Data Dryad)
- Contributing to open tools

## Manuscript, Pre-prints and Peer Review

- Best practices and examples

## Supporting Materials

- GitHub repo
- Interactive page for your project
- Jupyter/Binder

## Conclusion
- What gaps have we filled in this section
- Project management overview 

## Resources for taking this to next level

- Turing Data Stories, The Turing Way, Shiny app

## Next Steps

In addition to the referenced linked under different sections in this lesson, please see the following references:
- [Add recommendations from 1:1 interviews, open communities such as Open Life Science and The Turing Way.]
-->

### Research Objects can be Released with Digital Object Identifiers (DOI)

DOIs are alphanumerical unique and persistent identifiers with a permanent web address for different research objects that can be cited by you and other researchers.
Each pre-print and publication is published with a DOI, but independent of the paper, different research objects can be published online on servers that offer DOIs at any stage of your research.
Some of these servers are [Zenodo](https://zenodo.org/), [FigShare](https://figshare.com/), [Data Dryad](https://datadryad.org/stash) (for data), [Open Grants](https://www.ogrants.org/) (for grant proposals) and [Open Science Framework](https://osf.io/) (OSF) (for different components of an open research project).
It allows you to show connections between different parts of research as well as cite different objects from your work independently.

When working on GitHub for instance, you can [connect the project repository with Zenodo](https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content) to get a DOI for your repository.
The [Citation File Format](https://citation-file-format.github.io/), then lets you provide citation metadata, for software or datasets, in plaintext files that are easy to read by both humans and machines.
Read the [Making Research Objects Citable](https://the-turing-way.netlify.app/communication/citable.html) chapter in *The Turing Way* Guide to Communication.

:::::::::::::::::::::::::::::::::::::::  challenge

Add a CITATION.cff file to your Github repository.

::::::::::::::::::::::::::::::::::::::: 


:::::::::::::::::::::::::::::::::::::::: keypoints


- Online Persistent Identifiers or Digital Object Identifiers are useful for releasing and citing different versions of research objects.
::::::::::::::::::::::::::::::::::::::::::::::::::










## Apply Open Science Best Practices

::::::::::::::::::::::::::::::::::::::: objectives

- Describe the importance of version control systems
- Nudge the use of GitHub/GitLab for open collaboration
- Share open science practices for transparent and ethical research

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: questions

- How to maintain history of contributions and contributors?
- How to apply open science practices to work transparently and collaborate openly?

::::::::::::::::::::::::::::::::::::::::::::::::::

Open Science invites all researchers to share their work, data and research components openly so that others can read, reuse, reproduce, build upon and share them.
Particularly in computational research and software development projects, open source practices are widely promoted.
Unfortunately, making research components open doesn't always mean that they can be easily discovered by everyone, can be reproduced and built upon by others or everyone will know how to use them.
Applying open and inclusive principles to open science and reproducible research requires time, intention, resources and collaboration, which can be overwhelming for many (see [Ten arguments against Open Science that you can win](https://www.software.ac.uk/blog/2020-12-17-ten-arguments-against-open-science-you-can-win)).
However, by normalising the use of research best practices on a day-to-day basis, you can ensure that everyone has a chance to build habits around opening their work for others in the team, asking for regular feedback, getting attributed for their work and enjoying the process of collaboration.

Open doesn't mean sharing everything, but making it 'as open as possible and as closed as necessary'.
Your research can still be reproducible without all parts necessarily being open.
Research projects that use sensitive data should be more careful and follow research data management plans closely (discussed in the next chapter).

### Important Reasons for Practicing Openness

:::::::::::::::::::::::::::::::::::::::::  callout

## Open Science in Research

- **Maintains transparency**
- **Allows others to attribute your work fairly**
- **Stops others from reinventing the wheel**
- **Invites collaborators from all around the world**
- **Makes your work easy to release to be cited by others**
  

::::::::::::::::::::::::::::::::::::::::::::::::::

![](https://zenodo.org/api/iiif/v2/5c8c70c9-4119-4917-91d1-bc955943f586:b7d2f709-d5f6-4091-bd12-27455cd9e239:open-vs-close-research-with-text.jpg/full/750,/0/default.jpg){alt='Image shows a person having internal debate about open vesus closed research. Open means new opportunities and inclusivity but closed maybe required to ensure data sensitivity or wrongly assumed for funding for novel work.'}

*Open versus Closed Research. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. [http://doi.org/10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)*

- When a project is designed in an open repository, it **allows all stakeholders to track the progress, raise errors and collaborate** to improve the project.
- When developed openly, such as on GitLab or through the registered report, it is easy to point to the timeline when an idea or experiment was proposed and **exhibit how the project developed, who contributed and how others can attribute the work**.
- Having your research open from the start can **help others working in similar subjects or starting research**. It allows them to conduct their review work effectively and build on the existing work, rather than starting from scratch, or 'reinventing the wheel'.
- With open repositories and descriptions for where you need help or how others can collaborate, you can **get people in your area with complementing skills and new ideas interested in your work**, even when you don't know them.

### Choose a License

Research does not have to be completed to be useful to others. Having a license is the way to communicate how do you want your research to be used and shared.
There are different types of licenses depending on the type of research objects such as code, data or documentation and preferences for re-use and sharing.
The [choosealicense](https://choosealicense.com/) website has a good mechanism to help you pick a license.
To learn more about how to add a license to your project, read the [Licensing chapter](https://the-turing-way.netlify.app/reproducible-research/licensing.html) in **The Turing way** Guide for Reproducible Research.

### Every Little Step Counts towards Openness

Open Science can mean different things in different contexts: open data, open source code, open access publication, open scholarship, open hardware, open education, open notebook, citizen science and inclusive research.
Expert open science practitioners might consider applying a combination of open science practices and make decisions in their work to maintain different kinds of openness.
However, for the new starters in your team, open science can be as simple as ensuring that:

- everyone has added an appropriate license to their project repository,
- recorded their work and shared their project's roadmap on a README/landing page,
- provided some basic manual for how to use their work and how to contribute,
- given credit to previous work upon which they build, and
- regularly communicate about their research.

![](https://zenodo.org/api/iiif/v2/514d0fdf-b1b3-4e94-842d-85b09f344668:1016fa41-7b71-425b-8aa9-436f42008339:EvolutionOpenResearch.jpg/full/750,/0/default.jpg){alt='Image shows a woman slowly gaining trust and confidence in opening up her research project and benefitting from open collaboration'}

*Small steps towards open science. The Turing Way project illustration by Scriberia for The Turing Way Community Shared under CC-BY 4.0 License. Zenodo. [http://doi.org/10.5281/zenodo.3332807](https://doi.org/10.5281/zenodo.3332807)*

Encourage taking small steps towards openness as a responsibility towards research integrity in your team.
There are many community-driven resources, guidance and opportunities in open science that provided structured support to learn about open science.
For instance, *The Turing Way* [chapter on Open Research](https://the-turing-way.netlify.app/reproducible-research/open.html) and [FOSTER Open Science](https://www.fosteropenscience.eu/learning/what-is-open-science/#/id/5ab8ea32dd1827131b90e3ac) provides an introduction to help researchers understand what open science is and why it is something you should care about.
Another hands-on opportunity is provided by [Open Life Science](https://openlifesci.org), which is a 16-week long training and mentoring for anyone in research interested in going through the programme to apply open science practices systematically in their research projects.

## Conclusion

[What gaps have we filled in this section - add biological context]

## Resources and References for Technical Details

- *The Turing Way*. *The Turing Way Community. (2021). The Turing Way: A handbook for reproducible, ethical and collaborative research (1.0.1). Zenodo. [DOI: 10.5281/zenodo.5671094](https://doi.org/10.5281/zenodo.5671094)*
  - [Version control](https://the-turing-way.netlify.app/reproducible-research/vcs.html)
  - [Getting Started With GitHub](https://the-turing-way.netlify.app/collaboration/github-novice.html)
  - [Open Science](https://the-turing-way.netlify.app/reproducible-research/open.html)
  - [Managing a New Community and Team](https://the-turing-way.netlify.app/collaboration/new-community.html)
  - [Making Research Objects Citable](https://the-turing-way.netlify.app/communication/citable.html)
- [What is a Registered Report?](https://support.jmir.org/hc/en-us/articles/360003450852-What-is-a-Registered-Report-) by JMIR, referencing to [Registered Reports by Center for Open Science](https://www.cos.io/initiatives/registered-reports).
- [Open Life Science training and Mentoring Programme](https://openlifesci.org). *Batut, Bérénice, Yehudi, Yo, Sharan, Malvika, Tsang, Emmy, \& Open Life Science Community. (2021). Open Life Science - Training and Mentoring programme - Website release 2019-2021 (1.0.0). Zenodo. [DOI: 10.5281/zenodo.5636584](https://doi.org/10.5281/zenodo.5636584)*



:::::::::::::::::::::::::::::::::::::::: keypoints

- Version controlled repository help record different contributions and contributor information openly.
- Open Science is an umbrella term that involve different practices for research in the context of different research objects.
- Online Persistent Identifiers or Digital Object Identifiers are useful for releasing and citing different versions of research objects.

::::::::::::::::::::::::::::::::::::::::::::::::::












::::::::::::::::::::::::::::::::::::::: objectives

- Learn why and how to cite the work of others

::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::::::::::::::::::: questions

- How should I mention and cite the software or data I am using

::::::::::::::::::::::::::::::::::::::::::::::::::



:::::::::::::::::::::::::::::::::::::::: keypoints

- Best practices in citing code and data

::::::::::::::::::::::::::::::::::::::::::::::::::



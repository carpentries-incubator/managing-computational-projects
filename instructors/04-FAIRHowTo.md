---
title: FAIR How-Tos for data and software
---

# FAIR How-to guide for data

## Findable:

Your data should be findable, by you and others.
It means your data should be available in a discoverable resource, have appropriate description (i.e. metadata), and have a persistent identifier.
How to:

- Data and metadata should have a persistent identifier (a stable address where to find it), URL is not a PID.
- Whenever possible, deposit your data to a domain-specific repository related to your field, [https://repositoryfinder.datacite.org/](https://repositoryfinder.datacite.org/).
- If that is unavailable, deposit your data in general-purpose repositories such as Zenodo, Dryad, Dataverse.
- Same goes for your metadata.

![](https://i.imgur.com/ZaldfDZ.png)

## Accessible:

Your data should be accessible for both humans and machines, such as, retrievable and understandable.
Once someone has found your data, they should be able to access the data using standardised mechanisms (like, http).
You should choose a free, open and universal **protocol** otherwise you might prevent other people from accessing to your data!

Have restrictions in place if necessary.
There are sometimes good reasons why data cannot be made open, for example privacy concerns, national security or commercial interests.
If it is not open there should be clarity and transparency around the conditions governing access and reuse.

For private and sensitive data,instead of the data itself, the metadata should be available and accessible, even if the full content is not made openly available, the metadata must be as findable as possible.

**How to:**

Deposit the data under well defined conditions for others to be able to access it, makings ure that data is accessible at HTTP or public REST API.

Add clear licenses describing who is allowed to access this data and what they are allowed to do with it.

Specify what the users need to do to access this data, ideally, a machine can automatically translate those requirements and act on it, such as two factor authentication, request access from author, etc…

![](https://i.imgur.com/Myo4zqm.png)

## Remember:

No license = No access!
‘As open as possible, as closed as necessary'
Even heavily protected and private data can be FAIR.

## Interoperable:

Ask yourself this; will a machine understand what I'm saying? With the advancement of AI and Machine learning, we want the machines to be able to accurately understand and interpret the data. So it is important to be able to exchange information and make sense of what is exchanged, both parties exchanging and receiving should have a common understanding.

Humans, and especially machines, can have a hard time interpreting data:

- some words can be different in spoken and formal languages;
- many different terms can describe the same object;
- same word can have different meanings across various disciplines

Hence the FAIR principles recommend the use of controlled terminologies, vocabularies, and ontologies to represent values.

![](https://i.imgur.com/wT6A4MI.png)

It is therefore important to have Rich metadata (with ontologies \& controlled vocabularies), Wwich is why Interoperability is the biggest challenge. Create metadata and explain in detail what this data is about, never assume people know!
![](https://i.imgur.com/jkaifEg.png)

## Reuse:

The ultimate goal of FAIR is to advance the reuse of data. Everything you've done so far ultimately leads to this point, ensuring the data can be reused.
![](https://i.imgur.com/bF4fvFW.png)

Finally build new habits:

- A clear directory structure will make it easier to locate files and versions and this is particularly important when collaborating with others.
- A file name is the primary identifier to the file and its contents.
- Common guideline, you should know what your file is before you double click it!
- During your research, your choice of file formats might be dictated by convenience or instrument provider or team practices.
- To make your data available for others and easy to use, choose file formats that are most commonly used in your field (e.g. fasta/fastq) or open file formats that allow interoperability (e.g. mark down)
- In order to keep track of changes made to a file/dataset, versioning can be an efficient way to see who did what and when, in collaborative work this can be very useful.
- Quality control is a fundamental step in research, which ensures the integrity of the data and could affect its use and reuse and is required in order to identify potential problems.

## FAIR Summary

- Deposit your data where others can find it, keep in mind where your peers can find it, i.e. field specific repository and give it a stable unique identifier (PID).
- Make your data \& metadata accessible via standard means such as http/API.
- Create metadata and explain in detail what this data is about, never assume people know!
- Deposit metadata with PID and make it available with/out data i.e. in case data itself is heavily protected.
- Include information on ownership, provenance and citation.
- Outline what the reusers of your data are/not allowed to do, use clear license. Commonly used licenses like MIT or Creative Commons (keep in mind funders requirements).
- Specify access conditions, if authentication or authorization is required.
- Describe your data in a standardized fashion using agreed terminology and vocabulary.
- Share the data in preferred \& open file formats.
- Start the process early on!
  ![](https://i.imgur.com/pJ99MTf.png)

# FAIR How-to guide for software

The fair principles are intended to be applied to all digital objects. Both data and software are considered digital objects and can be products of research. Software generally performs a function upon something (e.g., software processes data), while data generally has a function performed upon it (e.g., data is processed by software) and we are more interested in what software does rather than what software is. Current conversations pretty much tell us the same thing, it is a special kind of data, which allows it to be treated in similar to data when it comes to certain aspects of FAIR.

When we talk about software, source code is often the most useful form to understand, and the easiest form to apply the FAIR4RS Principles.

- FAIR Principles for Research Software (FAIR4RS Principles) [https://rd-alliance.org/group/fair-research-software-fair4rs-wg/outcomes/fair-principles-research-software-fair4rs](https://rd-alliance.org/group/fair-research-software-fair4rs-wg/outcomes/fair-principles-research-software-fair4rs)

## Findable:

The use of controlled vocabularies facilitates machine readability and data exchange, making it more findable and we have some community approved ontologies available.

The Software Ontology  is a resource that can be used to describe software and associated data, including types, tasks, versions, provenance.
Codemeta offers a set of controlled vocabulary and a structured machine readable way to describe software, and enables proper citation.

For life science EDAM or elements of it are more applicable. EDAM provides unambiguously defined terms for describing the types of data and data identifiers, data formats, operations and topics commonly used in bioinformatics. Disciple specific ontologies such as EDAM - Ontology of bioscientific data analysis, provides defined terms for types of data and data identifiers, data formats, operations, and topics related to data analysis in life sciences [https://edamontology.org/page](https://edamontology.org/page)

More domain specific controlled vocabulary/ontologies can be found at  FAIRsharing.org
![](https://i.imgur.com/yOIP9ud.png)

Rather than cite the software directly, People tend to cite it through a paper that introduces the software, a published software manual or book, a ‘software paper' created specifically as a citation target, or a benchmarking paper. However, there exists guidelines for software citation and identification, and already some metadata standards for software citation exist

CFF: is a human- and machine-readable file format in YAML which provides citation metadata for software.
![](https://i.imgur.com/FTHcIIa.png)

## Accessible:

Accessibility, interoperability and (re)usability are intrinsically connected for research software, it is therefore necessary not only to access a version of the software, but for anyone to use any research software, a working version of the software needs to be available

Zenodo promises metadata, and a snapshot of the software release, to be available for the upcoming 20 years, even when the versioned source code on GitHub

Different versions of the software should have different PIDs (one work around is to deposit the software from Github to Zenodo). Zenodo mints DOIs for each released version of the software, and also creates a concept DOI which refers to all versions of a given software

![](https://i.imgur.com/seIWxO7.png)

## Interoperability

Oftentimes, software is developed as part of a workflow, specially true in bioinformatics where we create workflows to automatically operate complex processes such as RNA sequencing analysis, genome assembly, etc.. The use of Common Workflow Language (CWL) enables the interoperability between different pieces of software and workflow platforms

Another aspect of interoperability is being able to run the software in different operating systems and environments i.e. software portability. Hence, the use of containers (e.g. use Docker, singularity).
![](https://i.imgur.com/P7BA7VM.png)

## Reuse

software licenses, play important in terms of reusability as it determines how software can be built, modified, used, accessed and distributed. To support a wide range of reuse scenarios, the license should be as open as possible.

Software must have a license that clearly describes how it can be used and reused, ideally with conditions that are clear to humans and machines , the Software Package Data Exchange standard facilitates that software licenses becomes machine readable.

This is important because a) you want the licenses to be legally compatible with the software and it's dependencies. Which can be challenging given the multi-faceted nature of software. You essentially need to think of the licensing of the software itself, the metadata, the input data for demo for insurance, libraries and modules. software can be subject to copyright protection as a creative work in contrast to scientific data (e.g you can not copyright facts)

![](https://i.imgur.com/gnEuoDg.png)

Provenance metadata provides context and details on the history of the source and authenticity,  
![](https://i.imgur.com/Jzno2Aj.png)

## FAIR Software Summary:

- Deposit in publicly accessible repositories [https://software.ac.uk/choosing-repository-your-software-project](https://software.ac.uk/choosing-repository-your-software-project)
- Use a version control system to easily track changes and versions; Github, Gitlab, Bitbucket,
- Use of containers for software portability; Docker, Singularity
- Describe with rich metadata including dependencies, with controlled vocabulary: Software Ontology, EDAM
- Explain the intended use and conditions of functionality of the software
- Add a license, Apache-2.0 and MIT are permissive licenses with few restrictions, allowing reuse. [https://choosealicense.com/](https://choosealicense.com/) // [https://tldrlegal.com/](https://tldrlegal.com/)
- Register your code in a community [https://github.com/NLeSC/awesome-research-software-registries](https://github.com/NLeSC/awesome-research-software-registries)
- Store snapshots of your software with PIDs [https://guides.github.com/activities/citable-code/](https://guides.github.com/activities/citable-code/)
- Enable proper citation for your software; CodeMeta and the Citation File Format were specifically designed to enable citation of software
- Quality control; use of checklists and include as part of the README file [https://github.com/eurise-network/technical-reference/blob/v0.1/quality/software-checklist.rst](https://github.com/eurise-network/technical-reference/blob/v0.1/quality/software-checklist.rst)
- FAIR Software should operate on and deliver FAIR Data!

## Acknowledgement and references:

This document is provided by Sara EL Gebali from her talks on research data management and FAIR practices.

### Data Resources:

- BOSSConf\_2022\_Research\_Data\_Management  [https://doi.org/10.5281/zenodo.6490583](https://doi.org/10.5281/zenodo.6490583)
- Research Data Management 1 day workshop [https://doi.org/10.5281/zenodo.4562630](https://doi.org/10.5281/zenodo.4562630)
- FAIRPoints Resources: [https://www.fairpoints.org/fairpoints\_resources/](https://www.fairpoints.org/fairpoints_resources/)

### Software Resources:

- Special Issue: Emerging FAIR Practices. Issue Editors: Barend Mons, Erik Schultes \& Annika Jacobsen [https://direct.mit.edu/dint/issue/2/1-2](https://direct.mit.edu/dint/issue/2/1-2)
- Software vs. data in the context of citation: DOI 10.7287/peerj.preprints.2630v1
- Software citation principles DOI  [https://doi.org/10.7717/peerj-cs.86](https://doi.org/10.7717/peerj-cs.86)
- Sharing interoperable workflow provenance: A review of best practices and their practical application in CWLProv DOI [https://doi.org/10.1093/gigascience/giz095](https://doi.org/10.1093/gigascience/giz095)
- Five recommendations for FAIR Software [https://fair-software.eu/](https://fair-software.eu/)
- FAIR Principles for Research Software (FAIR4RS Principles) [https://rd-alliance.org/group/fair-research-software-fair4rs-wg/outcomes/fair-principles-research-software-fair4rs](https://rd-alliance.org/group/fair-research-software-fair4rs-wg/outcomes/fair-principles-research-software-fair4rs)
- Taking a fresh look at FAIR for research software DOI [https://doi.org/10.1016/j.patter.2021.100222](https://doi.org/10.1016/j.patter.2021.100222)
- The role of metadata in reproducible computational research DOI [https://doi.org/10.1016/j.patter.2021.100322](https://doi.org/10.1016/j.patter.2021.100322)
- RDA Webinar: FAIR Principles for Research Software (FAIR4RS WG) DOI [https://doi.org/10.5281/zenodo.5524726](https://doi.org/10.5281/zenodo.5524726)
- Toward Better Research Software DOI [https://doi.org/10.5281/zenodo.4551441](https://doi.org/10.5281/zenodo.4551441)
- FAIR4RS WG subgroup community consultation March 2021 DOI [https://doi.org/10.5281/zenodo.4635410](https://doi.org/10.5281/zenodo.4635410)
- From FAIR research data toward FAIR and open research software DOI [https://doi.org/10.1515/itit-2019-0040](https://doi.org/10.1515/itit-2019-0040)
- FAIR for Research Software (FAIR4RS) publication list on Zenodo [https://zenodo.org/communities/fair4rs?page=1\&size=20](https://zenodo.org/communities/fair4rs?page=1&size=20)



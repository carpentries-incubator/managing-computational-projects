---
title: "How to choose your tool ?"
teaching: 10
exercises: 0
questions:
- What IT tools are used in data science and how do they relate to research project?

objectives:
- "Overview of GitHub and its alternatives"
- "List of other tools for coding and project management."
- "Present other advanced tooling (datalad, GIN-tonic)"
- Know how to search for new tools.
keypoints:
- "content organisation"
---



## Choosing an IT tool, what to consider ?

## Risks

Adopting a tool for a project can have long lasting effect. This usual risks are :

### Tool lock-in

Once your workflow is established, it may be difficult to change, the bigger the team, the most difficult it may be.

Possible mitigation of the risk:
- Use several tools, so your community/team can more easily move to one new tool (one at a time)
- Choose a tool that allow data export in a usable format.

Example: Mendeley is a reference manager. Once bought by Elsevier, data export was limited. The zotero open source alternative provide a full export of the data. 

### Vendor lock-in

Suites of tools often work together. Sometimes adopting one tool will push you in adopting other tools (often from the same company). In the long term, this can reduce your freedom, and if many have done the same, create economic monopolies. 

Possible mitigation:
- Avoid tool lock-in
- Use tool proposing open API, that facilitates integration of different application together.
- Actively choose tools coming from different companies.

Example: the google suite works well together, but it is difficult to combine non-google tools in a google workflow. Having some calendars not in googlecalendars makes you aware of this. 

### Tools disappearance (discontinued)

Commercial entities can close a toolbox as they wish. 

Possible mitigation:
- Avoid tool lock in (so you can move to a new tool if this one disappear)
- Buy, do not rent software you can buy (not the one you rent)
- Check sustainability of the tool and the company/community behind it
- When using open source tools, donate.

Example: Microsoft abandon the development of skype, which is not really usable anymoe. Google discontinued 289 tools as of today.


### Tool accessibility

Other team members may not be able to use the tool. They may be blind or could not read English, their institution may not allow them to use your tool of choice or they may not have constant internet connection and can therefore not use cloud solutions.

Possible mitigation:
- Choose tool with offline abilities,
- Choose tools with servers in different places
- Choose accessible tools
- Look for self-hosted tools that can communicate together.
- Make your workflow flexible enough that some tools are not necessary.

## Resources

IT tools usually do not come free of charge, but your institution may provide you with some of them already. If you opt to self-host one tool, you will need someone to maintain the server.

Team members also need to be trained on using the tools, so you need people to share their expertise, this needs time. When you have new team members, this may become an organisational gageure.


## Example


ds
- Combining template creation and git version control: https://gin-tonic.netlify.app

## Rstudio for reproducible analysis
 
- Features: Build to create R code and packages, it now accepts python code natively. It comes with quarto for literate programming. It does not have project management features per se. 


- Resources: There is a free version, you can buy other versions if you need more features or a sever version. It is pretty easy to use and learn to use it. The features are quite broad, with a very easy way to use a Git-worklflow. While created to work with R, it does support other programming languages


- Risks: It is not  accessible to blind people. Most function can be run without Rstudio, and nearly no Rstudio specific data is created. 
- Risc Mitigation. Make sure someone understands enough the workflow to implement it without Rstudio. Vscode is another open source tool that may be used instead.


### Markdown

Markdown is a way of writing plain text in any simple text editor that doesn't need specific (proprietary) software to read it (no need for Microsoft Word), which can be converted to many formats including HTML, PDF or even Word documents.
Many online tools including GitHub support Markdown files (.md files).

Marking up your text and code is quite simple:

- `**bold**` --> **bold**
- `_italics_` --> *italics*
- "`code snippet`" --> `code snippet`
- `[LINK](https://carpentries-incubator.github.io/managing-computational-projects/)` --> [LINK](https://carpentries-incubator.github.io/managing-computational-projects/)

You can do much more:

- `# Title` (first level header)
- `## Heading` (second level header)
- `### Subheading` (third level header)
- `![IMAGE](image-path/link)` (insert via a link)

See more in the [MarkDown cheatsheet](https://www.markdownguide.org/cheat-sheet/).

MarkDown files are however static, meaning that you can only read the files, but not execute code.
[R Markdown](https://rmarkdown.rstudio.com/) and [Jupyter Notebook](https://jupyter.org/) provide an interactive environment to work and share your code with documentation and examples for your project.
For practice details about R Markdown, please see [The Definitive Guide](https://bookdown.org/yihui/rmarkdown) and for Jupyter Notebook, please see [Jupyter/IPython Notebook Quick Start Guide](https://jupyter-notebook-beginner-guide.readthedocs.io/en/latest/what_is_jupyter.html]).

These options are useful for communicating about the analysis workflow and results at any stage with other collaborators or the wider research community when developing open source code.
Please note that sharing code in any format would require your collaborators to run and test your code locally.
There are easier options to allow to run code in the browser using [Binder](https://mybinder.org/), which we will discuss in the last lesson.

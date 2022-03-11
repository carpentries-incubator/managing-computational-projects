---
title: "Data analysis and results"
teaching: 0
exercises: 0
questions:
- "Key question (FIXME)"
objectives:
- "First learning objective. (FIXME)"
keypoints:
- "First key point. Brief Answer to questions. (FIXME)"
---

## Data exploration and insights

Data wrangling involves cleaning data so it can be easily read and analysed by machines. It can also involve integration, extraction, removing missing points, and anything that makes data useable and functional. Regardless of the methods, the code involved with data cleaning steps should be carefully documented so that the steps involved can be repeated from raw data to cleaned data. 

Visualising raw data is very valuable even before any analysis. When working with data sets, `ggplot` (in R) or `matplotlib`/`seaborn` (in Python) libraries provide attractive figures that can be produced very quickly. Visualising data is useful for exploring data from the start, and also illustrate methodology or the steps of an analysis. This is particularly valuable in Jupyter Notebooks. Code to produce figures should be literate, functional, reuseable in the same way as data cleaning and analysis code. That way future visualisations can be easily updated or reused. 



- Data Visualisation as a tool
  - Reference: https://helenajambor.wordpress.com/2022/01/04/science-visualization-trends-of-2021/

## Statistical analysis

(Need to discuss this further, what is patronising?)

- Choices for statistical analysis

## Communicating Results

- What elements are involved

## Producing figures

For publication, well constructed figures improve science communication and help improve the impact of your research. It is therefore worth taking the time for researchers to learn the technical skills in R, Python, or another language. Producing figures in Excel is limiting and often frustrating, particularly as there are only limited options in layout and type of figure. Being able to produce multipanel figures with annotations and different colour schemes is complex but one of the advantages of learning a data science language. 

![](http://www.sthda.com/sthda/RDoc/figure/ggplot2/ggplot2-cheatsheet-histogram-1.png)

![](https://www.oreilly.com/library/view/python-data-science/9781491912126/assets/pyds_04in33.png)

![](https://www.oreilly.com/library/view/python-data-science/9781491912126/assets/pyds_04in126.png)


The code to produce the following figure is below. Libraries like `matplotlib` do a lot of the hard work for you, and there are countless tutorials for different kinds of visualisations.

![](https://www.oreilly.com/library/view/python-data-science/9781491912126/assets/pyds_04in39.png)


``` 
plt.hexbin(x, y, gridsize=30, cmap='Blues')
cb = plt.colorbar(label='count in bin')
```

In general there are best practises for coherent and engaging figures, 

- Best practices
- Versions
- Publication with persistent identifier

## Conclusion
- What gaps have we filled in this section
- Project management overview 

## Resources for taking this to next level

- ​​https://the-turing-way.netlify.app/collaboration/new-community.html 

{% include links.md %}


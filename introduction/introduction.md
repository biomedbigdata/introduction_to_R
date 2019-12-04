---
title: "Introduction to R"
author: 
- "Markus List (<markus.list@wzw.tum.de>)</br></br>Head of the Big Data in BioMedicine Group</br>Chair of Experimental Bioinformatics</br>Technical University of Munich</br></br><https://biomedical-big-data.de></br>"
date: "05.12.2019"
output: ioslides_presentation
logo: tum.png
css: biomedbigdata.css
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = FALSE)
```

## So you want to learn programming...

![](waitbutwhy.png){width=250px}

  - Data analysis
  - Statistics
  - Scripting
  - Machine learning
  - Publication-grade figures
  - Web application
  - I was told I should

## So many languages

<div class="columns-2">

  - There are more than 200 programming languages
  - The tiobe index keeps track of popularity: <https://tiobe.com/tiobe-index/>

![](top20_languages.png){width=400px}
</div>

## Language choice depends on purpose

![](wrong_tool.jpg)

## Python, R's closest competition

![](python_swiss_army.png){width=800px}

## R, more than a language

<div class="columns-2">

- Incredibly rich ecosystem
- Strong community
- Industry support
- #1 for bioinformatics

![](R_swiss_army.jpeg){width=400px}

</div>

## What we will do today

<div class="columns-2">
  
  - Bullet 1
  - Bullet 2
  - Bullet 3
  
  ![](notsimply.jpeg)
</div>

## Slide with Bullets

- Bullet 1
- Bullet 2
- Bullet 3

## Slide with R Output

```{r cars, echo = TRUE}
summary(cars)
```

## Slide with Plot

```{r pressure}
plot(pressure)
```


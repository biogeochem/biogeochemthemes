## `biogeochemthemes` : Biogeochem Lab Themes for ‘ggplot2’

-----

The themes:

  - `theme_jason`: Jason's theme
  - `theme_kateri`: Kateri's theme

### Installation

``` r
devtools::install_github("biogeochem/biogeochemthemes")
```

### Usage

``` r
library(biogeochemthemes)
library(tidyverse)
```

### Jason's theme

``` r
ggplot(mtcars, aes(y=mpg, x=disp, colour=factor(cyl))) +
  geom_point() +
  labs(x="Fuel effiiency (mpg)", y="Weight (tons)", colour = "Cylinders",
       title="Jason's ggplot2 scatterplot example",
       subtitle="A witty subtitle goes here",
       caption="Brought to you by the phrase 'Who knows?!'") + 
  theme_jason()
```

### Kateri's theme

``` r
ggplot(mtcars, aes(y=mpg, x=disp, colour=factor(cyl))) +
  geom_point() +
  labs(x="Fuel effiiency (mpg)", y="Weight (tons)", color = "Cylinders",
       title="Kateri's ggplot2 scatterplot example",
       subtitle="A witty subtitle goes here",
       caption="Brought to you by the letters 'MSU'") + 
  theme_kateri()
```

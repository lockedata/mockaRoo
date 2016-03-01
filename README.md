<!-- README.md is generated from README.Rmd. Please edit that file -->
mockaRoo
========

[![Travis-CI Build Status](https://travis-ci.org/stephlocke/mockaRoo.svg?branch=master)](https://travis-ci.org/stephlocke/mockaRoo)

Generate mock data with the [Mockaroo API](https://www.mockaroo.com/api/docs)

``` r
if (!require(mockaRoo)) devtools::install_github("stephlocke/mockaRoo")
#> Loading required package: mockaRoo
library(mockaRoo)

basicSchema <- data.frame(name = "blah", percentBlank = 0, type = "Color")

mockaroo("json", list(key = "48b71860", count = 10), schema = jsonlite::toJSON(basicSchema))
#> [[1]]
#> [[1]]$blah
#> [1] "Puce"
#> 
#> 
#> [[2]]
#> [[2]]$blah
#> [1] "Aquamarine"
#> 
#> 
#> [[3]]
#> [[3]]$blah
#> [1] "Red"
#> 
#> 
#> [[4]]
#> [[4]]$blah
#> [1] "Puce"
#> 
#> 
#> [[5]]
#> [[5]]$blah
#> [1] "Blue"
#> 
#> 
#> [[6]]
#> [[6]]$blah
#> [1] "Mauv"
#> 
#> 
#> [[7]]
#> [[7]]$blah
#> [1] "Fuscia"
#> 
#> 
#> [[8]]
#> [[8]]$blah
#> [1] "Purple"
#> 
#> 
#> [[9]]
#> [[9]]$blah
#> [1] "Goldenrod"
#> 
#> 
#> [[10]]
#> [[10]]$blah
#> [1] "Mauv"
```

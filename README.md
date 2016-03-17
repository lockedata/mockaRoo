<!-- README.md is generated from README.Rmd. Please edit that file -->
mockaRoo
========

[![Travis-CI Build Status](https://travis-ci.org/stephlocke/mockaRoo.svg?branch=master)](https://travis-ci.org/stephlocke/mockaRoo) [![Coverage Status](https://img.shields.io/coveralls/stephlocke/mockaRoo.svg)](https://coveralls.io/r/stephlocke/mockaRoo?branch=master)

Generate mock data with the [Mockaroo API](https://www.mockaroo.com/api/docs)

``` r
if(!require(devtools)) install.packages("devtools")
devtools::install_github("stephlocke/mockaRoo")
```

``` r
library(mockaRoo)

basicSchema <- data.frame(name = "blah", percentBlank = 0, type = "Color")

response <- mockaroo("json", list(key = "48b71860", count = 10), schema = jsonlite::toJSON(basicSchema))

jsonlite::prettify(response)
#> [
#>     {
#>         "blah": "Purple"
#>     },
#>     {
#>         "blah": "Green"
#>     },
#>     {
#>         "blah": "Crimson"
#>     },
#>     {
#>         "blah": "Mauv"
#>     },
#>     {
#>         "blah": "Orange"
#>     },
#>     {
#>         "blah": "Aquamarine"
#>     },
#>     {
#>         "blah": "Green"
#>     },
#>     {
#>         "blah": "Aquamarine"
#>     },
#>     {
#>         "blah": "Crimson"
#>     },
#>     {
#>         "blah": "Orange"
#>     }
#> ]
#> 
```

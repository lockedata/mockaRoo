<!-- README.md is generated from README.Rmd. Please edit that file -->
mockaRoo
========

[![Travis-CI Build Status](https://travis-ci.org/stephlocke/mockaRoo.svg?branch=master)](https://travis-ci.org/stephlocke/mockaRoo)

Generate mock data with the [Mockaroo API](https://www.mockaroo.com/api/docs)

``` r
if (!require(mockaRoo)) devtools::install_github("stephlocke/mockaRoo")
library(mockaRoo)

basicSchema <- data.frame(name = "blah", percentBlank = 0, type = "Color")

response <- mockaroo("json", list(key = "48b71860", count = 10), schema = jsonlite::toJSON(basicSchema))

jsonlite::prettify(response)
#> [
#>     {
#>         "blah": "Red"
#>     },
#>     {
#>         "blah": "Green"
#>     },
#>     {
#>         "blah": "Goldenrod"
#>     },
#>     {
#>         "blah": "Blue"
#>     },
#>     {
#>         "blah": "Blue"
#>     },
#>     {
#>         "blah": "Indigo"
#>     },
#>     {
#>         "blah": "Purple"
#>     },
#>     {
#>         "blah": "Turquoise"
#>     },
#>     {
#>         "blah": "Puce"
#>     },
#>     {
#>         "blah": "Turquoise"
#>     }
#> ]
#> 
```

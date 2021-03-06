<!-- README.md is generated from README.Rmd. Please edit that file -->
mockaRoo
========

[![Project Status: WIP – Initial development is in progress, but there has not yet been a stable, usable release suitable for the public.](http://www.repostatus.org/badges/latest/wip.svg)](http://www.repostatus.org/#wip)
[![Travis-CI Build Status](https://travis-ci.org/stephlocke/mockaRoo.svg?branch=master)](https://travis-ci.org/stephlocke/mockaRoo) [![Coverage Status](https://img.shields.io/coveralls/stephlocke/mockaRoo.svg)](https://coveralls.io/r/stephlocke/mockaRoo?branch=master)

Generate mock data with the [Mockaroo API](https://www.mockaroo.com/api/docs)

Development
-----------

This package is in it's infancy - if you'd like mock data in R, give your feature requests and opinions in the [issue tracker](https://github.com/stephlocke/mockaRoo/issues).

Usage
-----

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
#>         "blah": "Orange"
#>     },
#>     {
#>         "blah": "Mauv"
#>     },
#>     {
#>         "blah": "Red"
#>     },
#>     {
#>         "blah": "Khaki"
#>     },
#>     {
#>         "blah": "Pink"
#>     },
#>     {
#>         "blah": "Blue"
#>     },
#>     {
#>         "blah": "Teal"
#>     },
#>     {
#>         "blah": "Indigo"
#>     }
#> ]
#> 
```

------------------------------------------------------------------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

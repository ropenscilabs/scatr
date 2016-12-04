scatr
=====



[![Build Status](https://travis-ci.org/ropenscilabs/scatr.svg?branch=master)](https://travis-ci.org/ropenscilabs/scatr)

Scholastic Commentaries and Texts Archive - <http://scta.info/>

## Install

Development version


```r
devtools::install_github("ropenscilabs/scatr")
```


```r
library("scatr")
```

## xxx


```r
res <- scta_search(q = 'potentia')
res$resources
#> # A tibble: 10 × 6
#>     motivation       `@type`
#> *        <chr>         <chr>
#> 1  sc:painting oa:Annotation
#> 2  sc:painting oa:Annotation
#> 3  sc:painting oa:Annotation
#> 4  sc:painting oa:Annotation
#> 5  sc:painting oa:Annotation
#> 6  sc:painting oa:Annotation
#> 7  sc:painting oa:Annotation
#> 8  sc:painting oa:Annotation
#> 9  sc:painting oa:Annotation
#> 10 sc:painting oa:Annotation
#> # ... with 4 more variables: `@id` <chr>, on <chr>,
#> #   `resource.@type` <chr>, resource.chars <chr>
```

## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/scatr/issues).
* License: MIT
* Get citation information for `scatr` in R doing `citation(package = 'scatr')`
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.

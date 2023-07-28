
<!-- README.md is generated from README.Rmd. Please edit that file -->

# zmisc

<!-- badges: start -->
<!-- badges: end -->

The goal of zmisc is to provide miscellaneous functions to reduce
friction in most common data analysis tasks.

## Installation

You can install the development version of zmisc from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("zawmtun/zmisc")
```

## Example

This is a basic example which shows you how to solve a common problem of
generating random unique IDs:

``` r
library(zmisc)
d <- data.frame(x = letters[1:3], y = 1:3, z = 4:6)
d1 <- uid_anonymise(d, id_vars = c("x"), char_num = 6)
uid_get_key(d1)
#>   unique_id x
#> 1    4dMaH8 a
#> 2    wQnr6Y b
#> 3    GuuP1T c
uid_get_data(d1)
#>   unique_id y z
#> 1    4dMaH8 1 4
#> 2    wQnr6Y 2 5
#> 3    GuuP1T 3 6
```


<!-- README.md is generated from README.Rmd. Please edit that file -->

# rcdklibs

<!-- badges: start -->

[![CRAN
Version](https://www.r-pkg.org/badges/version/rcdklibs?color=green)](https://cran.r-project.org/package=rcdklibs)
[![CRAN
Downloads](http://cranlogs.r-pkg.org/badges/grand-total/rcdklibs?color=green)](https://cran.r-project.org/package=rcdklibs)
[![CRAN Downloads
Monthyl](http://cranlogs.r-pkg.org/badges/last-month/rcdklibs?color=green)](https://cran.r-project.org/package=rcdklibs)
<!-- badges: end -->

The goal of rcdklibs is to provide the [CDK](https://github.com/cdk/cdk)
jarfiles and thereby facilitate chemoinformatic analysis within the R
ecosystem. The primary consumer of `rcdklibs` is the
[rcdk](https://github.com/CDK-R/cdkr) package but all of CDK’s
functionality can be accessed by the standard
[rJava](https://CRAN.R-project.org/package=rJava) API. The libs provided
in this release correspond to the [2.9
Release](https://github.com/cdk/cdk/releases/tag/cdk-2.9)

    # Example
    library(rcdklibs)

    # atm_container class
    atm_container <- J("org/openscience/cdk/AtomContainer")

    # instance of class
    ac1 <- new(atm_container)

    # call method (reflective). slow but easy to program/use.
    ac1$atoms()

    # call method example (static). Cumbersome to program but needed for Java speed.
    .jcall(atom, "Ljavax/vecmath/Point3d;", "getPoint3d")

## Installation

You can install the released version of rcdklibs from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("rcdklibs")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("https://github.com/CDK-R/rcdklibs")
```

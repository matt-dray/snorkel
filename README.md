
<!-- README.md is generated from README.Rmd. Please edit that file -->

# {snorkel}

<!-- badges: start -->

[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
<!-- badges: end -->

An R package of RStudio Addins to help you [insert {roxygen2}
formatting](https://roxygen2.r-lib.org/) when you develop R packages.

You put a snorkel in your mouth to help you breathe oxygen; you put a
{snorkel} in your addins to help you write with {roxygen2}.

The package aims to cover [often-used roxygen formatting
tags](https://roxygen2.r-lib.org/articles/formatting.html). You can also
learn more in the [Writing R
extensions](https://cran.r-project.org/doc/manuals/R-exts.html#Marking-text).

## Deep breath

Install from Github with:

``` r
install.packages("remotes")  # if not already installed
remotes::install_github("matt-dray/snorkel")
```

After installation, you may need to restart R. Then you can access the
{snorkel} functions from the ‘Addins’ menu in RStudio.

## Dive in

Select some text in your functions script and choose from the addins the
appropriate function for your needs. If you want to make a word bold,
highlight it and then choose ‘Format Bold’ froim the addin. This will
change the text from `This is bold` to `This is \emph{bold}`, for
example.

A special case is when requiring both a package and a function name.
Type this in your script file as though namespacing, like
‘package::function’, then select it and choose the ‘Link To Function
(Another Package)’ or ‘Link To Function (Another Package, Show Name)’
functions.

Note that the addins starting ‘List’ will insert an example, rather than
replacing any selected text.


# {snorkel}

<!-- badges: start -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![R-CMD-check](https://github.com/matt-dray/snorkel/workflows/R-CMD-check/badge.svg)](https://github.com/matt-dray/snorkel/actions)
[![Blog post](https://img.shields.io/badge/rostrum.blog-post-008900?labelColor=000000&logo=data%3Aimage%2Fgif%3Bbase64%2CR0lGODlhEAAQAPEAAAAAABWCBAAAAAAAACH5BAlkAAIAIf8LTkVUU0NBUEUyLjADAQAAACwAAAAAEAAQAAAC55QkISIiEoQQQgghRBBCiCAIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAAh%2BQQJZAACACwAAAAAEAAQAAAC55QkIiESIoQQQgghhAhCBCEIgiAIgiAIQiAIgSAIgiAIQiAIgRAEQiAQBAQCgUAQEAQEgYAgIAgIBAKBQBAQCAKBQEAgCAgEAoFAIAgEBAKBIBAQCAQCgUAgEAgCgUBAICAgICAgIBAgEBAgEBAgEBAgECAgICAgECAQIBAQIBAgECAgICAgICAgECAQECAQICAgICAgICAgEBAgEBAgEBAgICAgICAgECAQIBAQIBAgECAgICAgIBAgECAQECAQIBAgICAgIBAgIBAgEBAgECAgECAgICAgICAgECAgECAgQIAAAQIKAAA7)](https://www.rostrum.blog/2022/08/11/quartostamp-snorkel/)
<!-- badges: end -->

An R package containing an RStudio Addin to help you insert [R Documentation (Rd) markup](https://cran.r-project.org/doc/manuals/R-exts.html#Rd-format) to your package's function documentation.

You put a snorkel in your mouth to help you breathe oxygen; you put a {snorkel} in your Addins to help you prepare documentation with [{roxygen2}](https://roxygen2.r-lib.org/index.html).

## Install

Install from Github with:

``` r
install.packages("remotes")  # if not already installed
remotes::install_github("matt-dray/snorkel")
```

## Use

To use the Addin:

1. Select some text in your function documentation to which you'd like to apply Rd markup (e.g. bold, italics), or place the cursor where you'd like to insert an Rd skeleton (i.e. the functions that insert lists)
1. Click the 'RStudio Addins' dropdown at the top of the RStudio IDE
1. Scroll/search for 'SNORKEL' and click the function you want

For speed, you can also search for the functions from [the RStudio command palette](https://www.rstudio.com/blog/rstudio-v1-4-preview-command-palette/) or create [custom RStudio keyboard shortcuts](https://support.rstudio.com/hc/en-us/articles/206382178-Customizing-Keyboard-Shortcuts-in-the-RStudio-IDE).

So, for example, you could highlight the word `bold` in `#' This is bold` and select the 'Format Bold' function from the Addin, resulting in `#' This is \strong{bold}`.

Special cases are ‘Link To Function (Another Package)’ and ‘Link To Function (Another Package, Show Name)’. Both need as input the package name and the function name that you’re linking to, which you should supply in the form 'package::function'.

## Help

For help with {snorkel} functions, take a look at [the reference page on the package website](https://matt-dray.github.io/snorkel/reference/index.html), or in your R console type `?` followed by the function name for its documentation.

## Demo

<div class="figure">
<img src="man/figures/snorkel.gif" alt="Gif of RStudio Addin being used to add roxygen2 tags to selected text in the documentation for a function. Addins used are: format as bold, link to function in another package, and make hyperlink." width="75%"/>
</div>

## Code of Conduct

Please note that the {snorkel} project is released with a [Contributor Code of Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html). By contributing to this project, you agree to abide by its terms.

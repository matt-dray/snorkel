# See https://roxygen2.r-lib.org/articles/formatting.html


# Character formatting ----------------------------------------------------


#' Format Italic
#'
#' @description
#' Surround selected text with Rd markup for italic.
#'
#' @details
#' Example output: `\emph{text}`
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_italic <- function() {
  .replace_text(pre_string = "\\emph{", post_string = "}")
}

#' Format Bold
#'
#' @description
#' Surround selected text with Rd markup for bold.
#'
#' @details
#' Example output: `\strong{text}`
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_bold <- function() {
  .replace_text(pre_string = "\\strong{", post_string = "}")
}

#' Format Code
#'
#' @description
#' Surround selected text with Rd markup for inline code.
#'
#' @details
#' Example output: `\code{text}`
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_code <- function() {
  .replace_text(pre_string = "\\code{", post_string = "}")
}

#' Format Package
#'
#' @description
#' Surround selected text with Rd markup for package names.
#'
#' @details
#' Example output: `\pkg{package}`
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_package <- function() {
  .replace_text(pre_string = "\\pkg{", post_string = "}")
}


# Links -------------------------------------------------------------------


# Other docs ----

#' Link to Function (This Package)
#'
#' @description
#' Surround selected text with Rd markup that links to a function in the
#' current package.
#'
#' @details
#' Example output: `\code{\link{text}}`
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_fn_this_pkg <- function() {
  .replace_text(pre_string = "\\code{\\link{", post_string = "}}")
}

#' Link To Function (Another Package)
#'
#' @description
#' Surround selected text (in the form 'package::function') with Rd markup that
#' links to a function in another package.
#'
#' @details
#' Example output: `\code{\link[package]{function}}`
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_fn_other_pkg <- function() {
  .replace_text(
    pre_string = "\\code{\\link[",
    mid_string = "]{",
    post_string = "}}"
  )
}

#' Link To Function (Another Package, Show Name)
#'
#' @description
#' Surround selected text (in the form 'package::function') with Rd markup that
#' links to a function in another package and shows that package's name.
#'
#' @details
#' Example output: `\code{\link[package:function]}`
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_link_fn_other_pkg_name <- function() {
  .replace_text(
    pre_string = "\\code{\\link[",
    mid_string = ":",
    post_string = "]}"
  )
}

#' Link To S4 Class
#'
#' @description
#' Surround selected text with Rd markup to link to an S4 class.
#'
#' @details
#' Example output: `\linkS4class{class}`
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_link_s4_class <- function() {
  .replace_text(pre_string = "\\linkS4class{", post_string = "}")
}


# Web ----


#' Link To Web
#'
#' @description
#' Surround selected URL text with Rd markup for a link to the web.
#'
#' @details
#' Example output: `\url{url}`
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_url <- function() {
  .replace_text(pre_string = "\\url{", post_string = "}")
}

#' Link To Web (Named)
#'
#' @description
#' Surround selected URL text with Rd markup for a link to the web and show a
#' text label.
#'
#' @details
#' Example output: `\href{url}{description}`
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_url_named <- function() {
  .replace_text(pre_string = "\\href{", post_string = "}{Link text}")
}

#' Link to Email
#'
#' @description
#' Surround selected text with Rd markup for an email link.
#'
#' @details
#' Example output: `\email{address}`
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_email <- function() {
  .replace_text(pre_string = "\\email{", post_string = "}")
}


# Lists -------------------------------------------------------------------

#' Insert List (Ordered)
#'
#' @description
#' Insert an Rd markup skeleton for an ordered (numbered) list.
#'
#' @details
#' Example output:
#' ```
#' \enumerate{
#'   \item First item
#'   \item Second item
#' }
#'
#' ````
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_list_ordered <- function() {
  rstudioapi::insertText(
    paste0(
      "#' \\enumerate{", "\n",
      "#'   \\item First item",  "\n",
      "#'   \\item Second item", "\n",
      "#' }", "\n"
    )
  )
}

#' Insert List (Bulleted)
#'
#' @description
#' Insert an Rd markup skeleton for an unordered (bulleted) list.
#'
#' @details
#' Example output:
#' ```
#' \itemize{
#'   \item First item
#'   \item Second item
#' }
#'
#' ````
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_list_unordered <- function() {
  rstudioapi::insertText(
    paste0(
      "#' \\itemize{", "\n",
      "#'   \\item First item", "\n",
      "#'   \\item Second item", "\n",
      "#' }", "\n"
    )
  )
}

#' Insert List (Named)
#'
#' @description
#' Insert an Rd markup skeleton for a definition (named) list.
#'
#' @details
#' Example output:
#' ```
#' \describe{
#'   \item{One}{First item}
#'   \item{Two}{Second item}
#' }
#'
#' ````
#'
#' @references
#' \href{https://cran.r-project.org/doc/manuals/R-exts.html#Writing-R-documentation-files}{The \emph{Writing R Extensions} manual.}
#'
#' @export
rd_list_definition <- function() {
  rstudioapi::insertText(
    paste0(
      "#' \\describe{", "\n",
      "#'   \\item{One}{First item}", "\n",
      "#'   \\item{Two}{Second item}", "\n",
      "#' }", "\n"
    )
  )
}

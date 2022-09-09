# See https://roxygen2.r-lib.org/articles/formatting.html


# Character formatting ----------------------------------------------------


#' Format Italic
#'
#' @description
#' Surround selected text with Rd markup for italic.
#'
#' @details
#' * Selected text: `text`
#' * Result of function: `\emph{text}`
#' * Example output with no text selection: `\emph{}`
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
#' * Selected text: `text`
#' * Result of function: `\strong{text}`
#' * Example output with no text selection: `\strong{}`
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
#' * User-selected text: `text`
#' * Result of function: `\code{text}`
#' * Example output with no text selection: `\code{}`
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
#' * User-selected text: `package`
#' * Result of function: `\pkg{package}`
#' * Example output with no text selection: `\pkg{}`
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
#' * User-selected text: `text`
#' * Result of function: `\code{\link{text}}`
#' * Example output with no text selection: `\code{\link{}}`
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
#' * User-selected text: `package::function`
#' * Result of function: `\code{\link[package]{function}}`
#' * Example output with no text selection: `\code{\link[]{}}`
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
#' * User-selected text: `package::function`
#' * Result of function: `\code{\link[package:function]}`
#' * Example output with no text selection: `\code{\link[:]}`
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
#' * User-selected text: `class`
#' * Result of function: `\linkS4class{class}`
#' * Example output with no text selection: `\linkS4class{}`
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
#' * User-selected text: `url`
#' * Result of function: `\url{url}`
#' * Example output with no text selection: `\url{}`
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
#' * User-selected text: `url`
#' * Result of function: `\href{url}{Link text}`
#' * Example output with no text selection: `\href{}{Link text}`
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
#' * User-selected text: `address`
#' * Result of function: `\email{address}`
#' * Example output with no text selection: `\email{}`
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

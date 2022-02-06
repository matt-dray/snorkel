# See https://roxygen2.r-lib.org/articles/formatting.html


# Character formatting ----------------------------------------------------


#' Format With Italics Format
#'
#' @export
snorkel_italic <- function() {
  .replace_text("\\emph{", "}")
}

#' Replace With Bold Format
#'
#' @export
snorkel_bold <- function() {
  .replace_text("\\strong{", "}")
}

#' Replace With Code Format
#'
#' @export
snorkel_code <- function() {
  .replace_text("\\code{", "}")
}


#' Replace With Package Format
#'
#' @export
snorkel_package <- function() {
  .replace_text("\\pkg{", "}")
}


# Links -------------------------------------------------------------------


# Other docs ----

#' Replace With Link To Function In This Package
#'
#' @export
snorkel_fn_this_pkg <- function() {
  .replace_text("\\code{\\link{", "}")
}

#' Replace With Link To Function In Another Package
#'
#' @export
snorkel_fn_other_pkg <- function() {
  .replace_text("\\code{\\link[", "]{", "}}")
}

#' Replace With Link To Dest But Show Name
#'
#' @export
snorkel_link_dest_name <- function() {
  .replace_text("\\link[=dest]{", "}")
}

#' Replace With Link To Function in Another Package And Show Name
#'
#' @export
snorkel_link_fn_other_pkg_name <- function() {
  .replace_text("\\code{\\link[", ":", "}")
}

#' Replace With Link To An S4 Class
#'
#' @export
snorkel_link_s4_class <- function() {
  .replace_text("\\linkS4class{", "}")
}

# Web ----


#' Replace With Link To Web
#'
#' @export
snorkel_url <- function() {
  .replace_text("\\url{", "}")
}

#' Replace With Link To Web With Label
#'
#' @export
snorkel_url_named <- function() {
  .replace_text("\\href{", "}{Link text}")
}

#' Replace With Link To An Email
#'
#' @export
snorkel_email <- function() {
  .replace_text("\\email{", "}")
}


# Lists -------------------------------------------------------------------

#' Insert Example Ordered (Numbered) List
#'
#' @export
snorkel_list_ordered <- function() {
  rstudioapi::insertText(
    paste0(
      "#' \\enumerate{",
      "#'   \\item First item",
      "#'   \\item Second item",
      "#' }"
    )
  )
}

#' Insert Example Unordered (Bulleted) List
#'
#' @export
snorkel_list_unordered <- function() {
  rstudioapi::insertText(
    paste0(
      "#' \\itemize{",
      "#'   \\item First item",
      "#'   \\item Second item",
      "#' }"
    )
  )
}

#' Insert Example Definition (Named) List
#'
#' @export
snorkel_list_definition <- function() {
  rstudioapi::insertText(
    paste0(
      "#' \\describe{",
      "#'   \\item{One}{First item}",
      "#'   \\item{Two}{Second item}",
      "#' }"
    )
  )
}

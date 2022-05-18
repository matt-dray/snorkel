# See https://roxygen2.r-lib.org/articles/formatting.html


# Character formatting ----------------------------------------------------


#' Format With Italics Format
#'
#' @export
snorkel_italic <- function() {
  .replace_text(pre_string = "\\emph{", post_string = "}")
}

#' Replace With Bold Format
#'
#' @export
snorkel_bold <- function() {
  .replace_text(pre_string = "\\strong{", post_string = "}")
}

#' Replace With Code Format
#'
#' @export
snorkel_code <- function() {
  .replace_text(pre_string = "\\code{", post_string = "}")
}


#' Replace With Package Format
#'
#' @export
snorkel_package <- function() {
  .replace_text(pre_string = "\\pkg{", post_string = "}")
}


# Links -------------------------------------------------------------------


# Other docs ----

#' Replace With Link To Function In This Package
#'
#' @export
snorkel_fn_this_pkg <- function() {
  .replace_text(pre_string = "\\code{\\link{", post_string = "}}")
}

#' Replace With Link To Function In Another Package
#'
#' @export
snorkel_fn_other_pkg <- function() {
  .replace_text(
    pre_string = "\\code{\\link[",
    mid_string = "]{",
    post_string = "}}"
  )
}

#' Replace With Link To Dest But Show Name
#'
#' @export
snorkel_link_dest_name <- function() {
  .replace_text(pre_string = "\\link[=dest]{", post_string = "}")
}

#' Replace With Link To Function in Another Package And Show Name
#'
#' @export
snorkel_link_fn_other_pkg_name <- function() {
  .replace_text(
    pre_string = "\\code{\\link[",
    mid_string = ":",
    post_string = "]}"
  )
}

#' Replace With Link To An S4 Class
#'
#' @export
snorkel_link_s4_class <- function() {
  .replace_text(pre_string = "\\linkS4class{", post_string = "}")
}

# Web ----


#' Replace With Link To Web
#'
#' @export
snorkel_url <- function() {
  .replace_text(pre_string = "\\url{", post_string = "}")
}

#' Replace With Link To Web With Label
#'
#' @export
snorkel_url_named <- function() {
  .replace_text(pre_string = "\\href{", post_string = "}{Link text}")
}

#' Replace With Link To An Email
#'
#' @export
snorkel_email <- function() {
  .replace_text(pre_string = "\\email{", post_string = "}")
}


# Lists -------------------------------------------------------------------

#' Insert Example Ordered (Numbered) List
#'
#' @export
snorkel_list_ordered <- function() {
  rstudioapi::insertText(
    paste0(
      "#' \\enumerate{", "\n",
      "#'   \\item First item",  "\n",
      "#'   \\item Second item", "\n",
      "#' }", "\n"
    )
  )
}

#' Insert Example Unordered (Bulleted) List
#'
#' @export
snorkel_list_unordered <- function() {
  rstudioapi::insertText(
    paste0(
      "#' \\itemize{", "\n",
      "#'   \\item First item", "\n",
      "#'   \\item Second item", "\n",
      "#' }", "\n"
    )
  )
}

#' Insert Example Definition (Named) List
#'
#' @export
snorkel_list_definition <- function() {
  rstudioapi::insertText(
    paste0(
      "#' \\describe{", "\n",
      "#'   \\item{One}{First item}", "\n",
      "#'   \\item{Two}{Second item}", "\n",
      "#' }", "\n"
    )
  )
}

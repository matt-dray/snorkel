.replace_text <- function(pre_string, mid_string = NULL, post_string) {

  active_doc <- rstudioapi::getActiveDocumentContext()

  if (!is.null(active_doc)) {

    selected_text <- active_doc$selection[[1]]$text

    if (grepl("::", selected_text)) {

      split_text <- strsplit(selected_text, "::")[[1]]
      split_text_a <- split_text[1]
      split_text_b <- split_text[2]

      text_replace <- paste0(
        pre_string,
        split_text_a,
        mid_string,
        split_text_b,
        post_string
      )

    } else {

      text_replace <- paste0(pre_string, selected_text, post_string)

    }

    rstudioapi::modifyRange(active_doc$selection[[1]]$range, text_replace)

  }

}

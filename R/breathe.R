#' Take Time Out To Breathe
#'
#' @param times Numeric. Number of times to breathe.
#' @param seconds Numeric. Number of seconds to take when inhaling and exhaling.
#'
#' @return Message printed to the console.
#' @export
#'
#' @examples \donttest{breathe()}
breathe <- function(times = 3, seconds = 4) {

  n <- 1

  while (n < times) {
    cat("Deep breath in\n")
    Sys.sleep(seconds)
    cat("And out\n")
    Sys.sleep(seconds)
    n <- n + 1
  }

}

#' Take Time Out To Breathe
#'
#' @param times Numeric. Number of times to breathe.
#' @param seconds Numeric. Number of seconds to take when inhaling and exhaling.
#'
#' @return Message printed to the console.
#' @export
#'
#' @examples \donttest{breathe()}
breathe <- function(times = 3L, seconds = 5) {

  if (!inherits(times, "integer") | !inherits(seconds, "numeric")) {
    stop("'times' must be an integer, 'seconds' must be numeric.")
  }

  n <- 0

  while (n < times) {
    message("Deep breath in...")
    Sys.sleep(seconds)
    message("And out...")
    Sys.sleep(seconds)
    n <- n + 1
  }

}

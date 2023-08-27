
#' Wiggly function
#'
#' @param x Real numbers. Function is most useful for x in `[0, 8]`
#'
#' @return Real numbers \deqn{\sin(x) + 1 / \sqrt(|x|) + 3}
#' @export
#'
#' @examples
#' curve(wiggly_function(x), 0, 8)
wiggly_function <- function(x) {
  stopifnot(is.numeric(x))
  sin(x) + sign(x) / sqrt(abs(x))  + 3
}


#' Data from [wiggly_function()]
#'
#' A small data set created using [wiggly_function()].
#'
#' @examples
#' wiggly
#' plot(wiggly, col = 2, pch = 16)
#' curve(wiggly_function(x), 0, 2 * pi, add = TRUE, col = 4, lwd = 2)
"wiggly"

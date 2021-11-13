#' Cross table
#'
#' @return
#' @export
#'
#' @author Zhonghui Gai
#' @examples
#' Cross()
#' Cross()  |> groutable::dt2()
#' library(ggplot2)
#' ggplot(data= data.frame(x=1:12,y=1:12), aes(x,y)) +
#'   geom_point(shape = Cross()$symbols, size = 8) +
#'   theme_void()
Cross <- function() {
  data <- structure(list(
    symbols = c("☨", "✝", "✟", "✚", "✢", "✣", "☩", "✞", "✠", "†", "✤", "✥"), JS = c("\\u2628", "\\u271D",
                                                                                    "\\u271F", "\\u271A", "\\u2722", "\\u2723", "\\u2629", "\\u271E", "\\u2720", "\\u2020", "\\u2724", "\\u2725"),
    CSS = c("\\2628", "\\271D","\\271F", "\\271A", "\\2722", "\\2723", "\\2629", "\\271E", "\\2720", "\\2020", "\\2724", "\\2725"),
    HTML = c("&#9768", "&#10013", "&#10015",
             "&#10010", "&#10018", "&#10019", "&#9769", "&#10014", "&#10016", "&#8224", "&#10020", "&#10021")),
    row.names = c(NA, 12L),
    class = "data.frame")
  return(data)
}

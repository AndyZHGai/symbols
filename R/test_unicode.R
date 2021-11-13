#' Unicode symbols in R
#'
#' @param start the start
#' @param end the end
#' @param ...
#'
#' @return
#' @export
#'
#' @author Zhonghui Gai
#' @examples
#' test_unicode()
#' test_unicode(9500,9900)
#' plot(0, 0, main=bquote(symbol("\326")))
#' plot(0, 0, main=bquote("\u03b1"))
test_unicode <- function(start="25a0", end="25ff", ...){
  nstart <- as.hexmode(start)
  nend <- as.hexmode(end)
  r <- nstart:nend
  s <- ceiling(sqrt(length(r)))
  par(pty="s")
  plot(c(-1,(s)), c(-1,(s)), type="n", xlab="", ylab="",
       xaxs="i", yaxs="i")
  grid(s+1, s+1, lty=1)
  for(i in seq(r)) {
    try(points(i%%s, i%/%s, pch=-1*r[i],...))
  }
}

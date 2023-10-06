#' @title Generation of a Fibonacci Sequence
#' @description A function which takes an integer value as an input and
#'  it will generate a Fibonacci sequence as an output. It is a sequence to generate a sequence
#'  in which each of the number is a value of the sum of the two previous numbers.
#' @param num A numeric input greater than 0
#' @examples
#' fibonacci_series(10)
#' @export

fibonacci_series <- function(num) {
  if (is.numeric(num) && as.integer(num) == num && num >= 0) {
    if (num == 0) {
      return(0)
    } else if (num == 1) {
      return(0)
    } else if (num == 2) {
      return(c(0, 1))
    } else {
      fibonacci_seq <- numeric(num)
      fibonacci_seq[1] <- 0
      fibonacci_seq[2] <- 1

      for (i in 3:num) {
        fibonacci_seq[i] <- fibonacci_seq[i - 1] + fibonacci_seq[i - 2]
      }

      return(fibonacci_seq)
    }
  } else {
    return("Please input a non-negative integer")
  }
}

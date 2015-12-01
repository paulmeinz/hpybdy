#'Determine letter numbers
#'
#'This function takes a charactor vector of length one and
#'returns a character vector of numbers corresponding
#'with letter indexes in the Letters object.
#'
#'@param char A character vector of length one


determine_letter_nbrs <- function(char) {

  if (!is.character(char)) {
    stop('char must be a character vector')
  }

  if (length(char) > 1 || length(char) == 0) {
    stop('char must be a vector of length 1')
  }
}

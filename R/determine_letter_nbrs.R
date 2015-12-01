#'Determine letter indexes
#'
#'This function takes a charactor vector of length one and
#'returns a character vector of numbers corresponding
#'with letter indexes in the letters object.
#'
#'@param char A character vector of length one


determine_letter_indx <- function(char) {

  # Determine if the char parameter is a character vector
  if (!is.character(char)) {
    stop('char must be a character vector')
  }

  # Determine if the vector is of length 1 exactly
  if (length(char) > 1 || length(char) == 0) {
    stop('char must be a vector of length 1')
  }

  # For each letter in the character provided, if it is a letter
  # then determine the index value of that letter in the letters object
  # and add it to a vector called indexes
  indexes <- c()

  for (i in 1:nchar(char)) {
    letter <- substr(char,i,i)
    if (letter %in% letters) {
      indexes <- c(indexes, match(letter, letters))
    }
  }

  indexes
}

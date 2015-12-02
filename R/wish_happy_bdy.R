#' Wish happy birthday.
#'
#' Generates a plot wishing a specific individual happy birthday.
#'
#' @param name A character vector of length 1
#'
#' @section Warning:
#' This function does not yet support names with spaces

wish_happy_bday <- function(name) {

  # Make sure data is a character
  if (!is.character(name)) {
    stop('name must be a character')
  }

  # Make sure character vector is of length 1 exactly
  if (length(name) > 1 || length(name) == 0) {
    stop('character vector must be of length 1 exactly')
  }

  # Write happybday in a new plot with random colors
  plot.new()
  msg <- determine_letter_indx('happybday')
  text(1:length(msg)/length(msg)-.1,.7, labels = letters[msg],
       col = sample(1:100, 9, replace = TRUE), cex = 2)

  # Write the name of the person being wished happy bday
  indexes <- determine_letter_indx(name)
  text(1:length(indexes)/length(indexes)-.12,.4, labels = toupper(letters[indexes]),
       col = sample(1:100, length(indexes)+1, replace = TRUE), cex = 3)
}

#' Produce a random string
#'
#' @param char_num Number of characters in the string.
#'
#' @return A character vector.
#'
sample_chars <- function(char_num = 20) {
  char_pool <- c(letters, LETTERS, 0:9, "-")
  paste0(sample(char_pool, char_num, replace = TRUE), collapse = "")
}

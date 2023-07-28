sample_chars <- function(char_num) {
  char_pool <- c(letters, LETTERS, 0:9, "-")
  paste0(sample(char_pool, char_num, replace = TRUE), collapse = "")
}

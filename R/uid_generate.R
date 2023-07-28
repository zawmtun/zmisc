#' Generate random unique ID
#'
#' @param n Number of unique IDs to be generated.
#' @param seed_num Random seed number for reproducibility.
#' @param char_num Number of characters in each unique ID.
#' @param prefix Constant prefix to be added to each unique ID.
#'
#' @return A character vector.
#' @export
#'
#' @examples
#' uid_generate(3, seed_num = 1, char_num = 6)
#' uid_generate(3, seed_num = 99, char_num = 6)
#' uid_generate(3, seed_num = 99, char_num = 6, prefix = "PK")
uid_generate <- function(n, seed_num = 1, char_num = 20, prefix = NULL) {
  set.seed(seed_num)
  if (!is.null(prefix)) {
    pf <- paste0(prefix, "-")
  } else {
    pf <- NULL
  }

  ids <- seq_len(n)
  for(i in seq_along(ids)) {
    cur_id <- paste0(pf, sample_chars(char_num = char_num), collapse = "")
    while(cur_id %in% ids) {
      cur_id <- paste0(pf, sample_chars(char_num = char_num), collapse = "")
    }
    ids[i] <- cur_id
  }

  ids
}

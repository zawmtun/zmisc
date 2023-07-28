#' Anonymise a dataframe
#'
#' @param .data A dataframe.
#' @param id_vars Column names containing identifiable information.
#' @param ... seed_num, char_num, prefix parameters from \link[zmisc]{uid_generate}
#'
#' @return A list of two dataframes.
#' @export
#'
#' @examples
#' d <- data.frame(x = letters[1:3], y = 1:3, z = 4:6)
#' d1 <- uid_anonymise(d, id_vars = c("x"), char_num = 6)
#' uid_get_key(d1)
#' uid_get_data(d1)
uid_anonymise <- function(.data, id_vars = NULL, ...) {
  stopifnot("At least one ID variable should be specified." = !is.null(id_vars))
  ids <- uid_generate(nrow(.data), ...)
  key <- cbind(unique_id = ids, .data[names(.data) %in% id_vars])
  data <- cbind(unique_id = ids, .data[!names(.data) %in% id_vars])

  list(key = key, data = data)
}

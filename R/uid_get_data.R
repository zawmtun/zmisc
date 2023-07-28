#' Get dataframe with unique_id but without variables for identifiable information
#'
#' @param uid_list A list created by \link[zmisc]{uid_anonymise}
#'
#' @return A dataframe.
#' @export
#'
#' @examples
#' d <- data.frame(x = letters[1:3], y = 1:3, z = 4:6)
#' d1 <- uid_anonymise(d, id_vars = c("x"), char_num = 6)
#' uid_get_key(d1)
#' uid_get_data(d1)
uid_get_data <- function(uid_list) {
  uid_list[["data"]]
}

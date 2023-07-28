test_that("multiplication works", {
  d <- data.frame(x = letters[1:3], y = 1:3, z = 4:6)
  d1 <- uid_anonymise(d, id_vars = c("x"), char_num = 6)
  expect_equal(names(d1), c("key", "data"))
  expect_equal(names(d1[["key"]]), c("unique_id", "x"))
  expect_equal(names(d1[["data"]]), c("unique_id", "y", "z"))
  expect_equal(nrow(d1[["key"]]), 3)
  expect_equal(nrow(d1[["data"]]), 3)
})

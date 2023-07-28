test_that("Produce a random string", {
  expect_equal(nchar(sample_chars(4)), 4)
})

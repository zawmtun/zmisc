test_that("Generate 3 random unique IDs", {
  expect_equal(uid_generate(3, char_num = 6),
               c("4dMaH8", "wQnr6Y", "GuuP1T"))
})

library(testthat)

test_that("fertilizer_score stops when phosphorus is missing", {
  expect_error(fertilizer_score(100, NA))
})

test_that("fertilizer_score returns expected score for known nutrient inputs", {
  expect_equal(fertilizer_score(150, 50), 3)
})
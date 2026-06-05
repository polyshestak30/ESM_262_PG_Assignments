# Testing fertilizer function

library(testthat)

#Test 1
test_that("fertilizer_score stops when phosphorus is missing", {
  expect_error(fertilizer_score(100, NA))
})

#Test 2
test_that("fertilizer_score returns expected score for known nutrient inputs", {
  expect_equal(fertilizer_score(150, 50), 3)
})
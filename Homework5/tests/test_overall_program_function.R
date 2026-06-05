# Testing overall program function

library(testthat)

#Test 1
test_that("predict_tomato_growth stops when phosphorus is missing", {
  expect_error(
    predict_tomato_growth(
      150, NA, 25, 70, 6.5, 0.04
    )
  )
})

#Test 2
test_that("predict_tomato_growth returns expected value for known inputs", {
  expect_equal(
    predict_tomato_growth(
      150, 50, 25, 70, 6.5, 0.04
    ),
    12
  )
})
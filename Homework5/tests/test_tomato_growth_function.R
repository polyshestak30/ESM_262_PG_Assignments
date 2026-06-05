#'test tomato growth function

library(testthat)

#Test 1
test_that("tomato_growth returns expected total growth", {
  expect_equal(
    tomato_growth(2.25, 2.5, 3),
    7.75
  )
})

#Test 1
test_that("increasing fertilizer score increases growth", {
  expect_gt(
    tomato_growth(3, 2.5, 3),
    tomato_growth(2, 2.5, 3)
  )
})
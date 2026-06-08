#Test tomato_growth() function
source("../tomato_growth_function.R") 
library(testthat)

#Test 1: Known-value output
#Verify that the function returns the expected total tomato growth value for a known set of component scores
test_that("tomato_growth returns expected total growth", {
  expect_equal(
    tomato_growth(2.25, 2.5, 3),
    7.75
  )
})

#Test 2: Sensitivity to fertilizer score
#Verify that increasing fertilizer score while holding climate and soil health scores constant results in a larger predicted tomoato growth value
test_that("increasing fertilizer score increases growth", {
  expect_gt(
    tomato_growth(3, 2.5, 3),
    tomato_growth(2, 2.5, 3)
  )
})
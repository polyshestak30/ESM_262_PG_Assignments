# Testing fertilizer_score() function
source("../fertilizer_function.R") 
library(testthat)

#Test 1: Missing input
# Verify that the function throws an error when phosphorous is missing (NA), since both nutrient inputs are required to calculate fertilizer suitability
test_that("fertilizer_score stops when phosphorus is missing", {
  expect_error(fertilizer_score(100, NA))
})

#Test 2: Known-value output
# Verify that the function returns te expected fertilizer suitability score for a known combination of nitrogen and phosphorous inputs
test_that("fertilizer_score returns expected score for known nutrient inputs", {
  expect_equal(fertilizer_score(150, 50), 3)
})
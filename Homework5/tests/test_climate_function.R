# Testing climate_score() function
source("../climate_function.R")  

#Test 1: Output test
#Verify that the function returns a numeric value when provided with valid precipitation and temperature inputs
test_that("climate score is numeric", {
  expect_type(climate_score(25, 70), "double")
})

#Test 2: Maximum score constraint
#Verify that the climate score does not exceed the maximum allowable score of 5
test_that("climate score cannot exceed maximum score", {
  expect_lte(climate_score(25, 70), 5)
})
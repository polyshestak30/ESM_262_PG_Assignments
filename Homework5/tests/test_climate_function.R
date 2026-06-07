# Testing climate function
source("../climate_function.R")  

#Test 1
test_that("climate score is numeric", {
  expect_type(climate_score(25, 70), "double")
})

#Test 2
test_that("climate score cannot exceed maximum score", {
  expect_lte(climate_score(25, 70), 5)
})
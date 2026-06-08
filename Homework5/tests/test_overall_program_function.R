# Testing overall program function
source("../fertilizer_function.R")
source("../climate_function.R")      
source("../soil_health_function.R")   
source("../tomato_growth_function.R") 
source("../overall_program_function.R")
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
# Testing soil health function

#Test 1
test_that("soil_health_score rejects impossible pH values", {
expect_error(soil_health_score(20, 0.04))
})

#Test 2
test_that("soil_health_score returns a numeric value", {
  expect_type(soil_health_score(6.5, 0.04), "double")
})


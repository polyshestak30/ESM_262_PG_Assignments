#| label: functions
#| include: true
#| echo: false
#| message: false

library(roxygen2)

#' Module 1 - Fertilizer Score 
#' 
#' @param nitrogen Nitrogen application rate (kg/ha)
#' @param phosphorus Phosphorous application rate (kg/ha)
#' @return fertilizer_score: A numeric fertilizer score determines the amount of tomato growth 
#' that is attributed to fertilizer based on nitrogen and phosphorous inputs (0 to 3 in/yr) 
#' where higher values indicate more suitable nutrient conditions for tomato growth
#' 
#' @details
#' Nitrogen is optimal between 100 and 200 kg/ha.
#' Phosphorous is optimal between 30 and 80 kg/ha

fertilizer_score <- function(nitrogen, phosphorus) {
  
  if (any(is.na(c(nitrogen, phosphorus)))) {
    stop("Missing input value")
  }
  
  if (nitrogen < 50 | nitrogen > 300) {
    n_score <- 0
  } else if (nitrogen >= 100 & nitrogen <= 200) {
    n_score <- 1.5
  } else {
    n_score <- 0.75
  }
  
  if (phosphorus < 10 | phosphorus > 120) {
    p_score <- 0
  } else if (phosphorus >= 30 & phosphorus <= 80) {
    p_score <- 1.5
  } else {
    p_score <- 0.75
  }
  
  fertilizer_score <- n_score + p_score
  
  return(fertilizer_score)
}
#| label: functions
#| include: true
#| echo: false
#| message: false

#' Module 1 - Fertilizer Suitability Score 
#' 
#' @param nitrogen nitr. application rate (kg/ha)
#' @param phosphorus phos. application rate (kg/ha)
#' @return fertilizer_score - fertilizer suitability score (0 to 3 in/yr)
#' 
#' nitrogen: optimal 100-200 kg/ha

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
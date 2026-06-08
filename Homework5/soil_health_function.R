#| label: functions
#| include: true
#| echo: false
#| message: false

#' Module 3 - Soil Health Score
#' @param ph soil pH (0 to 14)
#' @param soil_om Soil organic matter proportion (0 to 1)
#' @return soil_health_score: A numeric soil health score determines the amount of tomato growth
#' that can be attributed to soil health based on pH and soil om (0 to 4 in/yr)
#' where higher values indicate more suitable soil conditions for tomato growth
#' 
#' @details
#' pH is  optimal between 6-7
#' Soil organic matter is optimal between 0.03-0.06

# pH (optimal = 6-7)
soil_health_score <- function(ph, soil_om) {
  if (ph < 0 | ph > 14) {
    stop("pH must be between 0 and 14")
  }
  # pH (optimal = 6-7)
  if (ph < 5 | ph > 8) {
    ph_score <- 0
  } else if (ph >= 6 & ph <= 7) {
    ph_score <- 2
  } else {
    ph_score <- 1
  }
  
  # soil organic matter (optimal = 0.03-0.06)
  if (soil_om < 0.01) {
    om_score <- 0
  } else if (soil_om >= 0.03 & soil_om <= 0.06) {
    om_score <- 2
  } else {
    om_score <- 1
  }
  
  soil_health_score <- ph_score + om_score
  
  return(soil_health_score)
}

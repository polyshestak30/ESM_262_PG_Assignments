#| label: functions
#| include: true
#| echo: false
#| message: false

#' Module 3 - Soil Health Score
#' @param ph soil pH (0 to 14)
#' @param soil_om soil om content (%)
#' @return soil_health_score - soil health suitability score (0 to 4 in/yr)
#' 
#' soil_health_score <- function(ph, soil_om) {

# pH (optimal = 6-7)
soil_health_score <- function(ph, soil_om) {
  
  # pH (optimal = 6-7)
  if (ph < 5 | ph > 8) {
    ph_score <- 0
  } else if (ph >= 6 & ph <= 7) {
    ph_score <- 2
  } else {
    ph_score <- 1
  }
  
  # soil organic matter (optimal = 3-6%)
  if (soil_om < 1) {
    om_score <- 0
  } else if (soil_om >= 3 & soil_om <= 6) {
    om_score <- 2
  } else {
    om_score <- 1
  }
  
  soil_health_score <- ph_score + om_score
  
  return(soil_health_score)
}

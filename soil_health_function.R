#| label: functions
#| include: true
#| echo: false
#| message: false

#' Module 3 - Soil Health Score
<<<<<<< HEAD
#' @param pH soil pH (0 to 14)
#' @param soil_om soil om content (%)
#' @return soil_health_score - soil health suitability score (0 to 4 in/yr)
#' 
=======
#' @param ph soil pH (0 to 14)
#' @param soil_om soil_om soil organic matter proportion (0 to 1)
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
>>>>>>> 9a398a218941d1714fecd25d783bc70afc85e8b6

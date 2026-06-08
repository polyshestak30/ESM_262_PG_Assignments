#| label: functions
#| include: true
#| echo: false
#| message: false

#' Module 4 - Tomato Crop Growth
#' 
#' @param fertilizer_score Fertilizer score (0-3in/yr)
#' @param climate_score Climate score (0 to 5 in/yr)
#' @param soil_health_score Soil health score (0 to 4in/yr)
#' @return tomato_growth: Predicted tomato crop growth (0-12 in/yr)
#' 
tomato_growth <- function(fertilizer_score, climate_score, soil_health_score) {
  
  growth_factors <- c(fertilizer_score,
                      climate_score,
                      soil_health_score)
  
  tomato_growth <- 0
  
  for(i in 1:length(growth_factors)) {
    tomato_growth <- tomato_growth + growth_factors[i]
  }
  
  return(tomato_growth)
}

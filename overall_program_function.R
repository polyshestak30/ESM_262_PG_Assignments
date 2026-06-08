#| label: functions
#| include: true
#| echo: false
#| message: false
#| 
#' Overall Program - Tomato Crop Growth Prediction
#'
#' @param nitrogen nitrogen application rate (kg/ha)
#' @param phosphorus phosphorus application rate (kg/ha)
#' @param precip annual precipitation (in/yr)
#' @param temp mean growing season temperature (F)
#' @param ph soil pH (0 to 14)
#' @param soil_om soil organic matter content (%)
#'
#' @return tomato_growth predicted tomato crop growth (0 to 12 in/yr)
#'
predict_tomato_growth <- function(nitrogen, phosphorus, precip, temp, ph, soil_om) {
  
  fert <- fertilizer_score(nitrogen, phosphorus)
  
  clim <- climate_score(precip, temp)
  
  soil <- soil_health_score(ph, soil_om)
  
  growth <- tomato_growth(fert, clim, soil)
  
  return(growth)
}
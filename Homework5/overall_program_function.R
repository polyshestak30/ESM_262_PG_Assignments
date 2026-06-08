#' Overall Program - Tomato Crop Growth Prediction
#'
#' @param nitrogen Nitrogen application rate (kg/ha)
#' @param phosphorus Phosphorus application rate (kg/ha)
#' @param precip Annual precipitation (in/yr)
#' @param temp Mean growing season temperature (F)
#' @param ph Soil pH (0 to 14)
#' @param soil_om Soil organic matter content (%)
#'
#' @return tomato_growth: Predicted tomato crop growth (0 to 12 in/yr)
#'
predict_tomato_growth <- function(nitrogen, phosphorus, precip, temp, ph, soil_om) {
  
  fert <- fertilizer_score(nitrogen, phosphorus)
  
  clim <- climate_score(precip, temp)
  
  soil <- soil_health_score(ph, soil_om)
  
  growth <- tomato_growth(fert, clim, soil)
  
  return(growth)
}
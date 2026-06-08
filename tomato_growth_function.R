#| label: functions
#| include: true
#| echo: false
#| message: false

#' Module 4 - Tomato Crop Growth
#' 
#' @param fertilizer_score fert. suitability score (0-3in/yr)
#' @param climate_score climate suitability score (0 to 5 in/yr)
#' @param soil_health_score soil health score (0 to 4in/yr)
#' @return tomato_growth - predicted tomato crop growth (0-12 in/yr)
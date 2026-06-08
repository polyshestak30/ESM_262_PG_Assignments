#| label: functions
#| include: true
#| echo: false
#| message: false

#' Module 2 - Climate
#' 
#' @param precip annual precipitation (in/yr)
<<<<<<< HEAD
#' @param temp mean growing season temp (C)
=======
#' @param temp mean growing season temp (F)
>>>>>>> 9a398a218941d1714fecd25d783bc70afc85e8b6
#' @return climate_score - climate suitability score (0 to 5 in/yr)
#' 
#' precip (optimal = 20-30in/yr)
climate_score = function(precip, temp) {
<<<<<<< HEAD
  if (precip < 5 | precip > 40) {
    precip_score = 0
  } else if (precip >=20 & precip <=30) {
=======
  
  if (precip < 5 | precip > 40) {
    precip_score = 0
  } else if (precip >= 20 & precip <= 30) {
>>>>>>> 9a398a218941d1714fecd25d783bc70afc85e8b6
    precip_score = 2.5
  } else {
    precip_score = 1.25
  }
  
  # temp (optimal 60-80)
<<<<<<< HEAD
  if(temp < 50 | temp > 90) {
    temp_score = 0
  } else if (temp >=60 & temp <=80) {
=======
  if (temp < 50 | temp > 90) {
    temp_score = 0
  } else if (temp >= 60 & temp <= 80) {
>>>>>>> 9a398a218941d1714fecd25d783bc70afc85e8b6
    temp_score = 2.5 
  } else {
    temp_score = 1.25
  }
<<<<<<< HEAD
}
=======
  
  climate_score = precip_score + temp_score
  
  return(climate_score)
}


>>>>>>> 9a398a218941d1714fecd25d783bc70afc85e8b6

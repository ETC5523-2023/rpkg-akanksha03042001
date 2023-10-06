#' @title Dataset about different types of volcanoes
#'
#' @description A dataset that contains the the different types of volcanoes worldwide, giving us an information about their elevation.
#'
#' @format A data frame with 958 rows and 26 variables.
#' \describe{
#'   \item{volcano_number}{Volcano unique ID}
#'   \item{volcano_name}{Volcano Name}
#'   \item{primary_volcano_type	}{Types of Volcano}
#'   \item{last_eruption_year}{Last Year Erupted}
#'   \item{country}{Country}
#'   \item{region}{Region}
#'   \item{subregion}{Sub Region}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{elevation}{Elevation}
#'   \item{tectonic_settings}{Volcano Plate Tectonic Settings}
#'   \item{evidence_category}{Type of Evidence}
#'   \item{major_rock_1}{Major Rock Type}
#'   \item{major_rock_2}{Major Rock Type}
#'   \item{major_rock_3}{Major Rock Type}
#'   \item{major_rock_4}{Major Rock Type}
#'   \item{major_rock_5}{Major Rock Type}
#'   \item{minor_rock_1}{Minor Rock Type}
#'   \item{minor_rock_2}{Minor Rock Type}
#'   \item{minor_rock_3}{Minor Rock Type}
#'   \item{minor_rock_4}{Minor Rock Type}
#'   \item{minor_rock_5}{Minor Rock Type}
#'   \item{population_within_5_km}{Total population within 5 km of volcano}
#'   \item{population_within_10_km}{Total population within 10 km of volcano}
#'   \item{population_within_30_km}{Total population within 30 km of volcano}
#'   \item{population_within_100_km}{Total population within 100 km of volcano}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/volcano.csv}
"volcano"

#' @title Dataset about different types of volcanoes
#'
#' @description A dataset containing data on various types of volcanoes around the world,
#' including elevation. The dataset has been subset to the top 70 observations,
#' which are ordered by elevation in descending order.
#' This enables us to study the interesting world of volcanoes and to understand their dual nature
#' as natural forces of destruction as well as geological marvels.
#'
#' @format A data frame with 70 rows and 26 variables.
#' \describe{
#'   \item{volcano_number}{Volcano unique ID}
#'   \item{volcano_name}{Volcano Name}
#'   \item{primary_volcano_type	}{Types of Volcano}
#'   \item{last_eruption_year}{Last Year Erupted}
#'   \item{country}{Country}
#'   \item{region}{Region}
#'   \item{subregion}{Sub Region}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#'   \item{elevation}{Elevation}
#'   \item{tectonic_settings}{Volcano Plate Tectonic Settings}
#'   \item{evidence_category}{Type of Evidence}
#'   \item{major_rock_1}{Major Rock Type}
#'   \item{major_rock_2}{Major Rock Type}
#'   \item{major_rock_3}{Major Rock Type}
#'   \item{major_rock_4}{Major Rock Type}
#'   \item{major_rock_5}{Major Rock Type}
#'   \item{minor_rock_1}{Minor Rock Type}
#'   \item{minor_rock_2}{Minor Rock Type}
#'   \item{minor_rock_3}{Minor Rock Type}
#'   \item{minor_rock_4}{Minor Rock Type}
#'   \item{minor_rock_5}{Minor Rock Type}
#'   \item{population_within_5_km}{Total population within 5 km of volcano}
#'   \item{population_within_10_km}{Total population within 10 km of volcano}
#'   \item{population_within_30_km}{Total population within 30 km of volcano}
#'   \item{population_within_100_km}{Total population within 100 km of volcano}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/volcano.csv}
"volcano_height"

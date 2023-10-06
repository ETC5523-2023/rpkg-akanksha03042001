#' @title Dataset about volcanic eruptions
#'
#' @description A dataset that contains the the different types of volcanic eruption according to their eruption category
#'
#' @format A data frame with 11178 rows and 15 variables.
#' \describe{
#'   \item{volcano_number}{Volcano unique ID}
#'   \item{volcano_name}{Volcano Name}
#'   \item{eruption_number}{Eruption Number}
#'   \item{eruption_category}{Type of eruption}
#'   \item{area_of_activity}{Area of activity}
#'   \item{vei}{Volcano explosivity Index}
#'   \item{start_year}{Volcano Start Year}
#'   \item{start_month}{Volcano Start Month}
#'   \item{start_day}{Volcano Start Day}
#'   \item{evidence_method_dating}{Evidence for dating volcano eruption}
#'   \item{end_year}{Volcano End Year}
#'   \item{end_month}{Volcano End Month}
#'   \item{end_day}{Volcano End Day}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/eruptions.csv}
"eruption"

#' @title Dataset about volcanic eruptions having end_year>2000
#'
#' @description A dataset that contains the the different types of volcanic eruption according to their eruption category, which has
#' an end_year>2000, so that the dataset is filtered to use in R-Shiny app.
#'
#' @format A data frame with 801 rows and 15 variables.
#' \describe{
#'   \item{volcano_number}{Volcano unique ID}
#'   \item{volcano_name}{Volcano Name}
#'   \item{eruption_number}{Eruption Number}
#'   \item{eruption_category}{Type of eruption}
#'   \item{area_of_activity}{Area of activity}
#'   \item{vei}{Volcano explosivity Index}
#'   \item{start_year}{Volcano Start Year}
#'   \item{start_month}{Volcano Start Month}
#'   \item{start_day}{Volcano Start Day}
#'   \item{evidence_method_dating}{Evidence for dating volcano eruption}
#'   \item{end_year}{Volcano End Year}
#'   \item{end_month}{Volcano End Month}
#'   \item{end_day}{Volcano End Day}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/eruptions.csv}
"eruptions_filtered"

#' @title Dataset about volcanic eruptions filtering NA values
#'
#' @description A dataset that contains the the different types of volcanic eruption filtering out the NA values.
#'
#' @format A data frame with 1951 rows and 15 variables.
#' \describe{
#'   \item{volcano_number}{Volcano unique ID}
#'   \item{volcano_name}{Volcano Name}
#'   \item{eruption_number}{Eruption Number}
#'   \item{eruption_category}{Type of eruption}
#'   \item{area_of_activity}{Area of activity}
#'   \item{vei}{Volcano explosivity Index}
#'   \item{start_year}{Volcano Start Year}
#'   \item{start_month}{Volcano Start Month}
#'   \item{start_day}{Volcano Start Day}
#'   \item{evidence_method_dating}{Evidence for dating volcano eruption}
#'   \item{end_year}{Volcano End Year}
#'   \item{end_month}{Volcano End Month}
#'   \item{end_day}{Volcano End Day}
#'   \item{latitude}{Latitude}
#'   \item{longitude}{Longitude}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/eruptions.csv}
"eruption_count"

#' @title Dataset about volcanic eruptions
#'
#' @description A dataset that contains the the different types of volcanic eruption according to their eruption, which is used in
#' a function to display the Volcanic Explosivity Index and its respective volcano according to year.
#'
#' @format A data frame with 346 rows and 3 variables.
#' \describe{
#'   \item{volcano_name}{Volcano Name}
#'   \item{vei}{Volcano explosivity Index}
#'   \item{start_year}{Volcano Start Year}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/eruptions.csv}
"explosive_index_data"

#' @title Dataset about volcanic eruptions by their Explosivity Index for recent 20 years
#'
#' @description A dataset that contains the the different types of volcanic eruption according to their eruption, which is used in
#' a function related to R-shiny to display the Volcanic Explosivity Index and its respective volcano according to year.
#'
#' @format A data frame with 127 rows and 3 variables.
#' \describe{
#'   \item{volcano_name}{Volcano Name}
#'   \item{vei}{Volcano explosivity Index}
#'   \item{start_year}{Volcano Start Year}
#' }
#' @source \url{https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/eruptions.csv}
"new_data"

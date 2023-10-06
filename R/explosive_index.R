#' @title Volcano Name by their highest Volcanic Explosivity Index (VEI)
#' @description A function which takes the year of the volcano as an input and returns the volcano name and
#' its highest Volcanic Explosivity Index for that specific year.
#' @param start_year A numeric input greater than 46
#' @examples
#' explosive_index(2011)
#' @export
explosive_index <- function(start_year) {
  explosion <- explosive_index_data %>%
    dplyr::filter(start_year == !!start_year) %>%
    dplyr::ungroup() %>%
    dplyr::select(vei, volcano_name)

  if (nrow(explosion) == 0) {
    message("No data found for this year")
    return(NULL)
  }

  return(explosion)
}


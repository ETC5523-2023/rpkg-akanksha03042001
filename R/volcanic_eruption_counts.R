#' @title Generation of Volcanic Eruptions for each year by Volcanic Explosivity Index
#' @description A parameterised function which takes an input of R-shiny one panel function i.e year
#' as an input and it will generate us Volcanic Explosivity Index(VEI) vs Volcano Name.
#' It mainly tell us that more VEI means that that the eruption of that volcano is really powerful.
#' The data has been selected to show the top 7 highest VEI volcanoes in the last 20 years.
#' @param year_input The year parameter which is used for plotting
#' @examples
#' volcanic_eruption_counts(2001)
#' @import dplyr
#' @import ggplot2
#' @export

volcanic_eruption_counts <- function(year_input) {
  if (!year_input %in% new_data$start_year) {
    return("No volcanic eruptions found for this year")
  }

  plot_data <- new_data %>%
    filter(start_year == year_input)

  plot <- plot_data %>%
    ggplot(aes(
      x = volcano_name,
      y = vei,
      fill = volcano_name
    )) +
    geom_col() +
    labs(
      x = "Volcano Name",
      y = "Volcanic Explosivity Index(VEI)",
      title = paste("Number of Volcanic Eruptions by their VEI in", year_input),
      fill = "Volcano Name"
    ) +
    guides(fill = "none") +
    theme_minimal() +
    scale_fill_brewer(palette = "Set1") +
    coord_flip()

  return(plot)
}

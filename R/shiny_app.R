#' @title R-Shiny Application on different Volcanoes
#' @description This functions runs the R-shiny application created in Assignment 1
#' for the eruptR package.
#' @export
run_app <- function() {
  app_dir <- system.file("shiny-app-akanksha", package = "eruptR")
  shiny::runApp(app_dir, display.mode = "normal")
}

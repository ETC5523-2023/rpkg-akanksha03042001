library(janitor)
library(tidyverse)

eruption <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/eruptions.csv")

# Code to filter for the R-Shiny app is mentioned here:
eruptions_filtered <- eruption %>%
  filter(end_year > 2000)

usethis::use_data(eruption, overwrite = TRUE)

usethis::use_data(eruptions_filtered, overwrite = TRUE)

## Cleaning the dataset

eruption_count <- eruption[complete.cases(eruption), ]

usethis::use_data(eruption_count, overwrite = TRUE)

## Dataset which is used for `explosive_index` is mentioned here:

explosive_index_data <- eruption_count %>%
  select(
    volcano_name,
    vei,
    start_year
  ) %>%
  group_by(start_year) %>%
  filter(vei == max(vei)) %>%
  slice(1)

usethis::use_data(explosive_index_data, overwrite = TRUE)

new_data <- eruption_count %>%
  dplyr::select(
    volcano_name,
    vei,
    start_year
  ) %>%
  dplyr::group_by(start_year) %>%
  dplyr::filter(start_year > 2000) %>%
  dplyr::arrange(desc(vei)) %>%
  dplyr::slice(1:7)


usethis::use_data(new_data, overwrite = TRUE)

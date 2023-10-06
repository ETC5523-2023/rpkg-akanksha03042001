library(janitor)
library(tidyverse)

volcano <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/volcano.csv")

volcano_height <- volcano %>%
  arrange(desc(elevation)) %>%
  head(70)

usethis::use_data(volcano, overwrite = TRUE)

usethis::use_data(volcano_height, overwrite = TRUE)

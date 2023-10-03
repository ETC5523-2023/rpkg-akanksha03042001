library(janitor)
library(tidyverse)

volcano_counts <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/volcano.csv')

usethis::use_data(volcano_counts, overwrite = TRUE)

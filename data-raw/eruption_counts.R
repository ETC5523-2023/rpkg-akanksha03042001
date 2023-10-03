library(janitor)
library(tidyverse)

eruption_counts <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/eruptions.csv")

usethis::use_data(eruption_counts, overwrite = TRUE)

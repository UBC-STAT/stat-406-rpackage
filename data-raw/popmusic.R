## code to prepare `popmusic` dataset goes here
library(tidyverse)
## all are used in R. Alexander's "Telling Stories with Data"
taytay <- read_rds("https://raw.githubusercontent.com/RohanAlexander/telling_stories/main/inputs/data/taylor_swift.rds")
radiohead <- read_rds("https://raw.githubusercontent.com/RohanAlexander/telling_stories/main/inputs/data/radiohead.rds")
the_national <- read_rds("https://raw.githubusercontent.com/RohanAlexander/telling_stories/main/inputs/data/the_national.rds")

popmusic <- bind_rows(taytay, radiohead, the_national) |>
  as_tibble() |>
  select(artist = artist_name, danceability:tempo,
         time_signature, duration_ms, explicit) |>
  mutate(artist = as.factor(artist))

idx <- 1:nrow(popmusic)
splitter <- tibble(idx, gr = popmusic$artist) |>
  slice_sample(prop = .75, by = gr)

popmusic_train <- popmusic[splitter$idx, ]
popmusic_test <- popmusic[setdiff(idx, splitter$idx), ]


usethis::use_data(popmusic_train, overwrite = TRUE)
usethis::use_data(popmusic_test, overwrite = TRUE)

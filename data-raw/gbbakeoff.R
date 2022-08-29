## code to prepare `gbbakeoff` dataset goes here
library(tidyverse)
bake <- readRDS("../lecture-slides/slides/data/gbbakeoff.RDS")
bake <- bake %>% select(-baker_full)

set.seed(71183)
bake$hometown <- sample(bake$hometown, replace = FALSE)
bake$occupation <- sample(bake$occupation, replace = TRUE)

sample_entries <- function(X, n = 3) {
  Y <- X[0,]
  z <- X[0,]
  for (i in 1:n) {
    for (j in seq_along(z)) z[1,j] <- X[sample.int(nrow(X), 1), j]
    Y <- bind_rows(Y, z)
  }
  Y
}

test_set <- bake %>% group_by(series) %>% slice_sample(n = 3)
train_set <- anti_join(bake, test_set)
test_set <- bind_rows(
  test_set,
  test_set %>% ungroup() %>% slice_sample(n = 3) %>%
    mutate(winners = !winners,
           hometown = c("London", "Coventry", "Manchester"),
           occupation = c("Dog walker", "Carpet bagger", "House painter")),
  bake %>% sample_entries())

true_class <- test_set %>% pull(winners)
bakeoff_test <- test_set %>% select(-winners)
bakeoff_train <- train_set
saveRDS(true_class, here::here("..", "WinterT1-2022", "bakeoff", "bakeoff-test-winners.rds"))

usethis::use_data(bakeoff_test, overwrite = TRUE)
usethis::use_data(bakeoff_train, overwrite = TRUE)

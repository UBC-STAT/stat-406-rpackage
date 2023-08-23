## code to prepare `nytimes` dataset goes here
library(tidyverse)
tmp <- tempfile()
download.file(
  "https://www.stat.cmu.edu/~cshalizi/ADAfaEPoV/data/pca-examples.Rdata",
  tmp
)
load(tmp)

xdots <- which(str_detect(names(nyt.frame), "X\\."))

nyt_raw <- nyt.frame.raw[,-xdots] |> as_tibble()
nyt_tfidf <- nyt.frame[,-xdots] |> as_tibble()

usethis::use_data(nyt_raw, nyt_tfidf, overwrite = TRUE)

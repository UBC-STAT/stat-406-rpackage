## code to prepare `wiggly` dataset goes here
set.seed(1234)
library(tibble)
library(Stat406)
n <- 100
wiggly <- tibble(
  x = 1:n/n * 2 * pi,
  y = wiggly_function(x) + rnorm(n, sd = 0.75)
)

usethis::use_data(wiggly, overwrite = TRUE)

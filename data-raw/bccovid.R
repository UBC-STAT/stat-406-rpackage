## code to prepare `bccovid` dataset goes here
library(CanCovidData)
library(tidyverse)
library(lubridate)
shift <- function(x, n) {
  if (n < 0) dplyr::lag(x, -n)
  else dplyr::lead(x, n)
}
apply_shifts <- function(x, dt) {
  stopifnot(is.data.frame(x))
  stopifnot(all(c("date", "cases") %in% names(x)))
  x <- arrange(x, date)
  lagged <- sapply(dt, shift, x = x$cases)
  lagged <- as.data.frame(lagged)
  names(lagged) <- sprintf("cases%+d", dt)
  x <- bind_cols(date = x$date, lagged)
  x <- x[complete.cases(x), ]
  x
}

dat <- get_british_columbia_case_data()
dat <- dat %>%
  mutate(HA = `Health Authority`) %>%
  filter(HA != "Out of Canada") %>%
  count(date = `Reported Date`, HA, name="cases") %>%
  filter(date >= as.Date("2021-08-01"))
dat <- dat %>%
  expand(date, HA) %>%
  left_join(dat) %>%
  mutate(cases = coalesce(cases, 0)) %>%
  group_by(HA) %>%
  mutate(cases = zoo::rollsum(cases, 7, fill = NA, align = "right")) %>%
  filter(!is.na(cases))
dat <- dat %>%
  group_by(HA) %>%
  group_modify(~apply_shifts(.x, dt = c(14, 0, -7, -14))) %>%
  ungroup()
bccovid_train <- dat %>%
  filter(date < ymd("2022-08-01") - 14)
bccovid_test <- dat %>%
  filter(date >= ymd("2022-08-01") - 14)
bccovid <- dat

usethis::use_data(bccovid_train, overwrite = TRUE)
usethis::use_data(bccovid_test, overwrite = TRUE)
usethis::use_data(bccovid, overwrite = TRUE)

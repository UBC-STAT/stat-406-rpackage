#' COVID 19 Cases in BC for the last year
#'
#' This data is the number of reported COVID-19 cases in British
#' Columbia between January 2020 and April 15, 2023. The values are.up-to-date
#' as of August 2023.
#'
#'
#' @details
#' The full data (`bccovid`), contains the case count for BC.
#'
#' The other data has been processed from this raw file. First, it is separated
#' out by Health Authority. Then it was
#' "smoothed" by applying a 7 day trailing sum. By this we mean that,
#'
#' ```r
#' cases_today  = sum(cases_7days_ago:cases_today)
#' ```
#'
#' The result is in the `cases+0` column. The other columns are "shifts" of this
#' value. `cases+14` is the response: it is the total number of cases observed
#' in the week ending 14 days after `date`. The other `cases` variables are
#' features: the total number of cases in the week ending on the `date`
#' (`cases+0`), 1 week earlier (`cases-7`) and 2 weeks earlier (`cases-14`).
#' `HA` is the name of the BC Health Authority. There are 5 different `HA`s,
#' and UBC is located in "Vancouver Coastal" along with Kitsilano and Downtown.
#' SFU, Burnaby, Richmond, and Surrey are all in "Fraser".
#'
#' @source This data comes from the British Columbia CDC
#' [linelist](http://www.bccdc.ca/Health-Info-Site/Documents/BCCDC_COVID19_Dashboard_Case_Details.csv)
#' via the [`{CanCovidData}`](https://mountainmath.github.io/CanCovidData/) package.
#'
#' @keywords datasets
"bccovid"

#' @details
#' `bccovid_train` is the Training set for use on the homework.
#' It contains only the data prior to 1 August 2021.
#'
#' @rdname bccovid
"bccovid_train"


#' @details
#' `bccovid_test` is the Test set for use on the homework.
#' It contains only the most recent `r length(unique(bccovid_test$date))` rows
#' of the data (between 1 August 2021 and 1 December 2021).
#'
#' @rdname bccovid
"bccovid_test"

#' @details
#' `bcpop` gives the number of people living in each BC Health Authority as of
#' the 2020 Census
#'
#' @rdname bccovid
"bcpop"

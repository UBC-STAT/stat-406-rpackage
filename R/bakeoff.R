

#' Great British bakeoff results
#'
#' Results for individual bakers across all GBBO series. We have processed
#' this data some to make it suitable for a "bakeoff".
#'
#'
#' @format A data frame with 71 rows representing individual bakers and 16 variables:
#' \describe{
#'   \item{winners}{was the baker in the final episode?}
#'   \item{series}{an integer denoting UK series (1-8)}
#'   \item{age}{an integer denoting age in years at first episode appeared}
#'   \item{occupation}{a character string giving occupation}
#'   \item{hometown}{a character string giving hometown}
#'   \item{percent_star}{the percentage of episodes achieving star baker}
#'   \item{percent_technical_wins}{percent of episodes the baker won the technical}
#'   \item{percent_technical_bottom3}{percent of times a given baker was in the bottom 3 on the technical challenge}
#'   \item{percent_technical_top3}{percent of times a given baker was in the top 3 (1st, 2nd, or 3rd) on the technical challenge}
#'   \item{technical_highest}{an integer denoting the best technical rank earned by a given baker across all episodes appeared (higher is better)}
#'   \item{technical_lowest}{an integer denoting the worst technical rank earned by a given baker across all episodes appeared (higher is better)}
#'   \item{technical_median}{an integer denoting the median technical rank earned by a given baker across all episodes appeared (higher is better)}
#'   \item{judge1}{the name of one of the judges}
#'   \item{judge2}{the name of the other judge}
#'   \item{viewers_7day}{number of viewers in millions within a 7-day window from airdate}
#'   \item{viewers_28day}{number of viewers in millions within a 28-day window from airdate}
#' }
#' @name bakeoff
#' @source This is a combination of two datasets in Allison Hill's [bakeoff](https://bakeoff.netlify.app) package.
#' @keywords datasets
NULL

#' @details
#' `bakeoff_train` is the training set for use on the homework.
#' @rdname bakeoff
#' @examples
#' bakeoff_train
#'
"bakeoff_train"


#' @details
#' `bakeoff_test` is the Test set for use on the homework.
#' It contains a held out set of `r length(unique(bccovid_test$date))` bakers
#' and omits the `winners` column.
#'
#' @rdname bakeoff
#' @examples
#' bakeoff_test
#'
"bakeoff_test"

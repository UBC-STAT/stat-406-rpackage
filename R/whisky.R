#' Whisky flavour profiles
#'
#' A collection of flavour profiles for 86 different Scotch whiskies on
#' 12 different aspects.
#'
#' @details
#' David Wishart was at one point, Chief Statistician at the Scottish Office
#' of the Civil Service. When he retired, he focused on Whisky and wrote a
#' book called ["Whisky Classified"](https://www.powells.com/book/whisky-classified-choosing-single-malts-by-flavour-9781911595731).
#' For the book, he collected tasting notes published about 86 different
#' Scotch Whisky distilleries on a number of aspects and "distilled" them
#' down to 12 flavor categories. Then each distillery's representative whisky
#' was given a score on each category from 0-4, 0 meaning that that flavor is
#' not represented in that whisky, 4 meaning that it is strongly represented.
#'
#' The data set was later expanded to include more distilleries and
#' crowd-sourced tasting notes, but, this data seems to be kept only in a
#' for-profit Windows software which no longer exists. Dr. Wishart passed away
#' in 2020, and there seems to be no way to access the larger data set.
#'
#' This version of the data comes from the first edition of Dr. Wishart's book.
#' An article describing some of his analyses with 185 single malts was
#' published in 2009 in [Significance](https://rss.onlinelibrary.wiley.com/doi/full/10.1111/j.1740-9713.2009.00337.x).
#'
#' The flavour categories are `r names(whisky[2:12])`, and `r names(whisky[13])`.
#'
#' The data also contains meta information giving each distillery's postcode,
#' Longitude, and Latitude.
#' @keywords datasets
#' @examples
#' whisky
#'
"whisky"

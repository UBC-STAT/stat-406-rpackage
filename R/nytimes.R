#' A subset of the NYTimes document corpus
#'
#' These datasets contain some news stories taken from the New York
#' Times Annotated Corpus (Sandhaus, 2008), which consists of about 1.8 million
#' stories from the Times, from 1987 to 2007, which have been hand-annotated by
#' actual human beings with standardized machine-readable information about their
#' contents. From this corpus, Prof. Shalizi randomly selected 57 stories about
#' art and 45 stories about music, and turned them into a bag-of-words data frame,
#' one row per story, one column per word; plus an indicator in the first column of
#' whether the story is about art or music.
#'
#' @details
#' The New York Times Annotated Corpus contains over 1.8 million articles
#' written and published by the New York Times between January 1, 1987 and
#' June 19, 2007 with article metadata provided by the New York Times Newsroom,
#' the New York Times Indexing Service and the online production staff at
#' nytimes.com. The corpus includes:
#'
#' * Over 1.8 million articles (excluding wire services articles that appeared
#'   during the covered period).
#' * Over 650,000 article summaries written by library scientists.
#' * Over 1,500,000 articles manually tagged by library scientists with tags
#'   drawn from a normalized indexing vocabulary of people, organizations, locations and topic descriptors.
#' * Over 275,000 algorithmically-tagged articles that have been hand verified
#'   by the online production staff at nytimes.com.
#' * Java tools for parsing corpus documents from .xml into a memory resident
#'   object.
#'
#' As part of the New York Times' indexing procedures, most articles are
#' manually summarized and tagged by a staff of library scientists. This
#' collection contains over 650,000 article-summary pairs which may prove to be
#' useful in the development and evaluation of algorithms for automated document
#' summarization. Also, over 1.5 million documents have at least one tag.
#' Articles are tagged for persons, places, organizations, titles and topics
#' using a controlled vocabulary that is applied consistently across articles.
#' For instance if one article mentions "Bill Clinton" and another refers to
#' "President William Jefferson Clinton", both articles will be tagged with
#' "CLINTON, BILL".
#'
#' The New York Times has established a community website for researchers
#' working on the data set at <http://groups.google.com/group/nytnlp> and
#' encourages feedback and discussion about the corpus.
#'
#' `nyt_raw` contains the raw bag-of-words representation.
#'
#' @keywords datasets
#'
#' @source Sandhaus, Evan, 2008, "The New York Times Annotated Corpus",
#'   <https://hdl.handle.net/11272.1/AB2/GZC6PL>, Abacus Data Network, V1.
#' @source Shalizi, Cosma, 2023, "Advanced Data Analysis from an Elementary
#'   Point of View", <https://www.stat.cmu.edu/~cshalizi/ADAfaEPoV/>.
#' @example nyt_raw
"nyt_raw"

#' @rdname nyt_raw
#'
#' @details
#' `nyt_tfidf` hass the same format as `nyt_raw` but after applying TF-IDF
#' weighting.
#'
#' @keywords datasets
#' @example nyt_tfidf
"nyt_tfidf"

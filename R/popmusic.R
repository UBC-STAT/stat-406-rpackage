

#' Spotify data for 3 artists
#'
#' Audio features for all recordings by Taylor Swift, Radiohead, and The
#' National, as available in the Spotify API.
#'
#'
#' @format Audio features for one track
#' \describe{
#' \item{artist}{Who is performing this music? This data contains tracks by
#'   Taylor Swift, Radiohead, and The National.}
#' \item{acousticness}{A confidence measure from 0.0 to 1.0 of whether the track
#'   is acoustic. 1.0 represents high confidence the track is acoustic.}
#' \item{danceability}{Danceability describes how suitable a track is for
#'   dancing based on a combination of musical elements including tempo, rhythm
#'   stability, beat strength, and overall regularity. A value of 0.0 is least
#'   danceable and 1.0 is most danceable.}
#' \item{duration_ms}{The duration of the track in milliseconds.}
#' \item{energy}{Energy is a measure from 0.0 to 1.0 and represents a
#'   perceptual measure of intensity and activity. Typically, energetic tracks
#'   feel fast, loud, and noisy. For example, death metal has high energy,
#'   while a Bach prelude scores low on the scale. Perceptual features
#'   contributing to this attribute include dynamic range, perceived loudness,
#'   timbre, onset rate, and general entropy.}
#' \item{instrumentalness}{Predicts whether a track contains no vocals. "Ooh"
#'   and "aah" sounds are treated as instrumental in this context. Rap or
#'   spoken word tracks are clearly "vocal". The closer the instrumentalness
#'   value is to 1.0, the greater likelihood the track contains no vocal
#'   content. Values above 0.5 are intended to represent instrumental tracks,
#'   but confidence is higher as the value approaches 1.0.}
#' \item{key}{The key the track is in. Integers map to pitches using standard
#'   Pitch Class notation. E.g. 0 = C, 1 = C♯/D♭, 2 = D, and so on. If no key
#'   was detected, the value is -1.}
#' \item{liveness}{Detects the presence of an audience in the recording. Higher
#'   liveness values represent an increased probability that the track was
#'   performed live. A value above 0.8 provides strong likelihood that the
#'   track is live.}
#' \item{loudness}{The overall loudness of a track in decibels (dB). Loudness
#'   values are averaged across the entire track and are useful for comparing
#'   relative loudness of tracks. Loudness is the quality of a sound that is
#'   the primary psychological correlate of physical strength (amplitude).
#'   Values typically range between -60 and 0 db.}
#' \item{mode}{Mode indicates the modality (major or minor) of a track, the
#'   type of scale from which its melodic content is derived. Major is
#'   represented by 1 and minor is 0.}
#' \item{speechiness}{Speechiness detects the presence of spoken words in a
#'   track. The more exclusively speech-like the recording (e.g. talk show,
#'   audio book, poetry), the closer to 1.0 the attribute value. Values above
#'   0.66 describe tracks that are probably made entirely of spoken words.
#'   Values between 0.33 and 0.66 describe tracks that may contain both music
#'   and speech, either in sections or layered, including such cases as rap
#'   music. Values below 0.33 most likely represent music and other
#'   non-speech-like tracks.}
#' \item{tempo}{The overall estimated tempo of a track in beats per minute
#'   (BPM). In musical terminology, tempo is the speed or pace of a given piece
#'   and derives directly from the average beat duration.}
#' \item{time_signature}{An estimated time signature. The time signature (meter)
#'   is a notational convention to specify how many beats are in each bar (or
#'   measure). The time signature ranges from 3 to 7 indicating time signatures
#'   of "3/4", to "7/4".}
#' \item{valence}{A measure from 0.0 to 1.0 describing the musical positiveness
#'   conveyed by a track. Tracks with high valence sound more positive (e.g.
#'   happy, cheerful, euphoric), while tracks with low valence sound more
#'   negative (e.g. sad, depressed, angry).}
#' \item{explicit}{Are there bad words that prevent typical play on the radio
#'   (not safe for work).}
#' }
#'
#' @name popmusic
#' @source Rohan Alexander (2023). _Telling Stories with Data: With_
#'   _Applications in `R`_. CRC Press, Toronto.
#'   <https://tellingstorieswithdata.com/>.
#'
#'   The example data are available with the textbook, originally from the
#'   Spotify API and described in Chapter 7.
#'
#'   Documentation is from [Spotify API](https://developer.spotify.com/documentation/web-api/reference/get-audio-features).
#' @keywords datasets
NULL

#' @details
#' `popmusic_train` is the training set.
#' @rdname popmusic
#' @examples
#' popmusic_train
#'
"popmusic_train"


#' @details
#' `popmusic_test` is the test set.
#' It contains a held out set of `r nrow(popmusic_test)` songs.
#'
#' @rdname popmusic
#' @examples
#' popmusic_test
#'
"popmusic_test"

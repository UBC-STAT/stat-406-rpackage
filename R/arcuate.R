#' Fractional anisotropy measurements in the right Arcuate fascilicus
#'
#' This data contains a sample of measurements from dMRI patients. dMRI measures
#' the flow of water through the brain. After the image is processed, a
#' trajectory tracking algorithm is applied to determine the direction of
#' water diffusion. This leads to a collection of fasicles that connect different
#' regions of the brain to each other. This data is for the fasicles that
#' correspond to the Arcuate fascilicus shown below (Source: [Wikipedia](https://commons.wikimedia.org/wiki/File:Arcuate_Fasciculus.jpg)).
#'
#' ![](arcuate.jpg "Tractography showing the arcuate fascilicus")
#'
#' This data contains two measurements:
#' 1. The `position` along the region, from one end to the other.
#' 2. The `fa` or ["fractional anisotropy"](https://en.wikipedia.org/wiki/Fractional_anisotropy)
#'   a measurement of the amount of diffusivity.
#' @keywords datasets
#' @examples
#' arcuate
#'
"arcuate"

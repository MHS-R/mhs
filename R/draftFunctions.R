#' Number of parameters estimated in an EFA (oblique)
#' @param items numeric; number of items included in EFA
#' @param numLatent numeric; number of latent variables to be estimated


efaEstimatedParameters <- function(items, numLatent) {
    p <- items
    k <- numLatent
    res <- p * k + p - (k * (k - 1)/2)  # number of direct effects of indicator to latent variables + indicator variances - indicator covariances
    return(res)
}

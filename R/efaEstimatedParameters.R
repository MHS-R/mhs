#' Number of parameters estimated in an EFA
#'
#'
#' @param items numeric; number of items included in EFA
#' @param factors numeric; number of latent variables to be estimated

efaEstimatedParameters <- function(items, factors) {
    p <- items
    k <- factors
    res <- p * k + p - (k * (k - 1)/2)
    return(res)
}

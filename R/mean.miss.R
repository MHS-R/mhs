#' Calculate mean with allowable missingness
#'
#' This function calculates a mean if the missingness does not exceed that maximum allowed.
#'
#' @param rowVector vector; a row vector in, say, a data frame of Cases by Variables
#' @param maxMiss numeric; a number specifying the maximum NAs that are allowed prior to calculation
#' @param items numeric; number of cases to sample from each strata
#' @export mean.miss
#' @examples
#' \dontrun{
#' #raw data
#' x <- c(1,2,2,3,4,1,2,NA, NA)
#' mean.miss(x, 1)
#' mean.miss(x, 2)
#' mean.miss(x, 2)
#'}
mean.miss <- function(rowVector, maxMiss) {
    # mean.miss(dat$ha, 0)
    
    missings <- sum(is.na(rowVector))
    ifelse(missings > maxMiss, meanM <- NA, meanM <- mean(rowVector, na.rm = TRUE))
    # scoreM <- round(meanM*items,0)
    return(meanM)
}


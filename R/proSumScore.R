#' Prorate subscale sum score
#'
#' This function computes a sum score across items in the event of missingness, but also prorates.
#'
#' @param rowVector vector; a numeric vector whose elements are to be summed and prorated
#' @param maxMiss numeric; a number specifying the maximum NAs that are allowed prior to calculation
#' @examples
#' 
proSumScore <- function(rowVector, maxMiss) {
    
    missings <- sum(is.na(rowVector))
    numItemsScale <- length(rowVector)
    itemsAnswered <- numItemsScale - missings
    ifelse(missings > maxMiss, sumM <- NA, sumM <- sum(rowVector, 
        na.rm = TRUE))
    proSum <- sumM * numItemsScale/itemsAnswered
    return(proSum)
}

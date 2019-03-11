#' Cliff's d
#'
#' Wrapper function to call effsize::cliff.delta. Returns only the Cliff's delta estimate and its confidence intervals.
#' For further details on the original function or to use the original function, see effsize::cliff.delta.
#' The magnitude is assessed using the thresholds provided in (Romano 2006), i.e. |d|<0.147 'negligible', |d|<0.33 'small', |d|<0.474 'medium', otherwise 'large'
#' Minimum value is -1, maximum value is 1.
#' Values closer to -1 indicate that the first group tends to endorse lower values than the second group.
#' Values closer to 1 indicate that the first group tends to endorse higher values than the second group.
#' Values closer to 0 indicate that the first group tends to endorse similar values as the second group.
#' @param col a numeric vector with data values, with complete cases
#' @param g factor; a factor for a grouping variable. The first level is the group to which the second level is compared.
#' @param withCI logical; include CIs?
#' @references Marco Torchiano http://softeng.polito.it/torchiano/
#' @export getCliffsD
#' @examples
#' #' \dontrun{
#' #raw data
#' dat <- data.frame(item1 = c(1,1,2,2,2,3,3,3,4,5, 1,2,3,4,4,5), item2 = c(5,2,3,1,4,2,4,3,2,1,4,5, 1, 1, 1, 1), group = rep(c('g1', 'g2'), c(10, 6)))
#' getCliffsD(dat$x, dat$group)
#'}


getCliffsD <- function(col, g, withCI = FALSE) {
    if (!is.factor(g)) 
        stop("Argument g must be of factor type")
    cd <- effsize::cliff.delta(col, g)
    cdRes <- data.frame(cliffD = cd$estimate, lowCI = cd$conf.int[1], highCI = cd$conf.int[2], 
        size = as.character(cd$magnitude))
    if (cdRes$size == "negligible") 
        cdRes$size <- "neglig."
    cdRes$signif <- ifelse(cdRes$lowCI * cdRes$highCI < 0, "", "*")
    
    if (withCI == TRUE) {
        cdRes <- within(cdRes, {
            cliffD <- round(cliffD, 2)
            lowCI <- round(lowCI, 2)
            highCI <- round(highCI, 2)
        })
    } else {
        cdRes$cliffD <- round(cdRes$cliffD, 2)
        cdRes <- cdRes[, c("cliffD", "size", "signif")]
        # cdRes$effect <- paste0(cdRes$signif, cdRes$cliffD, ', ', cdRes$size)
    }
    return(cdRes)
}

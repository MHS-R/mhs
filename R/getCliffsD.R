#' Cliff's d
#'
#' Wrapper function to call effsize::cliff.delta. Returns only the Cliff's delta estimate and its confidence intervals. For further details, see original function.
#' @param col a numeric vector with data values
#' @param g numeric; a number specifying the number of digits to round to.
#' @export getCliffsD

# get cliff's ds
getCliffsD <- function(col, g) {
    cd <- cliff.delta(col, g)
    cdRes <- data.frame(cliffD=cd$estimate, lowCI=cd$conf.int[1], highCI = cd$conf.int[2],
                        size=as.character(cd$magnitude))
    cdRes$signif <- ifelse(cdRes$lowCI*cdRes$highCI < 0, '', '*')
    cdRes <- within(cdRes, {
      cliffD <- round(cliffD, 2)
      lowCI <- round(lowCI, 2)
      highCI <- round(highCI, 2)
    })
    return(cdRes)
}


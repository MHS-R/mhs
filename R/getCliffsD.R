#' Cliff's d
#'
#' Wrapper function to call effsize::cliff.delta. Returns only the Cliff's delta estimate and its confidence intervals. For further details, see original function.
#' @param col a numeric vector with data values
#' @param g numeric; a number specifying the number of digits to round to.
#' @export getCliffsD

# get cliff's ds
getCliffsD <- function(col, g) {
    cd <- cliff.delta(col, g)
    cdRes <- c(cd$estimate, cd$conf.int)
    names(cdRes) <- c("CliffsD", "LowCI", "HiCI")
    return(cdRes)
}


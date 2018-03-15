#' Create character to numbers
#'
#' This function allows you to change character text to numbers
#' @param
#' @keywords characters numbers
#' @export
#' @examples
#' Char2Num()

Char2Num <- function(df) {
    for (i in 1:dim(df)[2]) {
        if ("character" %in% class(df[, i])) {
            df[, i] <- as.numeric(df[, i])
        } else {
            df[, i] <- df[, i]
        }
    }
    return(df)
}

#' Collate things
#'
#' This function allows you to combine things together from different grids
#' @param
#' @keywords collate
#' @export
#' @examples
#' collate()
#'

collate <- function(x, y, sep = " ") {
    xy <- expand.grid(y, x)
    xy$z <- paste(xy[, 2], xy[, 1], sep = sep)
    return(xy$z)
}
collate(1:3, c("a", "B"), sep = "_")

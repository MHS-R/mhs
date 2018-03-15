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

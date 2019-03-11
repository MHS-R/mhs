get.dif.items <- function(out.list, p.val, parms) {
    dif.items <- NULL
    non.dif.items <- NULL
    for (i in 1:length(out.list)) {
        # loop list of items
        chi.sq <- out.list[[i]][2, 6]  #2 groups, so second row, and 6th column 
        df <- out.list[[i]][2, 7]
        p <- out.list[[i]][2, 8]
        i.name <- names(out.list[i])
        d <- c(i.name, chi.sq, df, p, parms[i, ])
        
        if (p < p.val) {
            dif.items <- rbind(dif.items, d)
        } else {
            non.dif.items <- rbind(non.dif.items, d)
        }
    }
    if (!is.null(dif.items)) {
        dif.items <- data.frame(dif.items, row.names = NULL)
        colnames(dif.items)[1] <- "item"
        colnames(dif.items)[2] <- "chi.sq"
        colnames(dif.items)[3] <- "df"
        colnames(dif.items)[4] <- "p"
        
    }
    if (!is.null(non.dif.items)) {
        non.dif.items <- data.frame(non.dif.items, row.names = NULL)
        colnames(non.dif.items)[1] <- "item"
        colnames(non.dif.items)[2] <- "chi.sq"
        colnames(non.dif.items)[3] <- "df"
        colnames(non.dif.items)[4] <- "p"
    }
    r.list <- list(dif_items = dif.items, no_dif = non.dif.items)
    return(r.list)
}

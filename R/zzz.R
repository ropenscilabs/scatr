ct <- function(l) Filter(Negate(is.null), l)

sc_GET <- function(path, query, ...){
  cli <- HttpClient$new(url = file.path(sc_base(), path), opts = list(...))
  temp <- cli$get(query = query)
  if (temp$status_code > 201) {
    stop(sprintf("(%s) - %s", temp$status_code, temp$status_http()$message), call. = FALSE)
  }
  #err_catcher(temp)
  temp$parse()
}

err_catcher <- function(x) {
  xx <- jsonlite::fromJSON(x$parse())
  if (any(vapply(c("message", "error"), function(z) z %in% names(xx), logical(1)))) {
    stop(xx[[1]], call. = FALSE)
  }
}

sc_parse <- function(x, parse) {
  res <- jsonlite::fromJSON(x, parse, flatten = TRUE)
  res$resources <- tibble::as_data_frame(res$resources)
  res
}

sc_base <- function() "http://exist.scta.info/exist/apps/scta/iiif/pp-vat"

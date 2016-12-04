#' Search
#'
#' @export
#' @param q query terms
#' @param parse to parse to data.fram'es if possible or to list
#' @param ... curl options
#' @examples \dontrun{
#' res <- scta_search(q = 'potentia')
#' res$resources
#' res$within
#' res$`next`
#' res$`@context`
#' }
scta_search <- function(q = NULL, parse = TRUE, ...) {
  sc_parse(sc_GET(path = "search", query = list(q = q), ...), parse)
}

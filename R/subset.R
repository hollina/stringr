#' Keep strings matching a pattern.
#'
#' This is a convenient wrapper around \code{x[str_detect(x, pattern)]}.
#' Vectorised over \code{string} and \code{pattern}
#'
#' @inheritParams str_detect
#' @return A character vector.
#' @seealso \code{\link{grep}} with argument \code{value = TRUE},
#'    \code{\link[stringi]{stri_subset}} for the underlying implementation.
#' @export
#' @examples
#' fruit <- c("apple", "banana", "pear", "pinapple")
#' str_subset(fruit, "a")
#' str_subset(fruit, "^a")
#' str_subset(fruit, "a$")
#' str_subset(fruit, "b")
#' str_subset(fruit, "[aeiou]")
str_subset <- function(string, pattern) {
  switch(type(pattern),
    empty = ,
    bound = stop("Not implemented", call. = FALSE),
    fixed = stri_subset_fixed(string, pattern),
    coll  = stri_subset_coll(string, pattern,
      opts_collator = attr(pattern, "options")),
    regex = stri_subset_regex(string, pattern,
      opts_regex = attr(pattern, "options"))
  )
}
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/flatten.R
\name{str_flatten}
\alias{str_flatten}
\title{Flatten a string}
\usage{
str_flatten(string, collapse = "")
}
\arguments{
\item{string}{Character to flatten}

\item{collapse}{String to insert between each piece}
}
\value{
A character vector of length 1
}
\description{
Flatten a string
}
\examples{
str_flatten(letters)
str_flatten(letters, "-")
}

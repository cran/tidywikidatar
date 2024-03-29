% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tw_get.R
\name{tw_reset_item_cache}
\alias{tw_reset_item_cache}
\title{Reset qualifiers cache}
\usage{
tw_reset_item_cache(
  language = tidywikidatar::tw_get_language(),
  cache = NULL,
  cache_connection = NULL,
  disconnect_db = TRUE,
  ask = TRUE
)
}
\arguments{
\item{language}{Defaults to language set with \code{tw_set_language()}; if not set, "en". Use "all_available" to keep all languages. For available language values, see https://www.wikidata.org/wiki/Help:Wikimedia_language_codes/lists/all}

\item{cache}{Defaults to NULL. If given, it should be given either TRUE or FALSE. Typically set with \code{tw_enable_cache()} or \code{tw_disable_cache()}.}

\item{cache_connection}{Defaults to NULL. If NULL, and caching is enabled, \code{tidywikidatar} will use a local sqlite database. A custom connection to other databases can be given (see vignette \code{caching} for details).}

\item{disconnect_db}{Defaults to TRUE. If FALSE, leaves the connection to cache open.}

\item{ask}{Logical, defaults to TRUE. If FALSE, and cache folder does not exist, it just creates it without asking (useful for non-interactive sessions).}
}
\value{
Nothing, used for its side effects.
}
\description{
Removes the table where qualifiers are cached
}
\examples{
if (interactive()) {
  tw_reset_item_cache()
}
}

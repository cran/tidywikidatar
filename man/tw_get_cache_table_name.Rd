% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tw_get_cached_item.R
\name{tw_get_cache_table_name}
\alias{tw_get_cache_table_name}
\title{Gets name of table inside the database}
\usage{
tw_get_cache_table_name(
  type = "item",
  language = tidywikidatar::tw_get_language(),
  response_language = tidywikidatar::tw_get_language()
)
}
\arguments{
\item{type}{Defaults to "item". Type of cache file to output. Values typically used by \code{tidywikidatar} include "item", "search_item", "search_property", and "qualifier".}

\item{language}{Defaults to language set with \code{tw_set_language()}; "en" if not set. Used to limit the data to be cached. Use "all_available" to keep all data. For available values, see https://www.wikidata.org/wiki/Help:Wikimedia_language_codes/lists/all}

\item{response_language}{Defaults to language set with \code{tw_set_language()}; "en" if not set. Relevant only when type is set to "search_item" or "search_property". See \code{tw_search()} for details.}
}
\value{
A character vector of length one with the name of the relevant table in the cache file.
}
\description{
Gets name of table inside the database
}
\examples{
# outputs name of table used in the cache database
tw_get_cache_table_name(type = "item", language = "en")
}

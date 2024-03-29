% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tw_cache_indexing.R
\name{tw_index_cache_search}
\alias{tw_index_cache_search}
\title{Add index to caching table for search queries for increased speed}
\usage{
tw_index_cache_search(
  table_name = NULL,
  check_first = TRUE,
  type = "item",
  show_details = FALSE,
  language = tidywikidatar::tw_get_language(),
  response_language = tidywikidatar::tw_get_language(),
  cache = NULL,
  cache_connection = NULL,
  disconnect_db = TRUE
)
}
\arguments{
\item{table_name}{Name of the table in the database. If given, it takes precedence over other parameters.}

\item{check_first}{Logical, defaults to TRUE. If TRUE, then before executing anything on the database it checks if the given table has already been indexed. If it has, it does nothing and returns only an informative message.}

\item{type}{Defaults to "item". Type of cache file to output. Values typically used by \code{tidywikidatar} include "item", "search_item", "search_property", and "qualifier".}

\item{show_details}{Logical, defaults to FALSE. If FALSE, return the function adds the index to the database, but does not return anything. If TRUE, returns a data frame with more details about the index.}

\item{language}{Defaults to language set with \code{tw_set_language()}; "en" if not set. Used to limit the data to be cached. Use "all_available" to keep all data. For available values, see https://www.wikidata.org/wiki/Help:Wikimedia_language_codes/lists/all}

\item{response_language}{Defaults to language set with \code{tw_set_language()}; "en" if not set. Relevant only when type is set to "search_item" or "search_property". See \code{tw_search()} for details.}

\item{cache}{Defaults to NULL. If given, it should be given either TRUE or FALSE. Typically set with \code{tw_enable_cache()} or \code{tw_disable_cache()}.}

\item{cache_connection}{Defaults to NULL. If NULL, and caching is enabled, \code{tidywikidatar} will use a local sqlite database. A custom connection to other databases can be given (see vignette \code{caching} for details).}

\item{disconnect_db}{Defaults to TRUE. If FALSE, leaves the connection to cache open.}
}
\value{
If \code{show_details} is set to FALSE, nothing, used only for its side effects (add index to caching table). If TRUE, a data frame, same as the output of \code{tw_check_cache_index(show_details = TRUE)}.
}
\description{
Tested only with SQLite and MySql. May work with other drivers.
}
\details{
To ensure smooth functioning, the search column in the cache table is transformed into a column of type \code{varchar} and length 255.
}
\examples{
if (interactive()) {
  tw_enable_cache()
  tw_set_cache_folder(path = fs::path(
    fs::path_home_r(),
    "R",
    "tw_data"
  ))

  tw_index_cache_search()
}
}

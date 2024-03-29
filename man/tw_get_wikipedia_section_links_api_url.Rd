% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tw_get_wikipedia_page_section_links.R
\name{tw_get_wikipedia_section_links_api_url}
\alias{tw_get_wikipedia_section_links_api_url}
\title{Facilitates the creation of MediaWiki API base URLs to retrieve sections of a page}
\usage{
tw_get_wikipedia_section_links_api_url(
  url = NULL,
  title = NULL,
  section_index,
  language = tidywikidatar::tw_get_language()
)
}
\arguments{
\item{url}{A character vector with the full URL to one or more Wikipedia pages. If given, title and language can be left empty.}

\item{title}{Title of a Wikipedia page or final parts of its url. If given, url can be left empty, but language must be provided.}

\item{section_index}{Required. It should correspond to the ordinal of a section of the relevant Wikipedia page. See also \code{tw_get_wikipedia_page_sections()}.}

\item{language}{Two-letter language code used to define the Wikipedia version to use. Defaults to language set with \code{tw_set_language()}; if not set, "en". If url given, this can be left empty.}
}
\value{
A character vector of base urls to be used with the MediaWiki API
}
\description{
Mostly used internally
}
\examples{
tw_get_wikipedia_section_links_api_url(title = "Margaret Mead", section_index = 1, language = "en")
}

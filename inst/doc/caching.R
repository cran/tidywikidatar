## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(tidywikidatar)

## -----------------------------------------------------------------------------
tw_enable_cache()

## ----eval=FALSE---------------------------------------------------------------
#  tw_set_cache_folder(path = fs::path(fs::path_home_r(),
#                                      "R",
#                                      "tw_data"))
#  tw_create_cache_folder()
#  

## ----eval = FALSE-------------------------------------------------------------
#  tw_enable_cache()
#  
#  item_df <- tw_get(id = c("Q1", "Q2", "Q3", "Q4", "Q5"),
#                    cache_connection = DBI::dbConnect(odbc::odbc(),
#                                     Driver = "MariaDB",
#                                     Host = "localhost",
#                                     database = "Zu5oobei9heloquoa6Shahwu",
#                                     UID = "Xeit6dieSho7eongamuiyieW",
#                                     PWD = "Oot7moo4einguJahgahwi8oh"
#  ))
#  
#  
#  tw_get_cached_item(id = c("Q1", "Q2"),
#                     cache_connection = DBI::dbConnect(odbc::odbc(),
#                                                       Driver = "MariaDB",
#                                                       Host = "localhost",
#                                                       database = "Zu5oobei9heloquoa6Shahwu",
#                                                       UID = "Xeit6dieSho7eongamuiyieW",
#                                                       PWD = "Oot7moo4einguJahgahwi8oh"
#                     ))
#  
#  
#  

## -----------------------------------------------------------------------------
tw_get_cache_table_name(type = "item", language = "en")


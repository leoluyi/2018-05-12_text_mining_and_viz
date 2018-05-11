# devtools::install_github("leoluyi/PTTr")
library(PTTr)
library(data.table)
library(DBI)
library(RSQLite)
library(parsedate)


# Crawl data --------------------------------------------------------------

res <- get_all_posts("Gossiping", max_post = 2000)
res[, post_time := post_time %>% parsedate::format_iso_8601()]


# Write DB ----------------------------------------------------------------

con <- dbConnect(RSQLite::SQLite(), "./dataset/db.sqlite")
dbWriteTable(con, "Gossiping", res, overwrite = TRUE)
dbDisconnect(con)

find_freq_terms <- function(dtm, lowfreq = 0, highfreq = Inf) {
  term_freq <- Matrix::colSums(dtm)
  dtm[, term_freq >= lowfreq & term_freq <= highfreq]
}


filter_tfidf_dtm <- function(dtm, q = .5) {
  # 利用 tf-idf 來處理高頻詞高估，低頻詞低估
  
  # term_tfidf <- dtm %>% colSums
  # l1 <- term_tfidf >= quantile(term_tfidf, 0.5, na.rm = TRUE) # second quantile, ie. median
  # dtm[, l1]
  
  term_tfidf <- tapply(X = dtm$v / row_sums(dtm)[dtm$i],
                       INDEX = dtm$j,
                       FUN = mean) *  # mean-tf
    (log2(nDocs(dtm)/col_sums(dtm > 0))) # idf
  
  l1 <- term_tfidf >= quantile(term_tfidf, q) # second quantile, ie. median
  # summary(col_sums(dtm))
  # dim(dtm)
  dtm <- dtm[, l1]
  dtm <- dtm[slam::row_sums(dtm) > 0, ]
  dtm
}

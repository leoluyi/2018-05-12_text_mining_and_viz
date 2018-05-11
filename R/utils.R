cutter <- function (text, seg_worker, filter_words = NA) {
  # text = "馬英九去世新大學演講"
  if (text %in% c(".", "")) {
    return(NA_character_)
  }
  
  pattern <- sprintf("^%s", paste(filter_words, collapse = "|^"))
  tryCatch({
    text_seg <- seg_worker <= text
  }, error = function(e) {
    stop('"', text, '" >> ', e)
  })
  filter_seg <- text_seg[!stringr::str_detect(text_seg, pattern)]
  filter_seg
}


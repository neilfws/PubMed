getXML <- function() {
  require(rentrez)
  require(XML)
  es <- entrez_search("pubmed", "\"Retracted Publication\"[PTYP]", usehistory = "y")
  ef <- entrez_fetch("pubmed", WebEnv = es$WebEnv, query_key = es$QueryKey, retmax = es$count, rettype = "xml")
  return(ef)
}

setwd("~/Dropbox/projects/pubmed/retractions/data/")
retracted <- getXML()
writeLines(retracted, "retracted.xml")

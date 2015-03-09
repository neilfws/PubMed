getXML <- function(ptyp) {
  require(rentrez)
  require(XML)
  es <- entrez_search("pubmed", paste(ptyp, "[PTYP]", sep = ""), usehistory = "y")
  ef <- entrez_fetch("pubmed", WebEnv = es$WebEnv, query_key = es$QueryKey, retmax = es$count, rettype = "xml")
  return(ef)
}

setwd("~/Dropbox/projects/pubmed/retractions/data/")

## retracted
retracted <- getXML("\"Retracted Publication\"")
writeLines(retracted, "retracted.xml")
## retraction of
retraction <- getXML("\"Retraction of Publication\"")
writeLines(retraction, "retractionOf.xml")

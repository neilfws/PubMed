yearsToCSV <- function(xmlfile) {
  require(XML)
  require(rentrez)
  doc <- xmlTreeParse(xmlfile, useInternalNodes = TRUE)
  dates <- xpathSApply(doc, "//PubmedData/History/PubMedPubDate[@PubStatus='entrez']/Year", xmlValue)
  years <- as.numeric(dates)
  ydf <- data.frame(year = min(years):max(years), total = NA)
  for(y in min(years):max(years)) {
    total <- entrez_search("pubmed", paste(y, "[CRDT]", sep = ""))
    Sys.sleep(3)
    cat(y, total$count, "\n")
    ydf[(y - min(years)) + 1, "total"]     <- total$count
  }
  return(ydf)
}

setwd("~/Dropbox/projects/pubmed/retractions/data/")
years <- yearsToCSV("retracted.xml")
write.csv(years, file = "years.csv", row.names = FALSE)
yearsToCSV <- function(xmlfile) {
  require(XML)
  require(rentrez)
  doc <- xmlTreeParse(xmlfile, useInternalNodes = TRUE)
  dates <- xpathSApply(doc, "//MedlineCitation/Article/Journal/JournalIssue/PubDate/Year", xmlValue)
  years <- as.numeric(dates)
  ydf <- data.frame(year = min(years):max(years), total = NA, retracted = NA)
  for(y in min(years):max(years)) {
    total <- entrez_search("pubmed", paste(y, "[DP]", sep = ""))
    retd  <- entrez_search("pubmed", paste("\"Retracted Publication\"[PTYP] ", y, "[DP]", sep = ""))
    ydf[(y - min(years)) + 1, "total"]     <- total$count
    ydf[(y - min(years)) + 1, "retracted"] <- retd$count
    Sys.sleep(2)
  }
  return(ydf)
}

setwd("~/Dropbox/projects/pubmed/retractions/data/")
years <- yearsToCSV("retracted.xml")
write.csv(years, file = "years.csv", row.names = FALSE)
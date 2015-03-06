yearsToCSV <- function(xmlfile) {
  require(XML)
  require(rentrez)
  require(lubridate)
  doc <- xmlTreeParse(xmlfile, useInternalNodes = TRUE)
  dates <- xpathSApply(doc, "//MedlineCitation/DateCreated", xmlValue)
  years <- year(ymd(dates))
  ydf <- data.frame(year = (min(years) - 1):max(years), total = NA, retracted = NA)
  for(y in (min(years) - 1):max(years)) {
    total <- entrez_search("pubmed", paste(y, "[DP]", sep = ""))
    retd  <- entrez_search("pubmed", paste("\"Retracted Publication\"[PTYP] ", y, "[DP]", sep = ""))
    ydf[(y - (min(years) - 1) + 1), "total"]     <- total$count
    ydf[(y - (min(years) - 1) + 1), "retracted"] <- retd$count
    Sys.sleep(2)
  }
  return(ydf)
}

setwd("~/Dropbox/projects/pubmed/retractions/data/")
years <- yearsToCSV("retracted.xml")
write.csv(years, file = "years.csv", row.names = FALSE)
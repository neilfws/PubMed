journalsToCSV <- function(xmlfile) {
  require(XML)
  doc <- xmlTreeParse(xmlfile, useInternalNodes = TRUE)
  journals <- xpathSApply(doc, "//MedlineCitation/Article/Journal/ISOAbbreviation", xmlValue)
  journals.cnt <- as.data.frame(table(journals), stringsAsFactors = FALSE)
  colnames(journals.cnt) <- c("journal", "count")
  journals.20 <- head(journals.cnt[order(journals.cnt$count, decreasing = TRUE),], 20)
  return(journals.20)
}

setwd("~/Dropbox/projects/pubmed/retractions/data/")
retracted <- journalsToCSV("retracted.xml")
write.csv(retracted, file = "journals.csv", row.names = FALSE)
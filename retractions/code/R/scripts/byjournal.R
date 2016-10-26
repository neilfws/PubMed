journalsToCSV <- function(xmlfile) {
  require(XML)
  require(rentrez)
  doc <- xmlTreeParse(xmlfile, useInternalNodes = TRUE)
  journals <- xpathSApply(doc, "//MedlineCitation/Article/Journal/ISOAbbreviation", xmlValue)
  journals.cnt <- as.data.frame(table(journals), stringsAsFactors = FALSE)
  colnames(journals.cnt) <- c("journal", "count")
  journals.cnt$total <- NA
  journals.cnt <- subset(journals.cnt, count > 9)
  
  for(j in 1:length(journals.cnt$journal)) {
    total <- entrez_search("pubmed", paste("\"", journals.cnt$journal[j], "\"", sep = ""))
    journals.cnt$total[j] <- as.numeric(total$count)
    Sys.sleep(3)
    cat(journals.cnt$journal[j], journals.cnt$total[j], "\n")
  }
  return(journals.cnt)
}

setwd("~/Dropbox/projects/github_projects/pubmed/retractions/data/")
# retracted
journals <- journalsToCSV("retracted.xml")
write.csv(journals, file = "journals_retracted.csv", row.names = FALSE)
# retractionOf
journals <- journalsToCSV("retractionOf.xml")
write.csv(journals, file = "journals_retractionOf.csv", row.names = FALSE)

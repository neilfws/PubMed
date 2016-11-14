getJournalTitles <- function() {
  require(XML)
  journals <- readHTMLTable("http://www.bioinformatics.org/wiki/Journals", stringsAsFactors = FALSE)
  journals <- journals[[2]]
  journals[, 2] <- as.numeric(journals[, 2])
  journals <- journals[order(journals[, 2], decreasing = TRUE), ]
  titles <- head(journals[, 1], 20)
  return(titles)
}

getJournalXML <- function(title) {
  require(rentrez)
  term <- paste(title, "[JOUR]", sep = "")
  e <- entrez_search("pubmed", term, usehistory = "y")
  f <- entrez_fetch("pubmed", WebEnv = e$WebEnv, query_key = e$QueryKey, 
                    rettype = "xml", retmax = e$count)
  d <- xmlTreeParse(f, useInternalNodes = TRUE)
  outfile <- paste(gsub(" ", "_", title), "xml", sep = ".")
  saveXML(xmlRoot(d), outfile)
}

plotJournalTimes <- function(csvfile) {
  require(lubridate)
  require(ggplot2)
  journals <- read.csv(csvfile, header=FALSE, stringsAsFactors=FALSE)
  colnames(journals) <- c("title", "pmid", "rec.year", "rec.month", "rec.day", "acc.year", "acc.month", "acc.day")
  journals$received  <- ymd(paste(journals$rec.year, journals$rec.month, journals$rec.day, sep = "-"))
  journals$accepted  <- ymd(paste(journals$acc.year, journals$acc.month, journals$acc.day, sep = "-"))
  journals$diff      <- as.numeric(journals$accepted - journals$received)
  ggplot(subset(journals, diff > 0), aes(reorder(title, diff, median), diff / (24 * 3600))) + 
    geom_boxplot(fill = "wheat2") + theme_bw() + coord_flip() + 
    ylab("accepted - received (days)") + xlab("journal")
}
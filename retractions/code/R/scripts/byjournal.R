journalsToCSV <- function(xmlfile) {
  require(rentrez)
  require(xml2)
  require(dplyr)
  require(tibble)
  require(readr)

    journals_cnt <- read_xml(xmlfile) %>% 
    xml_find_all("//MedlineCitation/Article/Journal/ISOAbbreviation") %>% 
    xml_text() %>% 
    as_tibble() %>% 
    count(value) %>% 
    filter(n > 9) %>% 
    rename(journal = value, count = n) %>% 
    mutate(total = NA_integer_)
  
  for(j in 1:length(journals_cnt$journal)) {
    total <- entrez_search("pubmed", paste("\"", journals_cnt$journal[j], "\"", sep = ""))
    journals_cnt$total[j] <- as.numeric(total$count)
    Sys.sleep(3)
    cat(journals_cnt$journal[j], journals_cnt$total[j], "\n")
  }
  return(journals_cnt)
}

# retracted
journals <- journalsToCSV("~/Dropbox/projects/github_projects/pubmed/retractions/data/retracted.xml")
write_csv(journals, "~/Dropbox/projects/github_projects/pubmed/retractions/data/journals_retracted.csv")

# retractionOf
journals <- journalsToCSV("~/Dropbox/projects/github_projects/pubmed/retractions/data/retractionOf.xml")
write_csv(journals, "~/Dropbox/projects/github_projects/pubmed/retractions/data/journals_retractionOf.csv")

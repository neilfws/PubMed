yearsToCSV <- function(xmlfile) {
  require(xml2)
  require(rentrez)
  require(tidyverse)
  
  ydf <- read_xml(xmlfile) %>% 
    xml_find_all("//PubmedData/History/PubMedPubDate[@PubStatus='entrez']/Year") %>% 
    xml_text() %>% 
    as_tibble() %>% 
    distinct() %>% 
    mutate(value = as.numeric(value)) %>% 
    expand(value = full_seq(value, 1)) %>% 
    rename(year = value) %>% 
    mutate(total = NA_integer_)
  
  for(y in min(ydf$year):max(ydf$year)) {
    total <- entrez_search("pubmed", paste(y, "[CRDT]", sep = ""))
    Sys.sleep(3)
    cat(y, total$count, "\n")
    ydf[(y - min(ydf$year)) + 1, "total"]     <- total$count
  }
  return(ydf)
}

years <- yearsToCSV("~/Dropbox/projects/github_projects/pubmed/retractions/data/retracted.xml")
write_csv(years, "~/Dropbox/projects/github_projects/PubMed/retractions/data/years.csv")

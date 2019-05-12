library(readr)
library(dplyr)

setwd("~/Dropbox/projects/pubmed/software_names/")

read_delim("data/pmctitles.tsv", 
           "\t",
           escape_double = FALSE,
           col_names = FALSE, 
           trim_ws = TRUE) %>% 
  rename(uid = X1, pretitle = X2, title = X3) %>% 
  mutate(pretitle_low = tolower(pretitle)) %>% 
  distinct(uid, .keep_all = TRUE) %>% 
  group_by(pretitle_low) %>% 
  filter(between(n(), 2, 10), !grepl(" ", pretitle_low)) %>% 
  ungroup() %>% 
  arrange(pretitle_low) %>% 
  write_tsv("output/pmctitles_matched.tsv")

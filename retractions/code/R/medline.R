# medline.R
# analysis of file data/retractions.medline
library(stringr)
medline <- as.list(readLines("../../data/retractions.medline"))

# sources
so <- medline[grep("^SO", medline)]
so <- sapply(so, function(x) str_match(x, "^SO\\s+-\\s+(.*?)\\.")[,2])
so <- as.data.frame(table(so))
# top10
head(so[sort.list(so$Freq, decreasing = T),], n = 10L)

# places
pl <- medline[grep("^PL", medline)]
pl <- sapply(pl, function(x) str_match(x, "^PL\\s+-\\s+(.*?)$")[,2])
pl <- tolower(pl)
pl <- as.data.frame(table(pl))
# top10
head(pl[sort.list(pl$Freq, decreasing = T),], n = 10L)

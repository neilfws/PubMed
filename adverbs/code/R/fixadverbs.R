# very ugly code to fix linebreaks in fields error

setwd("~/Dropbox/projects/pubmed/adverbs")

adverbs <- readLines("data/adverbs.csv")
err     <- which(count.fields("data/adverbs.csv", sep = ",") != 7)
l1      <- vector()
for(i in seq(1, 55, by = 2)) {
    l1 <- c(l1, paste(adverbs[err[i]], adverbs[err[i+1]], sep = ""))
}

ok <- which(count.fields("data/adverbs.csv", sep = ",") == 7)
l2 <- c(adverbs[ok], l1)

adverbs2 <- read.table(textConnection(l2), sep = ",", stringsAsFactors = F, header = F)
colnames(adverbs2) <- c("pmc", "jour", "epub", "ppub", "adv", "start", "end")
# adverbs2$jour <- tolower(adverbs2$jour)
adverbs.uniq <- adverbs2[rownames(unique(adverbs2[, c("pmc", "adv", "start", "end")])), ]
write.table(adverbs.uniq, "data/adverbs.uniq.csv", sep = ",", row.names = F, col.names = T, quote = F)

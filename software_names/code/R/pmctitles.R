setwd("~/Dropbox/projects/pubmed/software_names/")
ti <- read.delim("data/pmctitles.tsv", header=FALSE, stringsAsFactors=FALSE)
colnames(ti)    <- c("uid", "pretitle", "title")
ti$pretitle.low <- tolower(ti$pretitle)

ti.uniq <- ti[!duplicated(ti[, "uid"]), ]
ti.cnt  <- as.data.frame(table(ti.uniq$pretitle.low), stringsAsFactors = FALSE)
ti.cnt  <- subset(ti.cnt, Freq > 1)
ti.cnt  <- ti.cnt[order(ti.cnt$Freq, decreasing = TRUE), ]

ti.one  <- ti.cnt[-grep(" ", ti.cnt$Var1), ]
ti.one10 <- subset(ti.one, Freq < 11)
table(ti.one10$Freq)

ti.in <- ti.in[order(ti.in$pretitle.low), ]
write.table(ti.in, file = "output/pmctitles_matched.tsv", sep = "\t", quote = FALSE, row.names = FALSE, col.names = FALSE)

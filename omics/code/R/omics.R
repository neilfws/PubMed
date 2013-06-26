library(ggplot2)

setwd("~/Dropbox/projects/pubmed/omics")

omics <- readLines("data/omics.txt")
omics <- tolower(omics)

omics.freq <- as.data.frame(table(omics))
omics.freq <- omics.freq[ order(omics.freq$Freq, decreasing = T),]
omics.freq$omics <- factor(omics.freq$omics, levels = omics.freq$omics)

# plot top 20
png(file = "output/omics20.png", width = 800, height = 600)
print(ggplot(head(omics.freq, 20)) + geom_bar(aes(omics, Freq), stat = "identity", fill = "darkblue") +
                                     theme_bw() + coord_flip())
dev.off()

# write all
write.table(omics.freq, "output/omics_freq.csv", quote = F, sep = ",", row.names = F)

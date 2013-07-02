library(ggplot2)

setwd("~/Dropbox/projects/pubmed/omics")

# words = output from:
#  cut -f1 -d "," pubmed_result.csv | grep -ioP "(\w+omics)" > omics.txt
getOmics <- function(words) {
  omics <- readLines(words)
  omics <- tolower(omics)
  
  omics.freq <- as.data.frame(table(omics))
  omics.freq <- omics.freq[ order(omics.freq$Freq, decreasing = T),]
  omics.freq$omics <- factor(omics.freq$omics, levels = omics.freq$omics)
# plot top 20
  outfile <- paste("output/", basename(words), ".png", sep = "")
  png(file = outfile, width = 800, height = 600)
  print(ggplot(head(omics.freq, 20)) + geom_bar(aes(omics, Freq), stat = "identity", fill = "darkblue") +
                                       theme_bw() + coord_flip())
  dev.off()
# write all
  outfile <- paste("output/", basename(words), ".csv", sep = "")
  write.table(omics.freq, outfile, quote = F, sep = ",", row.names = F)
}

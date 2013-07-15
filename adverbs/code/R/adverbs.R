setwd("~/Dropbox/projects/pubmed/adverbs")
adverbs.uniq <- read.table("data/adverbs.uniq.csv", sep = ",", header = T, stringsAsFactors = F)

# function to count adverbs
advCount <- function(a) {
    a.freq <- as.data.frame(table(a$adv))
    a.freq <- a.freq[ order(a.freq$Freq, decreasing = T), ]
    a.freq$Var1 <- factor(a.freq$Var1, levels = a.freq$Var1)
    a.freq
}

# function to plot frequencies
advPlot <- function(a, outfile) {
    require(ggplot2)
    png(file = outfile, width = 800, height = 600)
    print(ggplot(head(a, 20)) + geom_bar(aes(Var1, Freq), stat = "identity") + theme_bw() + coord_flip())
    dev.off()
}

advCloud <- function(a, outfile) {
    require(wordcloud)
    png(file = outfile, width = 1000, height = 1000)
    pal2 <- brewer.pal(8, "Dark2")
    wordcloud(a$Var1, a$Freq, scale = c(8, .2), min.freq = 3, max.words = 100,
              random.order = TRUE, rot.per = .15, colors = pal2)
    dev.off()
}

# function to "normalize" adverbs by journal
advIndex <- function(a, aj, j) {
    s   <- subset(aj, Var1 == a)
    s$a <- (100 / j$Freq) * s$Freq
    s   <- subset(s, j$Freq >= 100)
    s[order(s$a, decreasing = T),]
}

## count adverbs
adverbs.freq <- advCount(adverbs.uniq)
advPlot(adverbs.freq, "output/adverbs20.png")
advCloud(adverbs.freq, "output/adverbscloud20.png")

## count opening adverbs
adverbs.open <- subset(adverbs.uniq, start == 0)
adverbs.open.freq <- advCount(adverbs.open)
advPlot(adverbs.open.freq, "output/adverbsopen20.png")
advCloud(adverbs.open.freq, "output/adverbsopencloud20.png")

## long/less common adverbs
longest <- subset(adverbs.uniq, nchar(adverbs.uniq$adv) == max(nchar(adverbs.uniq$adv)))
rarest  <- subset(adverbs.freq, Freq == 1)

## most used adverbs by journal
jour <- as.data.frame(table(adverbs.uniq$jour))
adverbs.jour <- as.data.frame(table(adverbs.uniq$adv, adverbs.uniq$jour))

surprising  <- advIndex("Surprisingly", adverbs.jour, jour)
interesting <- advIndex("Interestingly", adverbs.jour, jour)
remarkable  <- advIndex("Remarkably", adverbs.jour, jour)
unfortunate <- advIndex("Unfortunately", adverbs.jour, jour)


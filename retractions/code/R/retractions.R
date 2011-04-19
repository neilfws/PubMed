# retractions.R
# analysis of data/retractions.txt

library(ggplot2)
retractions <- read.table("../../data/retractions.txt", header = F)
colnames(retractions) <- c("year", "total", "retracted")

# cumulative sums
retractions$t.cs <- cumsum(retractions$total)
retractions$r.cs <- cumsum(retractions$retracted)

# retractions/100000 publications, by year and cumulative
retractions$e5.yr <- 100000/retractions$total * retractions$retracted
retractions$e5.cs <- 100000/retractions$t.cs * retractions$r.cs

# non-zero years
retractions.nz <- subset(retractions, retracted > 0)
retractions.nz$t.pc <- (retractions.nz$t.cs - retractions.nz$t.cs[1]) / retractions.nz$t.cs[1] * 100
retractions.nz$r.pc <- (retractions.nz$r.cs - retractions.nz$r.cs[1]) / retractions.nz$r.cs[1] * 100

# plots
setwd("~/Dropbox/projects/pubmed/output")
# basic, retractions 1977 - 2010
png(file = "byYear.png", width = 800, height = 600)
print(ggplot(retractions.nz, aes(year, retracted)) + geom_line() + opts(title = "PubMed retractions 1977 - 2010"))
dev.off()

# retractions per year per 100k publications
png(file = "byYear100k.png", width = 800, height = 600)
print(ggplot(retractions.nz, aes(year, e5.yr)) + geom_line() + opts(title = "PubMed retractions 1977 - 2010 (per 100K by year)") + ylab("retractions/year/100k"))
dev.off()

# retractions per 100k publications, cumulative
png(file = "cumsum100k.png", width = 800, height = 600)
print(ggplot(retractions.nz, aes(year, e5.cs)) + geom_line() + opts(title = "PubMed retractions 1977 - 2010 (per 100K, cumulative)") + ylab("retractions/100k"))
dev.off()

# percent increase (1977 baseline)
r.melt <- melt(retractions.nz, id = "year")
r.melt <- subset(r.melt, variable == "t.pc" | variable == "r.pc")
levels(r.melt$variable)[7:8] <- c("total", "retracted")
png(file = "percent1977.png", width = 800, height = 600)
print(ggplot(r.melt) + geom_line(aes(year, value)) + facet_grid(variable ~ ., scale = "free_y") + ylab("percent increase") + opts(title = "Percent increase relative to 1977, cumulative"))
dev.off()

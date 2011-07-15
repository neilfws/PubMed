# get earliest DateCreated for journals with > 1 retraction notice

library(plyr)
outdir <- paste(Sys.getenv("HOME"), "/Dropbox/projects/pubmed/retractions/npg/output", sep = "")
setwd(outdir)

dc <- read.table("journals_dates.tsv", sep = "\t", header = F, stringsAsFactors = F)
colnames(dc) <- c("pmid", "journal", "month", "day", "year")
dcc <- as.data.frame(table(dc$journal))
colnames(dcc) <- c("journal", "count")
m <- match(dc$journal, dcc$journal)
dc$count <- dcc[m, "count"]
dc <- subset(dc, count > 1)
dc$date <- strptime(paste(dc$month, dc$day, dc$year, sep = "-"), format = "%m-%d-%Y")

t <- by(dc$date, dc$journal, summary)

dcmin <- ldply(lapply(t, function(x) x[1]))
colnames(dcmin) <- c("journal", "minDateCreated")
m <- match(dcc$journal, dcmin$journal)
dcc$minDateCreated <- dcmin[m, "minDateCreated"]
dcc <- na.omit(dcc)

# write.table(dcc, file = "journals_mindate.tsv", sep = "\t", quote = F, col.names = T, row.names = F)

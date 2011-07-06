# count retractions by journal, sort, write to tsv

outdir <- paste(Sys.getenv("HOME"), "/Dropbox/projects/pubmed/retractions/npg/output", sep = "")
setwd(outdir)
j <- read.table("retractions_journals.tsv", sep = "\t",
                header = T, stringsAsFactors  = F, comment.char = "", quote = "")
j.count <- as.data.frame(table(j$journal))
colnames(j.count) <- c("journal", "retractions")
j.count <- j.count[sort.list(j.count$retractions, decreasing = T),]

write.table(j.count, file = "retractions_journals_count.tsv", sep = "\t",
            col.names = T, row.names = F, quote = F)

#!/usr/bin/ruby

require "rubygems"
require "mongo"

# db connection
db     = Mongo::Connection.new.db('noorden')
col    = db.collection('retracted')
outdir = "#{ENV['HOME']}/Dropbox/projects/pubmed/retractions/npg/output"

# fetch data
data = col.find.map do |record|
  [record['_id'],
   record['MedlineCitation']['Article']['Journal']['ISOAbbreviation'],
   record['MedlineCitation']['Article']['Journal']['JournalIssue']['PubDate']['Year'],
   record['MedlineCitation']['DateCreated']['Year'],
   record['MedlineCitation']['MedlineJournalInfo']['Country'].upcase
   ]
end

# print to file
File.open("#{outdir}/retractions_journals.tsv", "w") do |f|
  f.write "pmid\tjournal\tpubdate\tdateCreated\tcountryPublished\n"
  data.each do |record|
    f.write record.join("\t") + "\n"
  end
end

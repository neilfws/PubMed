#!/usr/bin/ruby

require "rubygems"
require "mongo"

# db connection
db     = Mongo::Connection.new.db('noorden')
col    = db.collection('retracted')
outdir = "#{ENV['HOME']}/Dropbox/projects/pubmed/retractions/npg/output"

data = col.find.map do |record|
  [record['_id'],
   record['MedlineCitation']['DateCreated'],
   record['MedlineCitation']['CommentsCorrectionsList']['CommentsCorrections'],
   record['MedlineCitation']['Article']['Journal']['JournalIssue']['PubDate']
  ]
end

File.open("#{outdir}/retractions_dates.tsv", "w") do |f|
  f.write "pmid\tyearCreated\tyearPublished\tpmidRetraction\tyearRetracted\tretractionType\n"
  # regexes in following code not specific for year (2 cases)
  data.each do |record|
    pmid1 = record[0]
    year1 = record[1]['Year']
    year3 = record[3]['Year']
    if record[2].is_a? Hash
      pmid2 = record[2]['PMID']
      year2 = record[2]['RefSource'] =~ /\s+(19\d{2}|20\d{2})/ ? $1 : ""
      type  = record[2]['RefType']
    elsif record[2].is_a? Array
      record[2].each do |ref|
        if ref['RefType'] =~ /RetractionIn/
          pmid2 = ref['PMID']
          year2 = ref['RefSource'] =~ /\s+(19\d{2}|20\d{2})/ ? $1 : ""
          type  = ref['RefType']
        end
      end
    end
    f.write "#{pmid1}\t#{year1}\t#{year3}\t#{pmid2}\t#{year2}\t#{type}\n"
  end
end

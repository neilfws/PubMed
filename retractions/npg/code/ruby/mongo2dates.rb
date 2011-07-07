#!/usr/bin/ruby

require "rubygems"
require "mongo"

# db connection
db     = Mongo::Connection.new.db('noorden')
col1   = db.collection('retracted')
col2   = db.collection('retractionOf')
outdir = "#{ENV['HOME']}/Dropbox/projects/pubmed/retractions/npg/output"

data = col1.find.map do |record|
  [record['_id'],
   record['MedlineCitation']['CommentsCorrectionsList']['CommentsCorrections'],
   record['MedlineCitation']['Article']['Journal']['JournalIssue']['PubDate']
  ]
end

File.open("#{outdir}/retractions_dates.tsv", "w") do |f|
  f.write "pmid\tyearPublished\tmonthPublished\tpmidRetraction\tyearRetracted\tmonthRetracted\tretractionType\n"
  # regexes in following code not specific for year (2 cases)
  data.each do |record|
    pmid1 = record[0]
    year1 = record[2]['Year']
    mon1  = record[2]['Month']
    if record[1].is_a? Hash
      type   = record[1]['RefType']
      pmid2  = record[1]['PMID']
      if col2.find("_id" => pmid2).count == 1
        notice = col2.find("_id" => pmid2).first
        year2  = notice['MedlineCitation']['Article']['Journal']['JournalIssue']['PubDate']['Year']
        mon2   = notice['MedlineCitation']['Article']['Journal']['JournalIssue']['PubDate']['Month']
      else
        year2 = ""
        mon2  = ""
      end
    elsif record[1].is_a? Array
      record[1].each do |ref|
        if ref['RefType'] =~ /RetractionIn/
          type   = ref['RefType']
          pmid2  = ref['PMID']
          if col2.find("_id" => pmid2).count == 1
            notice = col2.find("_id" => pmid2).first
            year2  = notice['MedlineCitation']['Article']['Journal']['JournalIssue']['PubDate']['Year']
            mon2   = notice['MedlineCitation']['Article']['Journal']['JournalIssue']['PubDate']['Month']
          else
            year2 = ""
            mon2  = ""
          end
        end
      end
    end
    f.write "#{pmid1}\t#{year1}\t#{mon1}\t#{pmid2}\t#{year2}\t#{mon2}\t#{type}\n"
  end
end

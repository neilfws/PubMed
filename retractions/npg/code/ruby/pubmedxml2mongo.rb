#!/usr/bin/ruby

require "rubygems"
require "mongo"
require "crack"

db   = Mongo::Connection.new.db("noorden")
cols = ["retracted", "retractionOf"]
datadir = "#{ENV['HOME']}/Dropbox/projects/pubmed/retractions/npg/data"

cols.each do |colname|
  col = db.collection(colname)
  xml = Crack::XML.parse(File.read("#{datadir}/#{colname}.xml"))
  xml['PubmedArticleSet']['PubmedArticle'].each do |article|
    article['_id'] = article['MedlineCitation']['PMID']
    col.save(article)
  end
  puts "Saved #{col.count} articles in #{colname}."
end

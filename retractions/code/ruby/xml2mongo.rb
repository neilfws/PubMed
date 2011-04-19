#!/usr/bin/ruby

require "rubygems"
require "mongo"
require "crack"

db  = Mongo::Connection.new.db("pubmed")
col = db.collection('entries')

xmlfile = "#{ENV['HOME']}/Dropbox/projects/pubmed/retractions/data/retract.xml"
xml     = Crack::XML.parse(File.read(xmlfile))

xml['PubmedArticleSet']['PubmedArticle'].each do |article|
  article['_id'] = article['MedlineCitation']['PMID']
  col.save(article)
end

puts "Saved #{col.count} articles."

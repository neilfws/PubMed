#!/usr/bin/ruby

require "rubygems"
require "bio"
require "mongo"

db  = Mongo::Connection.new.db('pubmed')
col = db.collection('totals')
Bio::NCBI.default_email = "me@me.com"
ncbi = Bio::NCBI::REST.new

1977.upto(Time.now.year) do |year|
  all    = ncbi.esearch_count("#{year}[dp]", {"db" => "pubmed"})
  term   = ncbi.esearch_count("Retraction of Publication[ptyp] #{year}[dp]", {"db" => "pubmed"})
  record = {"year" => year, "total" => all, "retracted" => term}
  col.save(record)
end

puts "Saved #{col.count} records."

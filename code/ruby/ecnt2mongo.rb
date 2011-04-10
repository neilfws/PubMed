#!/usr/bin/ruby

require "rubygems"
require "bio"
require "mongo"

db  = Mongo::Connection.new.db('pubmed')
col = db.collection('ecount')
Bio::NCBI.default_email = "me@me.com"
ncbi = Bio::NCBI::REST.new

1977.upto(Time.now.year) do |year|
  all    = ncbi.esearch_count("#{year}[dp]", {"db" => "pubmed"})
  term   = ncbi.esearch_count("Retraction of Publication[ptyp] #{year}[dp]", {"db" => "pubmed"})
  record = {"_id" => year, "year" => year, "total" => all, "retracted" => term, "updated_at" => Time.now}
  col.save(record)
  puts "#{year}..."
end

puts "Saved #{col.count} records."

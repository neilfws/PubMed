#!/usr/bin/ruby

require "rubygems"
require "bio"

Bio::NCBI.default_email = "me@me.com"
ncbi = Bio::NCBI::REST.new

File.open("../../data/retractions.txt", "w") do |f|
  1900.upto(2010) do |year|
    all   = ncbi.esearch_count("#{year}[dp]", {"db" => "pubmed"})
    term  = ncbi.esearch_count("Retraction of Publication[ptyp] #{year}[dp]", {"db" => "pubmed"})
    f.write("#{year}\t#{all}\t#{term}\n")
  end
end

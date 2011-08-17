#!/usr/bin/ruby

require "rubygems"
require "bio"

Bio::NCBI.default_email = "me@me.com"
ncbi = Bio::NCBI::REST.new
outdir = "#{ENV['HOME']}/Dropbox/projects/pubmed/retractions/npg/output"

File.open("#{outdir}/retractions.tsv", "w") do |f|
  f.write "year\tpublications\tretracted\tretractionOf\n"
  1971.upto(2011) do |year|
    all           = ncbi.esearch_count("#{year}[dp]", {"db" => "pubmed"})
    retracted     = ncbi.esearch_count("Retracted Publication[ptyp] #{year}[dp]", {"db" => "pubmed"})
    retractionof  = ncbi.esearch_count("Retraction Of Publication[ptyp] #{year}[dp]", {"db" => "pubmed"})
    f.write("#{year}\t#{all}\t#{retracted}\t#{retractionof}\n")
  end
end

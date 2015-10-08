#!/usr/bin/ruby
 
require "bio"
 
Bio::NCBI.default_email = "me@me.com"
ncbi = Bio::NCBI::REST.new
 
1845.upto(2014) do |year|
  all   = ncbi.esearch_count("#{year}[dp]", {"db" => "pubmed"})
  novel = ncbi.esearch_count("novel[tiab] #{year}[dp]", {"db" => "pubmed"})
  puts "#{year}\t#{all}\t#{novel}"
end

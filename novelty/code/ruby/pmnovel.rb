#!/usr/bin/ruby
 
require "bio"
 
Bio::NCBI.default_email = "me@me.com"
ncbi = Bio::NCBI::REST.new
 
1845.upto(2014) do |year|
  all   = ncbi.esearch_count("#{year}[dp] AND \"has abstract\"[FILT]", {"db" => "pubmed"})
  novel = ncbi.esearch_count("novel[tiab] AND #{year}[dp] AND \"has abstract\"[FILT]", {"db" => "pubmed"})
  puts "#{year}\t#{all}\t#{novel}"
end

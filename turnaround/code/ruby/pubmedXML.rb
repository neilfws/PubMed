#!/usr/bin/ruby

require 'nokogiri'

f = File.open(ARGV.first)
doc = Nokogiri::XML(f)
f.close

doc.xpath("//PubmedArticle").each do |a|
  r = ["", "", "", "", "", "", "", ""]
  r[0] = a.xpath("MedlineCitation/Article/Journal/ISOAbbreviation").text
  r[1] = a.xpath("MedlineCitation/PMID").text
  r[2] = a.xpath("PubmedData/History/PubMedPubDate[@PubStatus='received']/Year").text
  r[3] = a.xpath("PubmedData/History/PubMedPubDate[@PubStatus='received']/Month").text
  r[4] = a.xpath("PubmedData/History/PubMedPubDate[@PubStatus='received']/Day").text
  r[5] = a.xpath("PubmedData/History/PubMedPubDate[@PubStatus='accepted']/Year").text
  r[6] = a.xpath("PubmedData/History/PubMedPubDate[@PubStatus='accepted']/Month").text
  r[7] = a.xpath("PubmedData/History/PubMedPubDate[@PubStatus='accepted']/Day").text
  puts r.join(",")
end

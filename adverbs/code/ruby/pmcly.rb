#!/usr/bin/ruby

require "nokogiri"

f   = File.open(ARGV[0])
doc = Nokogiri::XML(f)
f.close

ameta = doc.xpath("//article/front/article-meta")
pmc   = ameta.xpath("//article-id[@pub-id-type='pmc']").text.chomp
epub  = ameta.xpath("//pub-date[@pub-type='epub']/year").text.chomp
ppub  = ameta.xpath("//pub-date[@pub-type='ppub']/year").text.chomp
abs   = ameta.xpath("//abstract").text.chomp
titl  = ameta.xpath("//title-group/article-title").text.chomp
jour  = doc.xpath("//article/front/journal-meta/journal-id[@journal-id-type='nlm-ta']").text.chomp

abs.scan(/[A-Z][a-z]+ly,/m) {
  b = $~.begin(0)
  e = $~.end(0)
  o = [pmc, jour, epub, ppub, $&.gsub(',', ''), b, e]
  puts o.join(",")
}

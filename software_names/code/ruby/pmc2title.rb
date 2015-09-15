#!/usr/bin/ruby

require "rubygems"
require "nokogiri"

f   = File.open(ARGV[0])
doc = Nokogiri::XML(f)
f.close

ameta  = doc.xpath("//article/front/article-meta")
pmc    = ameta.xpath("//article-id[@pub-id-type='pmc']").text.chomp
title  = ameta.xpath("//title-group/article-title").text.chomp

if title =~ /^(.*?):/
  r = [pmc, $1, title.gsub("\n", " ")]
  puts r.join("\t")
end

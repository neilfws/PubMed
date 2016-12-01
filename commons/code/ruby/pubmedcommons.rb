#!/usr/bin/env ruby

require 'open-uri'
require 'nokogiri'
require 'json'
require 'bio'
require 'csv'

# esearch for articles with comments
Bio::NCBI.default_email = "me@me.com"
ncbi   = Bio::NCBI::REST.new
max    = ncbi.esearch_count("has_user_comments[Filter]", {"db" => "pubmed"})
search = ncbi.esearch("has_user_comments[Filter]", {"db" => "pubmed", "retmax" => max})

# get JSON from NCBI for a PMID
outdir = File.expand_path("../../../data", __FILE__)
output = []
base   = "https://www.ncbi.nlm.nih.gov/myncbi/comments/?p$rq=CommL.CommServer:com&cmd=get&recid="

#search  = search[1..10] # testing

CSV.open("#{outdir}/commons.csv", "wb") do |csv|
  search.each do |pmid|
    puts pmid
    pdate = Bio::MEDLINE.new(Bio::PubMed.query(pmid)).dp
    j = JSON.parse(open(base + pmid.to_s).read)
    d = Nokogiri::HTML(j['comments'])
    d.xpath('//li[starts-with(@class, "comm_item")]').each do |item|
      cmid = item.has_attribute?('data-cmid') == false ? "" : item.attribute('data-cmid')
      auth = item.css('a.comm_f_name').count == 0 ? "" : item.css('a.comm_f_name').inner_text
      href = item.css('a.comm_f_name').count == 0 ? "" : item.css('a.comm_f_name').attribute('href')
      date = item.css('a.comm_date_d').count == 0 ? "" : item.css('a.comm_date_d').inner_text
      text = item.css('div.comm_content').count == 0 ? "" : item.css('div.comm_content').inner_text.gsub("\n", " ")
      mods = item.css('div.not_appr').count == "" ? 0 : item.css('div.not_appr').inner_text
      vote = item.css('span.comm_votes').count == 0 ? "" : item.css('span.comm_votes').inner_text
      link = item.css('a.comm_permalink').count == 0 ? "" : item.css('a.comm_permalink').attribute('href')
      csv << [pmid, pdate, cmid, date, auth, href, vote, link, text, mods]
    end
  end
end

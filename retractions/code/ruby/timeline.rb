#!/usr/bin/ruby

require "rubygems"
require "mongo"
require "date"

db       = Mongo::Connection.new.db('pubmed')
entries  = db.collection('entries')
timeline = db.collection('timeline')

dates = entries.find.map { |entry| entry['MedlineCitation']['DateCreated'] }
dates.map! { |d| Date.parse("#{d['Year']}-#{d['Month']}-#{d['Day']}") }
dates.sort!
data = (dates.first..dates.last).inject(Hash.new(0)) { |h, date| h[date] = 0; h }
dates.each { |date| data[date] += 1}
data = data.sort
data.map! {|e| ["Date.UTC(#{e[0].year},#{e[0].month - 1},#{e[0].day})", e[1]] }

data.each do |date|
  timeline.save({"_id" => date[0].gsub(".", "_"), "date" => date[0], "count" => date[1]})
end

puts "Saved #{timeline.count} dates in timeline."

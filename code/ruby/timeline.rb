#!/usr/bin/ruby

require "rubygems"
require "mongo"

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

t = { "timeline" => data, "updated_at" => Time.now}
timeline.save(t)

puts "Saved #{timeline.find_one['timeline'].count} dates in timeline."

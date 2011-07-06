#!/usr/bin/ruby

require "rubygems"
require "mongo"

# db connection
db     = Mongo::Connection.new.db('noorden')
col    = db.collection('retracted')

outdir = "#{ENV['HOME']}/Dropbox/projects/pubmed/retractions/npg/output"

# fetch data
  File.open("#{outdir}/retractions_mesh.tsv", "w") do |f|
    f.write "pmid\tyear\tname\tterm\n"
  col.find.map do |record|
    id   = record['_id']
    year = record['MedlineCitation']['DateCreated']['Year']
    mesh = record.fetch 'MedlineCitation', {}
    mesh = mesh.fetch 'MeshHeadingList', {}
    mesh = mesh.fetch 'MeshHeading', {}
    if mesh.is_a? Hash
      f.write "#{id}\t#{year}\t#{mesh.to_a.flatten.join("\t")}\n"
    else
      mesh.each do |pair|
        pair.each_pair do |k,v|
          if v.is_a? Array
            v.each do |val|
              f.write "#{id}\t#{year}\t#{k}\t#{val}\n"
            end
          else
            f.write "#{id}\t#{year}\t#{k}\t#{v}\n"
          end
        end
      end
    end
  end
end

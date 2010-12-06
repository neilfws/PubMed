configure do
  DB = Mongo::Connection.new.db('pubmed')
end

entries     = DB.collection('entries')
$KCODE      = "u"

# views
get "/" do
  @dates = entries.find.map { |entry| entry['MedlineCitation']['DateCreated'] }
  @data  = @dates.inject(Hash.new(0)) { |h, date|
    month   = date['Month'].to_i - 1
    newdate = "Date.UTC(#{date['Year']}, #{month}, #{date['Day']})"
    h[newdate] += 1
    h
  }
  haml :index
end

get "/cumulative" do
  haml :total
end

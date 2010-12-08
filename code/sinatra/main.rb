configure do
  DB = Mongo::Connection.new.db('pubmed')
end

entries = DB.collection('entries')
ecount  = DB.collection('ecount')
$KCODE  = "u"

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
  @totals = ecount.find.map { |entry| [entry['year'], entry['total'], entry['retracted']]}
  tsum = 0
  rsum = 0
  @totals.map! { |e| [e[0], tsum += e[1], rsum += e[2]]}
  @totals.map! { |e| [e[0], e[1], 100000/e[1].to_f * e[2]]}
  haml :total
end

get "/byyear" do
  @totals = ecount.find.map { |entry| [entry['year'], entry['total'], entry['retracted']]}
  @totals.map! { |e| [e[0], e[1], 100000/e[1].to_f * e[2]] }
  haml :byyear
end

get "/journals" do
  @journals = entries.find.inject(Hash.new(0)) {|h, e| h[e['MedlineCitation']['Article']['Journal']['ISOAbbreviation']] += 1; h }
  @journals = @journals.sort_by { |k,v| v}.reverse
  haml :journals
end

get "/testing" do
  haml :test
end


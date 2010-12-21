configure do
  if ENV['MONGOHQ_URL']
    uri  = URI.parse(ENV['MONGOHQ_URL'])
    conn = Mongo::Connection.new(uri.host, uri.port)
    DB   = conn.db(uri.path.gsub(/^\//, ''))
    DB.authenticate(uri.user, uri.password)
  else
    DB   = Mongo::Connection.new.db('pubmed')
  end
  # timeline
  timeline = DB.collection('timeline')
  set :data, timeline.find.to_a.map { |e| [e['date'], e['count']] }
  # cumulative + by year
  ecount = DB.collection('ecount')
  totals = ecount.find.map { |entry| [entry['year'], entry['total'], entry['retracted'], entry['updated_at']]}
  set :updated_at, totals.last[3]
  # by year
  years = totals.map { |e| [e[0], e[1], 100000/e[1].to_f * e[2]] }
  set :years, years
  # cumulative
  tsum = 0
  rsum = 0
  totals.map! { |e| [e[0], tsum += e[1], rsum += e[2]]}
  totals.map! { |e| [e[0], e[1], 100000/e[1].to_f * e[2]]}
  set :totals, totals
  # journals
  set :entries, DB.collection('entries')
  set :journals, DB.collection('entries').find.inject(Hash.new(0)) {|h, e| h[e['MedlineCitation']['Article']['Journal']['ISOAbbreviation']] += 1; h }
end

$KCODE   = "u"

# views
get "/" do
  haml :index
end

get "/cumulative" do
  @totals = options.totals
  haml :total
end

get "/byyear" do
  @years = options.years
  haml :byyear
end

get "/journals" do
  @journals = options.journals
  @journals.delete(nil)
  @journals = @journals.sort_by { |k,v| v}.reverse
  haml :journals
end

get "/date/*" do
  @date = params[:splat].first.split("-")
  @records = pmformat(options.entries.find({"MedlineCitation.DateCreated.Year" => @date[0], "MedlineCitation.DateCreated.Month" => @date[1], "MedlineCitation.DateCreated.Day" => @date[2]}))
  haml :date
end

error 404 do
  haml :error
end

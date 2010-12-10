configure do
  conf = YAML::load(File.read("database.yml"))
  host = conf['production']['host']
  db   = conf['production']['db']
  DB   = Mongo::Connection.new.db(db, host => host)
end

entries  = DB.collection('entries')
ecount   = DB.collection('ecount')
timeline = DB.collection('timeline')
$KCODE   = "u"

# views
get "/" do
  @data = timeline.find.to_a.map { |e| [e['date'], e['count']] }
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

get "/date/*" do
  @date = params[:splat].first.split("-")
  @records = pmformat(entries.find({"MedlineCitation.DateCreated.Year" => @date[0], "MedlineCitation.DateCreated.Month" => @date[1], "MedlineCitation.DateCreated.Day" => @date[2]}))
  haml :date
end

error 404 do
  haml :error
end


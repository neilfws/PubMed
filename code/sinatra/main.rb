configure do
  DB = Mongo::Connection.new.db('pubmed')
end

entries  = DB.collection('entries')
ecount   = DB.collection('ecount')
timeline = DB.collection('timeline')
$KCODE   = "u"

# function to format records
def pmformat(records)
  "#{records.to_a.map {|r| r['MedlineCitation']}.inspect}"
end

# views
get "/" do
  @data = timeline.find_one['timeline']
  # @dates = entries.find().map { |entry| entry['MedlineCitation']['DateCreated'] }
  # @dates.map! { |d| Date.parse("#{d['Year']}-#{d['Month']}-#{d['Day']}") }
  # @dates.sort!
  # @data = (@dates.first..@dates.last).inject(Hash.new(0)) { |h, date| h[date] = 0; h }
  # @dates.each { |date| @data[date] += 1}
  # @data = @data.sort
  # @data.map! {|e| ["Date.UTC(#{e[0].year},#{e[0].month - 1},#{e[0].day})", e[1]] }
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

get "/testing" do
  haml :test
end


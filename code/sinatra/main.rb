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

# function to format records
def pmformat(records)
  @html = "<ol>"
  medline = records.map { |r| r['MedlineCitation']}
  medline.each do |pub|
    @html += "<li><a href=\"http://www.pubmed.org/#{pub['PMID']}\">#{pub['Article']['ArticleTitle']}</a></li>"
    @html += "<b><i>#{pub['Article']['Journal']['Title']}</i></b><br />"
    rof = pub['CommentsCorrectionsList']['CommentsCorrections']
    @html += "Retraction of:"
    if rof.class == Array
      @html += "<ul>"
      rof.each do |retract|
        @html += "<li><a href=\"http://www.pubmed.org/#{retract['PMID']}\">#{retract['RefSource']}</a></li>" if retract['RefType'] == "RetractionOf"
      end
      @html += "</ul>"
      elsif rof.class == BSON::OrderedHash
      @html += "<ul>"
        @html += "<li><a href=\"http://www.pubmed.org/#{rof['PMID']}\">#{rof['RefSource']}</a></li>" if rof['RefType'] == "RetractionOf"
      @html += "</ul>"
    end
  end
  @html += "</ol>"
  "#{@html}"
end

# views
get "/" do
  @data = timeline.find_one
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


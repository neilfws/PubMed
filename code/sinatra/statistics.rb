# very ugly function to format records by date
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
        if retract['PMID'].nil?
          @html += "<li>#{retract['RefSource']}</li>" if retract['RefType'] == "RetractionOf"
        else
          @html += "<li><a href=\"http://www.pubmed.org/#{retract['PMID']}\">#{retract['RefSource']}</a></li>" if retract['RefType'] == "RetractionOf"
        end
      end
      @html += "</ul>"
      elsif rof.class == BSON::OrderedHash
      @html += "<ul>"
      if rof['PMID'].nil?
        @html += "<li>#{rof['RefSource']}</li>" if rof['RefType'] == "RetractionOf"
      else
        @html += "<li><a href=\"http://www.pubmed.org/#{rof['PMID']}\">#{rof['RefSource']}</a></li>" if rof['RefType'] == "RetractionOf"
      end
      @html += "</ul>"
    end
  end
  @html += "</ol>"
  "#{@html}"
end


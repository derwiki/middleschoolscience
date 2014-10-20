base_url = "http://#{request.host_with_port}"
xml.instruct! :xml, :version=>'1.0'
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  @paths.each do |other|
    xml.url {
      xml.loc("https://middleschoolscience.herokuapp.com/#{other}")
      xml.changefreq("daily")
    }
  end
end

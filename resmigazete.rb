month = ARGV[0] # hangi ay
days = ARGV[1] # kaç çekiyor
linkim = "https://www.resmigazete.gov.tr/goruntule.html?t=1985-#{month}-01"
html_file = File.open("ek.html", "w")
html_file << "<html><body>"
(1..days.to_i).each do |n|
	html_file.write %{ <a href="#{linkim[0..-3]}#{'%.2d' % n}">#{linkim[0..-3]}#{'%.2d' % n}</a><br/>}
	print "<a href='", linkim[0..-3],'%.2d' % n, "'></a><br/>\n"
end
html_file << "</body></html>"
html_file.close
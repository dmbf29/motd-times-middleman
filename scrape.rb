require 'date'
require 'open-uri'
require 'nokogiri'

# 1. We get the HTML page content thanks to open-uri
html_content = open('https://www.bbc.co.uk/programmes/m0007fnr/episodes/guide.2013inc?nestedlevel=3').read
# html_content = File.open('results3.html')
# 2. We build a Nokogiri document from this file
doc = Nokogiri::HTML(html_content)

doc.search('.episode-guide__episode').each do |element|
  # p element.text.strip
  p element.search('.broadcast-event__time').text.strip
end

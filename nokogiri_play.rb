require 'nokogiri'
require 'open-uri'

html = open('http://turing.io')
doc  = Nokogiri::HTML(html)

images = doc.css('img')

srcs = []
images.each do |image|
  srcs << image.attributes["src"].value
end

source_good = doc.css('img').map do |a|
  a['src']
end

div   = doc.at_css('div')
divs  = doc.css('div')

var1 = doc.css('.mod-intro')
var2 = doc.css('.mod-intro p')
var3 = doc.css('.mod-intro p').text

require 'pry'; binding.pry

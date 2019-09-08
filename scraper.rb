require 'HTTParty'
require 'Nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  
attr_accessor :parse_page

  def initialize
  
    doc = HTTParty.get(https://www.cruiseone.com/results.do?clp=1&places=C&c=1&v=ALL&days=2&p=ALL&singleLine=N&shoppingZipCode=&IncludeAlumniRates=false&sort_by=7&Month=12/1/2019&dd=ALL&fd=2&d=12/01/2019&d2=12/31/2019&index=1) 
    @parse_page ||= Nokogiri::HTML(doc)
  end
  
  ship name = parse_page.css("h3.wth2-shipName").css
  
end

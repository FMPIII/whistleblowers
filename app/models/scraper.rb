class Scraper

  attr_accessor :parse_page

  def initialize
   doc = HTTParty.get("http://official.nba.com/referee-assignments/")
   @parse_page ||= Nokogiri::HTML(doc)
  end

  def get_names
    return @parse_page.css('.nba-refs-content a').map(&:content)
  end

  def get_games
   return @parse_page.css('.nba-refs-content td').map(&:content)
  end

  def get_table
    return @parse_page.css('.referee-assignments').map(&:content)
  end

  def get_date
    return @parse_page.css('div.entry-meta').map(&:content)
  end
 private

 def item_container
   parse_page.css("nba-refs-content")
 end
end

@scraper = Scraper.new
puts "======== #{@scraper.get_table}"

# item_container.css('td').css
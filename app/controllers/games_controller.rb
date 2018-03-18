class GamesController < ApplicationController
	def index


# 		url = "http://official.nba.com/referee-assignments/"
# 		response = HTTParty.get url
#   	dom = Nokogiri::HTML(response.body)
#   	@games = dom.css(".nba-refs-content td").map(&:content)
#   	@referees = dom.css(".nba-refs-content a").map(&:content)
#   	@games.each_with_index { |item, index|
#   puts "#{index+1} #{item}"
# }
  # @referee_id = Referee.find_by(name: )

class Scraper

  attr_accessor :parse_page

  def initialize
   doc = HTTParty.get("http://official.nba.com/referee-assignments/")
   @parse_page ||= Nokogiri::HTML(doc)
  end

  def get_names
    item_container.css("a").css
  end

  def get_games
   item_container.css('td').css
  end

  def get_table
    return @parse_page.css('.referee-assignments')
  end

 private

 def item_container
   parse_page.css("nba-refs-content")
 end
end

@scraper = Scraper.new
puts "======== #{@scraper.get_table}"
@table = @scraper.get_table

  @referee = Referee.find_by(name: "Lauren Holtkamp")
	end
end

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
  @scraper = Scraper.new
  @table = @scraper.get_table
	@games = @scraper.get_games
	@names = @scraper.get_names
  @referee = Referee.find_by(name: "Lauren Holtkamp")
  @referees = Referee.all


	end
	def update
	end
end

class GamesController < ApplicationController
	def index
	  @scraper = Scraper.new
		@games = @scraper.get_games
		@names = @scraper.get_names
		@date = @scraper.get_date

	  @namecollection = []
	  @names.each do |referee|
		  @namecollection << referee[39..(referee.index("(")-2)]
		end
		@referee_array = []
		@namecollection.each do |referee|
			@referee_array << Referee.find_by(name: referee)
		end

		@gamecollection = []
		@games.each_with_index do |game, index|
		  if (index %5 == 0) then
		    @gamecollection << game
		  end
	  end
	end

	def update
	end

end

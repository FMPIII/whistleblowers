class RefereesController < ApplicationController
def index
		@referees = Referee.all
		@reviews = Review.all
	end
	def show
		@reviews = Review.all
	end
end

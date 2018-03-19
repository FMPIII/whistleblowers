class RefereesController < ApplicationController
def index
		@referees = Referee.all
		@reviews = Review.where(referee_id: params[:referee_id])
	end
	def show
		@reviews = Review.all
	end
end

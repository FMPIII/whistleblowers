class RefereesController < ApplicationController
def index
		@referees = Referee.all
		@reviews = Review.all
	end
	def new
  end
  def edit
  end
end

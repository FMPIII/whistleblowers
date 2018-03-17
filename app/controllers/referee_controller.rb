class RefereeController < ApplicationController
	def index
		@referees = Referee.all
	end
	def new
  end
  def edit
  end
end

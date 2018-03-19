class RefereesController < ApplicationController
def index
		@referees = Referee.all
		@reviews = Review.where(referee_id: params[:referee_id])
		# @referees.reviews.each do |referee|
			
		# 	[referee.sucks, referee.disappears, referee.home, referee.superstars].score
		# end
	end
	def show
	end
private
	def score (array)
	 sum_of_trues = 0
	 array.each do |element|
	   if array.element == true
	     sum_of_trues += 1
	   end
	 end
	 return sum_of_trues/4
	end
end

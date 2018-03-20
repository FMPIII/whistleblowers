class RefereesController < ApplicationController
def index
		@referees = Referee.all
		@reviews = Review.where(referee_id: params[:referee_id])
		@referees.each do |ref|
				score_array = []
				if ref.reviews.length > 0
					ref.reviews.each do |review|
						score_array << score([review.sucks, review.disappears, review.home, review.superstars])
					end
					ref.score = (score_array.inject{ |sum, el| sum + el }.to_f / score_array.size)
				end
			end
		p @referees_sorted
		@referees_sorted = @referees.sort_by &:score
		@referees_sorted_short = @referees_sorted.take(10)
		end
private
	def score (array)
	 sum_of_trues = 4.0
	 array.each do |element|
	   if element == true
	     sum_of_trues -= 1.0
	   end
	 end
	 return sum_of_trues/4.0
	end
	end



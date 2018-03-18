class ReviewsController < ApplicationController
	def index
		redirect_to games_path
	end
	def new
		@review = Review.new
	end
	def create
		# @referee = Referee.find_by(params[:id])
    @review = Review.new(review_params)
    # @review.referee_id = params[:id]
    respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end
	private
	def review_params
		# params.require(:review).permit(:comment).merge(:referee_id => params[:id])
		# params[:referee_id] = @referee_id
	end
end

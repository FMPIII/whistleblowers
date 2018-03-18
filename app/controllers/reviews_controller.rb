class ReviewsController < ApplicationController
	before_action :set_referee

	def index
		redirect_to games_path
	end
	def new
		@review = Review.new
	end
	def create
    @review = @referee.reviews.build(review_params)
    respond_to do |format|
      if @review.save!
        format.html { redirect_to @referee, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end
	private
	def review_params
		params.require(:review).permit(:comment)
	end
	def set_referee
		@referee = Referee.find(params[:referee_id])
	end
end

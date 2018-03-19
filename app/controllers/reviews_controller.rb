class ReviewsController < ApplicationController
	before_action :set_referee

	def index
		@reviews = Review.where(referee_id: params[:referee_id])
	end
	def new
		@review = Review.new
	end
	def create
    @review = @referee.reviews.build(review_params)
    respond_to do |format|
      if @review.save!
        format.html { redirect_to referee_reviews_path(params[:referee_id]), notice: 'Review was successfully created.' }
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

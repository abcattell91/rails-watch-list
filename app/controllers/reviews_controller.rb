class ReviewsController < ApplicationController
  before_action :find_review, only: :destroy
  before_action :find_list, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.list = @list
    if @review.save
      redirect_to list_path(@list)
    else
      render '../views/lists/show.html.erb'
    end
  end

  def destroy
    @review.destroy

    redirect_to list_path(@review.list)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end

  def find_review
    @review = Review.find(params[:id])
  end

  def find_list
    @list = List.find(params[:list_id])
  end
end

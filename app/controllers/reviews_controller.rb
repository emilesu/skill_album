class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @album = Album.find(params[:album_id])
    @review.album_id = @album.id

    @review.save
  end

  private

  def review_params
    params.require(:review).permit(:comment, :user_id, :album_id)
  end

end

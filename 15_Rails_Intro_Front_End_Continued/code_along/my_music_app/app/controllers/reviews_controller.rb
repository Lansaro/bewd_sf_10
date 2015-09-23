class ReviewsController < ApplicationController

  def create
    @artist = Artist.find(params[:artist_id])
    @review = @artist.reviews.create(review_params)
    redirect_to artist_path(@artist)
  end

  def edit
    @artist = Artist.find(params[:artist_id])
    @review = @artist.reviews.edit(review_params)
    redirect_to artist_path(@artist)
  end

  def destroy
    @artist = Artist.find(params[:artist_id])
    @review = @artist.reviews.destroy(review_params)
    redirect_to artist_path(@artist)
  end

  private

  def review_params
    params.require(:review).permit(:reviewer, :review, :rating)
  end

end

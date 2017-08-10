class AlbumsController < ApplicationController

  def index
    @albums = Album.order("id DESC").all
  end

  def show
    @album = Album.find(params[:id])
    @review = Review.new
  end

  # like点赞功能
  def like
    @album = Album.find(params[:id])
    unless @album.find_like(current_user)
      Like.create( :user => current_user, :album => @album )
    end
  end

  def unlike
    @album = Album.find(params[:id])
    like = @album.find_like(current_user)
    like.destroy

    render "like"
  end

end

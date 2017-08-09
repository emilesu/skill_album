class AlbumsController < ApplicationController

  def index
    @albums = Album.order("id DESC").all
  end

  def show
    @album = Album.find(params[:id])
  end

end

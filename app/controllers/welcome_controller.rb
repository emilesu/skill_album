class WelcomeController < ApplicationController

  def index
    @albums = Album.order("id DESC").all
  end

end

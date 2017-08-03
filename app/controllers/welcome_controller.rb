class WelcomeController < ApplicationController
  
  def index
    @albums = Album.all
  end

end

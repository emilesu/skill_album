class Admin::AlbumsController < AdminController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]


  # CRUD----------
  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
    @articles = @album.articles
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    @album.user = current_user

    if @album.save
      redirect_to admin_albums_path
    else
      render :new
    end
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])

    if @album.update(album_params)
      redirect_to admin_albums_path
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:id])

    @album.destroy
    redirect_to admin_albums_path
  end


  # private----------
  private

  def album_params
    params.require(:album).permit(:title, :description, :album_cover)
  end

end

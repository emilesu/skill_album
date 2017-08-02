class Admin::ArticlesController < AdminController
  before_action :only => [:new, :create, :update, :edit, :destroy]


  # CRUD----------
  def new
    @album = Album.find(params[:album_id])
    @article = Article.new
  end

  def create
    @album = Album.find(params[:album_id])
    @article = Article.new(article_params)
    @article.album = @album
    @article.user = current_user

    if @article.save
      redirect_to admin_albums_path
    else
      render :new
    end
  end


  # private----------
  private

  def article_params
    params.require(:article).permit(:title, :description, :article_cover, :label)
  end

end

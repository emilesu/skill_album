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

  def edit
    @album = Album.find(params[:album_id])
    @article = Article.find(params[:id])
  end

  def update
    @album = Album.find(params[:album_id])
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to admin_albums_path
    else
      render :edit
    end
  end

  def destroy
    @album = Album.find(params[:album_id])
    @article = Article.find(params[:id])

    @article.destroy
  end


  # private----------
  private

  def article_params
    params.require(:article).permit(:title, :summary, :description, :label, :article_cover)
  end

end

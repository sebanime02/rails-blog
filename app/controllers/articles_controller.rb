class ArticlesController < ApplicationController


  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    #This is the action assigned for the form inside Articles controller
    @article = Article.new #el objetivo de persistir la instancia de clase Article es utilizarlo en mensajes de error
  end


  def create
    #This is the action for create articles inside Articles controller
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article ##
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
    def article_params
      #method used to require just two inputs when article gets created
      params.require(:article).permit(:title, :text)
    end
end

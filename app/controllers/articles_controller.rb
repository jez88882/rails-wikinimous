class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  #index
  def index
    @articles = Article.all
  end

  #new
  def new
    @article = Article.new
  end

  #create
  def create
    @article = Article.create(article_params)
    redirect_to article_path(@article)
  end

  #edit
  def edit
  end

  #show
  def show
  end

  #update
  def update
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  #destroy
  def destroy
    @article.destroy
    redirect_to articles_path
  end
  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end

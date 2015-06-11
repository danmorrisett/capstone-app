class ArticlesController < ApplicationController
  before_action :authorize, only: [:edit, :update]

  def index
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to @article, notice: "Updated"
    else
      render "edit"
    end
  end

end

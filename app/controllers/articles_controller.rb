class ArticlesController < ApplicationController
  include CheckUserLogin
  before_action :set_menu
  before_action :set_article, except: [:index, :new, :create]
  

  def index 
    articles = Article.all.includes(:user).order("articles.updated_at desc")
    articles = articles.target_search(params[:search]) if params[:search].present?
    @articles_count = articles.size
    @page = params[:page] || 1
    @articles = articles.page(@page.to_i).per(15)
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def new 
    @article = Article.new
  end

  def create
    @status = -1
    @article = Article.new(article_params.merge(user_id: current_user.id))
    @status = 1 if @article.save 
  end

  def edit;end

  def update 
    @status = -1
    @status = 1 if @article.update(article_params) 
  end

  def show
    @article.increment!(:visitor_no)
  end

  def destroy 
    @status = -1
    @status = 1 if @article.destroy
  end

  private 

  def set_menu
    @menu = 2
  end

  def article_params
    params.require(:article).permit(:id, :title, :content, :user_id, :visitor_no)
  end

  def set_article
    @article = Article.find_by(id: params[:id])
    unless @article
      flash[:error] = "文章不存在"
      redirect_to articles_path 
    end
  end

  def check_user_present
    unless current_user.present?
      flash[:error] = "请登录"
      redirect_to new_user_session_path
    end
  end

end

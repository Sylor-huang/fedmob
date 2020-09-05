class HomesController < ApplicationController

  def index 
    @menu = 1
    @period = params[:period] || "hour"
    @type = params[:type] || "article"
    article_period = @type == "article" ? @period : "hour"
    user_period = @type == "user" ? @period : "hour"
    @user_counts = User.select(:id, :created_at).group_by_period(user_period , :created_at).size
    @article_counts = Article.select(:id, :created_at).group_by_period(article_period , :created_at).size
    @user_article_counts = User.select(:articles_count, :name)
                                .where("articles_count > 0")
                                .order("articles_count desc").first(50).pluck(:name, :articles_count)
    respond_to do |format|
      format.html
      format.js
    end
  end

end
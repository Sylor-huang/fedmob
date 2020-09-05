class UsersController < ApplicationController
  before_action :set_menu
  before_action :set_user, except: [:index]
  before_action :check_user_present, only: [:edit, :update]
  def index
    users = User.all.order("updated_at desc")
    users = users.target_search(params[:search]) if params[:search].present?
    @users_count = users.size
    @page = params[:page] || 1
    @users = users.page(@page.to_i).per(15)
    respond_to do |format|
      format.html
      format.js
    end
  end

  def edit
    
  end

  def update
    @status = -1
    @status = 1 if @user.update(user_params)
  end

  def show
    @user.increment!(:visitor_no)
    user_articles = @user.articles.order("updated_at desc")
    @articles_count = user_articles.size
    @page = params[:page] || 1
    @articles = user_articles.page(@page.to_i).per(15)
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def destroy
    @status = -1
    @status = 1 if @user.destroy
  end

  private 

  def set_menu
    @menu = 3
  end

  def user_params 
    params.require(:user).permit(:name, :email, :articles_count, :password, :password_confirmation)
  end

  def set_user 
    @user = User.find_by(id: params[:id])
    unless @user.present? 
      flash[:errors] = "用户不存在"
      redirect_to users_path
    end
  end

  def check_user_present
    #暂时不做权限控制
    # unless current_user.present? && current_user.id == @user.id 
    #   flash[:errors] = "您没有权限"
    #   redirect_to users_path
    # end
  end

end

class RegistrationsController < Devise::RegistrationsController
  skip_before_action :require_no_authentication, only: :create

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(resource_name, resource)
    end
  end

  private 

  def user_params 
    params.require(:user).permit(:name, :email, :articles_count, :password, :password_confirmation)
  end
end

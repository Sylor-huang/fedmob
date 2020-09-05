module CheckUserLogin
  extend ActiveSupport::Concern
  included do
    before_action :check_user_present, except: [:index, :show]
  end

  private

  def check_user_present
    unless current_user.present?
      flash[:error] = "请登录"
      redirect_to new_user_session_path
    end
  end

end
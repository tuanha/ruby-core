class AdminController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :check_admin

  private

  def check_admin
    redirect_to '/', :flash => {danger: "You aren't as admin"} unless current_user.role.admin?
  end
end

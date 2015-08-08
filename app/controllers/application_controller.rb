class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!

  def authenticate_admin!
    unless current_admin?
      head 403
      false
    end
  end

  def current_admin?
    current_user.try(:admin?)
  end
end

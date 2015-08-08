module ApplicationHelper
  def current_admin?
    current_user.try(:admin?)
  end
end
